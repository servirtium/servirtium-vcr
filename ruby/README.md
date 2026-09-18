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

## Install

> **Note:** the `servirtium` gem is **not published to RubyGems yet**, so a
> `gem 'servirtium'` line in your Gemfile does **not** give you this library.
> Build a local gem from this repository and a downloaded native library as
> shown below.

Use **Ruby 3.3+** with Fiddle available, RubyGems, and Git. Check `ruby --version`
first; if you use a version manager, select an installed compatible Ruby. The
gemspec declares the minimum version; this directory does not force a specific
Ruby installation. The commands below use a POSIX shell on Linux x86_64.

**1. Get the Ruby package source.** Start in a scratch directory:

```sh
mkdir servirtium-try
cd servirtium-try
git clone --depth 1 https://github.com/servirtium/servirtium-vcr.git
cd servirtium-vcr/ruby
```

**2. Get the native library** (`libservirtium_vcr`) for your OS/arch from the
[GitHub releases](https://github.com/servirtium/servirtium-vcr/releases) — one
prebuilt shared library per platform, each with a `.sha256`. Download and verify
the Linux x86_64 library in the `ruby/` directory:

```sh
curl -fLO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.0/libservirtium_vcr-v0.1.0-linux-x86_64.so
curl -fLO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.0/libservirtium_vcr-v0.1.0-linux-x86_64.so.sha256
sha256sum -c libservirtium_vcr-v0.1.0-linux-x86_64.so.sha256   # -> OK
```

Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
(x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
library. These URLs are for Linux x86_64; select the matching release asset on
other machines. When staging it below, use `libservirtium_vcr.dylib` on macOS
or `servirtium_vcr.dll` on Windows.

**3. Build the gem with the library bundled inside.** Still in
`servirtium-vcr/ruby`:

```sh
mkdir -p lib/servirtium/native
cp libservirtium_vcr-v0.1.0-linux-x86_64.so lib/servirtium/native/libservirtium_vcr.so
gem build servirtium.gemspec
# Produces servirtium-2.0.0.gem for the selected OS/architecture.
```

No Aether compiler, `aeb`, or Bundler setup is needed to build this gem from a
downloaded native library.

**4. Install into a separate app.** Keep the experiment's gems in that app's
own directory, without changing your system gems:

```sh
cd ../..
mkdir app
cd app
export GEM_HOME="$PWD/gems"
export GEM_PATH="$GEM_HOME"
gem install --local --no-document --install-dir "$GEM_HOME" ../servirtium-vcr/ruby/servirtium-2.0.0.gem
```

The installed gem discovers its bundled native library. Run the example below
in this same shell so Ruby uses the isolated gem directory. If you already set
`SERVIRTIUM_VCR_LIB`, unset it to exercise bundled-library discovery.

To use another native build, set `SERVIRTIUM_VCR_LIB` to its **absolute path**
before running Ruby, or pass `native_lib: '/absolute/path/to/library'` to
`Servirtium.record` / `Servirtium.playback` before the first server starts.
Setting that variable does not copy a library into a gem at build time.

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
  unredactions, whole-tape normalization, header removal, notes, strict
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
