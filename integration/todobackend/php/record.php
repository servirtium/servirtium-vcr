<?php

declare(strict_types=1);

/**
 * TodoBackend browser integration test — RECORD phase (manual, on-demand).
 *
 * VCR in record mode, forwarding to the live Kotlin/http4k SUT
 * (TODOBACKEND_UPSTREAM). The Mocha spec runs in headless Chrome (PHP
 * php-webdriver) against the VCR; every CRUD call is forwarded upstream and
 * recorded, then flushed to the tape on stop. The suite must pass for the
 * recording to be considered good.
 *
 * Driven by .php_record.ae, which brings the SUT up in a container (started
 * with its baseUrl set to the VCR origin, so the todo URLs it returns point
 * back at the VCR) and tears it down afterward. Not an aeb node — recording is
 * on-demand and must never run during a normal build (it needs the container +
 * sibling source).
 */

require __DIR__ . '/../../../php/vendor/autoload.php';
require __DIR__ . '/browser.php';

use Servirtium\Vcr;

function main(): int
{
    $upstream = getenv('TODOBACKEND_UPSTREAM');
    if (!is_string($upstream) || $upstream === '') {
        echo "record.php: set TODOBACKEND_UPSTREAM (e.g. http://127.0.0.1:54321)\n";
        return 2;
    }

    $vcr = Vcr::record(TAPE, $upstream)
        ->staticContent('/suite', SUITE_DIR)
        ->untaped('/favicon.ico')
        // Whole-tape normalization so a re-record is byte-identical (the tape
        // stays git-clean; drift detection then fires only on real changes):
        //   - the server-minted todo UUID is CORRELATED (POST response body/url,
        //     then echoed in later GET/PATCH/DELETE request paths), so it gets a
        //     stable {{id-N}} token that round-trips on playback;
        //   - the Date response header is uncorrelated + variable-cardinality, so
        //     it's COLLAPSED to one constant.
        ->normalizeWholeTape('[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}', 'id')
        ->redactWholeTape('Date: .+ GMT', 'Date: <DATE>')
        ->port(VCR_PORT)
        ->start();
    try {
        [$passes, $failures, $msgs] = run_suite($vcr->baseUrl());
        echo "mocha (record): {$passes} passed, {$failures} failed\n";
        foreach ($msgs as $m) {
            echo "  FAIL: {$m}\n";
        }
        if ($failures !== 0 || $passes === 0) {
            echo "record: suite did not pass against the live SUT; tape NOT trustworthy\n";
            return 1;
        }
    } finally {
        $vcr->stop(); // flushes the tape to TAPE
    }

    echo "record: wrote " . TAPE . "\n";
    return 0;
}

exit(main());
