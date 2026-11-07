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
Connection: keep-alive
access-control-allow-origin: *
content-type: application/json; charset=utf-8
transfer-encoding: chunked
```
### Response body recorded for playback (200: application/json; charset=utf-8):

```
{"ok":true}
```

## Interaction 1: POST /collections

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 151
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-TYPESENSE-API-KEY: REDACTED[wrong-key]
```
### Request body recorded for playback ():

```
{"name":"companies","fields":[{"name":"company_name","type":"string"},{"name":"num_employees","type":"int32"}],"default_sorting_field":"num_employees"}
```
### Response headers recorded for playback:

```
Connection: keep-alive
access-control-allow-origin: *
content-type: application/json; charset=utf-8
transfer-encoding: chunked
```
### Response body recorded for playback (401: application/json; charset=utf-8):

```
{"message": "Forbidden - a valid `x-typesense-api-key` header must be sent."}
```

## Interaction 2: POST /collections

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 151
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-TYPESENSE-API-KEY: REDACTED[test-api-key]
```
### Request body recorded for playback ():

```
{"name":"companies","fields":[{"name":"company_name","type":"string"},{"name":"num_employees","type":"int32"}],"default_sorting_field":"num_employees"}
```
### Response headers recorded for playback:

```
Connection: keep-alive
access-control-allow-origin: *
content-type: application/json; charset=utf-8
transfer-encoding: chunked
```
### Response body recorded for playback (201: application/json; charset=utf-8):

```
{"created_at":946684800,"default_sorting_field":"num_employees","enable_nested_fields":false,"fields":[{"facet":false,"index":true,"infix":false,"locale":"","name":"company_name","optional":false,"sort":false,"stem":false,"type":"string"},{"facet":false,"index":true,"infix":false,"locale":"","name":"num_employees","optional":false,"sort":true,"stem":false,"type":"int32"}],"name":"companies","num_documents":0,"symbols_to_index":[],"token_separators":[]}
```

## Interaction 3: GET /collections/companies

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-TYPESENSE-API-KEY: REDACTED[test-api-key]
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Connection: keep-alive
access-control-allow-origin: *
content-type: application/json; charset=utf-8
transfer-encoding: chunked
```
### Response body recorded for playback (200: application/json; charset=utf-8):

```
{"created_at":946684800,"default_sorting_field":"num_employees","enable_nested_fields":false,"fields":[{"facet":false,"index":true,"infix":false,"locale":"","name":"company_name","optional":false,"sort":false,"stem":false,"type":"string"},{"facet":false,"index":true,"infix":false,"locale":"","name":"num_employees","optional":false,"sort":true,"stem":false,"type":"int32"}],"name":"companies","num_documents":0,"symbols_to_index":[],"token_separators":[]}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | none |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted | request headers | (not shown: it may be the secret) | `X-TYPESENSE-API-KEY: REDACTED[test-api-key]` | 2, 3 |
| redacted | request headers | (not shown: it may be the secret) | `X-TYPESENSE-API-KEY: REDACTED[custom-key]` | none |
| redacted | request headers | (not shown: it may be the secret) | `X-TYPESENSE-API-KEY: REDACTED[env-key]` | none |
| redacted | request headers | (not shown: it may be the secret) | `X-TYPESENSE-API-KEY: REDACTED[wrong-key]` | 1 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–3 |
| collapsed | whole recording | `"created_at":[0-9]+` | `"created_at":946684800` | 2, 3 |
