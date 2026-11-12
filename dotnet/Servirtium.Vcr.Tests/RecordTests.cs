using System;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using Servirtium.Vcr;
using Xunit;

namespace Servirtium.Vcr.Tests;

/// <summary>
/// Proves record mode end-to-end: the VCR forwards to a live upstream,
/// returns the real response to the SUT, captures the exchange, flushes a
/// Servirtium markdown tape on dispose, and the same tape then replays.
/// </summary>
public class RecordTests : IDisposable
{
    private readonly HttpListener _upstream = new();
    private readonly string _upstreamBase;
    private readonly string _tapePath = Path.Combine(Path.GetTempPath(), $"vcr_rec_{Guid.NewGuid():N}.md");

    public RecordTests()
    {
        // A throwaway upstream on an OS-assigned port.
        int port = GetFreePort();
        _upstreamBase = $"http://127.0.0.1:{port}";
        _upstream.Prefixes.Add($"{_upstreamBase}/");
        _upstream.Start();
        _ = Task.Run(ServeUpstream);
    }

    [Fact]
    public async Task Records_then_replays_the_same_interaction()
    {
        // ---- record ----
        using (var rec = Vcr.Record(_tapePath, _upstreamBase).Port(0).Start())
        using (var client = new HttpClient { BaseAddress = new Uri(rec.BaseUrl) })
        {
            string body = await client.GetStringAsync("/greeting");
            Assert.Equal("hello-from-upstream", body);
        } // dispose flushes the tape

        Assert.True(File.Exists(_tapePath), "record-mode dispose should write the tape");

        // ---- replay (offline) ----
        using var play = Vcr.Playback(_tapePath).Port(0).Start();
        using var offline = new HttpClient { BaseAddress = new Uri(play.BaseUrl) };
        string replayed = await offline.GetStringAsync("/greeting");

        Assert.Equal("hello-from-upstream", replayed);
        Assert.Equal(VcrOutcome.Ok, play.LastKind);
    }

    [Fact]
    public async Task AddLicenseNotice_writes_notice_at_top_of_tape()
    {
        using (var rec = Vcr.Record(_tapePath, _upstreamBase).Port(0)
                   .AddLicenseNotice("Recorded under the MIT licence").Start())
        using (var client = new HttpClient { BaseAddress = new Uri(rec.BaseUrl) })
        {
            await client.GetStringAsync("/greeting");
        }

        string tape = File.ReadAllText(_tapePath);
        Assert.Contains("## LICENSE NOTICE", tape);
        Assert.Contains("Recorded under the MIT licence", tape);
    }

    [Fact]
    public async Task SortJsonKeys_with_PrettyJson_writes_sorted_pretty_json()
    {
        using var up = new FakeUpstream { ResponseBody = "{\"b\":1,\"a\":{\"d\":2,\"c\":3}}", ResponseContentType = "application/json" };
        using (var rec = Vcr.Record(_tapePath, up.BaseUrl).Port(0).PrettyJson(2).SortJsonKeys().Start())
        using (var client = new HttpClient { BaseAddress = new Uri(rec.BaseUrl) })
        {
            await client.GetStringAsync("/doc");
        }

        string tape = File.ReadAllText(_tapePath).Replace("\r\n", "\n");
        Assert.Contains("{\n  \"a\": {\n    \"c\": 3,\n    \"d\": 2\n  },\n  \"b\": 1\n}", tape);
    }

    [Fact]
    public async Task SortJsonKeys_without_PrettyJson_is_refused_when_the_tape_is_written()
    {
        using var up = new FakeUpstream { ResponseBody = "{\"b\":1,\"a\":2}", ResponseContentType = "application/json" };
        var rec = Vcr.Record(_tapePath, up.BaseUrl).Port(0).SortJsonKeys().Start();
        using (var client = new HttpClient { BaseAddress = new Uri(rec.BaseUrl) })
        {
            await client.GetStringAsync("/doc");
        }

        var ex = Assert.Throws<VcrException>(() => rec.Dispose());
        Assert.Contains("sort_json_keys needs pretty_json", ex.Message);
        Assert.False(File.Exists(_tapePath));
    }

    [Fact]
    public async Task Array_and_header_sort_rules_are_applied_and_a_bad_one_fails_start()
    {
        using var up = new FakeUpstream { ResponseBody = "[{\"n\":\"z\"},{\"n\":\"a\"}]", ResponseContentType = "application/json" };
        up.ExtraResponseHeaders["Allow"] = "POST, GET";
        using (var rec = Vcr.Record(_tapePath, up.BaseUrl).Port(0).PrettyJson(2)
                   .SortJsonArray("", "n").SortJsonArrayAt("/doc", "", "n")
                   .SortResponseHeaders().SortHeaderValue("Allow").Start())
        using (var client = new HttpClient { BaseAddress = new Uri(rec.BaseUrl) })
        {
            await client.GetStringAsync("/doc");
        }

        string tape = File.ReadAllText(_tapePath);
        Assert.True(tape.IndexOf("\"n\": \"a\"", StringComparison.Ordinal) < tape.IndexOf("\"n\": \"z\"", StringComparison.Ordinal), tape);
        Assert.Contains("Allow: GET, POST", tape);
        var ex = Assert.Throws<VcrException>(() => Vcr.Record(_tapePath, up.BaseUrl).Port(0).SortHeaderValue("").Start());
        Assert.Contains("SortHeaderValue", ex.Message);
    }

    [Fact]
    public async Task PrettyXml_formats_both_tape_bodies_and_matches_compact_requests()
    {
        const string request = "<CaseData><C> Line one\nLine two \n</C><Captcha>token</Captcha></CaseData>";
        const string response = "<Result><C> Line one\nLine two \n</C><Ok>yes</Ok></Result>";
        using var up = new FakeUpstream { ResponseBody = response, ResponseContentType = "application/xml" };
        using (var rec = Vcr.Record(_tapePath, up.BaseUrl).Port(0).PrettyXml(2).Start())
        using (var client = new HttpClient { BaseAddress = new Uri(rec.BaseUrl) })
        using (var content = new StringContent(request, System.Text.Encoding.UTF8, "application/xml"))
        using (var result = await client.PostAsync("/case", content))
        {
            Assert.Equal(response, await result.Content.ReadAsStringAsync());
            Assert.Equal(request, up.LastBody);
        }
        string tape = File.ReadAllText(_tapePath);
        Assert.Contains("\n  <Captcha>token</Captcha>\n", tape);
        Assert.Contains("\n  <Ok>yes</Ok>\n", tape);
        Assert.Contains("<C> Line one\nLine two \n</C>", tape);
        for (int variant = 0; variant < 3; variant++)
        {
            string edited = variant == 1 ? tape.Replace("\n  <", "\n       <")
                : variant == 2 ? tape.Replace("\n", "\r\n") : tape;
            File.WriteAllText(_tapePath, edited);
            using var play = Vcr.Playback(_tapePath).Port(0).PrettyXml(2).Start();
            using var client = new HttpClient { BaseAddress = new Uri(play.BaseUrl) };
            using var content = new StringContent(request, System.Text.Encoding.UTF8, "application/xml");
            using var result = await client.PostAsync("/case", content);
            Assert.Equal(HttpStatusCode.OK, result.StatusCode);
            Assert.Equal(VcrOutcome.Ok, play.LastKind);
            string body = await result.Content.ReadAsStringAsync();
            Assert.Contains("<C> Line one\nLine two \n</C>", body);
            Assert.Contains(variant == 1 ? "\n       <Ok>yes</Ok>" : "\n  <Ok>yes</Ok>", body);
        }
    }

    private void ServeUpstream()
    {
        try
        {
            while (_upstream.IsListening)
            {
                HttpListenerContext ctx = _upstream.GetContext();
                byte[] payload = System.Text.Encoding.UTF8.GetBytes("hello-from-upstream");
                ctx.Response.ContentType = "text/plain";
                // Deliberately DO NOT set Content-Length: HttpListener then
                // replies with Transfer-Encoding: chunked. This exercises the
                // Aether client de-chunking fix (ae 0.183.0) — the recorder
                // must store the decoded payload, not the chunk framing.
                ctx.Response.SendChunked = true;
                ctx.Response.OutputStream.Write(payload, 0, payload.Length);
                ctx.Response.Close();
            }
        }
        catch (HttpListenerException) { /* listener stopped */ }
        catch (ObjectDisposedException) { /* listener disposed */ }
    }

    private static int GetFreePort()
    {
        var l = new System.Net.Sockets.TcpListener(IPAddress.Loopback, 0);
        l.Start();
        int port = ((IPEndPoint)l.LocalEndpoint).Port;
        l.Stop();
        return port;
    }

    public void Dispose()
    {
        if (_upstream.IsListening) _upstream.Stop();
        ((IDisposable)_upstream).Dispose();
        if (File.Exists(_tapePath)) File.Delete(_tapePath);
    }
}
