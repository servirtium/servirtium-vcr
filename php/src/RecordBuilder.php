<?php

declare(strict_types=1);

namespace Servirtium;

use FFI;
use FFI\CData;

/** Configures and starts a record VCR server. */
final class RecordBuilder extends VcrBuilderBase
{
    private string $upstreamBase;
    private $secretRedactorCallback = null;

    public function secretRedactor(callable $callback): static
    {
        $this->secretRedactorCallback = $callback;
        return $this;
    }


    /** @var list<array{0: string, 1: VcrField, 2: string, 3: string}> */
    private array $redactions = [];

    /** @var list<array{0: string, 1: string}> */
    private array $normalizeWholeTapes = [];

    /** @var list<array{0: string, 1: string}> */
    private array $redactWholeTapes = [];

    /** @var array{0: string, 1: string}|null */
    private ?array $note = null;

    private bool $indentCodeBlocksOn = false;
    private bool $emphasizeHttpVerbsOn = false;
    private int $prettyXmlIndent = 0;
    private int $prettyJsonIndent = 0;
    private ?string $upstreamCafilePath = null;
    private ?string $licenseNoticeText = null;
    private bool $sortJsonKeysOn = false;
    /** @var list<array{0: ?string, 1: string, 2: string}> */
    private array $sortJsonArrays = [];
    private bool $sortResponseHeadersOn = false;
    /** @var list<string> */
    private array $sortHeaderValues = [];
    private bool $failIfChangedOn = false;

    public function __construct(string $tapePath, string $upstreamBase)
    {
        parent::__construct($tapePath);
        $this->upstreamBase = $upstreamBase;
    }

    /** Scrub a value out of the given field before it lands on the tape. */
    public function redact(VcrField $field, string $pattern, string $replacement): static
    {
        $this->redactions[] = ['aether_vcr_embed_redact', $field, $pattern, $replacement];

        return $this;
    }

    public function redactHeader(string $name, string $replacement = '[REDACTED]', VcrField $field = VcrField::RequestHeaders): static
    {
        $this->redactions[] = ['aether_vcr_embed_redact_header', $field, $name, $replacement];
        return $this;
    }

    public function redactQueryParam(string $name, string $replacement = '[REDACTED]', VcrField $field = VcrField::Path): static
    {
        $this->redactions[] = ['aether_vcr_embed_redact_query_param', $field, $name, $replacement];
        return $this;
    }

    public function redactJsonField(string $name, string $replacement = '[REDACTED]', VcrField $field = VcrField::RequestBody): static
    {
        $this->redactions[] = ['aether_vcr_embed_redact_json_field', $field, $name, $replacement];
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

    /** Pretty-print recorded XML request and response bodies (indent 1..16; 0 = off). Falls back to byte-exact if the body isn't well-formed XML. */
    public function prettyXml(int $indent = 2): static
    {
        $this->prettyXmlIndent = $indent;

        return $this;
    }

    /** Format recorded JSON request and response bodies, keeping key order and number spellings; playback matches JSON request layout. */
    public function prettyJson(int $indent = 2): static
    {
        $this->prettyJsonIndent = $indent;

        return $this;
    }

    /** Verify an https upstream against this PEM CA file. */
    public function upstreamCafile(string $path): static
    {
        $this->upstreamCafilePath = $path;

        return $this;
    }

    /** Put $text under "## LICENSE NOTICE" at the top of each tape; playback ignores it. */
    public function addLicenseNotice(string $text): static
    {
        $this->licenseNoticeText = $text;

        return $this;
    }

    /**
     * Opt-in stable order: write JSON response bodies' object keys sorted at
     * every depth. Sorted JSON is only written pretty-printed: without
     * prettyJson() the tape is refused when written (stop() throws
     * VcrException, "sort_json_keys needs pretty_json ...").
     */
    public function sortJsonKeys(bool $on = true): static
    {
        $this->sortJsonKeysOn = $on;

        return $this;
    }

    /**
     * Sort the JSON response arrays $path selects (a JSON pointer from the
     * root, "*" for one segment, "" the root array, or a bare member name) by
     * member $by (a name, a pointer, or several comma-separated; "" sorts by
     * each element's canonical JSON). Replay serves the sorted order. Needs
     * prettyJson(). A rule the core refuses throws at start().
     */
    public function sortJsonArray(string $path, string $by = ''): static
    {
        $this->sortJsonArrays[] = [null, $path, $by];

        return $this;
    }

    /**
     * Like sortJsonArray(), only for interactions whose request path (query
     * included) matches the regex $requestRegex.
     */
    public function sortJsonArrayAt(string $requestRegex, string $path, string $by = ''): static
    {
        $this->sortJsonArrays[] = [$requestRegex, $path, $by];

        return $this;
    }

    /** Write response header lines sorted by name (case-insensitive); a repeated header's lines keep their order. */
    public function sortResponseHeaders(bool $on = true): static
    {
        $this->sortResponseHeadersOn = $on;

        return $this;
    }

    /** Sort one response header's comma-separated items ("Allow"). */
    public function sortHeaderValue(string $name): static
    {
        $this->sortHeaderValues[] = $name;

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
        if ($this->prettyXmlIndent > 0) {
            $lib->aether_vcr_embed_set_pretty_xml($handle, $this->prettyXmlIndent);
        }
        if ($this->prettyJsonIndent > 0) {
            $lib->aether_vcr_embed_set_pretty_json($handle, $this->prettyJsonIndent);
        }
        if ($this->upstreamCafilePath !== null) {
            self::check($lib->aether_vcr_embed_set_upstream_cafile($handle, $this->upstreamCafilePath), 'upstreamCafile');
        }
        if ($this->licenseNoticeText !== null) {
            self::check($lib->aether_vcr_embed_add_license_notice($handle, $this->licenseNoticeText), 'addLicenseNotice');
        }
        if ($this->sortJsonKeysOn) {
            $lib->aether_vcr_embed_set_sort_json_keys($handle, 1);
        }
        foreach ($this->sortJsonArrays as [$request, $path, $by]) {
            if ($request === null) {
                self::check($lib->aether_vcr_embed_sort_json_array($handle, $path, $by), 'sortJsonArray');
            } else {
                self::check($lib->aether_vcr_embed_sort_json_array_at($handle, $request, $path, $by), 'sortJsonArrayAt');
            }
        }
        if ($this->sortResponseHeadersOn) {
            $lib->aether_vcr_embed_set_sort_response_headers($handle, 1);
        }
        foreach ($this->sortHeaderValues as $name) {
            self::check($lib->aether_vcr_embed_sort_header_value($handle, $name), 'sortHeaderValue');
        }
        foreach ($this->redactions as [$operation, $field, $pattern, $replacement]) {
            self::check($lib->$operation($handle, $field->value, $pattern, $replacement), 'redact');
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
        $handle = self::checkOpen($lib->aether_vcr_embed_open_record(
            $this->labelValue,
            $this->tapePath,
            $this->upstreamBase,
            $this->hostValue,
            $this->portValue,
        ), "vcr record failed to start for tape '{$this->tapePath}' (upstream '{$this->upstreamBase}')");
        try {
            $this->applyConfig($handle);
            // Stage the note now (open_record cleared the tape) so it attaches to
            // the first interaction the SUT triggers, before serving begins.
            if ($this->note !== null) {
                [$title, $body] = $this->note;
                self::check($lib->aether_vcr_embed_note($handle, $title, $body), 'note');
            }
            if ($lib->aether_vcr_embed_start($handle) < 0) {
                $err = self::drainStartError($handle);
                throw new VcrException("vcr record failed to begin serving for tape '{$this->tapePath}': {$err}");
            }
        } catch (\Throwable $e) {
            $lib->aether_vcr_embed_stop($handle);
            $lib->aether_vcr_embed_destroy($handle);
            throw $e;
        }

        return new VcrServer(
            $handle,
            $this->hostValue,
            $this->tapePath,
            recordMode: true,
            failIfChanged: $this->failIfChangedOn,
            secretRedactor: $this->secretRedactorCallback,
        );
    }
}
