package dev.servirtium.vcr.groovy

import dev.servirtium.vcr.Field
import dev.servirtium.vcr.Outcome
import dev.servirtium.vcr.VcrException
import com.sun.net.httpserver.HttpServer
import org.junit.jupiter.api.Test

import java.net.InetSocketAddress
import java.net.URI
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse
import java.nio.file.Files

import static dev.servirtium.vcr.groovy.Servirtium.playback
import static dev.servirtium.vcr.groovy.Servirtium.record
import static org.junit.jupiter.api.Assertions.assertEquals
import static org.junit.jupiter.api.Assertions.assertThrows
import static org.junit.jupiter.api.Assertions.assertNotEquals

/**
 * Proves the Groovy DSL drives libservirtium_vcr end-to-end: record the
 * response of a throwaway HTTP upstream to a tape, then replay it offline. Same
 * libservirtium_vcr the other bindings use, reached through the Java FFM binding.
 */
class ServirtiumGroovyTest {


    @Test void structuredHelpersForwardCredentialsAndScrubTape() {
        def directory = Files.createTempDirectory('vcr-helpers-')
        def run = { String... args ->
            def process = new ProcessBuilder(['../target/test-tools/redaction_fixture'] + args.toList())
                .redirectErrorStream(true).start()
            def output = process.inputStream.text
            assertEquals(0, process.waitFor(), output)
            output.trim()
        }
        try {
            def upstream = run('start', directory.toString())
            def rec = record(directory.resolve('tape.md').toString(), upstream) {
                redactHeader('Authorization')
                redactQueryParam('password')
                redactJsonField('secretKey')
            }
            try {
                run('drive', directory.toString(), rec.baseUrl())
                assertEquals(Outcome.OK, rec.lastKind())
            } finally { rec.close() }
            run('check', directory.toString())
        } finally {
            Files.list(directory).withCloseable { files -> files.forEach { Files.delete(it) } }
            Files.delete(directory)
        }
    }

    @Test void retainedReplayDiagnostics() {
        def server = playback('../core_tests/diagnostics/playback.md')
        try {
            server.testContext('Groovy scenario', 'scenario.test', 123)
            def driver = new ProcessBuilder('../target/test-tools/diagnostic_fixture', server.baseUrl()).inheritIO().start()
            assertEquals(0, driver.waitFor())
            assert server.lastError(false).contains('owner')
            assert server.lastError(false).contains('scenario.test:123')
            assert !server.diagnosticsJson().contains('"retrieved":1')
            assert server.lastError().contains('owner')
            assert server.diagnosticsJson().contains('"retrieved":0')
            org.junit.jupiter.api.Assertions.assertThrows(dev.servirtium.vcr.VcrException) { server.assertNoMismatches() }
            server.testContext('next test', '', 0)
            server.assertNoMismatches()
            assertEquals('[]', server.diagnosticsJson())
        } finally { server.close() }
    }

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
    private static HttpServer jsonUpstream(String body, Map<String, String> headers = [:]) {
        def upstream = HttpServer.create(new InetSocketAddress("127.0.0.1", 0), 0)
        upstream.createContext("/") { ex ->
            byte[] bytes = body.getBytes()
            ex.responseHeaders.add("Content-Type", "application/json")
            headers.each { k, v -> ex.responseHeaders.add(k, v) }
            ex.sendResponseHeaders(200, bytes.length)
            ex.responseBody.withCloseable { it.write(bytes) }
        }
        upstream.start()
        upstream
    }

    @Test
    void sortJsonKeysWithPrettyJsonWritesSortedPrettyJson() {
        def upstream = jsonUpstream('{"b":1,"a":{"d":2,"c":3}}')
        def tape = Files.createTempFile("servirtium-groovy-sort", ".md")
        try {
            def rec = record(tape.toString(), "http://127.0.0.1:${upstream.address.port}") {
                port(0); prettyJson(2); sortJsonKeys()
            }
            try { get(rec.baseUrl() + "/doc") } finally { rec.close() }
            assert Files.readString(tape).contains('{\n  "a": {\n    "c": 3,\n    "d": 2\n  },\n  "b": 1\n}')
        } finally {
            upstream.stop(0)
            Files.deleteIfExists(tape)
        }
    }

    @Test
    void sortJsonKeysWithoutPrettyJsonIsRefusedWhenTheTapeIsWritten() {
        def upstream = jsonUpstream('{"b":1,"a":2}')
        def tape = Files.createTempFile("servirtium-groovy-refuse", ".md")
        Files.delete(tape)
        try {
            def rec = record(tape.toString(), "http://127.0.0.1:${upstream.address.port}") { port(0); sortJsonKeys() }
            get(rec.baseUrl() + "/doc")
            def e = assertThrows(VcrException) { rec.close() }
            assert e.message.contains("sort_json_keys needs pretty_json")
            assert !Files.exists(tape)
        } finally {
            upstream.stop(0)
            Files.deleteIfExists(tape)
        }
    }

    @Test
    void arrayAndHeaderSortRulesApplyAndABadOneFailsStart() {
        def upstream = jsonUpstream('[{"n":"z"},{"n":"a"}]', [Allow: 'POST, GET'])
        def tape = Files.createTempFile("servirtium-groovy-arrays", ".md")
        def base = "http://127.0.0.1:${upstream.address.port}"
        try {
            def rec = record(tape.toString(), base) {
                port(0); prettyJson(2)
                sortJsonArray("", "n"); sortJsonArrayAt("/doc", "", "n")
                sortResponseHeaders(); sortHeaderValue("Allow")
            }
            try { get(rec.baseUrl() + "/doc") } finally { rec.close() }
            def text = Files.readString(tape)
            assert text.indexOf('"n": "a"') < text.indexOf('"n": "z"')
            assert text.contains("Allow: GET, POST")
            def e = assertThrows(VcrException) { record(tape.toString(), base) { port(0); sortHeaderValue("") } }
            assert e.message.contains("sortHeaderValue")
        } finally {
            upstream.stop(0)
            Files.deleteIfExists(tape)
        }
    }

    private static HttpResponse<String> getWithCookie(String url) {
        HttpClient.newBuilder().version(HttpClient.Version.HTTP_1_1).build().send(
            HttpRequest.newBuilder(URI.create(url)).header("Cookie", "sid=live").build(),
            HttpResponse.BodyHandlers.ofString())
    }

    @Test
    void playbackRangeSkipsEarlyInteractionsAndServesALaterOne() {
        def rangeTape = '../core_tests/tapes/playback_range.tape'
        def vcr = playback(rangeTape) {
            port(0); redactCredentials(); removeHeader(Field.REQUEST_HEADERS, "User-Agent"); playbackRange(7)
        }
        try {
            assertEquals(8, vcr.tapeLength())
            assertEquals(200, getWithCookie(vcr.baseUrl() + "/logout").statusCode())
            assertEquals(7, vcr.lastIndex())
            assertEquals(Outcome.OK, vcr.lastKind())
        } finally { vcr.close() }
        def vcr2 = playback(rangeTape) {
            port(0); redactCredentials(); removeHeader(Field.REQUEST_HEADERS, "User-Agent"); playbackRange(7)
        }
        try {
            getWithCookie(vcr2.baseUrl() + "/login") // interaction 0 is outside the range
            assertNotEquals(Outcome.OK, vcr2.lastKind())
            assert vcr2.lastError().contains("outside the playback range")
        } finally { vcr2.close() }
    }

    @Test
    void playbackRangeWithABadRangeFailsStart() {
        def e = assertThrows(VcrException) {
            playback('../core_tests/tapes/playback_range.tape') { port(0); playbackRange(99) }
        }
        assert e.message.contains("playbackRange")
    }
}
