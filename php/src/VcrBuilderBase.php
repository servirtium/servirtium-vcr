<?php

declare(strict_types=1);

namespace Servirtium;

use FFI;
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
    protected ?string $nativeLibValue = null;

    /** @var list<array{0: VcrField, 1: string}> */
    private array $headerRemovals = [];

    private bool $ignoreVolatileHeadersOn = false;
    private bool $removeTransportHeadersOn = false;

    /** @var list<string> */
    private array $cloudVendors = [];

    private bool $redactCredentialsOn = false;

    /** @var list<string> */
    private array $credentialHeaders = [];

    /** @var list<array{0: string, 1: string}> */
    private array $staticContent = [];

    /** @var list<string> */
    private array $untaped = [];

    /** @var array{0: string, 1: string}|null */
    private ?array $tls = null;
    private ?array $tlsPem = null;

    private ?VolatileMarkers $volatileMarkersStyle = null;

    /** @var list<array{0: string, 1: list<string>}> [operation, arguments] in call order */
    private array $volatileCalls = [];

    protected function __construct(string $tapePath)
    {
        $this->tapePath = $tapePath;
    }

    /**
     * Pin an explicit path to libservirtium_vcr library for this run — the
     * first-class way to say *where the `.so` is* at launch, instead of relying
     * on discovery. Wins over the bundled-`native/` default and the
     * `SERVIRTIUM_VCR_LIB` env override. Set before `start()`.
     */
    public function nativeLib(string $path): static
    {
        $this->nativeLibValue = $path;

        return $this;
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
     * Drop the per-request volatile headers modern clients inject on every call
     * — distributed-tracing / correlation ids (traceparent, tracestate,
     * Request-Id, X-Request-Id, X-Correlation-Id, baggage) — from BOTH the
     * recorded expectation and the live request before matching. The companion
     * to removing the stock client identity headers. Works in playback and
     * record mode.
     */
    public function ignoreVolatileHeaders(bool $on = true): static
    {
        $this->ignoreVolatileHeadersOn = $on;

        return $this;
    }

    /**
     * Leave the connection-describing headers (Host, Connection,
     * Content-Length and the other hop-by-hop headers, Accept-Encoding) out of
     * the recording. Works in playback and record mode.
     */
    public function removeTransportHeaders(bool $on = true): static
    {
        $this->removeTransportHeadersOn = $on;

        return $this;
    }

    /**
     * Drop a cloud vendor's per-request headers. $vendor is one of aws, azure,
     * cloudflare, fastly, gcp; call again for more vendors. Works in playback
     * and record mode.
     */
    public function removeCloudHeaders(string $vendor): static
    {
        $this->cloudVendors[] = $vendor;

        return $this;
    }

    /**
     * Redact the common credential headers (Authorization, Cookie, Set-Cookie,
     * X-Api-Key, X-Auth-Token, ...) as numbered tokens. Register on the
     * playback builder too, as with every rule.
     */
    public function redactCredentials(bool $on = true): static
    {
        $this->redactCredentialsOn = $on;

        return $this;
    }

    /** One more credential header with the same treatment as redactCredentials(). */
    public function redactCredentialHeader(string $name): static
    {
        $this->credentialHeaders[] = $name;

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

    /** Serve https:// using this PEM cert and key (PEM cert + key: ECDSA P-256/P-384/P-521, Ed25519, or RSA 2048-16384). Applied at start. */
    public function tls(string $certPath, string $keyPath): static
    {
        $this->tls = [$certPath, $keyPath];

        return $this;
    }

    /** Like tls, but the PEM certificate and key are passed in memory (not file paths), so no private key is written to disk. */
    public function tlsFromPem(string $certPem, string $keyPem): static
    {
        $this->tlsPem = [$certPem, $keyPem];

        return $this;
    }

    /**
     * How placeholders and tokens are written: VolatileMarkers::Mustache
     * (default, `{{name}}`), DollarCurly or Wikilink. Applied before any rule.
     */
    public function volatileMarkers(VolatileMarkers $style): static
    {
        $this->volatileMarkersStyle = $style;

        return $this;
    }

    /**
     * Declare a volatile-value rule: a $scope ('request body', 'response
     * headers', ...) and a $pattern holding one or more `{{placeholder}}`s.
     * $kind is 'template' (default) or 'regex'. May be called repeatedly; a bad
     * rule throws VcrException at start(). See docs/volatile-values.md.
     */
    public function volatileRule(string $scope, string $pattern, string $kind = 'template'): static
    {
        $this->volatileCalls[] = ['rule', [$scope, $kind, $pattern]];

        return $this;
    }

    /** Bind a real value to a token ('serverDate-2') or to every token of a placeholder name ('serverDate'). */
    public function bind(string $nameOrToken, string $value): static
    {
        $this->volatileCalls[] = ['bind', [$nameOrToken, $value]];

        return $this;
    }

    /** Load volatile-value rules from a profile file (`## Volatile values`). */
    public function volatileProfile(string $path): static
    {
        $this->volatileCalls[] = ['profile', [$path]];

        return $this;
    }

    /**
     * Apply this builder's accumulated config to the opened handle, before
     * serving starts. Subclasses extend this.
     */
    protected function applyConfig(CData $handle): void
    {
        $lib = Native::lib();
        if ($this->volatileMarkersStyle !== null) {
            self::check($lib->aether_vcr_embed_set_volatile_markers($handle, $this->volatileMarkersStyle->value), 'volatileMarkers');
        }
        foreach ($this->volatileCalls as [$operation, $args]) {
            match ($operation) {
                'rule' => self::check($lib->aether_vcr_embed_volatile_rule($handle, ...$args), 'volatileRule'),
                'bind' => self::check($lib->aether_vcr_embed_volatile_bind($handle, ...$args), 'bind'),
                'profile' => self::check($lib->aether_vcr_embed_volatile_profile($handle, ...$args), 'volatileProfile'),
            };
        }
        foreach ($this->headerRemovals as [$field, $name]) {
            self::check($lib->aether_vcr_embed_remove_header($handle, $field->value, $name), 'removeHeader');
        }
        if ($this->ignoreVolatileHeadersOn) {
            self::check($lib->aether_vcr_embed_ignore_volatile_headers($handle), 'ignoreVolatileHeaders');
        }
        if ($this->removeTransportHeadersOn) {
            self::check($lib->aether_vcr_embed_remove_transport_headers($handle), 'removeTransportHeaders');
        }
        foreach ($this->cloudVendors as $vendor) {
            self::check($lib->aether_vcr_embed_remove_cloud_headers($handle, $vendor), 'removeCloudHeaders');
        }
        if ($this->redactCredentialsOn) {
            self::check($lib->aether_vcr_embed_redact_credentials($handle), 'redactCredentials');
        }
        foreach ($this->credentialHeaders as $name) {
            self::check($lib->aether_vcr_embed_redact_credential_header($handle, $name), 'redactCredentialHeader');
        }
        foreach ($this->staticContent as [$mount, $dir]) {
            self::check($lib->aether_vcr_embed_static_content($handle, $mount, $dir), 'staticContent');
        }
        foreach ($this->untaped as $path) {
            self::check($lib->aether_vcr_embed_untaped($handle, $path), 'untaped');
        }
        if ($this->tls !== null) {
            self::check($lib->aether_vcr_embed_set_tls($handle, $this->tls[0], $this->tls[1]), 'tls');
        }
        if ($this->tlsPem !== null) {
            self::check($lib->aether_vcr_embed_set_tls_pem($handle, $this->tlsPem[0], $this->tlsPem[1]), 'tlsFromPem');
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

    /**
     * An open always returns a handle; a failed one carries its own reason.
     * Read it, destroy the dead handle, and throw.
     */
    final protected static function checkOpen(?CData $handle, string $what): CData
    {
        $lib = Native::lib();
        if ($handle === null || FFI::isNull($handle)) {
            throw new VcrException("{$what}: out of memory");
        }
        $reason = Native::takeString($lib->aether_vcr_embed_open_error($handle));
        if ($reason !== '') {
            $lib->aether_vcr_embed_destroy($handle);
            throw new VcrException("{$what}: {$reason}");
        }

        return $handle;
    }

    /** Drain the last-error slot for a failed start, with a fallback hint. */
    final protected static function drainStartError(CData $handle): string
    {
        $err = Native::takeString(Native::lib()->aether_vcr_embed_last_error($handle));

        return $err !== '' ? $err : '(no detail; check tape path and port availability)';
    }
}
