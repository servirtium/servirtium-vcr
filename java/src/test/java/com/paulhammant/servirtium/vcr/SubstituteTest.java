package com.paulhammant.servirtium.vcr;

import org.junit.jupiter.api.Test;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.nio.file.Path;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

class SubstituteTest {
    @Test
    void substitutesPlaceholderAndAssertsAllConsumed() throws Exception {
        String tape = Path.of("src", "test", "resources", "tapes", "substitute.md").toAbsolutePath().toString();
        try (VcrServer vcr = Vcr.playback(tape)
                .substitute(Field.RESPONSE_BODY, "@@HOST@@", "http://sub.example")
                .start()) {
            assertThrows(VcrException.class, vcr::assertAllConsumed);
            var resp = HttpClient.newHttpClient().send(
                    HttpRequest.newBuilder(URI.create(vcr.baseUrl() + "/where")).GET().build(),
                    java.net.http.HttpResponse.BodyHandlers.ofString());
            assertEquals("at http://sub.example/x", resp.body());
            vcr.assertAllConsumed();
        }
    }
}
