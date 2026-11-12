## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-505d389e-383c-b359-3135-037e4dd1ae71?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ServiceClientTests(True,V2027_03_07).ListContainersSegmentAsync_Metadata
now: 2026-11-12T00:45:53.9458736+00:00

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
etag: "0x1E8AFD83FBE5D80"
last-modified: Thu, 12 Nov 2026 00:45:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 28ca30fc-cd03-4b71-8a99-2eb47d237f63
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-505d389e-383c-b359-3135-037e4dd1ae71?restype=container&comp=metadata

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
etag: "0x1C794AC5D353A60"
last-modified: Thu, 12 Nov 2026 00:45:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 26a3cdcd-d264-4403-b062-9306a97adcac
date: Thu, 12 Nov 2026 00:45:53 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1?comp=list&include=Metadata

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 8fbb8802-ff9a-426c-a342-fe2eb2df5aad
x-ms-version: 2026-06-06
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:53 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1"><Prefix/><MaxResults>5000</MaxResults><Containers><Container><Name>test-container-505d389e-383c-b359-3135-037e4dd1ae71</Name><Properties><Last-Modified>Thu, 12 Nov 2026 00:45:53 GMT</Last-Modified><Etag>"0x1C794AC5D353A60"</Etag><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><HasImmutabilityPolicy>false</HasImmutabilityPolicy><HasLegalHold>false</HasLegalHold></Properties><Metadata><foo>bar</foo><meta>data</meta><Capital>letter</Capital><UPPER>case</UPPER></Metadata></Container></Containers><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-505d389e-383c-b359-3135-037e4dd1ae71?restype=container

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
x-ms-request-id: e4b0d262-974b-4d0c-a669-c7130b8e89a4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

