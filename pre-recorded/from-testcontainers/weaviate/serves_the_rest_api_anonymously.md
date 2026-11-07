## Interaction 0: GET /v1/.well-known/ready

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
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 1: GET /v1/meta

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
Access-Control-Allow-Headers: Content-Type, Authorization, Batch, X-Openai-Api-Key, X-Openai-Organization, X-Openai-Baseurl, X-Anyscale-Baseurl, X-Anyscale-Api-Key, X-Cohere-Api-Key, X-Cohere-Baseurl, X-Huggingface-Api-Key, X-Azure-Api-Key, X-Azure-Deployment-Id, X-Azure-Resource-Name, X-Azure-Concurrency, X-Azure-Block-Size, X-Google-Api-Key, X-Google-Vertex-Api-Key, X-Google-Studio-Api-Key, X-Goog-Api-Key, X-Goog-Vertex-Api-Key, X-Goog-Studio-Api-Key, X-Palm-Api-Key, X-Jinaai-Api-Key, X-Aws-Access-Key, X-Aws-Secret-Key, X-Voyageai-Baseurl, X-Voyageai-Api-Key, X-Mistral-Baseurl, X-Mistral-Api-Key, X-Anthropic-Baseurl, X-Anthropic-Api-Key, X-Databricks-Endpoint, X-Databricks-Token, X-Databricks-User-Agent, X-Friendli-Token, X-Friendli-Baseurl, X-Weaviate-Api-Key, X-Weaviate-Cluster-Url, X-Nvidia-Api-Key, X-Nvidia-Baseurl
Access-Control-Allow-Methods: *
Access-Control-Allow-Origin: *
Content-Type: application/json
Vary: Origin
Content-Length: 95
```
### Response body recorded for playback (200: application/json):

```
{"grpcMaxMessageSize":104858000,"hostname":"http://[::]:8080","modules":{},"version":"1.29.0"}

```

## Interaction 2: POST /v1/schema

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 34
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"class":"Tc","vectorizer":"none"}
```
### Response headers recorded for playback:

```
Access-Control-Allow-Headers: Content-Type, Authorization, Batch, X-Openai-Api-Key, X-Openai-Organization, X-Openai-Baseurl, X-Anyscale-Baseurl, X-Anyscale-Api-Key, X-Cohere-Api-Key, X-Cohere-Baseurl, X-Huggingface-Api-Key, X-Azure-Api-Key, X-Azure-Deployment-Id, X-Azure-Resource-Name, X-Azure-Concurrency, X-Azure-Block-Size, X-Google-Api-Key, X-Google-Vertex-Api-Key, X-Google-Studio-Api-Key, X-Goog-Api-Key, X-Goog-Vertex-Api-Key, X-Goog-Studio-Api-Key, X-Palm-Api-Key, X-Jinaai-Api-Key, X-Aws-Access-Key, X-Aws-Secret-Key, X-Voyageai-Baseurl, X-Voyageai-Api-Key, X-Mistral-Baseurl, X-Mistral-Api-Key, X-Anthropic-Baseurl, X-Anthropic-Api-Key, X-Databricks-Endpoint, X-Databricks-Token, X-Databricks-User-Agent, X-Friendli-Token, X-Friendli-Baseurl, X-Weaviate-Api-Key, X-Weaviate-Cluster-Url, X-Nvidia-Api-Key, X-Nvidia-Baseurl
Access-Control-Allow-Methods: *
Access-Control-Allow-Origin: *
Content-Type: application/json
Vary: Origin
Content-Length: 1167
```
### Response body recorded for playback (200: application/json):

```
{"class":"Tc","invertedIndexConfig":{"bm25":{"b":0.75,"k1":1.2},"cleanupIntervalSeconds":60,"stopwords":{"additions":null,"preset":"en","removals":null}},"multiTenancyConfig":{"autoTenantActivation":false,"autoTenantCreation":false,"enabled":false},"properties":null,"replicationConfig":{"asyncEnabled":false,"deletionStrategy":"NoAutomatedResolution","factor":1},"shardingConfig":{"virtualPerPhysical":128,"desiredCount":1,"actualCount":1,"desiredVirtualCount":128,"actualVirtualCount":128,"key":"_id","strategy":"hash","function":"murmur3"},"vectorIndexConfig":{"skip":false,"cleanupIntervalSeconds":300,"maxConnections":32,"efConstruction":128,"ef":-1,"dynamicEfMin":100,"dynamicEfMax":500,"dynamicEfFactor":8,"vectorCacheMaxObjects":1000000000000,"flatSearchCutoff":40000,"distance":"cosine","pq":{"enabled":false,"bitCompression":false,"segments":0,"centroids":256,"trainingLimit":100000,"encoder":{"type":"kmeans","distribution":"log-normal"}},"bq":{"enabled":false},"sq":{"enabled":false,"trainingLimit":100000,"rescoreLimit":20},"filterStrategy":"sweeping","multivector":{"enabled":false,"aggregation":"maxSim"}},"vectorIndexType":"hnsw","vectorizer":"none"}

```

## Interaction 3: GET /v1/schema/Tc

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
Access-Control-Allow-Headers: Content-Type, Authorization, Batch, X-Openai-Api-Key, X-Openai-Organization, X-Openai-Baseurl, X-Anyscale-Baseurl, X-Anyscale-Api-Key, X-Cohere-Api-Key, X-Cohere-Baseurl, X-Huggingface-Api-Key, X-Azure-Api-Key, X-Azure-Deployment-Id, X-Azure-Resource-Name, X-Azure-Concurrency, X-Azure-Block-Size, X-Google-Api-Key, X-Google-Vertex-Api-Key, X-Google-Studio-Api-Key, X-Goog-Api-Key, X-Goog-Vertex-Api-Key, X-Goog-Studio-Api-Key, X-Palm-Api-Key, X-Jinaai-Api-Key, X-Aws-Access-Key, X-Aws-Secret-Key, X-Voyageai-Baseurl, X-Voyageai-Api-Key, X-Mistral-Baseurl, X-Mistral-Api-Key, X-Anthropic-Baseurl, X-Anthropic-Api-Key, X-Databricks-Endpoint, X-Databricks-Token, X-Databricks-User-Agent, X-Friendli-Token, X-Friendli-Baseurl, X-Weaviate-Api-Key, X-Weaviate-Cluster-Url, X-Nvidia-Api-Key, X-Nvidia-Baseurl
Access-Control-Allow-Methods: *
Access-Control-Allow-Origin: *
Content-Type: application/json
Vary: Origin
Content-Length: 1167
```
### Response body recorded for playback (200: application/json):

```
{"class":"Tc","invertedIndexConfig":{"bm25":{"b":0.75,"k1":1.2},"cleanupIntervalSeconds":60,"stopwords":{"additions":null,"preset":"en","removals":null}},"multiTenancyConfig":{"autoTenantActivation":false,"autoTenantCreation":false,"enabled":false},"properties":null,"replicationConfig":{"asyncEnabled":false,"deletionStrategy":"NoAutomatedResolution","factor":1},"shardingConfig":{"actualCount":1,"actualVirtualCount":128,"desiredCount":1,"desiredVirtualCount":128,"function":"murmur3","key":"_id","strategy":"hash","virtualPerPhysical":128},"vectorIndexConfig":{"bq":{"enabled":false},"cleanupIntervalSeconds":300,"distance":"cosine","dynamicEfFactor":8,"dynamicEfMax":500,"dynamicEfMin":100,"ef":-1,"efConstruction":128,"filterStrategy":"sweeping","flatSearchCutoff":40000,"maxConnections":32,"multivector":{"aggregation":"maxSim","enabled":false},"pq":{"bitCompression":false,"centroids":256,"enabled":false,"encoder":{"distribution":"log-normal","type":"kmeans"},"segments":0,"trainingLimit":100000},"skip":false,"sq":{"enabled":false,"rescoreLimit":20,"trainingLimit":100000},"vectorCacheMaxObjects":1000000000000},"vectorIndexType":"hnsw","vectorizer":"none"}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–3 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–3 |
