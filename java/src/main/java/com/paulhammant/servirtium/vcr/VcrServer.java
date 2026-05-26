package com.paulhammant.servirtium.vcr;

import java.lang.foreign.Arena;
import java.lang.foreign.MemorySegment;

/**
 * A running VCR server. {@link #close()} stops it; in record mode close also
 * flushes the captured tape to disk. Implements {@link AutoCloseable} for use
 * in try-with-resources.
 */
public final class VcrServer implements AutoCloseable {

    private MemorySegment handle;
    private final String host;
    private final String tapePath;
    private final boolean recordMode;
    private final boolean failIfChanged;
    private String baseUrl;

    VcrServer(MemorySegment handle, String host, String tapePath, boolean recordMode, boolean failIfChanged) {
        this.handle = handle;
        this.host = host;
        this.tapePath = tapePath;
        this.recordMode = recordMode;
        this.failIfChanged = failIfChanged;
    }

    private MemorySegment handle() {
        if (handle == null) {
            throw new IllegalStateException("VcrServer is closed");
        }
        return handle;
    }

    /** The OS-resolved port the server is listening on. */
    public int port() {
        try {
            return (int) NativeMethods.PORT.invokeExact(handle());
        } catch (Throwable t) {
            throw new VcrException("port() failed: " + t.getMessage());
        }
    }

    /** Base URL the SUT should target, e.g. {@code http://127.0.0.1:54213}. */
    public String baseUrl() {
        if (baseUrl == null) {
            try (Arena arena = Arena.ofConfined()) {
                MemorySegment p = (MemorySegment) NativeMethods.BASE_URL.invokeExact(
                        handle(), NativeMethods.cString(arena, host));
                baseUrl = NativeMethods.takeString(p);
            } catch (Throwable t) {
                throw new VcrException("baseUrl() failed: " + t.getMessage());
            }
        }
        return baseUrl;
    }

    /** Tape entry count (playback), or interactions captured so far (record). */
    public int tapeLength() {
        try {
            return (int) NativeMethods.TAPE_LENGTH.invokeExact();
        } catch (Throwable t) {
            throw new VcrException("tapeLength() failed: " + t.getMessage());
        }
    }

    /** Most-recent dispatch diagnostic; empty when none flagged. */
    public String lastError() {
        try {
            MemorySegment p = (MemorySegment) NativeMethods.LAST_ERROR.invokeExact();
            return NativeMethods.takeString(p);
        } catch (Throwable t) {
            throw new VcrException("lastError() failed: " + t.getMessage());
        }
    }

    /** Outcome of the most-recent dispatch. */
    public Outcome lastKind() {
        try {
            return Outcome.fromCode((int) NativeMethods.LAST_KIND.invokeExact());
        } catch (Throwable t) {
            throw new VcrException("lastKind() failed: " + t.getMessage());
        }
    }

    /** Tape index of the most-recent matched interaction, or -1. */
    public int lastIndex() {
        try {
            return (int) NativeMethods.LAST_INDEX.invokeExact();
        } catch (Throwable t) {
            throw new VcrException("lastIndex() failed: " + t.getMessage());
        }
    }

    /**
     * Stage a note (record mode) for the <em>next</em> interaction to be
     * captured. Call between requests to annotate specific interactions.
     */
    public void note(String title, String body) {
        try (Arena arena = Arena.ofConfined()) {
            MemorySegment res = (MemorySegment) NativeMethods.NOTE.invokeExact(
                    NativeMethods.cString(arena, title),
                    NativeMethods.cString(arena, body));
            String err = NativeMethods.takeString(res);
            if (err != null && !err.isEmpty()) {
                throw new VcrException(err);
            }
        } catch (Throwable t) {
            throw VcrBuilderBase.rethrow("note", t);
        }
    }

    /** Rewind the replay cursor to interaction 0 and clear last-* slots. */
    public void resetCursor() {
        try {
            NativeMethods.RESET_CURSOR.invokeExact();
        } catch (Throwable t) {
            throw new VcrException("resetCursor() failed: " + t.getMessage());
        }
    }

    /** Clear the last-error slot between sub-cases. */
    public void clearLastError() {
        try {
            NativeMethods.CLEAR_LAST_ERROR.invokeExact();
        } catch (Throwable t) {
            throw new VcrException("clearLastError() failed: " + t.getMessage());
        }
    }

    @Override
    public void close() {
        if (handle == null) {
            return;
        }
        MemorySegment h = handle;
        handle = null;

        try {
            if (!recordMode) {
                NativeMethods.STOP.invokeExact(h);
                return;
            }
            try (Arena arena = Arena.ofConfined()) {
                MemorySegment tape = NativeMethods.cString(arena, tapePath);
                MemorySegment res = failIfChanged
                        ? (MemorySegment) NativeMethods.STOP_AND_FLUSH_FAIL_IF_CHANGED.invokeExact(h, tape)
                        : (MemorySegment) NativeMethods.STOP_AND_FLUSH.invokeExact(h, tape);
                String err = NativeMethods.takeString(res);
                if (err != null && !err.isEmpty()) {
                    throw new VcrException(err);
                }
            }
        } catch (Throwable t) {
            throw VcrBuilderBase.rethrow("close", t);
        }
    }
}
