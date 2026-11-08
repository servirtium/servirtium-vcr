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
    private static async Task<HttpResponseMessage> GetWithCookie(VcrServer vcr, string path)
    {
        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };
        using var request = new HttpRequestMessage(HttpMethod.Get, path);
        request.Headers.TryAddWithoutValidation("Cookie", "sid=live");
        return await client.SendAsync(request);
    }

    private static PlaybackBuilder RangePlayback(int from) =>
        Vcr.Playback(TapePath("playback_range.md")).RedactCredentials().PlaybackRange(from).Port(0);

    [Fact]
    public async Task PlaybackRange_skips_early_interactions_and_serves_a_later_one()
    {
        using (var vcr = RangePlayback(7).Start())
        {
            Assert.Equal(8, vcr.TapeLength);
            Assert.Equal(HttpStatusCode.OK, (await GetWithCookie(vcr, "/logout")).StatusCode);
            Assert.Equal(7, vcr.LastIndex);
            Assert.Equal(VcrOutcome.Ok, vcr.LastKind);
        }
        using (var vcr = RangePlayback(7).Start())
        {
            await GetWithCookie(vcr, "/login"); // interaction 0 is outside the range
            Assert.NotEqual(VcrOutcome.Ok, vcr.LastKind);
            Assert.Contains("outside the playback range", vcr.LastError);
        }
    }

    [Fact]
    public void PlaybackRange_with_a_bad_range_fails_start()
    {
        var ex = Assert.Throws<VcrException>(() =>
            Vcr.Playback(TapePath("playback_range.md")).PlaybackRange(99).Port(0).Start());
        Assert.Contains("PlaybackRange", ex.Message);
    }

    [Fact]
    public void PlaybackRange_is_refused_on_a_record_handle()
    {
        string tape = Path.Combine(Path.GetTempPath(), $"vcr_range_{Guid.NewGuid():N}.md");
        using var rec = Vcr.Record(tape, "http://127.0.0.1:1").Port(0).Start();
        var asm = typeof(Vcr).Assembly;
        var native = asm.GetType("Servirtium.Vcr.NativeMethods")!;
        var handle = (IntPtr)typeof(VcrServer).GetProperty("Handle",
            System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance)!.GetValue(rec)!;
        const System.Reflection.BindingFlags any = System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Static;
        var res = (IntPtr)native.GetMethod("SetPlaybackRange", any)!.Invoke(null, new object[] { handle, 0, -1 })!;
        string err = (string)native.GetMethod("TakeString", any)!.Invoke(null, new object?[] { res })!;
        Assert.NotEqual(string.Empty, err);
        Assert.Equal(-1, (int)native.GetMethod("GetPlaybackRangeFrom", any)!.Invoke(null, new object[] { handle })!);
        rec.Discard();
    }
}
