# Servirtium Ruby

![](Servirtium-Square.png?raw=true)

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Ruby.

You point your system-under-test at a local URL. In **playback** it replays a
recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```ruby
require 'servirtium'
require 'net/http'

Servirtium.playback('spec/tapes/climate_api.md').port(0).start do |server|
  res = Net::HTTP.get_response(URI.join(server.base_url, '/api/v1/countries'))
  # ... assert on res ...
  raise server.last_error unless server.last_kind == :ok   # optional: assert a clean match
end
```

## What this is (and isn't)

Since **2.0**, this is a thin Ruby layer over the **Aether VCR** core. All
record/replay machinery — markdown parse/emit, the HTTP server, request
matching, redactions, notes, drift detection, static bypass, gzip/chunked
handling — lives in libservirtium_vcr (`core/vcr.ae`, with the
`core/embed.ae` C-ABI), built on Aether's standard-library primitives (its
HTTP server, regex, zlib, …) and built once to `core/native/libservirtium_vcr.so`.
This gem loads that precompiled native build via Ruby's stdlib
[Fiddle](https://docs.ruby-lang.org/en/master/Fiddle.html); it does **not**
reimplement Servirtium in Ruby.

> **Breaking from 0.x:** the old Ruby Servirtium server/recorder/replayer and
> their API are gone, with no shim. The new API is below / in
> [docs/usage.md](docs/usage.md). The tape *format* is unchanged, so existing
> tapes replay as-is.

## Getting it

The `servirtium` gem is **not on RubyGems yet**. Use Bundler's git source on the release tag
(`glob:` because the gemspec lives in the `ruby/` subdirectory), and fetch the native library
from the same release; the gem finds it through `SERVIRTIUM_VCR_LIB`. Ruby 3.3+ with Fiddle,
run in your own project directory:

```sh
set -eu
TAG=v2.0.0-alpha.17                      # a release tag of servirtium-vcr; nothing else to edit
REL=https://github.com/servirtium/servirtium-vcr/releases/download/$TAG
RAW=https://raw.githubusercontent.com/servirtium/servirtium-vcr/$TAG
# 1. the native library for this OS/arch, checksum-verified, into ~/.servirtium-vcr/$TAG
case "$(uname -s)" in
  Linux)   OS=linux;   EXT=so;    ldd --version 2>&1 | grep -qi musl && LIBC=-musl || LIBC= ;;
  Darwin)  OS=macos;   EXT=dylib; LIBC= ;;
  FreeBSD) OS=freebsd; EXT=so;    LIBC= ;;
  *) echo "unsupported OS (Windows: take the .dll asset by hand)"; exit 1 ;;
esac
case "$(uname -m)" in x86_64|amd64) ARCH=x86_64 ;; arm64|aarch64) ARCH=arm64 ;; *) echo "unsupported arch"; exit 1 ;; esac
LIBDIR="$HOME/.servirtium-vcr/$TAG"        # keep it OUT of your git tree
mkdir -p "$LIBDIR"
LIB=libservirtium_vcr-$TAG-$OS-$ARCH$LIBC.$EXT
curl -fsSL -o "$LIBDIR/$LIB" "$REL/$LIB"
curl -fsSL -o "$LIBDIR/$LIB.sha256" "$REL/$LIB.sha256"
( cd "$LIBDIR" && { sha256sum -c "$LIB.sha256" 2>/dev/null || shasum -a 256 -c "$LIB.sha256"; } )
cp "$LIBDIR/$LIB" "$LIBDIR/libservirtium_vcr.$EXT"     # the loader/linker want the plain name

# 2. the gem, from the tag (RubyGems spelling of the tag: 2.0.0.alpha.17)
[ -f Gemfile ] || bundle init
bundle config set --local path vendor/bundle    # skip if your gem directory is writable (system Ruby's is not); gitignore vendor/
echo "gem 'fiddle'" >> Gemfile                 # Ruby 3.4 warns, Ruby 4 fails under Bundler without it
echo "gem 'servirtium', git: 'https://github.com/servirtium/servirtium-vcr.git', tag: '$TAG', glob: 'ruby/*.gemspec'" >> Gemfile
bundle install

# 3. check it: replay a recorded tape
export SERVIRTIUM_VCR_LIB="$LIBDIR/libservirtium_vcr.$EXT"      # set this wherever your tests run
mkdir -p tapes
curl -fsSL -o tapes/single_get.md $RAW/ruby/example/tapes/single_get.md
bundle exec ruby -rnet/http -rservirtium -e '
vcr = Servirtium.playback("tapes/single_get.md").port(0).start
puts Net::HTTP.get(URI(vcr.base_url + "/ok")), vcr.last_kind_code.zero? ? "(clean match)" : "(MISMATCH)"   # -> ok-body (clean match)
vcr.close'
```

The dependency line is the `gem 'servirtium', git: ...` line above. The future registry form is
`gem 'servirtium', '2.0.0.alpha.17'` (RubyGems rejects `2.0.0-alpha.17`: use the dotted
spelling); it does not resolve today.

### Notes for coding agents

- `Permission denied @ dir_s_mkdir - /usr/lib/ruby/gems/...` from `bundle install` means a
  system Ruby with a root-owned gem directory: use a local `path` (as above), a Ruby version
  manager, or `GEM_HOME`; never `sudo bundle`.
- Do not write `gem 'servirtium'` or `gem 'servirtium', '2.0.0.alpha.17'` with no `git:`: it is not
  published, so Bundler reports `Could not find gem 'servirtium'` (or resolves an unrelated
  older gem of that name). Do not drop `glob: 'ruby/*.gemspec'`: without it Bundler looks for
  a gemspec at the repo root and says `There are no gemspecs at ...`.
- Use `tag:` (or `ref:`), not `branch: 'main'`: the library must be at least as new as the Ruby
  source, and `main` can be ahead of the last release. A library older than the binding fails with a
  `Fiddle::DLError` naming a missing `aether_vcr_embed_...` symbol.
- `could not load native VCR library (tried: ...)` means `SERVIRTIUM_VCR_LIB` is unset in the
  process running the tests (IDE, CI step, `bundle exec` in another shell), is not an absolute
  path, or is for the wrong libc/arch (`-musl` on Alpine). `native_lib:` on `Servirtium.playback`
  is the in-code alternative.
- Do not copy the `.so` into the bundler checkout (`bundle info servirtium` shows it): it
  disappears when the checkout is refreshed. Do not commit it.
- Ruby 3.4 prints `fiddle was loaded from the standard library, but will no longer be part of
  the default gems`; on Ruby 4+ that is a `LoadError` under Bundler. The binding does not declare
  `fiddle` itself, so your Gemfile must (the `gem 'fiddle'` line above).
- `servirtium.gemspec` requires Ruby `>= 3.3.0`.
- Windows: use the `.dll` asset; `SERVIRTIUM_VCR_LIB` takes its full path.

## Record and replay a local service

Save this as `try_servirtium.rb` in the `app` directory and run
`ruby try_servirtium.rb`. It uses Ruby's standard libraries to serve one HTTP
request, record it to `hello.md`, stop the upstream, and replay from the tape.
No test framework or separate web-server gem is required.

```ruby
require 'socket'
require 'json'
require 'net/http'
require 'servirtium'

upstream = TCPServer.new('127.0.0.1', 0)
upstream_url = "http://127.0.0.1:#{upstream.addr[1]}"
worker = Thread.new do
  client = upstream.accept
  begin
    request = client.gets
    while (line = client.gets) && line != "\r\n"; end
    raise "Unexpected request: #{request}" unless request == "GET /hello?name=README HTTP/1.1\r\n"

    body = JSON.generate(message: 'Hello, README!')
    client.write("HTTP/1.1 200 OK\r\nContent-Type: application/json\r\n" \
                 "Content-Length: #{body.bytesize}\r\nConnection: close\r\n\r\n#{body}")
  ensure
    client.close
  end
end

def get_greeting(server)
  uri = URI.join(server.base_url, '/hello?name=README')
  response = Net::HTTP.start(uri.host, uri.port, open_timeout: 5, read_timeout: 10) do |http|
    http.get(uri.request_uri)
  end
  raise "Unexpected status: #{response.code}" unless response.code == '200'
  raise "Unexpected body: #{response.body}" unless JSON.parse(response.body) == { 'message' => 'Hello, README!' }
  raise server.last_error unless server.last_kind == :ok
end

begin
  Servirtium.record('hello.md', upstream_url).port(0).start do |server|
    get_greeting(server)
  end # Block exit closes the recorder and writes hello.md.
  worker.value # Wait for the upstream handler and propagate any error.
ensure
  worker.kill
  worker.join
  upstream.close
end

# The upstream is stopped; this request is answered from the tape alone.
Servirtium.playback('hello.md').port(0).start do |server|
  get_greeting(server)
end

puts File.read('hello.md')
puts 'Recorded hello.md and replayed it with the upstream stopped.'
```

The tape contains the method, path including the query string, headers, and
JSON body. It is written in your current directory; rerunning overwrites it.
For your own tests, replace `upstream_url` with your service URL and point your
application's HTTP client at `server.base_url`. The block form of `.start`
closes and flushes the recorder even if an assertion raises.

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, volatile values, header removal, notes, strict
  matching, static content, drift, diagnostics — with code.
- **[docs/features.md](docs/features.md)** — capability matrix mapping each
  Servirtium feature to the Ruby API and its test.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering works
  (Ruby → Fiddle → `core/embed.ae` → `core/vcr.ae`), the native loader, and the
  one-server-per-port (handle-based) model.
- **[docs/building.md](docs/building.md)** — building libservirtium_vcr (via
  `aeb`) and releasing.
- **[MIGRATION.md](MIGRATION.md)** — the 0.x → 2.0 rewrite story.

## Concurrency: one server per port

libservirtium_vcr uses a **one server per port** ABI: N independent VCR servers
can run concurrently in one process, each keyed by its own handle, with its own
tape, replay cursor, mutations, and diagnostics — nothing is process-global.
Two `Servirtium.playback(...).start` servers can be alive at once without their
cursors or mutations bleeding into each other.

See [docs/architecture.md](docs/architecture.md#concurrency-one-server-per-port) and
`spec/` for worked examples.

## Building from source

Maintainers building the native library can use the repository toolchains
described in [the development setup](../docs/dev-setup.md). From the repo root:

```sh
aeb ruby/.tests.ae    # builds libservirtium_vcr, then runs rspec
```

Details in [docs/building.md](docs/building.md).
