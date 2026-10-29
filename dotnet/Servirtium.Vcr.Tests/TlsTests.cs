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
/// HTTPS listener: the VCR terminates TLS and serves <c>https://</c> instead of
/// <c>http://</c>, for client libraries that refuse plain HTTP. Mints a fresh
/// self-signed localhost cert/key (PEM) in-process — no openssl dependency —
/// stages it via <see cref="VcrBuilderBase{T}.Tls"/>, and fetches the recorded
/// tape over TLS with peer verification skipped (the self-signed cert is not in
/// any trust store). Proves the P/Invoke chain down to aether_vcr_embed_set_tls
/// and the https scheme on BaseUrl.
/// </summary>
public class TlsTests : IDisposable
{
    private readonly string _dir;
    private readonly string _certPath;
    private readonly string _keyPath;

    public TlsTests()
    {
        _dir = Path.Combine(Path.GetTempPath(), "svcr-tls-" + Guid.NewGuid().ToString("N"));
        Directory.CreateDirectory(_dir);
        _certPath = Path.Combine(_dir, "cert.pem");
        _keyPath = Path.Combine(_dir, "key.pem");

        // An ECDSA P-256 cert. libservirtium_vcr's HTTPS uses Aether's pure-Aether
        // TLS 1.3 server (no OpenSSL dependency, so it works on every cross-built
        // platform); it accepts P-256/P-384/P-521, Ed25519 and RSA 2048-16384 keys
        // (aether #3326). P-256 is just a small, fast choice for the test.
        using var ecdsa = ECDsa.Create(ECCurve.NamedCurves.nistP256);
        var req = new CertificateRequest("CN=localhost", ecdsa, HashAlgorithmName.SHA256);
        var san = new SubjectAlternativeNameBuilder();
        san.AddDnsName("localhost");
        san.AddIpAddress(IPAddress.Loopback);
        req.CertificateExtensions.Add(san.Build());
        using var cert = req.CreateSelfSigned(DateTimeOffset.UtcNow.AddMinutes(-5), DateTimeOffset.UtcNow.AddDays(2));

        File.WriteAllText(_certPath, cert.ExportCertificatePem() + Environment.NewLine);
        File.WriteAllText(_keyPath, ecdsa.ExportPkcs8PrivateKeyPem() + Environment.NewLine);
    }

    private static string TapePath(string name) =>
        Path.Combine(AppContext.BaseDirectory, "tapes", name);

    [Fact]
    public async Task Serves_a_recorded_get_over_https()
    {
        using var vcr = Vcr.Playback(TapePath("single_get.md"))
            .Label("serves over https")
            .Port(0)
            .Tls(_certPath, _keyPath)
            .Start();

        // The scheme flips to https once TLS is staged.
        Assert.StartsWith("https://", vcr.BaseUrl);

        using var handler = new HttpClientHandler
        {
            // self-signed cert is not trusted anywhere — skip verification (curl -k).
            ServerCertificateCustomValidationCallback = (_, _, _, _) => true,
        };
        using var client = new HttpClient(handler) { BaseAddress = new Uri(vcr.BaseUrl) };

        HttpResponseMessage response = await client.GetAsync("/ok");

        Assert.Equal(HttpStatusCode.OK, response.StatusCode);
        Assert.Equal("ok-body", await response.Content.ReadAsStringAsync());
        Assert.Equal(VcrOutcome.Ok, vcr.LastKind);
    }

    [Fact]
    public async Task Serves_https_from_an_in_memory_pem_without_touching_disk()
    {
        // Mint an EC P-256 cert and export BOTH as PEM strings — nothing is
        // written to disk (the whole point of TlsFromPem: no private key file).
        using var ecdsa = ECDsa.Create(ECCurve.NamedCurves.nistP256);
        var req = new CertificateRequest("CN=localhost", ecdsa, HashAlgorithmName.SHA256);
        var san = new SubjectAlternativeNameBuilder();
        san.AddDnsName("localhost");
        san.AddIpAddress(IPAddress.Loopback);
        req.CertificateExtensions.Add(san.Build());
        using var cert = req.CreateSelfSigned(DateTimeOffset.UtcNow.AddMinutes(-5), DateTimeOffset.UtcNow.AddDays(2));
        string certPem = cert.ExportCertificatePem();
        string keyPem = ecdsa.ExportPkcs8PrivateKeyPem();

        using var vcr = Vcr.Playback(TapePath("single_get.md"))
            .Port(0)
            .TlsFromPem(certPem, keyPem)
            .Start();

        Assert.StartsWith("https://", vcr.BaseUrl);
        Assert.Equal("TLSv1.3", vcr.LastTlsProtocol);

        using var handler = new HttpClientHandler
        {
            ServerCertificateCustomValidationCallback = (_, _, _, _) => true,
        };
        using var client = new HttpClient(handler) { BaseAddress = new Uri(vcr.BaseUrl) };
        HttpResponseMessage response = await client.GetAsync("/ok");

        Assert.Equal(HttpStatusCode.OK, response.StatusCode);
        Assert.Equal("ok-body", await response.Content.ReadAsStringAsync());
    }

    [Fact]
    public void TlsFromPem_rejects_an_empty_cert()
    {
        VcrException ex = Assert.Throws<VcrException>(() =>
            Vcr.Playback(TapePath("single_get.md")).Port(0).TlsFromPem("", "key").Start());
        Assert.Contains("tls", ex.Message, StringComparison.OrdinalIgnoreCase);
    }

    [Fact]
    public void Rejects_an_empty_cert_path()
    {
        VcrException ex = Assert.Throws<VcrException>(() =>
            Vcr.Playback(TapePath("single_get.md")).Port(0).Tls("", _keyPath).Start());
        Assert.Contains("tls", ex.Message, StringComparison.OrdinalIgnoreCase);
    }

    public void Dispose()
    {
        try { Directory.Delete(_dir, recursive: true); } catch { /* best-effort */ }
    }
}
