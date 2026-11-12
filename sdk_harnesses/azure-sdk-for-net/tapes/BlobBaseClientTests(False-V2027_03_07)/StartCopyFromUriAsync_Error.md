## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-433bdd2f-434a-f4e9-df80-25d5917658c8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).StartCopyFromUriAsync_Error
now: 2026-11-12T00:47:15.7254119+00:00

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
etag: "0x1EE38758B1F67F0"
last-modified: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b90847b7-df41-40ab-8838-e7b06f0b3f12
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-433bdd2f-434a-f4e9-df80-25d5917658c8/test-blob-69324177-8f54-90d7-06af-d220c6b6f826

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-433bdd2f-434a-f4e9-df80-25d5917658c8/test-blob-6507940f-69f3-8c49-994d-5228db07fa44
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
x-ms-request-id: 598b1292-972e-4daf-bf11-197e26e6b6c5
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:15 GMT
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

## Interaction 2: DELETE /devstoreaccount1/test-container-433bdd2f-434a-f4e9-df80-25d5917658c8?restype=container

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
x-ms-request-id: b7c130a2-d0d1-4613-83d0-dc679a8fc699
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

