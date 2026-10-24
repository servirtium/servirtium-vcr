package com.paulhammant.servirtium.vcr.scala
import com.paulhammant.servirtium.vcr.Vcr
import java.nio.file.Files
import java.util.Locale
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.Assertions.*
class SecretCallbacksTest:
  @Test def namedSecretsRoundTrip(): Unit =
    val dir = Files.createTempDirectory("vcr-secrets-scala-")
    val tape = dir.resolve("tape.md").toString
    def run(args: String*): String =
      val process = new ProcessBuilder((Seq("../target/test-tools/secret_fixture") ++ args)*).redirectErrorStream(true).start()
      val output = new String(process.getInputStream.readAllBytes())
      assertEquals(0, process.waitFor(), output)
      output.trim
    try
      var count = 0
      val rec = Vcr.record(tape, run("start", dir.toString)).secretRedactor((key, request) =>
        if key == "password" then
          count += 1
          request.path().split("/")(1).toUpperCase(Locale.ROOT) + "_PASSWORD"
        else null
      ).start()
      try
        run("drive", rec.baseUrl()); assertEquals(0, count)
      finally rec.close()
      assertEquals(20, count); run("check", tape)
      val replay = Vcr.playback(tape).secretResolver(token => "pw-" + token.stripSuffix("_PASSWORD").toLowerCase(Locale.ROOT) + "&secret").start()
      try
        run("drive", replay.baseUrl()); replay.assertNoMismatches()
      finally replay.close()
      run("check", tape)
    finally
      val files = Files.list(dir)
      try files.forEach(file => Files.delete(file)) finally files.close()
      Files.delete(dir)
