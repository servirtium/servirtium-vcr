package com.paulhammant.servirtium.vcr.groovy

import com.paulhammant.servirtium.vcr.Outcome
import com.sun.net.httpserver.HttpServer
import org.junit.jupiter.api.Test

import java.net.InetSocketAddress
import java.net.URI
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse
import java.nio.file.Files

import static com.paulhammant.servirtium.vcr.groovy.Servirtium.playback
import static com.paulhammant.servirtium.vcr.groovy.Servirtium.record
import static org.junit.jupiter.api.Assertions.assertEquals

/**
 * Proves the Groovy DSL drives the shared native engine end-to-end: record the
 * response of a throwaway HTTP upstream to a tape, then replay it offline. Same
 * engine the other bindings use, reached through the Java FFM binding.
 */
class ServirtiumGroovyTest {

    private static String get(String url) {
        HttpClient.newHttpClient().send(
            HttpRequest.newBuilder(URI.create(url)).build(),
            HttpResponse.BodyHandlers.ofString()
        ).body()
    }

    @Test
    void recordThenReplayRoundTripsViaTheGroovyDsl() {
        def upstream = HttpServer.create(new InetSocketAddress("127.0.0.1", 0), 0)
        upstream.createContext("/greeting") { ex ->
            byte[] body = "hello-from-upstream".getBytes()
            ex.responseHeaders.add("Content-Type", "text/plain")
            ex.sendResponseHeaders(200, body.length)
            ex.responseBody.withCloseable { it.write(body) }
        }
        upstream.start()
        def upstreamUrl = "http://127.0.0.1:${upstream.address.port}"
        def tape = Files.createTempFile("servirtium-groovy", ".md").toString()

        // record (forwards to the live upstream, writes the tape on close)
        def rec = record(tape, upstreamUrl) { port(0) }
        try {
            assertEquals("hello-from-upstream", get(rec.baseUrl() + "/greeting"))
        } finally {
            rec.close()
        }
        upstream.stop(0)

        // replay (offline, from the tape just written)
        def play = playback(tape) { port(0) }
        try {
            assertEquals("hello-from-upstream", get(play.baseUrl() + "/greeting"))
            assertEquals(Outcome.OK, play.lastKind())
        } finally {
            play.close()
        }
    }
}
