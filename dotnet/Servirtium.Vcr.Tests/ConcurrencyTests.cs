using System;
using System.IO;
using System.Net.Http;
using System.Threading.Tasks;
using Servirtium.Vcr;
using Xunit;

namespace Servirtium.Vcr.Tests;

// Repro for the .NET field report #2. Two SEPARATE test classes (xUnit runs
// distinct classes in parallel when parallelization is enabled), each with its
// own playback server, own tape, own unredaction, hit in a tight loop. The
// documented guarantee is per-handle isolation. If a global "current key" leaks
// between handles while BOTH classes build/serve at once, one class starts
// seeing the other's tape (the reported 599 / wrong-tape symptom).
//
// NB this only exercises the race when DisableTestParallelization = false.

internal static class ConcHelpers
{
    internal static string TapePath(string name) =>
        Path.Combine(AppContext.BaseDirectory, "tapes", name);

    internal static async Task Hammer(string tape, string path, string token, string expectBody)
    {
        using var vcr = Vcr.Playback(TapePath(tape))
            .Port(0)
            .MatchMultiple(true)
            .Unredact(VcrField.RequestHeaders, "{{tok}}", token)
            .Start();
        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };
        for (int i = 0; i < 200; i++)
        {
            var req = new HttpRequestMessage(HttpMethod.Get, path);
            req.Headers.TryAddWithoutValidation("Authorization", "Bearer " + token);
            HttpResponseMessage r = await client.SendAsync(req);
            string body = await r.Content.ReadAsStringAsync();
            Assert.Equal(expectBody, body);                       // must be THIS server's tape
            Assert.Equal(VcrOutcome.Ok, vcr.LastKind);
        }
    }
}

public class ConcurrencyAlphaTests
{
    [Fact]
    public Task Alpha_only_ever_serves_alpha() =>
        ConcHelpers.Hammer("conc_alpha.md", "/a", "AAA-secret", "ALPHA-BODY");
}

public class ConcurrencyBetaTests
{
    [Fact]
    public Task Beta_only_ever_serves_beta() =>
        ConcHelpers.Hammer("conc_beta.md", "/b", "BBB-secret", "BETA-BODY");
}
