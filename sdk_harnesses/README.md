# SDK harnesses

A big vendor SDK's **own** test suite, unchanged, with Servirtium put in the
middle of its HTTP: recorded once against a locally run emulator, then
replayed with the emulator switched off. The point is to show Servirtium
slotting into a suite someone else wrote and maintains, not tests written
for Servirtium.

Each subdirectory is named after the upstream repository it drives:

| Directory | Upstream suite | Service under test |
|---|---|---|
| [`azure-sdk-for-net/`](azure-sdk-for-net/README.md) | Azure/azure-sdk-for-net, `Azure.Storage.Blobs` tests | Azurite (Azure Storage emulator) in a container |

What every harness here keeps to:

- **The upstream's sources are fetched, never checked in.** A pinned commit,
  sparse-checked-out into the harness's `target/`. What is checked in is the
  glue (how the suite is built and pointed at Servirtium), the runner, the
  README, and the recordings.
- **Recordings are made only against software running locally** (an
  open-source emulator or server in a container), never a vendor-hosted API,
  and each one names its provenance: upstream repository and commit, licence,
  the emulator's image tag.
- **Everything the toolchain downloads stays in the harness's `target/`**
  (package caches, tool homes, the fetched sources), so `rm -rf <harness>/target`
  wipes it before the next SDK.
- **Runner: aeb**, like the rest of this repository: `.build.ae` fetches and
  builds, `.tests.ae` replays (offline), `.record.ae` re-records.

Recordings of a service's API meant for reuse in any language live in
[`pre-recorded/`](../pre-recorded/README.md); a harness's tapes are tied to the
suite that made them.
