<?php

declare(strict_types=1);

namespace Servirtium;

use FFI\CData;

/**
 * A running VCR server.
 *
 * Call {@see stop()} to stop it; in record mode stop also flushes the
 * captured tape to disk (and raises on drift if `failIfChanged` was set).
 */
final class VcrServer
{
    private ?CData $handle;
    private string $host;
    private string $tapePath;
    private bool $recordMode;
    private bool $failIfChanged;
    private ?string $baseUrl = null;
    private $secretRedactor;

    public function __construct(
        CData $handle,
        string $host,
        string $tapePath,
        bool $recordMode,
        bool $failIfChanged,
        ?callable $secretRedactor = null,
    ) {
        $this->secretRedactor = $secretRedactor;
        $this->handle = $handle;
        $this->host = $host;
        $this->tapePath = $tapePath;
        $this->recordMode = $recordMode;
        $this->failIfChanged = $failIfChanged;
    }

    private function requireHandle(): CData
    {
        if ($this->handle === null) {
            throw new VcrException('VcrServer is stopped');
        }

        return $this->handle;
    }

    // ---- introspection ----------------------------------------------------

    /** The OS-resolved port the server is listening on. */
    public function port(): int
    {
        return Native::lib()->aether_vcr_embed_port($this->requireHandle());
    }

    /** Base URL the SUT should target, e.g. `http://127.0.0.1:54213`. */
    public function baseUrl(): string
    {
        if ($this->baseUrl === null) {
            $this->baseUrl = Native::takeString(
                Native::lib()->aether_vcr_embed_base_url($this->requireHandle(), $this->host)
            );
        }

        return $this->baseUrl;
    }

    /** Tape entry count (playback), or interactions captured so far (record). */
    public function tapeLength(): int
    {
        return Native::lib()->aether_vcr_embed_tape_length($this->requireHandle());
    }

    /** Latest retained replay diagnostic; consuming reads acknowledge without erasing. */
    public function lastError(bool $consume = true): string
    {
        return Native::takeString(Native::lib()->aether_vcr_embed_last_error_ex($this->requireHandle(), $consume ? 1 : 0));
    }

    /** Read all retained events, without acknowledging by default. */
    public function diagnosticsJson(bool $consume = false): string
    {
        return Native::takeString(Native::lib()->aether_vcr_embed_diagnostics_json($this->requireHandle(), $consume ? 1 : 0));
    }
    public function assertNoMismatches(): void
    {
        $error = Native::takeString(Native::lib()->aether_vcr_embed_assert_no_mismatches($this->requireHandle()));
        if ($error !== '') { throw new VcrException($error); }
    }
    public function testContext(string $name, string $sourceFile = '', int $sourceLine = 0): void
    {
        Native::lib()->aether_vcr_embed_test_context($this->requireHandle(), $name, $sourceFile, $sourceLine);
    }

    /** Outcome of the most-recent dispatch. */
    public function lastKind(): VcrOutcome
    {
        return VcrOutcome::from(Native::lib()->aether_vcr_embed_last_kind($this->requireHandle()));
    }

    /** Tape index of the most-recent matched interaction, or -1. */
    public function lastIndex(): int
    {
        return Native::lib()->aether_vcr_embed_last_index($this->requireHandle());
    }

    // ---- operations -------------------------------------------------------

    /**
     * Stage a note (record mode) for the *next* interaction to be captured.
     * Call between requests to annotate specific interactions.
     */
    public function note(string $title, string $body): void
    {
        $err = Native::takeString(Native::lib()->aether_vcr_embed_note($this->requireHandle(), $title, $body));
        if ($err !== '') {
            throw new VcrException($err);
        }
    }

    /** Rewind the replay cursor to interaction 0 and clear last-* slots. */
    public function resetCursor(): void
    {
        Native::lib()->aether_vcr_embed_reset_cursor($this->requireHandle());
    }

    /** Clear the last-error slot between sub-cases. */
    public function clearLastError(): void
    {
        Native::lib()->aether_vcr_embed_clear_last_error($this->requireHandle());
    }

    // ---- lifecycle --------------------------------------------------------

    /** Stop the server; flush the tape if recording (and raise on drift). */
    public function stop(): void
    {
        if ($this->handle === null) {
            return;
        }
        $handle = $this->handle;
        $this->handle = null;
        $lib = Native::lib();

        if (!$this->recordMode) {
            $lib->aether_vcr_embed_stop($handle);

            return;
        }

        if ($this->secretRedactor !== null) { Secrets::stage($handle, $this->secretRedactor, false); }
        $resultPtr = $this->failIfChanged
            ? $lib->aether_vcr_embed_stop_and_flush_fail_if_changed($handle, $this->tapePath)
            : $lib->aether_vcr_embed_stop_and_flush($handle, $this->tapePath);
        $err = Native::takeString($resultPtr);
        if ($err !== '') {
            throw new VcrException($err);
        }
    }
}
