package com.paulhammant.servirtium.vcr;

import org.junit.jupiter.api.Test;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.file.Files;
import java.nio.file.Path;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotEquals;

/**
 * Playback-side breadth: strict request-header matching (pass via unredaction,
 * fail on mismatch) and static-content bypass.
 */
class PlaybackMatchTest {

    private static String tape(String name) {
        return Path.of("src", "test", "resources", "tapes", name).toAbsolutePath().toString();
    }

    private static HttpResponse<String> send(String url, String authHeader) throws Exception {
        // Force HTTP/1.1: the JDK client defaults to HTTP/2 and would otherwise
        // send the h2c upgrade headers (HTTP2-Settings, Upgrade), which strict
        // request-header matching correctly flags as unexpected.
        HttpClient client = HttpClient.newBuilder().version(HttpClient.Version.HTTP_1_1).build();
        HttpRequest.Builder b = HttpRequest.newBuilder(URI.create(url)).GET();
        if (authHeader != null) {
            b.header("Authorization", authHeader);
        }
        return client.send(b.build(), HttpResponse.BodyHandlers.ofString());
    }

    @Test
    void unredactionLetsAScrubbedTapeMatchTheRealRequest() throws Exception {
        // Tape expects "Authorization: Bearer REDACTED"; the live client sends
        // the real token. Unredact rewrites the expectation so it matches.
        try (VcrServer vcr = Vcr.playback(tape("secure_get.md"))
                .strictHeaders()
                .unredact(Field.REQUEST_HEADERS, "Bearer REDACTED", "Bearer real-token")
                // The JDK client always sends these; drop them so strict matching
                // compares only the meaningful Authorization header.
                .removeHeader(Field.REQUEST_HEADERS, "User-Agent")
                .removeHeader(Field.REQUEST_HEADERS, "Host")
                .removeHeader(Field.REQUEST_HEADERS, "Connection")
                .removeHeader(Field.REQUEST_HEADERS, "Content-Length")
                .port(0).start()) {

            HttpResponse<String> resp = send(vcr.baseUrl() + "/secure", "Bearer real-token");

            assertEquals(200, resp.statusCode());
            assertEquals("secret-ok", resp.body());
            assertEquals(Outcome.OK, vcr.lastKind());
        }
    }

    @Test
    void strictMatchingFlagsAMissingRequestHeader() throws Exception {
        try (VcrServer vcr = Vcr.playback(tape("secure_get.md"))
                .strictHeaders()
                .unredact(Field.REQUEST_HEADERS, "Bearer REDACTED", "Bearer real-token")
                .removeHeader(Field.REQUEST_HEADERS, "User-Agent")
                .removeHeader(Field.REQUEST_HEADERS, "Host")
                .removeHeader(Field.REQUEST_HEADERS, "Connection")
                .removeHeader(Field.REQUEST_HEADERS, "Content-Length")
                .port(0).start()) {

            // No Authorization header at all -> mismatch.
            send(vcr.baseUrl() + "/secure", null);

            assertNotEquals(Outcome.OK, vcr.lastKind());
            assertFalse(vcr.lastError().isEmpty());
        }
    }

    @Test
    void staticContentIsServedFromDiskNotTheTape() throws Exception {
        Path dir = Files.createTempDirectory("vcr_static_");
        Files.writeString(dir.resolve("asset.txt"), "static-asset");
        try {
            try (VcrServer vcr = Vcr.playback(tape("single_get.md"))
                    .staticContent("/files", dir.toAbsolutePath().toString())
                    .port(0).start()) {

                // From disk:
                assertEquals("static-asset", send(vcr.baseUrl() + "/files/asset.txt", null).body());
                // From the tape (unaffected):
                assertEquals("ok-body", send(vcr.baseUrl() + "/ok", null).body());
            }
        } finally {
            Files.walk(dir).sorted(java.util.Comparator.reverseOrder())
                    .forEach(p -> p.toFile().delete());
        }
    }

    @Test
    void untapedPathReturns404WithoutConsumingTheCursor() throws Exception {
        try (VcrServer vcr = Vcr.playback(tape("single_get.md"))
                .untaped("/favicon.ico")
                .port(0).start()) {

            // Incidental path -> 404, and does not advance the tape cursor:
            assertEquals(404, send(vcr.baseUrl() + "/favicon.ico", null).statusCode());
            // The recorded interaction still replays afterwards:
            assertEquals("ok-body", send(vcr.baseUrl() + "/ok", null).body());
        }
    }
}
