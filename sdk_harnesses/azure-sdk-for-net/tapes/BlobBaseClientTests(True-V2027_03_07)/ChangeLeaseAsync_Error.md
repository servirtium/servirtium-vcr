## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e0e074bc-de52-499c-aaab-a6ae58769b12?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ChangeLeaseAsync_Error
now: 2026-11-12T00:47:39.5019478+00:00

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
etag: "0x24291F3B75EC060"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e3834296-598a-4748-a41e-b864f62cdc13
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e0e074bc-de52-499c-aaab-a6ae58769b12/test-blob-4fd2fc05-8c10-2962-c038-9130e4d087be?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: change
x-ms-lease-id: 4d9fd92d-4494-b689-6977-81bd18b640ce
x-ms-proposed-lease-id: 439ae912-f999-30f2-11b7-1f194c6b64d9
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
x-ms-request-id: 705929b4-e5ec-4967-9045-eeb7829cc3aa
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:39 GMT
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

## Interaction 2: DELETE /devstoreaccount1/test-container-e0e074bc-de52-499c-aaab-a6ae58769b12?restype=container

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
x-ms-request-id: 9345c52c-b027-4ec1-848f-96bbf2f3699a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

