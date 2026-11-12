## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e4cd41ca-cbd9-d2ac-656d-7ef511319a39?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).RenewLeaseAsync
now: 2026-11-12T00:44:03.3956375+00:00

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
etag: "0x237CBCA6EAA3C00"
last-modified: Thu, 12 Nov 2026 00:44:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 51471004-2075-48a9-821c-b40775cdc07f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e4cd41ca-cbd9-d2ac-656d-7ef511319a39?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: e350c1c7-5719-444d-898a-9c100d7f8352
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x237CBCA6EAA3C00"
last-modified: Thu, 12 Nov 2026 00:44:03 GMT
x-ms-lease-id: e350c1c7-5719-444d-898a-9c100d7f8352
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: befa606a-dad1-4a5c-be00-a4bd8d736e9a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-e4cd41ca-cbd9-d2ac-656d-7ef511319a39?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: renew
x-ms-lease-id: e350c1c7-5719-444d-898a-9c100d7f8352
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x237CBCA6EAA3C00"
last-modified: Thu, 12 Nov 2026 00:44:03 GMT
x-ms-lease-id: e350c1c7-5719-444d-898a-9c100d7f8352
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1903d870-ea14-4895-9159-56bbf0e0abce
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-e4cd41ca-cbd9-d2ac-656d-7ef511319a39?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: e350c1c7-5719-444d-898a-9c100d7f8352
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
x-ms-request-id: adb4ee5f-6ceb-4f2e-9e9b-3fd7566a4a47
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

