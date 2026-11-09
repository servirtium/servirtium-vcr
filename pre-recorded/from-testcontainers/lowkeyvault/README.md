# lowkeyvault

Recordings of the Azure Key Vault REST API (secrets, keys, certificates) over HTTPS, api-version 7.4, as answered by an emulator of Azure Key Vault (`?`), not Azure Key Vault itself.

## Who it is for

Teams integrating with Azure Key Vault who want tapes to replay in their own tests, in any language, before or without running anything.

## Fidelity

These tapes are what the emulator said, not what Azure Key Vault said. They are useful up to the point of your first recording against the real service: the real service may differ from the emulator by characters, words or whitespace (error codes and messages, header names and values, JSON field order and formatting, ids, authentication challenges, API-version behaviour). Treat them as a scaffold to start writing tests and client code, record against the real service as soon as you can, and keep your own tapes from then on.

Known differences from the real service, from the test and tapes:

- Lowkey Vault does not check tokens: any `Authorization: Bearer <anything>` is accepted. So the tapes cannot show how Azure answers a bad or expired token.
- Error bodies are Spring-style, with `com.github.nagyesta.lowkeyvault...` exception codes (see the 404s in `answers_the_representative_error_statuses.md`), not Azure's own error codes and messages. Lowkey Vault answers several client mistakes with 500 or a bare 404, and the tapes keep what it does.
- The default vault is Recoverable and refuses a purge (500 on the purge requests); a successful purge is out of scope of the test, so the tapes never show one.
- It serves HTTPS with a self-signed certificate on the vault port and takes its token from a managed-identity simulation on a second port (8080), which an Azure client would not use against the real service.
- Version ids, key material, certificate bytes and times are normalized or collapsed on the tapes, so they are placeholders, not what Azure returns.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`challenges_and_gets_a_token_from_the_identity_endpoint.md`](challenges_and_gets_a_token_from_the_identity_endpoint.md) | LOGIN (vault port): GET /secrets/tcae-login with no token is answered 401 with the `WWW-Authenticate: Bearer resource=..., authorization_uri=...` challenge; then GET /secrets with a token and with an invented token (both 200). | [test_lowkeyvault.ae#L702](test_lowkeyvault.ae#L702) |
| [`challenges_and_gets_a_token_from_the_identity_endpoint_identity.md`](challenges_and_gets_a_token_from_the_identity_endpoint_identity.md) | LOGIN (metadata port, own tape): GET /metadata/identity/oauth2/token with `X-IDENTITY-HEADER` returns a JWT-shaped access token (200). | [test_lowkeyvault.ae#L691](test_lowkeyvault.ae#L691) |
| [`sets_reads_versions_updates_and_lists_secrets.md`](sets_reads_versions_updates_and_lists_secrets.md) | Set a secret twice, get latest and by version, update attributes of one version, list versions, list with `maxresults` and `$skiptoken` paging. | [test_lowkeyvault.ae#L737](test_lowkeyvault.ae#L737) |
| [`deletes_recovers_and_fails_to_purge_a_secret.md`](deletes_recovers_and_fails_to_purge_a_secret.md) | Delete a secret, list and get deleted secrets, a 409 on re-setting a deleted name, recover it, delete again, and the refused purge (500). | [test_lowkeyvault.ae#L806](test_lowkeyvault.ae#L806) |
| [`creates_keys_and_signs_verifies_wraps_and_encrypts.md`](creates_keys_and_signs_verifies_wraps_and_encrypts.md) | Create RSA and EC keys, a second version, get latest and by version, list, sign and verify (good and bad), wrapKey and unwrapKey, encrypt and decrypt. | [test_lowkeyvault.ae#L867](test_lowkeyvault.ae#L867) |
| [`restricts_deletes_and_recovers_a_key.md`](restricts_deletes_and_recovers_a_key.md) | Update a key's `key_ops`, the refusals that follow (500 on wrapKey, 400 on sign), delete, list and get deleted, recover, rotate. | [test_lowkeyvault.ae#L952](test_lowkeyvault.ae#L952) |
| [`creates_versions_deletes_and_recovers_a_certificate.md`](creates_versions_deletes_and_recovers_a_certificate.md) | Create a self-signed certificate (202), the pending operation, versions, list, policy, delete (404 after), recover, and the refused purge (500). | [test_lowkeyvault.ae#L1017](test_lowkeyvault.ae#L1017) |
| [`signs_a_webhook_with_the_signing_secret.md`](signs_a_webhook_with_the_signing_secret.md) | REAL USAGE: app code reads its `webhook-signing-key` secret from the vault (one GET) and signs a payload with HMAC-SHA256 in-process; the test checks the `X-Signature` header. The secret was stored live before recording; on the tape it is a named secret, and playback hands the app a plausible fake. | [test_lowkeyvault.ae#L1155](test_lowkeyvault.ae#L1155) |
| [`unwraps_the_data_key_and_decrypts_the_config.md`](unwraps_the_data_key_and_decrypts_the_config.md) | REAL USAGE: app code unwraps its data key through the vault (one POST unwrapkey, RSA-OAEP) and decrypts its AES-256-GCM config in-process; the test checks the plaintext. Key, wrapped key and sealed config are set up live before recording; the unwrapped key is a named secret, a fake on replay. | [test_lowkeyvault.ae#L1208](test_lowkeyvault.ae#L1208) |
| [`answers_the_representative_error_statuses.md`](answers_the_representative_error_statuses.md) | 404 for a missing secret, key and certificate; 500 PATCH of a missing version; 400 for a bad secret, bad key request, bad or missing api-version; 405; 500 for a bad name. | [test_lowkeyvault.ae#L1089](test_lowkeyvault.ae#L1089) |

## Replaying from another language

The test file's `PORTING` comments ([test_lowkeyvault.ae](test_lowkeyvault.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- Every request is plain HTTP/1.1 with `User-Agent`, `Authorization: Bearer ...` (all cases except the unauthenticated first request of the login case) and `Content-Type: application/json` when there is a body. Send JSON bodies byte for byte as written in the test (no spaces). The query string comes `?api-version=7.4` first, then any other parameter.
- The real vault is HTTPS with a self-signed certificate; TLS is not on the tapes, so playback is plain HTTP. An Azure SDK client must be told to allow a non-TLS endpoint and to skip its challenge-based-auth HTTPS requirement, or use raw HTTP as the test does. The `id`, `kid`, `recoveryId` and `nextLink` URLs carry `{{request.host}}` (https scheme kept): build follow-up requests from the PATH of such a URL.
- Already logged in: send any `Authorization: Bearer <anything>`. The tapes hold it as `Bearer AUTHORIZATION_1` and playback matches it on presence, so a replay cannot tell a valid token from an invented one (nor can Lowkey Vault). The unauthorized case sends no header at all.
- Normalized and redacted values come back as tokens, verbatim: versions `{{version-N}}`, signatures, wrapped keys and ciphertexts `{{blob-N}}`, JWTs `{{jwt-N}}`. Treat them as opaque and send them back as received, braces unescaped. A `/versions` list is served oldest first (stable order), which live Lowkey Vault does not guarantee.
- Each case starts its own emulator with an empty vault, so any tape replays alone and in any order.
- The two real-usage cases hold their secrets as named secrets (`{{secret:NAME|N}}`): a replay resolves each to a plausible fake, never the real value, so a port asserts on what its app received in that run (see the PORTING comments for the fakes).
- Out of scope (no tape): successful purge, backup/restore, certificate import, issuers, managed HSM, key import, vaults other than the default, and the Azure SDKs' own flows.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test lowkeyvault/test_lowkeyvault.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test lowkeyvault/test_lowkeyvault.ae   # live container, Servirtium in the middle, tapes written to lowkeyvault/
TCAE_VCR=check    ae test lowkeyvault/test_lowkeyvault.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test lowkeyvault/test_lowkeyvault.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). Recording this suite also needs the `openssl` command-line tool on the PATH. `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: MIT (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
