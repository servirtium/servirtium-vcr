## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0cafe455-2936-0c1e-99dd-eb607df4d635?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).SetMetadataAsync
now: 2026-11-12T00:44:06.4769930+00:00

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
etag: "0x1C5C1E750DB94C0"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9fe1f777-71ce-4c56-b946-52c2a41edbdc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0cafe455-2936-0c1e-99dd-eb607df4d635?restype=container&comp=metadata

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
etag: "0x1EFD559EF5584E0"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72a58e8f-2678-42cd-97f5-44f0e92025d3
date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-0cafe455-2936-0c1e-99dd-eb607df4d635?restype=container

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
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-Capital: letter
x-ms-meta-UPPER: case
etag: "0x1EFD559EF5584E0"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 11106747-016a-43f6-99ba-f7a4fde96b97
x-ms-version: 2026-06-06
x-ms-has-immutability-policy: false
x-ms-has-legal-hold: false
Date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-0cafe455-2936-0c1e-99dd-eb607df4d635?restype=container

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
x-ms-request-id: 99e023dd-b5d8-4d3f-804b-ea044b900f0f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

