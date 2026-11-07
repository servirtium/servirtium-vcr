## LICENSE NOTICE

Recorded against ravendb/ravendb:6.0-ubuntu-latest with its EULA
accepted (RAVEN_License_Eula_Accepted=true) and no licence key, so the
server is under AGPL-3.0 per EULA section 1. The EULA (section 3)
forbids reverse engineering, decompiling or disassembling the software.
Use of this tape is subject to those terms; see UPSTREAM-TERMS.md in
servirtium-vcr's pre-recorded/from-testcontainers.

## Interaction 0: GET /build/version

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
Content-Type: application/json; charset=utf-8
Transfer-Encoding: chunked
Raven-Server-Version: 6.0.110.60067
Server-Startup-Time: 2000-01-01T00:00:00Z
```
### Response body recorded for playback (200: application/json; charset=utf-8):

```
{"BuildVersion":60067,"ProductVersion":"6.0","CommitHash":"aafcfe0","FullVersion":"6.0.110"}
```

## Interaction 1: GET /databases

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
Content-Type: application/json; charset=utf-8
Transfer-Encoding: chunked
Raven-Server-Version: 6.0.110.60067
```
### Response body recorded for playback (200: application/json; charset=utf-8):

```
{"Databases":[]}
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
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 0 |
