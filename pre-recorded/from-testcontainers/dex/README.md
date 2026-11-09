# dex

Recordings of the Dex OIDC provider API (discovery, keys, token, userinfo, introspection, authorization code flow), from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`serves_oidc_discovery_for_the_issuer.md`](serves_oidc_discovery_for_the_issuer.md) | MODULE: `/dex/.well-known/openid-configuration` reports the issuer. | [test_dex.ae#L388](test_dex.ae#L388) |
| [`signs_in_with_the_password_grant.md`](signs_in_with_the_password_grant.md) | LOGIN: the password grant for the test user, and what is refused (wrong secret, unknown client). | [test_dex.ae#L448](test_dex.ae#L448) |
| [`serves_discovery_the_signing_keys_and_a_health_check.md`](serves_discovery_the_signing_keys_and_a_health_check.md) | Discovery, the signing keys and a health check. | [test_dex.ae#L501](test_dex.ae#L501) |
| [`reads_userinfo_with_a_bearer_token.md`](reads_userinfo_with_a_bearer_token.md) | Userinfo with a bearer token (already logged in). | [test_dex.ae#L542](test_dex.ae#L542) |
| [`introspects_access_id_and_refresh_tokens.md`](introspects_access_id_and_refresh_tokens.md) | Token introspection (already logged in). | [test_dex.ae#L579](test_dex.ae#L579) |
| [`refreshes_tokens_and_rotates_the_refresh_token.md`](refreshes_tokens_and_rotates_the_refresh_token.md) | Refresh and refresh-token rotation (already logged in). | [test_dex.ae#L618](test_dex.ae#L618) |
| [`walks_the_authorization_code_flow.md`](walks_the_authorization_code_flow.md) | The authorization code flow, hop by hop (redirects not followed). | [test_dex.ae#L660](test_dex.ae#L660) |
| [`refuses_bad_authorization_requests.md`](refuses_bad_authorization_requests.md) | Bad authorization requests. | [test_dex.ae#L719](test_dex.ae#L719) |
| [`answers_the_representative_error_statuses.md`](answers_the_representative_error_statuses.md) | Representative error statuses. | [test_dex.ae#L757](test_dex.ae#L757) |

## Replaying from another language

The test file's `PORTING` comments ([test_dex.ae](test_dex.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- The config-rendering module case has no HTTP and runs in every mode, so 10 cases make 9 tapes.
- Discovery names the issuer, which is the container's own host:port; the tape holds `{{request.host}}` there, so on replay the issuer is the replay server's address plus `/dex`. Compare against your own base URL.
- The signing keys are generated at startup and collapsed to constants in the tape: they are not valid keys for anything.
- Client `my-app` / `secret` and user alice@example.com are the test's. Credentials are labelled redactions (`REDACTED[my-app]` ...) put back on replay. Tokens in the logged-in cases are placeholders (`{{jwt-N}}`, `{{refresh-N}}`): a token in a header may be anything (matched on presence), but one sent in a body (introspection) must be the tape's placeholder.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test dex/test_dex.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test dex/test_dex.ae   # live container, Servirtium in the middle, tapes written to dex/
TCAE_VCR=check    ae test dex/test_dex.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test dex/test_dex.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: Apache-2.0 (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
