# forgejo

Recordings of the Forgejo health check and API (`/api/healthz`, `/api/v1/user`), from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`is_healthy_and_has_the_default_admin.md`](is_healthy_and_has_the_default_admin.md) | GET /api/healthz (200), then GET /api/v1/user as the default admin (200). | [test_forgejo.ae#L98](test_forgejo.ae#L98) |
| [`creates_the_admin_with_custom_credentials.md`](creates_the_admin_with_custom_credentials.md) | GET /api/v1/user as the custom admin (200), then as the default admin, which no longer exists (401). | [test_forgejo.ae#L121](test_forgejo.ae#L121) |

## Replaying from another language

The test file's `PORTING` comments ([test_forgejo.ae](test_forgejo.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- The admin user is created by the module at container start (a command in the container), not by an HTTP call, so it is not on a tape.
- Basic credentials are on the tapes as `Basic REDACTED[<label>]` (a literal swap, put back on playback).
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test forgejo/test_forgejo.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test forgejo/test_forgejo.ae   # live container, Servirtium in the middle, tapes written to forgejo/
TCAE_VCR=check    ae test forgejo/test_forgejo.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test forgejo/test_forgejo.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: GPL-3.0-or-later (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
