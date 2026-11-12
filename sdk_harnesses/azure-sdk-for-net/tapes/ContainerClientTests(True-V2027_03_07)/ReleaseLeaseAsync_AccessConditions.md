## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-33423b80-f017-2429-91ea-e0ba28817214?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ReleaseLeaseAsync_AccessConditions
now: 2026-11-12T00:45:06.8864953+00:00

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
etag: "0x21AEF8FCD2D2520"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3d51e785-8108-44fd-9ada-545197aef68c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-33423b80-f017-2429-91ea-e0ba28817214?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: c743343a-b0ef-f15c-16b5-6cbf2bc5fd62
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21AEF8FCD2D2520"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-lease-id: c743343a-b0ef-f15c-16b5-6cbf2bc5fd62
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6b100ab5-6858-448b-9cb0-ed4466a6acc1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-33423b80-f017-2429-91ea-e0ba28817214?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: release
x-ms-lease-id: c743343a-b0ef-f15c-16b5-6cbf2bc5fd62
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21AEF8FCD2D2520"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 93bd4320-2ddb-4e5c-9f8c-2a9837955a8b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-33423b80-f017-2429-91ea-e0ba28817214?restype=container

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
x-ms-request-id: 425b3614-d883-414b-9932-8225f955f680
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-828ec49e-df83-8fb6-f9d7-ee123401f672?restype=container

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
etag: "0x2593F18DD723D20"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e4b3b5d8-3bee-4e15-afc1-37165ec94f87
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-828ec49e-df83-8fb6-f9d7-ee123401f672?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 1844a7d5-62d0-cf92-de51-1c618369f8cb
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2593F18DD723D20"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-lease-id: 1844a7d5-62d0-cf92-de51-1c618369f8cb
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1512a05c-aa78-4bae-ad38-618c3aba8eb9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-828ec49e-df83-8fb6-f9d7-ee123401f672?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:45:06 GMT
x-ms-lease-action: release
x-ms-lease-id: 1844a7d5-62d0-cf92-de51-1c618369f8cb
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2593F18DD723D20"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 97c755e4-3e79-409c-9bec-ec8a44a66544
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-828ec49e-df83-8fb6-f9d7-ee123401f672?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: da9e3949-c8bc-4f68-8a3f-a9ef3d2446d1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-641b7ded-f0f3-5b90-7eb3-ce17c24abc15?restype=container

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
etag: "0x1E7923C20438000"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 85db8a2e-f42f-4807-9b14-719196815a62
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-641b7ded-f0f3-5b90-7eb3-ce17c24abc15?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 84eafabe-e481-3b92-32be-a332c2540c8f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E7923C20438000"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-lease-id: 84eafabe-e481-3b92-32be-a332c2540c8f
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 55334e95-49e2-4ff2-a5ac-fe9c4cea2d4c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-641b7ded-f0f3-5b90-7eb3-ce17c24abc15?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:45:06 GMT
x-ms-lease-action: release
x-ms-lease-id: 84eafabe-e481-3b92-32be-a332c2540c8f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E7923C20438000"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d0b88a97-7b80-4774-90c8-a0fb4f56e9ae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-641b7ded-f0f3-5b90-7eb3-ce17c24abc15?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
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
x-ms-request-id: 3b39cca8-79cf-4420-a06a-b3a2eeb5794c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

