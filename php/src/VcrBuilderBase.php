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
     * Apply this builder's accumulated config to the opened handle, before
     * serving starts. Subclasses extend this.
     */
    protected function applyConfig(CData $handle): void
    {
        $lib = Native::lib();
        foreach ($this->headerRemovals as [$field, $name]) {
            self::check($lib->aether_vcr_embed_remove_header($handle, $field->value, $name), 'removeHeader');
        }
        foreach ($this->staticContent as [$mount, $dir]) {
            self::check($lib->aether_vcr_embed_static_content($handle, $mount, $dir), 'staticContent');
        }
        foreach ($this->untaped as $path) {
            self::check($lib->aether_vcr_embed_untaped($handle, $path), 'untaped');
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
    final protected static function drainStartError(CData $handle): string
    {
        $err = Native::takeString(Native::lib()->aether_vcr_embed_last_error($handle));

        return $err !== '' ? $err : '(no detail; check tape path and port availability)';
    }
}
