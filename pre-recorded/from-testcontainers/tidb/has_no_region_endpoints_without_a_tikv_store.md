## Interaction 0: GET /regions/meta

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
Content-Type: text/plain; charset=utf-8
X-Content-Type-Options: nosniff
Content-Length: 19
```
### Response body recorded for playback (404: text/plain; charset=utf-8):

```
404 page not found

```

## Interaction 1: GET /regions/1

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
Content-Type: text/plain; charset=utf-8
X-Content-Type-Options: nosniff
Content-Length: 19
```
### Response body recorded for playback (404: text/plain; charset=utf-8):

```
404 page not found

```

## Interaction 2: GET /tables/tcae_shop/tcae_orders/regions

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
Content-Type: text/plain; charset=utf-8
X-Content-Type-Options: nosniff
Content-Length: 19
```
### Response body recorded for playback (404: text/plain; charset=utf-8):

```
404 page not found

```

## Interaction 3: GET /tables/tcae_shop/tcae_orders/scatter

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
Content-Type: text/plain; charset=utf-8
X-Content-Type-Options: nosniff
Content-Length: 19
```
### Response body recorded for playback (404: text/plain; charset=utf-8):

```
404 page not found

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
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | none |
| collapsed | whole recording | `"ip": "[0-9.]+"` | `"ip": "10.0.0.1"` | none |
| collapsed | whole recording | `"advertise-address": "[0-9.]+"` | `"advertise-address": "10.0.0.1"` | none |
| collapsed | whole recording | `"start_timestamp": [0-9]+` | `"start_timestamp": 946684800` | none |
| collapsed | whole recording | `"max_procs": [0-9]+` | `"max_procs": 1` | none |
| collapsed | whole recording | `"connections":[0-9]+` | `"connections":0` | none |
| collapsed | whole recording | `"update_timestamp": [0-9]+` | `"update_timestamp": 450000000000000000` | none |
| collapsed | whole recording | `(?<=\n "id": )[0-9]+(?=,\n "name": \{\n  "O": "tcae_orders")` | `1001` | none |
| collapsed | whole recording | `(?<=\n "id": )[0-9]+(?=,\n "name": \{\n  "O": "tcae_customers")` | `1002` | none |
| collapsed | whole recording | `(?<=table_id=)[0-9]{3,4}(?![0-9])` | `1001` | none |
| collapsed | whole recording | `(?<=table_ids=)[0-9]{3,4}(?![0-9])` | `1001` | none |
| collapsed | whole recording | `(?<=\n  "id": )[0-9]+(?=,\n  "db_name": \{\n   "O": "tcae_shop")` | `110` | none |
| ordered | response body | the root array | sorted by `/db_name/L` | none |
