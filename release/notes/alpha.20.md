# Servirtium 2.0.0-alpha.20

Most of this release comes from a .NET Framework 4.8 user's field report:
a test suite recording and replaying a TFS 2018 SOAP client on Windows.

## Breaking changes

Servirtium 2.x keeps no deliberate backward compatibility. This release
removes what was left of it, in every binding at once:

- **Closing a record VCR without `commit` writes no tape, and raises.**
  Closing, disposing, stopping or dropping a record VCR used to write the
  tape. Now only an explicit commit writes it (`commit()` / `Commit()`;
  `flush-tape` in Janet, `sv_close_and_flush` in C, `flush()` in C++),
  and `discard()` drops the recording. A record VCR closed with neither
  writes nothing and raises (Python `VcrError`, .NET `VcrException`, Java
  `VcrException`, Go returns an error, Rust's `close()` returns an error
  and dropping it uncommitted panics, C++'s and Swift's destructors print
  to stderr, ...) with: "record VCR closed without commit or discard, so
  no tape was written". So a test that fails part-way, or forgets to
  commit, can no longer mint a tape that later replays as the truth. The
  scoped helpers (`with` in Python, `with_record` in Elixir, `withRecord`
  in Haskell and Swift, `startThenDo:` in Pharo, `usingRecord` in F#, the
  block forms in Ruby and Crystal, Julia's do-block, ...) discard the
  recording when the block raises. Playback close is unchanged. Rust's
  `finish()` is renamed `commit()`; Zig's `Server.stop()` is gone. Every
  binding, its docs, examples and tests changed in the one commit. New C
  ABI: `aether_vcr_embed_close(handle) -> char*` ("" or the message).
- **`MatchJsonBody` / `MatchXmlBody` are gone** (`match_json_body`,
  `matchJsonBody`, `:match-json-body`, `pbMatchJsonBody`, and the XML
  twins, in every binding). They were aliases: `PrettyJson(n)` /
  `PrettyXml(n)` on a playback builder turn on the same canonical
  request-body matching. C ABI `aether_vcr_embed_set_match_json_body` and
  `aether_vcr_embed_set_match_xml_body` are removed.
- **Lua**: `servirtium.playback(tape)` / `servirtium.record(tape, up)` no
  longer start the server when a server method is called on the builder
  (call `:start()`), no longer take an `opts` table (use `:host()`,
  `:port()`, `:label()`), and the free-function aliases
  (`servirtium.base_url(srv)`, `servirtium.close(srv)`, ...) are gone.
- **.NET**: `VolatileRule(VolatileScope, pattern, VolatileKind)` takes
  enums (the string overload is gone); `Substitute` and
  `SubstituteOptional` take a `VcrResponseField` (`ResponseBody`,
  `ResponseHeaders`, `Response`), and `VcrField.Response` is gone.
- **C ABI additions**: `aether_vcr_embed_close`,
  `aether_vcr_embed_set_rewrite_upstream_base` and
  `aether_vcr_embed_get_rewrite_upstream_base`. The tape format is
  unchanged.
- Ruby's 1.x `todobackend_compatibility_test.rb` and Python's 1.x
  `todobackend_test_suite.md` are deleted; the TodoBackend suite runs from
  `integration/todobackend/`.

## Added

- **Record mode pairs each client connection with its own upstream
  connection**, so connection-bound authentication (NTLM, and Negotiate
  carrying NTLM: IIS Windows Authentication, TFS, SharePoint, SSRS,
  intranet WCF) records correctly. Before, the recorder's upstream
  connections came from a process-wide pool keyed by origin: two clients'
  handshakes interleaved over one connection and the first was refused, a
  connection one client had authenticated answered another client's
  anonymous request as that user, and a Type 3 on a new client connection
  succeeded where the server refuses it. Each client connection now gets
  one upstream connection of its own, closed when the client's closes.
  Needs Aether 0.939.0. See `pre-recorded/ntlm/README.md`, finding (a).
- **`rewrite_upstream_base`** (record mode, opt-in, every binding:
  `RewriteUpstreamBase()` in .NET, `rewrite_upstream_base()` in Python, ...):
  a service that writes its own absolute URLs into responses (TFS's location
  service, a HATEOAS API, a paging `nextLink`, a `Location`) no longer sends
  the client around the recorder. The upstream's base URL becomes the
  recorder's in what the client receives, the recorder's becomes the
  upstream's in what is forwarded, and the tape holds `{{baseUrl}}` for
  both. C ABI `aether_vcr_embed_set_rewrite_upstream_base` /
  `_get_rewrite_upstream_base`. See `docs/vcr-address.md`.
- **.NET Framework: the package puts the native engine in the output
  directory** for `packages.config` projects, `PackageReference` without a
  `RuntimeIdentifier`, and projects that reach the package through a
  `ProjectReference` (`build/net48/` and `buildTransitive/net48/` targets).
  AnyCPU gets both Windows engines under `runtimes\win-*\native\`; a 32-bit
  build fails with `SVCR001` instead of a `DllNotFoundException` at run time.
- **.NET: API documentation and a README in the package**
  (`Servirtium.Vcr.xml` for both targets), and the package names its
  repository and licence.

## Changed

- **`{{baseUrl}}`, `{{request.host}}` and `{{request.scheme}}` are filled on
  the request side of a tape too**, from the live request, when playback
  compares; they were filled in responses only. A tape whose requests carry
  the VCR's own URL (a SOAP `To`, a callback) replays on any port; no
  `Placeholder` and no port before `Start()`.
- **Mismatch reports**: the heading names the outcome
  (`(HeaderValueDiff)`, not `(kind 3)`); no empty `test:` or `source: :0`
  line without a test context; a header or method difference is not printed
  twice; when the tape has run out, the report shows the request's headers
  and body.
- **`remove_transport_headers` also drops `Expect`**, which .NET Framework's
  `HttpWebRequest` sends on every POST.
- Package manifests name the repository (Maven poms, npm, Composer, shards,
  dub, Hex, Gleam, NuGet); the Java pom's URL, SCM and licence (MIT) and the
  Elixir package's licence (MIT) were wrong and are corrected.
- **.NET's tests run on .NET Framework 4.8 too**, against the packed
  package, on Windows (`dotnet/net48/check.sh`). One fault surfaced and is
  fixed in the test: .NET Framework's `HttpClientHandler` replaces a
  hand-set `Cookie` header with its cookie container's.
- **`pre-recorded/ntlm` drives NTLM with Python clients only**, pinned in
  its `requirements.txt`: the curl client is replaced by a pyspnego client
  that sends its Type 1 first and holds a POST body back until the Type 3,
  so nothing is skipped for want of a curl built with NTLM. Its README says
  how to re-record and what changes on each run.
