## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f2213137-25d9-00b0-1a49-2af5c5859f01?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).DeleteAsync_AccessConditions
now: 2026-11-12T00:44:40.6564547+00:00

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
etag: "0x236AC8E1EC1A800"
last-modified: Thu, 12 Nov 2026 00:44:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0e00ac03-ecaf-41aa-a245-c2a7c88ee43d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: DELETE /devstoreaccount1/test-container-f2213137-25d9-00b0-1a49-2af5c5859f01?restype=container

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
x-ms-request-id: 44fa5634-05a0-4ec3-89de-a2b9107b3a37
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-fccfdc8c-4349-90c5-6d88-507a5e995244?restype=container

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
etag: "0x207E98F42B72800"
last-modified: Thu, 12 Nov 2026 00:44:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4362e8a6-9c36-4ea9-9959-5e8209cda2ae
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-fccfdc8c-4349-90c5-6d88-507a5e995244?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-Modified-Since: Wed, 11 Nov 2026 00:44:40 GMT
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
x-ms-request-id: 5990b2ae-4627-441b-a633-ea8f9fec2cfe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-b2c3d180-a866-c111-b699-2ce2c619fedb?restype=container

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
etag: "0x1C875E3C4A10E40"
last-modified: Thu, 12 Nov 2026 00:44:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 495e49ad-4bad-470c-b9de-106d9977202f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-b2c3d180-a866-c111-b699-2ce2c619fedb?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
If-Unmodified-Since: Fri, 13 Nov 2026 00:44:40 GMT
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
x-ms-request-id: a677bfa2-fbda-4bca-b300-bf372a913eca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-0b56c6cf-6cc7-f454-6c90-8551d536a180?restype=container

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
etag: "0x2666AE26DF4C1E0"
last-modified: Thu, 12 Nov 2026 00:44:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0d53756f-4aa5-4a8d-9628-c57fa85002a9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-0b56c6cf-6cc7-f454-6c90-8551d536a180?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: f474e5f7-ecc1-e39a-ca0d-45b017e2ca54
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2666AE26DF4C1E0"
last-modified: Thu, 12 Nov 2026 00:44:40 GMT
x-ms-lease-id: f474e5f7-ecc1-e39a-ca0d-45b017e2ca54
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e5380337-35b5-4162-be3f-7f3efd76761b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: DELETE /devstoreaccount1/test-container-0b56c6cf-6cc7-f454-6c90-8551d536a180?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-lease-id: f474e5f7-ecc1-e39a-ca0d-45b017e2ca54
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
x-ms-request-id: 143b01db-2351-4854-84e6-518f7e1e2ce3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

