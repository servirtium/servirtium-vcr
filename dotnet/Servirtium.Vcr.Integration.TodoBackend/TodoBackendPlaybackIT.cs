using Servirtium.Vcr;
using Xunit;

namespace Servirtium.Vcr.Integration.TodoBackend;

/// <summary>
/// TodoBackend browser integration test — PLAYBACK phase (the CI artifact).
///
/// <para>Replays the committed CRUD tape through a Servirtium VCR and runs the
/// real TodoBackend Mocha spec against it in real headless Chrome (.NET's own
/// Selenium). No SUT, no network — the whole CRUD conversation comes off the
/// tape. Mirrors the Python <c>playback_test.py</c>.</para>
///
/// <para>Run via the leaf <c>integration/todobackend/.dotnet_playback.ae</c>, or
/// directly with the working dir at <c>dotnet/</c>:</para>
/// <code>
///   SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so \
///     dotnet test Servirtium.Vcr.Integration.TodoBackend --nologo \
///     --filter FullyQualifiedName!~TodoBackendRecord
/// </code>
/// </summary>
public class TodoBackendPlaybackIT
{
    [Fact]
    public void MochaSuitePassesOffTheTape()
    {
        using var vcr = Vcr.Playback(TodoBackendBrowser.Tape)
            .StaticContent("/suite", TodoBackendBrowser.SuiteDir)
            .Untaped("/favicon.ico")
            .Port(TodoBackendBrowser.VcrPort)
            .Start();

        var r = TodoBackendBrowser.RunSuite(vcr.BaseUrl);
        System.Console.WriteLine($"mocha (playback): {r.Passes} passed, {r.Failures} failed");
        foreach (string m in r.FailMessages)
        {
            System.Console.WriteLine("  FAIL: " + m);
        }

        Assert.True(r.Failures == 0, "mocha reported failures: " + string.Join("; ", r.FailMessages));
        Assert.True(r.Passes > 0, "mocha reported no passes");
    }
}
