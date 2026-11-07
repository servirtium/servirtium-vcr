## Interaction 0: GET /testcontainers

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
content-type: application/xml
content-length: 244
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8"?><ListBucketResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/"><Name>testcontainers</Name><Prefix></Prefix><KeyCount>0</KeyCount><MaxKeys>1000</MaxKeys><IsTruncated>false</IsTruncated></ListBucketResult>
```

## Interaction 1: PUT /testcontainers/hello.txt

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_2
Connection: keep-alive
Content-Length: 12
Content-Type: text/plain
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: 031232092749f824d44bbd1d7896c1caf18232f2138943e6368bbe9cf53d983d
```
### Request body recorded for playback ():

```
hello garage
```
### Response headers recorded for playback:

```
etag: "d76713d7923ed606e8bf7e0f971fb363"
content-length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: GET /testcontainers/hello.txt

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_3
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
accept-ranges: bytes
etag: "d76713d7923ed606e8bf7e0f971fb363"
content-type: text/plain
content-length: 12
```
### Response body recorded for playback (200: text/plain):

```
hello garage
```

## Interaction 3: GET /testcontainers

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_4
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
content-type: application/xml
access-control-allow-origin: *
content-length: 184
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8"?><Error><Code>AccessDenied</Code><Message>Forbidden: Invalid signature</Message><Resource>/testcontainers</Resource><Region>garage</Region></Error>
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–3 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | request headers | `x-amz-date` | (left out) | 0–3 |
| removed | response headers | `x-amz-version-id` | (left out) | 1 |
| removed | response headers | `last-modified` | (left out) | 2 |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 0–3 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–3 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
