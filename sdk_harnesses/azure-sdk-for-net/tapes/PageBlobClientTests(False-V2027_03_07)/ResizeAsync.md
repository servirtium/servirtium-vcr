## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8b3a3b82-642c-eb31-22d6-4d24dbae9f37?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).ResizeAsync
now: 2026-11-12T00:51:27.8646813+00:00

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
etag: "0x1D3752E82492890"
last-modified: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 603e37c4-979b-4093-9ef7-fd87fbd2d1c0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:27 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8b3a3b82-642c-eb31-22d6-4d24dbae9f37/test-blob-415bb1f0-0c70-0fe6-a385-4799a07b4136

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
etag: "0x1C58A715F59CE90"
last-modified: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4ff0322e-9d69-46ff-aa77-a9b723cac28e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8b3a3b82-642c-eb31-22d6-4d24dbae9f37/test-blob-415bb1f0-0c70-0fe6-a385-4799a07b4136?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-blob-content-length: 8192
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x247480C01D0BE20"
last-modified: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 52b377cc-731b-45f1-9b5d-cd164c895fc0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:27 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-8b3a3b82-642c-eb31-22d6-4d24dbae9f37/test-blob-415bb1f0-0c70-0fe6-a385-4799a07b4136

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
last-modified: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 8192
content-type: application/octet-stream
etag: "0x247480C01D0BE20"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f4a16a3c-6f1b-4e75-950e-45378b5e7d91
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:27 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-8b3a3b82-642c-eb31-22d6-4d24dbae9f37?restype=container

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
x-ms-request-id: 5cb43495-af0b-4d43-8cd1-469ec4a8b414
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:27 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

