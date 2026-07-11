package com.example

import com.paulhammant.servirtium.vcr.Outcome
import com.paulhammant.servirtium.vcr.kotlin.playback
import java.net.URI
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse
import java.nio.file.Paths
import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Assertions.assertTrue
import org.junit.jupiter.api.Test

/**
 * Third-party consumer test: drives the INSTALLED Kotlin DSL jar
 * (servirtium-vcr-kotlin, resolved from ~/.m2) through its `playback { }` DSL,
 * replaying the canonical tape. The engine .so is discovered zero-config from
 * the transitive servirtium-vcr jar's /native/<rid>/ resource — no
 * SERVIRTIUM_VCR_LIB, no source tree.
 */
class PlaybackConsumerTest {

    @Test
    fun `replays canonical tape via the installed kotlin dsl`() {
        val location = Class.forName("com.paulhammant.servirtium.vcr.kotlin.Servirtium")
            .protectionDomain.codeSource.location.toString()
        assertTrue(location.endsWith(".jar"), "expected the installed kotlin jar, got $location")

        val tape = Paths.get(
            javaClass.getResource("/tapes/single_get.md")!!.toURI()
        ).toString()

        playback(tape) { port(0) }.use { vcr ->
            val resp = HttpClient.newHttpClient().send(
                HttpRequest.newBuilder(URI.create(vcr.baseUrl() + "/ok")).GET().build(),
                HttpResponse.BodyHandlers.ofString(),
            )
            assertEquals(200, resp.statusCode())
            assertEquals("ok-body", resp.body())
            assertEquals(Outcome.OK, vcr.lastKind())
        }
    }
}
