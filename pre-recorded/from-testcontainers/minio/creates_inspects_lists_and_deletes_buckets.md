## Interaction 0: PUT /tcae-buckets

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
Location: /tcae-buckets
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

## Interaction 1: PUT /tcae-buckets

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
Content-Length: 319
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
### Response body recorded for playback (409: application/xml):

```
<?xml version="1.0" encoding="UTF-8"?>
<Error><Code>BucketAlreadyOwnedByYou</Code><Message>Your previous request to create the named bucket succeeded and you already own it.</Message><BucketName>tcae-buckets</BucketName><Resource>/tcae-buckets</Resource><RequestId>REQUEST-ID</RequestId><HostId>HOST-ID</HostId></Error>
```

## Interaction 2: HEAD /tcae-buckets

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
Accept-Ranges: bytes
Content-Length: 0
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
```

## Interaction 3: GET /tcae-buckets?location

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
Content-Length: 128
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
<LocationConstraint xmlns="http://s3.amazonaws.com/doc/2006-03-01/"></LocationConstraint>
```

## Interaction 4: PUT /tcae-buckets-b

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
Content-Length: 0
Location: /tcae-buckets-b
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

## Interaction 5: GET /

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_6
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
Content-Length: 467
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
<ListAllMyBucketsResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/"><Owner><ID>02d6176db174dc93cb1b899f7c6078f08654445fe8cf1b6ce98d8855f66bdbf4</ID><DisplayName>minio</DisplayName></Owner><Buckets><Bucket><Name>tcae-buckets</Name><CreationDate>2000-01-01T00:00:00.000Z</CreationDate></Bucket><Bucket><Name>tcae-buckets-b</Name><CreationDate>2000-01-01T00:00:00.000Z</CreationDate></Bucket></Buckets></ListAllMyBucketsResult>
```

## Interaction 6: DELETE /tcae-buckets-b

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_7
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

## Interaction 7: DELETE /tcae-buckets

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

## Interaction 8: HEAD /tcae-buckets

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_9
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
Server: MinIO
Strict-Transport-Security: max-age=31536000; includeSubDomains
Vary: Origin
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
X-Minio-Error-Code: NoSuchBucket
X-Minio-Error-Desc: "The specified bucket does not exist"
X-Ratelimit-Limit: 1000
X-Ratelimit-Remaining: 1000
X-Xss-Protection: 1; mode=block
```
### Response body recorded for playback (404: text/plain):

```
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–8 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | request headers | `x-amz-date` | (left out) | 0–8 |
| removed | response headers | `x-amz-request-id` | (left out) | 0–8 |
| removed | response headers | `x-amz-id-2` | (left out) | 0–8 |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 0–8 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–8 |
| collapsed | whole recording | `X-Amz-Date=[0-9]{8}T[0-9]{6}Z` | `X-Amz-Date=20000101T000000Z` | none |
| collapsed | whole recording | `X-Amz-Credential=tcae-access%2F[0-9]{8}%2F` | `X-Amz-Credential=tcae-access%2F20000101%2F` | none |
| collapsed | whole recording | `X-Amz-Signature=[0-9a-f]{64}` | `X-Amz-Signature=0000000000000000000000000000000000000000000000000000000000000000` | none |
| collapsed | whole recording | `<RequestId>[^<]*</RequestId>` | `<RequestId>REQUEST-ID</RequestId>` | 1 |
| collapsed | whole recording | `<HostId>[^<]*</HostId>` | `<HostId>HOST-ID</HostId>` | 1 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00.000Z` | 5 |
| collapsed | whole recording | `Last-Modified: [A-Za-z]{3}, [0-9]{2} [A-Za-z]{3} [0-9]{4} [0-9:]{8} GMT` | `Last-Modified: Sat, 01 Jan 2000 00:00:00 GMT` | none |
| collapsed | whole recording | `X-Ratelimit-Limit: [0-9]+` | `X-Ratelimit-Limit: 1000` | 0–8 |
| collapsed | whole recording | `X-Ratelimit-Remaining: [0-9]+` | `X-Ratelimit-Remaining: 1000` | 0–8 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<=<UploadId>\|uploadId=)[A-Za-z0-9]{40,}` | `{{uploadid-N}}` | none |
| normalized | whole recording | `(?<=<NextContinuationToken>\|<ContinuationToken>\|continuation-token=)[A-Za-z0-9]+` | `{{token-N}}` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
