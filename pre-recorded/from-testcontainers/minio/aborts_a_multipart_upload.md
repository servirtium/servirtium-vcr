## Interaction 0: PUT /tcae-abort

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
Location: /tcae-abort
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

## Interaction 1: POST /tcae-abort/never.bin?uploads

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_2
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
Content-Length: 232
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
<InitiateMultipartUploadResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/"><Bucket>tcae-abort</Bucket><Key>never.bin</Key><UploadId>{{uploadid-1}}</UploadId></InitiateMultipartUploadResult>
```

## Interaction 2: PUT /tcae-abort/never.bin?partNumber=1&uploadId={{uploadid-1}}

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_3
Connection: keep-alive
Content-Length: 1
Content-Type: application/octet-stream
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: 2d711642b726b04401627ca9fbac32f5c8530fb1903cc4db02258717921a4881
```
### Request body recorded for playback ():

```
x
```
### Response headers recorded for playback:

```
Accept-Ranges: bytes
Content-Length: 0
ETag: "9dd4e461268c8034f5c8564e155c67a6"
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

## Interaction 3: DELETE /tcae-abort/never.bin?uploadId={{uploadid-1}}

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

## Interaction 4: GET /tcae-abort/never.bin?uploadId={{uploadid-1}}

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_5
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
Content-Length: 378
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
### Response body recorded for playback (404: application/xml):

```
<?xml version="1.0" encoding="UTF-8"?>
<Error><Code>NoSuchUpload</Code><Message>The specified multipart upload does not exist. The upload ID may be invalid, or the upload may have been aborted or completed.</Message><Key>never.bin</Key><BucketName>tcae-abort</BucketName><Resource>/tcae-abort/never.bin</Resource><RequestId>REQUEST-ID</RequestId><HostId>HOST-ID</HostId></Error>
```

## Interaction 5: PUT /tcae-abort/never.bin?partNumber=1&uploadId={{uploadid-1}}

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_6
Connection: keep-alive
Content-Length: 1
Content-Type: application/octet-stream
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: 2d711642b726b04401627ca9fbac32f5c8530fb1903cc4db02258717921a4881
```
### Request body recorded for playback ():

```
x
```
### Response headers recorded for playback:

```
Accept-Ranges: bytes
Content-Length: 378
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
### Response body recorded for playback (404: application/xml):

```
<?xml version="1.0" encoding="UTF-8"?>
<Error><Code>NoSuchUpload</Code><Message>The specified multipart upload does not exist. The upload ID may be invalid, or the upload may have been aborted or completed.</Message><Key>never.bin</Key><BucketName>tcae-abort</BucketName><Resource>/tcae-abort/never.bin</Resource><RequestId>REQUEST-ID</RequestId><HostId>HOST-ID</HostId></Error>
```

## Interaction 6: POST /tcae-abort/never.bin?uploadId={{uploadid-1}}

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_7
Connection: keep-alive
Content-Length: 137
Content-Type: application/xml
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: bde4509453f917db380879a33540957ba29defd807fd120273853bbea5019263
```
### Request body recorded for playback ():

```
<CompleteMultipartUpload><Part><PartNumber>1</PartNumber><ETag>"9dd4e461268c8034f5c8564e155c67a6"</ETag></Part></CompleteMultipartUpload>
```
### Response headers recorded for playback:

```
Accept-Ranges: bytes
Content-Length: 378
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
### Response body recorded for playback (404: application/xml):

```
<?xml version="1.0" encoding="UTF-8"?>
<Error><Code>NoSuchUpload</Code><Message>The specified multipart upload does not exist. The upload ID may be invalid, or the upload may have been aborted or completed.</Message><Key>never.bin</Key><BucketName>tcae-abort</BucketName><Resource>/tcae-abort/never.bin</Resource><RequestId>REQUEST-ID</RequestId><HostId>HOST-ID</HostId></Error>
```

## Interaction 7: GET /tcae-abort/never.bin

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_8
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
Content-Length: 282
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
### Response body recorded for playback (404: application/xml):

```
<?xml version="1.0" encoding="UTF-8"?>
<Error><Code>NoSuchKey</Code><Message>The specified key does not exist.</Message><Key>never.bin</Key><BucketName>tcae-abort</BucketName><Resource>/tcae-abort/never.bin</Resource><RequestId>REQUEST-ID</RequestId><HostId>HOST-ID</HostId></Error>
```

## Interaction 8: POST /tcae-abort/never.bin?uploadId=bogus

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_9
Connection: keep-alive
Content-Length: 137
Content-Type: application/xml
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: bde4509453f917db380879a33540957ba29defd807fd120273853bbea5019263
```
### Request body recorded for playback ():

```
<CompleteMultipartUpload><Part><PartNumber>1</PartNumber><ETag>"9dd4e461268c8034f5c8564e155c67a6"</ETag></Part></CompleteMultipartUpload>
```
### Response headers recorded for playback:

```
Accept-Ranges: bytes
Content-Length: 378
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
### Response body recorded for playback (404: application/xml):

```
<?xml version="1.0" encoding="UTF-8"?>
<Error><Code>NoSuchUpload</Code><Message>The specified multipart upload does not exist. The upload ID may be invalid, or the upload may have been aborted or completed.</Message><Key>never.bin</Key><BucketName>tcae-abort</BucketName><Resource>/tcae-abort/never.bin</Resource><RequestId>REQUEST-ID</RequestId><HostId>HOST-ID</HostId></Error>
```

## Interaction 9: DELETE /tcae-abort

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_10
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
| removed | response headers | `Date` | (left out) | 0–9 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | request headers | `x-amz-date` | (left out) | 0–9 |
| removed | response headers | `x-amz-request-id` | (left out) | 0–9 |
| removed | response headers | `x-amz-id-2` | (left out) | 0–9 |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 0–9 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–9 |
| collapsed | whole recording | `X-Amz-Date=[0-9]{8}T[0-9]{6}Z` | `X-Amz-Date=20000101T000000Z` | none |
| collapsed | whole recording | `X-Amz-Credential=tcae-access%2F[0-9]{8}%2F` | `X-Amz-Credential=tcae-access%2F20000101%2F` | none |
| collapsed | whole recording | `X-Amz-Signature=[0-9a-f]{64}` | `X-Amz-Signature=0000000000000000000000000000000000000000000000000000000000000000` | none |
| collapsed | whole recording | `<RequestId>[^<]*</RequestId>` | `<RequestId>REQUEST-ID</RequestId>` | 4–8 |
| collapsed | whole recording | `<HostId>[^<]*</HostId>` | `<HostId>HOST-ID</HostId>` | 4–8 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00.000Z` | none |
| collapsed | whole recording | `Last-Modified: [A-Za-z]{3}, [0-9]{2} [A-Za-z]{3} [0-9]{4} [0-9:]{8} GMT` | `Last-Modified: Sat, 01 Jan 2000 00:00:00 GMT` | none |
| collapsed | whole recording | `X-Ratelimit-Limit: [0-9]+` | `X-Ratelimit-Limit: 1000` | 0–9 |
| collapsed | whole recording | `X-Ratelimit-Remaining: [0-9]+` | `X-Ratelimit-Remaining: 1000` | 0–9 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<=<UploadId>\|uploadId=)[A-Za-z0-9]{40,}` | `{{uploadid-N}}` | 1–6 |
| normalized | whole recording | `(?<=<NextContinuationToken>\|<ContinuationToken>\|continuation-token=)[A-Za-z0-9]+` | `{{token-N}}` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
