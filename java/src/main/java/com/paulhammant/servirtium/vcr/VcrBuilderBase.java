package com.paulhammant.servirtium.vcr;

import java.lang.foreign.Arena;
import java.lang.foreign.MemorySegment;
import java.util.ArrayList;
import java.util.List;

/**
 * Shared bind options and per-handle config handling for both builders.
 *
 * @param <S> the concrete builder type, for fluent self-returns.
 */
public abstract class VcrBuilderBase<S extends VcrBuilderBase<S>> {

    record HeaderRemoval(Field field, String name) {
    }

    private record StaticMount(String mount, String dir) {
    }

    final String tapePath;
    String host = "127.0.0.1";
    int port;            // 0 => OS-assigned (dynamic)
    String label = "";
    String nativeLib;

    private final List<HeaderRemoval> headerRemovals = new ArrayList<>();
    private final List<StaticMount> staticContent = new ArrayList<>();
    private final List<String> untaped = new ArrayList<>();
    private String tlsCert;
    private String tlsKey;
    private String tlsCertPem;
    private String tlsKeyPem;

    VcrBuilderBase(String tapePath) {
        this.tapePath = tapePath;
    }

    abstract S self();

    /**
     * Pin an explicit path to libservirtium_vcr library for this run — the
     * first-class way to say <em>where the {@code .so} is</em> at launch,
     * instead of relying on discovery. Wins over the bundled jar-resource
     * default and the {@code SERVIRTIUM_VCR_LIB} env override. Set before
     * {@code start()}.
     */
    public S nativeLib(String path) {
        this.nativeLib = path;
        return self();
    }

    /** Bind host. Defaults to 127.0.0.1. */
    public S host(String host) {
        this.host = host;
        return self();
    }

    /** Bind port. 0 (the default) asks the OS for a free port. */
    public S port(int port) {
        this.port = port;
        return self();
    }

    /** Human-facing label for logs/diagnostics (not a state key). */
    public S label(String label) {
        this.label = label;
        return self();
    }

    /** Remove a header by name from the given block (case-insensitive). */
    public S removeHeader(Field field, String name) {
        headerRemovals.add(new HeaderRemoval(field, name));
        return self();
    }

    /**
     * Serve a path prefix from an on-disk directory instead of the tape
     * (Servirtium step 11).
     *
     * <p>Works in both playback and record mode (recording a browser suite is
     * cleaner served same-origin from the VCR — no CORS preflights).
     */
    public S staticContent(String mountPath, String fsDir) {
        staticContent.add(new StaticMount(mountPath, fsDir));
        return self();
    }

    /**
     * Mark an incidental request path (e.g. {@code /favicon.ico}) so the VCR
     * answers 404 without consuming the tape cursor (playback) and never
     * forwards/records it (record).
     */
    public S untaped(String path) {
        untaped.add(path);
        return self();
    }

    /** Serve over HTTPS using this PEM certificate and key (PEM cert + key: ECDSA P-256/P-384/P-521, Ed25519, or RSA 2048-16384). Playback and record. */
    public S tls(String certPath, String keyPath) {
        this.tlsCert = certPath;
        this.tlsKey = keyPath;
        return self();
    }

    /** Like {@link #tls}, but the PEM certificate and key are passed in memory (not file paths), so no private key is written to disk. */
    public S tlsFromPem(String certPem, String keyPem) {
        this.tlsCertPem = certPem;
        this.tlsKeyPem = keyPem;
        return self();
    }

    /**
     * Apply this builder's accumulated config to the opened handle, before
     * serving starts. Subclasses extend this.
     */
    void applyConfig(Arena arena, MemorySegment handle) {
        for (HeaderRemoval h : headerRemovals) {
            try {
                MemorySegment r = (MemorySegment) NativeMethods.REMOVE_HEADER.invokeExact(
                        handle, h.field().code(), NativeMethods.cString(arena, h.name()));
                check(r, "removeHeader");
            } catch (Throwable t) {
                throw rethrow("removeHeader", t);
            }
        }
        for (StaticMount s : staticContent) {
            try {
                MemorySegment r = (MemorySegment) NativeMethods.STATIC_CONTENT.invokeExact(
                        handle,
                        NativeMethods.cString(arena, s.mount()),
                        NativeMethods.cString(arena, s.dir()));
                check(r, "staticContent");
            } catch (Throwable t) {
                throw rethrow("staticContent", t);
            }
        }
        if (tlsCert != null) {
            try {
                MemorySegment r = (MemorySegment) NativeMethods.SET_TLS.invokeExact(
                        handle, NativeMethods.cString(arena, tlsCert), NativeMethods.cString(arena, tlsKey));
                check(r, "tls");
            } catch (Throwable t) {
                throw rethrow("tls", t);
            }
        }
        if (tlsCertPem != null) {
            try {
                MemorySegment r = (MemorySegment) NativeMethods.SET_TLS_PEM.invokeExact(
                        handle, NativeMethods.cString(arena, tlsCertPem), NativeMethods.cString(arena, tlsKeyPem));
                check(r, "tlsFromPem");
            } catch (Throwable t) {
                throw rethrow("tlsFromPem", t);
            }
        }
        for (String p : untaped) {
            try {
                MemorySegment r = (MemorySegment) NativeMethods.UNTAPED.invokeExact(
                        handle, NativeMethods.cString(arena, p));
                check(r, "untaped");
            } catch (Throwable t) {
                throw rethrow("untaped", t);
            }
        }
    }

    /** Throw if a mutation call returned a non-empty error string ("" = success). */
    static void check(MemorySegment resultPtr, String op) {
        String err = NativeMethods.takeString(resultPtr);
        if (err != null && !err.isEmpty()) {
            throw new VcrException("vcr " + op + " failed: " + err);
        }
    }

    static VcrException rethrow(String op, Throwable t) {
        if (t instanceof VcrException ve) {
            return ve;
        }
        return new VcrException("vcr " + op + " failed: " + t.getMessage());
    }

    static String drainStartError(MemorySegment handle) {
        try {
            MemorySegment p = (MemorySegment) NativeMethods.LAST_ERROR.invokeExact(handle);
            String err = NativeMethods.takeString(p);
            return (err == null || err.isEmpty())
                    ? "(no detail; check tape path and port availability)"
                    : err;
        } catch (Throwable t) {
            return "(could not read last_error: " + t.getMessage() + ")";
        }
    }
}
