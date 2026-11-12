## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-aa717e0a-cabe-669c-6c50-6fca4b02cda6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).AcquireLeaseAsync
now: 2026-11-12T00:43:19.4868063+00:00

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
etag: "0x233436895DEB060"
last-modified: Thu, 12 Nov 2026 00:43:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d9555d28-0f64-4414-94d2-046516d20781
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-aa717e0a-cabe-669c-6c50-6fca4b02cda6?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 70cba8d3-2b7c-282a-ccdb-4daea7b44998
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x233436895DEB060"
last-modified: Thu, 12 Nov 2026 00:43:19 GMT
x-ms-lease-id: 70cba8d3-2b7c-282a-ccdb-4daea7b44998
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 15eceff2-1510-4e13-9af1-caee916b826e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-aa717e0a-cabe-669c-6c50-6fca4b02cda6?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-id: 70cba8d3-2b7c-282a-ccdb-4daea7b44998
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
x-ms-request-id: 9117f20e-dbb4-4a4d-9b0b-00244b807e4f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

