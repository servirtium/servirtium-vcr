## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4f2bfd25-1c1e-4720-0249-c9bc3990a59c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).StartCopyFromUriAsync
now: 2026-11-12T00:47:12.9743304+00:00

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
etag: "0x27892F0F3E562A0"
last-modified: Thu, 12 Nov 2026 00:47:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eaf90932-8890-4247-8170-17504674d608
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4f2bfd25-1c1e-4720-0249-c9bc3990a59c/test-blob-1dbcb05d-944f-5633-eac0-bd5d2590118b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
BlCKFflPhY/r1qXwPaX3gskRB8K7v+eRydVlXV7CIXI3PbXoBo+jDSosMXjvQhhEyTuUFIhP0Edp
+Uwj6igxKbQyuf/vD3s5bfqYjo1uoYa8IJQjLg3p6G1ufwxDfyMC+wjEvIkYVLm/WqeOtkG6+lfG
Z8mTDfqnSdCSgY9v9e3XlZOFquX8pMvaZNNmWjErtIS1fRhZb+0NHHK5hdMqUGS5tiGuNFByycP9
uKkmQe+eZ80KunjUfSald45yQx74sBNurKMQfH80QrNVW7ZE5tqDGh0FH5bs5Dj7CLzBAIakBAeV
uJVLjupO1nfEfyFvYZCz7ygA8pF9gsdqFXPCckItsFeuri5FN4wyt0keJ2UWi6crDhBdpBF2GDXN
4Xh3i2M1l8/KwbNibrebzTtIX1piU4rMlmQxzwtFOJb4eFYTuyvm6JCVTMn0yaBZwtfWLrjaao3u
qvX+BMfDhYkdafVhhxEPYXbKzAfA2M3E1w00bgndHQ3JJRE25+PJ0sZA1l+q9zrFxsxBEJ2FLdIn
Oiy5jhZ/P0znmGIA2HqSAfpBgAFtGt/Sb6g9mw1wQ/c+Dq23EEOvwZcTwl/YxO1Rrw+iRK3QuiBM
5h9uQqQ+d1VqwcrN2/C3kb9qWVeA+qq66+z9zf5JblSMaikjQH7z1EoKbgMjhNMe67LuZmDIzOx1
tFa3QKlWIFN1QHDHk1FAd4UNdYymlmcY3+FLWwfzxJ49rowoO5OgtE2wrkNiV1hhru/bu1Zfzh3v
n2HICsVLgXzSieTEFzvxbME+9ugktYiJ6awYGAhH3eBuOZsy2KmIZCzGkM1znJaz6k+VIdc1y+rZ
PiEYM2lzi6sEVt6gv5MYtpK8XSW6FU0VZC65sbwIOW6xWJqIbzDCUwUhb0a4Eyq7fWtEeG7EHijU
A847udnv+x1w7mb5kEZh+QkgmKYGXFED/TRQxMD/7Dlxs2xhh5krMnQoSCTEwu0k4n9kpIaCzaZ9
N7ulnjddcAIsh9zaAHFv9GYy3hQtPjtHK+FAm0ez7ubF5FDehpM8y9chlzoRSuIO9bAfUO6RUPiA
XnJWHNW6eJn1FBshkW7S9RI9C6YANeH+MqaXk533NJRXXScg5q4BZx+hGzbH7GNBTVvcVERRgCiR
WOovI+T7/eCHyjNGsQ9kO6OHXhqqNkVCVUZCG+BPBd3/j47E0kQ6ph5WPyIv+ptLdxihyiEO5iGk
7c2euOH/OMRWRyKAn2lfTbj7VPYjElur9qPHrju78ahsH+V2m+08Vgdd2LJ4ytivQXxoEpEqgNpy
8sE9N4mJmlZ5FH+D6LHKv/7vxjmoMivLGGy/Ut4WQp4LBKgr/h590z5c/7ZYK1jKnlKTO7qgyQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x221C51DA79A1F00"
last-modified: Thu, 12 Nov 2026 00:47:12 GMT
content-md5: OVkaM9Y18CEXzC74o+evAg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b56e920e-5bb1-44ee-bd7f-da9c73948660
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-4f2bfd25-1c1e-4720-0249-c9bc3990a59c/test-blob-1f7295c0-ca1d-7748-63d1-e178e4089ec0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-4f2bfd25-1c1e-4720-0249-c9bc3990a59c/test-blob-1dbcb05d-944f-5633-eac0-bd5d2590118b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E4C7693F770720"
last-modified: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cdbd8d5b-4238-4cc6-8323-aa3669735d52
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-copy-id: 3024ff28-dce4-49ec-8728-8b4a6ab77dc1
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-4f2bfd25-1c1e-4720-0249-c9bc3990a59c/test-blob-1f7295c0-ca1d-7748-63d1-e178e4089ec0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-copy-id: 3024ff28-dce4-49ec-8728-8b4a6ab77dc1
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-4f2bfd25-1c1e-4720-0249-c9bc3990a59c/test-blob-1dbcb05d-944f-5633-eac0-bd5d2590118b
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1E4C7693F770720"
content-md5: OVkaM9Y18CEXzC74o+evAg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6173b975-3e1c-47f3-a7ab-2ec18317679a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:13 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-4f2bfd25-1c1e-4720-0249-c9bc3990a59c?restype=container

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
x-ms-request-id: 2afeac57-57eb-40c3-b90f-85b66398f8f7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

