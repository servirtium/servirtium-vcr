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

    private final List<HeaderRemoval> headerRemovals = new ArrayList<>();
    private final List<StaticMount> staticContent = new ArrayList<>();
    private final List<String> untaped = new ArrayList<>();

    VcrBuilderBase(String tapePath) {
        this.tapePath = tapePath;
    }

    abstract S self();

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
