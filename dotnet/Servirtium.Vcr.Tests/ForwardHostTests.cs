using System;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Servirtium.Vcr;
using Xunit;

namespace Servirtium.Vcr.Tests;

/// <summary>
/// RecordBuilder.ForwardHost: the upstream sees the Host the client sent
/// (the recorder's own authority), not the upstream's. Found by the Azure
/// SDK harness: Azurite accepts a copy source only on the host the request
/// was sent to.
/// </summary>
public class ForwardHostTests : IDisposable
{
    private readonly HttpListener _upstream = new();
    private readonly int _upstreamPort;
    private readonly string _tapePath = Path.Combine(Path.GetTempPath(), $"vcr_fwdhost_{Guid.NewGuid():N}.md");

    public ForwardHostTests()
    {
        var l = new System.Net.Sockets.TcpListener(IPAddress.Loopback, 0);
        l.Start();
        _upstreamPort = ((IPEndPoint)l.LocalEndpoint).Port;
        l.Stop();
        // A wildcard prefix, so the listener answers whatever Host it is sent.
        _upstream.Prefixes.Add($"http://*:{_upstreamPort}/");
        _upstream.Start();
        _ = Task.Run(EchoHost);
    }

    private async Task EchoHost()
    {
        try
        {
            while (_upstream.IsListening)
            {
                HttpListenerContext ctx = await _upstream.GetContextAsync();
                byte[] payload = Encoding.UTF8.GetBytes(ctx.Request.Headers["Host"] ?? "");
                ctx.Response.ContentType = "text/plain";
                ctx.Response.ContentLength64 = payload.Length;
                await ctx.Response.OutputStream.WriteAsync(payload);
                ctx.Response.Close();
            }
        }
        catch (HttpListenerException) { }
        catch (ObjectDisposedException) { }
    }

    private async Task<(string seen, string vcrAuthority)> HostSeenUpstream(bool forward)
    {
        RecordBuilder b = Vcr.Record(_tapePath, $"http://127.0.0.1:{_upstreamPort}").Port(0);
        if (forward) b = b.ForwardHost();
        using VcrServer rec = b.Start();
        using var client = new HttpClient { BaseAddress = new Uri(rec.BaseUrl) };
        string seen = await client.GetStringAsync("/whoami");
        string vcrAuthority = new Uri(rec.BaseUrl).Authority;
        rec.Discard();
        return (seen, vcrAuthority);
    }

    [Fact]
    public async Task Without_ForwardHost_the_upstream_sees_its_own_authority()
    {
        (string seen, _) = await HostSeenUpstream(forward: false);
        Assert.Equal($"127.0.0.1:{_upstreamPort}", seen);
    }

    [Fact]
    public async Task With_ForwardHost_the_upstream_sees_the_clients_Host()
    {
        (string seen, string vcr) = await HostSeenUpstream(forward: true);
        Assert.Equal(vcr, seen);
        Assert.NotEqual($"127.0.0.1:{_upstreamPort}", seen);
    }

    public void Dispose()
    {
        if (_upstream.IsListening) _upstream.Stop();
        ((IDisposable)_upstream).Dispose();
        if (File.Exists(_tapePath)) File.Delete(_tapePath);
    }
}
