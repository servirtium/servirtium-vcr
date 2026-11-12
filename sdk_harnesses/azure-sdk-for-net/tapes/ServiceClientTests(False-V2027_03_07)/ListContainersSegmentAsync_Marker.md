## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-dd7a7e3d-a159-9dee-bc55-e6dd5a1c65e0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ServiceClientTests(False,V2027_03_07).ListContainersSegmentAsync_Marker
now: 2026-11-12T00:45:37.4724063+00:00

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
etag: "0x20C71F14C5AB8C0"
last-modified: Thu, 12 Nov 2026 00:45:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b651beb6-fca2-4b18-b33d-bbd93ea0c703
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:37 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: GET /devstoreaccount1?comp=list

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 159e2f85-c876-4386-9967-46da835d29d9
x-ms-version: 2026-06-06
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:37 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1"><Prefix/><MaxResults>5000</MaxResults><Containers><Container><Name>test-container-dd7a7e3d-a159-9dee-bc55-e6dd5a1c65e0</Name><Properties><Last-Modified>Thu, 12 Nov 2026 00:45:37 GMT</Last-Modified><Etag>"0x20C71F14C5AB8C0"</Etag><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><HasImmutabilityPolicy>false</HasImmutabilityPolicy><HasLegalHold>false</HasLegalHold></Properties></Container></Containers><NextMarker/></EnumerationResults>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-dd7a7e3d-a159-9dee-bc55-e6dd5a1c65e0?restype=container

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
x-ms-request-id: 9bd4a3d1-9cdd-4ac6-8459-eaab7c6e3b52
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

