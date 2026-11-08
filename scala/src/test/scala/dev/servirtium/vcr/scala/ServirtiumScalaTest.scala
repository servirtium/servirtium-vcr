package dev.servirtium.vcr.scala

import dev.servirtium.vcr.{Field, Outcome, VcrException}
import com.sun.net.httpserver.HttpServer
import org.junit.jupiter.api.Assertions.{assertEquals, assertFalse, assertNotEquals, assertThrows, assertTrue}
import org.junit.jupiter.api.Test

import java.net.{InetSocketAddress, URI}
import java.net.http.{HttpClient, HttpRequest, HttpResponse}
import java.nio.file.Files

/**
 * Proves the Scala helpers drive libservirtium_vcr end-to-end: record
 * the response of a throwaway HTTP upstream to a tape, then replay it offline.
 * Same libservirtium_vcr the other bindings use, reached through the Java FFM binding.
 */
class ServirtiumScalaTest:

  private def get(url: String): String =
    HttpClient.newHttpClient().send(
      HttpRequest.newBuilder(URI.create(url)).build(),
      HttpResponse.BodyHandlers.ofString()
    ).body()

  private def using[T <: AutoCloseable](resource: T)(body: T => Unit): Unit =
    try body(resource) finally resource.close()

  @Test
  def recordThenReplayRoundTripsViaTheScalaHelpers(): Unit =
    val upstream = HttpServer.create(InetSocketAddress("127.0.0.1", 0), 0)
    upstream.createContext("/greeting", ex => {
      val body = "hello-from-upstream".getBytes
      ex.getResponseHeaders.add("Content-Type", "text/plain")
      ex.sendResponseHeaders(200, body.length.toLong)
      val os = ex.getResponseBody
      try os.write(body) finally os.close()
    })
    upstream.start()
    val upstreamUrl = s"http://127.0.0.1:${upstream.getAddress.getPort}"
    val tape = Files.createTempFile("servirtium-scala", ".md").toString

    // record (forwards to the live upstream, writes the tape on close)
    using(Servirtium.record(tape, upstreamUrl)(_.port(0))) { vcr =>
      assertEquals("hello-from-upstream", get(vcr.baseUrl() + "/greeting"))
    }
    upstream.stop(0)

    // replay (offline, from the tape just written)
    using(Servirtium.playback(tape)(_.port(0))) { vcr =>
      assertEquals("hello-from-upstream", get(vcr.baseUrl() + "/greeting"))
      assertEquals(Outcome.OK, vcr.lastKind())
    }


  @Test def structuredHelpersForwardCredentialsAndScrubTape(): Unit =
    val directory = Files.createTempDirectory("vcr-helpers-")
    def run(args: String*): String =
      val cmd = new java.util.ArrayList[String]()
      cmd.add("../target/test-tools/redaction_fixture")
      args.foreach(cmd.add)
      val process = new ProcessBuilder(cmd).redirectErrorStream(true).start()
      val output = new String(process.getInputStream.readAllBytes())
      assertEquals(0, process.waitFor(), output)
      output.trim
    try
      val upstream = run("start", directory.toString)
      using(Servirtium.record(directory.resolve("tape.md").toString, upstream) { builder =>
        builder.redactHeader("Authorization").redactQueryParam("password").redactJsonField("secretKey")
      }) { rec =>
        run("drive", directory.toString, rec.baseUrl())
        assertEquals(Outcome.OK, rec.lastKind())
      }
      run("check", directory.toString)
    finally
      val files = Files.list(directory)
      try files.forEach(file => Files.delete(file)) finally files.close()
      Files.delete(directory)


  @Test def retainedReplayDiagnostics(): Unit =
    using(Servirtium.playback("../core_tests/diagnostics/playback.md")()) { server =>
      server.testContext("Scala scenario", "scenario.test", 123)
      val driver = new ProcessBuilder("../target/test-tools/diagnostic_fixture", server.baseUrl()).inheritIO().start()
      assertEquals(0, driver.waitFor())
      org.junit.jupiter.api.Assertions.assertTrue(server.lastError(false).contains("owner"))
      org.junit.jupiter.api.Assertions.assertTrue(server.lastError(false).contains("scenario.test:123"))
      org.junit.jupiter.api.Assertions.assertFalse(server.diagnosticsJson().contains("\"retrieved\":1"))
      org.junit.jupiter.api.Assertions.assertTrue(server.lastError().contains("owner"))
      org.junit.jupiter.api.Assertions.assertTrue(server.diagnosticsJson().contains("\"retrieved\":0"))
      org.junit.jupiter.api.Assertions.assertThrows(classOf[dev.servirtium.vcr.VcrException], () => server.assertNoMismatches())
      server.testContext("next test", "", 0)
      server.assertNoMismatches()
      assertEquals("[]", server.diagnosticsJson())
    }


  private def jsonUpstream(body: String, headers: (String, String)*): HttpServer =
    val upstream = HttpServer.create(InetSocketAddress("127.0.0.1", 0), 0)
    upstream.createContext("/", ex => {
      val bytes = body.getBytes
      ex.getResponseHeaders.add("Content-Type", "application/json")
      headers.foreach((k, v) => ex.getResponseHeaders.add(k, v))
      ex.sendResponseHeaders(200, bytes.length.toLong)
      val os = ex.getResponseBody
      try os.write(bytes) finally os.close()
    })
    upstream.start()
    upstream

  @Test def sortJsonKeysWithPrettyJsonWritesSortedPrettyJson(): Unit =
    val upstream = jsonUpstream("""{"b":1,"a":{"d":2,"c":3}}""")
    val tape = Files.createTempFile("servirtium-scala-sort", ".md")
    try
      using(Servirtium.record(tape.toString, s"http://127.0.0.1:${upstream.getAddress.getPort}")(
        _.port(0).prettyJson(2).sortJsonKeys())) { vcr => get(vcr.baseUrl() + "/doc"); () }
      assertTrue(Files.readString(tape).contains("{\n  \"a\": {\n    \"c\": 3,\n    \"d\": 2\n  },\n  \"b\": 1\n}"))
    finally
      upstream.stop(0)
      Files.deleteIfExists(tape)

  @Test def sortJsonKeysWithoutPrettyJsonIsRefusedWhenTheTapeIsWritten(): Unit =
    val upstream = jsonUpstream("""{"b":1,"a":2}""")
    val tape = Files.createTempFile("servirtium-scala-refuse", ".md")
    Files.delete(tape)
    try
      val rec = Servirtium.record(tape.toString, s"http://127.0.0.1:${upstream.getAddress.getPort}")(_.port(0).sortJsonKeys())
      get(rec.baseUrl() + "/doc")
      val e = assertThrows(classOf[VcrException], () => rec.close())
      assertTrue(e.getMessage.contains("sort_json_keys needs pretty_json"), e.getMessage)
      assertFalse(Files.exists(tape))
    finally
      upstream.stop(0)
      Files.deleteIfExists(tape)

  @Test def arrayAndHeaderSortRulesApplyAndABadOneFailsStart(): Unit =
    val upstream = jsonUpstream("""[{"n":"z"},{"n":"a"}]""", "Allow" -> "POST, GET")
    val tape = Files.createTempFile("servirtium-scala-arrays", ".md")
    val base = s"http://127.0.0.1:${upstream.getAddress.getPort}"
    try
      using(Servirtium.record(tape.toString, base)(
        _.port(0).prettyJson(2).sortJsonArray("", "n").sortJsonArrayAt("/doc", "", "n")
          .sortResponseHeaders().sortHeaderValue("Allow"))) { vcr => get(vcr.baseUrl() + "/doc"); () }
      val text = Files.readString(tape)
      assertTrue(text.indexOf("\"n\": \"a\"") < text.indexOf("\"n\": \"z\""), text)
      assertTrue(text.contains("Allow: GET, POST"), text)
      val e = assertThrows(classOf[VcrException], () => Servirtium.record(tape.toString, base)(_.port(0).sortHeaderValue("")))
      assertTrue(e.getMessage.contains("sortHeaderValue"), e.getMessage)
    finally
      upstream.stop(0)
      Files.deleteIfExists(tape)

  private def getWithCookie(url: String) =
    HttpClient.newBuilder().version(HttpClient.Version.HTTP_1_1).build().send(
      HttpRequest.newBuilder(URI.create(url)).header("Cookie", "sid=live").build(),
      HttpResponse.BodyHandlers.ofString())

  @Test def playbackRangeSkipsEarlyInteractionsAndServesALaterOne(): Unit =
    val rangeTape = "../core_tests/tapes/playback_range.tape"
    using(Servirtium.playback(rangeTape)(
      _.port(0).redactCredentials().removeHeader(Field.REQUEST_HEADERS, "User-Agent").playbackRange(7))) { vcr =>
      assertEquals(8, vcr.tapeLength())
      assertEquals(200, getWithCookie(vcr.baseUrl() + "/logout").statusCode())
      assertEquals(7, vcr.lastIndex())
      assertEquals(Outcome.OK, vcr.lastKind())
    }
    using(Servirtium.playback(rangeTape)(
      _.port(0).redactCredentials().removeHeader(Field.REQUEST_HEADERS, "User-Agent").playbackRange(7))) { vcr =>
      getWithCookie(vcr.baseUrl() + "/login") // interaction 0 is outside the range
      assertNotEquals(Outcome.OK, vcr.lastKind())
      assertTrue(vcr.lastError().contains("outside the playback range"), vcr.lastError())
    }

  @Test def playbackRangeWithABadRangeFailsStart(): Unit =
    val e = assertThrows(classOf[VcrException],
      () => Servirtium.playback("../core_tests/tapes/playback_range.tape")(_.port(0).playbackRange(99)))
    assertTrue(e.getMessage.contains("playbackRange"), e.getMessage)
