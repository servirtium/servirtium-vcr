## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-42169a57-ed30-5cb4-562f-6ab9e1642e48?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).ChangeLeaseAsync_Error
now: 2026-11-12T00:46:23.6363589+00:00

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
etag: "0x27970E4D6068160"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1e00e95d-0c60-4416-935e-61feba4e896a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-42169a57-ed30-5cb4-562f-6ab9e1642e48/test-blob-118ec004-9a6b-2516-b85a-c86b3fb6532f?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: change
x-ms-lease-id: 24d310f0-1e2c-5540-7fac-3ef4498cd432
x-ms-proposed-lease-id: fa184f2e-fc0c-bd77-84f1-89d625491d9f
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
x-ms-request-id: 501de0a2-14af-4e23-8be4-e0fa2b95a129
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:23 GMT
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

## Interaction 2: DELETE /devstoreaccount1/test-container-42169a57-ed30-5cb4-562f-6ab9e1642e48?restype=container

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
x-ms-request-id: 719af243-2d07-4474-aba4-debf3fee886c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

