## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d9a806f2-9823-4118-9897-366f9e4dfaba?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DeleteIfExistsAsync_NotExists
now: 2026-11-12T00:46:33.1414295+00:00

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
etag: "0x1DD00528976D910"
last-modified: Thu, 12 Nov 2026 00:46:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e8029441-ec14-4aa0-b927-80c9164c2567
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: DELETE /devstoreaccount1/test-container-d9a806f2-9823-4118-9897-366f9e4dfaba/test-blob-e7a39de5-b74e-4237-525c-116479506364

### Request headers recorded for playback:

```
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
x-ms-request-id: 45a5eb3a-3d49-4f32-88d4-5e8f86bdb47d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:33 GMT
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

## Interaction 2: HEAD /devstoreaccount1/test-container-d9a806f2-9823-4118-9897-366f9e4dfaba/test-blob-e7a39de5-b74e-4237-525c-116479506364

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
x-ms-error-code: BlobNotFound
x-ms-request-id: 0943a7a8-49c4-49a8-9ee5-c6020150ceea
Date: Thu, 12 Nov 2026 00:46:33 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-d9a806f2-9823-4118-9897-366f9e4dfaba?restype=container

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
x-ms-request-id: b6a0fc02-d6d7-40e3-acd9-59bec3ca68a2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

