<?php

declare(strict_types=1);

/**
 * Run the vendored TodoBackend Mocha spec in real headless Chrome against a
 * Servirtium VCR, and report the result. Mirrors the Python browser.py, but
 * drives Chrome with PHP's own WebDriver client (php-webdriver/webdriver)
 * connecting to a chromedriver we start ourselves on an ephemeral port.
 *
 * Shared by both phases:
 *   * record.php        — VCR in record mode, forwarding to the live Kotlin SUT
 *   * playback_test.php — VCR replaying the committed tape, no SUT
 *
 * The suite is served *same-origin* from the VCR's own static-content mount
 * (`/suite`), so the browser's API calls to the VCR root are same-origin — no
 * CORS, no preflight OPTIONS cluttering the tape. /favicon.ico is marked
 * untaped.
 *
 * Fixed port: the recorded responses embed absolute todo URLs
 * (`http://127.0.0.1:<PORT>/<uuid>`) that the spec follows, and the VCR replays
 * response bodies verbatim — so playback MUST bind the same port the tape was
 * recorded against. Hence a fixed VCR_PORT for both phases rather than port 0.
 */

use Facebook\WebDriver\Chrome\ChromeOptions;
use Facebook\WebDriver\Remote\DesiredCapabilities;
use Facebook\WebDriver\Remote\RemoteWebDriver;

// integration/todobackend — suite/ and tapes/ are shared one level up.
const BASE_DIR = __DIR__ . '/..';
const SUITE_DIR = BASE_DIR . '/suite';
const TAPE = BASE_DIR . '/tapes/todobackend_crud.md';

// Both phases bind here (see the comment above on why it can't be dynamic).
const VCR_PORT = 51080;

/** The cached chromedriver binary (CHROMEDRIVER env, else PATH). */
function chromedriver_bin(): string
{
    $env = getenv('CHROMEDRIVER');
    return is_string($env) && $env !== '' ? $env : 'chromedriver';
}

/** Pick a free ephemeral TCP port. */
function free_port(): int
{
    $s = stream_socket_server('tcp://127.0.0.1:0', $errno, $errstr);
    if ($s === false) {
        throw new RuntimeException("could not bind an ephemeral port: {$errstr}");
    }
    $name = stream_socket_get_name($s, false);
    fclose($s);
    return (int) substr($name, strrpos($name, ':') + 1);
}

/**
 * Drive runner.html?<api_root> in headless Chrome until Mocha finishes. Starts
 * the cached chromedriver on an ephemeral port, connects php-webdriver to it,
 * and stops it on teardown.
 *
 * @return array{0:int,1:int,2:list<string>} [passes, failures, fail_messages]
 */
function run_suite(string $vcrBaseUrl, ?string $apiRoot = null, int $timeout = 120): array
{
    $apiRoot ??= $vcrBaseUrl;
    $url = "{$vcrBaseUrl}/suite/runner.html?{$apiRoot}";

    $port = free_port();
    $proc = proc_open(
        [chromedriver_bin(), "--port={$port}"],
        [1 => ['file', '/dev/null', 'w'], 2 => ['file', '/dev/null', 'w']],
        $pipes
    );
    if (!is_resource($proc)) {
        throw new RuntimeException('failed to start chromedriver');
    }
    // Give chromedriver a moment to bind its port.
    usleep(800_000);

    try {
        $opts = (new ChromeOptions())->addArguments(
            ['--headless=new', '--no-sandbox', '--disable-dev-shm-usage', '--disable-gpu']
        );
        $caps = DesiredCapabilities::chrome();
        $caps->setCapability(ChromeOptions::CAPABILITY, $opts);

        $driver = RemoteWebDriver::create("http://localhost:{$port}", $caps);
        try {
            $driver->get($url);

            $deadline = microtime(true) + $timeout;
            while (true) {
                $done = $driver->executeScript('return window.__mochaDone === true');
                if ($done === true) {
                    break;
                }
                if (microtime(true) >= $deadline) {
                    return [-1, -1, ['timed out waiting for window.__mochaDone']];
                }
                usleep(200_000);
            }

            $passes = (int) $driver->executeScript('return window.__mochaPasses');
            $failures = (int) $driver->executeScript('return window.__mochaFailures');
            $msgs = $driver->executeScript('return window.__mochaFailMsgs') ?: [];
            return [$passes, $failures, array_values(array_map('strval', $msgs))];
        } finally {
            $driver->quit();
        }
    } finally {
        proc_terminate($proc);
        proc_close($proc);
    }
}
