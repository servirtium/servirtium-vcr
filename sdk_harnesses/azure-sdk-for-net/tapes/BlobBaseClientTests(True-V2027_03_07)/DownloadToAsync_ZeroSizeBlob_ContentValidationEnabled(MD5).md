## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2962c4d3-474e-eb50-c493-ba72309ef127?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadToAsync_ZeroSizeBlob_ContentValidationEnabled(MD5)
now: 2026-11-12T00:47:27.9257169+00:00

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
etag: "0x1C037AD03EBEA40"
last-modified: Thu, 12 Nov 2026 00:47:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 972d1c62-2034-4242-874d-f2eed8724495
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:27 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2962c4d3-474e-eb50-c493-ba72309ef127/test-blob-125cec0c-1e0e-b734-878d-d60d54680f0c

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
etag: "0x24FC78880B56840"
last-modified: Thu, 12 Nov 2026 00:47:27 GMT
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af03023a-6a43-48e7-bf46-7d7ea8d6f9f7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:27 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-2962c4d3-474e-eb50-c493-ba72309ef127/test-blob-125cec0c-1e0e-b734-878d-d60d54680f0c

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
x-ms-range-get-content-md5: true
x-ms-range: bytes=0-4194303
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: InvalidRange
x-ms-request-id: 655e45d9-123c-44a4-a858-a8aa7b536c36
Content-Range: bytes */0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:27 GMT
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

## Interaction 3: GET /devstoreaccount1/test-container-2962c4d3-474e-eb50-c493-ba72309ef127/test-blob-125cec0c-1e0e-b734-878d-d60d54680f0c

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
last-modified: Thu, 12 Nov 2026 00:47:27 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:27 GMT
content-length: 0
content-type: application/octet-stream
etag: "0x24FC78880B56840"
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f6a9747-abfe-41da-9b36-451e8c1875ac
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:27 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-2962c4d3-474e-eb50-c493-ba72309ef127?restype=container

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
x-ms-request-id: 435b34f7-e88a-43a6-9243-c00efa82348b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:27 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

