package com.paulhammant.servirtium.vcr;

import java.lang.foreign.Arena;
import java.lang.foreign.MemorySegment;
import java.util.ArrayList;
import java.util.List;

/**
 * Shared bind options and process-global-state handling for both builders.
 *
 * @param <S> the concrete builder type, for fluent self-returns.
 */
public abstract class VcrBuilderBase<S extends VcrBuilderBase<S>> {

    record HeaderRemoval(Field field, String name) {
    }

    final String tapePath;
    String host = "127.0.0.1";
    int port;            // 0 => OS-assigned (dynamic)
    String label = "";

    private final List<HeaderRemoval> headerRemovals = new ArrayList<>();

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
     * Wipe all process-global mutation/format/strict state so a previous
     * fixture's settings can't leak into this one (v1 one-server-per-process
     * has no per-handle state). Called first by {@code start()}.
     */
    static void resetGlobalState() {
        try {
            NativeMethods.CLEAR_REDACTIONS.invokeExact();
            NativeMethods.CLEAR_UNREDACTIONS.invokeExact();
            NativeMethods.CLEAR_HEADER_REMOVALS.invokeExact();
            NativeMethods.CLEAR_STATIC_CONTENT.invokeExact();
            NativeMethods.CLEAR_UNTAPED.invokeExact();
            NativeMethods.CLEAR_FORMAT_OPTIONS.invokeExact();
            NativeMethods.SET_STRICT_HEADERS.invokeExact(0);
            NativeMethods.CLEAR_LAST_ERROR.invokeExact();
            // A staged-but-unconsumed note is reset core-side when start_*
            // (re)loads the tape, so there's nothing to clear here.
        } catch (Throwable t) {
            throw new VcrException("resetGlobalState failed: " + t.getMessage());
        }
    }

    /**
     * Apply this builder's accumulated config after the reset and before the
     * server starts (mutations like static-content and unredactions must be
     * registered before the tape loads). Subclasses extend this.
     */
    void applyConfig(Arena arena) {
        for (HeaderRemoval h : headerRemovals) {
            try {
                MemorySegment r = (MemorySegment) NativeMethods.REMOVE_HEADER.invokeExact(
                        h.field().code(), NativeMethods.cString(arena, h.name()));
                check(r, "removeHeader");
            } catch (Throwable t) {
                throw rethrow("removeHeader", t);
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

    static String drainStartError() {
        try {
            MemorySegment p = (MemorySegment) NativeMethods.LAST_ERROR.invokeExact();
            String err = NativeMethods.takeString(p);
            return (err == null || err.isEmpty())
                    ? "(no detail; check tape path and port availability)"
                    : err;
        } catch (Throwable t) {
            return "(could not read last_error: " + t.getMessage() + ")";
        }
    }
}
