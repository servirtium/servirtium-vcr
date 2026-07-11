package com.example;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

import com.paulhammant.servirtium.vcr.Outcome;
import com.paulhammant.servirtium.vcr.Vcr;
import com.paulhammant.servirtium.vcr.VcrServer;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.file.Path;
import java.nio.file.Paths;
import org.junit.jupiter.api.Test;

/**
 * Third-party consumer test: exercises the INSTALLED servirtium-vcr jar (from
 * ~/.m2, resolved as a normal Maven dependency), replaying the canonical tape.
 * The engine .so is discovered zero-config from the jar's own /native/&lt;rid&gt;/
 * resource — no SERVIRTIUM_VCR_LIB, no source tree. This is the idiomatic Java
 * consumer experience (a jar bundles the native lib as a resource; there is no
 * loose .so file to pass to nativeLib(), so discovery is the mode here).
 */
class PlaybackConsumerTest {

    @Test
    void replaysCanonicalTapeFromInstalledJar() throws Exception {
        // Prove we're running the INSTALLED jar, not the source tree's classes.
        String codeLocation =
                Vcr.class.getProtectionDomain().getCodeSource().getLocation().toString();
        assertTrue(
                codeLocation.endsWith(".jar"),
                "expected servirtium-vcr to load from an installed jar, got " + codeLocation);

        Path tape = Paths.get(
                PlaybackConsumerTest.class.getResource("/tapes/single_get.md").toURI());

        try (VcrServer vcr = Vcr.playback(tape.toString()).port(0).start()) {
            HttpResponse<String> resp = HttpClient.newHttpClient().send(
                    HttpRequest.newBuilder(URI.create(vcr.baseUrl() + "/ok")).GET().build(),
                    HttpResponse.BodyHandlers.ofString());

            assertEquals(200, resp.statusCode());
            assertEquals("ok-body", resp.body());
            assertEquals(Outcome.OK, vcr.lastKind());
        }
    }
}
