<?php

declare(strict_types=1);

namespace Servirtium;

/**
 * Entry point for record/replay fixtures backed by the in-repo core/vcr.ae
 * engine (built on Aether stdlib primitives; the `aether_vcr_embed_*` C-ABI
 * from `core/embed.ae`). The system-under-test talks plain HTTP to
 * {@see VcrServer::baseUrl()}; tape paths, mode, mutations, and diagnostics
 * live in test setup/teardown.
 *
 *     $vcr = Vcr::playback('tapes/my_api.md')->port(0)->start();
 *     try {
 *         // point the SUT at $vcr->baseUrl(), drive it ...
 *         assert($vcr->lastKind() === VcrOutcome::Ok);
 *     } finally {
 *         $vcr->stop();
 *     }
 *
 * Concurrency: the ABI is handle-based, so N independent VCR servers can run
 * concurrently, one server per port — each keyed by its own handle. The
 * mutation/diagnostic state is per-handle, applied to this fixture's own
 * handle before serving starts, so a redaction/note/strict setting from
 * another server never leaks across.
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
