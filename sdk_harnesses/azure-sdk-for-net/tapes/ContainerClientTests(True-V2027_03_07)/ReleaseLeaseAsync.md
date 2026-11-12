## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-dc22281b-3a58-b514-e0eb-084852cdf217?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ReleaseLeaseAsync
now: 2026-11-12T00:45:06.6636998+00:00

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
etag: "0x26BF86439DC2A40"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4c7df08-d264-4cbc-ad00-2f46681bbc63
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-dc22281b-3a58-b514-e0eb-084852cdf217?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 1692ff0a-8599-e0a1-f5f5-aed6f2c23579
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26BF86439DC2A40"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-lease-id: 1692ff0a-8599-e0a1-f5f5-aed6f2c23579
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 364758e0-e24c-4781-81fc-23381ecd687b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-dc22281b-3a58-b514-e0eb-084852cdf217?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: release
x-ms-lease-id: 1692ff0a-8599-e0a1-f5f5-aed6f2c23579
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26BF86439DC2A40"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e7193b01-7e6c-471b-aad3-f4b71398b97f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-dc22281b-3a58-b514-e0eb-084852cdf217?restype=container

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
etag: "0x26BF86439DC2A40"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e7c2b844-db9f-40aa-93eb-02da1bf65b18
x-ms-version: 2026-06-06
x-ms-has-immutability-policy: false
x-ms-has-legal-hold: false
Date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-dc22281b-3a58-b514-e0eb-084852cdf217?restype=container

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
x-ms-request-id: 8d71f0f9-cfd3-412d-92fe-eb3748b930f9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

