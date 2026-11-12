## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-058dbbf7-b1ac-e24a-0cd8-30bd7df6efa3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).UpdateSequenceNumberAsync_IfTags_Failed
now: 2026-11-12T00:51:31.0124268+00:00

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
etag: "0x20C26E530EFDB80"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5c9cf874-9046-436d-b98e-5c1b614a8fbd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-058dbbf7-b1ac-e24a-0cd8-30bd7df6efa3/test-blob-0966da05-e349-c850-c6c7-a6f06d2acb20

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
etag: "0x21A45DBFBFA8FA0"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eaefebf1-ece8-4b79-a92f-a14b800bb128
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-058dbbf7-b1ac-e24a-0cd8-30bd7df6efa3/test-blob-0966da05-e349-c850-c6c7-a6f06d2acb20?comp=properties

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
x-ms-request-id: ad1fa982-5cef-49c5-929d-5e1687105a88
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:31 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-058dbbf7-b1ac-e24a-0cd8-30bd7df6efa3?restype=container

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
x-ms-request-id: da6d6242-4c1d-470b-aa04-cf85ad01aec3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

