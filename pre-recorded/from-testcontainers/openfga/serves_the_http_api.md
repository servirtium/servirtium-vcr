## Interaction 0: GET /healthz

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
Content-Type: application/json
Vary: Origin
Content-Length: 21
```
### Response body recorded for playback (200: application/json):

```
{"status":"SERVING"}

```

## Interaction 1: POST /stores

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 15
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"name":"tcae"}
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Origin
X-Http-Code: 201
Content-Length: 112
```
### Response body recorded for playback (201: application/json):

```
{"id":"{{store-id-1}}", "name":"tcae", "created_at":"2000-01-01T00:00:00Z", "updated_at":"2000-01-01T00:00:00Z"}
```

## Interaction 2: GET /stores

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
Content-Type: application/json
Vary: Origin
Content-Length: 169
```
### Response body recorded for playback (200: application/json):

```
{"stores":[{"id":"{{store-id-1}}", "name":"tcae", "created_at":"2000-01-01T00:00:00Z", "updated_at":"2000-01-01T00:00:00Z", "deleted_at":null}], "continuation_token":""}
```

## Interaction 3: GET /stores/{{store-id-1}}

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
Content-Type: application/json
Openfga-Store-Id: {{store-id-1}}
Vary: Origin
Content-Length: 131
```
### Response body recorded for playback (200: application/json):

```
{"id":"{{store-id-1}}", "name":"tcae", "created_at":"2000-01-01T00:00:00Z", "updated_at":"2000-01-01T00:00:00Z", "deleted_at":null}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–3 |
| removed | response headers | `X-Request-Id` | (left out) | 1–3 |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–3 |
| normalized | whole recording | `[0-9A-HJKMNP-TV-Z]{26}` | `{{store-id-N}}` | 1–3 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 1–3 |
