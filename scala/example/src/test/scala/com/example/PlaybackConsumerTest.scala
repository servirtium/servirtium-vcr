package com.example

import com.paulhammant.servirtium.vcr.Outcome
import com.paulhammant.servirtium.vcr.scala.Servirtium
import java.net.URI
import java.net.http.{HttpClient, HttpRequest, HttpResponse}
import java.nio.file.Paths
import org.junit.jupiter.api.Assertions.{assertEquals, assertTrue}
import org.junit.jupiter.api.Test

/**
 * Third-party consumer test: drives the INSTALLED Scala helper jar
 * (servirtium-vcr-scala, resolved from ~/.m2) via `Servirtium.playback`,
 * replaying the canonical tape. The engine .so is discovered zero-config from
 * the transitive servirtium-vcr jar resource — no SERVIRTIUM_VCR_LIB.
 */
class PlaybackConsumerTest:

  @Test def replaysCanonicalTapeFromInstalledScalaJar(): Unit =
    val location =
      Servirtium.getClass.getProtectionDomain.getCodeSource.getLocation.toString
    assertTrue(location.endsWith(".jar"), s"expected the installed scala jar, got $location")

    val tape = Paths.get(getClass.getResource("/tapes/single_get.md").toURI).toString

    val vcr = Servirtium.playback(tape)(_.port(0))
    try
      val resp = HttpClient.newHttpClient.send(
        HttpRequest.newBuilder(URI.create(vcr.baseUrl() + "/ok")).GET().build(),
        HttpResponse.BodyHandlers.ofString(),
      )
      assertEquals(200, resp.statusCode())
      assertEquals("ok-body", resp.body())
      assertEquals(Outcome.OK, vcr.lastKind())
    finally vcr.close()
