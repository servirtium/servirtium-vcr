## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-bb8c6c3d-4070-25a8-256f-a71516986ae0?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A44%3A30Z&se=2026-11-12T01%3A44%3A30Z&sp=rwdlacup&sig=2lsUxmhVRPg42TjVtjVDxE8QjB87QXIJYlUGrWSNtNg%3D&restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).CreateAsync_WithAccountSas
now: 2026-11-12T00:44:30.1215828+00:00

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
etag: "0x1EA877F6B695420"
last-modified: Thu, 12 Nov 2026 00:44:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7541ef8c-87f2-4f99-a2da-fac3d1c6fe3b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: DELETE /devstoreaccount1/test-container-bb8c6c3d-4070-25a8-256f-a71516986ae0?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A44%3A30Z&se=2026-11-12T01%3A44%3A30Z&sp=rwdlacup&sig=2lsUxmhVRPg42TjVtjVDxE8QjB87QXIJYlUGrWSNtNg%3D&restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 47fe8f29-9560-4a53-8a21-0ef528b581b4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

