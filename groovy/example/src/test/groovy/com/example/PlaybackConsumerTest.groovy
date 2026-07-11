package com.example

import static com.paulhammant.servirtium.vcr.groovy.Servirtium.playback
import static org.junit.jupiter.api.Assertions.assertEquals
import static org.junit.jupiter.api.Assertions.assertTrue

import com.paulhammant.servirtium.vcr.Outcome
import java.net.URI
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse
import java.nio.file.Paths
import org.junit.jupiter.api.Test

/**
 * Third-party consumer test: drives the INSTALLED Groovy DSL jar
 * (servirtium-vcr-groovy, resolved from ~/.m2) via the `playback(tape) { }`
 * DSL, replaying the canonical tape. The engine .so is discovered zero-config
 * from the transitive servirtium-vcr jar resource — no SERVIRTIUM_VCR_LIB.
 */
class PlaybackConsumerTest {

    @Test
    void replaysCanonicalTapeFromInstalledGroovyJar() {
        def location = com.paulhammant.servirtium.vcr.groovy.Servirtium.class
                .protectionDomain.codeSource.location.toString()
        assertTrue(location.endsWith('.jar'), "expected the installed groovy jar, got $location")

        def tape = Paths.get(getClass().getResource('/tapes/single_get.md').toURI()).toString()

        playback(tape) { port(0) }.withCloseable { vcr ->
            def resp = HttpClient.newHttpClient().send(
                    HttpRequest.newBuilder(URI.create(vcr.baseUrl() + '/ok')).GET().build(),
                    HttpResponse.BodyHandlers.ofString())
            assertEquals(200, resp.statusCode())
            assertEquals('ok-body', resp.body())
            assertEquals(Outcome.OK, vcr.lastKind())
        }
    }
}
