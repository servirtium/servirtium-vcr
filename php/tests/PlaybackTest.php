<?php

declare(strict_types=1);

namespace Servirtium\Tests;

use PHPUnit\Framework\TestCase;
use Servirtium\Vcr;
use Servirtium\VcrException;
use Servirtium\VcrField;
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

    public function testSubstituteFillsPlaceholderAndAssertAllConsumedTracksReplay(): void
    {
        $vcr = Vcr::playback($this->tape('base_url.md'))
            ->substitute(VcrField::ResponseBody, '@@HOST@@', 'http://sub.example')
            ->port(0)->start();
        try {
            try {
                $vcr->assertAllConsumed();
                $this->fail('expected unconsumed interaction error');
            } catch (VcrException $e) {
                $this->addToAssertionCount(1);
            }
            [, $body] = $this->httpGet($vcr->baseUrl() . '/where');
            $this->assertSame('at http://sub.example/x', rtrim($body));
            $vcr->assertAllConsumed();
            $vcr->assertAllRedactionsUsed();
            $this->assertSame('', $vcr->lastTlsProtocol());
        } finally {
            $vcr->stop();
        }
    }
    private function rangePlayback(int $from): \Servirtium\PlaybackBuilder
    {
        // file_get_contents adds only Host; the tape records only Cookie.
        return Vcr::playback($this->tape('playback_range.md'))->redactCredentials()->playbackRange($from)->port(0);
    }

    private function getWithCookie(string $url): array
    {
        $ctx = stream_context_create(['http' => ['ignore_errors' => true, 'timeout' => 5, 'header' => "Cookie: sid=live\r\n"]]);
        $body = @file_get_contents($url, false, $ctx);
        $status = 0;
        if (isset($http_response_header[0]) && preg_match('#HTTP/\S+\s+(\d+)#', $http_response_header[0], $m)) {
            $status = (int) $m[1];
        }
        return [$status, $body === false ? '' : $body];
    }

    public function testPlaybackRangeSkipsEarlyInteractionsAndServesALaterOne(): void
    {
        $vcr = $this->rangePlayback(7)->start();
        try {
            $this->assertSame(8, $vcr->tapeLength());
            [$status] = $this->getWithCookie($vcr->baseUrl() . '/logout');
            $this->assertSame(200, $status);
            $this->assertSame(7, $vcr->lastIndex());
            $this->assertSame(VcrOutcome::Ok, $vcr->lastKind());
        } finally {
            $vcr->stop();
        }
        $vcr = $this->rangePlayback(7)->start();
        try {
            $this->getWithCookie($vcr->baseUrl() . '/login'); // interaction 0 is outside the range
            $this->assertNotSame(VcrOutcome::Ok, $vcr->lastKind());
            $this->assertStringContainsString('outside the playback range', $vcr->lastError());
        } finally {
            $vcr->stop();
        }
    }

    public function testOpenOfAMissingTapeReportsWhy(): void
    {
        $this->expectException(VcrException::class);
        $this->expectExceptionMessageMatches('/no-such-tape/');
        Vcr::playback('/nonexistent/no-such-tape.md')->port(0)->start();
    }

    public function testOpenStopManyTimesAndDoubleStopIsHarmless(): void
    {
        for ($i = 0; $i < 50; $i++) {
            $vcr = Vcr::playback($this->tape('single_get.md'))->port(0)->start();
            [$status] = $this->httpGet($vcr->baseUrl() . '/ok');
            $this->assertSame(200, $status);
            $vcr->stop();
            $vcr->stop();
        }
    }

    public function testPlaybackRangeBadRangeThrowsAtStart(): void
    {
        $this->expectException(\Servirtium\VcrException::class);
        $this->expectExceptionMessageMatches('/playbackRange/');
        Vcr::playback($this->tape('playback_range.md'))->playbackRange(99)->port(0)->start();
    }

    public function testPlaybackRangeIsRefusedOnARecordHandle(): void
    {
        $tape = sys_get_temp_dir() . '/vcr_php_range_' . uniqid() . '.md';
        $rec = Vcr::record($tape, 'http://127.0.0.1:1')->port(0)->start();
        try {
            $handle = (new \ReflectionMethod($rec, 'requireHandle'))->invoke($rec);
            $lib = \Servirtium\Native::lib();
            $this->assertNotSame('', \Servirtium\Native::takeString($lib->aether_vcr_embed_set_playback_range($handle, 0, -1)));
            $this->assertSame(-1, $lib->aether_vcr_embed_get_playback_range_from($handle));
        } finally {
            $rec->discard();
        }
    }
}
