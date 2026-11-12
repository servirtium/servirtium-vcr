// Servirtium harness for the Azure SDK for .NET's own Azure.Storage.Blobs
// tests. Compiled into that test assembly by Servirtium.AzureHarness.targets;
// none of the SDK's files are edited. Licence: as servirtium-vcr (MIT).
//
// One session per test run: the mode (record or playback), where tapes live,
// the port Servirtium listens on for every test, and in record mode the
// Azurite container that Servirtium forwards to.

using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Threading.Tasks;
using Testcontainers.Azurite;

namespace Servirtium.AzureHarness
{
    // Direct: no Servirtium; the tests talk to Azurite itself. A baseline, to
    // tell a test that fails because Azurite lacks the feature from one that
    // fails because of the recording.
    public enum HarnessMode { Record, Playback, Direct }

    public sealed class ServirtiumHarnessSession : IAsyncDisposable
    {
        // Azurite's well-known development account (published in Azurite's
        // README and Microsoft's docs; not a secret).
        public const string AccountName = "devstoreaccount1";
        public const string AccountKey = "Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw==";

        private const string AzuriteDebugLog = "/tmp/azurite-debug.log";

        public HarnessMode Mode { get; }
        public string TapeDir { get; }
        public int Port { get; }
        public string UpstreamBlobBase { get; }
        public string LicenseNotice { get; }
        public string WorkDir { get; }
        public long MaxTapeBytes { get; }

        private readonly AzuriteContainer _azurite;
        private readonly List<(string Pattern, string Reason)> _exclusions;

        private ServirtiumHarnessSession(HarnessMode mode, string tapeDir, int port, string upstream, string notice, AzuriteContainer azurite, List<(string, string)> exclusions, string work, long maxTapeBytes)
        {
            WorkDir = work;
            MaxTapeBytes = maxTapeBytes;
            _exclusions = exclusions;
            Mode = mode;
            TapeDir = tapeDir;
            Port = port;
            UpstreamBlobBase = upstream;
            LicenseNotice = notice;
            _azurite = azurite;
        }

        public static async Task<ServirtiumHarnessSession> StartAsync()
        {
            string modeText = Required("SERVIRTIUM_MODE");
            HarnessMode mode = modeText switch
            {
                "record" => HarnessMode.Record,
                "playback" => HarnessMode.Playback,
                "direct" => HarnessMode.Direct,
                _ => throw new InvalidOperationException($"SERVIRTIUM_MODE must be record, playback or direct, not '{modeText}'"),
            };
            string tapeDir = Path.GetFullPath(Required("SERVIRTIUM_TAPES"));
            string work = Path.GetFullPath(Required("SERVIRTIUM_WORK"));
            Directory.CreateDirectory(work);

            // One fixed port for every test and both modes: URLs the SDK puts
            // in request headers (copy sources) carry it, so it must not vary.
            int port = int.Parse(Required("SERVIRTIUM_PORT"), CultureInfo.InvariantCulture);
            AzuriteContainer azurite = null;
            string upstream = "";
            if (mode != HarnessMode.Playback)
            {
                string image = Required("AZURITE_IMAGE");
                AzuriteBuilder builder = new AzuriteBuilder(image)
                    .WithInMemoryPersistence()
                    // The SDK sends the newest x-ms-version it knows, which can
                    // be newer than this Azurite release accepts.
                    .WithCommand("--skipApiVersionCheck");
                if (!string.IsNullOrEmpty(Environment.GetEnvironmentVariable("SERVIRTIUM_AZURITE_DEBUG")))
                {
                    // Azurite's debug log (each request, and the string it
                    // signed for Shared Key and SAS), copied out at the end.
                    builder = builder.WithCommand("--debug", AzuriteDebugLog);
                }
                azurite = builder.Build();
                await azurite.StartAsync().ConfigureAwait(false);
                upstream = $"http://127.0.0.1:{azurite.GetMappedPublicPort(AzuriteBuilder.BlobPort)}";
            }

            string endpoint = mode == HarnessMode.Direct ? upstream : $"http://127.0.0.1:{port}";
            string configPath = Path.Combine(work, "TestConfigurations.xml");
            File.WriteAllText(configPath, TestConfigurationsXml($"{endpoint}/{AccountName}"));
            // The Storage tests read their account from this file (Live mode).
            // Set before any test touches TestConfigurations.
            Environment.SetEnvironmentVariable("AZ_STORAGE_CONFIG_PATH", configPath);

            string notice = string.Join("\n",
                "Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,",
                $"from Azure/azure-sdk-for-net at {Required("AZSDK_COMMIT")} (MIT licence),",
                $"run unchanged in Live mode against Azurite ({Required("AZURITE_IMAGE")}, MIT licence), Microsoft's Azure Storage emulator,",
                "not against Azure. Azure.Storage.Blobs built from that same commit.",
                "Account devstoreaccount1 is Azurite's published development account; its key is not a secret.");

            string excludedFile = Environment.GetEnvironmentVariable("SERVIRTIUM_EXCLUDED");
            // One or more files, ':'-separated.
            var exclusions = new List<(string, string)>();
            foreach (string f in (excludedFile ?? "").Split(':', StringSplitOptions.RemoveEmptyEntries))
            {
                exclusions.AddRange(ReadExclusions(f));
            }

            // A tape over this size (bulk upload or download data) is not
            // kept: the test is listed in <work>/oversized.txt instead.
            string maxKib = Environment.GetEnvironmentVariable("SERVIRTIUM_MAX_TAPE_KIB");
            long maxTapeBytes = 1024L * (string.IsNullOrEmpty(maxKib) ? 128 : long.Parse(maxKib, CultureInfo.InvariantCulture));

            return new ServirtiumHarnessSession(mode, tapeDir, port, upstream, notice, azurite, exclusions, work, maxTapeBytes);
        }

        public async ValueTask DisposeAsync()
        {
            if (_azurite != null)
            {
                string debugCopy = Environment.GetEnvironmentVariable("SERVIRTIUM_AZURITE_DEBUG");
                if (!string.IsNullOrEmpty(debugCopy))
                {
                    File.WriteAllBytes(debugCopy, await _azurite.ReadFileAsync(AzuriteDebugLog).ConfigureAwait(false));
                }
                await _azurite.DisposeAsync().ConfigureAwait(false);
            }
        }

        // excluded.txt: "## reason" starts a group; each following line names
        // a test as <Class>.<test name> (both sync and async fixtures), a
        // trailing * matching any rest. Blank lines and "#" comments skip.
        private static List<(string, string)> ReadExclusions(string path)
        {
            var list = new List<(string, string)>();
            string reason = "(no reason given)";
            foreach (string raw in File.ReadAllLines(path))
            {
                string line = raw.Trim();
                if (line.StartsWith("## ", StringComparison.Ordinal))
                {
                    reason = line.Substring(3).Trim();
                }
                else if (line.Length > 0 && !line.StartsWith("#", StringComparison.Ordinal))
                {
                    list.Add((line, reason));
                }
            }
            return list;
        }

        // The reason a test is excluded, or null.
        public string ExclusionFor(string className, string testName)
        {
            string shortClass = className == null ? "" : className.Substring(className.LastIndexOf('.') + 1);
            string key = shortClass + "." + testName;
            foreach ((string pattern, string reason) in _exclusions)
            {
                bool hit = pattern.EndsWith("*", StringComparison.Ordinal)
                    ? key.StartsWith(pattern.Substring(0, pattern.Length - 1), StringComparison.Ordinal)
                    : key == pattern;
                if (hit)
                {
                    return reason;
                }
            }
            return null;
        }

        private static string Required(string name)
        {
            string v = Environment.GetEnvironmentVariable(name);
            if (string.IsNullOrEmpty(v))
            {
                throw new InvalidOperationException($"the Servirtium harness needs {name} set (run.sh sets it)");
            }
            return v;
        }

        // One tenant, pointed at Servirtium. Queue, File and Table endpoints
        // are there only because some tests build connection strings
        // naming all four; a test that calls one of them fails and is
        // excluded. The Storage tests' other tenants
        // (premium, OAuth, soft delete, ...) are left out, so tests needing
        // them come back Inconclusive, as they do for anyone without them.
        private static string TestConfigurationsXml(string blobEndpoint) =>
            $@"<TestConfigurations>
  <TargetTestTenant>AzuriteViaServirtium</TargetTestTenant>
  <TargetSecondaryTestTenant>NotConfigured</TargetSecondaryTestTenant>
  <TargetPremiumBlobTenant>NotConfigured</TargetPremiumBlobTenant>
  <TargetPreviewBlobTenant>NotConfigured</TargetPreviewBlobTenant>
  <TargetOAuthTenant>NotConfigured</TargetOAuthTenant>
  <TargetKeyVault>NotConfigured</TargetKeyVault>
  <TargetHierarchicalNamespaceTenant>NotConfigured</TargetHierarchicalNamespaceTenant>
  <TargetManagedDiskTenant>NotConfigured</TargetManagedDiskTenant>
  <TargetBlobAndContainerSoftDeleteTenant>NotConfigured</TargetBlobAndContainerSoftDeleteTenant>
  <TargetPremiumFileTenant>NotConfigured</TargetPremiumFileTenant>
  <TargetManagedDisk>NotConfigured</TargetManagedDisk>
  <TenantConfigurations>
    <TenantConfiguration>
      <TenantName>AzuriteViaServirtium</TenantName>
      <TenantType>DevStore</TenantType>
      <AccountName>{AccountName}</AccountName>
      <AccountKey>{AccountKey}</AccountKey>
      <BlobServiceEndpoint>{blobEndpoint}</BlobServiceEndpoint>
      <QueueServiceEndpoint>{blobEndpoint}</QueueServiceEndpoint>
      <FileServiceEndpoint>{blobEndpoint}</FileServiceEndpoint>
      <TableServiceEndpoint>{blobEndpoint}</TableServiceEndpoint>
      <ConnectionString>DefaultEndpointsProtocol=http;AccountName={AccountName};AccountKey={AccountKey};BlobEndpoint={blobEndpoint};</ConnectionString>
    </TenantConfiguration>
  </TenantConfigurations>
  <KeyVaultConfigurations />
  <ManagedDiskConfigurations />
</TestConfigurations>
";
    }
}
