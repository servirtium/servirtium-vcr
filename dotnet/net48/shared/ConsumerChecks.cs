// What every .NET Framework consumer checks, the same in an MSTest project and
// in the packages.config console program: the engine was put in the output
// directory by the package (SERVIRTIUM_VCR_LIB is unset), and the canonical
// tape replays through HttpWebRequest, the client .NET Framework code uses.
using System;
using System.IO;
using System.Net;
using Servirtium.Vcr;

namespace Servirtium.Vcr.Net48Consumer
{
    public static class ConsumerChecks
    {
        public static string Tape(string name) =>
            Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "tapes", name);

        // Where the build put servirtium_vcr.dll: next to the assembly, or
        // under runtimes\win-<arch>\native\ for an AnyCPU build.
        public static string EngineLocation()
        {
            if (!string.IsNullOrEmpty(Environment.GetEnvironmentVariable("SERVIRTIUM_VCR_LIB")))
                throw new InvalidOperationException("SERVIRTIUM_VCR_LIB is set: this check is about the packaged engine");
            string baseDir = AppDomain.CurrentDomain.BaseDirectory;
            string arch = Environment.Is64BitProcess ? (IsArm64() ? "arm64" : "x64") : "x86";
            foreach (string candidate in new[] {
                         Path.Combine(baseDir, "servirtium_vcr.dll"),
                         Path.Combine(baseDir, "runtimes", "win-" + arch, "native", "servirtium_vcr.dll") })
            {
                if (File.Exists(candidate)) return candidate;
            }
            throw new FileNotFoundException("no servirtium_vcr.dll for win-" + arch + " under " + baseDir);
        }

        private static bool IsArm64() =>
            System.Runtime.InteropServices.RuntimeInformation.ProcessArchitecture
            == System.Runtime.InteropServices.Architecture.Arm64;

        // GET /ok against the canonical tape: "ok-body", outcome Ok.
        public static string ReplayCanonicalTape()
        {
            using (VcrServer vcr = Vcr.Playback(Tape("single_get.md")).Start())
            {
                var request = (HttpWebRequest)WebRequest.Create(vcr.BaseUrl + "/ok");
                string body;
                using (var response = (HttpWebResponse)request.GetResponse())
                using (var reader = new StreamReader(response.GetResponseStream()))
                {
                    body = reader.ReadToEnd().Trim();
                }
                if (body != "ok-body") throw new Exception("expected ok-body, got '" + body + "'");
                if (vcr.LastKind != VcrOutcome.Ok) throw new Exception("expected outcome Ok, got " + vcr.LastKind);
                vcr.AssertNoMismatches();
                vcr.AssertAllConsumed();
                return body;
            }
        }
    }
}
