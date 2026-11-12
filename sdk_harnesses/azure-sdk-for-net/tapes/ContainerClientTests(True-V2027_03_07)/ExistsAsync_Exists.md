## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-477ecdff-dd7e-67cd-6ee8-e74eba8b957f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ExistsAsync_Exists
now: 2026-11-12T00:44:43.2562885+00:00

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
etag: "0x268CD444ACCD460"
last-modified: Thu, 12 Nov 2026 00:44:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 90b185f5-fd04-41fa-8dd2-8d1335b006f3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: GET /devstoreaccount1/test-container-477ecdff-dd7e-67cd-6ee8-e74eba8b957f?restype=container

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
etag: "0x268CD444ACCD460"
last-modified: Thu, 12 Nov 2026 00:44:43 GMT
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5bb3113-2ebf-426b-b53a-f9b1ddeafb6d
x-ms-version: 2026-06-06
x-ms-has-immutability-policy: false
x-ms-has-legal-hold: false
Date: Thu, 12 Nov 2026 00:44:43 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-477ecdff-dd7e-67cd-6ee8-e74eba8b957f?restype=container

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
x-ms-request-id: fce69998-f9be-4773-9c1b-1c06fdaf8770
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

