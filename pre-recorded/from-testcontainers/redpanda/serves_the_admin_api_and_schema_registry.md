## LICENSE NOTICE

Recorded against docker.io/redpandadata/redpanda:v25.2.4. Redpanda
Community Edition is licensed under the Business Source License 1.1,
which does not allow using it for a Streaming or Queuing Service; its
Enterprise features are under the Redpanda Community License (paid, or a
one-time internal-evaluation trial). Use of this tape is subject to
those terms; see UPSTREAM-TERMS.md in servirtium-vcr's pre-
recorded/from-testcontainers.

## Interaction 0: GET /v1/status/ready

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
Content-Length: 18
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
{"status":"ready"}
```

## Interaction 1: GET /v1/security/users

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
Content-Length: 13
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
["tcae-user"]
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0, 1 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
