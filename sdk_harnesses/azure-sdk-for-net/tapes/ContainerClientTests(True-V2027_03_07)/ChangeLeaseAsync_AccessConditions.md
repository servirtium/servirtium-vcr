## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1ad205f4-389d-075a-260e-9659555c0d18?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ChangeLeaseAsync_AccessConditions
now: 2026-11-12T00:44:28.5634614+00:00

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
etag: "0x2013305EE67E9A0"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7f03dd3a-0cb8-409f-9be0-ce5bdb370db5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1ad205f4-389d-075a-260e-9659555c0d18?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: eba1e641-ef34-34d9-8dfb-b2ff6782e9fa
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2013305EE67E9A0"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-lease-id: eba1e641-ef34-34d9-8dfb-b2ff6782e9fa
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 30bc92f8-4958-4f8b-93eb-1ed8f7ac6477
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-1ad205f4-389d-075a-260e-9659555c0d18?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: change
x-ms-lease-id: eba1e641-ef34-34d9-8dfb-b2ff6782e9fa
x-ms-proposed-lease-id: 5d29de91-b4ea-534f-8ba4-74955de4a300
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2013305EE67E9A0"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-lease-id: 5d29de91-b4ea-534f-8ba4-74955de4a300
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a850bf3f-f9ed-4a55-941c-79cb4c4e94bd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-1ad205f4-389d-075a-260e-9659555c0d18?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: 5d29de91-b4ea-534f-8ba4-74955de4a300
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
x-ms-request-id: 6e14fa4b-3b7e-4a2b-92d8-397022cc7af7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-e2e86401-4a5a-05c3-2b9e-8da2865ba0a4?restype=container

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
etag: "0x250523DC38E6620"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: abbbd663-10cd-4da2-bac1-bb1ffa634a31
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-e2e86401-4a5a-05c3-2b9e-8da2865ba0a4?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 76c79b25-af32-8c2e-964e-5f8f7a43d6a9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x250523DC38E6620"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-lease-id: 76c79b25-af32-8c2e-964e-5f8f7a43d6a9
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 312aa74d-eaa8-4175-9860-a35b2c010934
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-e2e86401-4a5a-05c3-2b9e-8da2865ba0a4?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:44:28 GMT
x-ms-lease-action: change
x-ms-lease-id: 76c79b25-af32-8c2e-964e-5f8f7a43d6a9
x-ms-proposed-lease-id: 02fdb258-0699-47a0-1b24-324b27adcd30
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x250523DC38E6620"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-lease-id: 02fdb258-0699-47a0-1b24-324b27adcd30
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 77e575ed-fdc7-4f12-86a5-fcd1d5dad72d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-e2e86401-4a5a-05c3-2b9e-8da2865ba0a4?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-id: 02fdb258-0699-47a0-1b24-324b27adcd30
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
x-ms-request-id: b95f37b9-d735-4d70-a3f0-dc825656bb17
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-c170d004-2c1d-51cd-365c-4b0cea338ae7?restype=container

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
etag: "0x236FAE4593A1E20"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: affe929e-ae4a-4cb7-8263-e19a8e53695b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-c170d004-2c1d-51cd-365c-4b0cea338ae7?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: d449e4c7-9e5d-1e0b-fb7f-5b0d7de364e9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x236FAE4593A1E20"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-lease-id: d449e4c7-9e5d-1e0b-fb7f-5b0d7de364e9
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ea207fa4-e8c9-4064-8497-e84d26cfdaf7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-c170d004-2c1d-51cd-365c-4b0cea338ae7?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:44:28 GMT
x-ms-lease-action: change
x-ms-lease-id: d449e4c7-9e5d-1e0b-fb7f-5b0d7de364e9
x-ms-proposed-lease-id: a98b2f80-15d3-2b8b-e4ab-cc3dbb945de7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x236FAE4593A1E20"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-lease-id: a98b2f80-15d3-2b8b-e4ab-cc3dbb945de7
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 530f5a1c-d84d-405e-b722-6b4834239a7a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-c170d004-2c1d-51cd-365c-4b0cea338ae7?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
x-ms-lease-id: a98b2f80-15d3-2b8b-e4ab-cc3dbb945de7
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
x-ms-request-id: 49bcb2ee-b956-4c50-9816-7ea72449b6fa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

