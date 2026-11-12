## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-baab2140-16dc-7ade-fd1e-ef47f1e33e0b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadToAsync_ZeroSizeBlob_ContentValidationEnabled(StorageCrc64)
now: 2026-11-12T00:46:12.0273366+00:00

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
etag: "0x2657959D634B100"
last-modified: Thu, 12 Nov 2026 00:46:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0640a08f-d158-4bc9-9fe2-a9fefc1b89e1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-baab2140-16dc-7ade-fd1e-ef47f1e33e0b/test-blob-ce398689-5950-2d7f-4e2d-885bf6f41b2e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2381A239402EE80"
last-modified: Thu, 12 Nov 2026 00:46:12 GMT
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5ba6310f-9b53-43b5-a114-2ed9a3f12b41
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-baab2140-16dc-7ade-fd1e-ef47f1e33e0b/test-blob-ce398689-5950-2d7f-4e2d-885bf6f41b2e

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
x-ms-range: bytes=0-4194303
x-ms-return-client-request-id: true
x-ms-structured-body: XSM/1.0; properties=crc64
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: InvalidRange
x-ms-request-id: 555cdfee-b0d6-4de8-a701-f5fb48d6f345
Content-Range: bytes */0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:12 GMT
```
### Response body recorded for playback (416: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>InvalidRange</Code>
  <Message>The range specified is invalid for the current size of the resource.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: GET /devstoreaccount1/test-container-baab2140-16dc-7ade-fd1e-ef47f1e33e0b/test-blob-ce398689-5950-2d7f-4e2d-885bf6f41b2e

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:46:12 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:12 GMT
content-length: 0
content-type: application/octet-stream
etag: "0x2381A239402EE80"
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e0598471-8099-442f-9ee1-7e0d635c442d
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:12 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-baab2140-16dc-7ade-fd1e-ef47f1e33e0b?restype=container

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
x-ms-request-id: 175b8c4b-ad5b-4efa-befc-b18bd0b8d649
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

