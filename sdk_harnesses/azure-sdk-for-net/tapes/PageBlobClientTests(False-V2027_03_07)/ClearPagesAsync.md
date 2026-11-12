## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-acc737f5-612c-eb04-0b30-b8b22a3c3bb2?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).ClearPagesAsync
now: 2026-11-12T00:51:13.4758199+00:00

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
etag: "0x1E00FB83D9ACB00"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9b825235-ab8e-4afd-8ddb-00b4408b8e1e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-acc737f5-612c-eb04-0b30-b8b22a3c3bb2/test-blob-a0eae76f-f3e2-2981-23de-3d09b52f6b38

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
etag: "0x1FFD5CBF47F81B0"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b4e62868-a118-4752-871d-0af4ff357085
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-acc737f5-612c-eb04-0b30-b8b22a3c3bb2/test-blob-a0eae76f-f3e2-2981-23de-3d09b52f6b38?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-4095
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D1D6A4A17806C0"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-content-crc64: V3yK8fSe5QE=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: df043b8f-75fe-4fb4-a9b5-a6ecea0677d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-acc737f5-612c-eb04-0b30-b8b22a3c3bb2/test-blob-a0eae76f-f3e2-2981-23de-3d09b52f6b38?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-page-write: clear
x-ms-range: bytes=1024-2047
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21FEA36273823A0"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 24880b34-b3d1-42bf-854e-d396c5df9cb0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-acc737f5-612c-eb04-0b30-b8b22a3c3bb2/test-blob-a0eae76f-f3e2-2981-23de-3d09b52f6b38

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:13 GMT
content-length: 4096
content-type: application/octet-stream
etag: "0x21FEA36273823A0"
content-md5: HhH9YXO9GGkdEJyH2h9oVQ==
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fafc3a0e-faac-4477-b5d2-26cd56070c42
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
i3kJ5CUcIYtb8rKe+N6SSg67/WdJ6acBtZ2ITiP6NtvEfyawM1aNUsZfRO9B4zFES/L6+jIE76LS
By6HlNNoYLzW2Xi34Re4Laqg6qS3v9JrQwIw/zuowJCE3SsnBb7y9uMyagq5jGrbQsyIYwT+G0hc
HFDQN2GALRjoMwPrkCjrrfPAhFTIsreYVb1vIFyLhsLjy+luIr+Csj3x0Flm8LKknLURPZb0lGmZ
OOGkEQy8XK1BB8Q+fYszPdIX1+FeMWQKy4SneUgr7zd/1One3qAwNXSrJOjtZR4p3gDE3LyIOwZ8
mUaIFONlFRiNv6iiVV4x56Jtsgx8HGVmfZtHZxJ695njYUVaqCCQRg/PYKZ1h4ihkvUaGon5AHzg
IZZHHa4GEscPvvQZ1z6B3Gv9rLu/8PYSptQdYNwQ6WDIeYaJSSlgyU7eZsiUiLq2mD0d+1PBITGg
NHfZ6LHr/tWTUV64+JNCnONs4Iotfh4ZZsie8u0NB1dV6BSyh+Cd82fzATZc/p+q215wVEGnc7ZY
v4LpTAvnhUoGYw9+jxUCz+0iOX3nvWgo9BeOnbIWrXVeWcdes6dcC3vsVpqQK0xJbYRUhTk5cQIZ
wVf0WOiX8LWaIDZOpBxFxS4B+mfNl8jLRS8twSg7JefFRPFPZ7KSVWXl9QsV+8loDr8LN3ebSymO
KBO4aS6MX/tOiF8q9l17b6UB6KK9tUpmxbNpMO1wKfjIwD+f2es3WJUQx3JpPRhhkMjSmWOG0XPI
UqN7Ii8N3V5nYjUe25W5ypAMre3Y/YebCKAlnpCVQe/L14dHvDVmAuoTAdviQrQzGM/SeiSF8FQc
3xqP6D/O0iBGUwQOcQ5apqoDxfusuMbr8YXAwsfLRecyK9wb1xmqRC+7nO+wJabBd9R5gipYbyZT
o/a5Dg9Zew0d20YxP86RWIHM8BzXO8zf/krzUcO82bu1xzMi8DUfYSDhkklgkDgF5ympjH8KfGgq
2hDEZilJYQGKe3iabmdLrI/79aiCfm4S7WmaEk08q0rL+BYlWvv3mDFH1RS/a3nBXt/vDoe/p1uh
sni/r060TtAtznVRJlGTBFx2OqlaUoLw2LNtTJzDC1G7g6iCN+nik4dDkpwDcDiNXAoqSGyyR2D2
z9aaRgE0asIklqKpEMxzlKciFsDm7Gh74PCRmMPlCTtHjGgTR02FDyfZ39mV5Es+t7TFjzGgEOJt
H2YRotL/P41mYYRjYExZnAeYDQ2P5fykU+EOIHkKp3yGpSjmdGxV2aBML4LG2lZoa/MpBwLV3jlq
bE7w8R8UW7oI3bojcieaQzRtQ7Z53XiKprSF4Z95scfufAcdZOeAN9PHvv2bRPjMjsTOZ5qC8AAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
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
```

## Interaction 5: DELETE /devstoreaccount1/test-container-acc737f5-612c-eb04-0b30-b8b22a3c3bb2?restype=container

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
x-ms-request-id: 29fba7ea-d0af-4cbf-801b-a9f3f4aac66c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

