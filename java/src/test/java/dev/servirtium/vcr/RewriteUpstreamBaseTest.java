package dev.servirtium.vcr;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/** rewriteUpstreamBase: the shared origin_fixture contract (docs/vcr-address.md). */
class RewriteUpstreamBaseTest {
    private String run(String... args) throws Exception {
        var cmd = new ArrayList<>(List.of("../target/test-tools/origin_fixture"));
        cmd.addAll(List.of(args));
        var process = new ProcessBuilder(cmd).redirectErrorStream(true).start();
        var output = new String(process.getInputStream().readAllBytes());
        assertEquals(0, process.waitFor(), output);
        return output.trim();
    }
    @Test void keepsTheClientOnTheVcrAndReplaysOnAnotherPort() throws Exception {
        var directory = Files.createTempDirectory("vcr-origin-");
        try {
            var upstream = run("start", directory.toString());
            try (var rec = Vcr.record(directory.resolve("tape.md").toString(), upstream).rewriteUpstreamBase().start()) {
                run("drive", directory.toString(), rec.baseUrl());
                assertEquals(Outcome.OK, rec.lastKind());
                rec.commit();
            }
            run("check", directory.toString());
            try (var vcr = Vcr.playback(directory.resolve("tape.md").toString()).start()) {
                run("replay", directory.toString(), vcr.baseUrl());
                assertEquals(Outcome.OK, vcr.lastKind());
                vcr.assertAllConsumed();
            }
        } finally {
            try (var files = Files.list(directory)) { for (var file : files.toList()) Files.delete(file); }
            Files.delete(directory);
        }
    }
}
