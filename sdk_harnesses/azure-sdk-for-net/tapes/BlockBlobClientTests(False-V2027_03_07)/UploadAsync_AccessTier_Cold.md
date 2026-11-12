## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-49df2370-b8f3-9db2-a507-46c706f64695?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).UploadAsync_AccessTier_Cold
now: 2026-11-12T00:49:49.3129982+00:00

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
etag: "0x1C4EF649454A640"
last-modified: Thu, 12 Nov 2026 00:49:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 15357b53-d36a-4575-90ad-c2d59164404d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-49df2370-b8f3-9db2-a507-46c706f64695/test-blob-235c537f-65df-1a61-1215-151c9dd9d0e1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-access-tier: Cold
x-ms-blob-type: BlockBlob
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
etag: "0x20B7D27DE633CA0"
last-modified: Thu, 12 Nov 2026 00:49:49 GMT
content-md5: GOEipsZTUHw+RdpP2QX+Sg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ec0a1de7-c3ab-4da6-906a-88f43bf9ec99
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-49df2370-b8f3-9db2-a507-46c706f64695/test-blob-235c537f-65df-1a61-1215-151c9dd9d0e1

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
last-modified: Thu, 12 Nov 2026 00:49:49 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:49 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x20B7D27DE633CA0"
content-md5: GOEipsZTUHw+RdpP2QX+Sg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e61e87bd-35cc-46f8-bb4a-dcf03f923ad2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:49 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cold
x-ms-access-tier-inferred: false
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:49 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-49df2370-b8f3-9db2-a507-46c706f64695?restype=container

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
x-ms-request-id: 53183805-2dcd-4215-9a26-d3ccd2db54d8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

