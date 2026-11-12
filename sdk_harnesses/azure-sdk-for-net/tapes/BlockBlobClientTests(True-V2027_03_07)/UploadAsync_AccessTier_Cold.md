## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6d38d41c-a2a2-7b68-79cb-4a63f3e86227?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).UploadAsync_AccessTier_Cold
now: 2026-11-12T00:50:11.6649734+00:00

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
etag: "0x20495A90FB9F780"
last-modified: Thu, 12 Nov 2026 00:50:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 08f56ab8-eebf-4adf-87d6-24bb40b73328
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:11 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6d38d41c-a2a2-7b68-79cb-4a63f3e86227/test-blob-c4059f8d-04f0-013c-2118-a0ffe67021c5

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
etag: "0x20FB24D69FE99A0"
last-modified: Thu, 12 Nov 2026 00:50:11 GMT
content-md5: syDTWsDcBVp/5lvWcQbW2Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b907f0eb-6f62-49ee-a22a-cc57e50f2c3a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:11 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-6d38d41c-a2a2-7b68-79cb-4a63f3e86227/test-blob-c4059f8d-04f0-013c-2118-a0ffe67021c5

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
last-modified: Thu, 12 Nov 2026 00:50:11 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:11 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x20FB24D69FE99A0"
content-md5: syDTWsDcBVp/5lvWcQbW2Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 826c80bd-72ce-43a5-8b39-6b947d458502
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:11 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cold
x-ms-access-tier-inferred: false
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:50:11 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-6d38d41c-a2a2-7b68-79cb-4a63f3e86227?restype=container

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
x-ms-request-id: 53f70962-3030-48bf-8777-08dc7e22336e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:11 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

