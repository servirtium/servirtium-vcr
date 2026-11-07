## Interaction 0: GET /

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
content-type: application/json; charset=UTF-8
content-length: 560
```
### Response body recorded for playback (200: application/json; charset=UTF-8):

```
{
  "name" : "opensearch-node",
  "cluster_name" : "docker-cluster",
  "cluster_uuid" : "CLUSTER-UUID",
  "version" : {
    "distribution" : "opensearch",
    "number" : "2.11.1",
    "build_type" : "tar",
    "build_hash" : "6b1986e964d440be9137eba1413015c31c5a7752",
    "build_date" : "2023-11-29T21:45:35.524809067Z",
    "build_snapshot" : false,
    "lucene_version" : "9.7.0",
    "minimum_wire_compatibility_version" : "7.10.0",
    "minimum_index_compatibility_version" : "7.0.0"
  },
  "tagline" : "The OpenSearch Project: https://opensearch.org/"
}

```

## Interaction 1: PUT /tc/_doc/1?refresh=true

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 17
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"hello":"world"}
```
### Response headers recorded for playback:

```
Location: /tc/_doc/1
content-type: application/json; charset=UTF-8
content-length: 157
```
### Response body recorded for playback (201: application/json; charset=UTF-8):

```
{"_index":"tc","_id":"1","_version":1,"result":"created","forced_refresh":true,"_shards":{"total":2,"successful":1,"failed":0},"_seq_no":0,"_primary_term":1}
```

## Interaction 2: GET /tc/_doc/1

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
content-type: application/json; charset=UTF-8
content-length: 109
```
### Response body recorded for playback (200: application/json; charset=UTF-8):

```
{"_index":"tc","_id":"1","_version":1,"_seq_no":0,"_primary_term":1,"found":true,"_source":{"hello":"world"}}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | none |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–2 |
| collapsed | whole recording | `"name" : "[0-9a-f]{12}"` | `"name" : "opensearch-node"` | 0 |
| collapsed | whole recording | `"cluster_uuid" : "[A-Za-z0-9_-]{22}"` | `"cluster_uuid" : "CLUSTER-UUID"` | 0 |
