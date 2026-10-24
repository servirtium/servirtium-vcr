using System;
using System.IO;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using Servirtium.Vcr;
using Xunit;
namespace Servirtium.Vcr.Tests;
public class SecretCallbacksTests
{
    private static string Source([CallerFilePath] string path = "") => path;
    [Fact] public void NamedSecretsRoundTripOnCallingThread()
    {
        var directory = Path.Combine(Path.GetTempPath(), "vcr-helpers-" + Guid.NewGuid());
        Directory.CreateDirectory(directory);
        var fixture = Path.GetFullPath(Path.Combine(Path.GetDirectoryName(Source())!, "../../target/test-tools/secret_fixture"));
        string Run(params string[] args)
        {
            var info = new ProcessStartInfo(fixture) { RedirectStandardOutput = true };
            foreach (var arg in args) info.ArgumentList.Add(arg);
            using var process = Process.Start(info)!;
            var output = process.StandardOutput.ReadToEnd();
            process.WaitForExit();
            Assert.Equal(0, process.ExitCode);
            return output.Trim();
        }
        try {
            var upstream = Run("start", directory);
            var tape = Path.Combine(directory, "tape.md");
            var thread = Environment.CurrentManagedThreadId;
            var count = 0;
            using (var rec = Vcr.Record(tape, upstream).SecretRedactor((key, request) => {
                Assert.Equal(thread, Environment.CurrentManagedThreadId);
                if (key != "password") return null;
                count++; Assert.NotEmpty(request.FieldPath);
                return request.Path.Split('/')[1].ToUpperInvariant() + "_PASSWORD";
            }).Start()) { Run("drive", rec.BaseUrl); Assert.Equal(0, count); }
            Assert.Equal(20, count); Run("check", tape);
            Assert.Throws<VcrException>(() => Vcr.Playback(tape).Start());
            using (var replay = Vcr.Playback(tape).SecretResolver(token => {
                Assert.Equal(thread, Environment.CurrentManagedThreadId);
                return "pw-" + token.Replace("_PASSWORD", "").ToLowerInvariant() + "&secret";
            }).Start()) { Run("drive", replay.BaseUrl); replay.AssertNoMismatches(); }
            Run("check", tape);
        } finally { Directory.Delete(directory, true); }
    }
}
