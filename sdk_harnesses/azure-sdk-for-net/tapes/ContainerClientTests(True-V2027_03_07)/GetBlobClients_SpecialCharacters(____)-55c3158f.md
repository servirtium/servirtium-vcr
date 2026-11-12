## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6e601604-bec0-a345-79ee-0bb38cb8be30?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).GetBlobClients_SpecialCharacters("  ")
now: 2026-11-12T00:44:18.9216843+00:00

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
etag: "0x233F3AC61D3D060"
last-modified: Thu, 12 Nov 2026 00:44:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f64c89a-9272-4a53-a8d1-0eecb89acfc1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: DELETE /devstoreaccount1/test-container-6e601604-bec0-a345-79ee-0bb38cb8be30?restype=container

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
x-ms-request-id: fffa5ec0-6ef5-42be-85ac-feeab73487b6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

