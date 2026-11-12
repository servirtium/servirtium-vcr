## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-48fb892f-de50-905e-e8b8-f0800aeb1795?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).ClearPagesAsync_IfTags_Failed
now: 2026-11-12T00:51:44.4817160+00:00

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
etag: "0x261514A91206D60"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ba0f1973-7bcb-4c92-b8bf-6381fb3c0620
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-48fb892f-de50-905e-e8b8-f0800aeb1795/test-blob-911006ed-ad7f-6ae2-259d-b2ff47c7cb6f

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
etag: "0x1C1A544CCA71FD0"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1ba49388-e002-419a-a6a6-c893d3804034
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-48fb892f-de50-905e-e8b8-f0800aeb1795/test-blob-911006ed-ad7f-6ae2-259d-b2ff47c7cb6f?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-if-tags: "coolTag" = 'true'
x-ms-page-write: clear
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: f32704be-d4c3-4c9a-ab98-3eea3286ba1f
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:44 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-48fb892f-de50-905e-e8b8-f0800aeb1795?restype=container

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
x-ms-request-id: c37780e2-8c7b-4161-be1a-29fc274d09f0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

