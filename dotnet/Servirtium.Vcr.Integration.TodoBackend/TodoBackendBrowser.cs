using System;
using System.Collections.Generic;
using System.IO;

using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Support.UI;

namespace Servirtium.Vcr.Integration.TodoBackend;

/// <summary>
/// Runs the vendored TodoBackend Mocha spec in real headless Chrome against a
/// Servirtium VCR, and reports the result. Mirrors the Python <c>browser.py</c>,
/// but drives Chrome with .NET's own Selenium.WebDriver (Selenium Manager
/// auto-fetches a matching chromedriver — no manual driver setup).
///
/// <para>Shared by both phases:</para>
/// <list type="bullet">
///   <item><see cref="TodoBackendRecord"/>     — VCR in record mode, forwarding to the live SUT</item>
///   <item><see cref="TodoBackendPlaybackIT"/> — VCR replaying the committed tape, no SUT</item>
/// </list>
///
/// <para>The suite is served <em>same-origin</em> from the VCR's own
/// static-content mount (<c>/suite</c>), so the browser's API calls to the VCR
/// root are same-origin — no CORS, no preflight <c>OPTIONS</c> cluttering the
/// tape. <c>/favicon.ico</c> is marked untaped.</para>
///
/// <para>Fixed port: the recorded responses embed absolute todo URLs
/// (<c>http://127.0.0.1:&lt;PORT&gt;/&lt;uuid&gt;</c>) that the spec follows, and
/// the VCR replays response bodies verbatim — so playback MUST bind the same
/// port the tape was recorded against. Hence a fixed <see cref="VcrPort"/> for
/// both phases rather than port 0.</para>
/// </summary>
internal static class TodoBackendBrowser
{
    /// <summary>Both phases bind here (see class doc on why it can't be dynamic).</summary>
    internal const int VcrPort = 51080;

    /// <summary>
    /// The shared integration fixtures dir (integration/todobackend), holding
    /// <c>suite/</c> and <c>tapes/</c>. The leaves set the working dir to
    /// <c>dotnet/</c>, two levels up from which sits <c>integration/</c>; an
    /// absolute override is honoured via the <c>TODOBACKEND_FIXTURES</c> env var.
    /// </summary>
    internal static readonly string Fixtures = ResolveFixtures();

    internal static readonly string SuiteDir = Path.Combine(Fixtures, "suite");
    internal static readonly string Tape = Path.Combine(Fixtures, "tapes", "todobackend_crud.md");

    private static string ResolveFixtures()
    {
        string? overridePath = Environment.GetEnvironmentVariable("TODOBACKEND_FIXTURES");
        if (!string.IsNullOrWhiteSpace(overridePath))
        {
            return Path.GetFullPath(overridePath);
        }
        // Working dir is dotnet/ (set by the leaves); fixtures live two up.
        return Path.GetFullPath(Path.Combine(
            Directory.GetCurrentDirectory(), "..", "integration", "todobackend"));
    }

    /// <summary>Result of one Mocha run.</summary>
    internal sealed record Result(int Passes, int Failures, IReadOnlyList<string> FailMessages);

    /// <summary>Drive runner.html?&lt;apiRoot&gt; in headless Chrome until Mocha finishes.</summary>
    internal static Result RunSuite(string vcrBaseUrl, string? apiRoot = null, int timeoutSeconds = 120)
    {
        apiRoot ??= vcrBaseUrl;
        string url = $"{vcrBaseUrl}/suite/runner.html?{apiRoot}";

        var opts = new ChromeOptions();
        opts.AddArguments("--headless=new", "--no-sandbox", "--disable-dev-shm-usage", "--disable-gpu");
        var driver = new ChromeDriver(opts);
        try
        {
            driver.Navigate().GoToUrl(url);
            var js = (IJavaScriptExecutor)driver;
            new WebDriverWait(driver, TimeSpan.FromSeconds(timeoutSeconds)).Until(
                d => Equals(((IJavaScriptExecutor)d).ExecuteScript("return window.__mochaDone === true"), true));

            int passes = Convert.ToInt32(js.ExecuteScript("return window.__mochaPasses"));
            int failures = Convert.ToInt32(js.ExecuteScript("return window.__mochaFailures"));
            var raw = js.ExecuteScript("return window.__mochaFailMsgs") as IEnumerable<object>;
            var msgs = new List<string>();
            if (raw is not null)
            {
                foreach (object o in raw) msgs.Add(o?.ToString() ?? "");
            }
            return new Result(passes, failures, msgs);
        }
        finally
        {
            driver.Quit();
        }
    }
}
