# Azure SDK for .NET, Blob Storage tests, through Servirtium

The [Azure SDK for .NET](https://github.com/Azure/azure-sdk-for-net)'s own
`Azure.Storage.Blobs` test suite, unchanged, with Servirtium in the middle of
every test's HTTP:

1. **Record**: the tests run against [Azurite](https://github.com/Azure/Azurite)
   (Microsoft's Azure Storage emulator) in a container, Servirtium between
   them, and each test's conversation is written to a markdown tape in
   [`tapes/`](tapes/).
2. **Playback**: the same tests run again with no container and no container
   engine; Servirtium answers every request from the test's tape.
3. **Negative**: a tape altered by hand (a metadata value, a blob's bytes, a
   request path) makes its test fail, so playback is checking something.

The Azure SDK has its own record/playback (the Azure SDK test proxy), the
most mature of the cloud SDKs'. This harness puts Servirtium where that
proxy would be, for a suite of thousands of tests that Microsoft writes and
maintains, and with no Azure account.

## Running it

Needs the [.NET SDK](https://dotnet.microsoft.com/download) (10.0; 8.0 is not
enough to build the SDK's tests), `git`, and for recording Docker or Podman.
Then, from the repository root:

```sh
aeb sdk_harnesses/azure-sdk-for-net/.tests.ae    # fetch + build, then playback and the negative checks (offline after the fetch)
aeb sdk_harnesses/azure-sdk-for-net/.record.ae   # re-record against Azurite, then play the new tapes back
```

or the script those call, `run.sh`:

```sh
./run.sh build      # fetch.sh, then build the Blobs test project with the harness added
./run.sh playback   # replay tapes/ (no container engine: DOCKER_HOST points nowhere)
./run.sh negative   # each tamper in negative.txt must make its test fail
./run.sh record     # Azurite via testcontainers-dotnet, tapes rewritten
./run.sh direct     # Azurite with no Servirtium: the baseline for excluded.txt
./run.sh playback 'FullyQualifiedName~ContainerClientTests&Name=CreateAsync_Metadata'
```

Results: `target/results-<mode>.log` (console) and `target/results/<mode>/*.trx`.

This was developed and run on Linux x86_64 (CachyOS, rootless Podman): the
.NET binding ships only the `linux-x64` native library today, and the Mac
has no .NET SDK installed (see "Why Linux" below).

## How Servirtium is put in the middle

Nothing in the SDK's tests or its Storage sources is edited. The pieces:

- **The test project, built as fetched**, with
  `-p:CustomAfterMicrosoftCommonTargets=harness/Servirtium.AzureHarness.targets`.
  That MSBuild hook adds the harness's two C# files and the Servirtium
  .NET binding (`dotnet/Servirtium.Vcr`, by ProjectReference) to the
  `Azure.Storage.Blobs.Tests` assembly, and leaves five files out of the
  compilation (below).
- **Live mode, endpoint = Servirtium.** The Storage tests read their account
  from a `TestConfigurations.xml` named by `AZ_STORAGE_CONFIG_PATH`. The
  harness writes one with a single tenant, Azurite's published development
  account `devstoreaccount1`, whose blob endpoint is
  `http://127.0.0.1:10170/devstoreaccount1`: Servirtium. `AZURE_TEST_MODE=Live`,
  so the SDK's own test proxy is never started and the clients talk HTTP to
  that endpoint directly. Shared Key signatures go through Servirtium
  untouched (the string signed names the account and path, not the host),
  so Azurite verifies them; SAS URLs likewise.
- **One tape per test** ([`harness/ServirtiumPerTestAttribute.cs`](harness/ServirtiumPerTestAttribute.cs)):
  an assembly-level NUnit action opens a Servirtium VCR on port 10170 before
  each test (record: forwarding to Azurite's mapped port; playback: the
  test's tape) and closes it after. Record keeps a tape only for a test that
  passed (or stopped Inconclusive after its HTTP); playback fails a passing
  test whose tape has interactions it never asked for
  (`AssertAllConsumed`), and any request the tape does not hold is answered
  with Servirtium's mismatch error, which the SDK raises. The tests run one
  at a time (`NUnit.NumberOfTestWorkers=1`) because they share the port.
- **Azurite** is started from C# with
  [testcontainers-dotnet](https://github.com/testcontainers/testcontainers-dotnet)'s
  Azurite module ([`harness/ServirtiumHarnessSession.cs`](harness/ServirtiumHarnessSession.cs)),
  in-memory, with `--skipApiVersionCheck` (the SDK sends the newest
  `x-ms-version` it knows, newer than Azurite 3.37 accepts). Servirtium
  records with `ForwardHost()`, so Azurite sees the Host the SDK addressed
  (it checks copy-source URLs against it). Rootless Podman
  works through its Docker API socket (`run.sh` sets `DOCKER_HOST`); Ryuk is
  off and the harness disposes the container itself.

### Making Live mode repeatable: the one patch

In Live mode the SDK's test framework draws container and blob names, test
data, lease ids and Guids from a crypto-seeded random, and stamps SAS expiry
times and access policies with the real clock. Its own Record and Playback
modes make those repeatable by storing a random seed and "now" in the test
proxy's recording. A Servirtium tape needs the same, so
[`framework-live-determinism.patch`](framework-live-determinism.patch)
(11 lines, applied by `fetch.sh` to the fetched `Azure.Core.TestFramework`,
MIT) lets Live mode take both from the running NUnit test's properties when
present:

- `Servirtium.Seed`: set by the harness to a hash of the test's full name,
  so record and playback draw the same names, bytes and Guids;
- `Servirtium.Now`: in record the moment the test started, written into the
  tape's note (`now: ...`); in playback read back from it.

Without the properties the framework behaves exactly as before.

### What the tapes leave out, and the one token

Shared by both modes (they decide matching too):

| Rule | Why |
|---|---|
| `x-ms-date`, `x-ms-client-request-id`, `User-Agent` request headers removed | a fresh value every request (the date the signature covers, a new Guid), and the OS and runtime |
| tracing headers removed (`IgnoreVolatileHeaders`); request `Host`, `Connection`, `Content-Length`, `Expect` and response `Connection`, `Keep-Alive`, `Transfer-Encoding` removed | `traceparent` is per request; the rest frame the connection. A response's `Content-Length` stays: a HEAD's is the blob's size, which the tests read |
| `Authorization` kept as `SharedKey AUTHORIZATION_N` (`RedactCredentials`) | the signature changes with `x-ms-date`; matched on presence |

Record only:

| Rule | Why |
|---|---|
| response `x-ms-client-request-id` written as `{{request.header.x-ms-client-request-id}}` | the service echoes the request's id and the SDK refuses a response carrying another; playback fills the token from the live request (new in core, see below) |
| `RequestId:<guid>` / `Time:<timestamp>` in Azurite's error bodies collapsed | a new value every run |
| Azurite's mapped `host:port` written as `{{request.host}}` | URLs it builds from the Host it was sent |

Responses otherwise keep every header Azurite sent (the tests read
`x-ms-request-id`, `ETag`, `Last-Modified`). Each tape starts with a licence
notice naming the SDK commit, the Azurite image and that the account is
Azurite's published development one.

## Counts

Last run 2026-11-12 on cachyos (Linux x86_64, rootless Podman), SDK at the
commit in `versions.env`, Azurite 3.37.0. Each test runs twice (the sync
and the async fixture), on the latest service version only (Live mode).

| Class | Test runs | Pass: record (Azurite) | Pass: playback (no engine) | Excluded or skipped |
|---|---|---|---|---|
| ContainerClientTests | 496 | 387 | 387 | 109 |
| ServiceClientTests | 98 | 67 | 67 | 31 |
| BlobBaseClientTests | 736 | 476 | 476 | 260 |
| BlobClientTests | 142 | 100 | 100 | 42 |
| BlockBlobClientTests | 258 | 150 | 150 | 108 |
| AppendBlobClientTests | 148 | 98 | 98 | 50 |
| PageBlobClientTests | 290 | 200 | 200 | 90 |
| **Total** | **2168** | **1478** | **1478** | **690** |

No test failed in either mode. Of the 690 not run: 433 fail against Azurite
itself (`excluded.txt`, from `run.sh direct`), 54 have tapes over the cap,
48 move bulk data, 20 stage blocks with unseedable ids, 2 depend on another
class's test (those four in `excluded.txt`'s last group and
`excluded-by-hand.txt`), and 133 are skipped by the SDK itself (a tenant we
do not have, `[PlaybackOnly]`, features the SDK team paused or marked
too slow).

1110 tapes, 13 MB (the passing tests that made HTTP requests; 641 of them
hold a binary body as base64). Negative: the three alterations in
[`negative.txt`](negative.txt) (a listed blob's name in a response body,
one base64 character of an uploaded blob, a 201 turned 409) each make
their test fail, and only the altered fixture's.

## What is excluded, and why

- **Left out of the compilation** (by `Servirtium.AzureHarness.targets`, not
  edited): `AzuriteNUnitFixture.cs` (an assembly-wide setup that starts
  Azurite from a local npm install for `LargeBlobTests`; without that
  install it fails every test's setup), `LargeBlobTests.cs` (its only user:
  a 2 GiB block, `[LiveOnly]`), and `ManagedDiskFixture.cs`,
  `ManagedDiskTests.cs`, `ImmutableStorageWithVersioningTests.cs` (managed
  disks and immutability policies are set up through Azure Resource
  Manager, an Azure subscription; leaving them out also drops the project's
  two Resource Manager references, which need far more of the repository to
  build).
- **Skipped by the SDK itself in Live mode**: `[PlaybackOnly]` tests,
  service-version-gated tests and tests needing a tenant we do not have
  (OAuth, premium, soft delete, hierarchical namespace, key vault) end
  Ignored or Inconclusive, as they do for anyone without an Azure account.
- **[`excluded.txt`](excluded.txt)**: tests that fail against Azurite
  itself, with no Servirtium anywhere (`run.sh direct`), grouped by how
  they fail. Generated from that run's results by
  [`exclusions_from_trx.py`](exclusions_from_trx.py) (a maintenance tool;
  the harness needs only .NET). A test that passes against Azurite directly
  and fails through Servirtium is never excluded: it is a Servirtium bug,
  and the ones found are fixed (below). The harness skips an excluded test
  with `Assert.Ignore` and the group's reason. The same file's last group
  lists tests that pass through Servirtium but whose tape is over 128 KiB
  (`SERVIRTIUM_MAX_TAPE_KIB`; bulk upload or download data): a record run
  drops such a tape and lists the test in `target/work/record/oversized.txt`,
  which the script takes with `--oversized`.
- **[`excluded-by-hand.txt`](excluded-by-hand.txt)**: tests that move
  16 MiB to 1 GiB (recording one buffers the body several times over in
  Servirtium, and a 256 MiB upload took the 16 GB host into the OOM killer;
  the tape would be hundreds of megabytes); one test that passes only
  after another class's test has set the account's service properties
  (each class gets a fresh Azurite); and the tests that upload in staged
  blocks, whose block ids the SDK library draws from
  `RandomNumberGenerator`, out of any seed's reach (the SDK's own test
  proxy ignores the `blockid` query parameter for the same reason; see the
  open questions).

The tests run one class per test process (`run_selection` in `run.sh`), so
memory is returned between classes.

## Servirtium changes this needed

Found here, fixed in `core/vcr.ae` with a core test each (each fails on the
code before the fix):

1. **Binary bodies** (`core_tests/test_vcr_binary_body.ae`). Blob uploads
   and downloads carry random bytes, which the recorder copied into the
   markdown raw. A body that is not text (NUL or another control byte, or
   not UTF-8) is now written as base64, wrapped at 76 columns, under a
   heading marked `base64 below`: `### Request body recorded for playback
   (application/octet-stream base64 below):` and `### Response body recorded
   for playback (200: application/octet-stream base64 below):`. A marked
   request body is decoded when the tape is read, so playback compares
   bytes; marked response bodies were already decoded on replay (HAR
   import's convention). Text bodies, CRLF included, are unchanged.
2. **An empty PUT keeps `Content-Length: 0`**
   (`core_tests/test_vcr_empty_body_framing.ae`). Record mode did not
   forward the header (hop-by-hop to it) and sent none for an empty body;
   Azurite answers a create-append-blob PUT without it with 400.
3. **`{{request.header.NAME}}`** (`core_tests/test_vcr_request_header_token.ae`):
   a response token playback fills with the live request's header, for
   services that echo a request id the client checks.
4. **A Content-Encoding the recorder does not decode is kept**
   (`core_tests/test_vcr_content_encoding_kept.ae`). Azure Storage returns
   a blob's stored Content-Encoding as the response header whatever its
   bytes are; a properties request for a blob stored as `deflate,gzip`
   made the recorder try to inflate an empty body and answer 500. Only
   `gzip` alone on a body that inflates is decoded now; anything else keeps
   header and bytes, and playback replays the header.
5. **`ForwardHost()`, opt-in** (`core_tests/test_vcr_forward_host_and_expect.ae`,
   .NET `ForwardHostTests`): record mode sends the upstream the client's
   `Host`, as a Host-preserving reverse proxy does. Azurite accepts a copy
   source (Copy Blob, Put Block From URL) only on the host the request was
   sent to, and the SDK builds that URL from the address it uses,
   Servirtium's. Wrapped by the .NET binding only so far.
6. **A HEAD response keeps its Content-Length**
   (`core_tests/test_vcr_head_content_length.ae`), in record mode's answer
   and on playback. A blob's size is its properties HEAD's Content-Length;
   both servers framed their own empty body and said 0
   (`PageBlobClientTests.ResizeAsync`).
7. **Playback adds no Content-Type the recording lacked**
   (`core_tests/test_vcr_no_invented_content_type.ae`). The heading's
   `text/plain` default became a header, and the SDK then parsed an empty
   error body instead of reading `x-ms-error-code`
   (`BlobBaseClientTests.GetPropertiesAsync_Error`).
8. **`Expect` is not forwarded** (same core test). With `Expect:
   100-continue` forwarded, Azurite answers an interim `100 Continue`,
   which Aether's HTTP client returns as the final response (an Aether bug,
   written up in [`asks/aether-http-client-interim-1xx.md`](../../asks/aether-http-client-interim-1xx.md)).

## Footprint, and wiping it

Everything the harness downloads or writes is under `target/` here: the
fetched SDK sources and their build output (`target/azsdk`, sparse, 355 MB built), NuGet packages
and caches (`NUGET_PACKAGES`, `NUGET_HTTP_CACHE_PATH`, ...), the dotnet CLI
home (`DOTNET_CLI_HOME`), MSBuild's temp files (`TMPDIR`), a `HOME` for
.NET's certificate revocation cache, build output and results.
[`env.sh`](env.sh) sets all of it. About 2.2 GB in all after a run, 1.8 GB
of it NuGet packages. To wipe the harness before trying the next SDK:

```sh
rm -rf sdk_harnesses/azure-sdk-for-net/target
podman rmi mcr.microsoft.com/azure-storage/azurite:3.37.0   # the one image record pulls (or docker rmi)
```

Outside `target/` it needs only the dotnet SDK (on the Linux host it came
from the distribution's `dotnet-sdk` package, 10.0.114; `env.sh` would also
use one unpacked into `target/dotnet`). No dotnet global tools, no MSBuild
or compiler server left running (`MSBUILDDISABLENODEREUSE`,
`UseSharedCompilation=false`), no npm, no Azure test proxy.

## Licences and provenance

- **Azure/azure-sdk-for-net**: MIT. Fetched at the commit in
  [`versions.env`](versions.env), never checked in. The one file of theirs
  that is changed, in `target/` only, is `TestRecording.cs`, by the 11-line
  patch here.
- **Azurite**: MIT. The image tag is in `versions.env` and in every tape.
- **testcontainers-dotnet**: MIT, a NuGet package restored into `target/`.
- **The tapes** are recordings of Azurite answering the SDK's tests: made
  only against software running locally, never against Azure or any hosted
  API, with Azurite's published development account and the tests' own
  generated data. Each names its provenance in its licence notice.
- "Azure" and "Azurite" are Microsoft's product names, used here only to
  say what was tested.

## Why Linux, and why not the Mac

The .NET binding packs only the `linux-x64` native library (its
`.build.ae`), and the Mac has no .NET SDK installed; installing one there,
and a NuGet restore of a few hundred packages, would also be the kind of
network-heavy toolchain step that pops permission dialogs. `cachyos` has the
SDK, rootless Podman and the Aether toolchain.

## Optional second proof (not done)

The SDK's official test-proxy recordings of these tests live in
[Azure/azure-sdk-assets](https://github.com/Azure/azure-sdk-assets) (MIT;
`assets.json` names the tag). Converting one locally to a Servirtium tape
and playing it back here was planned as a second, local-only proof (never
publishing converted content: those were recorded against real Azure). It
needs a `servirtium convert` for test-proxy JSON (the converters work),
matching that ignores `x-ms-version` (the recordings checked, at the tag in
`assets.json`, were made with an older SDK), the recording's
`RandomSeed`/`DateTimeOffsetNow` handed to the patch above, and an account
path matching theirs (they are host-style, `https://<account>.blob...`).
