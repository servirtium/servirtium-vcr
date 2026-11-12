## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f398bdea-e9ef-70ca-4f3c-0e3202f39fab?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetMetadataAsync_EncryptionScope
now: 2026-11-12T00:47:09.5366934+00:00

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
etag: "0x254EAF43C7DBF40"
last-modified: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 24b6985b-acc2-4579-ba7f-b3ddfaac6d80
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f398bdea-e9ef-70ca-4f3c-0e3202f39fab/test-blob-a805b2db-1fd1-4db0-0158-f7b64af0f6f7

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25D278BF85F7200"
last-modified: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 528b713a-a6a7-4b05-b850-c18d11590b3a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f398bdea-e9ef-70ca-4f3c-0e3202f39fab/test-blob-a805b2db-1fd1-4db0-0158-f7b64af0f6f7?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20E1703E3551740"
last-modified: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 49a79d41-6eb6-4944-aec8-9104e106fb04
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-f398bdea-e9ef-70ca-4f3c-0e3202f39fab?restype=container

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
x-ms-request-id: e2c60efd-09ef-421e-a56b-3b372f87ede7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

