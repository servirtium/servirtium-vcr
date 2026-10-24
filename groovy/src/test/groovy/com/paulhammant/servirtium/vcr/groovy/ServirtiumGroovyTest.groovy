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
 * Proves the Groovy DSL drives libservirtium_vcr end-to-end: record the
 * response of a throwaway HTTP upstream to a tape, then replay it offline. Same
 * libservirtium_vcr the other bindings use, reached through the Java FFM binding.
 */
class ServirtiumGroovyTest {


    @Test void structuredHelpersForwardCredentialsAndScrubTape() {
        def directory = Files.createTempDirectory('vcr-helpers-')
        def run = { String... args ->
            def process = new ProcessBuilder(['python3', '../core_tests/redaction_fixture.py'] + args.toList())
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
            def driver = new ProcessBuilder('python3', '../core_tests/diagnostic_fixture.py', server.baseUrl()).inheritIO().start()
            assertEquals(0, driver.waitFor())
            assert server.lastError(false).contains('owner')
            assert server.lastError(false).contains('scenario.test:123')
            assert !server.diagnosticsJson().contains('"retrieved":1')
            assert server.lastError().contains('owner')
            assert server.diagnosticsJson().contains('"retrieved":0')
            org.junit.jupiter.api.Assertions.assertThrows(com.paulhammant.servirtium.vcr.VcrException) { server.assertNoMismatches() }
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
}
