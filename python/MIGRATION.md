# Servirtium Python → Aether VCR migration

**Status (2026-05-24):** DONE. The Python Servirtium reimplementation
(markdown reader/writer, the `http.server`/proxy record-replay server, the
recorder + replayer, the interaction model) is deleted, replaced by a thin
`ctypes` wrapper over the native VCR library built from
`std/http/server/vcr/embed.ae`. Playback, mismatch diagnostics, record→replay,
redaction, header removal, notes, and drift detection are proven end-to-end by
`test/` against the real native lib.

## Why

The 1.x repo was a Python *reimplementation* of Servirtium: a markdown
parser/emitter, an interaction model, an `http.server`-based record/replay
proxy server, a recorder, and a replayer (~860 lines). All of that logic now
exists — tested and maintained — in the Aether standard library at
`std/http/server/vcr`, shared across every language binding.

The new shape: **this repo wholly depends on the Aether VCR for core
record/replay** and keeps only Python-flavored glue — a `ctypes` binding to a
precompiled native VCR library plus an idiomatic Python test fixture. No
backwards compatibility with the previous API.

## Architecture (target)

```
pytest / unittest test
   │  servirtium.playback(tape).port(0).start()  /  servirtium.record(tape, upstream).start()
   ▼
servirtium (this repo)               ── thin Python (ctypes) ──
   │  ctypes  aether_vcr_embed_*()
   ▼
libservirtium_vcr.{so,dylib,dll}     ── ae build --emit=lib --with=fs,net
   │  (the Aether VCR core: parse, dispatch, record, mutate, emit)
   ▼
SUT  ⇄  http://127.0.0.1:<port>      ── the SUT talks HTTP to the VCR
```

The system-under-test only ever sees an HTTP base URL — exactly the
server-first model the Aether VCR is designed around.

## What got deleted (1.x → 2.0)

- `servirtium/markup.py`, `servirtium/markdown_parser.py` — markdown
  parse/emit. (Aether owns this.)
- `servirtium/playback.py`, `servirtium/recorder.py` — the `http.server`
  record/replay server + proxy, recorder, replayer. (Aether owns forwarding
  and dispatch.)
- `servirtium/interactions.py`, `servirtium/interaction_recording.py`,
  `definitions.py` — the old interaction model.
- The matching `test/test_*.py` (markdown parser, markup, recorder).
- `Dockerfile` / `docker-compose.yml` — they hosted the old standalone server.

## What stays / is new

- `servirtium/_native.py` — **new**: `ctypes` bindings to the
  `aether_vcr_embed_*` ABI + the native-lib loader (`SERVIRTIUM_VCR_LIB` →
  bundled `native/` → OS loader).
- `servirtium/_vcr.py` — **new**: idiomatic builders/fixture (`playback`,
  `record`, `PlaybackBuilder`, `RecordBuilder`, `VcrServer`, `Field`,
  `Outcome`, `VcrError`).
- `servirtium/native/libservirtium_vcr.so` — the prebuilt native VCR engine.
- The Servirtium markdown tape format and the compatibility suite —
  unchanged; format interop is the whole point.

## API change at a glance

```python
# playback
with servirtium.playback("tapes/my_api.md").port(0).start() as vcr:
    # point the SUT at vcr.base_url, drive it ...
    assert vcr.last_kind is servirtium.Outcome.OK

# record
with servirtium.record("tapes/my_api.md", "https://api.example.com") \
        .remove_header(servirtium.Field.RESPONSE_HEADERS, "Set-Cookie") \
        .redact(servirtium.Field.REQUEST_HEADERS, real_token, "Bearer REDACTED") \
        .port(0).start() as vcr:
    # ... drive the SUT ...  (close/exit flushes the tape)
    pass
```
