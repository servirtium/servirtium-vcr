## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-873dab86-6533-64ad-859d-7e42f16e5dd9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).GetAccountInfoAsync
now: 2026-11-12T00:44:48.9775981+00:00

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
etag: "0x201D97E14376BA0"
last-modified: Thu, 12 Nov 2026 00:44:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a82bea29-a9c4-44ea-9796-40b207285353
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: GET /devstoreaccount1/test-container-873dab86-6533-64ad-859d-7e42f16e5dd9?restype=account&comp=properties

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
x-ms-request-id: 7a53559e-2bad-4262-89d5-1d1f4c398396
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:48 GMT
x-ms-sku-name: Standard_RAGRS
x-ms-account-kind: StorageV2
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-873dab86-6533-64ad-859d-7e42f16e5dd9?restype=container

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
x-ms-request-id: 9ef64f6f-ae12-4109-8346-79d96024ab08
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

