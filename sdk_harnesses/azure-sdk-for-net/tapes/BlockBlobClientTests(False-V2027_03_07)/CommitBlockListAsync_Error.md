## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-22d8350c-804e-1ce8-9522-8ae49e6cd06f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).CommitBlockListAsync_Error
now: 2026-11-12T00:49:37.4545927+00:00

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
etag: "0x23B8008238CDB80"
last-modified: Thu, 12 Nov 2026 00:49:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 532d9303-55a4-4151-8fda-085f0bc04a7b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:37 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-22d8350c-804e-1ce8-9522-8ae49e6cd06f/test-blob-88c7efc7-656c-f3bb-e602-adb61bb77466?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay04OGI4MjA0Mi1mNjhmLTNmNzgtNTE5YS05OTFlYTU3Mjc5YjI=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: InvalidBlockList
x-ms-request-id: f6411788-c2d4-4502-8afc-de4f1f4065b2
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:37 GMT
```
### Response body recorded for playback (400: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>InvalidBlockList</Code>
  <Message>The specified block list is invalid.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-22d8350c-804e-1ce8-9522-8ae49e6cd06f?restype=container

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
x-ms-request-id: cc6022af-ef45-422d-afb1-7fac10f4aae1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

