## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9e0dc247-0396-04e9-ab58-81dd519f3078?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).UploadBlobAsync
now: 2026-11-12T00:44:07.3772245+00:00

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
etag: "0x1D3B32B732D6E60"
last-modified: Thu, 12 Nov 2026 00:44:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2c71b9e1-0b67-4d85-b832-b61e52961726
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9e0dc247-0396-04e9-ab58-81dd519f3078/test-blob-47a0da5f-65a2-f282-b7c6-2a7ea4976d0d

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
XtQh0UHbiTc2s1x6unxf4USGRdFMNmbiPxrmz9hqYBPrc358fl42hFBpEe8ICDg6Zkk6HVKcwCht
PpIn9Lley1JIj0b942PlT8GA4yV32TfirGmPMELBT7NWDz/MD4+WC0Wcvw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20D2BFCF4D445E0"
last-modified: Thu, 12 Nov 2026 00:44:07 GMT
content-md5: /pBqOVN0pTrjRrGbOVZcJA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0b013da9-8887-466e-82c2-e937bebb8f4f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-9e0dc247-0396-04e9-ab58-81dd519f3078/test-blob-47a0da5f-65a2-f282-b7c6-2a7ea4976d0d

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
last-modified: Thu, 12 Nov 2026 00:44:07 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:44:07 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 100
content-type: application/octet-stream
etag: "0x20D2BFCF4D445E0"
content-md5: /pBqOVN0pTrjRrGbOVZcJA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a04e65ad-a51c-4c1c-9bc9-17d62ec664d9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:07 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:44:07 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-9e0dc247-0396-04e9-ab58-81dd519f3078?restype=container

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
x-ms-request-id: 678d555a-1f65-4f90-af38-570921429d58
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

