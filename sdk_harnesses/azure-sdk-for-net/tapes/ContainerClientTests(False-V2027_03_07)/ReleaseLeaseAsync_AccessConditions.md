## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-15c65368-dca5-1ab7-37c3-286f48453901?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ReleaseLeaseAsync_AccessConditions
now: 2026-11-12T00:44:02.7432644+00:00

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
etag: "0x1EB8FE2CA295C80"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ee6492d3-f3d2-418f-ace8-dd085e9da5c0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-15c65368-dca5-1ab7-37c3-286f48453901?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 049865c9-2556-5165-010c-0064e60a781d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EB8FE2CA295C80"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-lease-id: 049865c9-2556-5165-010c-0064e60a781d
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 89a4a8ec-b0ca-4aad-bc34-d131d10ffaaa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-15c65368-dca5-1ab7-37c3-286f48453901?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: release
x-ms-lease-id: 049865c9-2556-5165-010c-0064e60a781d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EB8FE2CA295C80"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bf38b7fa-04c5-428d-950e-b81a22eb4f9a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-15c65368-dca5-1ab7-37c3-286f48453901?restype=container

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
x-ms-request-id: 54899607-1f8f-4211-8c9c-386cf0c7308a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-de61a7c0-5080-cca6-9ef7-b6abb5b93a87?restype=container

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
etag: "0x1C24D56C8660A30"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: baed00f4-e743-4604-bdb8-3f0e62c444b4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-de61a7c0-5080-cca6-9ef7-b6abb5b93a87?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 8bae2f4b-ff0c-4313-ed74-1398db53342c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C24D56C8660A30"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-lease-id: 8bae2f4b-ff0c-4313-ed74-1398db53342c
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8dbc0f43-1d6b-4a59-b9a7-b581d316690d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-de61a7c0-5080-cca6-9ef7-b6abb5b93a87?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:44:02 GMT
x-ms-lease-action: release
x-ms-lease-id: 8bae2f4b-ff0c-4313-ed74-1398db53342c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C24D56C8660A30"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9c539ffe-877a-4c3e-881e-5d8f1e622f28
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-de61a7c0-5080-cca6-9ef7-b6abb5b93a87?restype=container

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
x-ms-request-id: 6bb87ac8-ea28-432b-bd7c-6fd3db31efc1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-a0af0a4a-5ae3-7880-becb-665f6fb99c47?restype=container

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
etag: "0x21EDE8621CF44E0"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8974fe61-287b-48bd-9785-c3934cfc278e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-a0af0a4a-5ae3-7880-becb-665f6fb99c47?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: b61879d2-ed5c-c110-931e-f00c3d0df04a
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21EDE8621CF44E0"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-lease-id: b61879d2-ed5c-c110-931e-f00c3d0df04a
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c0b1608e-c6d2-42a4-b423-38ef3a0a8050
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-a0af0a4a-5ae3-7880-becb-665f6fb99c47?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:44:02 GMT
x-ms-lease-action: release
x-ms-lease-id: b61879d2-ed5c-c110-931e-f00c3d0df04a
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21EDE8621CF44E0"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5843f17d-137b-497e-9679-d8bbcc4ef1e4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-a0af0a4a-5ae3-7880-becb-665f6fb99c47?restype=container

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
x-ms-request-id: 17909c99-3dde-4267-ac7c-b8c952f8c343
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

