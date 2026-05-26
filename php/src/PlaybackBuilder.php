<?php

declare(strict_types=1);

namespace Servirtium;

use FFI;

/** Configures and starts a playback VCR server. */
final class PlaybackBuilder extends VcrBuilderBase
{
    /** @var list<array{0: VcrField, 1: string, 2: string}> */
    private array $unredactions = [];

    /** @var list<array{0: string, 1: string}> */
    private array $staticContent = [];

    /** @var list<string> */
    private array $untaped = [];

    private bool $strictHeadersOn = false;

    public function __construct(string $tapePath)
    {
        parent::__construct($tapePath);
    }

    /**
     * Compare the SUT's request headers against the recorded block on every
     * interaction (Servirtium step 10), surfacing mismatches via
     * {@see VcrServer::lastError()}.
     */
    public function strictHeaders(bool $on = true): static
    {
        $this->strictHeadersOn = $on;

        return $this;
    }

    /**
     * Replace a redacted placeholder in the recorded expectation with the
     * real value the live SUT sends, so a committed (scrubbed) tape still
     * matches.
     */
    public function unredact(VcrField $field, string $pattern, string $replacement): static
    {
        $this->unredactions[] = [$field, $pattern, $replacement];

        return $this;
    }

    /**
     * Serve a path prefix from an on-disk directory instead of the tape
     * (Servirtium step 11).
     */
    public function staticContent(string $mountPath, string $fsDir): static
    {
        $this->staticContent[] = [$mountPath, $fsDir];

        return $this;
    }

    /**
     * Mark an incidental path (e.g. /favicon.ico) the VCR answers 404 for
     * without consuming the tape cursor, so the next recorded interaction
     * still matches.
     */
    public function untaped(string $path): static
    {
        $this->untaped[] = $path;

        return $this;
    }

    protected function applyConfig(): void
    {
        parent::applyConfig();
        $lib = Native::lib();
        if ($this->strictHeadersOn) {
            $lib->aether_vcr_embed_set_strict_headers(1);
        }
        foreach ($this->unredactions as [$field, $pattern, $replacement]) {
            self::check($lib->aether_vcr_embed_unredact($field->value, $pattern, $replacement), 'unredact');
        }
        foreach ($this->staticContent as [$mount, $dir]) {
            self::check($lib->aether_vcr_embed_static_content($mount, $dir), 'staticContent');
        }
        foreach ($this->untaped as $path) {
            self::check($lib->aether_vcr_embed_untaped($path), 'untaped');
        }
    }

    public function start(): VcrServer
    {
        self::resetGlobalState();
        $this->applyConfig();
        $handle = Native::lib()->aether_vcr_embed_start_playback(
            $this->labelValue,
            $this->tapePath,
            $this->hostValue,
            $this->portValue,
        );
        if ($handle === null || FFI::isNull($handle)) {
            throw new VcrException(
                "vcr playback failed to start for tape '{$this->tapePath}': " . self::drainStartError()
            );
        }

        return new VcrServer($handle, $this->hostValue, $this->tapePath, recordMode: false, failIfChanged: false);
    }
}
