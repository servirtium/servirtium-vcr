## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ccdbb889-5f6d-536b-e71f-06f1c2dc7a12?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).DeleteBlobIfExistsAsync
now: 2026-11-12T00:43:36.2810348+00:00

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
etag: "0x275BB086EA469A0"
last-modified: Thu, 12 Nov 2026 00:43:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 454c4bed-1509-4380-abf5-7f2d476fc896
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ccdbb889-5f6d-536b-e71f-06f1c2dc7a12/test-blob-005a0aed-35c8-da3c-ec87-64639a5da21a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
LJWAylvg6BhHnUo2JexaAlsYE+3PFUpUfADf5foIuIl87MUtXK+2DSJCuSrrBrX/LWIIgkm1SxZK
K05bAAIdP+TAuTgnLaarYQXLjFwfaXZK37iYADZAx6Cu4jBhWw0fJHlGKg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26D34FFB0CF4940"
last-modified: Thu, 12 Nov 2026 00:43:36 GMT
content-md5: qvOgbmqMFXAV9U58yiRBVQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 356fad38-31e9-4f05-8242-8747365778dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-ccdbb889-5f6d-536b-e71f-06f1c2dc7a12/test-blob-005a0aed-35c8-da3c-ec87-64639a5da21a

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
x-ms-request-id: 93410136-5e7f-430c-b7f6-18028500871d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:36 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-ccdbb889-5f6d-536b-e71f-06f1c2dc7a12/test-blob-005a0aed-35c8-da3c-ec87-64639a5da21a

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
x-ms-error-code: BlobNotFound
x-ms-request-id: c588a07c-9d3f-4409-ba22-a065fbd5546b
Date: Thu, 12 Nov 2026 00:43:36 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-ccdbb889-5f6d-536b-e71f-06f1c2dc7a12?restype=container

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
x-ms-request-id: e8fd42ac-b4ad-4c57-a624-9e11739d463b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

