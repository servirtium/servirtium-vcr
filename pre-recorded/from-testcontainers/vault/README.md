# vault

Recordings of the HashiCorp Vault HTTP API, from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`reads_and_writes_secrets_with_the_chosen_token.md`](reads_and_writes_secrets_with_the_chosen_token.md) | MODULE: the root token chosen with `token()` writes and reads a secret. | [test_vault.ae#L475](test_vault.ae#L475) |
| [`runs_with_no_options.md`](runs_with_no_options.md) | MODULE: dev-mode defaults. | [test_vault.ae#L522](test_vault.ae#L522) |
| [`logs_in_with_userpass_and_ends_the_session.md`](logs_in_with_userpass_and_ends_the_session.md) | LOGIN: userpass with a wrong and the right password, who-am-I, renew, revoke. | [test_vault.ae#L564](test_vault.ae#L564) |
| [`logs_in_with_an_approle.md`](logs_in_with_an_approle.md) | LOGIN: enable approle, make a role and a secret id, log in with a wrong and the right secret id. | [test_vault.ae#L615](test_vault.ae#L615) |
| [`refuses_a_client_without_a_valid_token.md`](refuses_a_client_without_a_valid_token.md) | A request with a bad token is refused (403). | [test_vault.ae#L660](test_vault.ae#L660) |
| [`reports_health_seal_status_leader_and_init.md`](reports_health_seal_status_leader_and_init.md) | Health, seal status, leader and init, all without a token. | [test_vault.ae#L690](test_vault.ae#L690) |
| [`mounts_tunes_and_unmounts_a_secrets_engine.md`](mounts_tunes_and_unmounts_a_secrets_engine.md) | Mount, read, tune and unmount a secrets engine. | [test_vault.ae#L734](test_vault.ae#L734) |
| [`writes_reads_lists_and_deletes_an_acl_policy.md`](writes_reads_lists_and_deletes_an_acl_policy.md) | Write, read, list and delete an ACL policy; capabilities. | [test_vault.ae#L782](test_vault.ae#L782) |
| [`enforces_a_read_only_policy.md`](enforces_a_read_only_policy.md) | A reader token (bob) may read and is refused writes. | [test_vault.ae#L829](test_vault.ae#L829) |
| [`kv2_writes_reads_and_versions_a_secret.md`](kv2_writes_reads_and_versions_a_secret.md) | KV v2: write, read, CAS, versions, metadata. | [test_vault.ae#L874](test_vault.ae#L874) |
| [`kv2_soft_deletes_undeletes_and_destroys_versions.md`](kv2_soft_deletes_undeletes_and_destroys_versions.md) | KV v2: soft delete, undelete, destroy. | [test_vault.ae#L920](test_vault.ae#L920) |
| [`kv2_lists_annotates_and_patches_secrets.md`](kv2_lists_annotates_and_patches_secrets.md) | KV v2: list, custom metadata, patch. | [test_vault.ae#L969](test_vault.ae#L969) |
| [`kv1_stores_replaces_lists_and_deletes_secrets.md`](kv1_stores_replaces_lists_and_deletes_secrets.md) | KV v1: store, replace, list, delete. | [test_vault.ae#L1023](test_vault.ae#L1023) |
| [`wraps_a_response_and_unwraps_it_once.md`](wraps_a_response_and_unwraps_it_once.md) | Response wrapping (`X-Vault-Wrap-TTL`): unwrap once, then refused. | [test_vault.ae#L1063](test_vault.ae#L1063) |
| [`keeps_the_cubbyhole_private_to_each_token.md`](keeps_the_cubbyhole_private_to_each_token.md) | The cubbyhole is private to each token. | [test_vault.ae#L1094](test_vault.ae#L1094) |
| [`transit_creates_rotates_configures_and_deletes_a_key.md`](transit_creates_rotates_configures_and_deletes_a_key.md) | Transit key lifecycle. | [test_vault.ae#L1129](test_vault.ae#L1129) |
| [`transit_encrypts_decrypts_and_rewraps.md`](transit_encrypts_decrypts_and_rewraps.md) | Transit encrypt, decrypt, rewrap. | [test_vault.ae#L1186](test_vault.ae#L1186) |
| [`transit_signs_verifies_hashes_and_hmacs.md`](transit_signs_verifies_hashes_and_hmacs.md) | Transit sign, verify, hash, HMAC. | [test_vault.ae#L1236](test_vault.ae#L1236) |
| [`creates_looks_up_renews_and_revokes_a_child_token.md`](creates_looks_up_renews_and_revokes_a_child_token.md) | Child token: create, look up, renew, revoke. | [test_vault.ae#L1285](test_vault.ae#L1285) |
| [`limits_a_tokens_uses_and_revokes_one_by_accessor.md`](limits_a_tokens_uses_and_revokes_one_by_accessor.md) | Use-limited token; revoke by accessor. | [test_vault.ae#L1322](test_vault.ae#L1322) |
| [`revokes_a_tokens_children_with_it.md`](revokes_a_tokens_children_with_it.md) | Revoking a token revokes its children. | [test_vault.ae#L1353](test_vault.ae#L1353) |
| [`answers_the_representative_error_statuses.md`](answers_the_representative_error_statuses.md) | Representative error statuses. | [test_vault.ae#L1387](test_vault.ae#L1387) |

## Replaying from another language

The test file's `PORTING` comments ([test_vault.ae](test_vault.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- Every request is plain HTTP/1.1 with `User-Agent`, `Content-Type: application/json` when there is a body, `X-Vault-Token` (all but the no-token cases) and, for one request, `X-Vault-Wrap-TTL: 60`. Send JSON bodies byte for byte as written in the test (no spaces). Vault's list is `GET ...?list=true`.
- Login has its own two tapes (`logs_in_with_userpass_and_ends_the_session`, `logs_in_with_an_approle`). Every other API case is already logged in as user `alice`: send any `X-Vault-Token: <anything>`; the tapes hold `X_VAULT_TOKEN_N` and playback matches it on presence, so a replay cannot tell a good token from a forged one. Cases that show a missing token send no header. Login passwords are labelled redactions (`REDACTED[alice]`, `REDACTED[alice-wrong-password]`): send `alice-pass` and `not-the-password`.
- Normalized values come back as tokens verbatim (`{{token-N}}`, `{{accessor-N}}`, `{{uuid-N}}`, `{{blob-N}}`): opaque, send back as received with the braces unescaped.
- Three cases have their JSON keys sorted (Vault 1.13 returns a legacy copy of the data at the top level in random order): `mounts_tunes_and_unmounts_a_secrets_engine`, `writes_reads_lists_and_deletes_an_acl_policy`, `enforces_a_read_only_policy`.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test vault/test_vault.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test vault/test_vault.ae   # live container, Servirtium in the middle, tapes written to vault/
TCAE_VCR=check    ae test vault/test_vault.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test vault/test_vault.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: MPL-2.0 (before HashiCorp's BSL change) (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
