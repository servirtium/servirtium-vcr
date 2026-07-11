package com.paulhammant.servirtium.vcr;

/**
 * Entry point for record/replay fixtures backed by the in-repo VCR core
 * (the {@code aether_vcr_embed_*} C-ABI from {@code core/embed.ae}, built on
 * the {@code core/vcr.ae} engine, reached via Java FFM / Project Panama —
 * {@link java.lang.foreign}). The
 * system-under-test talks plain HTTP to {@link VcrServer#baseUrl()}; tape paths,
 * mode, mutations, and diagnostics live in test setup/teardown.
 *
 * <pre>{@code
 * try (VcrServer vcr = Vcr.playback("tapes/my_api.md").port(0).start()) {
 *     HttpClient client = HttpClient.newHttpClient();
 *     HttpResponse<String> r = client.send(
 *         HttpRequest.newBuilder(URI.create(vcr.baseUrl() + "/ok")).build(),
 *         HttpResponse.BodyHandlers.ofString());
 *     assertEquals(Outcome.OK, vcr.lastKind());
 * }
 * }</pre>
 *
 * <p>Handle-based contract (matching the engine): N independent VCR servers can
 * run concurrently in one process — one server per port — each keyed by its own
 * handle with its own tape, cursor, and mutation/diagnostic state. Config applied
 * via the builder lands on that handle alone, so a redaction/note/strict setting
 * on one server never leaks into another.
 */
public final class Vcr {

    private Vcr() {
    }

    /** Replay a Servirtium markdown tape from disk. */
    public static PlaybackBuilder playback(String tapePath) {
        return new PlaybackBuilder(tapePath);
    }

    /**
     * Replay a Servirtium markdown tape, pinning the engine {@code .so} path
     * explicitly (see {@link VcrBuilderBase#nativeLib(String)}); by default the
     * bundled library is discovered.
     */
    public static PlaybackBuilder playback(String tapePath, String nativeLib) {
        return new PlaybackBuilder(tapePath).nativeLib(nativeLib);
    }

    /**
     * Record live interactions: forward to {@code upstreamBase}, return the real
     * response to the SUT, and capture the exchange. The tape is written to
     * {@code tapePath} when the server is closed.
     */
    public static RecordBuilder record(String tapePath, String upstreamBase) {
        return new RecordBuilder(tapePath, upstreamBase);
    }
}
