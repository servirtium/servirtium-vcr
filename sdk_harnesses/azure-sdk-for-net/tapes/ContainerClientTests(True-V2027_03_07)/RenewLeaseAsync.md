## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0926e150-d4fe-fc42-a919-c3086a2f6d1f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).RenewLeaseAsync
now: 2026-11-12T00:45:07.5873270+00:00

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
etag: "0x1F8E7BEC03FB950"
last-modified: Thu, 12 Nov 2026 00:45:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d4dce1f0-1565-4607-8290-56392764ab3c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0926e150-d4fe-fc42-a919-c3086a2f6d1f?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 6a04a816-0341-f880-d429-74a62c9ac423
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F8E7BEC03FB950"
last-modified: Thu, 12 Nov 2026 00:45:07 GMT
x-ms-lease-id: 6a04a816-0341-f880-d429-74a62c9ac423
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8b5e13c2-a039-4aae-885d-d13526eb52d5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-0926e150-d4fe-fc42-a919-c3086a2f6d1f?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: renew
x-ms-lease-id: 6a04a816-0341-f880-d429-74a62c9ac423
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F8E7BEC03FB950"
last-modified: Thu, 12 Nov 2026 00:45:07 GMT
x-ms-lease-id: 6a04a816-0341-f880-d429-74a62c9ac423
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6b4e4837-ca80-45e5-b732-5533fe29c3ea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-0926e150-d4fe-fc42-a919-c3086a2f6d1f?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: 6a04a816-0341-f880-d429-74a62c9ac423
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
x-ms-request-id: 200d3878-884f-4815-98cc-7460330a6f26
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

