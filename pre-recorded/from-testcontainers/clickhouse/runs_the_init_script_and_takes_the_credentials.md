## Interaction 0: POST /?database=testdb

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 25
Content-Type: text/plain
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-ClickHouse-Key: REDACTED[key]
X-ClickHouse-User: clickhouse
```
### Request body recorded for playback ():

```
SELECT id FROM test_table
```
### Response headers recorded for playback:

```
Connection: Keep-Alive
Content-Type: text/tab-separated-values; charset=UTF-8
X-ClickHouse-Server-Display-Name: clickhouse-server
Transfer-Encoding: chunked
X-ClickHouse-Query-Id: 00000000-0000-0000-0000-000000000000
X-ClickHouse-Format: TabSeparated
X-ClickHouse-Timezone: UTC
Keep-Alive: timeout=3
X-ClickHouse-Summary: {"read_rows":"1","read_bytes":"8","written_rows":"0","written_bytes":"0","total_rows_to_read":"1","result_rows":"0","result_bytes":"0"}
```
### Response body recorded for playback (200: text/tab-separated-values; charset=UTF-8):

```
1

```

## Interaction 1: POST /?database=testdb

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 8
Content-Type: text/plain
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-ClickHouse-Key: REDACTED[wrong-key]
X-ClickHouse-User: clickhouse
```
### Request body recorded for playback ():

```
SELECT 1
```
### Response headers recorded for playback:

```
Connection: Keep-Alive
Content-Type: text/plain; charset=UTF-8
X-ClickHouse-Server-Display-Name: clickhouse-server
Transfer-Encoding: chunked
X-ClickHouse-Exception-Code: 516
```
### Response body recorded for playback (403: text/plain; charset=UTF-8):

```
Code: 516. DB::Exception: clickhouse: Authentication failed: password is incorrect, or there is no user with such name. (AUTHENTICATION_FAILED) (version 23.3.8.21 (official build))

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0, 1 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted | request headers | (not shown: it may be the secret) | `X-ClickHouse-Key: REDACTED[key]` | 0 |
| redacted | request headers | (not shown: it may be the secret) | `X-ClickHouse-Key: REDACTED[wrong-key]` | 1 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
| collapsed | whole recording | `X-ClickHouse-Server-Display-Name: [0-9a-f]{12}` | `X-ClickHouse-Server-Display-Name: clickhouse-server` | 0, 1 |
| collapsed | whole recording | `X-ClickHouse-Query-Id: [0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `X-ClickHouse-Query-Id: 00000000-0000-0000-0000-000000000000` | 0 |
