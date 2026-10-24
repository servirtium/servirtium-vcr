<?php
declare(strict_types=1);
namespace Servirtium\Tests;
use PHPUnit\Framework\TestCase;
use Servirtium\Vcr;
use Servirtium\VcrException;
final class SecretsTest extends TestCase {
    public function testNamedSecretsRoundTrip(): void {
        $dir = sys_get_temp_dir() . '/vcr-secrets-php-' . uniqid(); mkdir($dir);
        $tape = $dir . '/tape.md';
        $run = function (string ...$args): string {
            $cmd = array_map('escapeshellarg', ['python3', __DIR__ . '/../../core_tests/secret_fixture.py', ...$args]);
            exec(implode(' ', $cmd) . ' 2>&1', $output, $status);
            self::assertSame(0, $status, implode("\n", $output)); return trim(implode("\n", $output));
        };
        try {
            $count = 0;
            $rec = Vcr::record($tape, $run('start', $dir))->secretRedactor(function ($key, $request) use (&$count) {
                if ($key !== 'password') return null;
                $count++; self::assertNotEmpty($request->fieldPath);
                return strtoupper(explode('/', $request->path)[1]) . '_PASSWORD';
            })->start();
            try { $run('drive', $rec->baseUrl()); self::assertSame(0, $count); } finally { $rec->stop(); }
            self::assertSame(20, $count); $run('check', $tape);
            try { Vcr::playback($tape)->start(); self::fail('missing resolver accepted'); } catch (VcrException $error) { self::assertStringContainsString('unresolved secret', $error->getMessage()); }
            $replay = Vcr::playback($tape)->secretResolver(fn($token) => 'pw-' . strtolower(str_replace('_PASSWORD', '', $token)) . '&secret')->start();
            try { $run('drive', $replay->baseUrl()); $replay->assertNoMismatches(); } finally { $replay->stop(); }
            $run('check', $tape);
        } finally { foreach (glob($dir . '/*') as $file) unlink($file); rmdir($dir); }
    }
}
