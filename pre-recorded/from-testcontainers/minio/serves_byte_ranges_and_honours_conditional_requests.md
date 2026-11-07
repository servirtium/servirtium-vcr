## Interaction 0: PUT /tcae-ranges

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
Content-Length: 0
Location: /tcae-ranges
Server: MinIO
Strict-Transport-Security: max-age=31536000; includeSubDomains
Vary: Origin
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
X-Ratelimit-Limit: 1000
X-Ratelimit-Remaining: 1000
X-Xss-Protection: 1; mode=block
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 1: PUT /tcae-ranges/digits.txt

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_2
Connection: keep-alive
Content-Length: 10
Content-Type: text/plain
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: 84d89877f0d4041efb6bf91a16f0248f2fd573e6af05c19f96bedb9f882f7882
```
### Request body recorded for playback ():

```
0123456789
```
### Response headers recorded for playback:

```
Accept-Ranges: bytes
Content-Length: 0
ETag: "781e5e245d69b566979b86e28d23f2c7"
Server: MinIO
Strict-Transport-Security: max-age=31536000; includeSubDomains
Vary: Origin
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
X-Ratelimit-Limit: 1000
X-Ratelimit-Remaining: 1000
X-Xss-Protection: 1; mode=block
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: GET /tcae-ranges/digits.txt

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_3
Connection: keep-alive
Host: {{request.host}}
Range: bytes=2-5
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Accept-Ranges: bytes
Content-Length: 4
Content-Range: bytes 2-5/10
Content-Type: text/plain
ETag: "781e5e245d69b566979b86e28d23f2c7"
Last-Modified: Sat, 01 Jan 2000 00:00:00 GMT
Server: MinIO
Strict-Transport-Security: max-age=31536000; includeSubDomains
Vary: Origin
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
X-Ratelimit-Limit: 1000
X-Ratelimit-Remaining: 1000
X-Xss-Protection: 1; mode=block
```
### Response body recorded for playback (206: text/plain):

```
2345
```

## Interaction 3: GET /tcae-ranges/digits.txt

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_4
Connection: keep-alive
Host: {{request.host}}
Range: bytes=7-
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Accept-Ranges: bytes
Content-Length: 3
Content-Range: bytes 7-9/10
Content-Type: text/plain
ETag: "781e5e245d69b566979b86e28d23f2c7"
Last-Modified: Sat, 01 Jan 2000 00:00:00 GMT
Server: MinIO
Strict-Transport-Security: max-age=31536000; includeSubDomains
Vary: Origin
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
X-Ratelimit-Limit: 1000
X-Ratelimit-Remaining: 1000
X-Xss-Protection: 1; mode=block
```
### Response body recorded for playback (206: text/plain):

```
789
```

## Interaction 4: GET /tcae-ranges/digits.txt

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_5
Connection: keep-alive
Host: {{request.host}}
Range: bytes=-3
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Accept-Ranges: bytes
Content-Length: 3
Content-Range: bytes 7-9/10
Content-Type: text/plain
ETag: "781e5e245d69b566979b86e28d23f2c7"
Last-Modified: Sat, 01 Jan 2000 00:00:00 GMT
Server: MinIO
Strict-Transport-Security: max-age=31536000; includeSubDomains
Vary: Origin
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
X-Ratelimit-Limit: 1000
X-Ratelimit-Remaining: 1000
X-Xss-Protection: 1; mode=block
```
### Response body recorded for playback (206: text/plain):

```
789
```

## Interaction 5: GET /tcae-ranges/digits.txt

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_6
Connection: keep-alive
Host: {{request.host}}
Range: bytes=20-30
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Accept-Ranges: bytes
Content-Length: 393
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
### Response body recorded for playback (416: application/xml):

```
<?xml version="1.0" encoding="UTF-8"?>
<Error><Code>InvalidRange</Code><Message>The requested range &#39;bytes=20-30&#39; is not satisfiable</Message><Key>digits.txt</Key><BucketName>tcae-ranges</BucketName><Resource>/tcae-ranges/digits.txt</Resource><RequestId>REQUEST-ID</RequestId><HostId>HOST-ID</HostId><ActualObjectSize>10</ActualObjectSize><RangeRequested>20-30</RangeRequested></Error>
```

## Interaction 6: GET /tcae-ranges/digits.txt

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_7
Connection: keep-alive
Host: {{request.host}}
If-None-Match: "781e5e245d69b566979b86e28d23f2c7"
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Accept-Ranges: bytes
ETag: "781e5e245d69b566979b86e28d23f2c7"
Last-Modified: Sat, 01 Jan 2000 00:00:00 GMT
Server: MinIO
Strict-Transport-Security: max-age=31536000; includeSubDomains
Vary: Origin
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
X-Ratelimit-Limit: 1000
X-Ratelimit-Remaining: 1000
X-Xss-Protection: 1; mode=block
```
### Response body recorded for playback (304: text/plain):

```
```

## Interaction 7: GET /tcae-ranges/digits.txt

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_8
Connection: keep-alive
Host: {{request.host}}
If-Match: "nope"
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Accept-Ranges: bytes
Content-Length: 323
Content-Type: application/xml
ETag: "781e5e245d69b566979b86e28d23f2c7"
Last-Modified: Sat, 01 Jan 2000 00:00:00 GMT
Server: MinIO
Strict-Transport-Security: max-age=31536000; includeSubDomains
Vary: Origin
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
X-Ratelimit-Limit: 1000
X-Ratelimit-Remaining: 1000
X-Xss-Protection: 1; mode=block
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8"?>
<Error><Code>PreconditionFailed</Code><Message>At least one of the pre-conditions you specified did not hold</Message><Key>digits.txt</Key><BucketName>tcae-ranges</BucketName><Resource>/tcae-ranges/digits.txt</Resource><RequestId>REQUEST-ID</RequestId><HostId>HOST-ID</HostId></Error>
```

## Interaction 8: GET /tcae-ranges/digits.txt

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_9
Connection: keep-alive
Host: {{request.host}}
If-Match: "781e5e245d69b566979b86e28d23f2c7"
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Accept-Ranges: bytes
Content-Length: 10
Content-Type: text/plain
ETag: "781e5e245d69b566979b86e28d23f2c7"
Last-Modified: Sat, 01 Jan 2000 00:00:00 GMT
Server: MinIO
Strict-Transport-Security: max-age=31536000; includeSubDomains
Vary: Origin
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
X-Ratelimit-Limit: 1000
X-Ratelimit-Remaining: 1000
X-Xss-Protection: 1; mode=block
```
### Response body recorded for playback (200: text/plain):

```
0123456789
```

## Interaction 9: HEAD /tcae-ranges/digits.txt

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_10
Connection: keep-alive
Host: {{request.host}}
If-None-Match: "781e5e245d69b566979b86e28d23f2c7"
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Accept-Ranges: bytes
ETag: "781e5e245d69b566979b86e28d23f2c7"
Last-Modified: Sat, 01 Jan 2000 00:00:00 GMT
Server: MinIO
Strict-Transport-Security: max-age=31536000; includeSubDomains
Vary: Origin
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
X-Ratelimit-Limit: 1000
X-Ratelimit-Remaining: 1000
X-Xss-Protection: 1; mode=block
```
### Response body recorded for playback (304: text/plain):

```
```

## Interaction 10: DELETE /tcae-ranges/digits.txt

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_11
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
Server: MinIO
Strict-Transport-Security: max-age=31536000; includeSubDomains
Vary: Origin
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
X-Ratelimit-Limit: 1000
X-Ratelimit-Remaining: 1000
X-Xss-Protection: 1; mode=block
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 11: DELETE /tcae-ranges

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_12
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
Server: MinIO
Strict-Transport-Security: max-age=31536000; includeSubDomains
Vary: Origin
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
X-Ratelimit-Limit: 1000
X-Ratelimit-Remaining: 1000
X-Xss-Protection: 1; mode=block
```
### Response body recorded for playback (204: text/plain):

```
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–11 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | request headers | `x-amz-date` | (left out) | 0–11 |
| removed | response headers | `x-amz-request-id` | (left out) | 0–11 |
| removed | response headers | `x-amz-id-2` | (left out) | 0–11 |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 0–11 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–11 |
| collapsed | whole recording | `X-Amz-Date=[0-9]{8}T[0-9]{6}Z` | `X-Amz-Date=20000101T000000Z` | none |
| collapsed | whole recording | `X-Amz-Credential=tcae-access%2F[0-9]{8}%2F` | `X-Amz-Credential=tcae-access%2F20000101%2F` | none |
| collapsed | whole recording | `X-Amz-Signature=[0-9a-f]{64}` | `X-Amz-Signature=0000000000000000000000000000000000000000000000000000000000000000` | none |
| collapsed | whole recording | `<RequestId>[^<]*</RequestId>` | `<RequestId>REQUEST-ID</RequestId>` | 5, 7 |
| collapsed | whole recording | `<HostId>[^<]*</HostId>` | `<HostId>HOST-ID</HostId>` | 5, 7 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00.000Z` | none |
| collapsed | whole recording | `Last-Modified: [A-Za-z]{3}, [0-9]{2} [A-Za-z]{3} [0-9]{4} [0-9:]{8} GMT` | `Last-Modified: Sat, 01 Jan 2000 00:00:00 GMT` | 2–4, 6–9 |
| collapsed | whole recording | `X-Ratelimit-Limit: [0-9]+` | `X-Ratelimit-Limit: 1000` | 0–11 |
| collapsed | whole recording | `X-Ratelimit-Remaining: [0-9]+` | `X-Ratelimit-Remaining: 1000` | 0–11 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<=<UploadId>\|uploadId=)[A-Za-z0-9]{40,}` | `{{uploadid-N}}` | none |
| normalized | whole recording | `(?<=<NextContinuationToken>\|<ContinuationToken>\|continuation-token=)[A-Za-z0-9]+` | `{{token-N}}` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
