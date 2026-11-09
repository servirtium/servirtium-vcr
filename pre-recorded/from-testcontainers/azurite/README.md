# azurite

Recordings of the Azure Blob and Queue service endpoints (unauthenticated listing), as answered by an emulator of Azure Storage (`?`), not Azure Storage itself.

## Who it is for

Teams integrating with Azure Storage who want tapes to replay in their own tests, in any language, before or without running anything.

## Fidelity

These tapes are what the emulator said, not what Azure Storage said. They are useful up to the point of your first recording against the real service: the real service may differ from the emulator by characters, words or whitespace (error codes and messages, header names and values, JSON field order and formatting, ids, authentication challenges, API-version behaviour). Treat them as a scaffold to start writing tests and client code, record against the real service as soon as you can, and keep your own tapes from then on.

Known differences from the real service, from the test and tapes:

- The tapes show only Azurite's refusals of unauthenticated requests. They say nothing about how real Azure Storage answers signed requests; the `403 AuthorizationFailure` body is Azurite's own, and the test says only the emulator on that port says it.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`serves_blob_queue_and_table_urls.md`](serves_blob_queue_and_table_urls.md) | GET /devstoreaccount1?comp=list on the blob port, unauthenticated: 403 AuthorizationFailure. | [test_azurite.ae#L89](test_azurite.ae#L89) |
| [`serves_blob_queue_and_table_urls_queue.md`](serves_blob_queue_and_table_urls_queue.md) | The same listing on the queue port (its own tape: a different service of the same container): 403 in the queue service's XML. | [test_azurite.ae#L95](test_azurite.ae#L95) |
| [`runs_only_the_enabled_services.md`](runs_only_the_enabled_services.md) | Blob listing with only the blob service enabled: 403 AuthorizationFailure. | [test_azurite.ae#L119](test_azurite.ae#L119) |

## Replaying from another language

The test file's `PORTING` comments ([test_azurite.ae](test_azurite.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- These requests are deliberately unauthenticated (no Shared Key, no SAS): nothing to redact. A client that signs with Shared Key signs over `x-ms-date`; see the test's PORTING comment for how to treat it (credential preset, leave `x-ms-date` out).
- Azurite's path-style URLs carry the account name (`devstoreaccount1`).
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test azurite/test_azurite.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test azurite/test_azurite.ae   # live container, Servirtium in the middle, tapes written to azurite/
TCAE_VCR=check    ae test azurite/test_azurite.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test azurite/test_azurite.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: MIT (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
