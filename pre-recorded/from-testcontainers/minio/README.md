# minio

Recordings of the MinIO S3 API (path-style, SigV4), as answered by an S3-compatible server (`?`), not AWS S3 itself.

## Who it is for

Teams integrating with AWS S3 who want tapes to replay in their own tests, in any language, before or without running anything. Also useful as a stand-in for that product itself.

## Fidelity

These tapes are what the emulator said, not what AWS S3 said. They are useful up to the point of your first recording against the real service: the real service may differ from the emulator by characters, words or whitespace (error codes and messages, header names and values, JSON field order and formatting, ids, authentication challenges, API-version behaviour). Treat them as a scaffold to start writing tests and client code, record against the real service as soon as you can, and keep your own tapes from then on.

Known differences from the real service, from the test and tapes:

- MinIO is a real product in its own right (these tapes are what MinIO says), but it is an S3-compatible server, not AWS S3: error codes and messages, header details and edge-case behaviour can differ from AWS.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`runs_with_the_given_credentials.md`](runs_with_the_given_credentials.md) | MODULE: the module's credentials are accepted. | [test_minio.ae#L748](test_minio.ae#L748) |
| [`defaults_to_minioadmin.md`](defaults_to_minioadmin.md) | MODULE: the default `minioadmin` credentials. | [test_minio.ae#L767](test_minio.ae#L767) |
| [`refuses_unsigned_and_wrongly_signed_requests.md`](refuses_unsigned_and_wrongly_signed_requests.md) | Unsigned and wrongly signed requests refused (403), the right credentials accepted. | [test_minio.ae#L801](test_minio.ae#L801) |
| [`creates_inspects_lists_and_deletes_buckets.md`](creates_inspects_lists_and_deletes_buckets.md) | Bucket lifecycle. | [test_minio.ae#L828](test_minio.ae#L828) |
| [`rejects_bad_bucket_names_and_answers_nosuchbucket.md`](rejects_bad_bucket_names_and_answers_nosuchbucket.md) | Bad bucket names and NoSuchBucket. | [test_minio.ae#L860](test_minio.ae#L860) |
| [`versions_a_buckets_objects.md`](versions_a_buckets_objects.md) | Bucket versioning. | [test_minio.ae#L890](test_minio.ae#L890) |
| [`tags_buckets_and_objects.md`](tags_buckets_and_objects.md) | Bucket and object tagging. | [test_minio.ae#L954](test_minio.ae#L954) |
| [`sets_reads_and_removes_a_bucket_policy.md`](sets_reads_and_removes_a_bucket_policy.md) | Bucket policy. | [test_minio.ae#L1010](test_minio.ae#L1010) |
| [`puts_gets_heads_overwrites_and_deletes_objects.md`](puts_gets_heads_overwrites_and_deletes_objects.md) | Object put, get, head, overwrite, delete. | [test_minio.ae#L1059](test_minio.ae#L1059) |
| [`serves_byte_ranges_and_honours_conditional_requests.md`](serves_byte_ranges_and_honours_conditional_requests.md) | Range and conditional requests. | [test_minio.ae#L1109](test_minio.ae#L1109) |
| [`copies_an_object_keeping_or_replacing_its_metadata.md`](copies_an_object_keeping_or_replacing_its_metadata.md) | Copy with and without metadata replacement. | [test_minio.ae#L1154](test_minio.ae#L1154) |
| [`deletes_objects_one_at_a_time_and_in_bulk.md`](deletes_objects_one_at_a_time_and_in_bulk.md) | Single and bulk delete. | [test_minio.ae#L1191](test_minio.ae#L1191) |
| [`lists_objects_with_prefix_delimiter_and_pages.md`](lists_objects_with_prefix_delimiter_and_pages.md) | Listing with prefix, delimiter and pages. | [test_minio.ae#L1242](test_minio.ae#L1242) |
| [`uploads_an_object_in_parts.md`](uploads_an_object_in_parts.md) | Multipart upload. | [test_minio.ae#L1316](test_minio.ae#L1316) |
| [`aborts_a_multipart_upload.md`](aborts_a_multipart_upload.md) | Abort a multipart upload. | [test_minio.ae#L1358](test_minio.ae#L1358) |
| [`refuses_small_parts_misordered_parts_and_wrong_part_etags.md`](refuses_small_parts_misordered_parts_and_wrong_part_etags.md) | Multipart refusals. | [test_minio.ae#L1394](test_minio.ae#L1394) |
| [`serves_an_object_through_a_presigned_url.md`](serves_an_object_through_a_presigned_url.md) | Object through a presigned URL. | [test_minio.ae#L1450](test_minio.ae#L1450) |
| [`answers_the_representative_error_statuses.md`](answers_the_representative_error_statuses.md) | Representative error statuses. | [test_minio.ae#L1484](test_minio.ae#L1484) |

## Replaying from another language

The test file's `PORTING` comments ([test_minio.ae](test_minio.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- S3 has no login: every request is SigV4-signed over the time it is sent. `Authorization` is on the tapes as `AWS4-HMAC-SHA256 AUTHORIZATION_N` and matched on presence; `x-amz-date` is left out. So a replay cannot check a signature; the right/wrong distinction is in the recorded responses.
- SigV4 signs the Host header; see the test's PORTING comment for recording through the recorder. Each case makes its own bucket (`tcae-<scenario>`), works in it and deletes it on the tape.
- Version ids, multipart upload ids and listing tokens are normalized (`{{uuid-N}}`, `{{uploadid-N}}`, `{{token-N}}`): opaque, send back as received.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test minio/test_minio.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test minio/test_minio.ae   # live container, Servirtium in the middle, tapes written to minio/
TCAE_VCR=check    ae test minio/test_minio.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test minio/test_minio.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: AGPL-3.0 (MinIO), Chainguard's build (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
