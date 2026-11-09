# gcloud_pubsub

Recordings of the Pub/Sub REST API, as answered by an emulator of Google Cloud Pub/Sub (`?`), not Google Cloud Pub/Sub itself.

**The tapes are not shipped.** This directory has the test and the recorder only. The vendor's terms could reasonably be read as forbidding what publishing recordings would amount to, so we leave them out. See [LICENCE-NOTE.md](LICENCE-NOTE.md) for the clause and the commands, and record your own with `TCAE_VCR=record` (below); keep them on your machine, they are under the terms you accepted by running the image. The case table below lists the tapes that recording writes.

## Who it is for

Teams integrating with Google Cloud Pub/Sub who want to record tapes of it once and replay them in their own tests, in any language, without running the service again.

## Fidelity

These tapes are what the emulator said, not what Google Cloud Pub/Sub said. They are useful up to the point of your first recording against the real service: the real service may differ from the emulator by characters, words or whitespace (error codes and messages, header names and values, JSON field order and formatting, ids, authentication challenges, API-version behaviour). Treat them as a scaffold to start writing tests and client code, record against the real service as soon as you can, and keep your own tapes from then on.

## Cases

Each row is one tape that recording writes; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records it.

| Tape | What it does | Test |
|---|---|---|
| `starts_the_emulator.md` | Create a topic and subscription, publish one message, pull it. | [test_gcloud_pubsub.ae#L100](test_gcloud_pubsub.ae#L100) |

## Replaying from another language

The test file's `PORTING` comments ([test_gcloud_pubsub.ae](test_gcloud_pubsub.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- Requests carry `Authorization: Bearer owner`. Project id `pubsub-project`. A fresh emulator numbers messages from 1, so `messageId` and `ackId` are stable; message data is base64.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test gcloud_pubsub/test_gcloud_pubsub.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test gcloud_pubsub/test_gcloud_pubsub.ae   # live container, Servirtium in the middle, tapes written to gcloud_pubsub/
TCAE_VCR=check    ae test gcloud_pubsub/test_gcloud_pubsub.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test gcloud_pubsub/test_gcloud_pubsub.ae   # no container, no engine: replay the tapes (skips with a notice if you have none)
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: ? (class ?). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE). This suite's tapes are not shipped: see [LICENCE-NOTE.md](LICENCE-NOTE.md).
