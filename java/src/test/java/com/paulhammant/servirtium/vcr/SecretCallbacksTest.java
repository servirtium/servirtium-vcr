package com.paulhammant.servirtium.vcr;
import java.nio.file.*;
import java.util.*;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
class SecretCallbacksTest {
    String run(String... args) throws Exception {
        var command = new ArrayList<>(List.of("../target/test-tools/secret_fixture"));
        command.addAll(List.of(args));
        var process = new ProcessBuilder(command).redirectErrorStream(true).start();
        var output = new String(process.getInputStream().readAllBytes());
        assertEquals(0, process.waitFor(), output); return output.trim();
    }
    @Test void namedSecretsRoundTripOnCallingThread() throws Exception {
        var dir = Files.createTempDirectory("vcr-secrets-");
        var tape = dir.resolve("tape.md").toString();
        var thread = Thread.currentThread();
        var count = new int[]{0};
        try {
            var upstream = run("start", dir.toString());
            try (var server = Vcr.record(tape, upstream).secretRedactor((key, request) -> {
                assertSame(thread, Thread.currentThread());
                if (!key.equals("password")) return null;
                count[0]++;
                assertFalse(request.fieldPath().isEmpty());
                return request.path().split("/")[1].toUpperCase(Locale.ROOT) + "_PASSWORD";
            }).start()) {
                run("drive", server.baseUrl()); assertEquals(0, count[0]);
            }
            assertEquals(20, count[0]); run("check", tape);
            assertThrows(VcrException.class, () -> Vcr.playback(tape).start());
            try (var server = Vcr.playback(tape).secretResolver(token -> {
                assertSame(thread, Thread.currentThread());
                return "pw-" + token.replace("_PASSWORD", "").toLowerCase(Locale.ROOT) + "&secret";
            }).start()) { run("drive", server.baseUrl()); server.assertNoMismatches(); }
            run("check", tape);
        } finally { try (var files = Files.list(dir)) { for (var file : files.toList()) Files.delete(file); } Files.delete(dir); }
    }
}
