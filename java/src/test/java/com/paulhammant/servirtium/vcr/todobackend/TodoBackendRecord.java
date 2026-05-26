package com.paulhammant.servirtium.vcr.todobackend;

import com.paulhammant.servirtium.vcr.Vcr;
import com.paulhammant.servirtium.vcr.VcrServer;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

/**
 * TodoBackend browser integration test — RECORD phase (manual, on-demand).
 *
 * <p>VCR in record mode, forwarding to the live Kotlin/http4k SUT
 * ({@code TODOBACKEND_UPSTREAM}). The Mocha spec runs in real headless Chrome
 * against the VCR; every CRUD call is forwarded upstream and recorded, then
 * flushed to the tape on close. The suite must pass for the recording to be
 * trustworthy. Mirrors the Python {@code record.py}.
 *
 * <p>Gated on {@code TODOBACKEND_UPSTREAM} so a normal {@code mvn test} skips it
 * (recording needs the live container + fixed port). The leaf
 * {@code integration/todobackend/.java_record.ae} brings the SUT up, sets the
 * env, runs this, and tears the container down. Run it directly (working dir at
 * {@code java/}) with:
 * <pre>{@code
 *   SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so \
 *     TODOBACKEND_UPSTREAM=http://127.0.0.1:54321 \
 *     mvn -q test -Dtest=TodoBackendRecord
 * }</pre>
 */
@EnabledIfEnvironmentVariable(named = "TODOBACKEND_UPSTREAM", matches = ".+")
class TodoBackendRecord {

    @Test
    void recordTheCrudSuiteAgainstTheLiveSut() {
        String upstream = System.getenv("TODOBACKEND_UPSTREAM");

        try (VcrServer vcr = Vcr.record(TodoBackendBrowser.TAPE.toString(), upstream)
                .staticContent("/suite", TodoBackendBrowser.SUITE_DIR.toString())
                .untaped("/favicon.ico")
                .port(TodoBackendBrowser.VCR_PORT)
                .start()) {

            TodoBackendBrowser.Result r = TodoBackendBrowser.runSuite(vcr.baseUrl());
            System.out.printf("mocha (record): %d passed, %d failed%n", r.passes(), r.failures());
            for (String m : r.failMessages()) {
                System.out.println("  FAIL: " + m);
            }

            // Assert before close so a bad run still flushes nothing trustworthy;
            // close() (in try-with-resources) writes the tape regardless.
            assertEquals(0, r.failures(),
                    "suite did not pass against the live SUT; tape NOT trustworthy: " + r.failMessages());
            assertTrue(r.passes() > 0, "suite produced no passes; tape NOT trustworthy");
        }
        System.out.println("record: wrote " + TodoBackendBrowser.TAPE);
    }
}
