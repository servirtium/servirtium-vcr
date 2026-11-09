# surrealdb

Recordings of the SurrealDB HTTP API (`/health`, `/sql`), from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`creates_and_selects_a_record.md`](creates_and_selects_a_record.md) | GET /health, POST /sql (CREATE then SELECT). | [test_surrealdb.ae#L143](test_surrealdb.ae#L143) |
| [`requires_the_credentials_with_authentication.md`](requires_the_credentials_with_authentication.md) | POST /sql without credentials (403), then with them (200). | [test_surrealdb.ae#L162](test_surrealdb.ae#L162) |
| [`takes_the_username_and_password_given.md`](takes_the_username_and_password_given.md) | POST /sql with custom credentials (200). | [test_surrealdb.ae#L186](test_surrealdb.ae#L186) |

## Replaying from another language

The test file's `PORTING` comments ([test_surrealdb.ae](test_surrealdb.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- Basic credentials `root:root` and `tcae:s3cret` are on the tapes as `REDACTED[root]` and `REDACTED[tcae]`, matched literally. CREATE is not idempotent: each case has its own container.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test surrealdb/test_surrealdb.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test surrealdb/test_surrealdb.ae   # live container, Servirtium in the middle, tapes written to surrealdb/
TCAE_VCR=check    ae test surrealdb/test_surrealdb.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test surrealdb/test_surrealdb.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: BUSL-1.1 (Apache-2.0 on 2027-04-01) (class BOUND). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE). Each tape starts with a `## LICENSE NOTICE` naming the terms; keep it.
