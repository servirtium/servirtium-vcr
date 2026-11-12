## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f1ba3b31-0fff-0934-de64-92ca87806a68?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).UpdateSequenceNumberAsync
now: 2026-11-12T00:51:59.7234325+00:00

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
etag: "0x215D1112597A100"
last-modified: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91560e37-355b-41b7-9726-cebb3ec8d5ad
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f1ba3b31-0fff-0934-de64-92ca87806a68/test-blob-6c6c03ab-d6fb-3b3f-60f7-0d5dac3d91eb

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C14B81F4877420"
last-modified: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 07a12374-1613-426a-8d3d-b567028d3486
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f1ba3b31-0fff-0934-de64-92ca87806a68/test-blob-6c6c03ab-d6fb-3b3f-60f7-0d5dac3d91eb?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-blob-sequence-number: 5
x-ms-return-client-request-id: true
x-ms-sequence-number-action: update
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x223E49B57D22BE0"
last-modified: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72124df6-27fb-4cfa-99f9-bd81517c7bf2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:59 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-f1ba3b31-0fff-0934-de64-92ca87806a68/test-blob-6c6c03ab-d6fb-3b3f-60f7-0d5dac3d91eb

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
last-modified: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x223E49B57D22BE0"
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1279c349-fd7d-4db5-964a-10840805960e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:59 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-f1ba3b31-0fff-0934-de64-92ca87806a68?restype=container

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
x-ms-request-id: f56776b0-87ef-4d98-9f16-5db1c2ff3e99
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

