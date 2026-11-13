<?php

declare(strict_types=1);

namespace Servirtium\Tests;

use PHPUnit\Framework\TestCase;
use Servirtium\PlaybackBuilder;
use Servirtium\Vcr;
use Servirtium\VcrException;
use Servirtium\VolatileMarkers;

/**
 * Volatile values (docs/volatile-values.md): the shared tapes in
 * core_tests/volatile/ driven by target/test-tools/volatile_fixture.
 */
final class VolatileTest extends TestCase
{
    private string $root;

    protected function setUp(): void
    {
        $this->root = dirname(__DIR__, 2);
    }

    private function tape(string $name): string
    {
        return $this->root . '/core_tests/volatile/' . $name;
    }

    private function fixture(string $scenario, string $baseUrl): void
    {
        $command = implode(' ', array_map('escapeshellarg', [$this->root . '/target/test-tools/volatile_fixture', $scenario, $baseUrl]));
        $output = [];
        exec($command . ' 2>&1', $output, $status);
        self::assertSame(0, $status, implode("\n", $output));
    }

    private function wcfRules(PlaybackBuilder $builder): PlaybackBuilder
    {
        return $builder
            ->volatileRule('request body', '<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>')
            ->volatileRule('request body', '<a:To s:mustUnderstand="1">{{endpoint}}/Services/')
            ->volatileRule('request body', '&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;')
            ->volatileRule('response body', '<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>');
    }

    public function testWcfTapeWithItsOwnRulesAndTheReport(): void
    {
        $server = Vcr::playback($this->tape('wcf.md'))->prettyXml(2)->start();
        try {
            $this->fixture('wcf', $server->baseUrl());
            self::assertStringContainsString('binding: {{messageId-1}} = ', $server->volatileReport());
        } finally { $server->stop(); }
    }

    public function testProfileFile(): void
    {
        $server = Vcr::playback($this->tape('wcf_plain.md'))->prettyXml(2)->volatileProfile($this->tape('profile.md'))->start();
        try {
            $this->fixture('wcf', $server->baseUrl());
        } finally { $server->stop(); }
    }

    public function testRulesInCode(): void
    {
        $server = $this->wcfRules(Vcr::playback($this->tape('wcf_plain.md'))->prettyXml(2))->start();
        try {
            $this->fixture('wcf', $server->baseUrl());
        } finally { $server->stop(); }
    }

    public function testDollarCurlyMarkersAndTheDefaultRefusesTheTape(): void
    {
        $server = Vcr::playback($this->tape('wcf_dollar.md'))->prettyXml(2)->volatileMarkers(VolatileMarkers::DollarCurly)->start();
        try {
            $this->fixture('wcf', $server->baseUrl());
        } finally { $server->stop(); }
        $this->expectException(VcrException::class);
        $this->expectExceptionMessage('DollarCurly');
        Vcr::playback($this->tape('wcf_dollar.md'))->prettyXml(2)->start();
    }

    public function testMismatchNamesTheBinding(): void
    {
        $server = Vcr::playback($this->tape('cases.md'))->start();
        try {
            $this->fixture('cases', $server->baseUrl());
            $server->resetCursor();
            $this->fixture('cases-mismatch', $server->baseUrl());
            self::assertStringContainsString('{{caseId-1}} = 42', $server->lastError(false));
            $server->lastError(true);
        } finally { $server->stop(); }
    }

    public function testBind(): void
    {
        try {
            Vcr::playback($this->tape('cases_recorded.md'))->start();
            self::fail('expected a missing bind');
        } catch (VcrException $error) {
            self::assertStringContainsString('caseId', $error->getMessage());
        }
        $server = Vcr::playback($this->tape('cases_recorded.md'))->bind('caseId', '42')->start();
        try {
            $this->fixture('cases', $server->baseUrl());
        } finally { $server->stop(); }
    }

    public function testRuleWithoutAPlaceholderFailsStart(): void
    {
        $this->expectException(VcrException::class);
        $this->expectExceptionMessage('needs at least one placeholder');
        Vcr::playback($this->tape('cases.md'))->volatileRule('request body', 'no placeholder')->start();
    }

    public function testConflictWithTheTapeFailsStart(): void
    {
        try {
            Vcr::playback($this->tape('cases.md'))->volatileRule('response body', '"caseId":"{{id}}"')->start()->stop();
            self::fail('expected a conflict');
        } catch (VcrException $error) {
            self::assertStringContainsString('conflicts with', $error->getMessage());
            self::assertStringContainsString('(tape)', $error->getMessage());
        }
    }

    public function testRegexRuleWithATemplatePlaceholderFailsStart(): void
    {
        $this->expectException(VcrException::class);
        Vcr::playback($this->tape('cases.md'))->volatileRule('x', 'a {{b}}', 'regex')->start();
    }
}
