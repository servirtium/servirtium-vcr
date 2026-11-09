package dev.servirtium.vcr;

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
    void missingTapeSurfacesTheOpenErrorThroughTheHandle() {
        VcrException e = org.junit.jupiter.api.Assertions.assertThrows(VcrException.class,
                () -> Vcr.playback(tape("no_such_tape.md")).port(0).start());
        assertTrue(e.getMessage().contains("no_such_tape.md"), e.getMessage());
    }

    @Test
    void manyOpenStartCloseCyclesAndDoubleCloseAreHarmless() throws Exception {
        for (int i = 0; i < 50; i++) {
            VcrServer vcr = Vcr.playback(tape("single_get.md")).port(0).start();
            assertEquals(1, vcr.tapeLength());
            vcr.close();
            vcr.close(); // idempotent: destroy ran exactly once
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
    private static PlaybackBuilder rangePlayback(int from) {
        // The JDK client adds only Host/User-Agent-like defaults; the tape records Cookie.
        return Vcr.playback(tape("playback_range.md")).redactCredentials()
                .removeHeader(Field.REQUEST_HEADERS, "User-Agent")
                .playbackRange(from).port(0);
    }

    private static HttpResponse<String> getWithCookie(VcrServer vcr, String path) throws Exception {
        return HttpClient.newBuilder().version(HttpClient.Version.HTTP_1_1).build().send(
                HttpRequest.newBuilder(URI.create(vcr.baseUrl() + path)).header("Cookie", "sid=live").GET().build(),
                HttpResponse.BodyHandlers.ofString());
    }

    @Test
    void playbackRangeSkipsEarlyInteractionsAndServesALaterOne() throws Exception {
        try (VcrServer vcr = rangePlayback(7).start()) {
            assertEquals(8, vcr.tapeLength());
            assertEquals(200, getWithCookie(vcr, "/logout").statusCode());
            assertEquals(7, vcr.lastIndex());
            assertEquals(Outcome.OK, vcr.lastKind());
        }
        try (VcrServer vcr = rangePlayback(7).start()) {
            getWithCookie(vcr, "/login"); // interaction 0 is outside the range
            assertNotEquals(Outcome.OK, vcr.lastKind());
            assertTrue(vcr.lastError().contains("outside the playback range"), vcr.lastError());
        }
    }

    @Test
    void playbackRangeBadRangeFailsStart() {
        VcrException e = org.junit.jupiter.api.Assertions.assertThrows(VcrException.class,
                () -> Vcr.playback(tape("playback_range.md")).playbackRange(99).port(0).start());
        assertTrue(e.getMessage().contains("playbackRange"), e.getMessage());
    }

    @Test
    void playbackRangeIsRefusedOnARecordHandle() throws Throwable {
        Path tapeFile = java.nio.file.Files.createTempFile("vcr_range_", ".md");
        java.nio.file.Files.delete(tapeFile);
        try (VcrServer rec = Vcr.record(tapeFile.toString(), "http://127.0.0.1:1").port(0).start()) {
            var m = VcrServer.class.getDeclaredMethod("handle");
            m.setAccessible(true);
            java.lang.foreign.MemorySegment handle = (java.lang.foreign.MemorySegment) m.invoke(rec);
            java.lang.foreign.MemorySegment res = (java.lang.foreign.MemorySegment)
                    NativeMethods.SET_PLAYBACK_RANGE.invokeExact(handle, 0, -1);
            assertNotEquals("", NativeMethods.takeString(res));
            int from = (int) NativeMethods.GET_PLAYBACK_RANGE_FROM.invokeExact(handle);
            assertEquals(-1, from);
            rec.discard();
        }
    }
}
