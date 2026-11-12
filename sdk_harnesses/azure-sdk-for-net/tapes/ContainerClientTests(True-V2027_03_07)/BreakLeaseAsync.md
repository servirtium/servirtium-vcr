## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-70c1045f-3da7-f3ff-b076-d4b2d8ce68b2?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).BreakLeaseAsync
now: 2026-11-12T00:44:25.5538376+00:00

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
etag: "0x215AEC275617E60"
last-modified: Thu, 12 Nov 2026 00:44:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 63c77b0f-fe6f-45fe-810e-e49f82102301
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-70c1045f-3da7-f3ff-b076-d4b2d8ce68b2?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: ac378c8e-3296-d723-39b4-200eddddd63e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x215AEC275617E60"
last-modified: Thu, 12 Nov 2026 00:44:25 GMT
x-ms-lease-id: ac378c8e-3296-d723-39b4-200eddddd63e
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a82a89b5-4342-4c64-9057-6939a14051cd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-70c1045f-3da7-f3ff-b076-d4b2d8ce68b2?comp=lease&restype=container

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
etag: "0x215AEC275617E60"
last-modified: Thu, 12 Nov 2026 00:44:25 GMT
x-ms-lease-time: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bfb81a09-5477-42e2-9829-5c65ff7259ca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-70c1045f-3da7-f3ff-b076-d4b2d8ce68b2?restype=container

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
etag: "0x215AEC275617E60"
last-modified: Thu, 12 Nov 2026 00:44:25 GMT
x-ms-lease-state: broken
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fd25658c-a7ed-4021-bc21-619fb6c8a466
x-ms-version: 2026-06-06
x-ms-has-immutability-policy: false
x-ms-has-legal-hold: false
Date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-70c1045f-3da7-f3ff-b076-d4b2d8ce68b2?restype=container

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
x-ms-request-id: 53a45092-25ea-4e81-bf58-95364a1d390d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

