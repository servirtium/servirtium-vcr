<?php

declare(strict_types=1);

namespace Servirtium;

use FFI\CData;

/**
 * Shared bind options for both builders.
 *
 * @template-covariant TSelf of VcrBuilderBase
 */
abstract class VcrBuilderBase
{
    protected string $tapePath;
    protected string $hostValue = '127.0.0.1';
    protected int $portValue = 0;          // 0 => OS-assigned (dynamic)
    protected string $labelValue = '';

    /** @var list<array{0: VcrField, 1: string}> */
    private array $headerRemovals = [];

    /** @var list<array{0: string, 1: string}> */
    private array $staticContent = [];

    /** @var list<string> */
    private array $untaped = [];

    protected function __construct(string $tapePath)
    {
        $this->tapePath = $tapePath;
    }

    /** Bind host. Defaults to 127.0.0.1. */
    public function host(string $host): static
    {
        $this->hostValue = $host;

        return $this;
    }

    /** Bind port. 0 (the default) asks the OS for a free port. */
    public function port(int $port): static
    {
        $this->portValue = $port;

        return $this;
    }

    /** Human-facing label for logs/diagnostics (not a state key). */
    public function label(string $label): static
    {
        $this->labelValue = $label;

        return $this;
    }

    /** Remove a header by name from the given block (case-insensitive). */
    public function removeHeader(VcrField $field, string $name): static
    {
        $this->headerRemovals[] = [$field, $name];

        return $this;
    }

    /**
     * Serve a path prefix from an on-disk directory instead of the tape
     * (Servirtium step 11).
     *
     * Works in both playback and record mode — recording a browser suite is
     * cleaner served same-origin from the VCR (no CORS preflights).
     */
    public function staticContent(string $mountPath, string $fsDir): static
    {
        $this->staticContent[] = [$mountPath, $fsDir];

        return $this;
    }

    /**
     * Mark an incidental path (e.g. /favicon.ico) the VCR answers 404 for
     * without touching the tape — no cursor consumed on playback, nothing
     * forwarded or recorded on record.
     */
    public function untaped(string $path): static
    {
        $this->untaped[] = $path;

        return $this;
    }

    /**
     * Wipe all process-global mutation/format/strict state so a previous
     * fixture's settings can't leak into this one (v1 one-server-per-process
     * has no per-handle state). Called first by {@see start()}.
     */
    final protected static function resetGlobalState(): void
    {
        $lib = Native::lib();
        $lib->aether_vcr_embed_clear_redactions();
        $lib->aether_vcr_embed_clear_unredactions();
        $lib->aether_vcr_embed_clear_header_removals();
        $lib->aether_vcr_embed_clear_static_content();
        $lib->aether_vcr_embed_clear_untaped();
        $lib->aether_vcr_embed_clear_format_options();
        $lib->aether_vcr_embed_set_strict_headers(0);
        $lib->aether_vcr_embed_clear_last_error();
        // A staged-but-unconsumed note is reset core-side when start_*
        // (re)loads the tape, so there's nothing to clear here.
    }

    /**
     * Apply this builder's accumulated config after the reset and before the
     * server starts (mutations like static-content and unredactions must be
     * registered before the tape loads). Subclasses extend this.
     */
    protected function applyConfig(): void
    {
        $lib = Native::lib();
        foreach ($this->headerRemovals as [$field, $name]) {
            self::check($lib->aether_vcr_embed_remove_header($field->value, $name), 'removeHeader');
        }
        foreach ($this->staticContent as [$mount, $dir]) {
            self::check($lib->aether_vcr_embed_static_content($mount, $dir), 'staticContent');
        }
        foreach ($this->untaped as $path) {
            self::check($lib->aether_vcr_embed_untaped($path), 'untaped');
        }
    }

    /** Throw if a mutation call returned a non-empty error string ("" = success). */
    final protected static function check(?CData $resultPtr, string $op): void
    {
        $err = Native::takeString($resultPtr);
        if ($err !== '') {
            throw new VcrException("vcr {$op} failed: {$err}");
        }
    }

    /** Drain the last-error slot for a failed start, with a fallback hint. */
    final protected static function drainStartError(): string
    {
        $err = Native::takeString(Native::lib()->aether_vcr_embed_last_error());

        return $err !== '' ? $err : '(no detail; check tape path and port availability)';
    }
}
