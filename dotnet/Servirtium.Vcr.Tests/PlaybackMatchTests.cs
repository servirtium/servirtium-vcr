using System;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using Servirtium.Vcr;
using Xunit;

namespace Servirtium.Vcr.Tests;

/// <summary>
/// Playback-side breadth: strict request-header matching (pass via
/// unredaction, fail on mismatch) and static-content bypass.
/// </summary>
public class PlaybackMatchTests
{
    private static string TapePath(string name) =>
        Path.Combine(AppContext.BaseDirectory, "tapes", name);

    [Fact]
    public async Task Unredaction_lets_a_scrubbed_tape_match_the_real_request()
    {
        // Tape expects "Authorization: Bearer REDACTED"; the live client sends
        // the real token. Unredact rewrites the expectation so it matches.
        using var vcr = Vcr.Playback(TapePath("secure_get.md"))
            .StrictHeaders()
            .Unredact(VcrField.RequestHeaders, "Bearer REDACTED", "Bearer real-token")
            .Port(0).Start();

        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };
        client.DefaultRequestHeaders.Add("Authorization", "Bearer real-token");

        var resp = await client.GetAsync("/secure");
        Assert.Equal(HttpStatusCode.OK, resp.StatusCode);
        Assert.Equal("secret-ok", await resp.Content.ReadAsStringAsync());
        Assert.Equal(VcrOutcome.Ok, vcr.LastKind);
    }

    [Fact]
    public async Task Strict_matching_flags_a_missing_request_header()
    {
        using var vcr = Vcr.Playback(TapePath("secure_get.md"))
            .StrictHeaders()
            .Unredact(VcrField.RequestHeaders, "Bearer REDACTED", "Bearer real-token")
            .Port(0).Start();

        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };
        // No Authorization header at all → mismatch.
        await client.GetAsync("/secure");

        Assert.NotEqual(VcrOutcome.Ok, vcr.LastKind);
        Assert.False(string.IsNullOrEmpty(vcr.LastError));
    }

    [Fact]
    public async Task Static_content_is_served_from_disk_not_the_tape()
    {
        string dir = Path.Combine(Path.GetTempPath(), $"vcr_static_{Guid.NewGuid():N}");
        Directory.CreateDirectory(dir);
        File.WriteAllText(Path.Combine(dir, "asset.txt"), "static-asset");
        try
        {
            using var vcr = Vcr.Playback(TapePath("single_get.md"))
                .StaticContent("/files", dir)
                .Port(0).Start();
            using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };

            // From disk:
            Assert.Equal("static-asset", await client.GetStringAsync("/files/asset.txt"));
            // From the tape (unaffected):
            Assert.Equal("ok-body", await client.GetStringAsync("/ok"));
        }
        finally
        {
            Directory.Delete(dir, recursive: true);
        }
    }
}
