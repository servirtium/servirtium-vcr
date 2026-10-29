package com.paulhammant.servirtium.vcr;

import java.io.IOException;
import java.io.InputStream;
import java.lang.foreign.Arena;
import java.lang.foreign.SymbolLookup;
import java.net.URI;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.security.CodeSource;
import java.util.Locale;

/**
 * Locates and loads the native VCR library across the layouts it can ship in:
 * an explicit path via {@code nativeLib()} / {@link #configure(String)}, the
 * {@code SERVIRTIUM_VCR_LIB} environment variable (handy for pointing at a
 * freshly built {@code ae build --emit=lib} artifact during development), the
 * directory the jar itself sits in (a consumer who drops the {@code .so} beside
 * the jar), a plain file in the working tree's
 * {@code src/main/resources/native/<rid>/} dir, or — for a packaged jar — the
 * classpath resource {@code /native/<rid>/<libname>} extracted to a temp file.
 *
 * <p>Loaded once via {@link SymbolLookup#libraryLookup(Path, Arena)} against a
 * shared global {@link Arena}, so the lookup outlives every downcall handle.
 * The resolved lookup is exposed to {@link NativeMethods}.
 */
final class NativeLoader {

    /**
     * The engine release this client's ABI expects. Surfaced in the
     * ABI-mismatch diagnostic when a required {@code aether_vcr_embed_*} export
     * is missing from the loaded library (i.e. the {@code .so} is too old).
     */
    static final String ENGINE_VERSION = "v2.0.0-alpha.9";

    private static final Arena GLOBAL = Arena.global();

    /** Explicit path pinned via {@code nativeLib()} / {@link #configure(String)}. */
    private static volatile String explicitPath;

    /** The path the library was actually loaded from (for diagnostics). */
    private static volatile Path loadedLibraryPath;

    private NativeLoader() {
    }

    /**
     * Pin an explicit path to the native library, used at first load. Backs the
     * first-class {@code nativeLib()} builder argument; wins over the bundled
     * jar-resource / working-tree layouts and the {@code SERVIRTIUM_VCR_LIB} env
     * override. Set before the first native call (i.e. before {@code start()}).
     */
    static void configure(String path) {
        if (path != null && !path.isEmpty()) {
            explicitPath = path;
        }
    }

    /** Resolve and load the native VCR library, returning a symbol lookup over it. */
    static SymbolLookup load() {
        Path libPath = locate();
        loadedLibraryPath = libPath;
        return SymbolLookup.libraryLookup(libPath, GLOBAL);
    }

    /** The path the library was loaded from, or {@code null} before {@link #load()}. */
    static Path loadedLibraryPath() {
        return loadedLibraryPath;
    }

    private static Path locate() {
        // 0. Explicit path pinned via nativeLib() / configure().
        if (explicitPath != null && !explicitPath.isEmpty()) {
            Path p = Path.of(explicitPath);
            if (Files.exists(p)) {
                return p;
            }
            throw new VcrException("nativeLib() points at a missing file: " + explicitPath);
        }

        // 1. Explicit override.
        String override = System.getenv("SERVIRTIUM_VCR_LIB");
        if (override != null && !override.isEmpty()) {
            Path p = Path.of(override);
            if (Files.exists(p)) {
                return p;
            }
            throw new VcrException("SERVIRTIUM_VCR_LIB points at a missing file: " + override);
        }

        String rid = rid();
        String osArch = osArch();
        String fileName = fileName();
        // The multi-platform jar stages under /native/<os>-<arch>/; the
        // single-platform (dev) jar under /native/<rid>/. Try os-arch first.
        String resourcePath = "/native/" + osArch + "/" + fileName;
        String resourcePathRid = "/native/" + rid + "/" + fileName;

        // 2. Beside the jar itself: a consumer who drops libservirtium_vcr.so
        //    into the same directory as the jar on disk.
        Path adjacent = besideCodeSource(fileName);
        if (adjacent != null) {
            return adjacent;
        }

        // 3. Working-tree resources dir (running from a source checkout) —
        //    os-arch layout (fat) then rid layout (single-platform dev build).
        for (String token : new String[] {osArch, rid}) {
            Path inTree = Path.of("src", "main", "resources", "native", token, fileName);
            if (Files.exists(inTree)) {
                return inTree.toAbsolutePath();
            }
        }

        // 4. Classpath resource (packaged jar) -> extract to a temp file.
        //    os-arch (fat jar) first, then rid (single-platform jar).
        for (String resource : new String[] {resourcePath, resourcePathRid}) {
            try (InputStream in = NativeLoader.class.getResourceAsStream(resource)) {
                if (in != null) {
                    Path tmp = Files.createTempFile("libservirtium_vcr", suffix());
                    tmp.toFile().deleteOnExit();
                    Files.copy(in, tmp, StandardCopyOption.REPLACE_EXISTING);
                    return tmp;
                }
            } catch (IOException e) {
                throw new VcrException("failed to extract native VCR library from " + resource + ": " + e.getMessage());
            }
        }

        throw new VcrException(
                "native VCR library not found. Looked at $SERVIRTIUM_VCR_LIB, beside the jar, "
                        + "src/main/resources/native/{" + osArch + "," + rid + "}, and classpath "
                        + resourcePath + " / " + resourcePathRid
                        + ". Download libservirtium_vcr for your platform from "
                        + "https://github.com/servirtium/servirtium-vcr/releases and set "
                        + "SERVIRTIUM_VCR_LIB to its path (or drop it beside the jar).");
    }

    /**
     * Load the library from the directory the jar (or classes dir) itself sits
     * in — the literal "same folder as the jar" layout. Returns {@code null}
     * when the code source isn't a filesystem location (custom classloaders) or
     * the library isn't there, so the remaining candidates still run.
     */
    private static Path besideCodeSource(String lib) {
        try {
            CodeSource source = NativeLoader.class.getProtectionDomain().getCodeSource();
            if (source == null || source.getLocation() == null) {
                return null;
            }
            URI location = source.getLocation().toURI();
            if (!"file".equalsIgnoreCase(location.getScheme())) {
                return null;
            }
            return adjacentLibrary(Path.of(location), lib);
        } catch (Exception e) {
            // Custom classloaders can omit a filesystem code source. Continue
            // through the in-tree / bundled-library fallbacks in that case.
            return null;
        }
    }

    static Path adjacentLibrary(Path codeSource, String lib) {
        Path directory = Files.isDirectory(codeSource) ? codeSource : codeSource.getParent();
        if (directory == null) {
            return null;
        }
        Path candidate = directory.resolve(lib);
        return Files.isRegularFile(candidate) ? candidate : null;
    }

    private static String fileName() {
        return "lib" + "servirtium_vcr" + suffix();
    }

    private static String suffix() {
        String os = System.getProperty("os.name", "").toLowerCase(Locale.ROOT);
        if (os.contains("win")) {
            return ".dll";
        }
        if (os.contains("mac") || os.contains("darwin")) {
            return ".dylib";
        }
        return ".so";
    }

    private static String rid() {
        String osName = System.getProperty("os.name", "").toLowerCase(Locale.ROOT);
        String os = osName.contains("win") ? "win"
                : (osName.contains("mac") || osName.contains("darwin")) ? "osx"
                : "linux";

        String archName = System.getProperty("os.arch", "").toLowerCase(Locale.ROOT);
        String arch = switch (archName) {
            case "x86_64", "amd64" -> "x64";
            case "aarch64", "arm64" -> "arm64";
            default -> archName;
        };
        return os + "-" + arch;
    }

    /**
     * The {@code <os>-<arch>} token the multi-platform jar stages its resources
     * under — {@code linux-x86_64}, {@code macos-arm64}, {@code windows-x86_64}
     * (matching release/build.sh's release-asset names, NOT the .NET RID
     * {@link #rid()}). The fat jar is looked up under this token first so one jar
     * serves every OS+arch; the single-platform (dev) jar uses the RID path.
     */
    private static String osArch() {
        String osName = System.getProperty("os.name", "").toLowerCase(Locale.ROOT);
        String os = osName.contains("win") ? "windows"
                : (osName.contains("mac") || osName.contains("darwin")) ? "macos"
                : "linux";

        String archName = System.getProperty("os.arch", "").toLowerCase(Locale.ROOT);
        String arch = switch (archName) {
            case "x86_64", "amd64" -> "x86_64";
            case "aarch64", "arm64" -> "arm64";
            default -> archName;
        };
        return os + "-" + arch;
    }
}
