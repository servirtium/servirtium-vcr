## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-34ef4461-5585-77a1-bf99-1cab36a0ad47?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).UploadBlobAsync_BinaryData
now: 2026-11-12T00:44:07.6010100+00:00

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
etag: "0x21E7C9A21858040"
last-modified: Thu, 12 Nov 2026 00:44:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 513c8a22-72dc-4033-9c4c-8265231c1e20
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-34ef4461-5585-77a1-bf99-1cab36a0ad47/test-blob-2f5607db-e80f-a5c6-5626-b0cce910261a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
GckXYj++v57t8gaA7phMvxeQDb+Li/Z4fUndXqXVja5yAZJtiUsIHUe4QRziRra92vG1WANmj43S
nuT14GD4GGVXDe0F3zbLiPB400naljeTH4S0HzSrC3EEmupnEjzmvym3ig==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2189D7ED96476E0"
last-modified: Thu, 12 Nov 2026 00:44:07 GMT
content-md5: 5cEUxaOdaGzBSsZ9rIbLvw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5b6c75fd-95ff-447b-bf0d-d562a438b100
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-34ef4461-5585-77a1-bf99-1cab36a0ad47/test-blob-2f5607db-e80f-a5c6-5626-b0cce910261a

### Request headers recorded for playback:

```
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
last-modified: Thu, 12 Nov 2026 00:44:07 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:44:07 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 100
content-type: application/octet-stream
etag: "0x2189D7ED96476E0"
content-md5: 5cEUxaOdaGzBSsZ9rIbLvw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 527774f6-46c1-4695-ab26-97aa96a7edd8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:07 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:44:07 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-34ef4461-5585-77a1-bf99-1cab36a0ad47?restype=container

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
x-ms-request-id: 455f653f-9712-46db-a62e-b4e44f313413
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

