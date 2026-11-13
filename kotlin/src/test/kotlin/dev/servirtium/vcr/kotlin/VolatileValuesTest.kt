package dev.servirtium.vcr.kotlin

import dev.servirtium.vcr.VcrException
import dev.servirtium.vcr.VolatileMarkers
import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Assertions.assertThrows
import org.junit.jupiter.api.Assertions.assertTrue
import org.junit.jupiter.api.Test
import java.nio.file.Path

/** Volatile values (docs/volatile-values.md) through the Kotlin helpers; rules live in the core. */
class VolatileValuesTest {
    private val dir = "../core_tests/volatile/"

    private fun driver(mode: String, baseUrl: String): Int =
        ProcessBuilder("../target/test-tools/volatile_fixture", mode, baseUrl).inheritIO().start().waitFor()

    @Test fun `tape block rules and report`() {
        playback(dir + "wcf.md") { prettyXml(2) }.use { server ->
            assertEquals(0, driver("wcf", server.baseUrl()))
            assertTrue(server.volatileReport().contains("binding: {{messageId-1}} = "))
        }
    }

    @Test fun `profile file`() {
        val profile = Path.of(dir + "profile.md").toAbsolutePath().normalize().toString()
        playback(dir + "wcf_plain.md") { prettyXml(2); volatileProfile(profile) }.use { server ->
            assertEquals(0, driver("wcf", server.baseUrl()))
        }
    }

    @Test fun `rules in code`() {
        playback(dir + "wcf_plain.md") {
            prettyXml(2)
            volatileRule("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>")
            volatileRule("request body", "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/")
            volatileRule("request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;")
            volatileRule("response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>")
        }.use { server ->
            assertEquals(0, driver("wcf", server.baseUrl()))
        }
    }

    @Test fun markers() {
        playback(dir + "wcf_dollar.md") { prettyXml(2); volatileMarkers(VolatileMarkers.DOLLAR_CURLY) }.use { server ->
            assertEquals(0, driver("wcf", server.baseUrl()))
        }
        val e = assertThrows(VcrException::class.java) { playback(dir + "wcf_dollar.md") { prettyXml(2) } }
        assertTrue(e.message!!.contains("DollarCurly"), e.message)
    }

    @Test fun `cases and mismatch`() {
        playback(dir + "cases.md").use { server ->
            assertEquals(0, driver("cases", server.baseUrl()))
            server.resetCursor()
            assertEquals(0, driver("cases-mismatch", server.baseUrl()))
            assertTrue(server.lastError(false).contains("{{caseId-1}} = 42"))
            server.lastError(true)
        }
    }

    @Test fun bind() {
        val e = assertThrows(VcrException::class.java) { playback(dir + "cases_recorded.md") }
        assertTrue(e.message!!.contains("caseId"), e.message)
        playback(dir + "cases_recorded.md") { bind("caseId", "42") }.use { server ->
            assertEquals(0, driver("cases", server.baseUrl()))
        }
    }

    @Test fun `rule errors fail start`() {
        val e1 = assertThrows(VcrException::class.java) {
            playback(dir + "cases.md") { volatileRule("request body", "no placeholder") }
        }
        assertTrue(e1.message!!.contains("needs at least one placeholder"), e1.message)
        val e2 = assertThrows(VcrException::class.java) {
            playback(dir + "cases.md") { volatileRule("response body", "\"caseId\":\"{{id}}\"") }
        }
        assertTrue(e2.message!!.contains("conflicts with") && e2.message!!.contains("(tape)"), e2.message)
        assertThrows(VcrException::class.java) { playback(dir + "cases.md") { volatileRule("x", "a {{b}}", "regex") } }
    }
}
