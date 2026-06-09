package com.paulhammant.servirtium.vcr.kotlin

import com.paulhammant.servirtium.vcr.Outcome
import com.sun.net.httpserver.HttpServer
import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Test
import java.net.InetSocketAddress
import java.net.URI
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse
import java.nio.file.Files

/**
 * Proves the Kotlin DSL drives the shared native engine end-to-end: record the
 * response of a throwaway HTTP upstream to a tape, then replay it offline.
 * Same engine the other 12 bindings use, reached through the Java FFM binding.
 */
class ServirtiumKotlinTest {

    private fun get(url: String): String =
        HttpClient.newHttpClient().send(
            HttpRequest.newBuilder(URI.create(url)).build(),
            HttpResponse.BodyHandlers.ofString()
        ).body()

    @Test
    fun `record then replay round-trips via the Kotlin DSL`() {
        val upstream = HttpServer.create(InetSocketAddress("127.0.0.1", 0), 0)
        upstream.createContext("/greeting") { ex ->
            val body = "hello-from-upstream".toByteArray()
            ex.responseHeaders.add("Content-Type", "text/plain")
            ex.sendResponseHeaders(200, body.size.toLong())
            ex.responseBody.use { it.write(body) }
        }
        upstream.start()
        val upstreamUrl = "http://127.0.0.1:${upstream.address.port}"
        val tape = Files.createTempFile("servirtium-kt", ".md").toString()

        // record (forwards to the live upstream, writes the tape on close)
        record(tape, upstreamUrl) { port(0) }.use { vcr ->
            assertEquals("hello-from-upstream", get(vcr.baseUrl() + "/greeting"))
        }
        upstream.stop(0)

        // replay (offline, from the tape just written)
        playback(tape) { port(0) }.use { vcr ->
            assertEquals("hello-from-upstream", get(vcr.baseUrl() + "/greeting"))
            assertEquals(Outcome.OK, vcr.lastKind())
        }
    }
}
