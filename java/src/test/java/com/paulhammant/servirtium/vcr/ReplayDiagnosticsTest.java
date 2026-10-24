package com.paulhammant.servirtium.vcr;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
class ReplayDiagnosticsTest {
    @Test void retainedEventsHaveExplicitConsumption() throws Exception {
        try (var server = Vcr.playback("../core_tests/diagnostics/playback.md").start()) {
            server.testContext("Java scenario", "scenario.test", 123);
            var driver = new ProcessBuilder("../target/test-tools/diagnostic_fixture", server.baseUrl()).inheritIO().start();
            assertEquals(0, driver.waitFor());
            assertEquals(Outcome.OK, server.lastKind());
            assertTrue(server.lastError(false).contains("owner"));
            assertTrue(server.lastError(false).contains("scenario.test:123"));
            assertFalse(server.diagnosticsJson().contains("\"retrieved\":1"));
            assertTrue(server.lastError().contains("owner"));
            assertTrue(server.diagnosticsJson().contains("\"retrieved\":0"));
            assertTrue(server.diagnosticsJson().contains("\"retrieved\":1"));
            var failure = assertThrows(VcrException.class, server::assertNoMismatches);
            assertTrue(failure.getMessage().contains("admin"));
            assertTrue(failure.getMessage().contains("owner"));
            server.testContext("next test", "next.test", 5);
            server.assertNoMismatches();
            assertEquals("[]", server.diagnosticsJson());
        }
    }
}
