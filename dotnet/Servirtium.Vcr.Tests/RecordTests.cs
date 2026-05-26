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
