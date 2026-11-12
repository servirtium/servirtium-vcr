## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-21e24e88-77e0-c29c-ba82-c17897120bd4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).ClearPagesAsync_EncryptionScope
now: 2026-11-12T00:51:14.1246004+00:00

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
etag: "0x1DD87CCF93DB870"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 03fe20a9-3981-43c2-9bc8-e43c5a53c535
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-21e24e88-77e0-c29c-ba82-c17897120bd4/test-blob-ba6a509d-f441-d2d0-3203-b8b19b005b2b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
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
etag: "0x1D80DE14E5B8190"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 09ff30f1-ba74-418c-960a-9c63496badee
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-21e24e88-77e0-c29c-ba82-c17897120bd4/test-blob-ba6a509d-f441-d2d0-3203-b8b19b005b2b?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-4095
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
etag: "0x217367AD53AE440"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-content-crc64: 1yL6aqYaLyE=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7e3ab8ea-cfe4-4940-9f4c-47ef58280aec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-21e24e88-77e0-c29c-ba82-c17897120bd4/test-blob-ba6a509d-f441-d2d0-3203-b8b19b005b2b?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-page-write: clear
x-ms-range: bytes=1024-2047
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EC4D3B88813C70"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1050508f-5de0-46f4-be88-a7a46df91148
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-21e24e88-77e0-c29c-ba82-c17897120bd4?restype=container

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
x-ms-request-id: c885944d-4b4e-4822-a453-93a73a026b47
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

