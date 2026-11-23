package dev.servirtium.vcr;

import java.lang.foreign.Arena;
import java.lang.foreign.MemorySegment;
import java.util.ArrayList;
import java.util.List;

/** Configures and starts a playback VCR server. */
public final class PlaybackBuilder extends VcrBuilderBase<PlaybackBuilder> {

    private record Unredaction(Field field, String pattern, String replacement) {
    }

    private final List<Unredaction> unredactions = new ArrayList<>();
    private final List<String> matchHeaders = new ArrayList<>();
    private java.util.function.Function<String, String> secretResolver;
    private record Substitution(Field field, String pattern, String replacement, boolean required) {
    }

    private final List<Substitution> substitutions = new ArrayList<>();
    private boolean strictHeaders;
    private int prettyJson;
    private int prettyXml;
    private boolean matchMultiple;
    private int rangeFrom = -1;
    private int rangeTo = -1;

    PlaybackBuilder(String tapePath) {
        super(tapePath);
    }

    public PlaybackBuilder secretResolver(java.util.function.Function<String, String> callback) {
        secretResolver = callback;
        return this;
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
     * Match JSON request bodies by canonical form (key order and insignificant
     * whitespace ignored), as recording with the same option writes them;
     * serve tape responses as written. Non-JSON bodies stay byte-exact.
     */
    public PlaybackBuilder prettyJson() { return prettyJson(2); }

    /** As {@link #prettyJson()}; {@code indent} 0 turns it off. */
    public PlaybackBuilder prettyJson(int indent) {
        this.prettyJson = indent;
        return this;
    }

    /**
     * Match XML request bodies by canonical form (attribute order and
     * insignificant whitespace ignored; element order significant); serve tape
     * responses as written. Non-XML bodies stay byte-exact.
     */
    public PlaybackBuilder prettyXml() { return prettyXml(2); }

    /** As {@link #prettyXml()}; {@code indent} 0 turns it off. */
    public PlaybackBuilder prettyXml(int indent) {
        this.prettyXml = indent;
        return this;
    }

    /**
     * Opt in to reusable, order-independent playback: matches any recorded
     * interaction (not just the next in sequence) and doesn't consume it — for
     * polling/retries or non-deterministic request order.
     */
    public PlaybackBuilder matchMultiple() {
        return matchMultiple(true);
    }

    public PlaybackBuilder matchMultiple(boolean on) {
        this.matchMultiple = on;
        return this;
    }

    /**
     * Match playback on this specific request header's value (ignoring the rest
     * of the recorded header block); repeatable.
     */
    public PlaybackBuilder matchHeader(String name) {
        matchHeaders.add(name);
        return this;
    }

    /**
     * Replay only interactions {@code from}..{@code to} of the tape (0-based,
     * inclusive, the {@code ## Interaction N} numbers). Selection is by number
     * only. A bad range fails {@code start()} with a {@link VcrException}.
     */
    public PlaybackBuilder playbackRange(int from, int to) {
        this.rangeFrom = from;
        this.rangeTo = to;
        return this;
    }

    /** Replay interactions {@code from} through the last one. */
    public PlaybackBuilder playbackRange(int from) {
        return playbackRange(from, -1);
    }

    /**
     * Replace a redacted placeholder in the recorded expectation with the real
     * value the live SUT sends, so a committed (scrubbed) tape still matches.
     */
    public PlaybackBuilder unredact(Field field, String pattern, String replacement) {
        unredactions.add(new Unredaction(field, pattern, replacement));
        return this;
    }

    /**
     * Replace your own placeholder (e.g. {@code @@HOST@@}) in the replayed
     * response at serve time. Not for {{baseUrl}}/{{request.*}}, which core
     * expands itself.
     */
    public PlaybackBuilder substitute(Field field, String pattern, String replacement) {
        substitutions.add(new Substitution(field, pattern, replacement, true));
        return this;
    }

    /** Like {@link #substitute}, but an unused rule is not reported by assertAllRedactionsUsed. */
    public PlaybackBuilder substituteOptional(Field field, String pattern, String replacement) {
        substitutions.add(new Substitution(field, pattern, replacement, false));
        return this;
    }

    @Override
    void applyConfig(Arena arena, MemorySegment handle) {
        super.applyConfig(arena, handle);
        try {
            if (strictHeaders) {
                NativeMethods.SET_STRICT_HEADERS.invokeExact(handle, 1);
            }
            if (prettyJson > 0) {
                NativeMethods.SET_PRETTY_JSON.invokeExact(handle, prettyJson);
            }
            if (prettyXml > 0) {
                NativeMethods.SET_PRETTY_XML.invokeExact(handle, prettyXml);
            }
            if (matchMultiple) {
                NativeMethods.SET_MATCH_MULTIPLE.invokeExact(handle, 1);
            }
            for (String name : matchHeaders) {
                NativeMethods.MATCH_HEADER.invokeExact(handle, NativeMethods.cString(arena, name));
            }
            if (rangeFrom >= 0) {
                MemorySegment res = (MemorySegment) NativeMethods.SET_PLAYBACK_RANGE.invokeExact(
                        handle, rangeFrom, rangeTo);
                check(res, "playbackRange");
            }
            for (Substitution s : substitutions) {
                MemorySegment r = (MemorySegment) NativeMethods.SUBSTITUTE.invokeExact(
                        handle,
                        s.field().code(),
                        NativeMethods.cString(arena, s.pattern()),
                        NativeMethods.cString(arena, s.replacement()),
                        s.required() ? 1 : 0);
                check(r, "substitute");
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
        MemorySegment handle = null;
        boolean ok = false;
        try (Arena arena = Arena.ofConfined()) {
            handle = (MemorySegment) NativeMethods.OPEN_PLAYBACK.invokeExact(
                    NativeMethods.cString(arena, label),
                    NativeMethods.cString(arena, tapePath),
                    NativeMethods.cString(arena, host),
                    port);
            String openErr = openError(handle);
            if (!openErr.isEmpty()) {
                throw new VcrException("vcr playback failed to start for tape '" + tapePath + "': " + openErr);
            }
            applyConfig(arena, handle);
            if (secretResolver != null) SecretCallbacks.stage(handle, null, secretResolver);
            int rc = (int) NativeMethods.START.invokeExact(handle);
            if (rc < 0) {
                String detail = drainStartError(handle);
                throw new VcrException(
                        "vcr playback failed to begin serving for tape '" + tapePath + "': " + detail);
            }
            ok = true;
        } catch (Throwable t) {
            throw rethrow("playback start", t);
        } finally {
            if (!ok && handle != null) destroy(handle);
        }
        return new VcrServer(handle, host, tapePath, false, false);
    }
}
