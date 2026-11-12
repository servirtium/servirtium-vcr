## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-54b6949a-7955-3ae2-4b94-7c565fdf8bcf?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesAsync
now: 2026-11-12T00:51:20.4785656+00:00

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_1
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2292F31F9FAFB60"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 16bdfb0f-d1fe-40b9-8c91-3da5a6a7ea5a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-54b6949a-7955-3ae2-4b94-7c565fdf8bcf/test-blob-cdf615ac-5f16-da06-ce4f-696ef7b28883

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x206771DDD379B80"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4eaf42f3-537f-4e22-a968-9ae15f9a2c50
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-54b6949a-7955-3ae2-4b94-7c565fdf8bcf/test-blob-cdf615ac-5f16-da06-ce4f-696ef7b28883?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
2wm7eax0sJ1SJ63npDMsABI3f8r3xEo7jtuGBQ9zQpgM+XpVIxIiOGRYeu6yHzWbI2lcwDK9ixa/
f+vR7auN3+UU2qu51tz/FUdmnkpciW6m6+KmF4JmT21jlqQnUEq5y5sInUSJ4UyNXKrrVuzMYvZ8
KgLJ5sdjroo+VUA42MT8rdOuU+sqHAmVGbrXevmAljOtqyZI8OTTpe66S4wLVIPl7qkZHg4KUg75
M80MizORvb8Nii2etLzu2q79b9F9icQ28oxPZnckolkXTrwXxhm6KI3M/slWRjnsK0NgDeI8e6kI
1pmnQldH6OjUhmUA1hSVQkZEsIv64KtSYjs0xJV229MSD/CAE+Y2hRbhgr/T7FQvy8qb+MseDfXt
VN8bEyNSXauS7scjFC9gDip0GV3rf3bnBPnK2+IH8wL6kr4HGnLyjiUUQP6NDLabO+qgqvSXAdVp
NA4qiIHJi/rFKIJwWPO4goo41z54WfhCL6D4Z0kNYpDpneZkxwajS7UDx+M0KuL25yhpXyqW8doV
6Fnh0COwt8Xxh7oNVLqElYyJdJEVDQS9AX8hpANmUqwLTt+swXqRUhAdQ6In6ZNt5cmdDX1IANpU
I8+kjxLCijQOAQbb19MS9yGB98pilhjrs785yUUvw00EWJ6q7MP9W7htGOeNkg32ixVbxwkP8Yy2
uNxTiMHu3z641n41Zwpeg5sR9H0wXiGxQz0w0/xE9GYR9DTmqdP3fzmo1LuOwSMK/UNu/v0PhVq7
oUSDvgtCdOEYI3PWd9nHGnVEiIllI4IaJtW41fZpAm7aKwiPc8AtZmDZdp2wM4VppuOHy/3QVX7B
aZc1iZ7rriEF/EzROKa0FiEpi6zlafNQTi8S4TZwCdWJzgop993B7sd8qzY5mG4807Xcp8rS3P+k
5Tpv2M3qlPN2SGmcih5EZ5zkaL68FrbA1Q6BlGILt/EKhRKiUhb6kRZDw08EoEiWmD8t7XNB58+D
rgK/aACRapF4kgUMoRWG6teneFJnvDXF6/si3sl+yZ1CHqMUOygWslm+jA1CifYqpgKcmW58HPLM
+X0EbovH+cloyYNxcq+ukcb5qC8ng2EF9zjH4S8uxQGxR0KrEUPO9pJE2r9zuTRT7geog3PCpHYc
/3dTABiZOQSBvytsAoCCK7Kd46ihkT0Dc/MohkKO76LMjxHMevZ6q6G78voJ5uuHJVjBJcHNem05
T4wlcLLB89CIoHNutrC7IjcG5Z9D+o0HoWHpzMnh/hSjkippVTrv+f8qgEV4GG6oBgKKx5XO9lT/
Hs9R2CcGp6JeyiSFUc38F+ugGHpHjojyQcXGVjd/1ZvWajZrnSHYI9mjGk1KIrQ0ja+pLt7auA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C6D5BEFF6C11B0"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-content-crc64: G9unUGuafho=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 514e2811-cb30-49fa-b0d1-a1f0bb275e24
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-54b6949a-7955-3ae2-4b94-7c565fdf8bcf/test-blob-cdf615ac-5f16-da06-ce4f-696ef7b28883?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
2wm7eax0sJ1SJ63npDMsABI3f8r3xEo7jtuGBQ9zQpgM+XpVIxIiOGRYeu6yHzWbI2lcwDK9ixa/
f+vR7auN3+UU2qu51tz/FUdmnkpciW6m6+KmF4JmT21jlqQnUEq5y5sInUSJ4UyNXKrrVuzMYvZ8
KgLJ5sdjroo+VUA42MT8rdOuU+sqHAmVGbrXevmAljOtqyZI8OTTpe66S4wLVIPl7qkZHg4KUg75
M80MizORvb8Nii2etLzu2q79b9F9icQ28oxPZnckolkXTrwXxhm6KI3M/slWRjnsK0NgDeI8e6kI
1pmnQldH6OjUhmUA1hSVQkZEsIv64KtSYjs0xJV229MSD/CAE+Y2hRbhgr/T7FQvy8qb+MseDfXt
VN8bEyNSXauS7scjFC9gDip0GV3rf3bnBPnK2+IH8wL6kr4HGnLyjiUUQP6NDLabO+qgqvSXAdVp
NA4qiIHJi/rFKIJwWPO4goo41z54WfhCL6D4Z0kNYpDpneZkxwajS7UDx+M0KuL25yhpXyqW8doV
6Fnh0COwt8Xxh7oNVLqElYyJdJEVDQS9AX8hpANmUqwLTt+swXqRUhAdQ6In6ZNt5cmdDX1IANpU
I8+kjxLCijQOAQbb19MS9yGB98pilhjrs785yUUvw00EWJ6q7MP9W7htGOeNkg32ixVbxwkP8Yy2
uNxTiMHu3z641n41Zwpeg5sR9H0wXiGxQz0w0/xE9GYR9DTmqdP3fzmo1LuOwSMK/UNu/v0PhVq7
oUSDvgtCdOEYI3PWd9nHGnVEiIllI4IaJtW41fZpAm7aKwiPc8AtZmDZdp2wM4VppuOHy/3QVX7B
aZc1iZ7rriEF/EzROKa0FiEpi6zlafNQTi8S4TZwCdWJzgop993B7sd8qzY5mG4807Xcp8rS3P+k
5Tpv2M3qlPN2SGmcih5EZ5zkaL68FrbA1Q6BlGILt/EKhRKiUhb6kRZDw08EoEiWmD8t7XNB58+D
rgK/aACRapF4kgUMoRWG6teneFJnvDXF6/si3sl+yZ1CHqMUOygWslm+jA1CifYqpgKcmW58HPLM
+X0EbovH+cloyYNxcq+ukcb5qC8ng2EF9zjH4S8uxQGxR0KrEUPO9pJE2r9zuTRT7geog3PCpHYc
/3dTABiZOQSBvytsAoCCK7Kd46ihkT0Dc/MohkKO76LMjxHMevZ6q6G78voJ5uuHJVjBJcHNem05
T4wlcLLB89CIoHNutrC7IjcG5Z9D+o0HoWHpzMnh/hSjkippVTrv+f8qgEV4GG6oBgKKx5XO9lT/
Hs9R2CcGp6JeyiSFUc38F+ugGHpHjojyQcXGVjd/1ZvWajZrnSHYI9mjGk1KIrQ0ja+pLt7auA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C989BAEC6BE920"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-content-crc64: G9unUGuafho=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5bbaa00-3896-498c-b0aa-3736dbf40a60
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-54b6949a-7955-3ae2-4b94-7c565fdf8bcf/test-blob-cdf615ac-5f16-da06-ce4f-696ef7b28883?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_5
x-ms-range: bytes=0-4095
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
etag: "0x1C989BAEC6BE920"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 405d4c61-1808-4808-b2f5-1637d26c9811
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-54b6949a-7955-3ae2-4b94-7c565fdf8bcf?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3799bee8-ce83-4e52-a8ab-a8be6d163e96
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

