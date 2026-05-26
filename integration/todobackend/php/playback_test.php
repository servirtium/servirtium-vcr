<?php

declare(strict_types=1);

/**
 * TodoBackend browser integration test — PLAYBACK phase (the CI artifact).
 *
 * Replays the committed CRUD tape through a Servirtium VCR and runs the real
 * TodoBackend Mocha spec against it in headless Chrome (PHP php-webdriver). No
 * SUT, no network — the whole CRUD conversation comes off the tape. This is the
 * offline test wired into aeb (.php_playback.ae); record.php regenerates it.
 *
 * Run via the .php_playback.ae node, or directly:
 *   SERVIRTIUM_VCR_LIB=../../../core/native/libservirtium_vcr.so \
 *   CHROMEDRIVER=<path> php playback_test.php
 */

// The PHP binding's composer autoloader registers both Servirtium\ (from
// php/src) and php-webdriver/webdriver (from php/vendor).
require __DIR__ . '/../../../php/vendor/autoload.php';
require __DIR__ . '/browser.php';

use Servirtium\Vcr;

function main(): int
{
    $vcr = Vcr::playback(TAPE)
        ->staticContent('/suite', SUITE_DIR)
        ->untaped('/favicon.ico')
        ->port(VCR_PORT)
        ->start();
    try {
        [$passes, $failures, $msgs] = run_suite($vcr->baseUrl());
        echo "mocha (playback): {$passes} passed, {$failures} failed\n";
        foreach ($msgs as $m) {
            echo "  FAIL: {$m}\n";
        }
        $ok = $failures === 0 && $passes > 0;
        echo($ok ? "TODOBACKEND_PLAYBACK_OK\n" : "TODOBACKEND_PLAYBACK_FAIL\n");
        return $ok ? 0 : 1;
    } finally {
        $vcr->stop();
    }
}

exit(main());
