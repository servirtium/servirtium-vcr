## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-30ec04cf-04cb-ca8e-87c0-152fc2319e13?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ChangeLeaseAsync_AccessConditions
now: 2026-11-12T00:43:23.7725557+00:00

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
etag: "0x1E04DB47753FA50"
last-modified: Thu, 12 Nov 2026 00:43:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eae42cc3-7597-4713-8a6c-a2b04e9cb0f3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-30ec04cf-04cb-ca8e-87c0-152fc2319e13?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 1a88ff10-a2ca-f8f6-1cff-b645c4e68950
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E04DB47753FA50"
last-modified: Thu, 12 Nov 2026 00:43:23 GMT
x-ms-lease-id: 1a88ff10-a2ca-f8f6-1cff-b645c4e68950
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a89e9925-aa2d-41e9-8e30-1c7542b19918
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-30ec04cf-04cb-ca8e-87c0-152fc2319e13?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: change
x-ms-lease-id: 1a88ff10-a2ca-f8f6-1cff-b645c4e68950
x-ms-proposed-lease-id: 76a90b76-7b67-e442-0b91-7db5ea73d422
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E04DB47753FA50"
last-modified: Thu, 12 Nov 2026 00:43:23 GMT
x-ms-lease-id: 76a90b76-7b67-e442-0b91-7db5ea73d422
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91ef1dda-bdec-443d-8469-2bf48610e501
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-30ec04cf-04cb-ca8e-87c0-152fc2319e13?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: 76a90b76-7b67-e442-0b91-7db5ea73d422
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
x-ms-request-id: f014aa71-8ac2-442f-887e-9d8c5c409ffc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-ff647a39-d354-2d98-0df3-14cb4e4806a1?restype=container

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
etag: "0x26C41D2F7F173C0"
last-modified: Thu, 12 Nov 2026 00:43:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0d5393f1-e298-4ec0-bd17-e37525be0f15
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-ff647a39-d354-2d98-0df3-14cb4e4806a1?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: b6b9c536-2787-95ac-bca3-0f3824400da9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26C41D2F7F173C0"
last-modified: Thu, 12 Nov 2026 00:43:23 GMT
x-ms-lease-id: b6b9c536-2787-95ac-bca3-0f3824400da9
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 60352b1f-b5c8-4b8e-aa80-f8927c0b65c1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-ff647a39-d354-2d98-0df3-14cb4e4806a1?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:43:23 GMT
x-ms-lease-action: change
x-ms-lease-id: b6b9c536-2787-95ac-bca3-0f3824400da9
x-ms-proposed-lease-id: 4a0c932b-8a82-a2fc-737c-6973677696c2
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26C41D2F7F173C0"
last-modified: Thu, 12 Nov 2026 00:43:23 GMT
x-ms-lease-id: 4a0c932b-8a82-a2fc-737c-6973677696c2
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0dd604d9-986c-4032-ab6f-5d89d15bff4c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-ff647a39-d354-2d98-0df3-14cb4e4806a1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-id: 4a0c932b-8a82-a2fc-737c-6973677696c2
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
x-ms-request-id: d168bca5-bb26-467f-a2fc-50101e265086
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-257fdc8b-1dba-119b-cece-43b0c45f09cc?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2784CBE30733B20"
last-modified: Thu, 12 Nov 2026 00:43:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 80995045-145c-40a7-b6c0-57c8d4ae224a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-257fdc8b-1dba-119b-cece-43b0c45f09cc?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: baa06be5-bc3c-ac1e-c916-430abe382e46
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2784CBE30733B20"
last-modified: Thu, 12 Nov 2026 00:43:23 GMT
x-ms-lease-id: baa06be5-bc3c-ac1e-c916-430abe382e46
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7d8e2bbe-0e6d-47bb-804d-db62229fefb4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-257fdc8b-1dba-119b-cece-43b0c45f09cc?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:43:23 GMT
x-ms-lease-action: change
x-ms-lease-id: baa06be5-bc3c-ac1e-c916-430abe382e46
x-ms-proposed-lease-id: 48ad4c0d-e8c1-0dee-f8fa-7bb3474bde14
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2784CBE30733B20"
last-modified: Thu, 12 Nov 2026 00:43:23 GMT
x-ms-lease-id: 48ad4c0d-e8c1-0dee-f8fa-7bb3474bde14
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 20703b68-7723-449a-b1f0-53b4f09343bd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-257fdc8b-1dba-119b-cece-43b0c45f09cc?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
x-ms-lease-id: 48ad4c0d-e8c1-0dee-f8fa-7bb3474bde14
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
x-ms-request-id: ea153ae5-cbcc-4b6a-9193-cdae7c261d9f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

