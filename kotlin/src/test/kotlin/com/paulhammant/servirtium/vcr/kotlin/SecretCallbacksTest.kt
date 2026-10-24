package com.paulhammant.servirtium.vcr.kotlin
import com.paulhammant.servirtium.vcr.Vcr
import java.nio.file.Files
import java.util.Locale
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.Assertions.*
class SecretCallbacksTest {
    @Test fun `named secrets round trip`() {
        val dir = Files.createTempDirectory("vcr-secrets-kotlin-")
        val tape = dir.resolve("tape.md").toString()
        fun run(vararg args: String): String {
            val process = ProcessBuilder(listOf("python3", "../core_tests/secret_fixture.py") + args).redirectErrorStream(true).start()
            val output = process.inputStream.bufferedReader().readText()
            assertEquals(0, process.waitFor(), output); return output.trim()
        }
        try {
            var count = 0
            val thread = Thread.currentThread()
            Vcr.record(tape, run("start", dir.toString())).secretRedactor { key, request ->
                assertSame(thread, Thread.currentThread())
                if (key == "password") { count++; request.path().split('/')[1].uppercase(Locale.ROOT) + "_PASSWORD" } else null
            }.start().use { run("drive", it.baseUrl()); assertEquals(0, count) }
            assertEquals(20, count); run("check", tape)
            Vcr.playback(tape).secretResolver { token -> "pw-" + token.removeSuffix("_PASSWORD").lowercase(Locale.ROOT) + "&secret" }.start().use {
                run("drive", it.baseUrl()); it.assertNoMismatches()
            }
            run("check", tape)
        } finally { Files.list(dir).use { it.forEach(Files::delete) }; Files.delete(dir) }
    }
}
