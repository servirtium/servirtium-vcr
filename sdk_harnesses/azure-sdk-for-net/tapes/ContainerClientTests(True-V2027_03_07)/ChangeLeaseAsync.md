## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1f00270f-d616-d2b9-bd50-08ad1ef1b1ca?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ChangeLeaseAsync
now: 2026-11-12T00:44:28.3191045+00:00

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
etag: "0x208FD5F7FBAEFE0"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a3b2c6ea-9ee1-4f86-8454-0539613a57f9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1f00270f-d616-d2b9-bd50-08ad1ef1b1ca?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: c451c586-dda6-71bb-0de0-d9630da91437
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x208FD5F7FBAEFE0"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-lease-id: c451c586-dda6-71bb-0de0-d9630da91437
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 703b308f-0374-439c-bfe6-f36a1803ad85
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-1f00270f-d616-d2b9-bd50-08ad1ef1b1ca?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: change
x-ms-lease-id: c451c586-dda6-71bb-0de0-d9630da91437
x-ms-proposed-lease-id: 49060833-4ee7-311e-ab0d-35d0a9c63a4d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x208FD5F7FBAEFE0"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-lease-id: 49060833-4ee7-311e-ab0d-35d0a9c63a4d
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 67958a23-3ee8-4f8f-8b85-aa7736d73d38
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-1f00270f-d616-d2b9-bd50-08ad1ef1b1ca?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: release
x-ms-lease-id: 49060833-4ee7-311e-ab0d-35d0a9c63a4d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x208FD5F7FBAEFE0"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 30a86dcc-ed1a-4204-899a-44e0df558b1e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-1f00270f-d616-d2b9-bd50-08ad1ef1b1ca?restype=container

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
x-ms-request-id: a6010a34-7220-406d-a322-97c4cb22b9dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

