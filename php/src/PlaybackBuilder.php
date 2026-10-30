<?php

declare(strict_types=1);

namespace Servirtium;

use FFI;
use FFI\CData;

/** Configures and starts a playback VCR server. */
final class PlaybackBuilder extends VcrBuilderBase
{
    /** @var list<array{0: VcrField, 1: string, 2: string}> */
    private array $unredactions = [];
    /** @var list<array{0: VcrField, 1: string, 2: string}> */
    private array $substitutions = [];
    private $secretResolverCallback = null;

    public function secretResolver(callable $callback): static
    {
        $this->secretResolverCallback = $callback;
        return $this;
    }


    private bool $strictHeadersOn = false;

    private bool $matchJsonBodyOn = false;

    private bool $matchMultipleOn = false;

    /** @var list<string> */
    private array $matchHeaders = [];

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
     * Opt in to matching request bodies by semantic JSON equality (key order /
     * whitespace ignored) instead of byte-for-byte. Non-JSON bodies fall back
     * to byte-exact.
     */
    public function matchJsonBody(bool $on = true): static
    {
        $this->matchJsonBodyOn = $on;

        return $this;
    }

    /**
     * Opt in to reusable, order-independent playback: matches any recorded
     * interaction (not just the next in sequence) and doesn't consume it — for
     * polling/retries or non-deterministic request order.
     */
    public function matchMultiple(bool $on = true): static
    {
        $this->matchMultipleOn = $on;

        return $this;
    }

    /**
     * Match playback on this specific request header's value (ignoring the rest
     * of the recorded header block); repeatable.
     */
    public function matchHeader(string $name): static
    {
        $this->matchHeaders[] = $name;

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
     * Rewrite the replayed response: regex $pattern -> $replacement in the
     * response body or headers ({{baseUrl}} is already expanded by core).
     */
    public function substitute(VcrField $field, string $pattern, string $replacement, bool $required = true): static
    {
        $this->substitutions[] = [$field, $pattern, $replacement, $required];

        return $this;
    }

    /** Like substitute(), but an unused rule is not reported by assertAllRedactionsUsed(). */
    public function substituteOptional(VcrField $field, string $pattern, string $replacement): static
    {
        return $this->substitute($field, $pattern, $replacement, false);
    }

    protected function applyConfig(CData $handle): void
    {
        parent::applyConfig($handle);
        $lib = Native::lib();
        if ($this->strictHeadersOn) {
            $lib->aether_vcr_embed_set_strict_headers($handle, 1);
        }
        if ($this->matchJsonBodyOn) {
            $lib->aether_vcr_embed_set_match_json_body($handle, 1);
        }
        if ($this->matchMultipleOn) {
            $lib->aether_vcr_embed_set_match_multiple($handle, 1);
        }
        foreach ($this->matchHeaders as $name) {
            $lib->aether_vcr_embed_match_header($handle, $name);
        }
        foreach ($this->unredactions as [$field, $pattern, $replacement]) {
            self::check($lib->aether_vcr_embed_unredact($handle, $field->value, $pattern, $replacement), 'unredact');
        }
        foreach ($this->substitutions as [$field, $pattern, $replacement, $required]) {
            self::check($lib->aether_vcr_embed_substitute($handle, $field->value, $pattern, $replacement, $required ? 1 : 0), 'substitute');
        }
    }

    public function start(): VcrServer
    {
        Native::configure($this->nativeLibValue);
        $lib = Native::lib();
        $handle = $lib->aether_vcr_embed_open_playback(
            $this->labelValue,
            $this->tapePath,
            $this->hostValue,
            $this->portValue,
        );
        if ($handle === null || FFI::isNull($handle)) {
            throw new VcrException("vcr playback failed to start for tape '{$this->tapePath}'");
        }
        $this->applyConfig($handle);
        if ($this->secretResolverCallback !== null) { Secrets::stage($handle, $this->secretResolverCallback, true); }
        if ($lib->aether_vcr_embed_start($handle) < 0) {
            $err = self::drainStartError($handle);
            $lib->aether_vcr_embed_stop($handle);
            throw new VcrException("vcr playback failed to begin serving for tape '{$this->tapePath}': {$err}");
        }

        return new VcrServer($handle, $this->hostValue, $this->tapePath, recordMode: false, failIfChanged: false);
    }
}
