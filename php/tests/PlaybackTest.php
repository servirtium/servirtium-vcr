<?php

declare(strict_types=1);

namespace Servirtium\Tests;

use PHPUnit\Framework\TestCase;
use Servirtium\Vcr;
use Servirtium\VcrOutcome;

/**
 * End-to-end proof of the FFI chain: managed PHP → FFI → native VCR
 * (aether_vcr_embed_*) → embedded Aether HTTP server. Replays a Servirtium
 * markdown tape and asserts the SUT-visible response + diagnostics.
 */
final class PlaybackTest extends TestCase
{
    private function tape(string $name): string
    {
        return __DIR__ . '/tapes/' . $name;
    }

    /** @return array{0:int,1:string} [status, body] */
    private function httpGet(string $url): array
    {
        $ctx = stream_context_create(['http' => ['ignore_errors' => true, 'timeout' => 5]]);
        $body = @file_get_contents($url, false, $ctx);
        $status = 0;
        if (isset($http_response_header[0]) && preg_match('#HTTP/\S+\s+(\d+)#', $http_response_header[0], $m)) {
            $status = (int) $m[1];
        }
        return [$status, $body === false ? '' : $body];
    }

    public function testReplaysRecordedGetOnDynamicPort(): void
    {
        $vcr = Vcr::playback($this->tape('single_get.md'))->label('replays a GET')->port(0)->start();
        try {
            $this->assertGreaterThan(0, $vcr->port(), 'expected an OS-assigned port');
            $this->assertSame(1, $vcr->tapeLength());

            [$status, $body] = $this->httpGet($vcr->baseUrl() . '/ok');

            $this->assertSame(200, $status);
            $this->assertSame('ok-body', $body);
            $this->assertSame(VcrOutcome::Ok, $vcr->lastKind());
            $this->assertSame('', $vcr->lastError());
        } finally {
            $vcr->stop();
        }
    }

    public function testUntapedPath404sWithoutConsumingTheTapeCursor(): void
    {
        $vcr = Vcr::playback($this->tape('single_get.md'))->untaped('/favicon.ico')->port(0)->start();
        try {
            // The incidental path is answered 404 and never touches the tape.
            [$status] = $this->httpGet($vcr->baseUrl() . '/favicon.ico');
            $this->assertSame(404, $status);

            // The normal recorded interaction still replays (cursor not consumed).
            [$status, $body] = $this->httpGet($vcr->baseUrl() . '/ok');
            $this->assertSame(200, $status);
            $this->assertSame('ok-body', $body);
            $this->assertSame(VcrOutcome::Ok, $vcr->lastKind());
        } finally {
            $vcr->stop();
        }
    }

    public function testFlagsAPathMismatchViaDiagnostics(): void
    {
        $vcr = Vcr::playback($this->tape('single_get.md'))->port(0)->start();
        try {
            $this->httpGet($vcr->baseUrl() . '/nope');
            $this->assertNotSame(VcrOutcome::Ok, $vcr->lastKind());
            $this->assertNotSame('', $vcr->lastError(), 'expected a mismatch diagnostic');
        } finally {
            $vcr->stop();
        }
    }
}
