## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/aaatest-container-10cd922d-4ad3-6e88-6417-889209d4ad48?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ServiceClientTests(False,V2027_03_07).ListContainersSegmentAsync_Prefix
now: 2026-11-12T00:45:37.9381316+00:00

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
etag: "0x25BD8F89C7F9AE0"
last-modified: Thu, 12 Nov 2026 00:45:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ea5c3437-f8be-4310-9796-0ed03e87d77f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:37 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: GET /devstoreaccount1?comp=list&prefix=aaa

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
x-ms-request-id: 49e0d76b-13d5-4d9a-8417-373227c574ef
x-ms-version: 2026-06-06
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:37 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1"><Prefix>aaa</Prefix><MaxResults>5000</MaxResults><Containers><Container><Name>aaatest-container-10cd922d-4ad3-6e88-6417-889209d4ad48</Name><Properties><Last-Modified>Thu, 12 Nov 2026 00:45:37 GMT</Last-Modified><Etag>"0x25BD8F89C7F9AE0"</Etag><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><HasImmutabilityPolicy>false</HasImmutabilityPolicy><HasLegalHold>false</HasLegalHold></Properties></Container></Containers><NextMarker/></EnumerationResults>
```

## Interaction 2: DELETE /devstoreaccount1/aaatest-container-10cd922d-4ad3-6e88-6417-889209d4ad48?restype=container

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
x-ms-request-id: 9d957051-0e8d-4dd4-9fb3-825b436f824d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

