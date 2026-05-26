using System;
using System.Collections.Generic;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Servirtium.Vcr.Tests;

/// <summary>
/// A throwaway HTTP upstream for record-mode tests. Returns a configurable
/// body (with Content-Length, so no chunking) plus any extra response
/// headers, and captures the last request it saw so tests can assert what
/// the VCR forwarded.
/// </summary>
internal sealed class FakeUpstream : IDisposable
{
    private readonly HttpListener _listener = new();

    public string BaseUrl { get; }
    public string ResponseBody { get; set; } = "upstream-body";
    public string ResponseContentType { get; set; } = "text/plain";
    public Dictionary<string, string> ExtraResponseHeaders { get; } = new();

    public string? LastMethod { get; private set; }
    public string? LastBody { get; private set; }

    public FakeUpstream()
    {
        int port = FreePort();
        BaseUrl = $"http://127.0.0.1:{port}";
        _listener.Prefixes.Add($"{BaseUrl}/");
        _listener.Start();
        _ = Task.Run(Serve);
    }

    private async Task Serve()
    {
        try
        {
            while (_listener.IsListening)
            {
                HttpListenerContext ctx = await _listener.GetContextAsync();
                LastMethod = ctx.Request.HttpMethod;
                using (var reader = new System.IO.StreamReader(ctx.Request.InputStream))
                {
                    LastBody = await reader.ReadToEndAsync();
                }

                byte[] payload = Encoding.UTF8.GetBytes(ResponseBody);
                ctx.Response.ContentType = ResponseContentType;
                ctx.Response.ContentLength64 = payload.Length;
                foreach (KeyValuePair<string, string> h in ExtraResponseHeaders)
                {
                    ctx.Response.Headers[h.Key] = h.Value;
                }
                await ctx.Response.OutputStream.WriteAsync(payload);
                ctx.Response.Close();
            }
        }
        catch (HttpListenerException) { /* stopped */ }
        catch (ObjectDisposedException) { /* disposed */ }
    }

    private static int FreePort()
    {
        var l = new System.Net.Sockets.TcpListener(IPAddress.Loopback, 0);
        l.Start();
        int port = ((IPEndPoint)l.LocalEndpoint).Port;
        l.Stop();
        return port;
    }

    public void Dispose()
    {
        if (_listener.IsListening) _listener.Stop();
        ((IDisposable)_listener).Dispose();
    }
}
