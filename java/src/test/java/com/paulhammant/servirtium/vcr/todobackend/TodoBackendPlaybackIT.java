package com.paulhammant.servirtium.vcr.todobackend;

import com.paulhammant.servirtium.vcr.Vcr;
import com.paulhammant.servirtium.vcr.VcrServer;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

/**
 * TodoBackend browser integration test — PLAYBACK phase (the CI artifact).
 *
 * <p>Replays the committed CRUD tape through a Servirtium VCR and runs the real
 * TodoBackend Mocha spec against it in real headless Chrome (Java's own
 * Selenium). No SUT, no network — the whole CRUD conversation comes off the
 * tape. Mirrors the Python {@code playback_test.py}.
 *
 * <p>Run via the leaf {@code integration/todobackend/.java_playback.ae}, or
 * directly with the working dir at {@code java/}:
 * <pre>{@code
 *   SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so \
 *     mvn -q test -Dtest=TodoBackendPlaybackIT
 * }</pre>
 */
class TodoBackendPlaybackIT {

    @Test
    void mochaSuitePassesOffTheTape() {
        try (VcrServer vcr = Vcr.playback(TodoBackendBrowser.TAPE.toString())
                .staticContent("/suite", TodoBackendBrowser.SUITE_DIR.toString())
                .untaped("/favicon.ico")
                .port(TodoBackendBrowser.VCR_PORT)
                .start()) {

            TodoBackendBrowser.Result r = TodoBackendBrowser.runSuite(vcr.baseUrl());
            System.out.printf("mocha (playback): %d passed, %d failed%n", r.passes(), r.failures());
            for (String m : r.failMessages()) {
                System.out.println("  FAIL: " + m);
            }

            assertEquals(0, r.failures(), "mocha reported failures: " + r.failMessages());
            assertTrue(r.passes() > 0, "mocha reported no passes");
        }
    }
}
