## Interaction 0: GET /health

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
content-length: 22
content-type: application/json
```
### Response body recorded for playback (200: application/json):

```
{"status":"available"}
```

## Interaction 1: GET /indexes

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
content-length: 221
content-type: application/json
```
### Response body recorded for playback (401: application/json):

```
{"message":"The Authorization header is missing. It must use the bearer authorization method.","code":"missing_authorization_header","type":"auth","link":"https://docs.meilisearch.com/errors#missing_authorization_header"}
```

## Interaction 2: GET /indexes

### Request headers recorded for playback:

```
Authorization: Bearer REDACTED[default-master-key]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
content-length: 46
content-type: application/json
```
### Response body recorded for playback (200: application/json):

```
{"results":[],"offset":0,"limit":20,"total":0}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–2 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `vary` | (left out) | 0–2 |
| redacted | request headers | (not shown: it may be the secret) | `Bearer REDACTED[default-master-key]` | 2 |
| redacted | request headers | (not shown: it may be the secret) | `Bearer REDACTED[my-master-key]` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–2 |
