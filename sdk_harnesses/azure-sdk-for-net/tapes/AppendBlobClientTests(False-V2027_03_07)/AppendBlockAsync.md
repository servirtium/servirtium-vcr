## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0c484286-48a4-1140-938a-195f9e9e4504?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).AppendBlockAsync
now: 2026-11-12T00:50:27.6661844+00:00

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
etag: "0x24F6A85B2143520"
last-modified: Thu, 12 Nov 2026 00:50:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64a8f5cc-f819-4075-8e5a-353cc95d21d8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:27 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0c484286-48a4-1140-938a-195f9e9e4504/test-blob-00d49804-fbc7-8aac-05ec-0ca04f2db56c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26814E077756680"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 168570d2-086d-4f17-a30c-5e2c3bac4db9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-0c484286-48a4-1140-938a-195f9e9e4504/test-blob-00d49804-fbc7-8aac-05ec-0ca04f2db56c?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
HywGiLFzV/nK31qA+ehJvhxA57cBFqSLlr0GuDygwWbUrEByl7xTkEHaNuegK5Edo02DD0b+awiH
e/HzbJ+9KR7zrEyn1idg7VZ2JuC96mss6BTvHLEg1UE36hzKXyOiHQzIrX5EdswmIyHviEQoypCG
x4SKzg1s09YKb+wKlY4y1AnT9D3s53JIyfiQME38DyCLRJefF0//XNmnOQbgG46SvbM7VNZTmeAR
QQQU3KOJDWDMflD3k7y61JhkRK1saK1q/XOZwbtJOKu3jtVK6n81HiumE5w9myn3gX8+71QypNlX
qd4w70ykgkalPwTmcOoYLiaBxlQQLGJJokA7C0hXhen880ChBC/fAZFWmFslEBGVJcEusN6ERnx8
500MaHb+Tbob6nypdin2osTCupQGI5EvpuWHKdQLd6zDJB3i05gaWEqhCiaU66+XNw0ZwYvodsO7
3MKRdiTmEHLQ5VEMFM8sqGJJZRlrm7s28PHG8bUg265ZJ/bWieEluvqzwwZdiyM+7RkpnhGpT0EG
WoYzHx68rwqjsu3YVh6AJKoft9e12WTOiAOc9jydr9e1zy5b8pvb9hT7udg1Zpf7qXpmipdqUYAh
ZJcaILjNBQIVI4bvJDEORMDDuR+MmCFsoU3BNiU/S32uOo0EwNZbLrTWIEIQC4RJWEbWpphhlcx1
rn9rDM7c1tgIQeqkCoPqZ4trtXjfXJXIeN7faKTlTaTAjxJW8CHl+UlqB8mapE7C7D8N9d9UllLp
opPw/W00I/RF43txlHZphrsudVTMLtOQHHxk11fFbPjAbE6N9fvcNeTVVMHSUVfJpG4jJiD9HXTA
X+Hx0EucgHeCsCco25HAUT9w99kSvcokmzPooUbYwk/ZzZUa62WYONRJUKAwoMjdY9ThjSabraIW
zDQYtN4wqu7YTg38pWbZ174EyGwp9PpqCz1y9jUoPh/zAx4wgIT1GaayWFK74b5tB7VnluU17Ng6
raihvrO5rxDtCKJHqVc6Dq/Gd5uoryl/BO9/wac6vhZG9tLbVFry+ahCzdgbJV5eLIc1bnU8kv1+
IbnEOe5oskqLALKEX7pU033yZeFRY9+QIZQfBU+hCmPVXDKgLsC62hqOkCSr2c3N4Jr4SSwbLb7a
MxhaSK366vZOrwKHtKW9OIvGwtK65UfGUiS0qMA3uS90xvqnYJFtk6YuXCrKRSz1OhGhVGrrIE7Q
k/aJRUE1F/XTE+2rFdf6WS8si4gd/Az3v22vlmTEiaWr182b5E1l+EQ09zI+SiU5pvs7v5TGspfp
kYbThoGRDolI/z4KX3Xhx5ND6QTZuHVIde9piMoQ5SQ2sVLHkXLDouio9krmL0eGWvgBgsmSEA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2364DECCFD3C020"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-content-crc64: fHOaIgdNk/8=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 90f3f161-adb1-41b3-ab42-d96b1d7c666c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-0c484286-48a4-1140-938a-195f9e9e4504/test-blob-00d49804-fbc7-8aac-05ec-0ca04f2db56c

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_4
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:28 GMT
content-length: 1024
content-type: application/octet-stream
content-range: bytes 0-1023/1024
etag: "0x2364DECCFD3C020"
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 17d6f816-4443-4589-ab2f-560f144bd3fd
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-blob-committed-block-count: 1
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (206: application/octet-stream base64 below):

```
HywGiLFzV/nK31qA+ehJvhxA57cBFqSLlr0GuDygwWbUrEByl7xTkEHaNuegK5Edo02DD0b+awiH
e/HzbJ+9KR7zrEyn1idg7VZ2JuC96mss6BTvHLEg1UE36hzKXyOiHQzIrX5EdswmIyHviEQoypCG
x4SKzg1s09YKb+wKlY4y1AnT9D3s53JIyfiQME38DyCLRJefF0//XNmnOQbgG46SvbM7VNZTmeAR
QQQU3KOJDWDMflD3k7y61JhkRK1saK1q/XOZwbtJOKu3jtVK6n81HiumE5w9myn3gX8+71QypNlX
qd4w70ykgkalPwTmcOoYLiaBxlQQLGJJokA7C0hXhen880ChBC/fAZFWmFslEBGVJcEusN6ERnx8
500MaHb+Tbob6nypdin2osTCupQGI5EvpuWHKdQLd6zDJB3i05gaWEqhCiaU66+XNw0ZwYvodsO7
3MKRdiTmEHLQ5VEMFM8sqGJJZRlrm7s28PHG8bUg265ZJ/bWieEluvqzwwZdiyM+7RkpnhGpT0EG
WoYzHx68rwqjsu3YVh6AJKoft9e12WTOiAOc9jydr9e1zy5b8pvb9hT7udg1Zpf7qXpmipdqUYAh
ZJcaILjNBQIVI4bvJDEORMDDuR+MmCFsoU3BNiU/S32uOo0EwNZbLrTWIEIQC4RJWEbWpphhlcx1
rn9rDM7c1tgIQeqkCoPqZ4trtXjfXJXIeN7faKTlTaTAjxJW8CHl+UlqB8mapE7C7D8N9d9UllLp
opPw/W00I/RF43txlHZphrsudVTMLtOQHHxk11fFbPjAbE6N9fvcNeTVVMHSUVfJpG4jJiD9HXTA
X+Hx0EucgHeCsCco25HAUT9w99kSvcokmzPooUbYwk/ZzZUa62WYONRJUKAwoMjdY9ThjSabraIW
zDQYtN4wqu7YTg38pWbZ174EyGwp9PpqCz1y9jUoPh/zAx4wgIT1GaayWFK74b5tB7VnluU17Ng6
raihvrO5rxDtCKJHqVc6Dq/Gd5uoryl/BO9/wac6vhZG9tLbVFry+ahCzdgbJV5eLIc1bnU8kv1+
IbnEOe5oskqLALKEX7pU033yZeFRY9+QIZQfBU+hCmPVXDKgLsC62hqOkCSr2c3N4Jr4SSwbLb7a
MxhaSK366vZOrwKHtKW9OIvGwtK65UfGUiS0qMA3uS90xvqnYJFtk6YuXCrKRSz1OhGhVGrrIE7Q
k/aJRUE1F/XTE+2rFdf6WS8si4gd/Az3v22vlmTEiaWr182b5E1l+EQ09zI+SiU5pvs7v5TGspfp
kYbThoGRDolI/z4KX3Xhx5ND6QTZuHVIde9piMoQ5SQ2sVLHkXLDouio9krmL0eGWvgBgsmSEA==
```

## Interaction 4: DELETE /devstoreaccount1/test-container-0c484286-48a4-1140-938a-195f9e9e4504?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
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
x-ms-request-id: 805e4b61-6a72-41fc-901b-6d60ee1c28b0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

