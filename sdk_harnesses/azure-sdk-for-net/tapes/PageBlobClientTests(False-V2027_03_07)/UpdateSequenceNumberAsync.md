## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1c3e3dfc-920f-599d-c880-8981f8c9a7bf?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).UpdateSequenceNumberAsync
now: 2026-11-12T00:51:30.0648236+00:00

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
etag: "0x23D4AA4C546B880"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dcbca15e-eb14-4fd9-8e36-6d8641a207cb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1c3e3dfc-920f-599d-c880-8981f8c9a7bf/test-blob-315ad9a9-06b6-411a-fa61-f0048b5af8ab

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
etag: "0x1DC92FEFEBD83F0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6ccfd71b-3be6-40cd-9f5e-0eda6c8f4f53
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-1c3e3dfc-920f-599d-c880-8981f8c9a7bf/test-blob-315ad9a9-06b6-411a-fa61-f0048b5af8ab?comp=properties

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
etag: "0x1E7BCB1CB220140"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7efcd829-409a-4ea0-8908-1f63af49b8eb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-1c3e3dfc-920f-599d-c880-8981f8c9a7bf/test-blob-315ad9a9-06b6-411a-fa61-f0048b5af8ab

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
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x1E7BCB1CB220140"
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5eaecf5-2896-48d4-92d4-300ec45a5d15
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-1c3e3dfc-920f-599d-c880-8981f8c9a7bf?restype=container

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
x-ms-request-id: 460a71cc-3712-411d-b922-c1aa226d2846
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

