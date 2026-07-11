<?php

declare(strict_types=1);

// Third-party consumer example for the *installed* servirtium/servirtium-php
// Composer package.
//
// Not a test inside the source tree: this is what a downstream user gets after
// `composer require servirtium/servirtium-php`. It autoloads the package from
// vendor/ (asserting it is NOT the in-repo php/src), finds the native engine
// .so that shipped *inside* the installed package (php/native/), and replays
// the canonical Servirtium tape — proving the package is self-contained with no
// SERVIRTIUM_VCR_LIB and no access to this repo.
//
// Two modes, each in its own fresh process:
//   php consumer_example.php explicit    // first-class ->nativeLib(path)
//   php consumer_example.php discovery    // zero-config: package finds its .so
//
// Exit 0 = pass.

require __DIR__ . '/vendor/autoload.php';

use Servirtium\Vcr;
use Servirtium\VcrOutcome;

function fail(string $msg): never
{
    fwrite(STDERR, "FAIL: {$msg}\n");
    exit(1);
}

$mode = $argv[1] ?? 'explicit';
putenv('SERVIRTIUM_VCR_LIB'); // a real consumer sets nothing
putenv('SERVIRTIUM_VCR_LIB=');

$tape = __DIR__ . '/tapes/single_get.md';

// The whole point: we must be running the INSTALLED package, not the repo.
$pkgFile = (new ReflectionClass(Vcr::class))->getFileName();
if ($pkgFile === false || !str_contains($pkgFile, '/vendor/')) {
    fail("servirtium loaded from the source tree, not an installed package: {$pkgFile}");
}
$pkgRoot = dirname($pkgFile, 2); // .../vendor/servirtium/servirtium-php/src/Vcr.php -> package root
echo "ok: consuming installed package at {$pkgRoot}\n";

$play = static function (\Servirtium\PlaybackBuilder $builder): void {
    $vcr = $builder->port(0)->start();
    try {
        $body = file_get_contents($vcr->baseUrl() . '/ok');
        if ($body !== 'ok-body') {
            fail("expected body 'ok-body', got " . var_export($body, true));
        }
        if ($vcr->lastKind() !== VcrOutcome::Ok) {
            fail('expected VcrOutcome::Ok, got ' . $vcr->lastKind()->name . ': ' . $vcr->lastError());
        }
    } finally {
        $vcr->stop();
    }
};

if ($mode === 'explicit') {
    $so = $pkgRoot . '/native/libservirtium_vcr.so';
    if (!is_file($so)) {
        fail("bundled engine .so missing from the installed package: {$so}");
    }
    $play(Vcr::playback($tape, $so));
    echo "ok: explicit ->nativeLib() playback (bundled .so {$so})\n";
} elseif ($mode === 'discovery') {
    $play(Vcr::playback($tape));
    echo "ok: discovery playback (zero-config bundled .so)\n";
} else {
    fail("unknown mode '{$mode}'; expected 'explicit' or 'discovery'");
}

echo "PASS[{$mode}]: consumer replayed the canonical tape from the installed package\n";
