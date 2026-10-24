package com.paulhammant.servirtium.vcr.scala

import com.paulhammant.servirtium.vcr.Outcome
import com.sun.net.httpserver.HttpServer
import org.junit.jupiter.api.Assertions.assertEquals
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
      cmd.add("python3")
      cmd.add("../core_tests/redaction_fixture.py")
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
      val driver = new ProcessBuilder("python3", "../core_tests/diagnostic_fixture.py", server.baseUrl()).inheritIO().start()
      assertEquals(0, driver.waitFor())
      org.junit.jupiter.api.Assertions.assertTrue(server.lastError(false).contains("owner"))
      org.junit.jupiter.api.Assertions.assertTrue(server.lastError(false).contains("scenario.test:123"))
      org.junit.jupiter.api.Assertions.assertFalse(server.diagnosticsJson().contains("\"retrieved\":1"))
      org.junit.jupiter.api.Assertions.assertTrue(server.lastError().contains("owner"))
      org.junit.jupiter.api.Assertions.assertTrue(server.diagnosticsJson().contains("\"retrieved\":0"))
      org.junit.jupiter.api.Assertions.assertThrows(classOf[com.paulhammant.servirtium.vcr.VcrException], () => server.assertNoMismatches())
      server.testContext("next test", "", 0)
      server.assertNoMismatches()
      assertEquals("[]", server.diagnosticsJson())
    }
