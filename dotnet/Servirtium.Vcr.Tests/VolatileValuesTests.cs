using System;
using System.Diagnostics;
using System.IO;
using System.Runtime.CompilerServices;
using Servirtium.Vcr;
using Xunit;

namespace Servirtium.Vcr.Tests;

// Volatile values (docs/volatile-values.md): the binding passes rule, bind,
// profile and marker strings through; the core does the rest. The scenarios
// are driven by target/test-tools/volatile_fixture against core_tests/volatile/.
public class VolatileValuesTests
{
    private static string Source([CallerFilePath] string file = "") => file;
    private static readonly string Root = Path.GetFullPath(Path.Combine(Path.GetDirectoryName(Source())!, "../.."));
    private static string Tape(string name) => Path.Combine(Root, "core_tests/volatile", name);

    private static void Drive(string scenario, VcrServer server)
    {
        var info = new ProcessStartInfo(Path.Combine(Root, "target/test-tools/volatile_fixture"))
        {
            RedirectStandardOutput = true,
            RedirectStandardError = true,
        };
        info.ArgumentList.Add(scenario);
        info.ArgumentList.Add(server.BaseUrl);
        using var driver = Process.Start(info)!;
        string output = driver.StandardOutput.ReadToEnd() + driver.StandardError.ReadToEnd();
        driver.WaitForExit();
        Assert.True(driver.ExitCode == 0, $"{scenario}: {output}\n{server.ReadLastError(false)}");
    }

    // Spec tests 1 and 6: the tape declares its rules; none in code.
    [Fact]
    public void WcfRoundTripWithTheTapesOwnRules()
    {
        using var server = Vcr.Playback(Tape("wcf.md")).PrettyXml(2).Start();
        Drive("wcf", server);
        Assert.Contains("binding: {{messageId-1}} = ", server.VolatileReport());
    }

    // Spec test 6: the same tape without its block, plus a profile file.
    [Fact]
    public void WcfRoundTripWithAProfileFile()
    {
        using var server = Vcr.Playback(Tape("wcf_plain.md")).PrettyXml(2)
            .VolatileProfile(Tape("profile.md")).Start();
        Drive("wcf", server);
    }

    // The same rules in code.
    [Fact]
    public void WcfRoundTripWithRulesInCode()
    {
        using var server = Vcr.Playback(Tape("wcf_plain.md")).PrettyXml(2)
            .VolatileRule("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>")
            .VolatileRule("request body", "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/")
            .VolatileRule("request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;")
            .VolatileRule("response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>")
            .Start();
        Drive("wcf", server);
    }

    [Fact]
    public void DollarCurlyMarkers()
    {
        using (var server = Vcr.Playback(Tape("wcf_dollar.md")).PrettyXml(2)
            .VolatileMarkers(VolatileMarkers.DollarCurly).Start())
        {
            Drive("wcf", server);
        }
        var wrong = Assert.Throws<VcrException>(() => Vcr.Playback(Tape("wcf_dollar.md")).PrettyXml(2).Start());
        Assert.Contains("DollarCurly", wrong.Message);
    }

    // Spec test 2: a response hands out an id, the next request uses it;
    // another id is a mismatch naming the binding.
    [Fact]
    public void CorrelationBindsAndGuards()
    {
        using var server = Vcr.Playback(Tape("cases.md")).Start();
        Drive("cases", server);
        server.ResetCursor();
        Drive("cases-mismatch", server);
        Assert.Contains("{{caseId-1}} = 42", server.ReadLastError(false));
        Assert.Contains("{{caseId-1}} = 42", server.ReadLastError(true));
    }

    // A response token nothing binds: the test binds it.
    [Fact]
    public void BindSuppliesWhatNoRequestBinds()
    {
        var unbound = Assert.Throws<VcrException>(() => Vcr.Playback(Tape("cases_recorded.md")).Start());
        Assert.Contains("caseId", unbound.Message);
        using var server = Vcr.Playback(Tape("cases_recorded.md")).Bind("caseId", "42").Start();
        Drive("cases", server);
        Assert.Contains("bind: caseId = 42", server.VolatileReport());
    }

    [Fact]
    public void BadRulesAndConflictsFailStart()
    {
        var bad = Assert.Throws<VcrException>(() =>
            Vcr.Playback(Tape("cases.md")).VolatileRule("request body", "no placeholder").Start());
        Assert.Contains("needs at least one placeholder", bad.Message);
        var conflict = Assert.Throws<VcrException>(() =>
            Vcr.Playback(Tape("cases.md")).VolatileRule("response body", "\"caseId\":\"{{id}}\"").Start());
        Assert.Contains("conflicts with", conflict.Message);
        Assert.Contains("(tape)", conflict.Message);
        var kind = Assert.Throws<VcrException>(() =>
            Vcr.Playback(Tape("cases.md")).VolatileRule("request body", "a {{b}}", "glob").Start());
        Assert.Contains("expected template or regex", kind.Message);
    }
}
