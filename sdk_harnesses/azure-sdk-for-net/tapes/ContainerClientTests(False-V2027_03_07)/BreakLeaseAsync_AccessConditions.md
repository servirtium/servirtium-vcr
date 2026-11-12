## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-cbfb464d-09b2-a73b-5739-d0c961bb1625?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).BreakLeaseAsync_AccessConditions
now: 2026-11-12T00:43:20.8151690+00:00

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
etag: "0x245254618874C00"
last-modified: Thu, 12 Nov 2026 00:43:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 228ea7d1-310d-4db4-86f8-0733a3af2b76
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-cbfb464d-09b2-a73b-5739-d0c961bb1625?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: ea487377-4a93-d9d9-30ef-4806300d7116
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x245254618874C00"
last-modified: Thu, 12 Nov 2026 00:43:20 GMT
x-ms-lease-id: ea487377-4a93-d9d9-30ef-4806300d7116
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 62e3458c-86aa-4598-807d-09c969e6e068
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-cbfb464d-09b2-a73b-5739-d0c961bb1625?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x245254618874C00"
last-modified: Thu, 12 Nov 2026 00:43:20 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c02e6553-3e73-41f7-8c35-521a6ba58ef9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-cbfb464d-09b2-a73b-5739-d0c961bb1625?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: ea487377-4a93-d9d9-30ef-4806300d7116
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
x-ms-request-id: 789d2619-1e36-42e0-abbd-5099af3f6290
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-dff3f39f-9426-9c85-3813-630acc7b010f?restype=container

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
etag: "0x1E1F7AAA1AF54E0"
last-modified: Thu, 12 Nov 2026 00:43:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f4b6fef-a209-4516-93f1-561efe7aa14b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-dff3f39f-9426-9c85-3813-630acc7b010f?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 297c68e7-844b-0208-6c21-9ac3c0357649
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E1F7AAA1AF54E0"
last-modified: Thu, 12 Nov 2026 00:43:20 GMT
x-ms-lease-id: 297c68e7-844b-0208-6c21-9ac3c0357649
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6fd29726-73fa-4de8-a742-d15276f6d42c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-dff3f39f-9426-9c85-3813-630acc7b010f?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:43:20 GMT
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E1F7AAA1AF54E0"
last-modified: Thu, 12 Nov 2026 00:43:20 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 582132cb-b178-4e20-8598-4fe015f224cc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-dff3f39f-9426-9c85-3813-630acc7b010f?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-id: 297c68e7-844b-0208-6c21-9ac3c0357649
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
x-ms-request-id: f5a5f07f-c73d-488b-9df1-5f7a8ea6dc37
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-6e2ab9c8-36c7-e3fe-edac-b17fe7ce0cb4?restype=container

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
etag: "0x275781E361A1500"
last-modified: Thu, 12 Nov 2026 00:43:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c4108906-914f-4d7d-a080-1e20e273f2d3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-6e2ab9c8-36c7-e3fe-edac-b17fe7ce0cb4?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: c81f38ed-4791-1bcb-eaf0-7304f9c2db03
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x275781E361A1500"
last-modified: Thu, 12 Nov 2026 00:43:20 GMT
x-ms-lease-id: c81f38ed-4791-1bcb-eaf0-7304f9c2db03
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fca6b878-87d6-4d2d-a4c9-bb094460f37f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-6e2ab9c8-36c7-e3fe-edac-b17fe7ce0cb4?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:43:20 GMT
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x275781E361A1500"
last-modified: Thu, 12 Nov 2026 00:43:20 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 575424d0-6a48-40e7-9b7a-d5b2c61fd2a3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-6e2ab9c8-36c7-e3fe-edac-b17fe7ce0cb4?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
x-ms-lease-id: c81f38ed-4791-1bcb-eaf0-7304f9c2db03
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
x-ms-request-id: 36368647-1e79-4e76-9de9-74e474332ddf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

