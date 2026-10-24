package com.paulhammant.servirtium.vcr.groovy
import com.paulhammant.servirtium.vcr.Vcr
import java.nio.file.Files
import org.junit.jupiter.api.Test
import static org.junit.jupiter.api.Assertions.*
class SecretCallbacksTest {
    @Test void namedSecretsRoundTrip() {
        def dir = Files.createTempDirectory('vcr-secrets-groovy-')
        def tape = dir.resolve('tape.md').toString()
        def run = { String action, String arg ->
            def process = new ProcessBuilder('python3', '../core_tests/secret_fixture.py', action, arg).redirectErrorStream(true).start()
            def output = process.inputStream.text
            assertEquals(0, process.waitFor(), output); output.trim()
        }
        try {
            int count = 0
            def rec = Vcr.record(tape, run('start', dir.toString())).secretRedactor { key, request ->
                if (key == 'password') { count++; return request.path().split('/')[1].toUpperCase(Locale.ROOT) + '_PASSWORD' }
                null
            }.start()
            try { run('drive', rec.baseUrl()); assertEquals(0, count) } finally { rec.close() }
            assertEquals(20, count); run('check', tape)
            def replay = Vcr.playback(tape).secretResolver { token -> 'pw-' + token.replace('_PASSWORD', '').toLowerCase(Locale.ROOT) + '&secret' }.start()
            try { run('drive', replay.baseUrl()); replay.assertNoMismatches() } finally { replay.close() }
            run('check', tape)
        } finally { Files.list(dir).withCloseable { it.forEach { Files.delete(it) } }; Files.delete(dir) }
    }
}
