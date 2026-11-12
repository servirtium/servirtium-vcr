## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e134b287-36fa-634c-eee3-1ee69ba2635b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).StageBlockAsync_Lease
now: 2026-11-12T00:50:05.7608147+00:00

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
etag: "0x25F5759D869DD20"
last-modified: Thu, 12 Nov 2026 00:50:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d2c03b6-30ec-4a89-9b3d-f1748777ed7d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e134b287-36fa-634c-eee3-1ee69ba2635b/test-blob-7733978f-bec3-6d94-58a1-06e05120d5ad

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
etag: "0x1EC5BEA84B91910"
last-modified: Thu, 12 Nov 2026 00:50:05 GMT
content-md5: +Mysrgu/9StA0a50YRweQA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0e6aa9f6-1673-4acc-9b9f-74192f2d5afb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-e134b287-36fa-634c-eee3-1ee69ba2635b/test-blob-7733978f-bec3-6d94-58a1-06e05120d5ad?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 3966fb83-3941-db56-3587-aaf465ff4c2b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EC5BEA84B91910"
last-modified: Thu, 12 Nov 2026 00:50:05 GMT
x-ms-lease-id: 3966fb83-3941-db56-3587-aaf465ff4c2b
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c7d7f236-b45e-4f7c-bfa2-19b1323581ef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-e134b287-36fa-634c-eee3-1ee69ba2635b/test-blob-7733978f-bec3-6d94-58a1-06e05120d5ad?comp=block&blockid=dGVzdC1ibG9jay1iMjM5YTVjNi1jZGFhLWU5YTMtMjE1OS00Mjk2MTI5MTdmNGM%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-lease-id: 3966fb83-3941-db56-3587-aaf465ff4c2b
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8f691138-9eb2-451f-a404-feea6fbedb54
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:05 GMT
x-ms-content-crc64: fC6BFHxNZ54=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-e134b287-36fa-634c-eee3-1ee69ba2635b?restype=container

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
x-ms-request-id: 9aeeb307-e3ab-4978-9fa2-0414620c4dfc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

