## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0aa0b16c-fb96-246d-23ab-80fd6068cdeb?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).GetAccountInfoAsync
now: 2026-11-12T00:43:43.7046265+00:00

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
etag: "0x1C5429A69D0D630"
last-modified: Thu, 12 Nov 2026 00:43:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e9f9598e-77fd-4b4e-ab6f-3f4707e8a560
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: GET /devstoreaccount1/test-container-0aa0b16c-fb96-246d-23ab-80fd6068cdeb?restype=account&comp=properties

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
x-ms-request-id: a7f6cece-2439-4295-b9e3-4a6b81cefe6e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:43 GMT
x-ms-sku-name: Standard_RAGRS
x-ms-account-kind: StorageV2
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-0aa0b16c-fb96-246d-23ab-80fd6068cdeb?restype=container

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
x-ms-request-id: 487f3efb-7c3e-4d08-ba58-ca9cd353882a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

