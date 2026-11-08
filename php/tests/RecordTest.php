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


    public function testStructuredRedactionHelpers(): void
    {
        $dir = sys_get_temp_dir() . '/vcr-helpers-' . uniqid();
        mkdir($dir);
        $fixture = dirname(__DIR__, 2) . '/target/test-tools/redaction_fixture';
        $run = function (string ...$args) use ($fixture): string {
            $command = implode(' ', array_map('escapeshellarg', [$fixture, ...$args]));
            exec($command . ' 2>&1', $output, $status);
            self::assertSame(0, $status, implode("\n", $output));
            return trim(implode("\n", $output));
        };
        try {
            $upstream = $run('start', $dir);
            $rec = Vcr::record($dir . '/tape.md', $upstream)
                ->redactHeader('Authorization')->redactQueryParam('password')->redactJsonField('secretKey')->start();
            try {
                $run('drive', $dir, $rec->baseUrl());
                self::assertSame(VcrOutcome::Ok, $rec->lastKind());
            } finally { $rec->stop(); }
            $run('check', $dir);
        } finally {
            foreach (glob($dir . '/*') as $file) { unlink($file); }
            rmdir($dir);
        }
    }

    public function testAcceptsALicenseNoticePrettyJsonAndHeaderPresets(): void
    {
        $rec = Vcr::record($this->tape, $this->upstreamBase)
            ->addLicenseNotice('test notice')->prettyJson(2)->removeTransportHeaders()
            ->removeCloudHeaders('aws')->redactCredentials()->redactCredentialHeader('X-Vault-Token')->port(0)->start();
        $rec->stop();
        $this->assertFileExists($this->tape);
    }

    public function testRetainedReplayDiagnostics(): void
    {
        $root = dirname(__DIR__, 2);
        $server = Vcr::playback($root . '/core_tests/diagnostics/playback.md')->start();
        try {
            $server->testContext('PHP scenario', 'scenario.test', 123);
            $command = implode(' ', array_map('escapeshellarg', [$root . '/target/test-tools/diagnostic_fixture', $server->baseUrl()]));
            exec($command . ' 2>&1', $output, $status);
            self::assertSame(0, $status, implode("\n", $output));
            self::assertStringContainsString('owner', $server->lastError(false));
            self::assertStringContainsString('scenario.test:123', $server->lastError(false));
            self::assertSame([0, 0], array_column(json_decode($server->diagnosticsJson(), true), 'retrieved'));
            self::assertStringContainsString('owner', $server->lastError());
            self::assertSame([0, 1], array_column(json_decode($server->diagnosticsJson(), true), 'retrieved'));
            try { $server->assertNoMismatches(); self::fail('expected a mismatch'); }
            catch (\Servirtium\VcrException $error) { self::assertStringContainsString('admin', $error->getMessage()); }
            $server->testContext('next test');
            $server->assertNoMismatches();
            self::assertSame('[]', $server->diagnosticsJson());
        } finally { $server->stop(); }
    }

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
            '<?php if (strpos($_SERVER["REQUEST_URI"], "/doc") === 0) {'
            . ' header("Content-Type: application/json"); header("Allow: POST, GET"); echo \'{"b":1,"a":{"d":2,"c":3}}\';'
            . '} elseif (strpos($_SERVER["REQUEST_URI"], "/list") === 0) {'
            . ' header("Content-Type: application/json"); echo \'[{"n":"z"},{"n":"a"}]\';'
            . '} else { header("Content-Type: text/plain"); echo "hello-from-upstream"; }'
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

    public function testSortJsonKeysWithPrettyJsonWritesSortedPrettyJson(): void
    {
        $rec = Vcr::record($this->tape, $this->upstreamBase)->prettyJson(2)->sortJsonKeys()->port(0)->start();
        $this->httpGet($rec->baseUrl() . '/doc');
        $rec->stop();

        $this->assertStringContainsString("{\n  \"a\": {\n    \"c\": 3,\n    \"d\": 2\n  },\n  \"b\": 1\n}", file_get_contents($this->tape));
    }

    public function testSortJsonKeysWithoutPrettyJsonIsRefused(): void
    {
        $rec = Vcr::record($this->tape, $this->upstreamBase)->sortJsonKeys()->port(0)->start();
        $this->httpGet($rec->baseUrl() . '/doc');
        try {
            $rec->stop();
            $this->fail('expected the tape to be refused');
        } catch (\Servirtium\VcrException $e) {
            $this->assertStringContainsString('sort_json_keys needs pretty_json', $e->getMessage());
        }
        $this->assertFileDoesNotExist($this->tape);
    }

    public function testArrayAndHeaderSortRulesAreAppliedAndRefusedWhenBad(): void
    {
        $rec = Vcr::record($this->tape, $this->upstreamBase)->prettyJson(2)
            ->sortJsonArray('', 'n')->sortJsonArrayAt('/list', '', 'n')
            ->sortResponseHeaders()->sortHeaderValue('Allow')->port(0)->start();
        $this->httpGet($rec->baseUrl() . '/list');
        $rec->stop();

        $tape = file_get_contents($this->tape);
        $this->assertLessThan(strpos($tape, '"n": "z"'), strpos($tape, '"n": "a"'));

        $this->expectException(\Servirtium\VcrException::class);
        $this->expectExceptionMessageMatches('/sortHeaderValue/');
        Vcr::record($this->tape, $this->upstreamBase)->sortHeaderValue('')->port(0)->start();
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
