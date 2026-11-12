## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0de50428-984d-cfe7-818f-a0886670b80b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).GetBlockListAsync_IfTagsFailed
now: 2026-11-12T00:50:04.2226552+00:00

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
etag: "0x25A8587BB5F4100"
last-modified: Thu, 12 Nov 2026 00:50:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 46b4444d-be45-40d5-86bf-7beaaa2e349f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0de50428-984d-cfe7-818f-a0886670b80b/test-blob-66c12c15-e21d-16cd-4e47-e4d0473464e8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
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
etag: "0x23D2EE4582D3520"
last-modified: Thu, 12 Nov 2026 00:50:04 GMT
content-md5: H+5SFqLkmms5VEDxRFIzog==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a99c5956-5fa6-4a48-86f1-7c69dc92bee2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-0de50428-984d-cfe7-818f-a0886670b80b/test-blob-66c12c15-e21d-16cd-4e47-e4d0473464e8?comp=blocklist&blocklisttype=all

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-request-id: ea41d44c-8c21-4b8d-93a3-9974d1969721
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:04 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-0de50428-984d-cfe7-818f-a0886670b80b?restype=container

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
x-ms-request-id: bd55f613-317c-4a3b-be76-1a9e7137315f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

