# The VCR's own address on a tape

A test hands its client the VCR's base URL (`http://127.0.0.1:54213`), and the
port is the one the VCR got when it started: with port 0 (the default in most
bindings), a different one every run. A tape that holds that address
literally replays only on that port. Three placeholders stand for it instead:

| Placeholder | Filled with | Example |
|---|---|---|
| `{{baseUrl}}` | scheme, `://`, the live request's `Host` | `http://127.0.0.1:54213` |
| `{{request.host}}` | the live request's `Host` | `127.0.0.1:54213` |
| `{{request.scheme}}` | `https` when the VCR serves TLS, else `http` | `http` |

They are filled from the request being answered, on playback, wherever they
are on the tape:

- **In a recorded response** (body and headers): the client gets the address
  it used. A paging `nextLink`, a `Location`, a HATEOAS link or a service
  directory then points back at the VCR. (Bindings' `Substitute` rules run
  after these, for placeholders of your own.)
- **In a recorded request** (path, headers, body), when playback compares the
  live request with the tape: a URL the client sends that points at the VCR
  matches whatever port the VCR has. A SOAP `<a:To>`, a callback URL, a
  `Referer`, a link the service handed out that the client sends back. The
  placeholder is not a wildcard: a different address is a mismatch, and the
  mismatch report shows the expectation filled in, so only the real
  difference shows.

So a test needs to know nothing about the address before the VCR starts: it
starts the VCR (on port 0), reads its base URL, and gives that to the client.
There is no setting to make and no port to pick in advance (which races with
whatever else takes ports on the machine).

`{{request.header.NAME}}` (the live request's `NAME` header) is filled in a
response only: on the request side it would match any value.

## Getting the placeholders onto a tape

Record mode writes what was sent, so a recording holds the recorder's
address where the client sent it and the service's own address where the
service wrote it. A hand-written tape can use the placeholders directly; a
recording gets them from `rewrite_upstream_base`.

### Record mode: `rewrite_upstream_base` (opt-in)

A service that writes its own absolute URLs into its responses (a service
directory such as TFS's location service, SharePoint's, a HATEOAS API, a
paging `nextLink`, a `Location`) hands the client the upstream's address
while recording, and the client then goes straight to the upstream, around
the recorder: those calls are never recorded, and a redaction cannot help,
because it changes only the tape, not what the client receives. With
`rewrite_upstream_base` on, the recorder rewrites the traffic itself:

- in the response the client receives (headers and body), the upstream's
  base URL becomes the recorder's own (`http://127.0.0.1:<port>`, as the
  client addressed it), so the client keeps talking to the recorder;
- in the request forwarded upstream (header values and body), the
  recorder's base URL becomes the upstream's, so the service gets back the
  URLs it handed out;
- on the tape, both become `{{baseUrl}}`, which playback fills on both
  sides, on any port.

The base that is rewritten is the upstream base the recording was opened
with, without a trailing slash, path included: for an upstream base of
`http://tfs:8080/tfs`, `http://tfs:8080/tfs/DefaultCollection/x` becomes
`http://127.0.0.1:54213/DefaultCollection/x`, which the recorder forwards to
`http://tfs:8080/tfs/DefaultCollection/x`. An address outside that base is
left as it is, as is a longer authority that merely starts with it
(`http://tfs:80801`). Open the recording with the base the service writes
(the same host name and port). A gzipped response is rewritten after
decoding and sent to the client decoded; a binary body is never touched; a
rewritten body's recorded `Content-Length` follows it. Off by default.

| Binding | Call |
|---|---|
| C ABI | `aether_vcr_embed_set_rewrite_upstream_base(h, 1)` (and `_get_`) |
| C / C++ | `sv_set_rewrite_upstream_base(vcr, 1)` / `rec.rewrite_upstream_base()` |
| .NET / F# | `RecordBuilder.RewriteUpstreamBase()` / `Servirtium.rewriteUpstreamBase` |
| Java, Kotlin, Scala, Groovy | `RecordBuilder.rewriteUpstreamBase()`; Clojure `{:rewrite-upstream-base true}` |
| Python, Ruby, Rust, Lua | `rewrite_upstream_base()` on the record builder |
| JavaScript, Dart, PHP, Zig, D, Nim, Swift | `rewriteUpstreamBase()` |
| Go | `RecordBuilder.RewriteUpstreamBase()` |
| Elixir | `rewrite_upstream_base: true`; Erlang, Gleam, LFE `set_rewrite_upstream_base(Vcr, true)` |
| Haskell | `recRewriteUpstreamBase = True` |
| Janet | `{:rewrite-upstream-base true}` |
| Crystal, Julia | `rewrite_upstream_base` / `set_rewrite_upstream_base(vcr)` |
| Pharo | `rewriteUpstreamBase` |

## Guarded by

`core_tests/test_vcr_rewrite_upstream_base.ae`: the client gets the recorder's
base (a gzipped body decoded, a longer authority left alone), the upstream
gets its own back, the tape holds `{{baseUrl}}` with a Content-Length that
follows the body and a binary body as sent, the tape replays on another port,
and with the option off nothing changes. `core_tests/origin_fixture.ae`: the
contract every binding's test drives (record through the binding, check the
tape, replay it on another port).

`core_tests/test_vcr_self_address.ae`: a tape with all three in its path, a
request header and its body, replayed on an OS-assigned port, in ordered and
`match_multiple` playback, with and without volatile values; and another
address refused, its report showing the filled-in expectation.
