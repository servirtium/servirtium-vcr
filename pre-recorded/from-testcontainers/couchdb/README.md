# couchdb

Recordings of the Apache CouchDB HTTP API, from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details. The image tag floats, so a re-record can differ from the tapes.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`serves_the_welcome_document_and_creates_a_database.md`](serves_the_welcome_document_and_creates_a_database.md) | MODULE: the welcome document and creating a database (Basic auth). | [test_couchdb.ae#L482](test_couchdb.ae#L482) |
| [`uses_custom_admin_credentials.md`](uses_custom_admin_credentials.md) | MODULE: custom admin credentials. | [test_couchdb.ae#L525](test_couchdb.ae#L525) |
| [`percent_encodes_credentials_in_the_connection_string.md`](percent_encodes_credentials_in_the_connection_string.md) | MODULE: credentials with special characters in the connection string. | [test_couchdb.ae#L552](test_couchdb.ae#L552) |
| [`logs_in_and_out_with_a_session_cookie.md`](logs_in_and_out_with_a_session_cookie.md) | LOGIN: POST /_session with a right and a wrong password, GET /_session before and after, DELETE /_session. | [test_couchdb.ae#L585](test_couchdb.ae#L585) |
| [`refuses_a_client_that_has_not_logged_in.md`](refuses_a_client_that_has_not_logged_in.md) | A request with no session cookie is refused. | [test_couchdb.ae#L622](test_couchdb.ae#L622) |
| [`reports_the_server_info.md`](reports_the_server_info.md) | Server info. | [test_couchdb.ae#L646](test_couchdb.ae#L646) |
| [`creates_inspects_and_deletes_a_database.md`](creates_inspects_and_deletes_a_database.md) | Database lifecycle. | [test_couchdb.ae#L678](test_couchdb.ae#L678) |
| [`creates_reads_updates_and_deletes_a_document.md`](creates_reads_updates_and_deletes_a_document.md) | Document CRUD with revisions. | [test_couchdb.ae#L720](test_couchdb.ae#L720) |
| [`refuses_a_stale_revision_with_a_409.md`](refuses_a_stale_revision_with_a_409.md) | A stale revision is refused (409). | [test_couchdb.ae#L761](test_couchdb.ae#L761) |
| [`keeps_both_sides_of_a_replication_conflict_until_resolved.md`](keeps_both_sides_of_a_replication_conflict_until_resolved.md) | Replication conflict kept until resolved. | [test_couchdb.ae#L794](test_couchdb.ae#L794) |
| [`writes_documents_in_bulk.md`](writes_documents_in_bulk.md) | Bulk writes. | [test_couchdb.ae#L823](test_couchdb.ae#L823) |
| [`lists_documents_with_all_docs_and_its_parameters.md`](lists_documents_with_all_docs_and_its_parameters.md) | `_all_docs` and its parameters. | [test_couchdb.ae#L853](test_couchdb.ae#L853) |
| [`stores_and_serves_a_standalone_attachment.md`](stores_and_serves_a_standalone_attachment.md) | Standalone attachment. | [test_couchdb.ae#L893](test_couchdb.ae#L893) |
| [`stores_an_inline_attachment_and_reads_it_back_with_the_document.md`](stores_an_inline_attachment_and_reads_it_back_with_the_document.md) | Inline attachment read back with the document. | [test_couchdb.ae#L930](test_couchdb.ae#L930) |
| [`queries_a_map_reduce_view.md`](queries_a_map_reduce_view.md) | Map/reduce view. | [test_couchdb.ae#L964](test_couchdb.ae#L964) |
| [`finds_documents_with_mango_and_an_index.md`](finds_documents_with_mango_and_an_index.md) | Mango find with an index. | [test_couchdb.ae#L1020](test_couchdb.ae#L1020) |
| [`follows_the_changes_feed_with_since.md`](follows_the_changes_feed_with_since.md) | Changes feed with `since`. | [test_couchdb.ae#L1067](test_couchdb.ae#L1067) |
| [`creates_documents_under_server_generated_ids.md`](creates_documents_under_server_generated_ids.md) | Server-generated document ids. | [test_couchdb.ae#L1111](test_couchdb.ae#L1111) |
| [`answers_the_representative_error_statuses.md`](answers_the_representative_error_statuses.md) | Representative error statuses. | [test_couchdb.ae#L1146](test_couchdb.ae#L1146) |

## Replaying from another language

The test file's `PORTING` comments ([test_couchdb.ae](test_couchdb.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- Every request is plain HTTP/1.1 with `User-Agent`, `Content-Type: application/json` when there is a body (`text/plain` for the attachment upload), and `Cookie: AuthSession=...` in the logged-in cases. Send JSON bodies byte for byte as written in the test.
- Login has one tape. Every other API case is already logged in: send any `Cookie: AuthSession=<anything>`; the tapes hold `AuthSession=COOKIE_1` and playback matches it on presence. The login password is a labelled redaction (`REDACTED[admin]`, `REDACTED[admin-wrong-password]`).
- Sequence ids, uuids and ETags come back as tokens verbatim (`{{seq-N}}`, `{{uuid-N}}`, `{{etag-N}}`): opaque, send back as received (e.g. `?since={{seq-2}}`); braces may be sent as is or percent-encoded.
- Each API case makes its own database, works in it and deletes it on the tape, so any tape replays alone and in any order.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test couchdb/test_couchdb.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test couchdb/test_couchdb.ae   # live container, Servirtium in the middle, tapes written to couchdb/
TCAE_VCR=check    ae test couchdb/test_couchdb.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test couchdb/test_couchdb.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: Apache-2.0 (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
