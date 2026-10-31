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
/// The second alpha batch from the Windows/.NET SOAP consumer's field report:
///  #3  a no-match answers 599 AND an X-Servirtium-Mismatch header (visible in
///      a browser traffic log);
///  #4  a BOM/CRLF tape parses (covered at the core level too);
///  #5  record Commit()/Discard() two-phase — a discarded (failed) run writes
///      no tape; the crash-safe flush leaves no .tmp behind;
///  #6  IgnoreVolatileHeaders() drops the .NET tracing trio before matching;
///  #7  Placeholder() fills a marker in both directions;
///  #9  RequireLoopbackUpstream() refuses a non-loopback upstream;
///  #10 MatchXmlBody() matches an attribute-reordered SOAP envelope.
/// (#8 CreateClientHandler is exercised by CreateClientHandlerTests.)
/// </summary>
public class FieldReportBatch2Tests : IDisposable
{
    private readonly string _dir;

    public FieldReportBatch2Tests()
    {
        _dir = Path.Combine(Path.GetTempPath(), "svcr-fr2-" + Guid.NewGuid().ToString("N"));
        Directory.CreateDirectory(_dir);
    }

    private string Tape(string name, string content)
    {
        string p = Path.Combine(_dir, name);
        File.WriteAllText(p, content);
        return p;
    }

    private static string OkTape() =>
        "## Interaction 0: GET /ok\n\n" +
        "### Request headers recorded for playback:\n\n```\n```\n" +
        "### Request method and path recorded for playback:\n\n```\nGET /ok\n```\n" +
        "### Request body recorded for playback ():\n\n```\n```\n" +
        "### Response headers recorded for playback:\n\n```\nContent-Type: text/plain\n```\n" +
        "### Response body recorded for playback (200: text/plain):\n\n```\nok-body\n```\n";

    private static string SoapTape() =>
        "## Interaction 0: POST /soap\n\n" +
        "### Request headers recorded for playback:\n\n```\n```\n" +
        "### Request method and path recorded for playback:\n\n```\nPOST /soap\n```\n" +
        "### Request body recorded for playback ():\n\n```\n" +
        "<Env><Body><Submit id=\"7\" when=\"noon\"><Name>Complaint</Name></Submit></Body></Env>\n```\n" +
        "### Response headers recorded for playback:\n\n```\nContent-Type: text/plain\n```\n" +
        "### Response body recorded for playback (200: text/plain):\n\n```\nmatched\n```\n";

    // ---- #3: 599 + X-Servirtium-Mismatch header ----------------------------

    [Fact]
    public async Task Mismatch_answers_599_with_a_machine_readable_header()
    {
        string tape = Tape("ok.md", OkTape());
        using var vcr = Vcr.Playback(tape).Port(0).Start();
        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };

        // Wrong path -> no match.
        HttpResponseMessage r = await client.GetAsync("/nope");
        Assert.Equal(599, (int)r.StatusCode);
        Assert.True(r.Headers.TryGetValues("X-Servirtium-Mismatch", out var vals),
            "a mismatch response should carry X-Servirtium-Mismatch");
        Assert.Contains("kind=", vals!.First());
        // The reason is still in the body verbatim (never masked).
        Assert.Contains("mismatch", await r.Content.ReadAsStringAsync(), StringComparison.OrdinalIgnoreCase);
    }

    // ---- #4: BOM + CRLF tape tolerance -------------------------------------

    [Fact]
    public async Task Tape_with_bom_and_crlf_still_plays_back()
    {
        string lf = OkTape();
        string crlf = lf.Replace("\n", "\r\n");
        string path = Path.Combine(_dir, "bom.md");
        // UTF-8 BOM + CRLF body.
        File.WriteAllText(path, "﻿" + crlf, new System.Text.UTF8Encoding(encoderShouldEmitUTF8Identifier: false));
        // (prepend BOM bytes explicitly so the encoder setting can't drop them)
        byte[] bytes = File.ReadAllBytes(path);
        if (!(bytes.Length >= 3 && bytes[0] == 0xEF && bytes[1] == 0xBB && bytes[2] == 0xBF))
        {
            var withBom = new byte[bytes.Length + 3];
            withBom[0] = 0xEF; withBom[1] = 0xBB; withBom[2] = 0xBF;
            Array.Copy(bytes, 0, withBom, 3, bytes.Length);
            File.WriteAllBytes(path, withBom);
        }

        using var vcr = Vcr.Playback(path).Port(0).Start();
        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };
        string body = await client.GetStringAsync("/ok");
        Assert.Equal("ok-body", body);
    }

    // ---- #10: XML-semantic body matching -----------------------------------

    [Fact]
    public async Task MatchXmlBody_accepts_attribute_reordered_soap()
    {
        string tape = Tape("soap.md", SoapTape());
        using var vcr = Vcr.Playback(tape).Port(0).MatchXmlBody().Start();
        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };

        // Same envelope, attributes reordered + whitespace added -> byte-different.
        var content = new StringContent(
            "<Env>\n  <Body>\n    <Submit when=\"noon\" id=\"7\"><Name>Complaint</Name></Submit>\n  </Body>\n</Env>",
            System.Text.Encoding.UTF8, "application/xml");
        HttpResponseMessage r = await client.PostAsync("/soap", content);
        Assert.Equal(HttpStatusCode.OK, r.StatusCode);
        Assert.Equal("matched", await r.Content.ReadAsStringAsync());
    }

    // ---- #6: IgnoreVolatileHeaders -----------------------------------------

    [Fact]
    public async Task IgnoreVolatileHeaders_drops_tracing_headers_before_matching()
    {
        // Strict header matching on an empty recorded header block would reject
        // a live traceparent; IgnoreVolatileHeaders removes it from both sides.
        string tape =
            "## Interaction 0: GET /ok\n\n" +
            "### Request headers recorded for playback:\n\n```\n```\n" +
            "### Request method and path recorded for playback:\n\n```\nGET /ok\n```\n" +
            "### Request body recorded for playback ():\n\n```\n```\n" +
            "### Response headers recorded for playback:\n\n```\nContent-Type: text/plain\n```\n" +
            "### Response body recorded for playback (200: text/plain):\n\n```\nok-body\n```\n";
        string path = Tape("vol.md", tape);

        using var vcr = Vcr.Playback(path).Port(0).StrictHeaders().IgnoreVolatileHeaders().Start();
        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };
        var req = new HttpRequestMessage(HttpMethod.Get, "/ok");
        req.Headers.TryAddWithoutValidation("traceparent", "00-abc-def-01");
        req.Headers.TryAddWithoutValidation("Request-Id", "|abc.1");
        HttpResponseMessage r = await client.SendAsync(req);
        Assert.Equal(HttpStatusCode.OK, r.StatusCode);
    }

    // ---- #5: Discard writes no tape; Commit writes it; no .tmp left over ----

    [Fact]
    public async Task Discard_writes_no_tape()
    {
        using var upstream = new FakeUpstream { ResponseBody = "x" };
        string tapePath = Path.Combine(_dir, "discarded.md");

        using (var rec = Vcr.Record(tapePath, upstream.BaseUrl).Port(0).Start())
        using (var client = new HttpClient { BaseAddress = new Uri(rec.BaseUrl) })
        {
            await client.GetStringAsync("/thing");
            rec.Discard();                 // test "failed" -> drop it
        }

        Assert.False(File.Exists(tapePath), "a discarded recording must not write a tape");
        Assert.False(File.Exists(tapePath + ".tmp"), "no temp file should be left behind");
    }

    [Fact]
    public async Task Commit_writes_the_tape_and_leaves_no_temp_file()
    {
        using var upstream = new FakeUpstream { ResponseBody = "x" };
        string tapePath = Path.Combine(_dir, "committed.md");

        using (var rec = Vcr.Record(tapePath, upstream.BaseUrl).Port(0).Start())
        using (var client = new HttpClient { BaseAddress = new Uri(rec.BaseUrl) })
        {
            await client.GetStringAsync("/thing");
            rec.Commit();                  // success -> write it now
        }

        Assert.True(File.Exists(tapePath), "an explicit Commit() must write the tape");
        Assert.False(File.Exists(tapePath + ".tmp"), "the crash-safe write must rename, not leave .tmp");
    }

    // ---- #9: RequireLoopbackUpstream ---------------------------------------

    [Fact]
    public void RequireLoopbackUpstream_refuses_a_remote_upstream()
    {
        string tapePath = Path.Combine(_dir, "guard.md");
        VcrException ex = Assert.Throws<VcrException>(() =>
            Vcr.Record(tapePath, "https://api.real-vendor.example")
               .RequireLoopbackUpstream()
               .Port(0)
               .Start());
        Assert.Contains("loopback", ex.Message, StringComparison.OrdinalIgnoreCase);
        Assert.False(File.Exists(tapePath));
    }

    [Fact]
    public async Task RequireLoopbackUpstream_allows_a_loopback_upstream()
    {
        using var upstream = new FakeUpstream { ResponseBody = "ok" };
        string tapePath = Path.Combine(_dir, "guard-ok.md");
        using (var rec = Vcr.Record(tapePath, upstream.BaseUrl).RequireLoopbackUpstream().Port(0).Start())
        using (var client = new HttpClient { BaseAddress = new Uri(rec.BaseUrl) })
        {
            await client.GetStringAsync("/thing");
            rec.Commit();
        }
        Assert.True(File.Exists(tapePath));
    }

    // ---- #7: Placeholder (both directions) ---------------------------------

    [Fact]
    public async Task Placeholder_fills_the_marker_in_the_response()
    {
        // A response body + header carrying {{workpro}}; Placeholder fills both.
        string tape =
            "## Interaction 0: GET /next\n\n" +
            "### Request headers recorded for playback:\n\n```\n```\n" +
            "### Request method and path recorded for playback:\n\n```\nGET /next\n```\n" +
            "### Request body recorded for playback ():\n\n```\n```\n" +
            "### Response headers recorded for playback:\n\n```\nLocation: {{workpro}}/page2\n```\n" +
            "### Response body recorded for playback (200: application/json):\n\n```\n{\"n\":\"{{workpro}}/x\"}\n```\n";
        string path = Tape("ph.md", tape);

        using var vcr = Vcr.Playback(path).Port(0)
            .Placeholder("{{workpro}}", "https://real.example")
            .Start();
        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };
        HttpResponseMessage r = await client.GetAsync("/next");
        Assert.Equal("https://real.example/page2", r.Headers.GetValues("Location").First());
        Assert.Contains("https://real.example/x", await r.Content.ReadAsStringAsync());
        vcr.AssertNoUnfilledPlaceholders();
    }

    public void Dispose()
    {
        try { Directory.Delete(_dir, recursive: true); } catch { /* best-effort */ }
    }
}
