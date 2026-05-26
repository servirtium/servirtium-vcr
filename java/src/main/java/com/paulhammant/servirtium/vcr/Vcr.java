package com.paulhammant.servirtium.vcr;

/**
 * Entry point for record/replay fixtures backed by the Aether VCR core
 * (the {@code aether_vcr_embed_*} C-ABI from {@code std/http/server/vcr/embed.ae},
 * reached via Java FFM / Project Panama — {@link java.lang.foreign}). The
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
 * <p>v1 contract (from the Aether side): ONE active VCR server per process.
 * The mutation/diagnostic state is process-global, so {@code start()} resets it
 * to a clean slate before applying this fixture's config — a redaction/note/strict
 * setting from a previous test never leaks forward. Run tests serially (one
 * server per process at a time).
 */
public final class Vcr {

    private Vcr() {
    }

    /** Replay a Servirtium markdown tape from disk. */
    public static PlaybackBuilder playback(String tapePath) {
        return new PlaybackBuilder(tapePath);
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
