## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c6aa1054-31ef-102d-6460-e4b202674568?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesAsync_IfTagsFailed
now: 2026-11-12T00:51:21.4939286+00:00

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
etag: "0x21326DF495E8CC0"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4a8ed58a-79d1-4b22-b9fc-b6b411fe0f22
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c6aa1054-31ef-102d-6460-e4b202674568/test-blob-a046e371-0e35-75a7-a700-cee661bce02d

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
etag: "0x2020A7B7F1A1C00"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c868fa69-2d7d-406a-82b3-31d5fb8e9aaa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-c6aa1054-31ef-102d-6460-e4b202674568/test-blob-a046e371-0e35-75a7-a700-cee661bce02d?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
x-ms-if-tags: "coolTag" = 'true'
x-ms-range: bytes=0-4095
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
x-ms-request-id: 71eee619-f355-4c37-986c-18aaec0934e9
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:21 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-c6aa1054-31ef-102d-6460-e4b202674568?restype=container

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
x-ms-request-id: 2edf223c-e590-4a88-943e-8f919a62894e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

