## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c486fda5-147a-e7fb-a88e-b72fb01f5005?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).UploadAsync_Tags
now: 2026-11-12T00:50:14.0115368+00:00

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
etag: "0x2471BF9C9A62400"
last-modified: Thu, 12 Nov 2026 00:50:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c4affa37-b560-460a-864f-ed0d5b30f3c8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c486fda5-147a-e7fb-a88e-b72fb01f5005/test-blob-d885d0ea-e946-0fa2-fd46-111144a9b64e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-tags: tagKey0=tagValue0&tagKey1=tagValue1
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D4DDDB6C343450"
last-modified: Thu, 12 Nov 2026 00:50:14 GMT
content-md5: rKrjxQ0GkgMMab4yaCi6WQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 53b05867-b9d1-4f2d-9a7f-0f138797f725
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-c486fda5-147a-e7fb-a88e-b72fb01f5005/test-blob-d885d0ea-e946-0fa2-fd46-111144a9b64e?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5c57805-514d-42d7-8c11-e7ebdd95a7bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:14 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-c486fda5-147a-e7fb-a88e-b72fb01f5005?restype=container

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
x-ms-request-id: fc41ef02-db7b-4af2-bcaf-29d6af2d8ea9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

