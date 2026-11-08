package dev.servirtium.vcr.kotlin

import dev.servirtium.vcr.Field
import dev.servirtium.vcr.Outcome
import dev.servirtium.vcr.VcrException
import com.sun.net.httpserver.HttpServer
import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Assertions.assertFalse
import org.junit.jupiter.api.Assertions.assertThrows
import org.junit.jupiter.api.Assertions.assertTrue
import org.junit.jupiter.api.Assertions.assertNotEquals
import org.junit.jupiter.api.Test
import java.net.InetSocketAddress
import java.net.URI
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse
import java.nio.file.Files

/**
 * Proves the Kotlin DSL drives libservirtium_vcr end-to-end: record the
 * response of a throwaway HTTP upstream to a tape, then replay it offline.
 * Same libservirtium_vcr the other 12 bindings use, reached through the Java FFM binding.
 */
class ServirtiumKotlinTest {


    @Test fun `structured helpers forward credentials and scrub tape`() {
        val directory = Files.createTempDirectory("vcr-helpers-")
        fun run(vararg args: String): String {
            val process = ProcessBuilder(listOf("../target/test-tools/redaction_fixture") + args)
                .redirectErrorStream(true).start()
            val output = process.inputStream.bufferedReader().readText()
            assertEquals(0, process.waitFor(), output)
            return output.trim()
        }
        try {
            val upstream = run("start", directory.toString())
            record(directory.resolve("tape.md").toString(), upstream) {
                redactHeader("Authorization")
                redactQueryParam("password")
                redactJsonField("secretKey")
            }.use { rec ->
                run("drive", directory.toString(), rec.baseUrl())
                assertEquals(Outcome.OK, rec.lastKind())
            }
            run("check", directory.toString())
        } finally {
            Files.list(directory).use { files -> files.forEach { Files.delete(it) } }
            Files.delete(directory)
        }
    }

    @Test fun `replay diagnostics have explicit consumption`() {
        playback("../core_tests/diagnostics/playback.md").use { server ->
            server.testContext("Kotlin scenario", "scenario.test", 123)
            val driver = ProcessBuilder("../target/test-tools/diagnostic_fixture", server.baseUrl()).inheritIO().start()
            assertEquals(0, driver.waitFor())
            org.junit.jupiter.api.Assertions.assertTrue(server.lastError(false).contains("owner"))
            org.junit.jupiter.api.Assertions.assertTrue(server.lastError(false).contains("scenario.test:123"))
            org.junit.jupiter.api.Assertions.assertFalse(server.diagnosticsJson().contains("\"retrieved\":1"))
            org.junit.jupiter.api.Assertions.assertTrue(server.lastError().contains("owner"))
            org.junit.jupiter.api.Assertions.assertTrue(server.diagnosticsJson().contains("\"retrieved\":0"))
            org.junit.jupiter.api.Assertions.assertThrows(dev.servirtium.vcr.VcrException::class.java) { server.assertNoMismatches() }
            server.testContext("next test", "", 0)
            server.assertNoMismatches()
            assertEquals("[]", server.diagnosticsJson())
        }
    }

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
    private fun jsonUpstream(body: String, vararg headers: Pair<String, String>): HttpServer {
        val upstream = HttpServer.create(InetSocketAddress("127.0.0.1", 0), 0)
        upstream.createContext("/") { ex ->
            val bytes = body.toByteArray()
            ex.responseHeaders.add("Content-Type", "application/json")
            headers.forEach { (k, v) -> ex.responseHeaders.add(k, v) }
            ex.sendResponseHeaders(200, bytes.size.toLong())
            ex.responseBody.use { it.write(bytes) }
        }
        upstream.start()
        return upstream
    }

    @Test
    fun `sortJsonKeys with prettyJson writes sorted pretty JSON`() {
        val upstream = jsonUpstream("""{"b":1,"a":{"d":2,"c":3}}""")
        val tape = Files.createTempFile("servirtium-kt-sort", ".md")
        try {
            record(tape.toString(), "http://127.0.0.1:${upstream.address.port}") {
                port(0); prettyJson(2); sortJsonKeys()
            }.use { vcr -> get(vcr.baseUrl() + "/doc") }
            assertTrue(Files.readString(tape).contains("{\n  \"a\": {\n    \"c\": 3,\n    \"d\": 2\n  },\n  \"b\": 1\n}"))
        } finally {
            upstream.stop(0)
            Files.deleteIfExists(tape)
        }
    }

    @Test
    fun `sortJsonKeys without prettyJson is refused when the tape is written`() {
        val upstream = jsonUpstream("""{"b":1,"a":2}""")
        val tape = Files.createTempFile("servirtium-kt-refuse", ".md")
        Files.delete(tape)
        try {
            val rec = record(tape.toString(), "http://127.0.0.1:${upstream.address.port}") { port(0); sortJsonKeys() }
            get(rec.baseUrl() + "/doc")
            val e = assertThrows(VcrException::class.java) { rec.close() }
            assertTrue(e.message!!.contains("sort_json_keys needs pretty_json"), e.message)
            assertFalse(Files.exists(tape))
        } finally {
            upstream.stop(0)
            Files.deleteIfExists(tape)
        }
    }

    @Test
    fun `array and header sort rules apply and a bad one fails start`() {
        val upstream = jsonUpstream("""[{"n":"z"},{"n":"a"}]""", "Allow" to "POST, GET")
        val tape = Files.createTempFile("servirtium-kt-arrays", ".md")
        val base = "http://127.0.0.1:${upstream.address.port}"
        try {
            record(tape.toString(), base) {
                port(0); prettyJson(2)
                sortJsonArray("", "n"); sortJsonArrayAt("/doc", "", "n")
                sortResponseHeaders(); sortHeaderValue("Allow")
            }.use { vcr -> get(vcr.baseUrl() + "/doc") }
            val text = Files.readString(tape)
            assertTrue(text.indexOf("\"n\": \"a\"") < text.indexOf("\"n\": \"z\""), text)
            assertTrue(text.contains("Allow: GET, POST"), text)
            val e = assertThrows(VcrException::class.java) { record(tape.toString(), base) { port(0); sortHeaderValue("") } }
            assertTrue(e.message!!.contains("sortHeaderValue"), e.message)
        } finally {
            upstream.stop(0)
            Files.deleteIfExists(tape)
        }
    }

    private fun getWithCookie(url: String) =
        HttpClient.newBuilder().version(HttpClient.Version.HTTP_1_1).build().send(
            HttpRequest.newBuilder(URI.create(url)).header("Cookie", "sid=live").build(),
            HttpResponse.BodyHandlers.ofString())

    @Test
    fun `playbackRange skips early interactions and serves a later one`() {
        val rangeTape = "../core_tests/tapes/playback_range.tape"
        playback(rangeTape) {
            port(0); redactCredentials(); removeHeader(Field.REQUEST_HEADERS, "User-Agent"); playbackRange(7)
        }.use { vcr ->
            assertEquals(8, vcr.tapeLength())
            assertEquals(200, getWithCookie(vcr.baseUrl() + "/logout").statusCode())
            assertEquals(7, vcr.lastIndex())
            assertEquals(Outcome.OK, vcr.lastKind())
        }
        playback(rangeTape) {
            port(0); redactCredentials(); removeHeader(Field.REQUEST_HEADERS, "User-Agent"); playbackRange(7)
        }.use { vcr ->
            getWithCookie(vcr.baseUrl() + "/login") // interaction 0 is outside the range
            assertNotEquals(Outcome.OK, vcr.lastKind())
            assertTrue(vcr.lastError().contains("outside the playback range"), vcr.lastError())
        }
    }

    @Test
    fun `playbackRange with a bad range fails start`() {
        val e = assertThrows(VcrException::class.java) {
            playback("../core_tests/tapes/playback_range.tape") { port(0); playbackRange(99) }
        }
        assertTrue(e.message!!.contains("playbackRange"), e.message)
    }
}
