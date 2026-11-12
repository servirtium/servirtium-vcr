## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-828d15cb-d6ab-feb7-4ed3-ced55e35282b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).AcquireLeaseAsync_Error
now: 2026-11-12T00:47:32.3796814+00:00

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
etag: "0x231ECB37095A920"
last-modified: Thu, 12 Nov 2026 00:47:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af98e058-dc3a-4f97-9dfb-a904cad9c686
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-828d15cb-d6ab-feb7-4ed3-ced55e35282b/test-blob-e1e23ca0-47e9-8cb8-d34a-f9e8b540dd6b?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: e440a966-a2d5-64b2-5bd7-6640172506c3
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
x-ms-request-id: 55805517-ca83-4619-aa0a-7e739858a864
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:32 GMT
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

## Interaction 2: DELETE /devstoreaccount1/test-container-828d15cb-d6ab-feb7-4ed3-ced55e35282b?restype=container

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
x-ms-request-id: 95fc201b-3cbc-4496-99ed-1a833273e680
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

