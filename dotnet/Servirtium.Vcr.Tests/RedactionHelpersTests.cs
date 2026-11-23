using System;
using System.IO;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using Servirtium.Vcr;
using Xunit;
namespace Servirtium.Vcr.Tests;
public class RedactionHelpersTests
{
    [Fact] public void ForwardsCredentialsAndScrubsTape()
    {
        var directory = Path.Combine(Path.GetTempPath(), "vcr-helpers-" + Guid.NewGuid());
        Directory.CreateDirectory(directory);
        string Run(params string[] args) => TestTools.Run("redaction_fixture", args);
        try {
            var upstream = Run("start", directory);
            using (var rec = Vcr.Record(Path.Combine(directory, "tape.md"), upstream)
                    .RedactHeader("Authorization").RedactQueryParam("password").RedactJsonField("secretKey").Start()) {
                Run("drive", directory, rec.BaseUrl);
                Assert.Equal(VcrOutcome.Ok, rec.LastKind);
                rec.Commit();
            }
            Run("check", directory);
        } finally { Directory.Delete(directory, true); }
    }
}
