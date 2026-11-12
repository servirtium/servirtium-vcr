## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4877cdca-57f0-1592-6976-e419ba09b26e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_EncryptionScope
now: 2026-11-12T00:43:55.4073906+00:00

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
etag: "0x26EA77916C55E80"
last-modified: Thu, 12 Nov 2026 00:43:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f254787d-0a72-4985-826c-6d2183fe49da
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4877cdca-57f0-1592-6976-e419ba09b26e/test-blob-bc181799-1829-5aa4-d90d-304f4a1deed3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
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
etag: "0x1CDE94763139870"
last-modified: Thu, 12 Nov 2026 00:43:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4600b2f7-07a8-4b38-be5d-d5cdc3a26d67
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-4877cdca-57f0-1592-6976-e419ba09b26e?restype=container&comp=list&delimiter=%2F

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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d737d457-9ce6-44b6-bfea-4ca7d5af53d9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:55 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-4877cdca-57f0-1592-6976-e419ba09b26e"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-bc181799-1829-5aa4-d90d-304f4a1deed3</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:55 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:55 GMT</Last-Modified><Etag>0x1CDE94763139870</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-4877cdca-57f0-1592-6976-e419ba09b26e?restype=container

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
x-ms-request-id: 1d35cfe0-8a14-47f2-8284-05ab7ba01521
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

