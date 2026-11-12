## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-055bb30e-21f7-b465-885f-7ae690032b82?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ServiceClientTests(True,V2027_03_07).ListContainersSegmentAsync_MaxResults
now: 2026-11-12T00:45:53.7070707+00:00

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
etag: "0x211FC2F3AAB0CA0"
last-modified: Thu, 12 Nov 2026 00:45:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 74b7f8af-54ad-42da-96ee-3939dc5d1318
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ee2ca624-729b-8aff-3563-51f4f201eec4?restype=container

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
etag: "0x21A8A6105A16640"
last-modified: Thu, 12 Nov 2026 00:45:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b6cb500d-0e02-46e6-ba68-249649b120ac
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1?comp=list&maxresults=1

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
x-ms-request-id: cb2547eb-a099-49ad-9907-231ece696b9c
x-ms-version: 2026-06-06
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:53 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1"><Prefix/><MaxResults>1</MaxResults><Containers><Container><Name>test-container-055bb30e-21f7-b465-885f-7ae690032b82</Name><Properties><Last-Modified>Thu, 12 Nov 2026 00:45:53 GMT</Last-Modified><Etag>"0x211FC2F3AAB0CA0"</Etag><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><HasImmutabilityPolicy>false</HasImmutabilityPolicy><HasLegalHold>false</HasLegalHold></Properties></Container></Containers><NextMarker>test-container-055bb30e-21f7-b465-885f-7ae690032b82</NextMarker></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-ee2ca624-729b-8aff-3563-51f4f201eec4?restype=container

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
x-ms-request-id: 8561258a-6508-4ad4-9e2c-14fcd7b48822
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-055bb30e-21f7-b465-885f-7ae690032b82?restype=container

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
x-ms-request-id: 7dc92da4-7736-47a6-890f-326271172f29
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

