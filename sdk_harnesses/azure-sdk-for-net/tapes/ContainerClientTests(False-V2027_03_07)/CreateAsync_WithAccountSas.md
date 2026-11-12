## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-79fc1b32-293c-65b1-424b-3292cdacbcde?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A43%3A25Z&se=2026-11-12T01%3A43%3A25Z&sp=rwdlacup&sig=mz9RFAzxQlaqYVpD%2FBxWkVTqD1xKXUW0KK%2FYlcrL37Y%3D&restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).CreateAsync_WithAccountSas
now: 2026-11-12T00:43:25.2872247+00:00

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
etag: "0x242C48631C11D80"
last-modified: Thu, 12 Nov 2026 00:43:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 26c2940c-1a6d-46ef-a871-172901b214b7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: DELETE /devstoreaccount1/test-container-79fc1b32-293c-65b1-424b-3292cdacbcde?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A43%3A25Z&se=2026-11-12T01%3A43%3A25Z&sp=rwdlacup&sig=mz9RFAzxQlaqYVpD%2FBxWkVTqD1xKXUW0KK%2FYlcrL37Y%3D&restype=container

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
x-ms-request-id: 050c341f-832a-4aff-8c04-b8f975be4e10
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

