using System;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using Servirtium.Vcr;
using Xunit;

namespace Servirtium.Vcr.Tests;

/// <summary>
/// End-to-end proof of the P/Invoke chain: managed fixture → native VCR
/// (aether_vcr_embed_*) → embedded Aether HTTP server. Replays a Servirtium
/// markdown tape and asserts the SUT-visible response and diagnostics.
/// </summary>
public class PlaybackTests
{
    private static string TapePath(string name) =>
        Path.Combine(AppContext.BaseDirectory, "tapes", name);

    [Fact]
    public async Task Replays_a_recorded_get_on_a_dynamic_port()
    {
        using var vcr = Vcr.Playback(TapePath("single_get.md"))
            .Label("replays a recorded GET")
            .Port(0)
            .Start();

        Assert.True(vcr.Port > 0, "expected an OS-assigned port");
        Assert.Equal(1, vcr.TapeLength);

        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };
        HttpResponseMessage response = await client.GetAsync("/ok");

        Assert.Equal(HttpStatusCode.OK, response.StatusCode);
        Assert.Equal("ok-body", await response.Content.ReadAsStringAsync());
        Assert.Equal(VcrOutcome.Ok, vcr.LastKind);
        Assert.Equal(string.Empty, vcr.LastError);
    }

    [Fact]
    public async Task Flags_a_path_mismatch_via_diagnostics()
    {
        using var vcr = Vcr.Playback(TapePath("single_get.md")).Port(0).Start();
        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };

        await client.GetAsync("/nope");

        Assert.NotEqual(VcrOutcome.Ok, vcr.LastKind);
        Assert.False(string.IsNullOrEmpty(vcr.LastError), "expected a mismatch diagnostic");
    }
}
