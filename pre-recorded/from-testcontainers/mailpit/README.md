# mailpit

Recordings of the Mailpit REST API (`/api/v1`) and health endpoints, from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`receives_a_mail_over_smtp_and_serves_it_over_http.md`](receives_a_mail_over_smtp_and_serves_it_over_http.md) | MODULE: a mail received over SMTP (before recording) read back over the API. | [test_mailpit.ae#L444](test_mailpit.ae#L444) |
| [`limits_the_messages_kept_with_message_limit.md`](limits_the_messages_kept_with_message_limit.md) | MODULE: the `message_limit` option keeps only the newest messages. | [test_mailpit.ae#L494](test_mailpit.ae#L494) |
| [`reports_readiness_and_an_empty_mailbox.md`](reports_readiness_and_an_empty_mailbox.md) | Readiness and health endpoints and an empty mailbox. | [test_mailpit.ae#L515](test_mailpit.ae#L515) |
| [`sends_a_mail_with_the_send_api_and_reads_it_back.md`](sends_a_mail_with_the_send_api_and_reads_it_back.md) | Send a mail with the Send API and read it back every way the API offers. | [test_mailpit.ae#L555](test_mailpit.ae#L555) |
| [`receives_a_multipart_mail_over_smtp_and_serves_it.md`](receives_a_multipart_mail_over_smtp_and_serves_it.md) | A multipart mail received over SMTP, served by the API. | [test_mailpit.ae#L615](test_mailpit.ae#L615) |
| [`pages_through_and_searches_messages.md`](pages_through_and_searches_messages.md) | Paging through and searching messages. | [test_mailpit.ae#L668](test_mailpit.ae#L668) |
| [`marks_messages_read_and_unread.md`](marks_messages_read_and_unread.md) | Read-state changes. | [test_mailpit.ae#L719](test_mailpit.ae#L719) |
| [`tags_renames_and_untags_messages.md`](tags_renames_and_untags_messages.md) | Tag a message, rename the tag, remove it. | [test_mailpit.ae#L761](test_mailpit.ae#L761) |
| [`deletes_selected_messages_then_all_of_them.md`](deletes_selected_messages_then_all_of_them.md) | Delete selected messages, then all. | [test_mailpit.ae#L803](test_mailpit.ae#L803) |
| [`answers_the_representative_error_statuses.md`](answers_the_representative_error_statuses.md) | Representative error statuses. | [test_mailpit.ae#L836](test_mailpit.ae#L836) |

## Replaying from another language

The test file's `PORTING` comments ([test_mailpit.ae](test_mailpit.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- No login: Mailpit's API is open unless started with `MP_UI_AUTH`, which the module does not set, so no tape carries a credential. SMTP-auth is TCP and live only.
- SMTP sends are raw TCP and part of the live setup (before recording); a replaying client sends nothing.
- Message ids and similar values are normalized as `{{id-N}}`: treat as opaque, send back as received.
- Not covered (could be later cases): inline images, auto-tagging options and the Basic-auth UI.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test mailpit/test_mailpit.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test mailpit/test_mailpit.ae   # live container, Servirtium in the middle, tapes written to mailpit/
TCAE_VCR=check    ae test mailpit/test_mailpit.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test mailpit/test_mailpit.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: MIT (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
