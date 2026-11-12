## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ab334dd0-010e-1824-8c4a-2d9a65e6bfbe?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).Ctor_AudienceError
now: 2026-11-12T00:50:52.0676873+00:00

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
etag: "0x2545816EF28A180"
last-modified: Thu, 12 Nov 2026 00:50:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: efdef170-1f9c-4eb5-93b6-3aee575708b2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ab334dd0-010e-1824-8c4a-2d9a65e6bfbe/test-blob-dac45580-974f-cb00-a7e2-ad57fc5a9308

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D63CBF70C27470"
last-modified: Thu, 12 Nov 2026 00:50:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1bbdf63d-f74d-4afb-b04e-6ca36d5add77
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-ab334dd0-010e-1824-8c4a-2d9a65e6bfbe?restype=container

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
x-ms-request-id: 3a948a7c-2e29-44ac-8b73-b48b482ce363
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

