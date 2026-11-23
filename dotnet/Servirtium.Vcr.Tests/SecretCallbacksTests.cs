using System;
using System.IO;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using Servirtium.Vcr;
using Xunit;
namespace Servirtium.Vcr.Tests;
public class SecretCallbacksTests
{
    [Fact] public void NamedSecretsRoundTripOnCallingThread()
    {
        var directory = Path.Combine(Path.GetTempPath(), "vcr-helpers-" + Guid.NewGuid());
        Directory.CreateDirectory(directory);
        string Run(params string[] args) => TestTools.Run("secret_fixture", args);
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
            }).Start()) { Run("drive", rec.BaseUrl); Assert.Equal(0, count); rec.Commit(); }
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
