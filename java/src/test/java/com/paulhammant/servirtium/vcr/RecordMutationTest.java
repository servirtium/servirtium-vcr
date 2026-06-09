package com.paulhammant.servirtium.vcr;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.assertFalse;

/**
 * Record-mode breadth: redaction, header removal, notes, drift detection,
 * non-GET verbs, and (critically) that a fixture's per-handle mutation state does
 * not leak from one fixture to the next.
 */
class RecordMutationTest {

    private FakeUpstream upstream;
    private Path tape;
    private Path tape2;

    @BeforeEach
    void setUp() throws Exception {
        upstream = new FakeUpstream();
        tape = newTapePath();
        tape2 = newTapePath();
    }

    @AfterEach
    void tearDown() throws Exception {
        upstream.close();
        Files.deleteIfExists(tape);
        Files.deleteIfExists(tape2);
    }

    private static Path newTapePath() throws Exception {
        Path p = Files.createTempFile("vcr_", ".md");
        Files.delete(p);
        return p;
    }

    private static String read(Path p) throws Exception {
        return Files.readString(p);
    }

    private static String get(String url) throws Exception {
        return HttpClient.newHttpClient().send(
                HttpRequest.newBuilder(URI.create(url)).GET().build(),
                HttpResponse.BodyHandlers.ofString()).body();
    }

    private static HttpResponse<String> post(String url, String body) throws Exception {
        return HttpClient.newHttpClient().send(
                HttpRequest.newBuilder(URI.create(url))
                        .POST(HttpRequest.BodyPublishers.ofString(body, StandardCharsets.UTF_8))
                        .build(),
                HttpResponse.BodyHandlers.ofString());
    }

    @Test
    void redactsResponseBodyBeforeItLandsOnTheTape() throws Exception {
        upstream.responseBody = "value=secret-token";

        try (VcrServer rec = Vcr.record(tape.toString(), upstream.baseUrl())
                .redact(Field.RESPONSE_BODY, "secret-token", "REDACTED")
                .port(0).start()) {
            get(rec.baseUrl() + "/x");
        }

        String content = read(tape);
        assertTrue(content.contains("REDACTED"));
        assertFalse(content.contains("secret-token"));
    }

    @Test
    void attachesANoteToTheRecordedInteraction() throws Exception {
        try (VcrServer rec = Vcr.record(tape.toString(), upstream.baseUrl())
                .note("Why this exists", "documents the call")
                .port(0).start()) {
            get(rec.baseUrl() + "/x");
        }

        assertTrue(read(tape).contains("## [Note] Why this exists:"));
    }

    @Test
    void removesANamedResponseHeaderFromTheTape() throws Exception {
        upstream.extraResponseHeaders.put("X-Trace-Id", "abc123");

        // Phase 1: without removal, the header is captured on the tape.
        // (The JDK HttpServer canonicalizes the name to "X-Trace-Id"; match
        // case-insensitively to be agnostic about the wire casing.)
        try (VcrServer rec = Vcr.record(tape.toString(), upstream.baseUrl()).port(0).start()) {
            get(rec.baseUrl() + "/x");
        }
        assertTrue(read(tape).toLowerCase().contains("x-trace-id"));

        // Phase 2: with removal, it's gone (header-name match is case-insensitive).
        try (VcrServer rec = Vcr.record(tape2.toString(), upstream.baseUrl())
                .removeHeader(Field.RESPONSE_HEADERS, "X-Trace-Id")
                .port(0).start()) {
            get(rec.baseUrl() + "/x");
        }
        assertFalse(read(tape2).toLowerCase().contains("x-trace-id"));
    }

    @Test
    void mutationStateDoesNotLeakBetweenFixtures() throws Exception {
        // Fixture A registers a redaction for "leak".
        upstream.responseBody = "leak";
        try (VcrServer a = Vcr.record(tape.toString(), upstream.baseUrl())
                .redact(Field.RESPONSE_BODY, "leak", "SCRUBBED")
                .port(0).start()) {
            get(a.baseUrl() + "/x");
        }
        assertTrue(read(tape).contains("SCRUBBED"));

        // Fixture B registers NO redaction; A's must not leak in.
        try (VcrServer b = Vcr.record(tape2.toString(), upstream.baseUrl()).port(0).start()) {
            get(b.baseUrl() + "/x");
        }
        assertTrue(read(tape2).contains("leak"));
        assertFalse(read(tape2).contains("SCRUBBED"));
    }

    @Test
    void failIfChangedThrowsWhenAReRecordDrifts() throws Exception {
        // First record creates the tape — no drift, no throw.
        upstream.responseBody = "v1";
        try (VcrServer first = Vcr.record(tape.toString(), upstream.baseUrl())
                .failIfChanged().port(0).start()) {
            get(first.baseUrl() + "/x");
        }
        assertTrue(Files.exists(tape));

        // Re-record with a changed upstream — close must throw, while still
        // writing the new tape for `git diff`.
        upstream.responseBody = "v2-changed";
        VcrServer second = Vcr.record(tape.toString(), upstream.baseUrl())
                .failIfChanged().port(0).start();
        get(second.baseUrl() + "/x");
        assertThrows(VcrException.class, second::close);
        assertTrue(read(tape).contains("v2-changed"));
    }

    @Test
    void recordsAndReplaysAPostWithABody() throws Exception {
        upstream.responseBody = "created";

        try (VcrServer rec = Vcr.record(tape.toString(), upstream.baseUrl()).port(0).start()) {
            HttpResponse<String> resp = post(rec.baseUrl() + "/submit", "ping");
            assertEquals("created", resp.body());
            assertEquals("POST", upstream.lastMethod);
        }

        // Replay the same POST offline.
        try (VcrServer play = Vcr.playback(tape.toString()).port(0).start()) {
            HttpResponse<String> replayed = post(play.baseUrl() + "/submit", "ping");
            assertEquals("created", replayed.body());
            assertEquals(Outcome.OK, play.lastKind());
        }
    }
}
