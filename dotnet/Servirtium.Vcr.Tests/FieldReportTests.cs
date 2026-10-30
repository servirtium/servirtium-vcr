using System;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using Servirtium.Vcr;
using Xunit;

namespace Servirtium.Vcr.Tests;

/// <summary>
/// The alpha.9 Windows/Key-Vault deployer's field report, turned into tests:
///  - one Substitute(Response, ...) rule covers body AND headers, counted once;
///  - an optional substitution a tape doesn't exercise isn't flagged unused;
///  - AssertNoUnfilledPlaceholders catches a marker served as literal text.
/// (The record-mode secret-scrub from the same report is covered at the core
/// level by core_tests/test_vcr_record_last_error.ae.)
/// </summary>
public class FieldReportTests : IDisposable
{
    private readonly string _dir;

    public FieldReportTests()
    {
        _dir = Path.Combine(Path.GetTempPath(), "svcr-fr-" + Guid.NewGuid().ToString("N"));
        Directory.CreateDirectory(_dir);
    }

    private string Tape(string name, string content)
    {
        string p = Path.Combine(_dir, name);
        File.WriteAllText(p, content);
        return p;
    }

    private static string Vault(string host) =>
        "## Interaction 0: GET /secret\n\n" +
        "### Request headers recorded for playback\n\n" +
        "```\n```\n" +
        "### Request method and path recorded for playback\n\n" +
        "```\nGET /secret\n```\n" +
        "### Request body recorded for playback ()\n\n" +
        "```\n```\n" +
        "### Response headers recorded for playback\n\n" +
        $"```\nLocation: {host}/next\n```\n" +
        "### Response body recorded for playback (200: application/json)\n\n" +
        $"```\n{{\"nextLink\":\"{host}/page2\"}}\n```\n";

    [Fact]
    public async Task One_Response_rule_fills_body_and_headers_and_counts_once()
    {
        // {{vault}} appears in BOTH the Location header and the JSON body.
        string tape = Tape("vault.md", Vault("{{vault}}"));

        using var vcr = Vcr.Playback(tape)
            .Port(0)
            .Substitute(VcrField.Response, "{{vault}}", "https://real-vault.example")
            .Start();

        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };
        HttpResponseMessage r = await client.GetAsync("/secret");

        Assert.Equal(HttpStatusCode.OK, r.StatusCode);
        Assert.Equal("https://real-vault.example/next", r.Headers.GetValues("Location").FirstOrDefault());
        Assert.Contains("https://real-vault.example/page2", await r.Content.ReadAsStringAsync());

        // The one rule fired (in either field) — AssertAllRedactionsUsed is happy.
        vcr.AssertAllRedactionsUsed();
        vcr.AssertNoUnfilledPlaceholders();
    }

    [Fact]
    public async Task Optional_substitution_an_unmatched_tape_does_not_use_is_not_reported()
    {
        // A failure tape with NO {{vault}} at all (like a 403/503 case).
        string tape = Tape("novault.md", Vault("https://fixed.example"));

        using var vcr = Vcr.Playback(tape)
            .Port(0)
            // Shared-fixture safeguard: optional, so an unused rule is fine.
            .SubstituteOptional(VcrField.Response, "{{vault}}", "https://real-vault.example")
            .Start();

        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };
        await client.GetAsync("/secret");

        vcr.AssertAllRedactionsUsed();          // optional rule not reported
        vcr.AssertNoUnfilledPlaceholders();     // nothing {{...}} was served
    }

    [Fact]
    public async Task AssertNoUnfilledPlaceholders_catches_a_typo_marker_served_as_text()
    {
        // The tape has {{valut}} (typo); the fixture registers {{vault}}, so the
        // typo is served to the client verbatim and the request still "passes".
        string tape = Tape("typo.md", Vault("{{valut}}"));

        using var vcr = Vcr.Playback(tape)
            .Port(0)
            .Substitute(VcrField.Response, "{{vault}}", "https://real-vault.example", required: false)
            .Start();

        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };
        HttpResponseMessage r = await client.GetAsync("/secret");
        Assert.Contains("{{valut}}", await r.Content.ReadAsStringAsync()); // leaked literal

        VcrException ex = Assert.Throws<VcrException>(() => vcr.AssertNoUnfilledPlaceholders());
        Assert.Contains("GET /secret", ex.Message);
        Assert.Contains("placeholder", ex.Message, StringComparison.OrdinalIgnoreCase);
    }

    public void Dispose()
    {
        try { Directory.Delete(_dir, recursive: true); } catch { /* best-effort */ }
    }
}
