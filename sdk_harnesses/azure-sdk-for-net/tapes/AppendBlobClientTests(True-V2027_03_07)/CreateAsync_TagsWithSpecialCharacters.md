## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-27dc2f7b-5914-54ba-2ce2-69a298e9e008?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).CreateAsync_TagsWithSpecialCharacters
now: 2026-11-12T00:50:51.2316035+00:00

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
etag: "0x1D62100CC0BAE80"
last-modified: Thu, 12 Nov 2026 00:50:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1c88110f-c537-48a3-aa95-46b0d7f69e4f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-27dc2f7b-5914-54ba-2ce2-69a298e9e008/test-blob-a92e4cff-dead-be72-8ce9-5359b3a82293

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-tags: +%2B-.%3A=_+%3D&%2B-.%3A%3D+_=%2B+%2F%2F+_
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C08E2FD5702D60"
last-modified: Thu, 12 Nov 2026 00:50:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a919b821-a83f-4149-814e-95daa21c6a24
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-27dc2f7b-5914-54ba-2ce2-69a298e9e008/test-blob-a92e4cff-dead-be72-8ce9-5359b3a82293?comp=tags

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
x-ms-request-id: 1ff2a9e0-4a7f-4119-902a-bca4c53b2e4a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:51 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key> +-.:</Key><Value>_ =</Value></Tag><Tag><Key>+-.:= _</Key><Value>+ // _</Value></Tag></TagSet></Tags>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-27dc2f7b-5914-54ba-2ce2-69a298e9e008?restype=container

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
x-ms-request-id: 9c4d61e9-4546-4273-898a-cc4e0f4c3e13
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

