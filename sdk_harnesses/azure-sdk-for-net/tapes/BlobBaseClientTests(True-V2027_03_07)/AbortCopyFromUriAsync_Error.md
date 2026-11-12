## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4c6a74ab-38cc-fa51-9d0d-6e3a9c8650dc?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).AbortCopyFromUriAsync_Error
now: 2026-11-12T00:47:30.8385620+00:00

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
etag: "0x233EECAEE12C940"
last-modified: Thu, 12 Nov 2026 00:47:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5b6bf369-4281-4910-83f8-487002e15668
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4c6a74ab-38cc-fa51-9d0d-6e3a9c8650dc/test-blob-c1fd1e96-471e-a2bc-ca5f-42db69577e4a?comp=copy&copyid=918e1168-a77c-aedc-af49-9a283a88ee05

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-copy-action: abort
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
x-ms-request-id: 4d925d19-aa4a-4842-b05f-15c91e89c455
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:30 GMT
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

## Interaction 2: DELETE /devstoreaccount1/test-container-4c6a74ab-38cc-fa51-9d0d-6e3a9c8650dc?restype=container

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
x-ms-request-id: 0c66e215-0684-43a5-b98b-49827c576496
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

