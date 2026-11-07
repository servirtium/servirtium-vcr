## Interaction 0: POST /v1/projects/spanner-project/instances

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 146
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"instanceId":"tcae-instance","instance":{"config":"projects/spanner-project/instanceConfigs/emulator-config","displayName":"tcae","nodeCount":1}}
```
### Response headers recorded for playback:

```
Content-Length: 940
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{"name":"projects/spanner-project/instances/tcae-instance/operations/_auto0","metadata":{"@type":"type.googleapis.com/google.spanner.admin.instance.v1.CreateInstanceMetadata","instance":{"name":"projects/spanner-project/instances/tcae-instance","config":"projects/spanner-project/instanceConfigs/emulator-config","displayName":"tcae","nodeCount":1,"processingUnits":1000,"state":"READY","createTime":"2026-01-01T00:00:00.000000Z","updateTime":"2026-01-01T00:00:00.000000Z"},"startTime":"2026-01-01T00:00:00.000000Z","endTime":"2026-01-01T00:00:00.000000Z"},"done":true,"response":{"@type":"type.googleapis.com/google.spanner.admin.instance.v1.Instance","name":"projects/spanner-project/instances/tcae-instance","config":"projects/spanner-project/instanceConfigs/emulator-config","displayName":"tcae","nodeCount":1,"processingUnits":1000,"state":"READY","createTime":"2026-01-01T00:00:00.000000Z","updateTime":"2026-01-01T00:00:00.000000Z"}}
```

## Interaction 1: POST /v1/projects/spanner-project/instances/tcae-instance/databases

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 145
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"createStatement":"CREATE DATABASE `tcae-db`","extraStatements":["CREATE TABLE singers (id INT64 NOT NULL, name STRING(100)) PRIMARY KEY (id)"]}
```
### Response headers recorded for playback:

```
Content-Length: 503
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{"name":"projects/spanner-project/instances/tcae-instance/databases/tcae-db/operations/_auto1","metadata":{"@type":"type.googleapis.com/google.spanner.admin.database.v1.CreateDatabaseMetadata","database":"projects/spanner-project/instances/tcae-instance/databases/tcae-db"},"done":true,"response":{"@type":"type.googleapis.com/google.spanner.admin.database.v1.Database","name":"projects/spanner-project/instances/tcae-instance/databases/tcae-db","state":"READY","databaseDialect":"GOOGLE_STANDARD_SQL"}}
```

## Interaction 2: POST /v1/projects/spanner-project/instances/tcae-instance/databases/tcae-db/sessions

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 2
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{}
```
### Response headers recorded for playback:

```
Content-Length: 186
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{"name":"projects/spanner-project/instances/tcae-instance/databases/tcae-db/sessions/0","createTime":"2026-01-01T00:00:00.000000Z","approximateLastUseTime":"2026-01-01T00:00:00.000000Z"}
```

## Interaction 3: POST /v1/projects/spanner-project/instances/tcae-instance/databases/tcae-db/sessions/0:beginTransaction

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 28
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"options":{"readWrite":{}}}
```
### Response headers recorded for playback:

```
Content-Length: 29
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{"id":"{{transaction-id-1}}"}
```

## Interaction 4: POST /v1/projects/spanner-project/instances/tcae-instance/databases/tcae-db/sessions/0:executeSql

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 167
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"sql":"INSERT INTO singers (id, name) VALUES (1, @name)","params":{"name":"Marc"},"paramTypes":{"name":{"code":"STRING"}},"transaction":{"id":"{{transaction-id-1}}"}}
```
### Response headers recorded for playback:

```
Content-Length: 134
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{"metadata":{"rowType":{},"undeclaredParameters":{"fields":[{"name":"name","type":{"code":"STRING"}}]}},"stats":{"rowCountExact":"1"}}
```

## Interaction 5: POST /v1/projects/spanner-project/instances/tcae-instance/databases/tcae-db/sessions/0:commit

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 40
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"transactionId":"{{transaction-id-1}}"}
```
### Response headers recorded for playback:

```
Content-Length: 49
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{"commitTimestamp":"2026-01-01T00:00:00.000000Z"}
```

## Interaction 6: POST /v1/projects/spanner-project/instances/tcae-instance/databases/tcae-db/sessions/0:commit

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 138
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"mutations":[{"insert":{"table":"singers","columns":["id","name"],"values":[["2","Catalina"]]}}],"singleUseTransaction":{"readWrite":{}}}
```
### Response headers recorded for playback:

```
Content-Length: 49
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{"commitTimestamp":"2026-01-01T00:00:00.000000Z"}
```

## Interaction 7: POST /v1/projects/spanner-project/instances/tcae-instance/databases/tcae-db/sessions/0:executeSql

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 107
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"sql":"SELECT id, name FROM singers ORDER BY id","transaction":{"singleUse":{"readOnly":{"strong":true}}}}
```
### Response headers recorded for playback:

```
Content-Length: 155
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{"metadata":{"rowType":{"fields":[{"name":"id","type":{"code":"INT64"}},{"name":"name","type":{"code":"STRING"}}]}},"rows":[["1","Marc"],["2","Catalina"]]}
```

## Interaction 8: POST /v1/projects/spanner-project/instances/tcae-instance/databases/tcae-db/sessions/0:executeSql

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 163
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"sql":"SELECT name FROM singers WHERE id = @id","params":{"id":"2"},"paramTypes":{"id":{"code":"INT64"}},"transaction":{"singleUse":{"readOnly":{"strong":true}}}}
```
### Response headers recorded for playback:

```
Content-Length: 174
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{"metadata":{"rowType":{"fields":[{"name":"name","type":{"code":"STRING"}}]},"undeclaredParameters":{"fields":[{"name":"id","type":{"code":"INT64"}}]}},"rows":[["Catalina"]]}
```

## Interaction 9: DELETE /v1/projects/spanner-project/instances/tcae-instance/databases/tcae-db/sessions/0

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
Content-Length: 2
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{}
```

## Interaction 10: DELETE /v1/projects/spanner-project/instances/tcae-instance/databases/tcae-db

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
Content-Length: 2
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–10 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–10 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2026-01-01T00:00:00.000000Z` | 0, 2, 5, 6 |
| normalized | whole recording | `MTc[A-Za-z0-9+/]{18,}={0,2}` | `{{transaction-id-N}}` | 3–5 |
