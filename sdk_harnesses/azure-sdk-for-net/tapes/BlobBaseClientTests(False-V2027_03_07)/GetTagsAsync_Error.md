## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0cf55662-fb6e-56f5-c10d-5e1ad1de2a76?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetTagsAsync_Error
now: 2026-11-12T00:47:01.1198982+00:00

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
etag: "0x1C540FBE12BFEE0"
last-modified: Thu, 12 Nov 2026 00:47:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 20a2d1da-7d21-4544-9124-300b149b116d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: GET /devstoreaccount1/test-container-0cf55662-fb6e-56f5-c10d-5e1ad1de2a76/test-blob-b5f3e43f-8187-7389-f51c-01f5cd844ab9?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_2
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobNotFound
x-ms-request-id: 1264303b-2097-4498-bcb9-d8bc53a6c342
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:01 GMT
```
### Response body recorded for playback (404: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>BlobNotFound</Code>
  <Message>The specified blob does not exist.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-0cf55662-fb6e-56f5-c10d-5e1ad1de2a76?restype=container

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
x-ms-request-id: bf376e38-cc48-469b-a43a-a8b72465ee99
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

