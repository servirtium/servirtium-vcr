<?php

declare(strict_types=1);

namespace Servirtium;

use FFI;
use FFI\CData;

/** Configures and starts a record VCR server. */
final class RecordBuilder extends VcrBuilderBase
{
    private string $upstreamBase;

    /** @var list<array{0: VcrField, 1: string, 2: string}> */
    private array $redactions = [];

    /** @var list<array{0: string, 1: string}> */
    private array $normalizeWholeTapes = [];

    /** @var list<array{0: string, 1: string}> */
    private array $redactWholeTapes = [];

    /** @var array{0: string, 1: string}|null */
    private ?array $note = null;

    private bool $indentCodeBlocksOn = false;
    private bool $emphasizeHttpVerbsOn = false;
    private bool $failIfChangedOn = false;

    public function __construct(string $tapePath, string $upstreamBase)
    {
        parent::__construct($tapePath);
        $this->upstreamBase = $upstreamBase;
    }

    /** Scrub a value out of the given field before it lands on the tape. */
    public function redact(VcrField $field, string $pattern, string $replacement): static
    {
        $this->redactions[] = [$field, $pattern, $replacement];

        return $this;
    }

    /**
     * Whole-tape normalization: every distinct regex match across the WHOLE
     * tape (all fields/interactions, in first-appearance order) becomes a
     * stable `{{name-N}}` token. Use for CORRELATED volatiles — ids minted in
     * one interaction that recur in later request paths — so they round-trip
     * on playback and a re-record stays byte-identical.
     */
    public function normalizeWholeTape(string $pattern, string $name): self
    {
        $this->normalizeWholeTapes[] = [$pattern, $name];

        return $this;
    }

    /**
     * Whole-tape redaction: every regex match across the WHOLE tape collapses
     * to the single constant `$replacement`. Use for UNCORRELATED volatiles
     * (e.g. the `Date` response header) that just need to be made constant.
     */
    public function redactWholeTape(string $pattern, string $replacement): self
    {
        $this->redactWholeTapes[] = [$pattern, $replacement];

        return $this;
    }

    /**
     * Attach a note to the next recorded interaction (Servirtium step 9).
     * For notes on later interactions, call {@see VcrServer::note()} on the
     * running server between requests.
     */
    public function note(string $title, string $body): static
    {
        $this->note = [$title, $body];

        return $this;
    }

    /** Emit code blocks as 4-space-indented text instead of fences. */
    public function indentCodeBlocks(bool $on = true): static
    {
        $this->indentCodeBlocksOn = $on;

        return $this;
    }

    /** Emit the HTTP method emphasized (e.g. `*GET*`) in headings. */
    public function emphasizeHttpVerbs(bool $on = true): static
    {
        $this->emphasizeHttpVerbsOn = $on;

        return $this;
    }

    /**
     * On stop, still write the freshly recorded tape but throw if it differs
     * from the on-disk one — the Servirtium step-4 drift contract, so a
     * normal `git diff` shows the change and CI fails loudly.
     */
    public function failIfChanged(bool $on = true): static
    {
        $this->failIfChangedOn = $on;

        return $this;
    }

    protected function applyConfig(CData $handle): void
    {
        parent::applyConfig($handle);
        $lib = Native::lib();
        if ($this->indentCodeBlocksOn) {
            $lib->aether_vcr_embed_indent_code_blocks($handle);
        }
        if ($this->emphasizeHttpVerbsOn) {
            $lib->aether_vcr_embed_emphasize_http_verbs($handle);
        }
        foreach ($this->redactions as [$field, $pattern, $replacement]) {
            self::check($lib->aether_vcr_embed_redact($handle, $field->value, $pattern, $replacement), 'redact');
        }
        foreach ($this->normalizeWholeTapes as [$pattern, $name]) {
            self::check($lib->aether_vcr_embed_normalize_whole_tape($handle, $pattern, $name), 'normalizeWholeTape');
        }
        foreach ($this->redactWholeTapes as [$pattern, $replacement]) {
            self::check($lib->aether_vcr_embed_redact_whole_tape($handle, $pattern, $replacement), 'redactWholeTape');
        }
    }

    public function start(): VcrServer
    {
        Native::configure($this->nativeLibValue);
        $lib = Native::lib();
        $handle = $lib->aether_vcr_embed_open_record(
            $this->labelValue,
            $this->tapePath,
            $this->upstreamBase,
            $this->hostValue,
            $this->portValue,
        );
        if ($handle === null || FFI::isNull($handle)) {
            throw new VcrException(
                "vcr record failed to start for tape '{$this->tapePath}' "
                . "(upstream '{$this->upstreamBase}')"
            );
        }
        $this->applyConfig($handle);
        // Stage the note now (open_record cleared the tape) so it attaches to
        // the first interaction the SUT triggers, before serving begins.
        if ($this->note !== null) {
            [$title, $body] = $this->note;
            self::check($lib->aether_vcr_embed_note($handle, $title, $body), 'note');
        }
        if ($lib->aether_vcr_embed_start($handle) < 0) {
            $err = self::drainStartError($handle);
            $lib->aether_vcr_embed_stop($handle);
            throw new VcrException("vcr record failed to begin serving for tape '{$this->tapePath}': {$err}");
        }

        return new VcrServer(
            $handle,
            $this->hostValue,
            $this->tapePath,
            recordMode: true,
            failIfChanged: $this->failIfChangedOn,
        );
    }
}
