## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-46c5dd0b-724e-7284-f894-384751451ea8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ChangeLeaseAsync
now: 2026-11-12T00:43:23.5363193+00:00

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
etag: "0x23DE8E956C6AFE0"
last-modified: Thu, 12 Nov 2026 00:43:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e99d7603-2365-4317-ae66-7bb302fd9bed
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-46c5dd0b-724e-7284-f894-384751451ea8?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: b03a233e-e841-e888-64a4-a3e4dbf12a03
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23DE8E956C6AFE0"
last-modified: Thu, 12 Nov 2026 00:43:23 GMT
x-ms-lease-id: b03a233e-e841-e888-64a4-a3e4dbf12a03
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 104b196a-b58c-46cb-80f4-be843b878522
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-46c5dd0b-724e-7284-f894-384751451ea8?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: change
x-ms-lease-id: b03a233e-e841-e888-64a4-a3e4dbf12a03
x-ms-proposed-lease-id: bedb4ba6-be30-230b-db86-5c79d8f37ba8
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23DE8E956C6AFE0"
last-modified: Thu, 12 Nov 2026 00:43:23 GMT
x-ms-lease-id: bedb4ba6-be30-230b-db86-5c79d8f37ba8
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6d79e93d-bd80-492d-9b16-b66fbfa9b20f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-46c5dd0b-724e-7284-f894-384751451ea8?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: release
x-ms-lease-id: bedb4ba6-be30-230b-db86-5c79d8f37ba8
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23DE8E956C6AFE0"
last-modified: Thu, 12 Nov 2026 00:43:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0f7f4fb0-2005-4952-b5ea-eada00c7cd93
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-46c5dd0b-724e-7284-f894-384751451ea8?restype=container

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
x-ms-request-id: a4cde9e8-01b9-494a-868e-f87b9869fc39
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

