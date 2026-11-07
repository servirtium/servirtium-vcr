## Interaction 0: GET /devstoreaccount1?comp=list

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
Server: Azurite-Blob/3.28.0
x-ms-error-code: AuthorizationFailure
content-type: application/xml
Connection: keep-alive
Keep-Alive: timeout=5
Transfer-Encoding: chunked
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>AuthorizationFailure</Code>
  <Message>Server failed to authenticate the request. Make sure the value of the Authorization header is formed correctly including the signature.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.000Z</Message>
</Error>
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `x-ms-request-id` | (left out) | 0 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0 |
| collapsed | whole recording | `RequestId:[0-9a-f-]{36}` | `RequestId:REQUEST-ID` | 0 |
| collapsed | whole recording | `Time:[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `Time:2000-01-01T00:00:00.000Z` | 0 |
