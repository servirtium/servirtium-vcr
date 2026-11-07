## Interaction 0: PUT /tcae-multi

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
Location: /tcae-multi
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

## Interaction 1: POST /tcae-multi/big.bin?uploads

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
Content-Length: 230
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
<InitiateMultipartUploadResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/"><Bucket>tcae-multi</Bucket><Key>big.bin</Key><UploadId>{{uploadid-1}}</UploadId></InitiateMultipartUploadResult>
```

## Interaction 2: PUT /tcae-multi/big.bin?partNumber=1&uploadId={{uploadid-1}}

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_3
Connection: keep-alive
Content-Length: 8
Content-Type: application/octet-stream
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: fed7f05c10bc95d597e6f8103228c4c10798b5f77215f718a854534da563dc9e
```
### Request body recorded for playback ():

```
part one
```
### Response headers recorded for playback:

```
Accept-Ranges: bytes
Content-Length: 0
ETag: "3303e12af474ca11d85ed2966a932992"
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

## Interaction 3: GET /tcae-multi/big.bin?uploadId={{uploadid-1}}

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
Content-Length: 976
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
<ListPartsResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/"><Bucket>tcae-multi</Bucket><Key>big.bin</Key><UploadId>{{uploadid-1}}</UploadId><Initiator><ID>02d6176db174dc93cb1b899f7c6078f08654445fe8cf1b6ce98d8855f66bdbf4</ID><DisplayName>02d6176db174dc93cb1b899f7c6078f08654445fe8cf1b6ce98d8855f66bdbf4</DisplayName></Initiator><Owner><ID>02d6176db174dc93cb1b899f7c6078f08654445fe8cf1b6ce98d8855f66bdbf4</ID><DisplayName>02d6176db174dc93cb1b899f7c6078f08654445fe8cf1b6ce98d8855f66bdbf4</DisplayName></Owner><StorageClass>STANDARD</StorageClass><PartNumberMarker>0</PartNumberMarker><NextPartNumberMarker>0</NextPartNumberMarker><MaxParts>10000</MaxParts><IsTruncated>false</IsTruncated><ChecksumAlgorithm></ChecksumAlgorithm><ChecksumType></ChecksumType><Part><PartNumber>1</PartNumber><LastModified>2000-01-01T00:00:00.000Z</LastModified><ETag>&#34;3303e12af474ca11d85ed2966a932992&#34;</ETag><Size>8</Size></Part></ListPartsResult>
```

## Interaction 4: GET /tcae-multi?uploads

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
Content-Length: 634
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
<ListMultipartUploadsResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/"><Bucket>tcae-multi</Bucket><KeyMarker></KeyMarker><UploadIdMarker></UploadIdMarker><NextKeyMarker></NextKeyMarker><NextUploadIdMarker></NextUploadIdMarker><Prefix></Prefix><MaxUploads>10000</MaxUploads><IsTruncated>false</IsTruncated><Upload><Key>big.bin</Key><UploadId>{{uploadid-1}}</UploadId><Initiator><ID></ID><DisplayName></DisplayName></Initiator><Owner><ID></ID><DisplayName></DisplayName></Owner><StorageClass></StorageClass><Initiated>2000-01-01T00:00:00.000Z</Initiated></Upload></ListMultipartUploadsResult>
```

## Interaction 5: POST /tcae-multi/big.bin?uploadId={{uploadid-1}}

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 AUTHORIZATION_6
Connection: keep-alive
Content-Length: 137
Content-Type: application/xml
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
x-amz-content-sha256: 198db9a03a01e8d52cae4fa1c5b71f2d44aab8020850dee02d1bbb677cdb27df
```
### Request body recorded for playback ():

```
<CompleteMultipartUpload><Part><PartNumber>1</PartNumber><ETag>"3303e12af474ca11d85ed2966a932992"</ETag></Part></CompleteMultipartUpload>
```
### Response headers recorded for playback:

```
Accept-Ranges: bytes
Content-Length: 315
Content-Type: application/xml
ETag: "a675974b8fb9bfea1d5007ce26896811-1"
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
<CompleteMultipartUploadResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/"><Location>http://{{request.host}}/tcae-multi/big.bin</Location><Bucket>tcae-multi</Bucket><Key>big.bin</Key><ETag>&#34;a675974b8fb9bfea1d5007ce26896811-1&#34;</ETag></CompleteMultipartUploadResult>
```

## Interaction 6: GET /tcae-multi/big.bin

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
Content-Length: 8
Content-Type: binary/octet-stream
ETag: "a675974b8fb9bfea1d5007ce26896811-1"
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
### Response body recorded for playback (200: binary/octet-stream):

```
part one
```

## Interaction 7: GET /tcae-multi?uploads

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
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8"?>
<ListMultipartUploadsResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/"><Bucket>tcae-multi</Bucket><KeyMarker></KeyMarker><UploadIdMarker></UploadIdMarker><NextKeyMarker></NextKeyMarker><NextUploadIdMarker></NextUploadIdMarker><Prefix></Prefix><MaxUploads>10000</MaxUploads><IsTruncated>false</IsTruncated></ListMultipartUploadsResult>
```

## Interaction 8: DELETE /tcae-multi/big.bin

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

## Interaction 9: DELETE /tcae-multi

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
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 5 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–9 |
| collapsed | whole recording | `X-Amz-Date=[0-9]{8}T[0-9]{6}Z` | `X-Amz-Date=20000101T000000Z` | none |
| collapsed | whole recording | `X-Amz-Credential=tcae-access%2F[0-9]{8}%2F` | `X-Amz-Credential=tcae-access%2F20000101%2F` | none |
| collapsed | whole recording | `X-Amz-Signature=[0-9a-f]{64}` | `X-Amz-Signature=0000000000000000000000000000000000000000000000000000000000000000` | none |
| collapsed | whole recording | `<RequestId>[^<]*</RequestId>` | `<RequestId>REQUEST-ID</RequestId>` | none |
| collapsed | whole recording | `<HostId>[^<]*</HostId>` | `<HostId>HOST-ID</HostId>` | none |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00.000Z` | 3, 4 |
| collapsed | whole recording | `Last-Modified: [A-Za-z]{3}, [0-9]{2} [A-Za-z]{3} [0-9]{4} [0-9:]{8} GMT` | `Last-Modified: Sat, 01 Jan 2000 00:00:00 GMT` | 6 |
| collapsed | whole recording | `X-Ratelimit-Limit: [0-9]+` | `X-Ratelimit-Limit: 1000` | 0–9 |
| collapsed | whole recording | `X-Ratelimit-Remaining: [0-9]+` | `X-Ratelimit-Remaining: 1000` | 0–9 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<=<UploadId>\|uploadId=)[A-Za-z0-9]{40,}` | `{{uploadid-N}}` | 1–5 |
| normalized | whole recording | `(?<=<NextContinuationToken>\|<ContinuationToken>\|continuation-token=)[A-Za-z0-9]+` | `{{token-N}}` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
