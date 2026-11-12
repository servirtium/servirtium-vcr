## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-61d305e5-6bc8-c407-fa8f-1f57504626f9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).GetBlobClients_SpecialCharacters("%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C%2F%3F%23äÄöÖüÜß")
now: 2026-11-12T00:44:18.2665485+00:00

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
etag: "0x25298E0B740BE20"
last-modified: Thu, 12 Nov 2026 00:44:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 00953f3c-4cae-49f6-ba36-6c571b0b481b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: DELETE /devstoreaccount1/test-container-61d305e5-6bc8-c407-fa8f-1f57504626f9?restype=container

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
x-ms-request-id: e9049cab-3ecd-4db1-924b-957cc37f967d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

