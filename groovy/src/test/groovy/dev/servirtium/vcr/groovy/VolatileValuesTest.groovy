package dev.servirtium.vcr.groovy

import dev.servirtium.vcr.VcrException
import dev.servirtium.vcr.VolatileMarkers
import org.junit.jupiter.api.Test

import java.nio.file.Path

import static dev.servirtium.vcr.groovy.Servirtium.playback
import static org.junit.jupiter.api.Assertions.assertEquals
import static org.junit.jupiter.api.Assertions.assertThrows

/** Volatile values (docs/volatile-values.md) through the Groovy DSL; rules live in the core. */
class VolatileValuesTest {
    static final String DIR = '../core_tests/volatile/'

    private static int driver(String mode, String baseUrl) {
        new ProcessBuilder('../target/test-tools/volatile_fixture', mode, baseUrl).inheritIO().start().waitFor()
    }

    @Test void tapeBlockRulesAndReport() {
        playback(DIR + 'wcf.md') { prettyXml(2) }.withCloseable { server ->
            assertEquals(0, driver('wcf', server.baseUrl()))
            assert server.volatileReport().contains('binding: {{messageId-1}} = ')
        }
    }

    @Test void profileFile() {
        def profile = Path.of(DIR + 'profile.md').toAbsolutePath().normalize().toString()
        playback(DIR + 'wcf_plain.md') { prettyXml(2); volatileProfile(profile) }.withCloseable { server ->
            assertEquals(0, driver('wcf', server.baseUrl()))
        }
    }

    @Test void rulesInCode() {
        playback(DIR + 'wcf_plain.md') {
            prettyXml(2)
            volatileRule('request body', '<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>')
            volatileRule('request body', '<a:To s:mustUnderstand="1">{{endpoint}}/Services/')
            volatileRule('request body', '&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;')
            volatileRule('response body', '<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>')
        }.withCloseable { server ->
            assertEquals(0, driver('wcf', server.baseUrl()))
        }
    }

    @Test void markers() {
        playback(DIR + 'wcf_dollar.md') { prettyXml(2); volatileMarkers(VolatileMarkers.DOLLAR_CURLY) }.withCloseable { server ->
            assertEquals(0, driver('wcf', server.baseUrl()))
        }
        def e = assertThrows(VcrException) { playback(DIR + 'wcf_dollar.md') { prettyXml(2) } }
        assert e.message.contains('DollarCurly')
    }

    @Test void casesAndMismatch() {
        playback(DIR + 'cases.md').withCloseable { server ->
            assertEquals(0, driver('cases', server.baseUrl()))
            server.resetCursor()
            assertEquals(0, driver('cases-mismatch', server.baseUrl()))
            assert server.lastError(false).contains('{{caseId-1}} = 42')
            server.lastError(true)
        }
    }

    @Test void bind() {
        def e = assertThrows(VcrException) { playback(DIR + 'cases_recorded.md') }
        assert e.message.contains('caseId')
        playback(DIR + 'cases_recorded.md') { bind('caseId', '42') }.withCloseable { server ->
            assertEquals(0, driver('cases', server.baseUrl()))
        }
    }

    @Test void ruleErrorsFailStart() {
        def e1 = assertThrows(VcrException) {
            playback(DIR + 'cases.md') { volatileRule('request body', 'no placeholder') }
        }
        assert e1.message.contains('needs at least one placeholder')
        def e2 = assertThrows(VcrException) {
            playback(DIR + 'cases.md') { volatileRule('response body', '"caseId":"{{id}}"') }
        }
        assert e2.message.contains('conflicts with') && e2.message.contains('(tape)')
        assertThrows(VcrException) { playback(DIR + 'cases.md') { volatileRule('x', 'a {{b}}', 'regex') } }
    }
}
