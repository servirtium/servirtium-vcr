## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-81a08b59-933b-30fb-5c2b-985b747f7551?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).UpdateSequenceNumberAsync_IfTags_Failed
now: 2026-11-12T00:52:00.7613694+00:00

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
etag: "0x1C082C45C502820"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 99ef1de2-943b-46c0-b6fd-c6c4b26fb644
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-81a08b59-933b-30fb-5c2b-985b747f7551/test-blob-2f39262b-c6d2-af2f-0b1e-59037e129264

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
etag: "0x1D0D9AE2AD858A0"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b3cc496d-f639-44da-b6bb-14a653f15602
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-81a08b59-933b-30fb-5c2b-985b747f7551/test-blob-2f39262b-c6d2-af2f-0b1e-59037e129264?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-blob-sequence-number: 5
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 4135d3d5-1191-4f5d-b276-5c0586939195
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:00 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-81a08b59-933b-30fb-5c2b-985b747f7551?restype=container

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
x-ms-request-id: 5bdee614-6825-4180-87d0-e6f50f2c73f4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

