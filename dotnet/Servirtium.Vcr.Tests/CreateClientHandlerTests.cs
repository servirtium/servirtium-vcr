using System;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using Servirtium.Vcr;
using Xunit;

namespace Servirtium.Vcr.Tests;

/// <summary>
/// Field report #8: CreateClientHandler(aliasHost) is the safety-critical
/// client wiring shipped so a consumer doesn't hand-roll it. A client built on
/// it reaches the VCR via the alias host, and is REFUSED when it tries to reach
/// any other host (so a leaked real hostname can't escape to the internet).
/// </summary>
public class CreateClientHandlerTests : IDisposable
{
    private readonly string _tape;

    public CreateClientHandlerTests()
    {
        _tape = Path.Combine(Path.GetTempPath(), $"svcr-cch-{Guid.NewGuid():N}.md");
        File.WriteAllText(_tape,
            "## Interaction 0: GET /ok\n\n" +
            "### Request headers recorded for playback:\n\n```\n```\n" +
            "### Request method and path recorded for playback:\n\n```\nGET /ok\n```\n" +
            "### Request body recorded for playback ():\n\n```\n```\n" +
            "### Response headers recorded for playback:\n\n```\nContent-Type: text/plain\n```\n" +
            "### Response body recorded for playback (200: text/plain):\n\n```\nok-body\n```\n");
    }

    [Fact]
    public async Task Routes_the_alias_host_to_the_vcr()
    {
        using var vcr = Vcr.Playback(_tape).Port(0).Start();
        using var handler = vcr.CreateClientHandler("workpro.local");
        using var client = new HttpClient(handler) { BaseAddress = new Uri("http://workpro.local") };

        string body = await client.GetStringAsync("/ok");
        Assert.Equal("ok-body", body);
    }

    [Fact]
    public async Task Refuses_any_other_host()
    {
        using var vcr = Vcr.Playback(_tape).Port(0).Start();
        using var handler = vcr.CreateClientHandler("workpro.local");
        using var client = new HttpClient(handler) { BaseAddress = new Uri("http://evil.example") };

        // The ConnectCallback throws a VcrException, surfaced through HttpClient
        // as an HttpRequestException whose inner exception is ours.
        HttpRequestException ex = await Assert.ThrowsAsync<HttpRequestException>(
            () => client.GetStringAsync("/ok"));
        Assert.True(
            ex.Message.Contains("workpro.local", StringComparison.OrdinalIgnoreCase) ||
            (ex.InnerException is VcrException inner &&
             inner.Message.Contains("refusing", StringComparison.OrdinalIgnoreCase)),
            $"expected a refusal naming the alias; got: {ex} / {ex.InnerException}");
    }

    public void Dispose()
    {
        try { File.Delete(_tape); } catch { /* best-effort */ }
    }
}
