using System;
using System.IO;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using Servirtium.Vcr;
using Xunit;
namespace Servirtium.Vcr.Tests;

/// <summary>
/// RecordBuilder.RewriteUpstreamBase: the shared origin_fixture contract
/// (docs/vcr-address.md). Found in the field: a TFS SOAP client got TFS's own
/// absolute URLs from its location service while recording and went around
/// the recorder.
/// </summary>
public class RewriteUpstreamBaseTests
{
    [Fact] public void KeepsTheClientOnTheVcrAndReplaysOnAnotherPort()
    {
        var directory = Path.Combine(Path.GetTempPath(), "vcr-origin-" + Guid.NewGuid());
        Directory.CreateDirectory(directory);
        string Run(params string[] args) => TestTools.Run("origin_fixture", args);
        try {
            var tape = Path.Combine(directory, "tape.md");
            var upstream = Run("start", directory);
            using (var rec = Vcr.Record(tape, upstream).RewriteUpstreamBase().Start()) {
                Run("drive", directory, rec.BaseUrl);
                Assert.Equal(VcrOutcome.Ok, rec.LastKind);
                rec.Commit();
                rec.Commit();
            }
            Run("check", directory);
            using (var vcr = Vcr.Playback(tape).Port(0).Start()) {
                Run("replay", directory, vcr.BaseUrl);
                Assert.Equal(VcrOutcome.Ok, vcr.LastKind);
                vcr.AssertAllConsumed();
            }
        } finally { Directory.Delete(directory, true); }
    }
}
