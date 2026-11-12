## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7c766861-d374-046e-d253-5696ab163b5b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).RenewLeaseAsync_AccessConditions
now: 2026-11-12T00:45:07.8174357+00:00

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
etag: "0x21574026C816760"
last-modified: Thu, 12 Nov 2026 00:45:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9aa896bd-4751-408e-887b-5f1b61788e3e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7c766861-d374-046e-d253-5696ab163b5b?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 1215eb09-70c3-0ca6-f758-11f39c270306
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21574026C816760"
last-modified: Thu, 12 Nov 2026 00:45:07 GMT
x-ms-lease-id: 1215eb09-70c3-0ca6-f758-11f39c270306
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e483d8a7-026d-42a8-9394-5a3289dbb696
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-7c766861-d374-046e-d253-5696ab163b5b?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: renew
x-ms-lease-id: 1215eb09-70c3-0ca6-f758-11f39c270306
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21574026C816760"
last-modified: Thu, 12 Nov 2026 00:45:07 GMT
x-ms-lease-id: 1215eb09-70c3-0ca6-f758-11f39c270306
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c30504e4-33df-4248-8566-99e63fd1befd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-7c766861-d374-046e-d253-5696ab163b5b?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: 1215eb09-70c3-0ca6-f758-11f39c270306
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
x-ms-request-id: 866a1518-abc9-4e3d-8507-ea9c502d5e0d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-ea91c7dd-fe75-5964-8ada-365e6642ecb2?restype=container

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
etag: "0x2564691543BAA80"
last-modified: Thu, 12 Nov 2026 00:45:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a877a876-a8f9-42c0-b2f8-79b8d94508e9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-ea91c7dd-fe75-5964-8ada-365e6642ecb2?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 46e806cf-1f41-f058-c169-841bc27b68aa
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2564691543BAA80"
last-modified: Thu, 12 Nov 2026 00:45:07 GMT
x-ms-lease-id: 46e806cf-1f41-f058-c169-841bc27b68aa
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8fc8b21d-bc87-4ef8-b10a-65404c7e9491
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-ea91c7dd-fe75-5964-8ada-365e6642ecb2?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:45:07 GMT
x-ms-lease-action: renew
x-ms-lease-id: 46e806cf-1f41-f058-c169-841bc27b68aa
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2564691543BAA80"
last-modified: Thu, 12 Nov 2026 00:45:07 GMT
x-ms-lease-id: 46e806cf-1f41-f058-c169-841bc27b68aa
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f2ef2fdd-19c5-4c3d-ad15-e59c08c8d7ee
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-ea91c7dd-fe75-5964-8ada-365e6642ecb2?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-id: 46e806cf-1f41-f058-c169-841bc27b68aa
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
x-ms-request-id: 8163afa9-7549-486c-833a-e8878e9d9985
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-e3b9504f-5085-0be5-86bb-87e93a48a5b5?restype=container

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
etag: "0x20D8904CF0C8EE0"
last-modified: Thu, 12 Nov 2026 00:45:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a7fe8569-bc49-4cf4-9dde-80678260223c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-e3b9504f-5085-0be5-86bb-87e93a48a5b5?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 96235e6c-bd3f-bdc4-6ea1-290b7948970f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20D8904CF0C8EE0"
last-modified: Thu, 12 Nov 2026 00:45:07 GMT
x-ms-lease-id: 96235e6c-bd3f-bdc4-6ea1-290b7948970f
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2be6a0d3-e58c-4a4c-916c-31e8d1928745
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-e3b9504f-5085-0be5-86bb-87e93a48a5b5?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:45:07 GMT
x-ms-lease-action: renew
x-ms-lease-id: 96235e6c-bd3f-bdc4-6ea1-290b7948970f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20D8904CF0C8EE0"
last-modified: Thu, 12 Nov 2026 00:45:07 GMT
x-ms-lease-id: 96235e6c-bd3f-bdc4-6ea1-290b7948970f
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b84ff30a-8df2-4764-b782-c9084e655f88
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-e3b9504f-5085-0be5-86bb-87e93a48a5b5?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
x-ms-lease-id: 96235e6c-bd3f-bdc4-6ea1-290b7948970f
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
x-ms-request-id: 4f892f99-c536-4b28-902e-5c4b19ec1e59
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

