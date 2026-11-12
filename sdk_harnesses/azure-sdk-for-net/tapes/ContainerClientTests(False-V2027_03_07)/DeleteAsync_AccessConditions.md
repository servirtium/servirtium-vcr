## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-30b6c462-d96f-4e41-1cc6-f6bafda0ca0d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).DeleteAsync_AccessConditions
now: 2026-11-12T00:43:35.2691557+00:00

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
etag: "0x1EF5FD7A77A5700"
last-modified: Thu, 12 Nov 2026 00:43:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e7fdd18e-8556-4f79-a510-820945bd9c7e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: DELETE /devstoreaccount1/test-container-30b6c462-d96f-4e41-1cc6-f6bafda0ca0d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
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
x-ms-request-id: e3edffce-a77a-43a0-88af-0a66b63c32f9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-aee06df2-94f8-1fae-01e6-b6d6bc29f9fc?restype=container

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
etag: "0x23FFB531B1371E0"
last-modified: Thu, 12 Nov 2026 00:43:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f6f33594-30da-4c0a-a78e-97e9135c06ff
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-aee06df2-94f8-1fae-01e6-b6d6bc29f9fc?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-Modified-Since: Wed, 11 Nov 2026 00:43:35 GMT
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
x-ms-request-id: 77f34916-13fc-4364-af81-4aeb7af58e7b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-b8a1635e-e713-0fc1-9994-20d8f76be926?restype=container

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
etag: "0x23DD06E8FBE5980"
last-modified: Thu, 12 Nov 2026 00:43:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 428c89d5-99f4-46e3-bf23-1ed9ee7e5dc1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-b8a1635e-e713-0fc1-9994-20d8f76be926?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
If-Unmodified-Since: Fri, 13 Nov 2026 00:43:35 GMT
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
x-ms-request-id: 9969d9c5-aac2-4669-b25a-f77de7caf0de
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-5f30d75b-860b-cdbd-1696-2e88226b91f3?restype=container

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
etag: "0x1F25BA2CDF90770"
last-modified: Thu, 12 Nov 2026 00:43:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a3e5da19-85a3-4f91-b3ec-43cd18c32018
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-5f30d75b-860b-cdbd-1696-2e88226b91f3?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 995bfacc-11fe-0bf9-abd0-146374d52895
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F25BA2CDF90770"
last-modified: Thu, 12 Nov 2026 00:43:35 GMT
x-ms-lease-id: 995bfacc-11fe-0bf9-abd0-146374d52895
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dcd42502-3346-4bbd-a2f5-30158720fe5d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: DELETE /devstoreaccount1/test-container-5f30d75b-860b-cdbd-1696-2e88226b91f3?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-lease-id: 995bfacc-11fe-0bf9-abd0-146374d52895
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
x-ms-request-id: d673cec0-88e0-4092-bb06-08b0e6a4dca3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

