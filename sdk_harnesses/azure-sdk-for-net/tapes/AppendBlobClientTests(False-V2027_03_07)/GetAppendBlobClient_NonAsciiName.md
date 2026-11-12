## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7612bac2-ff3f-e9a2-0a3b-11fbed6aa359?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).GetAppendBlobClient_NonAsciiName
now: 2026-11-12T00:50:39.5786661+00:00

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
etag: "0x1D610AE947E7070"
last-modified: Thu, 12 Nov 2026 00:50:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b4f9eac5-2592-42d5-9194-04cadefd5a3a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7612bac2-ff3f-e9a2-0a3b-11fbed6aa359/test-%CE%B2%C2%A3%C2%A9%C3%BE%E2%80%BD%253A-4358b23e-546c-a8ef-14a0-e33481b2800f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F9361B5AD22240"
last-modified: Thu, 12 Nov 2026 00:50:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bf5014d5-5dbd-4531-bda6-fc6e722928ce
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:39 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-7612bac2-ff3f-e9a2-0a3b-11fbed6aa359?restype=container&comp=list

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c9202a87-1c30-43c7-9410-b064fce66295
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:39 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-7612bac2-ff3f-e9a2-0a3b-11fbed6aa359"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-β£©þ‽%3A-4358b23e-546c-a8ef-14a0-e33481b2800f</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:50:39 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:50:39 GMT</Last-Modified><Etag>0x1F9361B5AD22240</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-7612bac2-ff3f-e9a2-0a3b-11fbed6aa359?restype=container

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
x-ms-request-id: d854aa53-20bb-425c-8e76-1096cfe3b320
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:39 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

