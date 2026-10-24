package com.paulhammant.servirtium.vcr;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class RedactionHelpersTest {
    private String run(String... args) throws Exception {
        var cmd = new ArrayList<>(List.of("python3", "../core_tests/redaction_fixture.py"));
        cmd.addAll(List.of(args));
        var process = new ProcessBuilder(cmd).redirectErrorStream(true).start();
        var output = new String(process.getInputStream().readAllBytes());
        assertEquals(0, process.waitFor(), output);
        return output.trim();
    }
    @Test void forwardsCredentialsAndScrubsTape() throws Exception {
        var directory = Files.createTempDirectory("vcr-helpers-");
        try {
            var upstream = run("start", directory.toString());
            try (var rec = Vcr.record(directory.resolve("tape.md").toString(), upstream)
                    .redactHeader("Authorization").redactQueryParam("password").redactJsonField("secretKey").start()) {
                run("drive", directory.toString(), rec.baseUrl());
                assertEquals(Outcome.OK, rec.lastKind());
            }
            run("check", directory.toString());
        } finally {
            try (var files = Files.list(directory)) { for (var file : files.toList()) Files.delete(file); }
            Files.delete(directory);
        }
    }
}
