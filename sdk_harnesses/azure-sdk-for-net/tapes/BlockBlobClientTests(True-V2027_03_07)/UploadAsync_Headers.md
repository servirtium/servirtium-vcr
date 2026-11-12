## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-87662504-472d-d415-0098-9dcd146e27fb?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).UploadAsync_Headers
now: 2026-11-12T00:50:12.0878619+00:00

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
etag: "0x2757D0D121EFBC0"
last-modified: Thu, 12 Nov 2026 00:50:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 865a325b-a9fe-4d61-af03-7f8f42cbafaa
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-87662504-472d-d415-0098-9dcd146e27fb/test-blob-45f94eef-b1d3-0d93-033c-f1d6a276c1f4

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-cache-control: pjcvjbncsjaihvnrevtp
x-ms-blob-content-disposition: uwbkandyfuvgaiqxwoin
x-ms-blob-content-encoding: lqhjugcpgudnjycriquv
x-ms-blob-content-language: xovxmsixfpuomgdepqpt
x-ms-blob-content-md5: 70KpgEv0PRQ6QAOWW0YLlA==
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20EC749FA713F60"
last-modified: Thu, 12 Nov 2026 00:50:12 GMT
content-md5: 70KpgEv0PRQ6QAOWW0YLlA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1817ac88-6423-4ea8-8a9a-c9a5cd1a00c8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-87662504-472d-d415-0098-9dcd146e27fb/test-blob-45f94eef-b1d3-0d93-033c-f1d6a276c1f4

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
last-modified: Thu, 12 Nov 2026 00:50:12 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:12 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x20EC749FA713F60"
content-md5: 70KpgEv0PRQ6QAOWW0YLlA==
content-encoding: lqhjugcpgudnjycriquv
content-disposition: uwbkandyfuvgaiqxwoin
content-language: xovxmsixfpuomgdepqpt
cache-control: pjcvjbncsjaihvnrevtp
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1cc0d45-a7d6-4382-bf88-9dd793d2cc7a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:12 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:50:12 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-87662504-472d-d415-0098-9dcd146e27fb?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 728bd2b6-0a58-48e0-8650-cf5d68cca4f7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

