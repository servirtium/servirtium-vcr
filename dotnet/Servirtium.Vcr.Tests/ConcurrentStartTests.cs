using System;
using System.Collections.Concurrent;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Threading.Tasks;
using Servirtium.Vcr;
using Xunit;

namespace Servirtium.Vcr.Tests;

/// <summary>
/// Field report (2.0.0-alpha.14): several VCRs started at once, each told to
/// RemoveHeader(RequestHeaders, "X-Noise"), sometimes reported a request-header
/// mismatch NAMING X-Noise. The builder applies its settings inside Start(), and
/// the core's handle setters reached their VCR through one process-wide
/// "current VCR" slot, so a removal could land on another VCR being started at
/// the same moment. A global lock around Start() hid it. This is the reporter's
/// shape: 8 VCRs started in parallel per round, 20 rounds, each request carrying
/// the recorded X-Token and a random X-Noise; plain HTTP and TLS (TlsFromPem).
/// </summary>
public class ConcurrentStartTests
{
    private const int Parallel = 8;
    private const int Rounds = 20;

    private static string TapePath(string name) =>
        Path.Combine(AppContext.BaseDirectory, "tapes", name);

    private static (string certPem, string keyPem) SelfSignedPem()
    {
        using var ecdsa = ECDsa.Create(ECCurve.NamedCurves.nistP256);
        var req = new CertificateRequest("CN=localhost", ecdsa, HashAlgorithmName.SHA256);
        var san = new SubjectAlternativeNameBuilder();
        san.AddDnsName("localhost");
        san.AddIpAddress(IPAddress.Loopback);
        req.CertificateExtensions.Add(san.Build());
        using var cert = req.CreateSelfSigned(DateTimeOffset.UtcNow.AddMinutes(-5), DateTimeOffset.UtcNow.AddDays(2));
        return (cert.ExportCertificatePem(), ecdsa.ExportPkcs8PrivateKeyPem());
    }

    private static async Task<string?> OneVcr((string certPem, string keyPem)? tls)
    {
        try
        {
            var builder = Vcr.Playback(TapePath("concurrent_start.md"))
                .Port(0)
                .RemoveTransportHeaders()
                .RemoveHeader(VcrField.RequestHeaders, "X-Noise");
            if (tls is (string certPem, string keyPem)) { builder = builder.TlsFromPem(certPem, keyPem); }
            using var vcr = builder.Start();
            using var handler = new HttpClientHandler
            {
                ServerCertificateCustomValidationCallback = (_, _, _, _) => true,
            };
            using var client = new HttpClient(handler) { BaseAddress = new Uri(vcr.BaseUrl) };
            var req = new HttpRequestMessage(HttpMethod.Get, "/thing");
            req.Headers.TryAddWithoutValidation("X-Token", "t");
            req.Headers.TryAddWithoutValidation("X-Noise", Guid.NewGuid().ToString("N"));
            HttpResponseMessage r = await client.SendAsync(req);
            string body = await r.Content.ReadAsStringAsync();
            vcr.AssertNoMismatches();
            if ((int)r.StatusCode != 200 || body.Trim() != "ok") { return $"status {(int)r.StatusCode} body '{body}'"; }
            return null;
        }
        catch (Exception e)
        {
            return e.GetType().Name + ": " + e.Message.Split('\n')[0];
        }
    }

    private static async Task Run((string certPem, string keyPem)? tls)
    {
        var failures = new ConcurrentBag<string>();
        for (int round = 0; round < Rounds; round++)
        {
            string?[] results = await Task.WhenAll(
                Enumerable.Range(0, Parallel).Select(_ => Task.Run(() => OneVcr(tls))));
            foreach (string? f in results) { if (f != null) { failures.Add($"round {round}: {f}"); } }
        }
        int total = Parallel * Rounds;
        Assert.True(failures.IsEmpty,
            $"{failures.Count}/{total} VCRs failed; first: {failures.FirstOrDefault()}");
    }

    [Fact]
    public Task Parallel_starts_keep_their_own_header_removal_over_http() => Run(null);

    [Fact]
    public Task Parallel_starts_keep_their_own_header_removal_over_tls() => Run(SelfSignedPem());
}
