# consul

Recordings of the HashiCorp Consul HTTP API (ACLs enabled), from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`serves_the_http_api.md`](serves_the_http_api.md) | MODULE: default start (ACLs off). | [test_consul.ae#L493](test_consul.ae#L493) |
| [`takes_a_config_string.md`](takes_a_config_string.md) | MODULE: config string option. | [test_consul.ae#L510](test_consul.ae#L510) |
| [`takes_a_config_file.md`](takes_a_config_file.md) | MODULE: config file option. | [test_consul.ae#L528](test_consul.ae#L528) |
| [`starts_with_gos_testdata_config_json.md`](starts_with_gos_testdata_config_json.md) | MODULE: testcontainers-go's testdata config.json. | [test_consul.ae#L546](test_consul.ae#L546) |
| [`bootstraps_the_acl_system.md`](bootstraps_the_acl_system.md) | LOGIN: anonymous 403s, the ACL bootstrap (`PUT /v1/acl/bootstrap`), the refused second bootstrap, who-am-I with the new token. | [test_consul.ae#L595](test_consul.ae#L595) |
| [`refuses_an_anonymous_or_unknown_token.md`](refuses_an_anonymous_or_unknown_token.md) | Anonymous and unknown tokens refused (403). | [test_consul.ae#L645](test_consul.ae#L645) |
| [`reports_the_leader_peers_datacenters_nodes_and_members.md`](reports_the_leader_peers_datacenters_nodes_and_members.md) | Leader, peers, datacenters, nodes and members. | [test_consul.ae#L680](test_consul.ae#L680) |
| [`kv_puts_gets_lists_and_deletes_keys.md`](kv_puts_gets_lists_and_deletes_keys.md) | KV: put, get, list, delete. | [test_consul.ae#L728](test_consul.ae#L728) |
| [`kv_updates_and_deletes_with_check_and_set.md`](kv_updates_and_deletes_with_check_and_set.md) | KV: update and delete with check-and-set. | [test_consul.ae#L782](test_consul.ae#L782) |
| [`applies_a_transaction_atomically.md`](applies_a_transaction_atomically.md) | Transaction applied atomically. | [test_consul.ae#L821](test_consul.ae#L821) |
| [`sessions_hold_contend_for_and_release_a_lock.md`](sessions_hold_contend_for_and_release_a_lock.md) | Sessions: hold, contend for and release a lock. | [test_consul.ae#L861](test_consul.ae#L861) |
| [`registers_a_service_with_a_ttl_check_and_follows_its_health.md`](registers_a_service_with_a_ttl_check_and_follows_its_health.md) | Service with a TTL check and its health. | [test_consul.ae#L923](test_consul.ae#L923) |
| [`registers_an_external_node_and_service_in_the_catalog.md`](registers_an_external_node_and_service_in_the_catalog.md) | External node and service in the catalog. | [test_consul.ae#L986](test_consul.ae#L986) |
| [`manages_acl_policies_and_tokens_and_enforces_them.md`](manages_acl_policies_and_tokens_and_enforces_them.md) | ACL policies and tokens, and their enforcement. | [test_consul.ae#L1029](test_consul.ae#L1029) |
| [`answers_the_representative_error_statuses.md`](answers_the_representative_error_statuses.md) | Representative error statuses. | [test_consul.ae#L1097](test_consul.ae#L1097) |

## Replaying from another language

The test file's `PORTING` comments ([test_consul.ae](test_consul.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- Every request is plain HTTP/1.1 with `User-Agent`, `Content-Type: application/json` (`text/plain` for a KV value) and `X-Consul-Token` in the logged-in cases. Send JSON bodies byte for byte; query parameters in the order written in the test. Consul's errors are plain text, not JSON.
- The API cases run with ACLs on, default deny. Login is the one-time ACL bootstrap (`bootstraps_the_acl_system`, on its own container). Every other API case is already logged in: send any `X-Consul-Token: <anything>`; the tapes hold `X_CONSUL_TOKEN_N`, matched on presence. Consul's other login (`/v1/acl/login` against an auth method) is out of scope.
- Raft indexes (`CreateIndex`, `ModifyIndex`, `X-Consul-Index`) all become 1 on the tapes: treat an index as opaque, send back what you are given, never assert ordering. uuids are `{{uuid-N}}`.
- Four module cases (ACLs off) are the original representative ones.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test consul/test_consul.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test consul/test_consul.ae   # live container, Servirtium in the middle, tapes written to consul/
TCAE_VCR=check    ae test consul/test_consul.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test consul/test_consul.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: BUSL-1.1 (HashiCorp; MPL-2.0 after four years) (class BOUND). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE). Each tape starts with a `## LICENSE NOTICE` naming the terms; keep it.
