## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-db09202e-838a-537f-d1f6-d5116d93892c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).Ctor_AzureSasCredential
now: 2026-11-12T00:48:52.9697353+00:00

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
etag: "0x1DC8AD3408B6220"
last-modified: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 850f7134-9a1e-4f65-8092-61f8f8a2f4d5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-db09202e-838a-537f-d1f6-d5116d93892c/test-blob-38e26fcf-6faf-7531-8f0f-a97ad888be35

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E57FD69B4AF290"
last-modified: Thu, 12 Nov 2026 00:48:52 GMT
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5876370f-4265-4750-9c06-2037a3f321fe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-db09202e-838a-537f-d1f6-d5116d93892c/test-blob-38e26fcf-6faf-7531-8f0f-a97ad888be35?sv=2027-03-07&st=2026-11-11T23%3A48%3A52Z&se=2026-11-12T01%3A48%3A52Z&sr=c&sp=racwdxltfi&sig=BeyRi%2BIHbVBPRtUCKDHv0O9ukeyMONJNBKoysjmqzdo%3D

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x1E57FD69B4AF290"
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e998e75e-2470-4964-84aa-cdefb91cceed
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:52 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:52 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-db09202e-838a-537f-d1f6-d5116d93892c?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ee584e0a-9734-49e1-9769-3a095ceb0e53
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

