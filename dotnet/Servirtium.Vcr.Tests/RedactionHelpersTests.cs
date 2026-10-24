using System;
using System.IO;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using Servirtium.Vcr;
using Xunit;
namespace Servirtium.Vcr.Tests;
public class RedactionHelpersTests
{
    private static string Source([CallerFilePath] string path = "") => path;
    [Fact] public void ForwardsCredentialsAndScrubsTape()
    {
        var directory = Path.Combine(Path.GetTempPath(), "vcr-helpers-" + Guid.NewGuid());
        Directory.CreateDirectory(directory);
        var fixture = Path.GetFullPath(Path.Combine(Path.GetDirectoryName(Source())!, "../../target/test-tools/redaction_fixture"));
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
            using (var rec = Vcr.Record(Path.Combine(directory, "tape.md"), upstream)
                    .RedactHeader("Authorization").RedactQueryParam("password").RedactJsonField("secretKey").Start()) {
                Run("drive", directory, rec.BaseUrl);
                Assert.Equal(VcrOutcome.Ok, rec.LastKind);
            }
            Run("check", directory);
        } finally { Directory.Delete(directory, true); }
    }
}
