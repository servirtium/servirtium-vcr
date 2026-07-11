using System;
using System.IO;
using System.Net.Http;
using Servirtium.Vcr;
using Xunit;

namespace ConsumerExample;

/// <summary>
/// Third-party consumer test: exercises the INSTALLED Servirtium.Vcr NuGet
/// package (restored from a local feed as a normal PackageReference), replaying
/// the canonical tape. The engine .so is discovered zero-config from the
/// package's own runtimes/linux-x64/native/ asset — no SERVIRTIUM_VCR_LIB, no
/// source tree.
/// </summary>
public class PlaybackConsumerTest
{
    [Fact]
    public void ReplaysCanonicalTapeFromInstalledNuGetPackage()
    {
        // Prove the package's native asset deployed alongside the app (the
        // NuGet runtimes/<rid>/native payload), i.e. it came from the package.
        string nativeUnderApp = Path.Combine(
            AppContext.BaseDirectory, "runtimes", "linux-x64", "native", "libservirtium_vcr.so");
        string nativeNextToApp = Path.Combine(AppContext.BaseDirectory, "libservirtium_vcr.so");
        Assert.True(
            File.Exists(nativeUnderApp) || File.Exists(nativeNextToApp),
            "expected the NuGet package's bundled engine .so to be deployed under " + AppContext.BaseDirectory);

        string tape = Path.Combine(AppContext.BaseDirectory, "tapes", "single_get.md");

        using var vcr = Vcr.Playback(tape).Port(0).Start();
        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };

        HttpResponseMessage resp = client.GetAsync("/ok").GetAwaiter().GetResult();
        string body = resp.Content.ReadAsStringAsync().GetAwaiter().GetResult();

        Assert.Equal(200, (int)resp.StatusCode);
        Assert.Equal("ok-body", body);
        Assert.Equal(VcrOutcome.Ok, vcr.LastKind);
    }
}
