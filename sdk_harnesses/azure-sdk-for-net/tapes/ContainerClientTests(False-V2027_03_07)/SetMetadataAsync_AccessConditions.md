## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-aa98cd4a-0bf3-ae3e-c6bc-c7f5fef8991c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).SetMetadataAsync_AccessConditions
now: 2026-11-12T00:44:06.7022719+00:00

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
etag: "0x254771056188DC0"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 93860bfb-f373-4e5c-bb6f-e8e3636dcc0d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-aa98cd4a-0bf3-ae3e-c6bc-c7f5fef8991c?restype=container&comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x213BB5ACC8E2020"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 825d33fc-b812-4795-9649-5cbfce216632
date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-aa98cd4a-0bf3-ae3e-c6bc-c7f5fef8991c?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 500d4f0c-e16e-4ca6-aae8-179187325806
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-7892ed9c-0356-00ba-dbe9-cd0b7b8db639?restype=container

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
etag: "0x21D4340346A2520"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 220bd2bd-7025-4d84-9ec5-b4d60761a76d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-7892ed9c-0356-00ba-dbe9-cd0b7b8db639?restype=container&comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
If-Modified-Since: Wed, 11 Nov 2026 00:44:06 GMT
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21AACA4C068F1A0"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ee39f502-319d-4025-a03d-41c5dbe57134
date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-7892ed9c-0356-00ba-dbe9-cd0b7b8db639?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: 4815b6c7-a191-45bf-ade2-e13cdae678b8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-2c10d17f-5727-6671-50f6-0335b834082f?restype=container

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
etag: "0x2517CE6FC573C80"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5c60af5b-9e17-40ad-b88a-c47af21ef839
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-2c10d17f-5727-6671-50f6-0335b834082f?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: de00fae7-8944-47da-1398-ce0a3e333339
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2517CE6FC573C80"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-lease-id: de00fae7-8944-47da-1398-ce0a3e333339
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 14822e99-a555-4fd3-ab3e-2b31c8922883
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-2c10d17f-5727-6671-50f6-0335b834082f?restype=container&comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-lease-id: de00fae7-8944-47da-1398-ce0a3e333339
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CDA9A150C29B00"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c87035d3-c1ee-4408-8e6a-ae09156f4df5
date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 9: DELETE /devstoreaccount1/test-container-2c10d17f-5727-6671-50f6-0335b834082f?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-lease-id: de00fae7-8944-47da-1398-ce0a3e333339
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
x-ms-request-id: 7ec2829c-3f01-43b5-aa71-6b1f34ec6376
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

