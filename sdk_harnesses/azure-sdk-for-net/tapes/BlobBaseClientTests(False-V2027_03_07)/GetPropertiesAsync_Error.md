## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-460a9e2b-3da8-b9d7-91d7-ed81ca9420cd?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetPropertiesAsync_Error
now: 2026-11-12T00:46:55.6041962+00:00

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
etag: "0x1DF160011362560"
last-modified: Thu, 12 Nov 2026 00:46:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cbef81e1-dbd6-4998-afd9-87261d4a416d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: HEAD /devstoreaccount1/test-container-460a9e2b-3da8-b9d7-91d7-ed81ca9420cd/test-blob-3161a6d4-8e01-4c8c-4e21-6c6811ad4e40

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
x-ms-request-id: 0dc6b5fc-a333-4c6d-beea-ea1d90454b88
Date: Thu, 12 Nov 2026 00:46:55 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-460a9e2b-3da8-b9d7-91d7-ed81ca9420cd?restype=container

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
x-ms-request-id: cfdf8695-040e-4204-b533-cf8ef208d02b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

