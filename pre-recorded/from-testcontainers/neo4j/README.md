# neo4j

Recordings of the Neo4j HTTP API (Cypher over `/db/neo4j/tx/commit`), from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`provides_a_bolt_url_that_speaks_bolt_and_runs_cypher_over_http.md`](provides_a_bolt_url_that_speaks_bolt_and_runs_cypher_over_http.md) | POST a Cypher statement to /db/neo4j/tx/commit with no authentication (200). | [test_neo4j.ae#L130](test_neo4j.ae#L130) |
| [`takes_an_admin_password_and_refuses_an_auth_setting.md`](takes_an_admin_password_and_refuses_an_auth_setting.md) | The same statement against a server with an admin password set (401); no credentials involved. | [test_neo4j.ae#L150](test_neo4j.ae#L150) |

## Replaying from another language

The test file's `PORTING` comments ([test_neo4j.ae](test_neo4j.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- Only the HTTP API is on the tapes. The Bolt handshake (raw TCP), the container environment and the refused AUTH setting run live only.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test neo4j/test_neo4j.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test neo4j/test_neo4j.ae   # live container, Servirtium in the middle, tapes written to neo4j/
TCAE_VCR=check    ae test neo4j/test_neo4j.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test neo4j/test_neo4j.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: GPL-3.0 (Community Edition) (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
