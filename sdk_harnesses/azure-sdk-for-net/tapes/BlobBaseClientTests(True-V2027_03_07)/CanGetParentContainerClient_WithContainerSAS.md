## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-289a0a0e-f0fd-27e0-00c9-ee361b125b8a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).CanGetParentContainerClient_WithContainerSAS
now: 2026-11-12T00:47:37.4596060+00:00

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
etag: "0x1F7C6E29F016140"
last-modified: Thu, 12 Nov 2026 00:47:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1049eec9-470b-4570-b0ed-1d84e9a3a865
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:37 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: GET /devstoreaccount1/test-container-289a0a0e-f0fd-27e0-00c9-ee361b125b8a?sv=2027-03-07&st=2026-11-11T23%3A47%3A37Z&se=2026-11-12T01%3A47%3A37Z&sr=c&sp=racwdxltfi&sig=f%2B3D%2FIHrELULhFYCiNpAQs9JZiOFrw8pGaC9jTu2Bts%3D&restype=container&comp=list

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5fd8a46-aaf1-418d-bcf6-c88e617b6e4b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:37 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-289a0a0e-f0fd-27e0-00c9-ee361b125b8a"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs/><NextMarker/></EnumerationResults>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-289a0a0e-f0fd-27e0-00c9-ee361b125b8a?restype=container

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
x-ms-request-id: b3647cae-f9de-454a-a2dc-657fa1ea068d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

