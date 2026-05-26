package com.paulhammant.servirtium.vcr;

import java.io.IOException;
import java.io.InputStream;
import java.lang.foreign.Arena;
import java.lang.foreign.SymbolLookup;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.Locale;

/**
 * Locates and loads the native VCR library across the layouts it can ship in:
 * an explicit path via the {@code SERVIRTIUM_VCR_LIB} environment variable
 * (handy for pointing at a freshly built {@code ae build --emit=lib} artifact
 * during development), a plain file in the working tree's
 * {@code src/main/resources/native/<rid>/} dir, or — for a packaged jar — the
 * classpath resource {@code /native/<rid>/<libname>} extracted to a temp file.
 *
 * <p>Loaded once via {@link SymbolLookup#libraryLookup(Path, Arena)} against a
 * shared global {@link Arena}, so the lookup outlives every downcall handle.
 * The resolved lookup is exposed to {@link NativeMethods}.
 */
final class NativeLoader {

    private static final Arena GLOBAL = Arena.global();

    private NativeLoader() {
    }

    /** Resolve and load the native VCR library, returning a symbol lookup over it. */
    static SymbolLookup load() {
        Path libPath = locate();
        return SymbolLookup.libraryLookup(libPath, GLOBAL);
    }

    private static Path locate() {
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
        String fileName = fileName();
        String resourcePath = "/native/" + rid + "/" + fileName;

        // 2. Working-tree resources dir (running from a source checkout).
        Path inTree = Path.of("src", "main", "resources", "native", rid, fileName);
        if (Files.exists(inTree)) {
            return inTree.toAbsolutePath();
        }

        // 3. Classpath resource (packaged jar) -> extract to a temp file.
        try (InputStream in = NativeLoader.class.getResourceAsStream(resourcePath)) {
            if (in != null) {
                Path tmp = Files.createTempFile("libservirtium_vcr", suffix());
                tmp.toFile().deleteOnExit();
                Files.copy(in, tmp, StandardCopyOption.REPLACE_EXISTING);
                return tmp;
            }
        } catch (IOException e) {
            throw new VcrException("failed to extract native VCR library from " + resourcePath + ": " + e.getMessage());
        }

        throw new VcrException(
                "native VCR library not found. Looked at $SERVIRTIUM_VCR_LIB, " + inTree
                        + ", and classpath " + resourcePath
                        + ". Run ./build-native.sh to build it.");
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
}
