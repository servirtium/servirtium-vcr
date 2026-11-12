## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-cbc172d6-628b-f607-87d4-fb4fcac945d0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).GetAccessPolicyAsync
now: 2026-11-12T00:44:48.1202238+00:00

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
etag: "0x277E7906FAD1B40"
last-modified: Thu, 12 Nov 2026 00:44:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 98555cc8-68aa-4de6-ab17-0749b266665b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: GET /devstoreaccount1/test-container-cbc172d6-628b-f607-87d4-fb4fcac945d0?restype=container&comp=acl

### Request headers recorded for playback:

```
Accept: application/xml
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
etag: "0x277E7906FAD1B40"
last-modified: Thu, 12 Nov 2026 00:44:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dbc8cd1e-81c7-4a72-b0d2-5df524c18ccc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:48 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><SignedIdentifiers/>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-cbc172d6-628b-f607-87d4-fb4fcac945d0?restype=container

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
x-ms-request-id: 5497c0c7-bf90-4df6-be21-9c65448a0b4e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

