using System;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Threading.Tasks;
using Servirtium.Vcr;
using Xunit;

namespace Servirtium.Vcr.Tests;

/// <summary>
/// AssertAllConsumed (every taped interaction must be replayed) and
/// LastTlsProtocol (the server-side negotiated TLS version).
/// </summary>
public class ConsumedAndTlsVersionTests
{
    private static string TapePath(string name) =>
        Path.Combine(AppContext.BaseDirectory, "tapes", name);

    [Fact]
    public async Task AssertAllConsumed_passes_when_the_one_interaction_is_used()
    {
        using var vcr = Vcr.Playback(TapePath("single_get.md")).Port(0).Start();
        using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };
        await client.GetAsync("/ok");
        vcr.AssertAllConsumed();   // should not throw
    }

    [Fact]
    public void AssertAllConsumed_throws_when_an_interaction_is_never_replayed()
    {
        using var vcr = Vcr.Playback(TapePath("single_get.md")).Port(0).Start();
        // Never hit /ok.
        VcrException ex = Assert.Throws<VcrException>(() => vcr.AssertAllConsumed());
        Assert.Contains("never replayed", ex.Message);
        Assert.Contains("/ok", ex.Message);
    }

    [Fact]
    public async Task AssertAllRedactionsUsed_passes_when_the_unredaction_matched_and_throws_when_not()
    {
        // The unredaction's pattern IS present in the tape → used → no throw.
        using (var ok = Vcr.Playback(TapePath("secure_get.md"))
                   .Port(0)
                   .Unredact(VcrField.RequestHeaders, "Bearer REDACTED", "Bearer real-token")
                   .Start())
        {
            using var client = new HttpClient { BaseAddress = new Uri(ok.BaseUrl) };
            var req = new HttpRequestMessage(HttpMethod.Get, "/secure");
            req.Headers.TryAddWithoutValidation("Authorization", "Bearer real-token");
            await client.SendAsync(req);
            ok.AssertAllRedactionsUsed();   // should not throw
        }

        // A pattern that never appears in the tape → unused → throws with it listed.
        using (var stale = Vcr.Playback(TapePath("secure_get.md"))
                   .Port(0)
                   .Unredact(VcrField.RequestHeaders, "Bearer NOPE-NEVER-THERE", "x")
                   .Start())
        {
            VcrException ex = Assert.Throws<VcrException>(() => stale.AssertAllRedactionsUsed());
            Assert.Contains("never matched", ex.Message);
            Assert.Contains("NOPE-NEVER-THERE", ex.Message);
        }
    }

    [Fact]
    public async Task LastTlsProtocol_is_TLS13_when_tls_enabled_else_empty()
    {
        // Plain HTTP: no TLS protocol.
        using (var http = Vcr.Playback(TapePath("single_get.md")).Port(0).Start())
        {
            Assert.Equal("", http.LastTlsProtocol);
        }

        // TLS on: TLSv1.3 (pure-Aether TLS 1.3 server). EC P-256 cert via a temp file.
        string dir = Path.Combine(Path.GetTempPath(), "svcr-tlsver-" + Guid.NewGuid().ToString("N"));
        Directory.CreateDirectory(dir);
        string certPath = Path.Combine(dir, "cert.pem"), keyPath = Path.Combine(dir, "key.pem");
        try
        {
            using var ecdsa = ECDsa.Create(ECCurve.NamedCurves.nistP256);
            var req = new CertificateRequest("CN=localhost", ecdsa, HashAlgorithmName.SHA256);
            var san = new SubjectAlternativeNameBuilder();
            san.AddDnsName("localhost");
            san.AddIpAddress(IPAddress.Loopback);
            req.CertificateExtensions.Add(san.Build());
            using var cert = req.CreateSelfSigned(DateTimeOffset.UtcNow.AddMinutes(-5), DateTimeOffset.UtcNow.AddDays(2));
            File.WriteAllText(certPath, cert.ExportCertificatePem() + Environment.NewLine);
            File.WriteAllText(keyPath, ecdsa.ExportPkcs8PrivateKeyPem() + Environment.NewLine);

            using var tls = Vcr.Playback(TapePath("single_get.md")).Port(0).Tls(certPath, keyPath).Start();
            Assert.Equal("TLSv1.3", tls.LastTlsProtocol);

            using var handler = new HttpClientHandler
            {
                ServerCertificateCustomValidationCallback = (_, _, _, _) => true,
            };
            using var client = new HttpClient(handler) { BaseAddress = new Uri(tls.BaseUrl) };
            HttpResponseMessage r = await client.GetAsync("/ok");
            Assert.Equal(HttpStatusCode.OK, r.StatusCode);
        }
        finally
        {
            try { Directory.Delete(dir, true); } catch { }
        }
    }
}
