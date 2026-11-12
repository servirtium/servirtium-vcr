## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5cf2f737-47eb-234f-cd36-580ff22ce46d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DeleteAsync_IfTags_Failed
now: 2026-11-12T00:47:47.3653198+00:00

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
etag: "0x255DFC34F5B6680"
last-modified: Thu, 12 Nov 2026 00:47:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c9efa11-309c-475e-9b9b-5cea97bc18e7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:47 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5cf2f737-47eb-234f-cd36-580ff22ce46d/test-blob-6e272ac8-c408-b756-c991-547948c89567

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
3UcHIiAq8WuDLEWM57uhryRz9wOQH1lyoDuSWfLW2gSh8DGqJMJMnTm86tx+yc8O8KRV1dCR177u
lYHlmJh4rVFB6/eJ9ophJ1nK1DR989Zrg2hNgAU0DxlzvI9AZgWgQzyKPd7YhfoZ8612xwKJcaKr
ehUvKixMDNvdFjn7IcFUKZD38rX3kv1uNI1XvUgW6UvtlevwcRgQPjAD+2/AHtHsIp1ykn7ss+cX
wPaf9E+SxiztDozVY7h357OE9JeOrhW7a5qrpFbMAOEE2bAicErhcTRC0g9FF77k+qrLaL9PiBLg
44i15iHWIA2q0IoIVXZpo4JjTNsFdlTbx6qsAZgitFCeQY3BLIoSbLEBm0Yz3KQ0YcQ87Dw22m00
2R93Kh91hxw6aRPpqHf4UN8qBNoOp+sFd5/T5sgUZ2cfjFJrm0KSjBQp+XKRSrlNRJxcDNaSJTEz
cbJ/oqBUJgKsyhskjLWdl3jG5K55dC3mhqIrt1uQjGchOCmQE+lz1dNw5ICeKLfmvnRezEGCuv2E
mBz+KG6mHD20A1SLDYSOUw/aCY+tSF3qRPjmMcAlnn0rC3rNda1kychC6SVjW7Dw0HkyqLFu11C+
E+N1v+p9jmTWXwIKwd1idT/Gal43h+lI9mFG8/bMvTMpDmHJ7wnexVvBjfuu5g6b0DJxp23yh4z5
LcmIN5ptCaLO4LN8mIY26KQCdvntmQ9TqiPEWxXGN4fUz8E/Vo7AU4NZ4AZbHzerO7/I7xCSDJS5
NYx3qa2MB6gsp8jE9pIWQiJ2lLkJ94vrGCBW/kh2QsMthiECSarVzdheL3dv5kUtsqztHHjasD0A
i5GNNQlftWUEl3BwFPh4oMbhq8gTfDHbKUybiCVLU9XjAb4YSJfO/nkSak/UvJ60dHyx+QR07A5f
sgy9wyw/uUSajRI5YFguEqxPARLhBm2u5xSpmVnRbxSwuZWLETtM0rALOi+LexQjg+ZXJer8fayf
D9wYlh/qyB39iabCogFxAi9h1ss9Imz/hRZyeUkpszvp7AJfMzuRIHIRjfFtYeDl5iK7m6fgYexv
GREJd0/T1NVr2Lb/Ec7zz7VZLJV6kSQ2jJInbhiTCYsV7xoqiKgiPbkbAogq5tRUx8vxhzRX9Yjs
0uu8rGW9188q6SK0yUcMNu7bXo+bC6W+0qdMooFWvfmSPbW9ZpFTXiq4//2xn/6D5FBGe5b4UcZF
/tm+cDVO0ysoIouST9BdhwBk4gyoDDKoyb0xEEJjmezueGe3le30aivRiX1y8ZWA6PSWlG66nPGm
Fad4HcPpxYieo9ZopvIScHjg14O1NtcnsCdNzQV+NNt2EH9GfE1o58P1006+F0IBgyP12sVu8Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25027D3388754A0"
last-modified: Thu, 12 Nov 2026 00:47:47 GMT
content-md5: y4/VLaqx/vj2y83XV9Y6yQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2505a17a-9eea-4997-b716-05e481d11f17
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-5cf2f737-47eb-234f-cd36-580ff22ce46d/test-blob-6e272ac8-c408-b756-c991-547948c89567

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: b3c323c5-78ca-4f62-bb1a-c45c64dafbfa
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:47 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-5cf2f737-47eb-234f-cd36-580ff22ce46d?restype=container

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
x-ms-request-id: 09b04dea-bf24-452a-948b-2b9a44ada226
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:47 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

