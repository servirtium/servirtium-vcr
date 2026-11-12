## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-950ce34d-b724-2bdd-7136-d35c64bca69c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).ExistsAsync_NotExists
now: 2026-11-12T00:46:46.5635655+00:00

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
etag: "0x1D846FBC03B0BB0"
last-modified: Thu, 12 Nov 2026 00:46:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4c016529-47b6-488e-b8d2-0f44207e8c1b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: HEAD /devstoreaccount1/test-container-950ce34d-b724-2bdd-7136-d35c64bca69c/test-blob-f038f839-482f-18bd-2e24-68af68894036

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
x-ms-request-id: 5f5c2fc0-d785-4571-ba75-2fb19e90e147
Date: Thu, 12 Nov 2026 00:46:46 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-950ce34d-b724-2bdd-7136-d35c64bca69c?restype=container

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
x-ms-request-id: ba9feb33-ca7d-42ee-b228-32bc6d7ed3be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

