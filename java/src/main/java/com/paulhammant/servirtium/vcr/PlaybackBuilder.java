package com.paulhammant.servirtium.vcr;

import java.lang.foreign.Arena;
import java.lang.foreign.MemorySegment;
import java.util.ArrayList;
import java.util.List;

/** Configures and starts a playback VCR server. */
public final class PlaybackBuilder extends VcrBuilderBase<PlaybackBuilder> {

    private record Unredaction(Field field, String pattern, String replacement) {
    }

    private final List<Unredaction> unredactions = new ArrayList<>();
    private boolean strictHeaders;
    private boolean matchJsonBody;

    PlaybackBuilder(String tapePath) {
        super(tapePath);
    }

    @Override
    PlaybackBuilder self() {
        return this;
    }

    /**
     * Compare the SUT's request headers against the recorded block on every
     * interaction (Servirtium step 10), surfacing mismatches via
     * {@link VcrServer#lastError()}.
     */
    public PlaybackBuilder strictHeaders() {
        return strictHeaders(true);
    }

    public PlaybackBuilder strictHeaders(boolean on) {
        this.strictHeaders = on;
        return this;
    }

    /**
     * Opt in to matching request bodies by <em>semantic</em> JSON equality (key
     * order and insignificant whitespace ignored) instead of byte-for-byte.
     * Non-JSON bodies fall back to the byte-exact comparison, so this never
     * loosens matching for non-JSON payloads.
     */
    public PlaybackBuilder matchJsonBody() {
        return matchJsonBody(true);
    }

    public PlaybackBuilder matchJsonBody(boolean on) {
        this.matchJsonBody = on;
        return this;
    }

    /**
     * Replace a redacted placeholder in the recorded expectation with the real
     * value the live SUT sends, so a committed (scrubbed) tape still matches.
     */
    public PlaybackBuilder unredact(Field field, String pattern, String replacement) {
        unredactions.add(new Unredaction(field, pattern, replacement));
        return this;
    }

    @Override
    void applyConfig(Arena arena, MemorySegment handle) {
        super.applyConfig(arena, handle);
        try {
            if (strictHeaders) {
                NativeMethods.SET_STRICT_HEADERS.invokeExact(handle, 1);
            }
            if (matchJsonBody) {
                NativeMethods.SET_MATCH_JSON_BODY.invokeExact(handle, 1);
            }
            for (Unredaction u : unredactions) {
                MemorySegment r = (MemorySegment) NativeMethods.UNREDACT.invokeExact(
                        handle,
                        u.field().code(),
                        NativeMethods.cString(arena, u.pattern()),
                        NativeMethods.cString(arena, u.replacement()));
                check(r, "unredact");
            }
        } catch (Throwable t) {
            throw rethrow("applyConfig", t);
        }
    }

    public VcrServer start() {
        NativeLoader.configure(nativeLib);
        MemorySegment handle;
        try (Arena arena = Arena.ofConfined()) {
            handle = (MemorySegment) NativeMethods.OPEN_PLAYBACK.invokeExact(
                    NativeMethods.cString(arena, label),
                    NativeMethods.cString(arena, tapePath),
                    NativeMethods.cString(arena, host),
                    port);
            if (handle.address() == 0) {
                throw new VcrException("vcr playback failed to start for tape '" + tapePath + "'");
            }
            applyConfig(arena, handle);
            int rc = (int) NativeMethods.START.invokeExact(handle);
            if (rc < 0) {
                String detail = drainStartError(handle);
                NativeMethods.STOP.invokeExact(handle);
                throw new VcrException(
                        "vcr playback failed to begin serving for tape '" + tapePath + "': " + detail);
            }
        } catch (Throwable t) {
            throw rethrow("playback start", t);
        }
        return new VcrServer(handle, host, tapePath, false, false);
    }
}
