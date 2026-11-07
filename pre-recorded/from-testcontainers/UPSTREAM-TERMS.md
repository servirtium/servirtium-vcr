# Upstream terms of the recorded services

Each tape here records one test's HTTP conversation with a third-party
container image. The software in that image is under its own licence and,
for some, its vendor's terms. Those terms govern the tapes as they govern
the image: **anyone who uses a tape is bound by the terms listed for its
service, including any restriction on reverse engineering**, just as they
would be if they ran the image themselves.

This is a record of what was checked and found, on 2026-11-07, for the
exact images the tests pin. It is **not legal advice**, and nobody who wrote
it is a lawyer. Where it is unsure it says so. If a licence or term has
changed since, or reads differently to you, the vendor's text wins: follow
the evidence links, and tell us.

Classes:

- **CLEAR**: an open-source licence (permissive or copyleft) with nothing
  in it that bears on recording, publishing or replaying HTTP interactions.
- **BOUND**: a restriction (no reverse engineering, no hosted service,
  internal use, ...) that we, and you as a user of the tapes, must honour.
  The tapes are shipped, each starting with a `## LICENSE NOTICE` section
  naming the terms (the test writes it on record:
  `servirtium.license_notice(...)`).
- **DECISION**: terms that plausibly forbid what we would be doing by
  publishing the tapes. For these the test and recorder are shipped but the
  **tapes are not**: record your own locally (the suite's `LICENCE-NOTE.md`
  says how), and in playback with no tape the suite skips with a notice.

Counts: 47 CLEAR, 12 BOUND, 3 DECISION (62 suites).

Product names are their owners' trademarks, used here only to say which
software a tape was recorded against.

## All suites

"Evidence" is where the licence was read: a path inside the image (checked
with `podman create` + `podman export`/`podman cp`), or the project's
licence file at the tag the image was built from.

| Suite | Image | Licence | Evidence | Relevant clauses | Class |
|---|---|---|---|---|---|
| activemq | `apache/activemq-classic:5.18.7` | Apache-2.0 | apache/activemq `LICENSE` | none | CLEAR |
| arangodb | `arangodb:3.11.5` | Apache-2.0 | arangodb/arangodb `v3.11.5/LICENSE`; the ArangoDB Community License (100 GiB, non-commercial) applies only to 3.12+ binaries | none | CLEAR |
| artemis | `apache/activemq-artemis:2.30.0-alpine` | Apache-2.0 | apache/activemq-artemis `LICENSE` | none | CLEAR |
| azurite | `mcr.microsoft.com/azure-storage/azurite:3.28.0` | MIT | Azure/Azurite `LICENSE` | none | CLEAR |
| chroma | `chromadb/chroma:1.4.0` | Apache-2.0 | chroma-core/chroma `LICENSE` | none | CLEAR |
| clickhouse | `clickhouse/clickhouse-server:23.3.8.21-alpine` | Apache-2.0 | ClickHouse/ClickHouse `LICENSE` | none | CLEAR |
| cockroachdb | `cockroachdb/cockroach:v23.1.30` | CockroachDB Software License (Cockroach Labs, proprietary, source-available) | `/licenses/LICENSE` in the image (read with `podman create` + `podman cp`); `cockroach version` reports "Build Tag: v23.1.30, Build Time: 2024/12/09" and "Distribution: CCL". Earlier v23.1 patch releases shipped under the BSL/CCL licences; the final ones moved to this licence, so the version is pinned, not the `latest-v23.1` tag | No reverse-engineering clause and none against recording or publishing. Use without a licence key only as "Limited Non-Production Use" (testing, a single node); must not circumvent the licence key, telemetry or other "Protective Measures"; notices kept; "Benchmark" is "any benchmark, comparative test or evaluation of the Software", to be disclosed with replication information | BOUND |
| consul | `hashicorp/consul:1.15` (served 1.15.10) | BUSL-1.1 (HashiCorp; MPL-2.0 after four years) | hashicorp/consul `release/1.15.x/LICENSE`: "Licensed Work: Consul Version 1.15.8 or later"; the tapes report 1.15.10 | Additional Use Grant: production use allowed unless "offering the Licensed Work" to third parties competitively | BOUND |
| couchbase | `couchbase:community-7.1.1` | Couchbase Community Edition License Agreement (CCELA/Apr2021/v3), proprietary | couchbase.com/community-license-agreement04272021 (not read from inside the image, which is not pulled here) | §4 internal business use and products that "interact with the Community Software"; §5(b) no "decompile, reverse engineer, disassemble"; §5(g) at most five nodes | BOUND |
| couchdb | `couchdb:3` | Apache-2.0 | apache/couchdb `LICENSE` | none (floating tag) | CLEAR |
| cratedb | `crate:5.7` | Apache-2.0 | crate/crate `LICENSE` | none | CLEAR |
| databend | `datafuselabs/databend:v1.2.615` | Apache-2.0 AND Elastic-2.0 | databendlabs/databend `v1.2.615/LICENSE`: enterprise code (`src/query/ee`, `src/meta/ee`, `ee_main.rs`) under Elastic License 2.0, in the same binary | ELv2: no hosted/managed service, no circumventing licence keys, keep notices | BOUND |
| dex | `dexidp/dex:v2.45.0` | Apache-2.0 | dexidp/dex `LICENSE` | none | CLEAR |
| dind | `docker:28.0.1-dind` (Docker Engine 28.0.1, containerd v1.7.25, runc 1.2.5; the cases run `busybox:1.36.1` inside it) | Apache-2.0 | moby/moby `v28.0.1/LICENSE`, docker/cli `v28.0.1/LICENSE` and docker-library/docker `LICENSE` (the image's packaging), all Apache-2.0; the image itself carries no licence files (checked with `find` for LICENSE/NOTICE/COPYING). The pulled-in busybox is GPL-2.0 software that is run, not recorded: the tapes hold its image id, layer digest and `echo` output only | none. Pulling from Docker Hub is under Docker's Hub terms, which concern the pull, not the tapes | CLEAR |
| dynamodb | `amazon/dynamodb-local:2.2.1` | AWS DynamoDB Local licence agreement, proprietary, on top of the AWS Customer Agreement | `/home/dynamodblocal/LICENSE.txt` in the image (32 lines); aws.amazon.com/agreement | use "solely (i) for your internal business purposes"; needs an AWS account; no "publicly communicate, transform"; no reverse engineering | **DECISION** (tapes not shipped) |
| elasticsearch | `docker.elastic.co/elasticsearch/elasticsearch:8.9.0` | Elastic-2.0 (the image's default distribution; the AGPL option arrived in 8.16) | `/usr/share/elasticsearch/LICENSE.txt` in the image | ELv2 limitations: no providing as a managed service, no circumventing licence keys, keep notices | BOUND |
| etcd | `gcr.io/etcd-development/etcd:v3.5.14` | Apache-2.0 | etcd-io/etcd `LICENSE` | none | CLEAR |
| fakegcsserver | `fsouza/fake-gcs-server:1.56.1` | BSD-2-Clause | fsouza/fake-gcs-server `LICENSE` | none | CLEAR |
| forgejo | `codeberg.org/forgejo/forgejo:11` | GPL-3.0-or-later | forgejo `LICENSE` | none | CLEAR |
| garage | `dxflrs/garage:v2.4.1` | AGPL-3.0 | deuxfleurs/garage `LICENSE` | none | CLEAR |
| gcloud_bigquery | `ghcr.io/goccy/bigquery-emulator:0.6.1` | MIT | goccy/bigquery-emulator `LICENSE` | none (a third-party emulator, not Google's) | CLEAR |
| gcloud_datastore | `gcr.io/google.com/cloudsdktool/cloud-sdk:emulators` (CLI 592.0.0, cloud-datastore-emulator 2.3.1) | none stated; Google-owned | image: `google-cloud-sdk/LICENSE` (CLI is Apache-2.0 "unless otherwise specified"; use with Google Cloud products "additionally ... governed by" their terms); `CloudDatastore.jar` bundles only third-party licences and says "All code ... under com/google/** is Google owned" | Google Cloud Terms of Service §3.3(b): no reverse engineering the Services; §1.5 Software under the Service Specific Terms | BOUND (uncertain) |
| gcloud_firestore | same image (cloud-firestore-emulator 1.23.0) | none stated; Google-owned | as above; `cloud-firestore-emulator.jar!/com/google/cloud/datastore/emulator/cli/FIRESTORE_EMULATOR_LICENSES` | as above | BOUND (uncertain) |
| gcloud_pubsub | same image (pubsub-emulator 0.8.37) | none stated; Google-owned | as above; `cloud-pubsub-emulator-0.8.37-all.jar` carries only bundled libraries' `LICENSE`/`NOTICE` | as above | BOUND (uncertain) |
| gcloud_spanner | `gcr.io/cloud-spanner-emulator/emulator:1.5.40` | Apache-2.0 | GoogleCloudPlatform/cloud-spanner-emulator `LICENSE`; `/licenses.txt.gz` in the image (third-party) | none | CLEAR |
| grafana_lgtm | `grafana/otel-lgtm:0.6.0` | Apache-2.0 (the image), bundling Grafana, Loki, Tempo (AGPL-3.0), Prometheus and the OpenTelemetry Collector (Apache-2.0) | grafana/docker-otel-lgtm `v0.6.0/LICENSE` | none | CLEAR |
| inbucket | `inbucket/inbucket:sha-2d409bb` | MIT | inbucket/inbucket `LICENSE` | none | CLEAR |
| influxdb | `influxdb:2.7.11` | MIT | influxdata/influxdb `LICENSE` (2.x) | none | CLEAR |
| kurrentdb | `kurrentplatform/kurrentdb:26.1.1` | Kurrent License v1 (source-available, ELv2-shaped) | kurrent-io/KurrentDB `LICENSE.md`, linked from the image's Docker Hub page | no hosted/managed service for third parties; no circumventing "the license mechanisms"; recipients get "these terms" | BOUND |
| localstack | `localstack/localstack:3.4` | Apache-2.0 | localstack/localstack `v3.4.0/LICENSE.txt` | none for what is taped (S3 only, `SERVICES=s3`). The image also bundles DynamoDB Local (`/usr/lib/localstack/dynamodb-local/latest/LICENSE.txt`, the same AWS licence as `dynamodb`), which these tapes do not exercise | CLEAR |
| mailpit | `axllent/mailpit:v1.20` | MIT | axllent/mailpit `LICENSE` | none | CLEAR |
| meilisearch | `getmeili/meilisearch:v1.10.3` | MIT | meilisearch/meilisearch `v1.10.3/LICENSE` (the BUSL enterprise edition came later) | none | CLEAR |
| milvus | `milvusdb/milvus:v2.3.9` | Apache-2.0 | milvus-io/milvus `v2.3.9/LICENSE` | none | CLEAR |
| minio | `cgr.dev/chainguard/minio:latest` | AGPL-3.0 (MinIO), Chainguard's build | minio/minio `LICENSE`; no licence file at the image's top level | none in MinIO's licence. Chainguard's own terms for its free `latest` images were not found; floating tag | CLEAR (Chainguard terms not determined) |
| mockserver | `mockserver/mockserver:5.15.0` | Apache-2.0 | mock-server/mockserver `LICENSE.md` | none | CLEAR |
| neo4j | `neo4j:4.4` | GPL-3.0 (Community Edition) | neo4j/neo4j `4.4/LICENSE.txt` | none (Enterprise needs `NEO4J_ACCEPT_LICENSE_AGREEMENT`; not used) | CLEAR |
| nginx | `nginx:1.25` | BSD-2-Clause | nginx `LICENSE` | none | CLEAR |
| openfga | `openfga/openfga:v1.18.0` | Apache-2.0 | openfga/openfga `LICENSE` | none | CLEAR |
| opensearch | `opensearchproject/opensearch:2.11.1` | Apache-2.0 | opensearch-project/OpenSearch `LICENSE.txt` | none | CLEAR |
| orientdb | `orientdb:3.2` | Apache-2.0 | orientechnologies/orientdb `license.txt` | none | CLEAR |
| papercutsmtp | `changemakerstudiosus/papercut-smtp:latest` | Apache-2.0 | ChangemakerStudios/Papercut-SMTP `LICENSE` | none (floating tag) | CLEAR |
| pinecone | `ghcr.io/pinecone-io/pinecone-local:v0.7.0` | Pinecone Local License Agreement, proprietary | pinecone.io/legal/24.09.23_Pinecone%20Local%20EULA.pdf (last updated 2024-09-23) | §1 only "Pinecone-authorized current or prospective customers"; §3(b) no reverse engineering; §3(c) no "similar or competitive product"; §3(d) no copying or transmitting "including ... recording" | **DECISION** (tapes not shipped) |
| presto | `prestodb/presto:0.286` | Apache-2.0 | prestodb/presto `LICENSE` | none | CLEAR |
| pulsar | `apachepulsar/pulsar:4.0.9` | Apache-2.0 | apache/pulsar `LICENSE` | none | CLEAR |
| qdrant | `qdrant/qdrant:v1.7.4` | Apache-2.0 | qdrant/qdrant `LICENSE` | none | CLEAR |
| questdb | `questdb/questdb:9.0.0` | Apache-2.0 | questdb/questdb `LICENSE.txt` | none | CLEAR |
| rabbitmq | `rabbitmq:3.12.11-management-alpine` | MPL-2.0 | rabbitmq/rabbitmq-server `LICENSE` | none | CLEAR |
| ravendb | `ravendb/ravendb:6.0-ubuntu-latest` | AGPL-3.0 under the RavenDB EULA (no licence key) | `/usr/lib/ravendb/LICENSE.txt` in the image; the module accepts it (`RAVEN_License_Eula_Accepted=true`) | EULA §1: server software under AGPLv3 until a licence key is received; §3: no "reverse engineer, derive source code, ... decompile" | BOUND |
| redpanda | `docker.io/redpandadata/redpanda:v25.2.4` | BUSL-1.1 (Community Edition; Apache-2.0 after four years) and the Redpanda Community License (Enterprise features) | redpanda-data/redpanda `v25.2.4/licenses/bsl.md`, `licenses/rcl.md` | BSL: not "for a Streaming or Queuing Service"; RCL: Enterprise features paid, or a one-time trial "solely for ... internal evaluation"; RCL §9 no trademark rights | BOUND |
| registry | `registry:2.8.3` (+ `alpine:3` pushed as content) | Apache-2.0 (+ Alpine's packages: MIT, GPL-2.0 BusyBox and others) | distribution/distribution `LICENSE` | none | CLEAR |
| s3mock | `adobe/s3mock:3.9.1` | Apache-2.0 | adobe/S3Mock `LICENSE` | none | CLEAR |
| scylladb | `scylladb/scylla:6.2` (served 6.2.3-0.20250119.bff9ddde1283) | AGPL-3.0 | `/usr/share/doc/scylla-server/copyright` in the image (`License: AGPL-3.0`; seastar Apache-2.0); `/opt/scylladb/share/doc/scylla/NOTICE.txt`. The ScyllaDB Source Available License (2025.1 and later, announced December 2024) is not in this image: 6.2 is the last AGPL line | none (floating tag `6.2`, which stops at 6.2.3; a 2025.x image would need re-reading) | CLEAR |
| solr | `solr:9` | Apache-2.0 | apache/solr `LICENSE.txt` | none (floating tag) | CLEAR |
| surrealdb | `surrealdb/surrealdb:v1.1.1` | BUSL-1.1 (Apache-2.0 on 2027-04-01) | surrealdb/surrealdb `v1.1.1/LICENSE` | Additional Use Grant: may not use it "for a Database Service" | BOUND |
| tidb | `pingcap/tidb:v8.4.0` | Apache-2.0 | pingcap/tidb `v8.4.0/LICENSE`; the image (`/tidb-server -V`) reports "Release Version: v8.4.0, Edition: Community" and carries no licence file of its own | none | CLEAR |
| timeplus | `timeplus/timeplusd:2.3.37` | none shipped; closed-source Timeplus Enterprise engine (not the Apache-2.0 Proton) | the image holds no licence for `timeplusd` (only Python's under `/usr/lib/python*`); likely terms: timeplus.com/eusa (End User Subscription Agreement, 2024-06-10) | EUSA §2.1.1 "solely for Customer's internal use"; §2.1.3 evaluation 30 days, internal; §2.3(f) no reverse engineering; §7 the Products are Confidential Information | **DECISION** (tapes not shipped) |
| toxiproxy | `ghcr.io/shopify/toxiproxy:2.12.0` | MIT | Shopify/toxiproxy `LICENSE` | none | CLEAR |
| trino | `trinodb/trino:435` | Apache-2.0 | trinodb/trino `LICENSE` | none | CLEAR |
| typesense | `typesense/typesense:26.0` | GPL-3.0 | typesense/typesense `LICENSE.txt` | none | CLEAR |
| vault | `hashicorp/vault:1.13.0` | MPL-2.0 (before HashiCorp's BSL change) | hashicorp/vault `v1.13.0/LICENSE`; the tapes report 1.13.0 | none | CLEAR |
| vearch | `vearch/vearch:3.5.1` | Apache-2.0 | vearch/vearch `LICENSE` | none | CLEAR |
| weaviate | `semitechnologies/weaviate:1.29.0` | BSD-3-Clause | weaviate/weaviate `LICENSE` | none | CLEAR |

For the CLEAR rows the licence was taken from the project's repository at or
near the pinned version, not from inside each image: only some images were
pulled on the machine this was done on. None of them carries an EULA we know
of, but a floating tag (`couchdb:3`, `solr:9`, `papercut-smtp:latest`,
`chainguard/minio:latest`) can change under a re-record.

## BOUND: what each requires

None of these licences forbids recording a service's HTTP responses or
publishing them; they restrict what may be done with the **software**. A
tape is not the software, but it is a record of how the software answers,
used as a stand-in for it in tests. So we ship these tapes with their
terms on them, and ask the same of you: honour the terms below as you would
if you ran the image, and don't use the tapes to get round them (for
example, as a specification to reverse engineer the product from, or to
stand in for it in a competing hosted service).

- **consul**: BUSL-1.1 (HashiCorp), Consul 1.15.8 or later. Production use is
  granted provided it "does not include offering the Licensed Work to third
  parties" in a competitive hosted or embedded offering. Each version
  becomes MPL-2.0 four years after publication. `vault` (1.13.0) predates the
  change and is MPL-2.0.
- **cockroachdb**: the CockroachDB Software License (Cockroach Labs),
  version v23.1.30, read from `/licenses/LICENSE` in the image. Not open
  source, but nothing in it forbids reverse engineering, recording or
  publishing what the software answers. Allowed without a licence key:
  "Limited Non-Production Use" (design, prototyping, testing or development
  in non-production environments, on a single node), which is all these
  tapes are. Forbidden: operating it otherwise without a licence key,
  circumventing or removing its "Protective Measures" (licence-key and
  telemetry requirements), removing the Licensor's notices (the tape's
  `## LICENSE NOTICE` is one: keep it), and passing any part of the Software
  on without the licence. Its definition of "Benchmark" is broad ("any
  benchmark, comparative test or evaluation of the Software"), and disclosing
  one needs the information to replicate it: do not use these tapes as an
  evaluation or comparison of CockroachDB. The tapes are API responses, not
  the Software. Earlier v23.1 patch releases were under the BSL and the
  CockroachDB Community License; the final ones, this one included, are under
  the Software License, so the image is pinned to the patch version. The
  licence is a vendor's own text and could be read as stricter than here:
  if in doubt, treat the tapes as DECISION and record your own.
- **couchbase**: CCELA/Apr2021/v3. Allowed: internal business use, and
  developing products that interact with the software (which is what a
  test of a client is). Forbidden: decompiling, reverse engineering,
  disassembling (§5(b)), distributing the software standalone (§5(d)),
  clusters over five nodes (§5(g)). The 7.1.1 image itself was not opened
  here; the agreement version is the one current when 7.1.1 shipped (2022).
- **elasticsearch**: Elastic License 2.0. No providing the software to third
  parties as a hosted or managed service; no moving, disabling or
  circumventing its licence-key functionality; no removing its licensing,
  copyright or other notices. The tape's `## LICENSE NOTICE` is one such
  notice: keep it.
- **databend**: Apache-2.0, except its enterprise code, which is in the same
  binary under the Elastic License 2.0 (the three limitations above).
  Enterprise features need a paid key; the tape uses none.
- **kurrentdb**: Kurrent License v1, which has the same shape as ELv2: no
  hosted or managed service for third parties, no circumventing "the
  license mechanisms in the software", and anyone you pass a copy to gets
  these terms.
- **ravendb**: the RavenDB EULA, accepted by the test's module
  (`RAVEN_License_Eula_Accepted=true`). With no licence key the server is
  under AGPL-3.0 (EULA §1); the EULA's §3 nonetheless forbids reverse
  engineering, deriving source code, decompiling and disassembling, and
  redistribution outside its terms. Honour §3 as well as the AGPL.
- **redpanda**: BUSL-1.1 for Community Edition, "may not use the Licensed
  Work for a Streaming or Queuing Service"; Enterprise features under the
  Redpanda Community License (paid, or a one-time trial for internal
  evaluation; no trademark rights).
- **surrealdb**: BUSL-1.1, "you may not use the Licensed Work for a Database
  Service"; Apache-2.0 from 2027-04-01.
- **gcloud_datastore, gcloud_firestore, gcloud_pubsub** (uncertain): the
  emulators in Google's `cloud-sdk:emulators` image are Google-owned,
  closed-source jars that state no licence of their own. The Cloud CLI's
  `LICENSE` is Apache-2.0 "unless otherwise specified by an alternate
  license file" and says use with Google Cloud products is additionally
  governed by those products' terms. The Google Cloud Terms of Service
  forbid reverse engineering the Services (§3.3(b)) and put downloadable
  Software under the Service Specific Terms (§1.5), whose General Software
  Terms license it for use on your own systems. Nothing found forbids
  recording the emulators or publishing what they answer, and the APIs they
  answer are Google's published, documented REST APIs. They are BOUND
  because the terms that apply are unclear: treat Google's Cloud terms as
  applying to these tapes. If you would rather not ship tapes whose terms
  can't be pinned down, these three are the next candidates for DECISION.
  (`gcloud_spanner`'s emulator is Apache-2.0 and `gcloud_bigquery`'s is a
  third party's MIT project: both CLEAR.)

**Cloud vendors' own terms and API imitations.** AWS's Customer Agreement
(§6.4) and Google Cloud's Terms of Service (§3.3) forbid their customers to
reverse engineer the *Services*. LocalStack, S3Mock, MinIO, Garage, Azurite,
fake-gcs-server and the BigQuery emulator are third parties' independent
implementations of those vendors' published APIs, under open-source
licences, and the tapes record those implementations, not the vendors'
services; we found nothing in the vendors' terms that reaches them, and
publishing recordings of them is CLEAR. Vendor-made emulators (DynamoDB
Local, Google's gcloud emulators, Pinecone Local) are different: they come
under the vendor's own terms, as above.

## DECISION: tapes not shipped

For each of these the test and the recorder are shipped and the tape is
not (it was removed on 2026-11-07). A `.gitignore` in the suite's directory
keeps locally recorded tapes out of git, `LICENCE-NOTE.md` there explains
and gives the record command, and the test writes the terms into the
`## LICENSE NOTICE` of any tape it records. In playback with no tape the
suite skips (`servirtium.skip_if_no_tape`).

- **dynamodb** (`amazon/dynamodb-local:2.2.1`). Its licence agreement
  (`/home/dynamodblocal/LICENSE.txt` in the image) grants a "personal,
  limited, nonexclusive" licence to use the software "solely (i) for your
  internal business purposes and (ii) in connection with the Services",
  only to holders of an AWS account in good standing, and forbids you to
  "distribute, act as a service bureau, publicly communicate, transform" the
  software, or to reverse engineer it, or to "encourage, assist, or
  authorize any other person" to. A public tape that stands in for DynamoDB
  Local in other people's tests is at least arguably outside internal
  business use and close to publicly communicating or transforming it. AWS
  can also amend the terms by posting them. Recommendation: do not ship;
  users with their own AWS account record locally.
- **pinecone** (`ghcr.io/pinecone-io/pinecone-local:v0.7.0`). The Pinecone
  Local License Agreement (2024-09-23; the v0.7.0 image may be under a later
  revision we did not find) limits use to "Pinecone-authorized current or
  prospective customers" (§1), forbids reverse engineering (§3(b)), using it
  "to build a similar or competitive product or service" (§3(c)), and
  copying, republishing or transmitting "any part" of it by any means,
  "including ... recording" (§3(d)). Of the three this is the clearest: a
  published tape of the emulator's answers is very plausibly forbidden.
  Recommendation: do not ship, ever, without Pinecone's written permission.
- **timeplus** (`timeplus/timeplusd:2.3.37`). The image ships the
  closed-source `timeplusd` engine of Timeplus Enterprise (not the Apache-2.0
  Proton) with no licence file at all, so by default all rights are
  reserved. The terms that most likely apply, Timeplus's End User
  Subscription Agreement (2024-06-10), allow internal use, or a 30-day
  internal evaluation, forbid reverse engineering (§2.3(f)), and make the
  products Confidential Information (§7). Uncertain, since nothing in the
  image points at the EUSA, but nothing grants publication either.
  Recommendation: do not ship; or ask Timeplus, or switch the suite to the
  Apache-2.0 Proton image, whose tapes would be CLEAR.

**Git history.** The removed tapes are still in this repository's history
(and may be in testcontainers-ae's, where these suites lived before
2026-11-07). History has not been rewritten.

## What could not be determined

- Chainguard's terms for its free `cgr.dev/chainguard/minio:latest` image
  (MinIO itself is AGPL-3.0).
- The licence file inside `couchbase:community-7.1.1`,
  `kurrentplatform/kurrentdb:26.1.1` and `ghcr.io/pinecone-io/pinecone-local:v0.7.0`:
  not pulled here; the vendors' published texts were used.
- Whether Pinecone revised its Local licence for v0.7.0.
- Which terms Google intends for the gcloud emulator jars, and which
  Timeplus intends for `timeplusd` 2.3.
- No benchmarking or "publishing results" clause was found in any of the
  terms above; the tapes hold no performance figures anyway.
