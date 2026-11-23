using System;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Runtime.CompilerServices;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using Xunit;

namespace Servirtium.Vcr.Tests;

/// <summary>
/// What the tests share, written for both targets the package ships
/// (net8.0 and net48), so the same tests run against either assembly:
/// the repository's paths, the language-neutral fixtures under
/// target/test-tools/, and a self-signed certificate as PEM text.
/// </summary>
internal static class TestTools
{
    private static string Source([CallerFilePath] string file = "") => file;

    /// <summary>The repository root.</summary>
    internal static readonly string Root = Path.GetFullPath(Path.Combine(Path.GetDirectoryName(Source())!, "../.."));

    /// <summary>A fixture under target/test-tools/ (".exe" on Windows, found by the loader).</summary>
    internal static string Tool(string name) => Path.Combine(Root, "target", "test-tools", name);

    /// <summary>Run fixture <paramref name="tool"/>; assert exit 0; its stdout, trimmed.</summary>
    internal static string Run(string tool, params string[] args)
    {
        var info = new ProcessStartInfo(Tool(tool), Quote(args))
        {
            UseShellExecute = false,
            RedirectStandardOutput = true,
            RedirectStandardError = true,
        };
        using var process = Process.Start(info)!;
        // stderr on its own thread, so neither pipe fills while the other is read.
        var stderr = process.StandardError.ReadToEndAsync();
        string output = process.StandardOutput.ReadToEnd();
        process.WaitForExit();
        Assert.True(process.ExitCode == 0, $"{tool} {string.Join(" ", args)}: exit {process.ExitCode}\n{output}{stderr.Result}");
        return output.Trim();
    }

    // One command line for both runtimes (ProcessStartInfo.ArgumentList is
    // not on .NET Framework): the Windows rules, which .NET applies on Unix too.
    private static string Quote(string[] args)
    {
        var line = new StringBuilder();
        foreach (string arg in args)
        {
            if (line.Length > 0) line.Append(' ');
            line.Append('"');
            int backslashes = 0;
            foreach (char c in arg)
            {
                if (c == '\\') { backslashes++; continue; }
                if (c == '"') { line.Append('\\', backslashes * 2 + 1); line.Append('"'); }
                else { line.Append('\\', backslashes); line.Append(c); }
                backslashes = 0;
            }
            line.Append('\\', backslashes * 2);
            line.Append('"');
        }
        return line.ToString();
    }

    /// <summary>A fresh self-signed localhost certificate (EC P-256) and its key, as PEM text.</summary>
    internal static (string certPem, string keyPem) SelfSignedPem()
    {
        using var ecdsa = ECDsa.Create(ECCurve.NamedCurves.nistP256);
        var req = new CertificateRequest("CN=localhost", ecdsa, HashAlgorithmName.SHA256);
        var san = new SubjectAlternativeNameBuilder();
        san.AddDnsName("localhost");
        san.AddIpAddress(IPAddress.Loopback);
        req.CertificateExtensions.Add(san.Build());
        using var cert = req.CreateSelfSigned(DateTimeOffset.UtcNow.AddMinutes(-5), DateTimeOffset.UtcNow.AddDays(2));
#if NETFRAMEWORK
        // No PEM export on .NET Framework: the DER, base64 under PEM armour; the
        // key from Windows CNG, whose ephemeral keys export as PKCS#8.
        byte[] pkcs8 = ((ECDsaCng)ecdsa).Key.Export(CngKeyBlobFormat.Pkcs8PrivateBlob);
        return (Pem("CERTIFICATE", cert.RawData), Pem("PRIVATE KEY", pkcs8));
#else
        return (cert.ExportCertificatePem(), ecdsa.ExportPkcs8PrivateKeyPem());
#endif
    }

#if NETFRAMEWORK
    private static string Pem(string label, byte[] der) =>
        $"-----BEGIN {label}-----\n{Convert.ToBase64String(der, Base64FormattingOptions.InsertLineBreaks).Replace("\r\n", "\n")}\n-----END {label}-----";
#endif
}
