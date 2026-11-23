# Servirtium.Vcr

Record and replay HTTP for service tests, in Servirtium's Markdown tape
format, on .NET 8 or later and .NET Framework 4.8. Point the system under
test at a local URL: in **record** mode the VCR forwards to the real service
and writes what was said to a tape; in **playback** it answers from the tape,
with no network. A thin .NET layer over the servirtium-vcr native engine
(shipped in this package for Windows, Linux and macOS, x64 and arm64).

```csharp
using Servirtium.Vcr;

// Playback: replay a tape on a free port.
using var vcr = Vcr.Playback("tapes/work_items.md").Start();
var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };
// ... drive the code under test ...
vcr.AssertNoMismatches();   // every request matched the tape
vcr.AssertAllConsumed();    // and every recorded interaction was replayed

// Record: forward to the real service and write the tape.
using var rec = Vcr.Record("tapes/work_items.md", "http://tfs.example:8080/tfs")
    .RemoveTransportHeaders()
    .RedactCredentials()
    .RewriteUpstreamBase()
    .Start();
// ... drive the code under test against rec.BaseUrl ...
rec.Commit();               // write the tape now (Discard() drops it)
```

## The builders

Both `Vcr.Playback(tape)` and `Vcr.Record(tape, upstream)` return a builder;
`Start()` opens the VCR and returns a `VcrServer`. Common options:

- `Port(int)` (0, the default, takes a free port; read it from
  `VcrServer.Port` / `BaseUrl`), `Host(string)`.
- Headers: `RemoveTransportHeaders()` (Host, Connection, Content-Length, the
  other hop-by-hop headers, the request's Accept-Encoding and Expect),
  `IgnoreVolatileHeaders()` (traceparent, Request-Id and the like),
  `RemoveHeader(VcrField, name)`, `RemoveCloudHeaders(vendor)`,
  `RedactCredentials()`.
- Values that differ run to run: `VolatileRule(VolatileScope, pattern,
  VolatileKind)`, for example
  `VolatileRule(VolatileScope.RequestBody, "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>")`;
  `Bind(name, value)`.
- `Tls(cert, key)` / `TlsFromPem(...)`: serve https.

Both: `PrettyJson()` and `PrettyXml()` (recording writes the bodies indented;
playback matches request bodies by canonical form).

Playback only: `MatchMultiple()`, `StrictHeaders()`, `MatchHeader(name)`,
`PlaybackRange(from, to)`,
`Unredact(VcrField, pattern, value)` (request side) and
`Substitute(VcrResponseField, pattern, value)` (the replayed response).

Record only: `Redact(...)`, `RedactHeader`, `RedactQueryParam`,
`RedactJsonField`, `RedactWholeTape`,
`AddLicenseNotice(text)`, `FailIfChanged()`, `RequireLoopbackUpstream()`,
`RewriteUpstreamBase()` (a service that hands out its own absolute URLs keeps
the client on the recorder; the tape holds `{{baseUrl}}`).

## The VCR's own address

`{{baseUrl}}`, `{{request.host}}` and `{{request.scheme}}` on a tape are filled
from the live request on playback, in the response and in what is compared on
the request side, so a tape with URLs that point back at the VCR replays on
any port. No `Placeholder` and no port before `Start()` are needed for them.

## Diagnostics

`LastKind` (`VcrOutcome`), `LastError`, `AssertNoMismatches()`,
`DiagnosticsJson()`, `TestContext(name, file, line)` (names the test in
reports). A mismatch report names the outcome, the first difference, and,
when the tape has run out, the request's headers and body.

## .NET Framework 4.8

The package copies the Windows engine into the output directory for
`PackageReference` (directly, or through a project reference) and for
`packages.config` projects. There is no 32-bit engine: a 32-bit build fails
with `SVCR001`; build x64 (or ARM64). `CreateClientHandler` is .NET 8+ only.

More: https://github.com/servirtium/servirtium-vcr/tree/main/dotnet
