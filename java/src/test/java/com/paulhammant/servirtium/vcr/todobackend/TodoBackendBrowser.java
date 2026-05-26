package com.paulhammant.servirtium.vcr.todobackend;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.nio.file.Path;
import java.time.Duration;
import java.util.List;

/**
 * Runs the vendored TodoBackend Mocha spec in real headless Chrome against a
 * Servirtium VCR, and reports the result. Mirrors the Python {@code browser.py}.
 *
 * <p>Shared by both phases:
 * <ul>
 *   <li>{@link TodoBackendRecord}        — VCR in record mode, forwarding to the live SUT
 *   <li>{@link TodoBackendPlaybackIT}    — VCR replaying the committed tape, no SUT
 * </ul>
 *
 * <p>The suite is served <em>same-origin</em> from the VCR's own static-content
 * mount ({@code /suite}), so the browser's API calls to the VCR root are
 * same-origin — no CORS, no preflight {@code OPTIONS} cluttering the tape.
 * {@code /favicon.ico} is marked untaped.
 *
 * <p>Fixed port: the recorded responses embed absolute todo URLs
 * ({@code http://127.0.0.1:<PORT>/<uuid>}) that the spec follows, and the VCR
 * replays response bodies verbatim — so playback MUST bind the same port the
 * tape was recorded against. Hence a fixed {@link #VCR_PORT} for both phases
 * rather than port 0.
 */
final class TodoBackendBrowser {

    private TodoBackendBrowser() {
    }

    /** Both phases bind here (see class doc on why it can't be dynamic). */
    static final int VCR_PORT = 51080;

    /**
     * The shared integration fixtures dir (integration/todobackend), holding
     * {@code suite/} and {@code tapes/}. The leaves set the working dir to
     * {@code java/}, one level up from which sits {@code integration/}; an
     * absolute override is honoured via {@code -Dtodobackend.fixtures=...}.
     */
    static final Path FIXTURES = resolveFixtures();

    static final Path SUITE_DIR = FIXTURES.resolve("suite");
    static final Path TAPE = FIXTURES.resolve("tapes").resolve("todobackend_crud.md");

    private static Path resolveFixtures() {
        String override = System.getProperty("todobackend.fixtures");
        if (override != null && !override.isBlank()) {
            return Path.of(override).toAbsolutePath().normalize();
        }
        // Working dir is java/ (set by the leaves); fixtures live a level up.
        return Path.of("..", "integration", "todobackend").toAbsolutePath().normalize();
    }

    /** Result of one Mocha run. */
    record Result(int passes, int failures, List<String> failMessages) {
    }

    /** Drive runner.html?&lt;apiRoot&gt; in headless Chrome until Mocha finishes. */
    static Result runSuite(String vcrBaseUrl) {
        return runSuite(vcrBaseUrl, vcrBaseUrl, Duration.ofSeconds(120));
    }

    @SuppressWarnings("unchecked")
    static Result runSuite(String vcrBaseUrl, String apiRoot, Duration timeout) {
        String url = vcrBaseUrl + "/suite/runner.html?" + apiRoot;

        ChromeOptions opts = new ChromeOptions();
        opts.addArguments("--headless=new", "--no-sandbox",
                "--disable-dev-shm-usage", "--disable-gpu");
        WebDriver driver = new ChromeDriver(opts);
        try {
            driver.get(url);
            JavascriptExecutor js = (JavascriptExecutor) driver;
            new WebDriverWait(driver, timeout).until(
                    d -> Boolean.TRUE.equals(
                            ((JavascriptExecutor) d).executeScript("return window.__mochaDone === true")));

            int passes = ((Number) js.executeScript("return window.__mochaPasses")).intValue();
            int failures = ((Number) js.executeScript("return window.__mochaFailures")).intValue();
            Object raw = js.executeScript("return window.__mochaFailMsgs");
            List<String> msgs = raw == null ? List.of() : (List<String>) raw;
            return new Result(passes, failures, msgs);
        } finally {
            driver.quit();
        }
    }
}
