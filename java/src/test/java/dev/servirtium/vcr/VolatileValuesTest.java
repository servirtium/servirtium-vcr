package dev.servirtium.vcr;

import org.junit.jupiter.api.Test;

import java.nio.file.Path;

import static org.junit.jupiter.api.Assertions.*;

/** Conformance for volatile values (docs/volatile-values.md): rules live in the core, Java only marshals them. */
class VolatileValuesTest {
    private static final String DIR = "../core_tests/volatile/";

    private static int driver(String mode, String baseUrl) throws Exception {
        return new ProcessBuilder("../target/test-tools/volatile_fixture", mode, baseUrl).inheritIO().start().waitFor();
    }

    @Test void tapeBlockRulesAndReport() throws Exception {
        try (var server = Vcr.playback(DIR + "wcf.md").prettyXml(2).start()) {
            assertEquals(0, driver("wcf", server.baseUrl()));
            assertTrue(server.volatileReport().contains("binding: {{messageId-1}} = "));
        }
    }

    @Test void profileFile() throws Exception {
        var profile = Path.of(DIR + "profile.md").toAbsolutePath().normalize().toString();
        try (var server = Vcr.playback(DIR + "wcf_plain.md").prettyXml(2).volatileProfile(profile).start()) {
            assertEquals(0, driver("wcf", server.baseUrl()));
        }
    }

    @Test void rulesInCode() throws Exception {
        try (var server = Vcr.playback(DIR + "wcf_plain.md").prettyXml(2)
                .volatileRule("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>")
                .volatileRule("request body", "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/")
                .volatileRule("request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;")
                .volatileRule("response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>")
                .start()) {
            assertEquals(0, driver("wcf", server.baseUrl()));
        }
    }

    @Test void markers() throws Exception {
        try (var server = Vcr.playback(DIR + "wcf_dollar.md").prettyXml(2)
                .volatileMarkers(VolatileMarkers.DOLLAR_CURLY).start()) {
            assertEquals(0, driver("wcf", server.baseUrl()));
        }
        var e = assertThrows(VcrException.class, () -> Vcr.playback(DIR + "wcf_dollar.md").prettyXml(2).start());
        assertTrue(e.getMessage().contains("DollarCurly"), e.getMessage());
    }

    @Test void casesAndMismatch() throws Exception {
        try (var server = Vcr.playback(DIR + "cases.md").start()) {
            assertEquals(0, driver("cases", server.baseUrl()));
            server.resetCursor();
            assertEquals(0, driver("cases-mismatch", server.baseUrl()));
            assertTrue(server.lastError(false).contains("{{caseId-1}} = 42"));
            server.lastError(true);
        }
    }

    @Test void bind() throws Exception {
        var e = assertThrows(VcrException.class, () -> Vcr.playback(DIR + "cases_recorded.md").start());
        assertTrue(e.getMessage().contains("caseId"), e.getMessage());
        try (var server = Vcr.playback(DIR + "cases_recorded.md").bind("caseId", "42").start()) {
            assertEquals(0, driver("cases", server.baseUrl()));
        }
    }

    @Test void ruleErrorsFailStart() {
        var e1 = assertThrows(VcrException.class, () ->
                Vcr.playback(DIR + "cases.md").volatileRule("request body", "no placeholder").start());
        assertTrue(e1.getMessage().contains("needs at least one placeholder"), e1.getMessage());
        var e2 = assertThrows(VcrException.class, () ->
                Vcr.playback(DIR + "cases.md").volatileRule("response body", "\"caseId\":\"{{id}}\"").start());
        assertTrue(e2.getMessage().contains("conflicts with") && e2.getMessage().contains("(tape)"), e2.getMessage());
        assertThrows(VcrException.class, () ->
                Vcr.playback(DIR + "cases.md").volatileRule("x", "a {{b}}", "regex").start());
    }
}
