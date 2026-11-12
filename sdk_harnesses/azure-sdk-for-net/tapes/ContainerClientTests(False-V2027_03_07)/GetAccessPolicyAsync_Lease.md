## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5d218b57-d85a-daa3-1c7d-85d3b223ecfc?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).GetAccessPolicyAsync_Lease
now: 2026-11-12T00:43:43.2381331+00:00

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
etag: "0x212B2F67BB9AF80"
last-modified: Thu, 12 Nov 2026 00:43:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b6208aac-f7f0-494d-8915-7a611af75c92
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5d218b57-d85a-daa3-1c7d-85d3b223ecfc?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: da2bcded-ea67-4da6-21f9-5fa8e5738b8b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x212B2F67BB9AF80"
last-modified: Thu, 12 Nov 2026 00:43:43 GMT
x-ms-lease-id: da2bcded-ea67-4da6-21f9-5fa8e5738b8b
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a641c7e4-80cd-4e3c-aaf9-2d8a0f36a75f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-5d218b57-d85a-daa3-1c7d-85d3b223ecfc?restype=container&comp=acl

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-id: da2bcded-ea67-4da6-21f9-5fa8e5738b8b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x212B2F67BB9AF80"
last-modified: Thu, 12 Nov 2026 00:43:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b161c115-4a2f-4625-846e-3309a562fdda
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:43 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><SignedIdentifiers/>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-5d218b57-d85a-daa3-1c7d-85d3b223ecfc?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: da2bcded-ea67-4da6-21f9-5fa8e5738b8b
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
x-ms-request-id: 713e9c53-929f-4df9-8463-7bb0ef074566
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

