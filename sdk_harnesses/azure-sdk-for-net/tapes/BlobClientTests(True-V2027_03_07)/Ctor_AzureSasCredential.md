## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8c8120bb-0318-6603-0645-7770fcebe6ed?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).Ctor_AzureSasCredential
now: 2026-11-12T00:49:07.2099549+00:00

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
etag: "0x1C10D7AA9135080"
last-modified: Thu, 12 Nov 2026 00:49:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 017b6917-cce9-44b4-a7b0-f87b72cb9b92
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8c8120bb-0318-6603-0645-7770fcebe6ed/test-blob-a9dc9f85-2d3a-ad13-8fcd-40374eaf6d28

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
etag: "0x260FE0B2E7FF0E0"
last-modified: Thu, 12 Nov 2026 00:49:07 GMT
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d52279f7-b851-4413-81c1-263d7b8125d8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-8c8120bb-0318-6603-0645-7770fcebe6ed/test-blob-a9dc9f85-2d3a-ad13-8fcd-40374eaf6d28?sv=2027-03-07&st=2026-11-11T23%3A49%3A07Z&se=2026-11-12T01%3A49%3A07Z&sr=c&sp=racwdxltfi&sig=9valvQNlkN4YqUgAr6m%2BM8jqAFvhh2JgeuEti1A0Sbg%3D

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
last-modified: Thu, 12 Nov 2026 00:49:07 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:07 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x260FE0B2E7FF0E0"
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 12b02a21-4903-42d5-8f04-2d4927126ac5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:07 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:07 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-8c8120bb-0318-6603-0645-7770fcebe6ed?restype=container

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
x-ms-request-id: 3bf7fc46-0c08-4834-913d-3ab891f2dcbd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

