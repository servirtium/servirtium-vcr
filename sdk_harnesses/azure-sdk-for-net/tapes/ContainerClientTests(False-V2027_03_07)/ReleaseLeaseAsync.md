## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7c34452a-6806-206b-66ab-bafd587e9ed1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ReleaseLeaseAsync
now: 2026-11-12T00:44:02.5068270+00:00

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
etag: "0x211BAE5032C8B80"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 83880fb8-7398-4c22-882a-7ff27b2dad36
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7c34452a-6806-206b-66ab-bafd587e9ed1?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: a4cb7aac-342a-8292-ce73-4e77f36230eb
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x211BAE5032C8B80"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-lease-id: a4cb7aac-342a-8292-ce73-4e77f36230eb
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f7ce5423-f218-4881-a762-f2fe7f0c615c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-7c34452a-6806-206b-66ab-bafd587e9ed1?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: release
x-ms-lease-id: a4cb7aac-342a-8292-ce73-4e77f36230eb
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x211BAE5032C8B80"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f9585289-8607-41fd-95d5-4bba6cab9798
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-7c34452a-6806-206b-66ab-bafd587e9ed1?restype=container

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
etag: "0x211BAE5032C8B80"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 10572d8d-129c-445d-9424-77ea2fb049c8
x-ms-version: 2026-06-06
x-ms-has-immutability-policy: false
x-ms-has-legal-hold: false
Date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-7c34452a-6806-206b-66ab-bafd587e9ed1?restype=container

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
x-ms-request-id: ba562e8a-bfe6-4fd6-99d3-d1bf18155168
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

