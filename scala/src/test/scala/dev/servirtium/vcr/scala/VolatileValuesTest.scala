package dev.servirtium.vcr.scala

import dev.servirtium.vcr.{VcrException, VolatileMarkers}
import org.junit.jupiter.api.Assertions.{assertEquals, assertThrows, assertTrue}
import org.junit.jupiter.api.Test

import java.nio.file.Path

/** Volatile values (docs/volatile-values.md) through the Scala helpers; rules live in the core. */
class VolatileValuesTest:
  private val dir = "../core_tests/volatile/"

  private def driver(mode: String, baseUrl: String): Int =
    new ProcessBuilder("../target/test-tools/volatile_fixture", mode, baseUrl).inheritIO().start().waitFor()

  private def using[T <: AutoCloseable](resource: T)(body: T => Unit): Unit =
    try body(resource) finally resource.close()

  @Test def tapeBlockRulesAndReport(): Unit =
    using(Servirtium.playback(dir + "wcf.md")(_.prettyXml(2))) { server =>
      assertEquals(0, driver("wcf", server.baseUrl()))
      assertTrue(server.volatileReport().contains("binding: {{messageId-1}} = "))
    }

  @Test def profileFile(): Unit =
    val profile = Path.of(dir + "profile.md").toAbsolutePath.normalize.toString
    using(Servirtium.playback(dir + "wcf_plain.md")(b => { b.prettyXml(2); b.volatileProfile(profile) })) { server =>
      assertEquals(0, driver("wcf", server.baseUrl()))
    }

  @Test def rulesInCode(): Unit =
    using(Servirtium.playback(dir + "wcf_plain.md")(b => {
      b.prettyXml(2)
      b.volatileRule("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>")
      b.volatileRule("request body", "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/")
      b.volatileRule("request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;")
      b.volatileRule("response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>")
    })) { server =>
      assertEquals(0, driver("wcf", server.baseUrl()))
    }

  @Test def markers(): Unit =
    using(Servirtium.playback(dir + "wcf_dollar.md")(b => { b.prettyXml(2); b.volatileMarkers(VolatileMarkers.DOLLAR_CURLY) })) { server =>
      assertEquals(0, driver("wcf", server.baseUrl()))
    }
    val e = assertThrows(classOf[VcrException], () => Servirtium.playback(dir + "wcf_dollar.md")(_.prettyXml(2)))
    assertTrue(e.getMessage.contains("DollarCurly"), e.getMessage)

  @Test def casesAndMismatch(): Unit =
    using(Servirtium.playback(dir + "cases.md")()) { server =>
      assertEquals(0, driver("cases", server.baseUrl()))
      server.resetCursor()
      assertEquals(0, driver("cases-mismatch", server.baseUrl()))
      assertTrue(server.lastError(false).contains("{{caseId-1}} = 42"))
      server.lastError(true)
    }

  @Test def bind(): Unit =
    val e = assertThrows(classOf[VcrException], () => Servirtium.playback(dir + "cases_recorded.md")())
    assertTrue(e.getMessage.contains("caseId"), e.getMessage)
    using(Servirtium.playback(dir + "cases_recorded.md")(_.bind("caseId", "42"))) { server =>
      assertEquals(0, driver("cases", server.baseUrl()))
    }

  @Test def ruleErrorsFailStart(): Unit =
    val e1 = assertThrows(classOf[VcrException], () =>
      Servirtium.playback(dir + "cases.md")(_.volatileRule("request body", "no placeholder")))
    assertTrue(e1.getMessage.contains("needs at least one placeholder"), e1.getMessage)
    val e2 = assertThrows(classOf[VcrException], () =>
      Servirtium.playback(dir + "cases.md")(_.volatileRule("response body", "\"caseId\":\"{{id}}\"")))
    assertTrue(e2.getMessage.contains("conflicts with") && e2.getMessage.contains("(tape)"), e2.getMessage)
    assertThrows(classOf[VcrException], () =>
      Servirtium.playback(dir + "cases.md")(_.volatileRule("x", "a {{b}}", "regex")))
