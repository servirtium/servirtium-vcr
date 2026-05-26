<?php

declare(strict_types=1);

namespace Servirtium\Tests;

use PHPUnit\Framework\TestCase;
use Servirtium\Vcr;
use Servirtium\VcrField;
use Servirtium\VcrOutcome;

/**
 * Record mode end-to-end: the VCR forwards to a live upstream (a `php -S`
 * server), returns the real response to the SUT, captures the exchange,
 * flushes a tape on stop, and the same tape then replays. Plus redaction.
 */
final class RecordTest extends TestCase
{
    /** @var resource|null */
    private $upstream;
    private string $upstreamBase = '';
    private string $docroot = '';
    private string $tape = '';

    protected function setUp(): void
    {
        $this->tape = sys_get_temp_dir() . '/vcr_php_' . uniqid() . '.md';
        $port = $this->freePort();
        $this->upstreamBase = "http://127.0.0.1:$port";
        $this->docroot = sys_get_temp_dir() . '/vcrup_' . uniqid();
        mkdir($this->docroot);
        // A fixed upstream response; php -S sets Content-Length (no chunking).
        file_put_contents(
            $this->docroot . '/router.php',
            '<?php header("Content-Type: text/plain"); echo "hello-from-upstream";'
        );
        $this->upstream = proc_open(
            ['php', '-S', "127.0.0.1:$port", $this->docroot . '/router.php'],
            [1 => ['file', '/dev/null', 'w'], 2 => ['file', '/dev/null', 'w']],
            $pipes
        );
        for ($i = 0; $i < 50; $i++) {
            $c = @fsockopen('127.0.0.1', $port, $e, $s, 0.2);
            if ($c) { fclose($c); break; }
            usleep(100_000);
        }
    }

    protected function tearDown(): void
    {
        if (is_resource($this->upstream)) {
            proc_terminate($this->upstream);
            proc_close($this->upstream);
        }
        @unlink($this->tape);
        @unlink($this->docroot . '/router.php');
        @rmdir($this->docroot);
    }

    private function freePort(): int
    {
        $s = stream_socket_server('tcp://127.0.0.1:0', $errno, $errstr);
        $name = stream_socket_get_name($s, false);
        fclose($s);
        return (int) substr($name, strrpos($name, ':') + 1);
    }

    private function httpGet(string $url): string
    {
        $ctx = stream_context_create(['http' => ['ignore_errors' => true, 'timeout' => 5]]);
        $body = @file_get_contents($url, false, $ctx);
        return $body === false ? '' : $body;
    }

    public function testRecordsThenReplaysTheSameInteraction(): void
    {
        $rec = Vcr::record($this->tape, $this->upstreamBase)->port(0)->start();
        $this->assertSame('hello-from-upstream', $this->httpGet($rec->baseUrl() . '/greeting'));
        $rec->stop(); // flushes the tape

        $this->assertFileExists($this->tape);

        $play = Vcr::playback($this->tape)->port(0)->start();
        try {
            $this->assertSame('hello-from-upstream', $this->httpGet($play->baseUrl() . '/greeting'));
            $this->assertSame(VcrOutcome::Ok, $play->lastKind());
        } finally {
            $play->stop();
        }
    }

    public function testRedactsResponseBodyBeforeItLandsOnTheTape(): void
    {
        $rec = Vcr::record($this->tape, $this->upstreamBase)
            ->redact(VcrField::ResponseBody, 'hello-from-upstream', 'REDACTED')
            ->port(0)->start();
        $this->httpGet($rec->baseUrl() . '/greeting');
        $rec->stop();

        $tape = file_get_contents($this->tape);
        $this->assertStringContainsString('REDACTED', $tape);
        $this->assertStringNotContainsString('hello-from-upstream', $tape);
    }
}
