<?php

declare(strict_types=1);

namespace Servirtium;

/**
 * Entry point for record/replay fixtures backed by the Aether VCR core
 * (the `aether_vcr_embed_*` C-ABI from `std/http/server/vcr/embed.ae`). The
 * system-under-test talks plain HTTP to {@see VcrServer::baseUrl()}; tape
 * paths, mode, mutations, and diagnostics live in test setup/teardown.
 *
 *     $vcr = Vcr::playback('tapes/my_api.md')->port(0)->start();
 *     try {
 *         // point the SUT at $vcr->baseUrl(), drive it ...
 *         assert($vcr->lastKind() === VcrOutcome::Ok);
 *     } finally {
 *         $vcr->stop();
 *     }
 *
 * v1 contract (from the Aether side): ONE active VCR server per process. The
 * mutation/diagnostic state is process-global, so `start()` resets it to a
 * clean slate before applying this fixture's config — a redaction/note/strict
 * setting from a previous test never leaks forward. Run tests serially (one
 * server per process at a time).
 */
final class Vcr
{
    private function __construct()
    {
    }

    /** Replay a Servirtium markdown tape from disk. */
    public static function playback(string $tapePath): PlaybackBuilder
    {
        return new PlaybackBuilder($tapePath);
    }

    /**
     * Record live interactions: forward to `$upstreamBase`, return the real
     * response to the SUT, and capture the exchange. The tape is written to
     * `$tapePath` when the server is stopped.
     */
    public static function record(string $tapePath, string $upstreamBase): RecordBuilder
    {
        return new RecordBuilder($tapePath, $upstreamBase);
    }
}
