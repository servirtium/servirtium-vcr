## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-aabfe4e4-3874-3255-a6a5-cd6a7c9a4f35?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).AcquireLeaseAsync
now: 2026-11-12T00:44:24.4657375+00:00

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
etag: "0x22F66662502B2A0"
last-modified: Thu, 12 Nov 2026 00:44:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bdd674a3-442c-44ac-a04e-0e9349bc9b7c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-aabfe4e4-3874-3255-a6a5-cd6a7c9a4f35?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 6a4b576a-2fb4-d29f-dc0b-f8c160c33fbe
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22F66662502B2A0"
last-modified: Thu, 12 Nov 2026 00:44:24 GMT
x-ms-lease-id: 6a4b576a-2fb4-d29f-dc0b-f8c160c33fbe
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 300af65e-0215-4211-851f-69bc6093bcf9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-aabfe4e4-3874-3255-a6a5-cd6a7c9a4f35?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-id: 6a4b576a-2fb4-d29f-dc0b-f8c160c33fbe
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
x-ms-request-id: 9e05f3f0-4a80-4fd9-aea3-cc0f2a6089a5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

