## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-109c2baa-4f4e-e6b9-51a2-23e0a27452c3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_Uncommited
now: 2026-11-12T00:44:54.5586939+00:00

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
etag: "0x20D2D9FA9A25E60"
last-modified: Thu, 12 Nov 2026 00:44:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5a3cd064-dc84-4592-8a08-c787d74bf59a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-109c2baa-4f4e-e6b9-51a2-23e0a27452c3/test-blob-dfdf4524-7feb-806c-d3af-ca45617253e0?comp=block&blockid=dGVzdC1ibG9jay1lNWVlMDZjYS02YmRkLTYxYzUtOWY1OC00NWFhOWU4OTAxZDg%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
zqUEIwLH+bjIukhVl8t58+WVf5FDg2cqvxw9noRzhN9PQhL8cC/BXEwnFzA3F+kINtdgzPLCnEo+
2WPmils0VDVpBVS4fIO20yNFHGw286gyNGitE7jsjabHvpbL2tHw88L7zRGUT7lTqfjPfIDeCOa7
s1byhkF9fHiu8b7s6/hSVCiqOiWXnuWuWWm/HRAm6LawDyd7/myAflCY5V77Zr7/fShXNM3AJBVx
RCzXvV9oiAgIPNvR11a7KbzU/riGsvKqv6DnzrTo7+sRCbk/qcDxMFxV8yrjLqbSmwoQ6yZc6pE5
LP2/gLlTH0zwv82ce4D7481bML7Ix5H5FTOp1wPEtR8nBXzCMbCjAtTd827YNR+KFQhYALnTcWVs
xWuGqUdJKwmtdHUEObIduC7q6tMiId8UH8L7a7VlVJQWVmtFHViNlMhkKsGphdtWO0eL6IaSSaSL
comETb9USB/h7uJG2JvVXVYLvvYeaprmpTBt2msOhAzHuavOCEYJEOKhyJf5D2OrtYswhouubQfv
naeO5m2002rWfh7wB1QPAq4TfaIC7ZXMwiXf3v2BGUyj32qfeil17fQtIpFFu642IITcmu9k7bAS
wiRI1PVtVGXRTCjqcIeEnpCt1coEhwZ3qb14pH5cP/G5jLcFLBj/wM4rc26FTLD8WPxfthflDTsd
0Co39K/ndA02MOPQf3F3rhX82BOY8V0Ne0yB/Yja1H5851vtyMseRP9hTxvMLNiL6AgC6TUnhd/N
KnljZXeEW1xkU5gVieZJ3ZMTN6FBQE5z9hSA1+tJVWJ8IJ1Sut+H3PO/Z9lAdV8huQuhE049jOkq
8G5jBIRwG/02mGlI9yO0jFutgtl0MoC0Xh7gqEETPpS0J8pwJNdvTkzbCtz22cHn7YfykAkPtb3u
rqVlkHK8IlrVk89YQ2eDPjSMmSijvoRc+Lu5Ia6KpHENgnYxCb3ZHuiCIUXyj6kgb1HUgxyUSvAh
CZe3AwGsSu9dSsDxUTR2sno/IZ0/amgRmLFctiFVeTiGEAAlIhvn1tZWlEXpLx4dXdCiVClT4Z4v
pmpPT5TOCNGIakA0UJBeWErG6dYjKGmTP1hQsiQOMy9h9nuwl4dCiItzYMTd6A0/Q/zejfjIC34B
vA88fVateTcR0loUrsDDg2FKr8ektVZLEW4nMKY2mer9rtt3Bgo0xueMyxayKpU8GwmXfVy2XAa4
8WznhUmR2jlvF//kS3xWFejgGOlAmObZ6xWcnxuORlLUvxWeTUCd+vHdQxOVV8+MQWhz1kQceFiF
Dpo09Tse4NCtEIxnt8ioQh34YlXTQ5NFD12zG28Nt0a8GD+maQW1v2JC6EdCJYqfy5QnJBUDsg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 53e9043b-e5dc-493a-9ec6-5b45f7c53c62
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:54 GMT
x-ms-content-crc64: GOkFNfDrxo4=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-109c2baa-4f4e-e6b9-51a2-23e0a27452c3?restype=container&comp=list&include=Uncommittedblobs

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
x-ms-request-id: f611413c-ec65-414b-b74e-ebba2b278d4e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:54 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-109c2baa-4f4e-e6b9-51a2-23e0a27452c3"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-dfdf4524-7feb-806c-d3af-ca45617253e0</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:54 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:54 GMT</Last-Modified><Etag>0x233640E93188420</Etag><Content-Length>0</Content-Length><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-109c2baa-4f4e-e6b9-51a2-23e0a27452c3?restype=container

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
x-ms-request-id: 51f053d5-c1a0-4677-8a58-4e20a1a64983
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

