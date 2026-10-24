using System;
using System.IO;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using Servirtium.Vcr;
using Xunit;
namespace Servirtium.Vcr.Tests;
public class ReplayDiagnosticsTests {
    private static string Source([CallerFilePath] string file = "") => file;
    [Fact] public void RetainedEventsDistinguishObserverAndConsumingReads() {
        string root = Path.GetFullPath(Path.Combine(Path.GetDirectoryName(Source())!, "../.."));
        using var server = Vcr.Playback(Path.Combine(root, "core_tests/diagnostics/playback.md")).Start();
        server.TestContext("Dotnet scenario", "scenario.test", 123);
        var info = new ProcessStartInfo(Path.Combine(root, "target/test-tools/diagnostic_fixture"));
        info.ArgumentList.Add(server.BaseUrl);
        using var driver = Process.Start(info)!;
        driver.WaitForExit();
        Assert.Equal(0, driver.ExitCode);
        Assert.Contains("owner", server.ReadLastError(false));
        Assert.Contains("scenario.test:123", server.ReadLastError(false));
        Assert.DoesNotContain("\"retrieved\":1", server.DiagnosticsJson());
        Assert.Contains("owner", server.LastError);
        Assert.Contains("\"retrieved\":0", server.DiagnosticsJson());
        Assert.Contains("\"retrieved\":1", server.DiagnosticsJson());
        var error = Assert.Throws<VcrException>(() => server.AssertNoMismatches());
        Assert.Contains("admin", error.Message);
        Assert.Contains("owner", error.Message);
        server.TestContext("next test");
        server.AssertNoMismatches();
        Assert.Equal("[]", server.DiagnosticsJson());
    }
}
