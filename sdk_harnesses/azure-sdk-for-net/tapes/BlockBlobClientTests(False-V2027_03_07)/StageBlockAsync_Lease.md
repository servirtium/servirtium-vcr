## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-feeeaa57-b02f-c92e-3cfd-09aa3940b357?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).StageBlockAsync_Lease
now: 2026-11-12T00:49:43.4856102+00:00

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
etag: "0x227424FE84C2820"
last-modified: Thu, 12 Nov 2026 00:49:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bb308cb9-8e96-46b0-a50f-8ee7d53ba3ac
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-feeeaa57-b02f-c92e-3cfd-09aa3940b357/test-blob-e58a2049-ed43-8b56-53e2-08b4fd24d29a

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
etag: "0x21040499E289500"
last-modified: Thu, 12 Nov 2026 00:49:43 GMT
content-md5: xCpdCGk5oIeWcF0xr7TfhQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1fd80e51-86b4-4634-8535-56dbcc63b608
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-feeeaa57-b02f-c92e-3cfd-09aa3940b357/test-blob-e58a2049-ed43-8b56-53e2-08b4fd24d29a?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: eb4ae490-b815-0cc1-199b-7c07c1fd099d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21040499E289500"
last-modified: Thu, 12 Nov 2026 00:49:43 GMT
x-ms-lease-id: eb4ae490-b815-0cc1-199b-7c07c1fd099d
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 82e4fd47-1fc3-46e3-95c1-77d3f834e305
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-feeeaa57-b02f-c92e-3cfd-09aa3940b357/test-blob-e58a2049-ed43-8b56-53e2-08b4fd24d29a?comp=block&blockid=dGVzdC1ibG9jay1hYWQ2OWIyYS0xZDc5LTExYTItNGU3Ni03MGViOGYwZDE1YmU%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-lease-id: eb4ae490-b815-0cc1-199b-7c07c1fd099d
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
x-ms-request-id: f3e57914-ca25-4f30-82d9-c093314698cf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:43 GMT
x-ms-content-crc64: QEe7GU6F3AQ=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-feeeaa57-b02f-c92e-3cfd-09aa3940b357?restype=container

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
x-ms-request-id: 2b461bc8-e4a3-434c-b347-9cff6093c3e6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

