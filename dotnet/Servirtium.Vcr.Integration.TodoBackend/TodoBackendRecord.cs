using System;

using Servirtium.Vcr;
using Xunit;

namespace Servirtium.Vcr.Integration.TodoBackend;

/// <summary>
/// TodoBackend browser integration test — RECORD phase (manual, on-demand).
///
/// <para>VCR in record mode, forwarding to the live Kotlin/http4k SUT
/// (<c>TODOBACKEND_UPSTREAM</c>). The Mocha spec runs in real headless Chrome
/// against the VCR; every CRUD call is forwarded upstream and recorded, then
/// flushed to the tape on dispose. The suite must pass for the recording to be
/// trustworthy. Mirrors the Python <c>record.py</c>.</para>
///
/// <para>Gated on <c>TODOBACKEND_UPSTREAM</c> (via <see cref="EnvFactAttribute"/>)
/// so a normal <c>dotnet test</c> skips it. The leaf
/// <c>integration/todobackend/.dotnet_record.ae</c> brings the SUT up, sets the
/// env, runs this, and tears the container down. Run it directly (working dir
/// at <c>dotnet/</c>) with:</para>
/// <code>
///   SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so \
///     TODOBACKEND_UPSTREAM=http://127.0.0.1:54321 \
///     dotnet test Servirtium.Vcr.Integration.TodoBackend --nologo \
///     --filter FullyQualifiedName~TodoBackendRecord
/// </code>
/// </summary>
public class TodoBackendRecord
{
    [EnvFact("TODOBACKEND_UPSTREAM")]
    public void RecordTheCrudSuiteAgainstTheLiveSut()
    {
        string upstream = Environment.GetEnvironmentVariable("TODOBACKEND_UPSTREAM")!;

        using (var vcr = Vcr.Record(TodoBackendBrowser.Tape, upstream)
            .StaticContent("/suite", TodoBackendBrowser.SuiteDir)
            .Untaped("/favicon.ico")
            .Port(TodoBackendBrowser.VcrPort)
            .Start())
        {
            var r = TodoBackendBrowser.RunSuite(vcr.BaseUrl);
            System.Console.WriteLine($"mocha (record): {r.Passes} passed, {r.Failures} failed");
            foreach (string m in r.FailMessages)
            {
                System.Console.WriteLine("  FAIL: " + m);
            }

            // Assert before dispose so a bad run flushes nothing trustworthy;
            // Dispose (in using) writes the tape regardless.
            Assert.True(r.Failures == 0,
                "suite did not pass against the live SUT; tape NOT trustworthy: " + string.Join("; ", r.FailMessages));
            Assert.True(r.Passes > 0, "suite produced no passes; tape NOT trustworthy");
        }
        System.Console.WriteLine("record: wrote " + TodoBackendBrowser.Tape);
    }
}
