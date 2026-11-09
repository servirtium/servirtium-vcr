# rabbitmq

Recordings of the RabbitMQ management HTTP API (port 15672), from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`speaks_amqp_and_answers_the_management_api_as_guest.md`](speaks_amqp_and_answers_the_management_api_as_guest.md) | MODULE: the management API as `guest` (200). | [test_rabbitmq.ae#L526](test_rabbitmq.ae#L526) |
| [`applies_custom_credentials.md`](applies_custom_credentials.md) | MODULE: custom credentials accepted (200); `guest:guest` refused (401). | [test_rabbitmq.ae#L555](test_rabbitmq.ae#L555) |
| [`authenticates_with_http_basic.md`](authenticates_with_http_basic.md) | LOGIN: `/api/whoami` with no credentials, a wrong password and an unknown user (401s) and `guest:guest` (200); `/api/overview` with and without. | [test_rabbitmq.ae#L638](test_rabbitmq.ae#L638) |
| [`reports_the_overview_and_cluster_name.md`](reports_the_overview_and_cluster_name.md) | Overview and cluster name. | [test_rabbitmq.ae#L670](test_rabbitmq.ae#L670) |
| [`lists_the_nodes_and_one_node.md`](lists_the_nodes_and_one_node.md) | The nodes list and one node. | [test_rabbitmq.ae#L701](test_rabbitmq.ae#L701) |
| [`answers_the_health_checks.md`](answers_the_health_checks.md) | Health checks. | [test_rabbitmq.ae#L734](test_rabbitmq.ae#L734) |
| [`creates_changes_lists_and_deletes_virtual_hosts.md`](creates_changes_lists_and_deletes_virtual_hosts.md) | Virtual host lifecycle. | [test_rabbitmq.ae#L777](test_rabbitmq.ae#L777) |
| [`creates_a_user_grants_permissions_and_deletes_it.md`](creates_a_user_grants_permissions_and_deletes_it.md) | A user, its permissions and its deletion (logs in as the second user). | [test_rabbitmq.ae#L830](test_rabbitmq.ae#L830) |
| [`declares_inspects_and_deletes_exchanges.md`](declares_inspects_and_deletes_exchanges.md) | Exchanges. | [test_rabbitmq.ae#L891](test_rabbitmq.ae#L891) |
| [`declares_inspects_purges_and_deletes_queues.md`](declares_inspects_purges_and_deletes_queues.md) | Queues. | [test_rabbitmq.ae#L933](test_rabbitmq.ae#L933) |
| [`binds_exchanges_to_queues_and_unbinds_them.md`](binds_exchanges_to_queues_and_unbinds_them.md) | Bindings. | [test_rabbitmq.ae#L982](test_rabbitmq.ae#L982) |
| [`publishes_messages_and_gets_them_back_over_http.md`](publishes_messages_and_gets_them_back_over_http.md) | Publish and get messages over HTTP. | [test_rabbitmq.ae#L1038](test_rabbitmq.ae#L1038) |
| [`reports_queue_depths_after_publishing.md`](reports_queue_depths_after_publishing.md) | Queue depths after publishing. | [test_rabbitmq.ae#L1093](test_rabbitmq.ae#L1093) |
| [`sets_policies_operator_policies_and_global_parameters.md`](sets_policies_operator_policies_and_global_parameters.md) | Policies, operator policies and global parameters. | [test_rabbitmq.ae#L1131](test_rabbitmq.ae#L1131) |
| [`shows_no_connections_channels_or_consumers.md`](shows_no_connections_channels_or_consumers.md) | No connections, channels or consumers on a quiet broker. | [test_rabbitmq.ae#L1176](test_rabbitmq.ae#L1176) |
| [`imports_definitions_and_exports_a_virtual_hosts.md`](imports_definitions_and_exports_a_virtual_hosts.md) | Import definitions and export a virtual host's. | [test_rabbitmq.ae#L1211](test_rabbitmq.ae#L1211) |
| [`answers_the_representative_error_statuses.md`](answers_the_representative_error_statuses.md) | Representative error statuses. | [test_rabbitmq.ae#L1247](test_rabbitmq.ae#L1247) |

## Replaying from another language

The test file's `PORTING` comments ([test_rabbitmq.ae](test_rabbitmq.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- Only the management HTTP API is on the tapes: AMQP is raw TCP (live only), as are the URL shapes and the TLS case.
- HTTP Basic, no session. The login tape's credentials are labelled redactions (`REDACTED[guest]`, `REDACTED[guest-wrong-password]`, `REDACTED[unknown-user]`) put back on replay, so right and wrong stay distinct: send `guest:guest`, `guest:wrong`, `nobody:nobody-pw`.
- Already logged in: every other case carries `Authorization: Basic AUTHORIZATION_1`, matched on presence; send any `Authorization: Basic <anything>`. A replay cannot tell a right password from a wrong one. The node name is normalized as `{{node-N}}`: send it back as received.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test rabbitmq/test_rabbitmq.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test rabbitmq/test_rabbitmq.ae   # live container, Servirtium in the middle, tapes written to rabbitmq/
TCAE_VCR=check    ae test rabbitmq/test_rabbitmq.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test rabbitmq/test_rabbitmq.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: MPL-2.0 (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
