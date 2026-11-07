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

## Interaction 2: GET /v1/projects/spanner-project/instances/tcae-instance

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
Content-Length: 287
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{"name":"projects/spanner-project/instances/tcae-instance","config":"projects/spanner-project/instanceConfigs/emulator-config","displayName":"tcae","nodeCount":1,"processingUnits":1000,"state":"READY","createTime":"2026-01-01T00:00:00.000000Z","updateTime":"2026-01-01T00:00:00.000000Z"}
```

## Interaction 3: GET /v1/projects/spanner-project/instances/tcae-instance/databases

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
Content-Length: 149
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{"databases":[{"name":"projects/spanner-project/instances/tcae-instance/databases/tcae-db","state":"READY","databaseDialect":"GOOGLE_STANDARD_SQL"}]}
```

## Interaction 4: GET /v1/projects/spanner-project/instances/tcae-instance/databases/tcae-db/ddl

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
Content-Length: 103
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{"statements":["CREATE TABLE singers (\n  id INT64 NOT NULL,\n  name STRING(100),\n) PRIMARY KEY(id)"]}
```

## Interaction 5: PATCH /v1/projects/spanner-project/instances/tcae-instance/databases/tcae-db/ddl

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 60
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"statements":["ALTER TABLE singers ADD COLUMN born INT64"]}
```
### Response headers recorded for playback:

```
Content-Length: 475
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{"name":"projects/spanner-project/instances/tcae-instance/databases/tcae-db/operations/_auto2","metadata":{"@type":"type.googleapis.com/google.spanner.admin.database.v1.UpdateDatabaseDdlMetadata","database":"projects/spanner-project/instances/tcae-instance/databases/tcae-db","statements":["ALTER TABLE singers ADD COLUMN born INT64"],"commitTimestamps":["2026-01-01T00:00:00.000000Z"]},"done":true,"response":{"@type":"type.googleapis.com/google.protobuf.Empty","value":{}}}
```

## Interaction 6: GET /v1/projects/spanner-project/instances/tcae-instance/databases/tcae-db/ddl

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
Content-Length: 118
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{"statements":["CREATE TABLE singers (\n  id INT64 NOT NULL,\n  name STRING(100),\n  born INT64,\n) PRIMARY KEY(id)"]}
```

## Interaction 7: DELETE /v1/projects/spanner-project/instances/tcae-instance/databases/tcae-db

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
| removed | response headers | `Date` | (left out) | 0–7 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–7 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2026-01-01T00:00:00.000000Z` | 0, 2, 5 |
| normalized | whole recording | `MTc[A-Za-z0-9+/]{18,}={0,2}` | `{{transaction-id-N}}` | none |
