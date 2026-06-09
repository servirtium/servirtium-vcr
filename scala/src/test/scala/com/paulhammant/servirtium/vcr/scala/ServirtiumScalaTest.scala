package com.paulhammant.servirtium.vcr.scala

import com.paulhammant.servirtium.vcr.Outcome
import com.sun.net.httpserver.HttpServer
import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Test

import java.net.{InetSocketAddress, URI}
import java.net.http.{HttpClient, HttpRequest, HttpResponse}
import java.nio.file.Files

/**
 * Proves the Scala helpers drive the shared native engine end-to-end: record
 * the response of a throwaway HTTP upstream to a tape, then replay it offline.
 * Same engine the other bindings use, reached through the Java FFM binding.
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
