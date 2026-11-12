## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-49cc0465-135a-89be-a051-43f4f3e7493c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).Download_Initial304
now: 2026-11-12T00:47:48.9787995+00:00

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
etag: "0x2723FF6897C4C60"
last-modified: Thu, 12 Nov 2026 00:47:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c1a63592-2f66-442b-856e-e12deec2f37b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-49cc0465-135a-89be-a051-43f4f3e7493c/test-blob-29aa2997-f209-6970-d2a2-cbb0df0887a4

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
8uccM3NY+804nVQ6ax1nk63LwMApU+4ojDQyz1faKOtEzDae41WmDQj+Eb2/gx2C6rBHJyeJEp/4
86Y+Jix2XnRp9p7nya9XJLO3K0IwaQkWr+WnkgDDurmXpe+uaOfciLNJVox/myEA8AN00edcx4qd
J3ZHz8tzpTzkTyO/qLzL26KO5xJ8lxPDpqL9T+jSOt1lEUBwlbnn1rFQmkv9QUhGqPZFzeB3IY9i
gygpdVVTEhVGWpd7W0bopxFhK/3IxmVatqfyjWz87e+xDRKQvmBb/Yc1tuexy02vXCbPFvaSmrzD
z7+uYIWpSWynyk00WOiwBS52khB9qOtaQjBFLdb5H3NVzO+hrZwBjGx6CQD/ewM+HhDHHAesRSbU
Ux1UZByVravZ3ov4D1iRdAWjA5/qWsctBg/GMQJrqYbJzFl+rShQ5FxVJZx4RQ64NqcCCUKH6flW
J10Mz3uobjUEL0L+EsbdUh9ClDUqtcEADvtbaaBEQuNgKIXLRBTgrbdncxbLuSPhJLYiRFXDK3Kc
C8GATQSVwO1fnupAEg4KYud9w0GrNFTXeUTpIf6NnPwTLzhTX1+y0bIobBo5oBKoF+FtRmgw8dds
qdPArJ7v0QLuLePVtwKHy/GOgsg6ndkyQAkcH1aT4z5g5raM8iUUOZoYS3Mv0mDf5Xp3oW4OMgv6
jWuU0rKrWkmlddBL+9nLekguIVJmA22pPDrbHEHPUrOrkWS5gGbobPEpil2Pk+qhqycl4BG5k4r+
6pV4zz4I1SIcoGl0EvniRbRgPHgQGalPOnEaqXGi8f7Zu5XQcJyzIbQ6cvOALJgtQ5pcWFcR7dHs
KJXM7Syxeq5rm1ZkEdUXrRvE1aa1zw3Y7WbWRZmmx83E40gH5jOHifhEFJBCyDHFRao7TRgqNliH
9ADG2zQVxNSIoC2NEMfoPEyucbp9lSQ0EQDua3q1mazvf/Eywa3EL0+8uSgENzXiUxDMfMWdCl7c
ksozJllZ0waAnpDWtXue6UFrwNz7MNnLDBhq6R3mUXWSVi/jkAn2YuUhg5mkDJ2VLZKEMkqC4GHw
aBlB7+romkwaQ19Lulk3dV322a0/Jv971buLYh8rEHXN8yjvtHP7OelNick9SXM4Tb3siwa0sUEa
xhovXDcs7zPpfccwR8Dp+qDE8Zw2PYtHUhViPoRvGEHm1e5ZzNyxIJqVU8usCAX8ApBl8L+l44iO
5woiyrCuemSFSXLRkC7EEtACoOq/m0oPZTzzCSiCQfFmyuXSjlbp59hnJr6TKnFiod7uokOdz0u/
E2R0unE8AwiAa8ZJ8oR6GLkRWHWLezrKkWdJk56tyPuZEnvydCxnKiK2E7+rGK9adIqKjHbWMw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25871796A253AE0"
last-modified: Thu, 12 Nov 2026 00:47:48 GMT
content-md5: G9vOb3pTCCPdt+I+Ps25bg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: da5899c9-9bb6-44b6-a34a-36c6246ef0df
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-49cc0465-135a-89be-a051-43f4f3e7493c/test-blob-29aa2997-f209-6970-d2a2-cbb0df0887a4

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Thu, 12 Nov 2026 00:47:48 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 4b4bd9f0-34cb-4723-9f87-085c112ed90e
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:49 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-49cc0465-135a-89be-a051-43f4f3e7493c?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 713bcf69-d040-415d-b64f-04d3e25d9225
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

