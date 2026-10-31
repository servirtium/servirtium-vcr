package com.paulhammant.servirtium.vcr;

import java.lang.foreign.Arena;
import java.lang.foreign.MemorySegment;

/**
 * A running VCR server. {@link #close()} stops it; in record mode close also
 * flushes the captured tape to disk. Implements {@link AutoCloseable} for use
 * in try-with-resources.
 */
public final class VcrServer implements AutoCloseable {

    java.util.function.BiFunction<String, SecretRequest, String> secretRedactor;
    private MemorySegment handle;
    private final String host;
    private final String tapePath;
    private final boolean recordMode;
    private final boolean failIfChanged;
    private String baseUrl;
    private boolean committed;
    private boolean discarded;

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
            return (int) NativeMethods.TAPE_LENGTH.invokeExact(handle());
        } catch (Throwable t) {
            throw new VcrException("tapeLength() failed: " + t.getMessage());
        }
    }

    /** Latest retained replay diagnostic; consuming reads acknowledge without erasing. */
    public String lastError() {
        try {
            MemorySegment p = (MemorySegment) NativeMethods.LAST_ERROR.invokeExact(handle());
            return NativeMethods.takeString(p);
        } catch (Throwable t) {
            throw new VcrException("lastError() failed: " + t.getMessage());
        }
    }

    /** Read the latest retained mismatch. False is an observer read. */
    public String lastError(boolean consume) {
        try {
            return NativeMethods.takeString((MemorySegment) NativeMethods.LAST_ERROR_EX.invokeExact(handle(), consume ? 1 : 0));
        } catch (Throwable t) { throw VcrBuilderBase.rethrow("lastError", t); }
    }

    public String diagnosticsJson() { return diagnosticsJson(false); }
    public String diagnosticsJson(boolean consume) {
        try {
            return NativeMethods.takeString((MemorySegment) NativeMethods.DIAGNOSTICS_JSON.invokeExact(handle(), consume ? 1 : 0));
        } catch (Throwable t) { throw VcrBuilderBase.rethrow("diagnosticsJson", t); }
    }

    /** Acknowledge and assert all retained failures, including previously retrieved ones. */
    public void assertNoMismatches() {
        try {
            String error = NativeMethods.takeString((MemorySegment) NativeMethods.ASSERT_NO_MISMATCHES.invokeExact(handle()));
            if (!error.isEmpty()) throw new VcrException(error);
        } catch (Throwable t) { throw VcrBuilderBase.rethrow("assertNoMismatches", t); }
    }

    /** Throw unless every tape interaction has been replayed. */
    public void assertAllConsumed() {
        try {
            String error = NativeMethods.takeString((MemorySegment) NativeMethods.ASSERT_ALL_CONSUMED.invokeExact(handle()));
            if (!error.isEmpty()) throw new VcrException(error);
        } catch (Throwable t) { throw VcrBuilderBase.rethrow("assertAllConsumed", t); }
    }

    /** Throw if any redaction rule never matched. */
    public void assertAllRedactionsUsed() {
        try {
            String error = NativeMethods.takeString((MemorySegment) NativeMethods.ASSERT_ALL_REDACTIONS_USED.invokeExact(handle()));
            if (!error.isEmpty()) throw new VcrException(error);
        } catch (Throwable t) { throw VcrBuilderBase.rethrow("assertAllRedactionsUsed", t); }
    }

    /** Throw if any unfilled placeholder remains in a replayed response. */
    public void assertNoUnfilledPlaceholders() {
        try {
            String error = NativeMethods.takeString((MemorySegment) NativeMethods.ASSERT_NO_UNFILLED_PLACEHOLDERS.invokeExact(handle()));
            if (!error.isEmpty()) throw new VcrException(error);
        } catch (Throwable t) { throw VcrBuilderBase.rethrow("assertNoUnfilledPlaceholders", t); }
    }

    /** Negotiated TLS protocol of the latest TLS request (e.g. "TLSv1.3"), or "". */
    public String lastTlsProtocol() {
        try {
            return NativeMethods.takeString((MemorySegment) NativeMethods.LAST_TLS_PROTOCOL.invokeExact(handle()));
        } catch (Throwable t) { throw VcrBuilderBase.rethrow("lastTlsProtocol", t); }
    }

    /** Remove all response substitutions on the running server. */
    public void clearSubstitutions() {
        try {
            NativeMethods.CLEAR_SUBSTITUTIONS.invokeExact(handle());
        } catch (Throwable t) { throw VcrBuilderBase.rethrow("clearSubstitutions", t); }
    }

    public void testContext(String name, String sourceFile, int sourceLine) {
        try (Arena arena = Arena.ofConfined()) {
            NativeMethods.TEST_CONTEXT.invokeExact(handle(), NativeMethods.cString(arena, name), NativeMethods.cString(arena, sourceFile), sourceLine);
        } catch (Throwable t) { throw VcrBuilderBase.rethrow("testContext", t); }
    }

    /** Outcome of the most-recent dispatch. */
    public Outcome lastKind() {
        try {
            return Outcome.fromCode((int) NativeMethods.LAST_KIND.invokeExact(handle()));
        } catch (Throwable t) {
            throw new VcrException("lastKind() failed: " + t.getMessage());
        }
    }

    /** Tape index of the most-recent matched interaction, or -1. */
    public int lastIndex() {
        try {
            return (int) NativeMethods.LAST_INDEX.invokeExact(handle());
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
                    handle(),
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
            NativeMethods.RESET_CURSOR.invokeExact(handle());
        } catch (Throwable t) {
            throw new VcrException("resetCursor() failed: " + t.getMessage());
        }
    }

    /** Clear the last-error slot between sub-cases. */
    public void clearLastError() {
        try {
            NativeMethods.CLEAR_LAST_ERROR.invokeExact(handle());
        } catch (Throwable t) {
            throw new VcrException("clearLastError() failed: " + t.getMessage());
        }
    }

    /**
     * Record mode, explicit two-phase commit: stop the server and write the
     * captured tape to disk now. Call on a test's success path, paired with
     * {@link #discard()} on the failure path, so a half-finished recording from
     * a failed test never becomes a tape that later replays as the truth. The
     * write is crash-safe (temp file + atomic rename) in the native library.
     * Once committed (or discarded), {@link #close()} does nothing further.
     * No-op outside record mode.
     */
    public void commit() {
        if (handle == null || !recordMode) {
            committed = true;
            return;
        }
        MemorySegment h = handle;
        handle = null;
        committed = true;
        try {
            if (secretRedactor != null) SecretCallbacks.stage(h, secretRedactor, null);
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
            throw VcrBuilderBase.rethrow("commit", t);
        }
    }

    /**
     * Record mode: stop the server and DROP the captured recording without
     * writing a tape. Call on a test's failure path so a failed run never mints
     * a tape. Safe to call then {@link #close()}. No-op outside record mode.
     */
    public void discard() {
        if (handle == null || !recordMode) {
            discarded = true;
            return;
        }
        MemorySegment h = handle;
        handle = null;
        discarded = true;
        try (Arena arena = Arena.ofConfined()) {
            MemorySegment tape = NativeMethods.cString(arena, tapePath);
            MemorySegment res = (MemorySegment) NativeMethods.DISCARD.invokeExact(h, tape);
            NativeMethods.takeString(res);
        } catch (Throwable t) {
            throw VcrBuilderBase.rethrow("discard", t);
        }
    }

    @Override
    public void close() {
        // Already committed or discarded: nothing left to do.
        if (committed || discarded) {
            return;
        }
        if (handle == null) {
            return;
        }
        if (!recordMode) {
            MemorySegment h = handle;
            handle = null;
            try {
                NativeMethods.STOP.invokeExact(h);
            } catch (Throwable t) {
                throw VcrBuilderBase.rethrow("close", t);
            }
            return;
        }
        // Back-compat: a record server closed WITHOUT an explicit commit()/
        // discard() still flushes, so existing tests keep recording on close.
        commit();
    }
}
