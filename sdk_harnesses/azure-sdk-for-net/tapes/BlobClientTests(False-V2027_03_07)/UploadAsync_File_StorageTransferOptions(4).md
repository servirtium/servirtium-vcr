## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-56e4d148-9bc9-6b28-59d5-1f5e06ef157b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_File_StorageTransferOptions(4)
now: 2026-11-12T00:48:50.3880373+00:00

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
etag: "0x1CD756C71B01200"
last-modified: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c787f5ba-9265-4c35-a6e2-d8216a0c56b7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-56e4d148-9bc9-6b28-59d5-1f5e06ef157b/test-blob-05770d0c-e1d8-ad2d-a60b-53baf9e1038f

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
wQNKL7gchliDmvfCha2zC3PhXxm6+qtmpDawvUhtcXjRkJ0DpOXC74Yegj3qayj5V0dGF4Lq1MZX
44uBbMgQFSh/8PQQsGaNHm+TnHhtfDkOt2UAJlr257zWq8BaQIO+DWwVanoz6afhufkSVzdO6WdS
c7ViEO7OiQg4OQSmM97s1I8LWBK+2s2+H21h45CEh8JZCM3OW/x+RuBy+6+iOoUaJoKoQ5BUk5jn
o/GAbaZ4s7JCTCsRHXmSjRIyTN8eHOToRrwO3EQxBXQ05rcL/dk5+Uf9X+5aCQgIFrZ+IUe5yIcN
mCfpadduEUe23DfCho84+FKXIbz2jTyzBcaNsuMtex0v/mSyT49wj06moy3RRo8mRSj0IafKFwrq
NmQQ4F5kiWEZkogqhqnCJ5JuT+kP4r82Z226OFl2ZedaxxkrX67wQhrLuLQG+79/MvoVXMgg21Ok
2njxqVEHoyyh0L+PlsfjfgzPQyoKMGyuOgVfYAkfOezFh4U2/pnJwxWHZSr/75szMt27UZcpmakM
Qm9LqEIjgpfSyQ9BrX9zBn8Vg8tBrkpqLC4rY+dUnO3bKbwpfhvSZOKTLSaM8YVeSEsXFBbey5Qk
4HwT9x6vfS0iZYPDSYdkQh7orYEk3jupzRqcPYfW/V4nBZ2fvmzD5K/4aosBmv/Ds9L39h0T/wJB
aioEEkClS2gknEPqxYOyJMnRLHSvpzIb2Ym13gdBEwWaXlRCv9FuUh4i3f672O5ORdFTQdOOkcL3
6Tm38Gxh4og+T2Yvb2X4Y9lVjMo0XwCbZ5g17tIxDMyRStaYt2Kywfp2fYmHHtZsW936OQT4w4k4
G4jTK/S1DUOZniWPYKx3o8vPveJ3E0nCyZP0NtLImIdMX5vZ3pUGwG9F7X+x3Poxg5Y4KQanwQc/
EGJhwdZx0QadQgEQncQ2yfxyMibJEeyYw7M8j26BpZ2Umc0zpP+Z1Bx5E5r5IOXRAmAJNI/hdv51
yP0iNEGXHJ1jfAT3AiT82F0JUP5SnqLOa4wOd3AOsiPOvtwBd5/a4fb8lqPg2gA8DFsx1yUAIila
VMm1iaQtVcrhKERH+mG+L24HVgj/7ZCM0WsU3Nv9zpuypiLWJFdRzkDZ/7G89BH5c6i3+MshW2Y4
Kbg5GHjv5FqolVQ+5woXtYfHJu7f0NxZGmgzRtXQkEu8nfufGLbH6hpWE1+9u4udn0JEWTV3WFnb
4P4QvJ6E2AQIgkoOd53R/zzTibx9m1/claaTizcWRESixDe3ty180TtatDhBjyikc1n4pM+cXUSe
Myb38UzN8j0FbLNlGUgOV7eAI+YmmwZ+7hjdHaB0BWbzGYQHhODujML7OyN0PlkR6kwYHDldeA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2288A58F99E80E0"
last-modified: Thu, 12 Nov 2026 00:48:50 GMT
content-md5: QQ3mrg7AFy8t58xWjelE9g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e9a5db22-ff5c-4402-b6bb-dc84ec32d492
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-56e4d148-9bc9-6b28-59d5-1f5e06ef157b/test-blob-05770d0c-e1d8-ad2d-a60b-53baf9e1038f

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:50 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x2288A58F99E80E0"
content-md5: QQ3mrg7AFy8t58xWjelE9g==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d36c33e6-547c-4edb-8776-b54432a4a379
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: QQ3mrg7AFy8t58xWjelE9g==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
wQNKL7gchliDmvfCha2zC3PhXxm6+qtmpDawvUhtcXjRkJ0DpOXC74Yegj3qayj5V0dGF4Lq1MZX
44uBbMgQFSh/8PQQsGaNHm+TnHhtfDkOt2UAJlr257zWq8BaQIO+DWwVanoz6afhufkSVzdO6WdS
c7ViEO7OiQg4OQSmM97s1I8LWBK+2s2+H21h45CEh8JZCM3OW/x+RuBy+6+iOoUaJoKoQ5BUk5jn
o/GAbaZ4s7JCTCsRHXmSjRIyTN8eHOToRrwO3EQxBXQ05rcL/dk5+Uf9X+5aCQgIFrZ+IUe5yIcN
mCfpadduEUe23DfCho84+FKXIbz2jTyzBcaNsuMtex0v/mSyT49wj06moy3RRo8mRSj0IafKFwrq
NmQQ4F5kiWEZkogqhqnCJ5JuT+kP4r82Z226OFl2ZedaxxkrX67wQhrLuLQG+79/MvoVXMgg21Ok
2njxqVEHoyyh0L+PlsfjfgzPQyoKMGyuOgVfYAkfOezFh4U2/pnJwxWHZSr/75szMt27UZcpmakM
Qm9LqEIjgpfSyQ9BrX9zBn8Vg8tBrkpqLC4rY+dUnO3bKbwpfhvSZOKTLSaM8YVeSEsXFBbey5Qk
4HwT9x6vfS0iZYPDSYdkQh7orYEk3jupzRqcPYfW/V4nBZ2fvmzD5K/4aosBmv/Ds9L39h0T/wJB
aioEEkClS2gknEPqxYOyJMnRLHSvpzIb2Ym13gdBEwWaXlRCv9FuUh4i3f672O5ORdFTQdOOkcL3
6Tm38Gxh4og+T2Yvb2X4Y9lVjMo0XwCbZ5g17tIxDMyRStaYt2Kywfp2fYmHHtZsW936OQT4w4k4
G4jTK/S1DUOZniWPYKx3o8vPveJ3E0nCyZP0NtLImIdMX5vZ3pUGwG9F7X+x3Poxg5Y4KQanwQc/
EGJhwdZx0QadQgEQncQ2yfxyMibJEeyYw7M8j26BpZ2Umc0zpP+Z1Bx5E5r5IOXRAmAJNI/hdv51
yP0iNEGXHJ1jfAT3AiT82F0JUP5SnqLOa4wOd3AOsiPOvtwBd5/a4fb8lqPg2gA8DFsx1yUAIila
VMm1iaQtVcrhKERH+mG+L24HVgj/7ZCM0WsU3Nv9zpuypiLWJFdRzkDZ/7G89BH5c6i3+MshW2Y4
Kbg5GHjv5FqolVQ+5woXtYfHJu7f0NxZGmgzRtXQkEu8nfufGLbH6hpWE1+9u4udn0JEWTV3WFnb
4P4QvJ6E2AQIgkoOd53R/zzTibx9m1/claaTizcWRESixDe3ty180TtatDhBjyikc1n4pM+cXUSe
Myb38UzN8j0FbLNlGUgOV7eAI+YmmwZ+7hjdHaB0BWbzGYQHhODujML7OyN0PlkR6kwYHDldeA==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-56e4d148-9bc9-6b28-59d5-1f5e06ef157b/test-blob-05770d0c-e1d8-ad2d-a60b-53baf9e1038f

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
last-modified: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2288A58F99E80E0"
content-md5: QQ3mrg7AFy8t58xWjelE9g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c8c85414-1625-4bbb-afe5-c4237d699284
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:50 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:50 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-56e4d148-9bc9-6b28-59d5-1f5e06ef157b?restype=container

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
x-ms-request-id: 1a130908-e1ca-4974-a87d-cb3ecdb84d43
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

