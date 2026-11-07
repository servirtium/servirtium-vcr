## Interaction 0: GET /indexes

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
content-type: application/json
content-length: 14
```
### Response body recorded for playback (200: application/json):

```
{"indexes":[]}
```

## Interaction 1: POST /indexes

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 106
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"name":"tcae","dimension":3,"metric":"cosine","spec":{"serverless":{"cloud":"aws","region":"us-east-1"}}}
```
### Response headers recorded for playback:

```
content-type: application/json
content-length: 170
```
### Response body recorded for playback (201: application/json):

```
{"name":"tcae","dimension":3,"metric":"cosine","host":"localhost:5081","spec":{"serverless":{"cloud":"aws","region":"us-east-1"}},"status":{"ready":true,"state":"Ready"}}
```

## Interaction 2: GET /indexes

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
content-type: application/json
content-length: 184
```
### Response body recorded for playback (200: application/json):

```
{"indexes":[{"name":"tcae","dimension":3,"metric":"cosine","host":"localhost:5081","spec":{"serverless":{"cloud":"aws","region":"us-east-1"}},"status":{"ready":true,"state":"Ready"}}]}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–2 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–2 |
