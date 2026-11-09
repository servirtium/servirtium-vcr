# etcd

Recordings of the etcd v3 JSON gateway (`/v3/kv/put`, `/v3/kv/range`), from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`puts_and_gets_on_a_single_node.md`](puts_and_gets_on_a_single_node.md) | POST /v3/kv/put then /v3/kv/range (base64 key and value), one node. | [test_etcd.ae#L220](test_etcd.ae#L220) |
| [`puts_and_gets_on_three_nodes.md`](puts_and_gets_on_three_nodes.md) | Put, then range, through node 1 of a three-node cluster. | [test_etcd.ae#L250](test_etcd.ae#L250) |
| [`puts_and_gets_on_three_nodes_node2.md`](puts_and_gets_on_three_nodes_node2.md) | A range of the same key through node 2 (own tape). | [test_etcd.ae#L250](test_etcd.ae#L250) |
| [`puts_and_gets_on_three_nodes_node3.md`](puts_and_gets_on_three_nodes_node3.md) | A range of the same key through node 3 (own tape). | [test_etcd.ae#L250](test_etcd.ae#L250) |
| [`runs_with_the_data_dir.md`](runs_with_the_data_dir.md) | Put and range on a node started with a data directory option. | [test_etcd.ae#L201](test_etcd.ae#L201) |
| [`appends_additional_args_last.md`](appends_additional_args_last.md) | Put and range on a node started with additional command-line arguments. | [test_etcd.ae#L283](test_etcd.ae#L283) |

## Replaying from another language

The test file's `PORTING` comments ([test_etcd.ae](test_etcd.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- A case that reads through several nodes records one tape per node: `<case>`, `<case>_node2`, `<case>_node3`.
- The test polls a probe key live, before recording, until the gateway answers; the tapes hold only the real put and range. Keys and values are base64 (`sample_key`, `sample_value`).
- Cluster and member ids in response headers are collapsed to constants. `etcdctl`, command lines and endpoint shapes are live-only checks.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test etcd/test_etcd.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test etcd/test_etcd.ae   # live container, Servirtium in the middle, tapes written to etcd/
TCAE_VCR=check    ae test etcd/test_etcd.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test etcd/test_etcd.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: Apache-2.0 (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
