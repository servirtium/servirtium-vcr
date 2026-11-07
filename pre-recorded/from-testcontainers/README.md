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

Each recorded service is under its own licence and terms, which bind anyone
using its tapes, including any no-reverse-engineering clause: see
[UPSTREAM-TERMS.md](UPSTREAM-TERMS.md) (and `NOTICE`). Tapes of a service
with restrictive terms start with a `## LICENSE NOTICE`
(`servirtium.license_notice(...)` in the test).

### Tapes we don't ship

For seven services we ship the test and the recorder but not the tapes. We
are not lawyers and can't afford to argue about licences, so where a
vendor's terms could reasonably be read as forbidding what publishing the
tapes would amount to, we take the cautious reading and leave the tapes out.
That is a judgement about risk, not a finding that anything is forbidden.
Run the test with `TCAE_VCR=record` and you have your own tapes, on your own
machine, under the terms you accepted by running the image; don't publish
them. Each suite's `LICENCE-NOTE.md` gives the clause and the commands.

| Suite | Why we are cautious |
|---|---|
| `dynamodb` | AWS's DynamoDB Local licence limits use to your internal business purposes and forbids publicly communicating or reverse engineering the software. |
| `pinecone` | Pinecone Local's licence forbids copying or transmitting it, "including ... recording". |
| `timeplus` | The closed Timeplus Enterprise engine, with no licence in the image; its likely terms are internal use only, with no reverse engineering. |
| `gcloud_datastore`, `gcloud_firestore`, `gcloud_pubsub` | Google's own emulators of Google Cloud services; Google Cloud's terms forbid reverse engineering the Services. |
| `cockroachdb` | The CockroachDB Software License defines "Benchmark" as "any benchmark, comparative test or evaluation of the Software", with duties to disclose; published recordings of its API could be read as one. |

| Suite | Cases | Container |
|---|---|---|
| `vault` | 21 (comprehensive: 19 API, 2 module; userpass and approle logins on their own tapes, health and seal status, mounts, ACL policies and their enforcement, KV v2 and v1, transit, tokens, response wrapping and the cubbyhole, errors) | `hashicorp/vault:1.13.0` |
| `couchdb` | 18 (comprehensive: 15 API, 3 module) | `couchdb:3` |
| `consul` | 15 (comprehensive: 11 API, 4 module; ACLs on, the ACL bootstrap is the login tape; status, catalog and members, KV with cas, transactions, sessions and locks, services and TTL checks, ACL policies and tokens with enforcement, errors) | `hashicorp/consul:1.15` |
| `openfga` | 1 | `openfga/openfga:v1.18.0` |
| `typesense` | 3 | `typesense/typesense:26.0` |
| `mockserver` | 2 | `mockserver/mockserver:5.15.0` |
| `minio` | 18 (comprehensive: 16 API, 2 module; S3 has no login, every request is signed) | `cgr.dev/chainguard/minio:latest` |
| `opensearch` | 1 | `opensearchproject/opensearch:2.11.1` |
| `elasticsearch` | 1 | `docker.elastic.co/elasticsearch/elasticsearch:8.9.0` |
| `localstack` | 1 | `localstack/localstack:3.4` |
| `dynamodb` | test + recorder only, tapes not shipped ([why](dynamodb/LICENCE-NOTE.md)) | `amazon/dynamodb-local:2.2.1` |
| `s3mock` | 1 | `adobe/s3mock:3.9.1` |
| `garage` | 2 | `dxflrs/garage:v2.4.1` |
| `azurite` | 2 (3 tapes) | `mcr.microsoft.com/azure-storage/azurite:3.28.0` |
| `fakegcsserver` | 1 | `fsouza/fake-gcs-server:1.56.1` |
| `gcloud_firestore` | test + recorder only, tapes not shipped ([why](gcloud_firestore/LICENCE-NOTE.md)) | `gcr.io/google.com/cloudsdktool/cloud-sdk:emulators` |
| `gcloud_datastore` | test + recorder only, tapes not shipped ([why](gcloud_datastore/LICENCE-NOTE.md)) | `gcr.io/google.com/cloudsdktool/cloud-sdk:emulators` |
| `gcloud_pubsub` | test + recorder only, tapes not shipped ([why](gcloud_pubsub/LICENCE-NOTE.md)) | `gcr.io/google.com/cloudsdktool/cloud-sdk:emulators` |
| `gcloud_spanner` | 4 | `gcr.io/cloud-spanner-emulator/emulator:1.5.40` (REST, port 9020) |
| `gcloud_bigquery` | 1 | `ghcr.io/goccy/bigquery-emulator:0.6.1` (linux/amd64 only) |
| `meilisearch` | 2 | `getmeili/meilisearch:v1.10.3` |
| `solr` | 1 | `solr:9` |
| `qdrant` | 2 | `qdrant/qdrant:v1.7.4` |
| `chroma` | 1 | `chromadb/chroma:1.4.0` |
| `weaviate` | 1 | `semitechnologies/weaviate:1.29.0` |
| `milvus` | 1 | `milvusdb/milvus:v2.3.9` |
| `pinecone` | test + recorder only, tapes not shipped ([why](pinecone/LICENCE-NOTE.md)) | `ghcr.io/pinecone-io/pinecone-local:v0.7.0` |
| `vearch` | 1 | `vearch/vearch:3.5.1` |
| `mailpit` | 2 | `axllent/mailpit:v1.20` |
| `inbucket` | 1 | `inbucket/inbucket:sha-2d409bb` |
| `papercutsmtp` | 1 | `changemakerstudiosus/papercut-smtp:latest` |
| `dex` | 1 | `dexidp/dex:v2.45.0` |
| `forgejo` | 2 | `codeberg.org/forgejo/forgejo:11` |
| `registry` | 4 | `registry:2.8.3` |
| `toxiproxy` | 1 (2 tapes) | `ghcr.io/shopify/toxiproxy:2.12.0` |
| `grafana_lgtm` | 1 (5 tapes) | `grafana/otel-lgtm:0.6.0` |
| `nginx` | 4 (5 tapes) | `nginx:1.25` |
| `arangodb` | 1 | `arangodb:3.11.5` |
| `couchbase` | 1 (+1 live only) | `couchbase:community-7.1.1` |
| `clickhouse` | 1 | `clickhouse/clickhouse-server:23.3.8.21-alpine` |
| `cockroachdb` | test + recorder only, tapes not shipped ([why](cockroachdb/LICENCE-NOTE.md)); 12 cases (comprehensive: HTTP API v2, with login) | `cockroachdb/cockroach:v23.1.30` |
| `cratedb` | 1 | `crate:5.7` |
| `databend` | 1 | `datafuselabs/databend:v1.2.615` |
| `influxdb` | 1 (+1 live only) | `influxdb:2.7.11` |
| `neo4j` | 2 | `neo4j:4.4` |
| `orientdb` | 1 | `orientdb:3.2` |
| `questdb` | 1 | `questdb/questdb:9.0.0` |
| `ravendb` | 1 | `ravendb/ravendb:6.0-ubuntu-latest` |
| `surrealdb` | 3 (+1 live only) | `surrealdb/surrealdb:v1.1.1` |
| `tidb` | 8 (comprehensive: status and schema API on 10080, standalone, no login) | `pingcap/tidb:v8.4.0` |
| `dind` | 7 (comprehensive: Engine API on 2375, version/info, images, containers, networks, volumes, errors; no login) | `docker:28.0.1-dind` (runs `busybox:1.36.1` inside) |
| `lowkeyvault` | 8 tapes, 7 cases (comprehensive: Azure Key Vault REST API over HTTPS, secrets, keys, certificates, errors; login on its own two tapes) | `nagyesta/lowkey-vault:7.3.48-ubi10-minimal` |
| `scylladb` | 16 (comprehensive: REST management API on 10000, identity and ring, keyspaces, table metrics, flush/compact, snapshots, schema version, log levels, tracing, gossip, errors; no login) | `scylladb/scylla:6.2` |
| `yugabytedb` | 11 tapes, 9 cases (comprehensive: master 7000 and tserver 9000 JSON endpoints, version, masters, tablet servers, health, cluster config, tables, varz, filtered metrics, errors; no login; recorded on x86_64 Linux) | `yugabytedb/yugabyte:2024.1.3.0-b105` |
| `trino` | 1 | `trinodb/trino:435` |
| `presto` | 1 | `prestodb/presto:0.286` |
| `timeplus` | test + recorder only, tapes not shipped ([why](timeplus/LICENCE-NOTE.md)) | `timeplus/timeplusd:2.3.37` |
| `kurrentdb` | 1 | `kurrentplatform/kurrentdb:26.1.1` |
| `etcd` | 4 (6 tapes; +1 live only) | `gcr.io/etcd-development/etcd:v3.5.14` |
| `rabbitmq` | 2 (+2 live only) | `rabbitmq:3.12.11-management-alpine` |
| `activemq` | 1 | `apache/activemq-classic:5.18.7` |
| `artemis` | 1 | `apache/activemq-artemis:2.30.0-alpine` |
| `pulsar` | 1 | `apachepulsar/pulsar:4.0.9` |
| `redpanda` | 1 (2 tapes) | `docker.io/redpandadata/redpanda:v25.2.4` |

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
| vault | module cases: UUIDs; API cases: uuids (entity, mount, approle role and secret ids), token accessors, mount accessors, transit ciphertexts, signatures and HMACs (`{{blob-N}}`), tokens never sent as a header (`{{token-N}}`) | `vault-cluster-<hex>`, request ids, RFC 3339 and Unix times, a token's remaining ttl | the token in `X-Vault-Token` as `X_VAULT_TOKEN_N` (credential preset: the same value is tokenized in bodies too); API cases: the login password as `REDACTED[<label>]` | |
| couchdb | API cases: sequence ids, quoted 32-hex uuids (server, `/_uuids`, generated doc ids), base-36 ETags; module cases: the 32-hex server uuid | `instance_start_time`; API cases: the session cookie's `Expires`; module cases: `*_seq` tokens | API cases: the session cookie (credential preset, `COOKIE_N`) and the login body's password as `REDACTED[<label>]`; module cases: each `Authorization: Basic` credential, as `REDACTED[<label>]` | `X-Couch-Request-ID`, `X-CouchDB-Body-Time` |
| consul | module cases: the node id; API cases: every uuid except Consul's built-in `00000000-0000-0000-0000-00000000000N` ids (node, session, policy and token-accessor ids) | Raft indexes (`CreateIndex`, `ModifyIndex`, `X-Consul-Index`, a `cas=` or txn `Index` sent back, the bootstrap's reset index: all become 1; `cas=0` is kept), token and policy `Hash`es, times (API cases); module cases: runtime counters, `cpu_count`, `arch` in `/v1/agent/self` | API cases: the ACL token in `X-Consul-Token` as `X_CONSUL_TOKEN_N` (credential preset; the SecretID is tokenized in bodies too) | |
| openfga | the store's ULID (it comes back in a later request path, and the token round-trips) | RFC 3339 times | | |
| typesense | | `created_at` | each `X-TYPESENSE-API-KEY`, as `REDACTED[<key>]` | |
| mockserver | the expectation's UUID | | | |
| minio | API cases: version ids (`{{uuid-N}}`), multipart upload ids (`{{uploadid-N}}`), listing continuation tokens (`{{token-N}}`) | `<RequestId>` / `<HostId>` in error bodies, every ISO time in a body, `Last-Modified`, `X-Ratelimit-*`, a presigned URL's date, credential date and signature | `Authorization` (SigV4), as `AWS4-HMAC-SHA256 AUTHORIZATION_N` (credential preset) | `x-amz-date` (request), `x-amz-request-id`, `x-amz-id-2` |
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
| gcloud_spanner | the read-write transaction id (base64; it round-trips into the DML and commit) | RFC 3339 times | | |
| gcloud_bigquery | | the query job's `jobId` | | |
| meilisearch | | | each `Authorization: Bearer` master key, as `REDACTED[<label>]` | |
| solr | | `QTime`, `_version_` | | |
| qdrant | | `"time"` seconds | | |
| chroma | | the nanosecond heartbeat | | |
| weaviate | | | | |
| milvus | | | | |
| pinecone | | | | |
| vearch | | | | |
| mailpit | | message `ID`, `MessageID`, `Created`, `Size`, the CSP `nonce-` | | |
| inbucket | | message `id`, `date`, `posix-millis` | | |
| papercutsmtp | | | | |
| dex | | the signing key's `kid` and RSA modulus `n` | | |
| forgejo | | RFC 3339 times | each `Authorization: Basic` credential, as `REDACTED[<label>]` | |
| registry | | | each `Authorization: Basic` credential, as `REDACTED[<label>]` | |
| toxiproxy | | | | `X-Toxiproxy-Request-Id` |
| grafana_lgtm | | `createdAt` / `updatedAt` | each `Authorization: Basic` credential, as `REDACTED[<label>]` | |
| nginx | | | | `Last-Modified`, `ETag` |
| arangodb | | | each `Authorization: Basic` credential, as `REDACTED[<label>]` | |
| couchbase | | 32-hex ids, the container IP, node ports, memory figures, `uptime`, `nodeHash`, the `componentsVersion` object, `interestingStats` / `basicStats` | `Authorization: Basic`, as `REDACTED[admin]` | |
| clickhouse | | the server's display name, `X-ClickHouse-Query-Id` | each `X-ClickHouse-Key`, as `REDACTED[<label>]` | |
| cockroachdb | | | RFC 3339 times, an event's `Timestamp` and `unique_id`, a session's id, client address and active time, `descriptor_id`, a node's `started_at` / `updated_at` / memory / CPU count / whole `metrics` object | the session token (`X-Cockroach-API-Session`, credential preset, `X_COCKROACH_API_SESSION_N`) and the login bodies' passwords as `REDACTED[<label>]` | response `Content-Length` |
| cratedb | | the node's `name`, `duration` | | |
| databend | | query and session UUIDs, the node id, RFC 3339 times, `running_time_ms` | each `Authorization: Basic` credential, as `REDACTED[<label>]` | |
| influxdb | | 16-hex ids, RFC 3339 times | `Authorization: Token`, as `REDACTED[admin-token]` | |
| neo4j | | | | |
| orientdb | | the whole `/server` status body | each `Authorization: Basic` credential, as `REDACTED[<label>]` | |
| questdb | | | | |
| ravendb | | RFC 3339 times | | |
| surrealdb | | per-statement `"time"` | each `Authorization: Basic` credential, as `REDACTED[<label>]` | |
| tidb | | the DDL owner's UUID (`{{uuid-N}}`) | the container IP, `start_timestamp`, `max_procs`, `connections`, `update_timestamp`, the case tables' ids (1001, 1002, in bodies and `table_id(s)=`) and the case database's (110) | |
| dind | | container, network, endpoint and sandbox ids (`{{docker-id-N}}`; image ids and layer digests are content hashes and stay) | the daemon's clock fields (`Created`, `StartedAt`, `FinishedAt`, `CreatedAt`, `LastTagTime`, `SystemTime`), `/info`'s `ID`, `Name`, `NFd`, `NGoroutines`, container and image counts, `NCPU`, `MemTotal`, `KernelVersion`, a running container's `Pid`, `/netns/<hex>`, `top`'s process table, the 12-hex short container id, endpoints' random MAC addresses, a container list's Unix `Created` | | |
| lowkeyvault | | 32-hex version ids (`{{version-N}}`), signature / wrapped-key / ciphertext blobs (`{{blob-N}}`), the identity endpoint's JWTs (`{{jwt-N}}`) | attribute times (`created`, `updated`, `deletedDate`, `scheduledPurgeDate`, a certificate's `exp`/`nbf`), a generated key's `n`, `x`, `y`, a certificate's `cer`, `csr`, `x5t`, the identity `expires_on`, Spring's error `timestamp` | `Authorization: Bearer` (credential preset, `AUTHORIZATION_N`) and `X-IDENTITY-HEADER` (`X_IDENTITY_HEADER_1`) | |
| trino | | `uptime`, the query id, the `nextUri` token | | |
| presto | | `uptime` | | |
| timeplus | | `x-timeplus-query-id` | | |
| kurrentdb | | | | |
| etcd | | the cluster id, member ids, the Raft term | | |
| rabbitmq | | `rabbit@<hostname>`, scheduler counts, `object_totals`, `statistics_db_event_queue` | each `Authorization: Basic` credential, as `REDACTED[<label>]` | |
| activemq | | `Expires`, Jolokia's `timestamp`, `agentId`, `multicastGroup` / `multicastPort` | `Authorization: Basic`, as `REDACTED[admin]` | |
| artemis | | | `Authorization: Basic`, as `REDACTED[me]` | |
| pulsar | | | | |
| redpanda | | | | |
| scylladb | the node's UUIDs (host id, schema version, `{{uuid-N}}`) and IPv4 address (`{{ip-N}}`) | the 256 random tokens (whole array), the generation number, `load_map` bytes, ownership shares, snapshot sizes, `uptime_ms` | | |
| yugabytedb | random v4 UUIDs, hyphenated or bare (`{{uuid-N}}`), IPv4 addresses (`{{ip-N}}`) | `instance_seqno`, `start_time_us`, uptimes, heartbeat ages, RAM and disk figures, rates and tablet counts, a table's `on_disk_size`, the `system` list of `/api/v1/tables`, three machine-sized varz flags, the node's metric name, the heap profile path, a Prometheus sample's `exported_instance` and timestamp | | |

Written in a stable order (Servirtium's opt-in stable order, servirtium-vcr
AGENTS.md: the service sends these in a different order each run, and the
tape has them sorted, losing nothing; header and key order mean nothing to
a client, a sorted array is a deliberate change of the recorded response):

| Suite | Response headers by name | JSON object keys | JSON arrays sorted | A header's items |
|---|---|---|---|---|
| meilisearch | yes | | | |
| qdrant | yes | | | |
| vearch | | yes | | |
| tidb | | | `GET /schema`'s databases, by `/db_name/L` | |
| lowkeyvault | | | a `/versions` list, by `/attributes/created` (oldest first) | `Allow` |
| scylladb | | | the hash-map listings (`/column_family/`, `/column_family/name`, `.../name/keyspace`, `/storage_service/keyspaces`, `/storage_service/logging_level`, `/system/logger`), by canonical JSON | |

Vault uses Servirtium's credential preset
(`servirtium.redact_credential_header("X-Vault-Token")`): the token is
written as a numbered token, and playback matches the header on presence,
not value, so it needs no secret. CouchDB's module cases and Typesense keep
labelled literal redactions instead, because their cases send a wrong
credential on purpose and playback should keep telling it from the right
one. CouchDB's API cases do both: the session cookie through the preset, the
login body's password as labelled redactions (see the pattern below). The module also
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
sending to the recorder (`test_minio.ae` says how a port does the same). The comprehensive block (16 tapes: buckets, objects, listing, versioning,
tags, policy, multipart, presigned URL, errors) has one tape about credentials
(unsigned, unknown key, wrong secret, right credentials) where CouchDB has its
login tape; every other tape is "already logged in" by sending any
`Authorization: AWS4-HMAC-SHA256 ...` header.

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
- **Spanner:** the emulator's REST/JSON API (port 9020) is taped, not its
  gRPC port. Create instance and create database come back already done, so
  no operation is polled. Its REST maps NOT_FOUND to a 500 ("failed to
  marshal error message"), so the error case taped is a 400 for bad SQL.
- **Not recordable:** the Bigtable emulator has no REST API, and its test
  only opens a TCP connection to a gRPC port (no HTTP), so it stays in
  testcontainers-ae.

**Search, mail, identity and the rest:**
- **Output order that changes run to run.** Meilisearch and Qdrant send
  their response headers in a different order each run, and Vearch its
  JSON keys; the tapes have them sorted (the stable-order table above), so
  `vary`, Qdrant's dashboard page and Vearch's whole banner are on them.
- **Solr:** the module creates its collection inside `run`, so that call is
  not on the tape. The health check is `/admin/info/health`, not
  `/admin/info/system` (memory, load and clock readings).
- **Mailpit, Inbucket, Papercut:** the SMTP send is TCP and runs live before
  recording; only the REST read-back (Papercut: its web page) is taped.
- **Dex:** the discovery document names the issuer, the container's own
  host:port; the test compares it with the live issuer, or with
  `<base>/dex` on playback. The JWKS key is collapsed to constants.
- **Registry:** pull, tag and push go from the container engine to the
  registry, not through the recorder; only the test's own HTTP calls are
  taped.
- **Grafana LGTM:** Prometheus, Loki and Tempo are polled live until ready,
  then each tape holds one request. OTLP gRPC is checked live only.
- **Pinecone:** the tape names the index host `localhost:5081`, fixed by the
  image.
- **Floating tags:** `solr:9` and `papercut-smtp:latest` can change under a
  re-record.

**Databases and brokers:**
- **HTTP beside a binary protocol.** Neo4j (Bolt), RabbitMQ (AMQP),
  ActiveMQ (OpenWire), Artemis (STOMP) and Pulsar (pulsar://) are checked
  over their binary protocol live only; the tapes hold their HTTP side:
  Cypher over HTTP, the management and admin APIs, Jolokia, and Artemis's
  console (a single redirect).
- **Polled live until ready, then recorded:** KurrentDB (until the node is
  `leader`), etcd, RabbitMQ's management API, ActiveMQ's Jolokia.
- **etcd:** a case reading through several nodes records a tape per node,
  `<case>`, `<case>_node2`, `<case>_node3`.
- **Order that changes run to run, again:** Couchbase's `componentsVersion`
  object and OrientDB's whole `/server` report are collapsed (see the
  ordering note above).
- **TiDB (comprehensive, status port 10080):** the image runs standalone
  (unistore: no PD, no TiKV), so `/regions/meta` and table regions are 404s
  (taped as such), and the status port needs no login. Tables are created
  with SQL (testcontainers-ae's `sql.mysql`) before each tape, never on it.
  `GET /schema` lists databases in Go map order, different each run; the
  tape has them sorted by name (a case table's and the case database's ids
  are collapsed to constants in bodies and in `table_id(s)=`).
- **ScyllaDB:** the REST management API (port 10000) listens on loopback
  inside the container, so the module's `rest_api()` option publishes it
  (`--api-address=0.0.0.0`). Keyspaces are made with `cqlsh` in the
  container, outside the tapes. Listings Seastar builds from hash maps
  (`/column_family/`, `/storage_service/keyspaces` with several keyspaces,
  the loggers) change order between runs; the tapes have them sorted.
- **CockroachDB (comprehensive, HTTP API v2):** a secure single node (TLS,
  SQL users with passwords, so the login is real: `POST /api/v2/login/` with
  a form body answers a session token that the other calls send as
  `X-Cockroach-API-Session`; logout kills it server-side). The recorder
  verifies the node's own CA (`servirtium.trust_upstream_ca`), against
  `127.0.0.1`, the name its certificate carries. The databases, tables and
  users the cases read are SQL fixtures (testcontainers-ae's `sql.postgres`),
  made once before any tape. `/events/` is read filtered by type
  (`create_role`: only the fixtures make those), so the other cases'
  schema changes never show on it; a node's `metrics` (80 KB of counters) is
  collapsed to one entry. Its tapes are not shipped (see "Tapes we don't
  ship" above); a tape you record carries the licence terms at its top.
- **YugabyteDB:** the master (7000) and tserver (9000) web servers, which
  the module now publishes. yb-master dies at start on an arm64 Mac's Podman
  machine (an Abseil `ElfMemImage` assertion, with the arm64 or the emulated
  amd64 image), so these tapes were recorded on a native x86_64 Linux host;
  playback runs anywhere. A case touching both servers records two tapes
  (`<case>`, `<case>_tserver`). The tables are made with `ycqlsh` and
  `ysqlsh` in the container, outside the tapes; `/api/v1/tables`'s `system`
  list (order changes between runs) is collapsed.
- **Solace is not here:** its image needs `ulimit nofile=1048576`, which a
  rootless Podman machine refuses; it can be recorded on Docker or a
  rootful Podman machine.

**dind (the Docker Engine API):**
- **Rootless Podman:** `docker:dind` is privileged. A rootless Podman machine
  runs it (`--privileged`) only in its own cgroup namespace: testcontainers-ae's
  `dind_private_cgroupns()` option, since Go's module asks for the host's, which
  a rootless engine refuses.
- **No login, a fixed API version:** the plain TCP socket has no
  authentication; every path is `/v1.48/...` (the unversioned `/_ping` and
  `/version` are taped once).
- **A pull is taped only when nothing downloads.** A first pull's progress
  stream has a timing-dependent number of lines, so each case pulls the image
  live before its recording starts and the images case taped the "Image is up
  to date" pull.
- **Host-specific:** the tapes were recorded on arm64 (image id and digest,
  `Architecture`).

**Lowkey Vault (the Azure Key Vault REST API):**
- **HTTPS with its own certificate.** The recorder verifies the container's
  self-signed certificate (`servirtium.trust_upstream_ca`; the test reads the
  PEM with the `openssl` command-line tool, which recording needs); the test
  talks plain HTTP to the recorder and playback is plain HTTP. An Azure SDK has
  to be allowed a non-TLS endpoint for replay.
- **Login:** the emulator accepts any bearer token and answers a request
  without one with a 401 challenge; the token comes from its managed-identity
  endpoint on a second port. The login case therefore has two tapes, the
  challenge on the vault port and `..._identity` for the token; every other
  case is already logged in (`Authorization: Bearer AUTHORIZATION_1`).
- **One emulator per case.** A vault cannot drop its entries (a deleted secret
  keeps its name; the default vault is `Recoverable`, so a purge is refused
  with a 500), so each case starts its own container and any one tape replays
  alone.
- **Order that changes run to run, again:** the versions of one name are
  listed in version-id order, which is random; the tapes have such a list
  oldest first (stable order scoped to `/versions` requests), so the cases
  list secrets, keys and certificates with two versions. `Allow` on a 405 is
  a Java set, written with its items sorted. A certificate policy without
  explicit key usages gets them from a set in varying order, so the cases
  name one of each.

Checks with no HTTP in them (a module's defaults, `tc.exec`, inspecting the
container, a refused option) run only live, and are skipped in playback.

The other redactions are a literal swap: the secret is written as its placeholder,
and on playback the placeholder in the tape is swapped back before the
request is compared. Placeholders must not contain one another, hence
`REDACTED[admin]` rather than `REDACTED-admin` beside
`REDACTED-admin-wrong-password`.

## Pattern for comprehensive suites

Most suites here are ports of testcontainers-go's module tests: a case or
two that prove the container starts and answers. A *comprehensive* suite
goes further: re-usable recordings of the service's API, broad enough that
another project's tests (any language) can replay them instead of running
the service. CouchDB is the pilot (`couchdb/test_couchdb.ae`, its "CouchDB
HTTP API" block); later suites follow the same shape:

1. **Scope written down.** The test file's header lists what the suite
   covers and what it leaves out, and why (continuous feeds and other
   connection- or timing-level behaviour, asynchronous jobs, node-specific
   numbers, features the image lacks). Cover the API a client actually uses,
   plus the representative error statuses (400, 401, 404, 409, 412, ...).
2. **One tape per scenario.** Each `spec.it` records one tape, named for what
   it shows (`refuses_a_stale_revision_with_a_409`), and is independent:
   it creates its own resources under a fixed name, works in them and
   deletes them on the tape, so any tape replays alone. Whatever a live run
   needs that is not part of the scenario (starting the container, clearing
   leftovers of a failed run, logging in) happens outside the recording,
   in the `live()` branch.
3. **Login gets its own tape; everything else is already logged in.** The
   login scenario (right and wrong password, who-am-I, logout) is one tape.
   Every other case carries the session credential the login mints, obtained
   live outside the recorder before the case starts, and written to the tape
   through Servirtium's credential preset (`redact_credentials()`: `Cookie:
   AuthSession=COOKIE_1`, `Authorization: Bearer AUTHORIZATION_1`, or
   `redact_credential_header` for a custom header), so playback matches it on
   presence. A port's "already logged in" fixture is then just "send the
   header with any value"; no login tape needed. Passwords in a login body
   are labelled literal redactions (`REDACTED[admin]`), put back on replay,
   so the right and wrong password stay distinct. The case that shows what
   happens unauthenticated sends no credential at all: presence matching
   cannot tell a forged credential from a good one. These are component-level
   tests of the service's API, never called end-to-end.
4. **Every rewrite chosen and explained.** Each rule gets a comment saying
   why. *Normalize* (stable `{{name-N}}` tokens) what a client sends back:
   ids, sequence tokens, ETags. *Collapse* (one constant) what nobody sends
   back: timestamps, start times, expiry dates. Scope a pattern by its
   context (a field name, a lookaround such as `(?<=")[0-9a-f]{32}(?=")`;
   the patterns are PCRE2) so it does not swallow values that are stable.
   Leave deterministic values alone and say so: CouchDB's revs are content
   hashes, the same every run, which is a feature for a reader.
5. **Rules per block.** Rules apply to every recording after them in the
   process, so a file with a ported block and a comprehensive block calls
   `clear_rules()` and registers its own set before each.
6. **Comments for someone else's LLM.** The file header: what the suite
   covers, how to run it, how tapes map to cases, how to authenticate, what
   varies and how it is rewritten. Each case: a `// PORTING:` block with
   every request (method, path, body shape) and what the assertions check.
   Assertions treat normalized values as opaque: on replay an id is
   literally `{{uuid-2}}`, so never assert its length or shape.
7. **Proven stable.** `TCAE_VCR=record`, then `check` at least twice with no
   `.md.actual` left, then `playback`. Things that bit the pilot:
   - Servirtium's playback reads a tape with CRLF folded to LF, so a body
     the service streamed with CRLF (CouchDB's view, `_find` and `_changes`
     rows) replays with LF. Assert on parsed JSON or with CRs removed.
   - A normalized token sent back in a URL path (`/db/{{uuid-2}}`,
     `?since={{seq-2}}`) must go out with its braces unencoded: playback
     compares paths byte for byte, and `%7B` does not match `{`.
   - A service that orders output differently each run (several shards,
     concurrent writers) needs a deterministic setup (CouchDB databases
     are created with `?q=1`) or, failing that, the TODO.md ordering work.
   - The recorded request `Content-Length` of a redacted body is the
     redacted body's; playback does not compare it (a transport header).

## Where the code comes from

- **Servirtium:** `lib/servirtium_vcr` is a relative symlink to this
  repository's own `core/` (`../../../core`), so the suites record with the
  Servirtium they sit beside (v2.0.0-alpha.13 for the tapes here). `ae test`
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
`license_notice(text)` is one more such rule: the text goes at the top of
each tape, under `## LICENSE NOTICE`, and playback ignores it.
`skip_if_no_tape(fw, suite, case)` skips the whole suite in playback when
that tape is absent (the suites whose tapes are not shipped call it).

What does not go over HTTP (`tc.exec`, inspecting the container, a container
that must fail to start) stays in the `live()` part of a case, or in a case
gated with `spec.it_when(servirtium.live(), ...)`, and does not run in
playback. A polling loop replays exactly as it ran when recorded, but a loop
whose iteration count varies with timing makes the tape differ between
records; the suites here avoid them.
