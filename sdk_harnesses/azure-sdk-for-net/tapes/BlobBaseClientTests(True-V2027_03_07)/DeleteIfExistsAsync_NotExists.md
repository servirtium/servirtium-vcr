## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a5d99ae0-6630-1f7f-5ec3-abf2a34a012e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DeleteIfExistsAsync_NotExists
now: 2026-11-12T00:47:48.7476631+00:00

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
etag: "0x214995422FB8CC0"
last-modified: Thu, 12 Nov 2026 00:47:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 04f774f1-ac69-4025-b5c0-21c67d26fabe
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: DELETE /devstoreaccount1/test-container-a5d99ae0-6630-1f7f-5ec3-abf2a34a012e/test-blob-f41ba8e4-0fb6-ecba-2801-f2fc73791145

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
x-ms-request-id: 6b05d2b0-bcec-40d4-b453-fa2a882f43d0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:48 GMT
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

## Interaction 2: HEAD /devstoreaccount1/test-container-a5d99ae0-6630-1f7f-5ec3-abf2a34a012e/test-blob-f41ba8e4-0fb6-ecba-2801-f2fc73791145

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
x-ms-request-id: a6a0379d-5c3c-4e3f-8217-c97188440e45
Date: Thu, 12 Nov 2026 00:47:48 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a5d99ae0-6630-1f7f-5ec3-abf2a34a012e?restype=container

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
x-ms-request-id: dc8103b7-3321-4bf8-93ac-30e9d6bdcd4e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

