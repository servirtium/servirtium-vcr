## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-483bf4bf-084b-bfa0-ddff-cd0d34f59290?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadToAsync_ZeroSizeBlob
now: 2026-11-12T00:46:45.4375830+00:00

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
etag: "0x235ED9DE8F6FB40"
last-modified: Thu, 12 Nov 2026 00:46:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3fb1db2e-fbb5-400d-9cc5-cfce3056351f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-483bf4bf-084b-bfa0-ddff-cd0d34f59290/test-blob-21fa6e9f-672e-3376-3154-9da0dd35c0e0

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
etag: "0x258D1C25178F440"
last-modified: Thu, 12 Nov 2026 00:46:45 GMT
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9c5959e0-8974-4de2-a752-3c123a699fb4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-483bf4bf-084b-bfa0-ddff-cd0d34f59290/test-blob-21fa6e9f-672e-3376-3154-9da0dd35c0e0

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-request-id: 76425dd3-3dc4-4a6c-a251-34481d4a7b0f
Content-Range: bytes */0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:45 GMT
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

## Interaction 3: GET /devstoreaccount1/test-container-483bf4bf-084b-bfa0-ddff-cd0d34f59290/test-blob-21fa6e9f-672e-3376-3154-9da0dd35c0e0

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
last-modified: Thu, 12 Nov 2026 00:46:45 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:45 GMT
content-length: 0
content-type: application/octet-stream
etag: "0x258D1C25178F440"
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d8404b83-ceaa-48aa-8dd0-3bd61a2e79da
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:45 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-483bf4bf-084b-bfa0-ddff-cd0d34f59290?restype=container

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
x-ms-request-id: 711a220e-d6de-40d5-a718-b5a3f8b51169
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

