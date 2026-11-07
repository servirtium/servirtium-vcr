# Pre-recorded: from testcontainers

Re-usable recordings of real services' HTTP APIs, for any language's tests.
Each tape is one test case's conversation with a real container,
recorded by [Servirtium](https://servirtium.dev) standing between the test
and the container: every request the test made, in order, and the response
the service gave. The markdown renders on GitHub and diffs in a review.

```
<service>/<case>.md
vault/reads_and_writes_secrets_with_the_chosen_token.md
```

Beside each service's tapes is the Aether test that records them
(`<service>/test_<service>.ae`), starting the container with
[testcontainers-ae](https://github.com/servirtium/testcontainers-ae). A tape
is the re-usable part: any Servirtium implementation replays it, so a test
in another language can use it with no container. The tests are the
reference for what each case does.

`<case>` is the snake_case name the test passes to
`servirtium.recording(...)`, near the spec `it` title.

| Suite | Cases | Container |
|---|---|---|
| `vault` | 2 | `hashicorp/vault:1.13.0` |
| `couchdb` | 3 | `couchdb:3` |
| `consul` | 4 | `hashicorp/consul:1.15` |
| `openfga` | 1 | `openfga/openfga:v1.18.0` |
| `typesense` | 3 | `typesense/typesense:26.0` |
| `mockserver` | 2 | `mockserver/mockserver:5.15.0` |
| `minio` | 2 | `cgr.dev/chainguard/minio:latest` |
| `opensearch` | 1 | `opensearchproject/opensearch:2.11.1` |
| `elasticsearch` | 1 | `docker.elastic.co/elasticsearch/elasticsearch:8.9.0` |
| `localstack` | 1 | `localstack/localstack:3.4` |
| `dynamodb` | 1 | `amazon/dynamodb-local:2.2.1` |
| `s3mock` | 1 | `adobe/s3mock:3.9.1` |
| `garage` | 2 | `dxflrs/garage:v2.4.1` |
| `azurite` | 2 (3 tapes) | `mcr.microsoft.com/azure-storage/azurite:3.28.0` |
| `fakegcsserver` | 1 | `fsouza/fake-gcs-server:1.56.1` |
| `gcloud_firestore` | 2 | `gcr.io/google.com/cloudsdktool/cloud-sdk:emulators` |
| `gcloud_datastore` | 1 | `gcr.io/google.com/cloudsdktool/cloud-sdk:emulators` |
| `gcloud_pubsub` | 1 | `gcr.io/google.com/cloudsdktool/cloud-sdk:emulators` |
| `gcloud_bigquery` | 1 | `ghcr.io/goccy/bigquery-emulator:0.6.1` (linux/amd64 only) |

## A tape is a test scenario you can keep

A project that has these tapes can drop the container: with
`TCAE_VCR=playback` each case's HTTP checks run against a Servirtium replay
server inside the test process, answering from the tape, with no engine and
no image. The replay is strict: a request that differs from the recorded
one (method, path, recorded headers, body) or a recorded request that is
never made fails the case. The same tapes replay under any Servirtium
implementation (Java, Go, Python, ... and `servirtium serve <tape.md>` from
servirtium-vcr's CLI), so they also serve as a stand-in for the service in
other test suites.

What a tape cannot replay is what never went over HTTP: `tc.exec`,
inspecting the container, a case that is about the container failing to
start. Those checks sit in the `if servirtium.live() == 1 { ... }` part of
the case or in a case gated by `spec.it_when(servirtium.live(), ...)`, and
are skipped in playback.

## Modes (`TCAE_VCR`)

```sh
# from pre-recorded/from-testcontainers
ae test vault/test_vault.ae                         # off (default): container, no Servirtium
TCAE_VCR=record   ae test vault/test_vault.ae       # container, Servirtium in the middle, tapes written
TCAE_VCR=check    ae test vault/test_vault.ae       # record, and fail if a tape changed (<case>.md.actual left beside it)
TCAE_VCR=playback ae test vault/test_vault.ae       # no container, no engine: replay the tapes
```

`TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

To re-record after changing a test or bumping an image: run it with
`TCAE_VCR=record` and review `git diff .`. Recording twice in a
row writes the same bytes (the normalizations below make it so), so a diff
is a real change in the service or in the test. `TCAE_VCR=check` is that
comparison as a failing test, for CI.

## What the requests carry

Go's module tests talk raw HTTP through `net/http`, which sends
`User-Agent: Go-http-client/1.1` by itself; Aether's `std.http.client` sends
no `User-Agent` at all. Each test's request helper sets one
(`USER_AGENT`, `testcontainers-ae-tests (Aether std.http.client)`), as an
app's client library would, so the recordings show a representative request.
That is the test's client speaking: Servirtium records the headers as they
were sent and adds none.

## Normalizations in force

Each recording ends with a `## [Recording rules]` table that lists the rules
below as they applied to it: what was left out or rewritten, and in which
interactions (`none` for a rule that matched nothing there). A redaction's
secret is never shown, only its placeholder. Playback does not read that
section.

Applied when a tape is written; playback serves the tape as written.

Always (`servirtium/module.ae`):

- the `Date`, `X-Request-Id` and `X-Correlation-Id` response headers are
  left out;
- the container's mapped `host:port` and the recorder's own `127.0.0.1:port`
  become `{{request.host}}` (CouchDB's `Location` headers, for one), which
  playback fills with the replay server's own host and port.

Per suite (registered at the top of its `main`):

| Suite | Normalized (stable `{{name-N}}` tokens) | Collapsed to a constant | Redacted (put back on playback) | Headers dropped |
|---|---|---|---|---|
| vault | UUIDs (request and cluster ids) | `vault-cluster-<hex>`, RFC 3339 times, Unix times | the root token in `X-Vault-Token`, as `X_VAULT_TOKEN_1` (credential preset) | |
| couchdb | the 32-hex server uuid | Unix start times, `*_seq` tokens | each `Authorization: Basic` credential, as `REDACTED[<label>]` | `X-Couch-Request-ID`, `X-CouchDB-Body-Time` |
| consul | the node id | Raft indexes (the `X-Consul-Index` header's value too), runtime counters, `cpu_count`, `arch` in `/v1/agent/self` | | |
| openfga | the store's ULID (it comes back in a later request path, and the token round-trips) | RFC 3339 times | | |
| typesense | | `created_at` | each `X-TYPESENSE-API-KEY`, as `REDACTED[<key>]` | |
| mockserver | the expectation's UUID | | | |
| minio | | `<RequestId>` / `<HostId>` in error bodies, `CreationDate`, `X-Ratelimit-*` | `Authorization` (SigV4), as `AWS4-HMAC-SHA256 AUTHORIZATION_N` (credential preset) | `x-amz-date` (request), `x-amz-request-id`, `x-amz-id-2` |
| opensearch | | the node's `name`, `cluster_uuid` | | |
| elasticsearch | | the node's `name`, `cluster_uuid` | each `Authorization: Basic` credential, as `REDACTED[<label>]` | |
| localstack | | | | `x-amz-request-id`, `x-amz-id-2`, `Last-Modified` |
| dynamodb | | `CreationDateTime`, `LastUpdateToPayPerRequestDateTime` | | `x-amzn-RequestId`, `x-amz-crc32` |
| s3mock | | `CreationDate` | | `Last-Modified` |
| garage | | | `Authorization` (SigV4), as `AWS4-HMAC-SHA256 AUTHORIZATION_N` (credential preset) | `x-amz-date` (request), `x-amz-version-id`, `last-modified` |
| azurite | | `RequestId:<uuid>` and `Time:<RFC 3339>` in error bodies | | `x-ms-request-id` |
| fakegcsserver | | `timeCreated` / `updated`, an object's `generation` (in `X-Goog-Generation` too), `Last-Modified` | | |
| gcloud_firestore | | RFC 3339 times (`createTime`, `updateTime`, `readTime`) | | |
| gcloud_datastore | | | | |
| gcloud_pubsub | | `publishTime` | | |
| gcloud_bigquery | | the query job's `jobId` | | |

Vault uses Servirtium's credential preset
(`servirtium.redact_credential_header("X-Vault-Token")`): the token is
written as a numbered token, and playback matches the header on presence,
not value, so it needs no secret. CouchDB and Typesense keep labelled literal
redactions instead, because their cases send a wrong credential on purpose
and playback should keep telling it from the right one. The module also
offers `redact_credentials()`, `remove_cloud_headers(vendor)`,
`remove_transport_headers()` and `pretty_json(indent)`; see servirtium-vcr's
AGENTS.md, "Header presets".

**MinIO** signs every S3 request with AWS Signature V4 over the time it is
sent, so its `Authorization` goes through the credential preset (playback
matches it on presence: it cannot check a signature made for another time)
and `x-amz-date` is left out. The 200-versus-403 difference between the
right and a wrong secret is in the recorded responses, not enforced on
replay. SigV4 also signs the `Host` header, and the recorder forwards with
the container's, so when recording the test signs for the container while
sending to the recorder (`test_minio.ae` says how a port does the same).

**Elasticsearch 8** serves HTTPS with a CA it generates. When recording, the
test talks plain HTTP to the recorder, which talks HTTPS to the container
and verifies it against that CA (`servirtium.trust_upstream_ca`, core's
`set_upstream_cafile_h`). TLS is the connection's business, so nothing about
it is on the tape, and playback is plain HTTP.

**The cloud emulators** mostly accept any credentials:
- **LocalStack and DynamoDB Local:** the tests send a fixed, fake SigV4
  `Authorization` (and DynamoDB a fixed `X-Amz-Date`), the same every run,
  so nothing is redacted. A port that signs for real needs MinIO's
  treatment.
- **S3Mock:** unsigned requests.
- **Garage:** checks signatures, so it gets MinIO's treatment (credential
  preset, `x-amz-date` left out, signed for the container's host).
- **Azurite:** the requests are unauthenticated. A test signing with Shared
  Key is time-based like SigV4: credential preset, `x-ms-date` left out. Its
  first case talks to two ports of one container (blob and queue), so it
  records two tapes, the second named `<case>_queue`.
- **The gcloud emulators:** the tests send `Authorization: Bearer owner`, the
  emulators' fixed placeholder token, recorded as is. BigQuery's emulator
  image is linux/amd64 only.
- **Not recordable:** the Bigtable and Spanner emulators' tests only open a
  TCP connection to a gRPC port (no HTTP), so they stay in testcontainers-ae.

Checks with no HTTP in them (a module's defaults, `tc.exec`, inspecting the
container, a refused option) run only live, and are skipped in playback.

The other redactions are a literal swap: the secret is written as its placeholder,
and on playback the placeholder in the tape is swapped back before the
request is compared. Placeholders must not contain one another, hence
`REDACTED[admin]` rather than `REDACTED-admin` beside
`REDACTED-admin-wrong-password`.

## Where the code comes from

- **Servirtium:** `lib/servirtium_vcr` is a relative symlink to this
  repository's own `core/` (`../../../core`), so the suites record with the
  Servirtium they sit beside (v2.0.0-alpha.12 for the tapes here). `ae test`
  searches a project's `lib/` first.
- **testcontainers-ae:** an `ae add` dependency in `aether.toml`
  (github.com/servirtium/testcontainers-ae, pinned by tree hash). It is only
  needed to record; playback starts no container. Move it with
  `ae add github.com/servirtium/testcontainers-ae --update`.
- **The recorder:** `servirtium/module.ae` (`import servirtium`), which moved
  here from testcontainers-ae on 2026-11-07.

## The recorder's API

`recording(suite, case, upstream_url) -> (string, ptr)` and
`end_recording(handle)` do what `TCAE_VCR` says:

| `TCAE_VCR` | `recording` returns | `end_recording` |
|---|---|---|
| unset / `off` | `upstream_url`, null | nothing |
| `record` | a recorder on a free loopback port, forwarding to `upstream_url` | writes `<suite>/<case>.md` |
| `check` | the same | fails the case when the tape differs from the committed one (`.md.actual` left beside it) |
| `playback` | a replay server on a free loopback port, from the tape | fails the case on any mismatch or unplayed interaction |

```aether
import servirtium

fw = spec.init()
if servirtium.skip_if_no_engine(fw) == 1 { return spec.run_summary(fw) }  // playback needs none
servirtium.redact_credential_header("X-Vault-Token")
servirtium.normalize(servirtium.UUID, "uuid")
servirtium.collapse(servirtium.RFC3339, "2000-01-01T00:00:00Z")

spec.it("reads a secret") callback {
    addr = ""
    if servirtium.live() == 1 {                 // 0 in playback
        c, err = vault.run(IMAGE) { token(TOKEN) }
        testing.cleanup_container(c)
        spec.assert_ok(err, "vault starts")
        if err != "" { return }
        a, _ = vault.http_host_address(c)
        addr = a
    }
    base, rec = servirtium.recording("vault", "reads_a_secret", addr)
    ... requests to base ...
    servirtium.end_recording(rec)
}
```

`suite` and `case` are snake-cased (`case_name`). Rules (`normalize`,
`collapse`, `redact`, `remove_header` and the presets) apply to every
recording after them in the process; `clear_rules` empties them.

What does not go over HTTP (`tc.exec`, inspecting the container, a container
that must fail to start) stays in the `live()` part of a case, or in a case
gated with `spec.it_when(servirtium.live(), ...)`, and does not run in
playback. A polling loop replays exactly as it ran when recorded, but a loop
whose iteration count varies with timing makes the tape differ between
records; the suites here avoid them.
