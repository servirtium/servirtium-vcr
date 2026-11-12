## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f77a4c2d-1c00-dd17-a795-fe9a9513f635?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).CanGetParentContainerClient_WithAccountSAS
now: 2026-11-12T00:46:21.4634917+00:00

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
etag: "0x1CF70FA3E905A00"
last-modified: Thu, 12 Nov 2026 00:46:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a138c786-cee4-4ba4-a03a-59aca818672a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: GET /devstoreaccount1/test-container-f77a4c2d-1c00-dd17-a795-fe9a9513f635?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A46%3A21Z&se=2026-11-12T01%3A46%3A21Z&sp=rwdxylacuptfi&sig=prfIQP3eVPGyI8qV3SOhcarxBqhblioBkRdKfnLOek0%3D&restype=container

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
etag: "0x1CF70FA3E905A00"
last-modified: Thu, 12 Nov 2026 00:46:21 GMT
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 65198b15-ebc6-416a-b0df-00ae9f70f3c7
x-ms-version: 2026-06-06
x-ms-has-immutability-policy: false
x-ms-has-legal-hold: false
Date: Thu, 12 Nov 2026 00:46:21 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-f77a4c2d-1c00-dd17-a795-fe9a9513f635?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c8c2f1ad-79dd-4d3a-8c7f-1eab0525cc93
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

