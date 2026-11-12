## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-97d42ebc-2501-cd36-40de-938a778031a1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).BreakLeaseAsync
now: 2026-11-12T00:43:20.5924740+00:00

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
etag: "0x1F99B42F425D250"
last-modified: Thu, 12 Nov 2026 00:43:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cb04cdfd-1efa-48c5-929f-832bbc0325c6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-97d42ebc-2501-cd36-40de-938a778031a1?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 24302b25-f2da-845e-c341-f12311ec0908
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F99B42F425D250"
last-modified: Thu, 12 Nov 2026 00:43:20 GMT
x-ms-lease-id: 24302b25-f2da-845e-c341-f12311ec0908
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eb0baea7-b849-4206-bb3f-54f6de0d41bf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-97d42ebc-2501-cd36-40de-938a778031a1?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: break
x-ms-lease-break-period: 0
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F99B42F425D250"
last-modified: Thu, 12 Nov 2026 00:43:20 GMT
x-ms-lease-time: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a7c39336-ff70-46f6-b221-b6eaccaa1ad4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-97d42ebc-2501-cd36-40de-938a778031a1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F99B42F425D250"
last-modified: Thu, 12 Nov 2026 00:43:20 GMT
x-ms-lease-state: broken
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 221fcd2e-b7a3-4df7-adac-2cd6fc386ff8
x-ms-version: 2026-06-06
x-ms-has-immutability-policy: false
x-ms-has-legal-hold: false
Date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-97d42ebc-2501-cd36-40de-938a778031a1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
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
x-ms-request-id: 8699b2a8-51da-4719-9eb0-2bc72fe71214
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

