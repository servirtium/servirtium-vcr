## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e99d18c3-9a2b-22c2-6190-bb33f841d383?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetHttpHeadersAsync_IfTags
now: 2026-11-12T00:48:21.7939056+00:00

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
etag: "0x226D6975A446BA0"
last-modified: Thu, 12 Nov 2026 00:48:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7726182e-3a3c-407f-8cd3-f1e1085ee67e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e99d18c3-9a2b-22c2-6190-bb33f841d383/test-blob-dd0cc345-ce0d-fde8-72d0-7292306c6f85

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
ut/5TY9rPL0G06KhxF3fJdW2oaSxqEj1L6B2Wicv8vQgNnkZSIb02YZO1jkrRjgV8U28ecrL0xGW
BB3v9OKW1uGtgI7jxd1PwsgdY9EOyelnYWjZc3gqVWNng0RpBOSkuP9YfsaqMSxwbbcCrXA/hzoz
h5N5vGNpgysre0GZ5b3jearStkojvS88aQXAKKfyKPsJNX1RKvyb7/uafrXq14j6HzPFbdHvEMlj
PVNeqFqDOFNGj7A/kU+uNsdPiD55UpF9xgl0LboqGSSz7eypPUagF0ZhpEfXuo3jFzcKn4iK6uvB
4eJRDwuZG3aLjKNjBfiAr3H4F65KpQx7kBaCIHmcKAMB51tkTgc7yIjRSy3pgBE+ifAXktI9djzV
1n/0Fvv872OgYh2cG2FpvU8leFnekQ8ERJaJhJYxw3EfjneIRrKN1VzKSR7zoW6OrdSDF/7j90Rv
8NJkcmrMb56sfY3p4XedmKP8E0jxEKIo+9fCraxyPJYzGFXfKGLx/dp/RyThpMxc5n9a5uP8ft8v
PHeTCsHyOUD2tsghvXBBCxZtccl+R1YKZccsGFayNpp2r+vqXvIZjQ3j6u0DOigPGdrNjgwWsfUg
iKX5xSHqQ38uqw2EVq0jVOO7mlxpByqfHf975aiNYP71ytVNIMfs+adt1Y8bisItqjkoWheZt4F6
Wagibl7XoEsPj4zX1TQcz6G0+zGahJI8TjpuZAXmWxNU0sYeyopJljREC/s1VdQFDIp15LtP39UW
5SAjaDxFKDN5gwJt/QUXa2X8VniXBvhlaFh6cXdXBPLwCOVpJi34/uLIvNLSmA6FXnlVUohdf94n
vQDkyre8IX4PffQfrUQ4BFiVzkolk9BJ9BL9AbFqk4kGQmktFDMrDJpUwhoaZbE0HU4wx7CUAikv
mtWlvh/MpelrGWvbC+8kasKv0NG1L49hyORiOcvZcj8//XlehU17iBwxrkxGWBJfC1zt5DFXeWtG
RPU7aWwdkaYrmw11xuR0NEi1hIBCGm/SAy1v7I0N6IMOF0FXPx+wEx2lGrwE6UV4eLDpovXrBCmF
aWY+rqUYHbOJZ66iHfQpBXFinACyzRnn9nPdJEWOIhMY0da5cWR3jfwJe4KX1Vu8wJ2EiGco05tM
VrcxO/lt+kWbiksdcJMM6w8DqVGXUCEYIWSoCpmr7/46bBqtRVEDm4A9/EoQnk8Jd51YJClKtQWW
GRqUxe+r75pM4gN4X6W9AA7RWVTWB4IUnpL8U8rV8LYUFiw3btWQkQywxLtMkRj4miQbeFuxvxGX
gCdcr5zPdvFNY0h4hpE4QMdHJkPGyA16A7imunhaY1can+2uM+Jw4E3K/i3QfxSS4jiTaZnO0Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2119F2B66856DC0"
last-modified: Thu, 12 Nov 2026 00:48:21 GMT
content-md5: vmU7oWtJ5Ht/BPZ4rDlk+g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: de4384ce-a6ac-4fe6-83b3-f353fa993d8d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-e99d18c3-9a2b-22c2-6190-bb33f841d383/test-blob-dd0cc345-ce0d-fde8-72d0-7292306c6f85?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 533697db-90fa-4fc6-a4ce-55669172dabd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:21 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-e99d18c3-9a2b-22c2-6190-bb33f841d383/test-blob-dd0cc345-ce0d-fde8-72d0-7292306c6f85?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-blob-content-encoding: deflate, gzip
x-ms-blob-content-language: de-DE, en-CA
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2057BC506919D20"
last-modified: Thu, 12 Nov 2026 00:48:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0eeb9953-0c2a-4c70-89fe-c511d630432f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:21 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-e99d18c3-9a2b-22c2-6190-bb33f841d383?restype=container

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
x-ms-request-id: acad4b6b-5efb-4580-86be-520eaec08ac9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

