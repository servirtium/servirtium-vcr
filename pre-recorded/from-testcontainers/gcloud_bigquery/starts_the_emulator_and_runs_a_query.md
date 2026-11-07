## Interaction 0: POST /bigquery/v2/projects/bigquery-project/queries

### Request headers recorded for playback:

```
Authorization: Bearer owner
Connection: keep-alive
Content-Length: 82
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"query":"SELECT SUM(x) AS total FROM UNNEST([10, 20]) AS x","useLegacySql":false}
```
### Response headers recorded for playback:

```
Content-Type: application/json
Content-Length: 185
```
### Response body recorded for playback (200: application/json):

```
{"jobReference":{"jobId":"JOB-ID","projectId":"bigquery-project"},"schema":{"fields":[{"name":"total","type":"INTEGER"}]},"rows":[{"f":[{"v":"30"}]}],"totalRows":"1","jobComplete":true}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0 |
| collapsed | whole recording | `"jobId":"[A-Za-z0-9_-]+"` | `"jobId":"JOB-ID"` | 0 |
