package com.example;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import static org.junit.jupiter.api.Assertions.assertEquals;

import com.paulhammant.servirtium.vcr.Field;
import com.paulhammant.servirtium.vcr.Outcome;
import com.paulhammant.servirtium.vcr.Vcr;
import com.paulhammant.servirtium.vcr.VcrServer;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.file.Files;
import java.nio.file.Path;
import org.junit.jupiter.api.Test;

/**
 * Third-party consumer test for the INSTALLED servirtium-vcr jar's <em>recorder</em>:
 * proves it emits a tape byte-for-byte identical to the canonical golden (and that
 * the recorder and player round-trip) — not just that playback works.
 *
 * <p>We record against a tiny raw-socket HTTP upstream (a stand-in for a live
 * service), strip the volatile request headers the client injects and the
 * volatile response headers the upstream adds, and compare the freshly recorded
 * tape against {@code /tapes/single_get.md}. A raw socket — rather than a second
 * VCR playback server — is used deliberately: it keeps the recorder the only VCR
 * server alive, matching the pattern used by the Python and Rust consumer
 * examples (some bindings serialize VCR servers process-wide).
 */
class RecordConsumerTest {

    // Volatile request headers a client injects, and response headers a live
    // upstream adds; both stripped so the recording matches the canonical golden
    // (empty request headers; response headers = just Content-Type). Removing a
    // header that was not present is a no-op.
    private static final String[] REQ_STRIP = {
        "Host", "User-Agent", "Accept", "Accept-Encoding",
        "Accept-Language", "Connection", "Content-Length", "Content-Type"
    };
    private static final String[] RESP_STRIP = {
        "Content-Length", "Connection", "Date", "Server", "Transfer-Encoding"
    };

    @Test
    void recorderEmitsByteIdenticalCanonicalTape() throws Exception {
        byte[] golden;
        try (var in = RecordConsumerTest.class.getResourceAsStream("/tapes/single_get.md")) {
            golden = in.readAllBytes();
        }

        Path out = Files.createTempFile("servirtium-consumer-record-", ".md");
        Files.delete(out); // let the recorder create it

        try (ServerSocket upstream = rawUpstream()) {
            String upstreamBase = "http://127.0.0.1:" + upstream.getLocalPort();

            var rec = Vcr.record(out.toString(), upstreamBase);
            for (String h : REQ_STRIP) {
                rec = rec.removeHeader(Field.REQUEST_HEADERS, h);
            }
            for (String h : RESP_STRIP) {
                rec = rec.removeHeader(Field.RESPONSE_HEADERS, h);
            }
            try (VcrServer vcr = rec.port(0).start()) {
                HttpResponse<String> resp = HttpClient.newBuilder()
                        .version(HttpClient.Version.HTTP_1_1)
                        .build()
                        .send(
                                HttpRequest.newBuilder(URI.create(vcr.baseUrl() + "/ok")).GET().build(),
                                HttpResponse.BodyHandlers.ofString());
                assertEquals("ok-body", resp.body(), "upstream round-trip body");
            } // close() flushes the recorded tape
        }

        byte[] recorded = Files.readAllBytes(out);
        assertArrayEquals(
                golden,
                recorded,
                () -> "recorded tape is NOT byte-identical to the canonical golden:\n  golden  : "
                        + new String(golden) + "\n  recorded: " + new String(recorded));

        // Round-trip: with the record server already closed, the just-recorded
        // tape must replay through the same installed jar.
        try (VcrServer v2 = Vcr.playback(out.toString()).port(0).start()) {
            HttpResponse<String> resp = HttpClient.newBuilder()
                    .version(HttpClient.Version.HTTP_1_1)
                    .build()
                    .send(
                            HttpRequest.newBuilder(URI.create(v2.baseUrl() + "/ok")).GET().build(),
                            HttpResponse.BodyHandlers.ofString());
            assertEquals("ok-body", resp.body(), "round-trip replay body");
            assertEquals(Outcome.OK, v2.lastKind(), "round-trip replay outcome");
        }

        Files.deleteIfExists(out);
    }

    /** A tiny raw HTTP upstream answering any request with {@code 200 text/plain / ok-body}. */
    private static ServerSocket rawUpstream() throws IOException {
        ServerSocket server = new ServerSocket();
        server.setReuseAddress(true);
        server.bind(new InetSocketAddress("127.0.0.1", 0));
        Thread t = new Thread(() -> {
            while (!server.isClosed()) {
                try (Socket s = server.accept()) {
                    s.getInputStream().read(new byte[4096]);
                    byte[] body = "ok-body".getBytes();
                    OutputStream os = s.getOutputStream();
                    os.write(("HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\nContent-Length: "
                                    + body.length + "\r\nConnection: close\r\n\r\n")
                            .getBytes());
                    os.write(body);
                    os.flush();
                } catch (IOException e) {
                    return; // server closed
                }
            }
        });
        t.setDaemon(true);
        t.start();
        return server;
    }
}
