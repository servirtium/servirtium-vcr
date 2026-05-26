package com.paulhammant.servirtium.vcr;

import com.sun.net.httpserver.HttpServer;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

/**
 * Proves record mode end-to-end: the VCR forwards to a live upstream, returns
 * the real response to the SUT, captures the exchange, flushes a Servirtium
 * markdown tape on close, and the same tape then replays.
 *
 * <p>The upstream deliberately responds with Transfer-Encoding: chunked (no
 * Content-Length) to exercise the Aether client de-chunking fix (ae >= 0.183.0)
 * — the recorder must store the decoded payload, not the chunk framing.
 */
class RecordTest {

    private HttpServer upstream;
    private String upstreamBase;
    private Path tapePath;

    @BeforeEach
    void setUp() throws Exception {
        upstream = HttpServer.create(new InetSocketAddress("127.0.0.1", 0), 0);
        upstreamBase = "http://127.0.0.1:" + upstream.getAddress().getPort();
        upstream.createContext("/", ex -> {
            try (ex) {
                ex.getRequestBody().readAllBytes();
                byte[] payload = "hello-from-upstream".getBytes(StandardCharsets.UTF_8);
                ex.getResponseHeaders().set("Content-Type", "text/plain");
                // length 0 => chunked transfer-encoding.
                ex.sendResponseHeaders(200, 0);
                try (OutputStream os = ex.getResponseBody()) {
                    os.write(payload);
                }
            }
        });
        upstream.start();
        tapePath = Files.createTempFile("vcr_rec_", ".md");
        Files.delete(tapePath); // let the recorder create it
    }

    @AfterEach
    void tearDown() throws Exception {
        upstream.stop(0);
        Files.deleteIfExists(tapePath);
    }

    private static String getString(String url) throws Exception {
        HttpClient client = HttpClient.newHttpClient();
        return client.send(
                HttpRequest.newBuilder(URI.create(url)).GET().build(),
                HttpResponse.BodyHandlers.ofString()).body();
    }

    @Test
    void recordsThenReplaysTheSameInteraction() throws Exception {
        // ---- record ----
        try (VcrServer rec = Vcr.record(tapePath.toString(), upstreamBase).port(0).start()) {
            String body = getString(rec.baseUrl() + "/greeting");
            assertEquals("hello-from-upstream", body);
        } // close flushes the tape

        assertTrue(Files.exists(tapePath), "record-mode close should write the tape");

        // ---- replay (offline) ----
        try (VcrServer play = Vcr.playback(tapePath.toString()).port(0).start()) {
            String replayed = getString(play.baseUrl() + "/greeting");
            assertEquals("hello-from-upstream", replayed);
            assertEquals(Outcome.OK, play.lastKind());
        }
    }
}
