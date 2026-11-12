// Servirtium harness: one Servirtium recording per Azure SDK test.
// Licence: as servirtium-vcr (MIT).
//
// Before each test: open a Servirtium VCR on the session's port (record:
// forwarding to Azurite; playback: replaying the test's tape), and put on the
// test the two values the patched Azure.Core.TestFramework reads in Live mode
// (framework-live-determinism.patch): a random seed derived from the test's
// full name, so container/blob names, generated data and Guids repeat; and
// the moment the tape was recorded, so SAS expiry times and access policies
// repeat. After each test: record keeps the tape only if the test passed;
// playback fails the test if a request was not on the tape or a taped one
// was never made.

using System;
using System.Globalization;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using NUnit.Framework;
using NUnit.Framework.Interfaces;
using Servirtium.AzureHarness;
using Servirtium.Vcr;

[assembly: ServirtiumPerTest]

namespace Servirtium.AzureHarness
{
    [AttributeUsage(AttributeTargets.Assembly)]
    public sealed class ServirtiumPerTestAttribute : Attribute, ITestAction
    {
        private const string ServerKey = "Servirtium.Server";
        private const string NoteTitle = "Azure SDK test";

        public ActionTargets Targets => ActionTargets.Test;

        public void BeforeTest(ITest test)
        {
            ServirtiumHarnessSession s = ServirtiumHarnessSetUp.Session;
            if (s == null)
            {
                return;
            }
            // Direct mode is the baseline that decides the exclusions: it runs all.
            string reason = s.Mode == HarnessMode.Direct ? null : s.ExclusionFor(test.ClassName, test.Name);
            if (reason != null)
            {
                Assert.Ignore($"excluded by the Servirtium harness (excluded.txt): {reason}");
            }
            string tape = TapePath(s, test);
            test.Properties.Set("Servirtium.Seed", StableSeed(test.FullName).ToString(CultureInfo.InvariantCulture));

            VcrServer server;
            if (s.Mode == HarnessMode.Direct)
            {
                test.Properties.Set("Servirtium.Now", DateTimeOffset.UtcNow.ToString("O", CultureInfo.InvariantCulture));
                return;
            }
            if (s.Mode == HarnessMode.Record)
            {
                DateTimeOffset now = DateTimeOffset.UtcNow;
                test.Properties.Set("Servirtium.Now", now.ToString("O", CultureInfo.InvariantCulture));
                Directory.CreateDirectory(Path.GetDirectoryName(tape));
                RecordBuilder b = Rules(Vcr.Vcr.Record(tape, s.UpstreamBlobBase), s)
                    // Azurite takes a copy source (Copy Blob, Put Block From
                    // URL) only on the host the request was sent to.
                    .ForwardHost()
                    .AddLicenseNotice(s.LicenseNotice)
                    .Note(NoteTitle, $"test: {test.FullName}\nnow: {now.ToString("O", CultureInfo.InvariantCulture)}")
                    // Azurite's error bodies carry a fresh request id and time.
                    .RedactWholeTape("RequestId:[0-9a-f-]{36}", "RequestId:REQUEST-ID")
                    .RedactWholeTape(@"Time:[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9:.]+Z", "Time:2000-01-01T00:00:00.0000000Z")
                    // Azure Storage echoes the request's client request id, and
                    // the SDK refuses a response carrying any other: recorded as
                    // a token, playback answers with the id the request sent.
                    .RedactHeader("x-ms-client-request-id", "{{request.header.x-ms-client-request-id}}", VcrField.ResponseHeaders)
                    // URLs Azurite builds from the Host it was sent.
                    .RedactWholeTape(Regex.Escape(new Uri(s.UpstreamBlobBase).Authority), "{{request.host}}")
                    .RequireLoopbackUpstream();
                server = b.Start();
            }
            else if (File.Exists(tape))
            {
                test.Properties.Set("Servirtium.Now", RecordedNow(tape));
                server = Rules(Vcr.Vcr.Playback(tape), s).Start();
            }
            else
            {
                // No tape: the test made no HTTP requests when it was
                // recorded. Nothing listens, so one it makes now fails.
                test.Properties.Set("Servirtium.Now", "2000-01-01T00:00:00.0000000+00:00");
                return;
            }
            test.Properties.Set(ServerKey, server);
        }

        public void AfterTest(ITest test)
        {
            if (!(test.Properties.Get(ServerKey) is VcrServer server))
            {
                return;
            }
            ServirtiumHarnessSession s = ServirtiumHarnessSetUp.Session;
            string tape = TapePath(s, test);
            TestStatus status = TestContext.CurrentContext.Result.Outcome.Status;
            if (status == TestStatus.Failed)
            {
                // What Servirtium saw, beside the SDK's exception.
                string seen = server.DiagnosticsJson(consume: false);
                if (!string.IsNullOrEmpty(seen) && seen != "[]")
                {
                    // Beside the results: <work>/servirtium-diagnostics.txt.
                    File.AppendAllText(Path.Combine(s.WorkDir, "servirtium-diagnostics.txt"),
                        $"{test.FullName}\n{seen}\n\n");
                }
            }
            try
            {
                if (s.Mode == HarnessMode.Record)
                {
                    // Inconclusive: the test stopped (Assert.Inconclusive, e.g.
                    // a tenant only an Azure account has) after HTTP that went
                    // fine; its tape lets playback stop at the same point.
                    if ((status == TestStatus.Passed || status == TestStatus.Inconclusive) && server.TapeLength > 0)
                    {
                        server.Commit();
                        long size = new FileInfo(tape).Length;
                        if (size > s.MaxTapeBytes)
                        {
                            File.Delete(tape);
                            File.AppendAllText(Path.Combine(s.WorkDir, "oversized.txt"),
                                $"{ShortClass(test.ClassName)}.{test.Name}\t{size / 1024}\n");
                        }
                    }
                    else
                    {
                        server.Discard();
                        // A test that failed, or made no HTTP requests,
                        // leaves no tape behind.
                        if (File.Exists(tape))
                        {
                            File.Delete(tape);
                        }
                    }
                }
                else if (status == TestStatus.Passed)
                {
                    server.AssertNoMismatches();
                    server.AssertAllConsumed();
                }
            }
            finally
            {
                server.Dispose();
            }
        }

        // The rules both modes share: what is left out of the recording and
        // out of matching. Each request carries a fresh x-ms-date, client
        // request id and Shared Key signature (over that date); the
        // User-Agent names the OS and runtime. The credential preset keeps
        // the Authorization header's scheme and matches it on presence.
        // Responses are kept as Azurite sent them: the tests read their
        // headers (x-ms-request-id must be there).
        private static T Rules<T>(T b, ServirtiumHarnessSession s) where T : VcrBuilderBase<T>
            => b.Host("127.0.0.1")
                .Port(s.Port)
                .Label("azure-sdk-for-net")
                // The transport headers, but not a response's Content-Length:
                // a HEAD's says the blob's size, which the tests read.
                .RemoveHeader(VcrField.RequestHeaders, "Host")
                .RemoveHeader(VcrField.RequestHeaders, "Connection")
                .RemoveHeader(VcrField.RequestHeaders, "Content-Length")
                .RemoveHeader(VcrField.RequestHeaders, "Expect")
                .RemoveHeader(VcrField.ResponseHeaders, "Connection")
                .RemoveHeader(VcrField.ResponseHeaders, "Keep-Alive")
                .RemoveHeader(VcrField.ResponseHeaders, "Transfer-Encoding")
                .IgnoreVolatileHeaders()
                .RedactCredentials()
                .RemoveHeader(VcrField.RequestHeaders, "x-ms-date")
                .RemoveHeader(VcrField.RequestHeaders, "x-ms-client-request-id")
                .RemoveHeader(VcrField.RequestHeaders, "User-Agent");

        // tapes/<fixture, e.g. ContainerClientTests(True-V2027_03_07)>/<test>.md
        internal static string TapePath(ServirtiumHarnessSession s, ITest test)
        {
            ITest fixture = test.Parent;
            while (fixture != null && fixture.TestType != "TestFixture")
            {
                fixture = fixture.Parent;
            }
            string dir = SafeName(fixture?.Name ?? "NoFixture");
            return Path.Combine(s.TapeDir, dir, SafeName(test.Name) + ".md");
        }

        // Letters, digits and ._()=- kept; a comma becomes '-' (the CLI's
        // `servirtium serve a.md,b.md` splits on commas). Anything else
        // becomes '_', with a hash of the real name appended so two names
        // cannot collide.
        private static string SafeName(string name)
        {
            string spelled = name.Replace(',', '-');
            var sb = new StringBuilder(spelled.Length);
            foreach (char c in spelled)
            {
                bool ok = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') || "._()=-".IndexOf(c) >= 0;
                sb.Append(ok ? c : '_');
            }
            string safe = sb.ToString();
            if (safe.Length > 120)
            {
                safe = safe.Substring(0, 120);
            }
            if (safe != spelled)
            {
                safe += "-" + Fnv1a(name).ToString("x8", CultureInfo.InvariantCulture);
            }
            return safe;
        }

        private static string ShortClass(string className) =>
            className == null ? "" : className.Substring(className.LastIndexOf('.') + 1);

        private static string RecordedNow(string tape)
        {
            Match m = Regex.Match(File.ReadAllText(tape), @"^now: (\S+)\s*$", RegexOptions.Multiline);
            if (!m.Success)
            {
                throw new InvalidOperationException($"{tape} has no 'now:' line in its '{NoteTitle}' note");
            }
            return m.Groups[1].Value;
        }

        private static int StableSeed(string fullName) => (int)(Fnv1a(fullName) & 0x7fffffff);

        private static uint Fnv1a(string s)
        {
            uint h = 2166136261;
            foreach (byte b in Encoding.UTF8.GetBytes(s))
            {
                h ^= b;
                h *= 16777619;
            }
            return h;
        }
    }
}

[SetUpFixture]
public sealed class ServirtiumHarnessSetUp
{
    // Handed from this once-per-assembly fixture to the per-test action;
    // NUnit gives the two no other channel.
    public static ServirtiumHarnessSession Session { get; private set; }

    [OneTimeSetUp]
    public async System.Threading.Tasks.Task StartAsync()
    {
        Session = await ServirtiumHarnessSession.StartAsync();
    }

    [OneTimeTearDown]
    public async System.Threading.Tasks.Task StopAsync()
    {
        if (Session != null)
        {
            await Session.DisposeAsync();
        }
    }
}
