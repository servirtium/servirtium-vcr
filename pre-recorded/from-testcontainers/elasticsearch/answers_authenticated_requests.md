## LICENSE NOTICE

Recorded against docker.elastic.co/elasticsearch/elasticsearch:8.9.0,
licensed under the Elastic License 2.0. It forbids providing the
software to third parties as a hosted or managed service, circumventing
its licence-key functionality, and removing its licensing or copyright
notices. Use of this tape is subject to those terms; see UPSTREAM-
TERMS.md in servirtium-vcr's pre-recorded/from-testcontainers.

## Interaction 0: GET /

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[elastic]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
X-elastic-product: Elasticsearch
content-type: application/json
content-length: 535
```
### Response body recorded for playback (200: application/json):

```
{
  "name" : "elasticsearch-node",
  "cluster_name" : "docker-cluster",
  "cluster_uuid" : "CLUSTER-UUID",
  "version" : {
    "number" : "8.9.0",
    "build_flavor" : "default",
    "build_type" : "docker",
    "build_hash" : "8aa461beb06aa0417a231c345a1b8c38fb498a0d",
    "build_date" : "2023-07-19T14:43:58.555259655Z",
    "build_snapshot" : false,
    "lucene_version" : "9.7.0",
    "minimum_wire_compatibility_version" : "7.17.0",
    "minimum_index_compatibility_version" : "7.0.0"
  },
  "tagline" : "You Know, for Search"
}

```

## Interaction 1: GET /

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[elastic-wrong-password]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer realm="security"
WWW-Authenticate: ApiKey
WWW-Authenticate: Basic realm="security" charset="UTF-8"
content-type: application/json
content-length: 465
```
### Response body recorded for playback (401: application/json):

```
{"error":{"root_cause":[{"type":"security_exception","reason":"unable to authenticate user [elastic] for REST request [/]","header":{"WWW-Authenticate":["Bearer realm=\"security\"","ApiKey","Basic realm=\"security\" charset=\"UTF-8\""]}}],"type":"security_exception","reason":"unable to authenticate user [elastic] for REST request [/]","header":{"WWW-Authenticate":["Bearer realm=\"security\"","ApiKey","Basic realm=\"security\" charset=\"UTF-8\""]}},"status":401}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | none |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[elastic]` | 0 |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[elastic-wrong-password]` | 1 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
| collapsed | whole recording | `"name" : "[0-9a-f]{12}"` | `"name" : "elasticsearch-node"` | 0 |
| collapsed | whole recording | `"cluster_uuid" : "[A-Za-z0-9_-]{22}"` | `"cluster_uuid" : "CLUSTER-UUID"` | 0 |
