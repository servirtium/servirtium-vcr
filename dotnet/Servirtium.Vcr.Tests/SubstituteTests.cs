using System;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using Servirtium.Vcr;
using Xunit;

namespace Servirtium.Vcr.Tests;

/// <summary>
/// Response-side substitution (the paging unblocker): on playback the VCR fills
/// {{request.host}}/{{request.scheme}}/{{baseUrl}} from the live request and any
/// caller Substitute() placeholders in the recorded RESPONSE body + headers, so
/// a taped nextLink/absolute URL points back at the test's own host.
/// </summary>
public class SubstituteTests
{
    private static string TapePath(string name) =>
        Path.Combine(AppContext.BaseDirectory, "tapes", name);

    [Fact]
    public async Task Fills_baseUrl_and_caller_placeholder_in_response_body_and_headers()
    {
        using var vcr = Vcr.Playback(TapePath("substitute.md"))
            .Port(0)
            .Substitute(VcrField.ResponseBody, "{{vault}}", "https://vault.example")
            .Start();

        string baseUrl = vcr.BaseUrl.TrimEnd('/');   // http://127.0.0.1:<port>

        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };
        HttpResponseMessage response = await client.GetAsync("/page1");
        string body = await response.Content.ReadAsStringAsync();

        Assert.Equal(HttpStatusCode.OK, response.StatusCode);
        // {{baseUrl}} -> the live base url, in the body
        Assert.Contains($"\"next\":\"{baseUrl}/page2\"", body);
        // caller {{vault}} substitution
        Assert.Contains("\"vault\":\"https://vault.example/secret\"", body);
        // nothing left unfilled
        Assert.DoesNotContain("{{", body);
        // {{baseUrl}} in the Link RESPONSE HEADER too
        Assert.True(response.Headers.TryGetValues("Link", out var link));
        Assert.Contains($"{baseUrl}/page2", string.Join(",", link));
    }

    [Fact]
    public void Rejects_a_non_response_field()
    {
        VcrException ex = Assert.Throws<VcrException>(() =>
            Vcr.Playback(TapePath("substitute.md")).Port(0)
               .Substitute(VcrField.Path, "{{x}}", "y")
               .Start());
        Assert.Contains("substitute", ex.Message, StringComparison.OrdinalIgnoreCase);
    }
}
