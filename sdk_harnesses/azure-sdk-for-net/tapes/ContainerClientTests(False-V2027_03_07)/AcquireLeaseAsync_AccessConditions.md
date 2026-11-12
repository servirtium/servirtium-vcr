## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-987f7c39-aa1b-376b-927b-fb853661b6c7?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).AcquireLeaseAsync_AccessConditions
now: 2026-11-12T00:43:19.7106422+00:00

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
etag: "0x1C200A1664AC5F0"
last-modified: Thu, 12 Nov 2026 00:43:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 126e66ae-5213-4593-80a8-f571af594152
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-987f7c39-aa1b-376b-927b-fb853661b6c7?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 092291ec-5db4-238d-5df8-a01744c7756c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C200A1664AC5F0"
last-modified: Thu, 12 Nov 2026 00:43:19 GMT
x-ms-lease-id: 092291ec-5db4-238d-5df8-a01744c7756c
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a44a720b-6c4c-4880-86d3-e4358e2a318c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-987f7c39-aa1b-376b-927b-fb853661b6c7?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-id: 092291ec-5db4-238d-5df8-a01744c7756c
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
x-ms-request-id: 56c580ed-144f-410c-8ff2-f0910158cfa3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-d38a2488-13f2-4979-6546-f64694889596?restype=container

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
etag: "0x2076A4132FDAE80"
last-modified: Thu, 12 Nov 2026 00:43:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9da90143-48ab-4a16-8011-31a8eb6e95a0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-d38a2488-13f2-4979-6546-f64694889596?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
If-Modified-Since: Wed, 11 Nov 2026 00:43:19 GMT
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 40979be6-7f98-dbe8-ee5c-3a230954f3cb
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2076A4132FDAE80"
last-modified: Thu, 12 Nov 2026 00:43:19 GMT
x-ms-lease-id: 40979be6-7f98-dbe8-ee5c-3a230954f3cb
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0b90cf1f-a366-4fb4-aca9-9edc4f6d4be3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-d38a2488-13f2-4979-6546-f64694889596?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-id: 40979be6-7f98-dbe8-ee5c-3a230954f3cb
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
x-ms-request-id: cb74d798-331a-4b56-bc48-612528918104
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-11fc8f05-e3d7-d9d5-18d9-a46e67468ed5?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23F94814746D720"
last-modified: Thu, 12 Nov 2026 00:43:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e116a635-ce5a-4e80-9b91-f25b5b1d20f7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-11fc8f05-e3d7-d9d5-18d9-a46e67468ed5?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
If-Unmodified-Since: Fri, 13 Nov 2026 00:43:19 GMT
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: a8310a63-3430-08d4-3cae-e495d8563f10
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23F94814746D720"
last-modified: Thu, 12 Nov 2026 00:43:19 GMT
x-ms-lease-id: a8310a63-3430-08d4-3cae-e495d8563f10
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8058ce02-52da-4fdc-9d3a-c859563e26dc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: DELETE /devstoreaccount1/test-container-11fc8f05-e3d7-d9d5-18d9-a46e67468ed5?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-lease-id: a8310a63-3430-08d4-3cae-e495d8563f10
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
x-ms-request-id: 3a4b3c20-83dd-4c0b-a857-7d8dae45dcbf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

