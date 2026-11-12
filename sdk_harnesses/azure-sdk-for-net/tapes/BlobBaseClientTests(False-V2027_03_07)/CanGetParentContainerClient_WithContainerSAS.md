## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e5e8489c-0242-887f-1ab9-c1ca1ec173d3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).CanGetParentContainerClient_WithContainerSAS
now: 2026-11-12T00:46:21.6791609+00:00

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
etag: "0x26280D27D104120"
last-modified: Thu, 12 Nov 2026 00:46:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 82d06fab-f509-43d9-881f-9aaaf7f132b3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: GET /devstoreaccount1/test-container-e5e8489c-0242-887f-1ab9-c1ca1ec173d3?sv=2027-03-07&st=2026-11-11T23%3A46%3A21Z&se=2026-11-12T01%3A46%3A21Z&sr=c&sp=racwdxltfi&sig=10XohkWJaK0qtuCSx0oMeP39qggFap%2F2x4r5bbFsgtE%3D&restype=container&comp=list

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
x-ms-request-id: d3d068c3-017a-466b-b167-e11769bfbf1e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:21 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-e5e8489c-0242-887f-1ab9-c1ca1ec173d3"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs/><NextMarker/></EnumerationResults>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-e5e8489c-0242-887f-1ab9-c1ca1ec173d3?restype=container

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
x-ms-request-id: 991f376b-deef-47b5-a7c7-e44eb6104a43
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

