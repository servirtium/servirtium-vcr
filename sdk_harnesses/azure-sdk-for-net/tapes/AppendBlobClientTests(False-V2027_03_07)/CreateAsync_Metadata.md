## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5d4bae6a-900b-4afe-4486-2b4475b7772b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).CreateAsync_Metadata
now: 2026-11-12T00:50:36.0699926+00:00

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
etag: "0x1ED08EA0B24A460"
last-modified: Thu, 12 Nov 2026 00:50:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2f030b40-ebbd-460a-8544-d2a7c43c05cb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5d4bae6a-900b-4afe-4486-2b4475b7772b/test-blob-ccaf54ab-a283-5a41-ba92-717ee5926aad

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x209214E22417380"
last-modified: Thu, 12 Nov 2026 00:50:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a07f46a9-7a9d-4425-b4e1-1ddfff9578ab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-5d4bae6a-900b-4afe-4486-2b4475b7772b/test-blob-ccaf54ab-a283-5a41-ba92-717ee5926aad

### Request headers recorded for playback:

```
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
last-modified: Thu, 12 Nov 2026 00:50:36 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:36 GMT
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-Capital: letter
x-ms-meta-UPPER: case
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x209214E22417380"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2f0334a6-b8d0-45fa-98c1-c9c0b6aa1c2f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:36 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-5d4bae6a-900b-4afe-4486-2b4475b7772b?restype=container

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
x-ms-request-id: 93a05ede-a224-4524-ae7e-83d9e9c908ee
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

