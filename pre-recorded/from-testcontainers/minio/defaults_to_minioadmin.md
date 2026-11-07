## Interaction 0: GET /

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
Accept-Ranges: bytes
Content-Length: 275
Content-Type: application/xml
Server: MinIO
Strict-Transport-Security: max-age=31536000; includeSubDomains
Vary: Origin
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
X-Ratelimit-Limit: 1000
X-Ratelimit-Remaining: 1000
X-Xss-Protection: 1; mode=block
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8"?>
<ListAllMyBucketsResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/"><Owner><ID>02d6176db174dc93cb1b899f7c6078f08654445fe8cf1b6ce98d8855f66bdbf4</ID><DisplayName>minio</DisplayName></Owner><Buckets></Buckets></ListAllMyBucketsResult>
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | request headers | `x-amz-date` | (left out) | 0 |
| removed | response headers | `x-amz-request-id` | (left out) | 0 |
| removed | response headers | `x-amz-id-2` | (left out) | 0 |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 0 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0 |
| collapsed | whole recording | `<RequestId>[^<]*</RequestId>` | `<RequestId>REQUEST-ID</RequestId>` | none |
| collapsed | whole recording | `<HostId>[^<]*</HostId>` | `<HostId>HOST-ID</HostId>` | none |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00.000Z` | none |
| collapsed | whole recording | `X-Ratelimit-Limit: [0-9]+` | `X-Ratelimit-Limit: 1000` | 0 |
| collapsed | whole recording | `X-Ratelimit-Remaining: [0-9]+` | `X-Ratelimit-Remaining: 1000` | 0 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
