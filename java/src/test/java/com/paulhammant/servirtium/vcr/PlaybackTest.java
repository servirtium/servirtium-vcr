package com.paulhammant.servirtium.vcr;

import org.junit.jupiter.api.Test;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.file.Path;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

/**
 * End-to-end proof of the FFM chain: Java fixture -> native VCR
 * (aether_vcr_embed_*) -> embedded Aether HTTP server. Replays a Servirtium
 * markdown tape and asserts the SUT-visible response and diagnostics.
 */
class PlaybackTest {

    private static String tape(String name) {
        return Path.of("src", "test", "resources", "tapes", name).toAbsolutePath().toString();
    }

    private static HttpResponse<String> get(VcrServer vcr, String path) throws Exception {
        HttpClient client = HttpClient.newHttpClient();
        return client.send(
                HttpRequest.newBuilder(URI.create(vcr.baseUrl() + path)).GET().build(),
                HttpResponse.BodyHandlers.ofString());
    }

    @Test
    void replaysARecordedGetOnADynamicPort() throws Exception {
        try (VcrServer vcr = Vcr.playback(tape("single_get.md"))
                .label("replays a recorded GET")
                .port(0)
                .start()) {

            assertTrue(vcr.port() > 0, "expected an OS-assigned port");
            assertEquals(1, vcr.tapeLength());

            HttpResponse<String> resp = get(vcr, "/ok");

            assertEquals(200, resp.statusCode());
            assertEquals("ok-body", resp.body());
            assertEquals(Outcome.OK, vcr.lastKind());
            assertEquals("", vcr.lastError());
        }
    }

    @Test
    void flagsAPathMismatchViaDiagnostics() throws Exception {
        try (VcrServer vcr = Vcr.playback(tape("single_get.md")).port(0).start()) {
            get(vcr, "/nope");

            assertNotEquals(Outcome.OK, vcr.lastKind());
            assertFalse(vcr.lastError().isEmpty(), "expected a mismatch diagnostic");
        }
    }
}
