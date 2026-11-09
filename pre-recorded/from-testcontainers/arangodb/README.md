# arangodb

Recordings of the ArangoDB HTTP API (`/_api/version`), from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`authenticates_the_root_password.md`](authenticates_the_root_password.md) | GET /_api/version with the configured root password (200), then with no credentials and with the default root password (both 401). | [test_arangodb.ae#L91](test_arangodb.ae#L91) |

## Replaying from another language

The test file's `PORTING` comments ([test_arangodb.ae](test_arangodb.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- Credentials are on the tape as `REDACTED[root]` (the set password) and `REDACTED[root-default]` (the refused default); replay matches the headers literally, so send the same two.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test arangodb/test_arangodb.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test arangodb/test_arangodb.ae   # live container, Servirtium in the middle, tapes written to arangodb/
TCAE_VCR=check    ae test arangodb/test_arangodb.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test arangodb/test_arangodb.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: Apache-2.0 (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
