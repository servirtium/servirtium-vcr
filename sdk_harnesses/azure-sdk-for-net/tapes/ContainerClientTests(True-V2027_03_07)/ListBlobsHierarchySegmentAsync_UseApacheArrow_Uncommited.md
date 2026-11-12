## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d6b46f56-5053-b932-0ecd-ed656eab949f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_Uncommited
now: 2026-11-12T00:45:06.2544607+00:00

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
etag: "0x2266798E8920B80"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 26270bf4-0a41-46bd-bbfb-765f07944ec0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d6b46f56-5053-b932-0ecd-ed656eab949f/test-blob-2db3a792-1f74-f0ef-9a89-2dd10db44203?comp=block&blockid=dGVzdC1ibG9jay1jZTc4YmM0NS1jYzA0LWViZjItNDE5Yi05ZTI4MmQ4OWViNWU%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
a4aF2Yok4mw+9bQDRKsCVMsv0qv5NIA2f8Q7yiNhrFmL6vrnJroVbcRH735q7KzvhtgF3uGWCjcF
TlrG6BhJ3Elbd1mwGi0QGmXnskQBy5IYS0NKW8139eDD4thgToSs/RM1D3VSP2ur9MN8rlfyBILH
rp3V/oF744J57ThVsMvgO7Qxy7wdxQzYn2YK+0aI0N5VmaDn1/+Ruizy2FEyVUT3nHOjwTjGqeiQ
/F4acOg88Rxa/xcr+GS0nxGQKu26pUoiEl7S5A6lj++4V9qgd0lDtuY12FYtzKMP7iInNX761VcU
916JaQ0NtG8ncqGKEyfHTHQGhc3z9UW7w/XsflpwvYGCjIDrukzZKCPmBVkBhdr6X+kK81CKIAIZ
zaYXITYVtrUgB4en3JEnLV2qDe/ruT0a8R5wZsow+Gt90uymwQbt0U6k4X1SU4NX4sbz4BMSLRRp
/C8XpVDr8A8cKQmlgWtWvDugR9jAx56aGIQDPBdXa6TYPcXX1Sz+ufFtNil5smBanSPYceU7qDSR
fIzL57P3xb5kzESmf+cPoY7nUpF0IGUjqZ/0f/m/nJSQRVmfM9I9dXFqFOUbtB48yNBXVFajHFsm
pz0TA0XFpTCwFTmOb267qdwfCguACPWBuLcpZ0c97Sn9eYuUKnIrpW+1ap7lrVhhm6t6gxJPpp9I
kkqOnD3pcygPkPbjJ35p82Wcyp1WnApex8ucwmoXrdPrTJcnnQgxzPd21RxhfXQsEI+ts9sC8fZA
L9RyTLC9+OMj99rnQVZca/6m4Mft/UpWb7Haafr36Vqh5240v39GuNw5PoaaRc84UUjcWxEvUjKK
G9z/447pKw6ARVroJ6x/XyjqtL7EvCriohixG41JcpQ7qqOiR9VNUBJ3GQB0UCmbXPzpRJ5zxV6y
HEB2NxCAN9LFrHwI3RhSnWSsTKIqblHvFb6RYC72x+RE8CqU1xgB9+ItrqOtk3/jlqc6xnm8h67v
hyFS79ekz+WXw+3tvsZLq1TA/L+tQYI+rcmHvABriGh8pFD3rwgLid++Fc+S9dfh7hsk+4vvQUWf
E0ENHBPkLDqEcRl1VPtMtHPf7yyyq7fxps3lRozdjWMLWJvG/mzM2uiVDYS+a5og10cXD1IY7GeK
G3ZG/+atp+S2avxfhrYGExREHZ0zMzoyxG5FxX4Q8mszPOL1htsB52afBwCewFGREPs91M/KVug7
Ezp4aOJmpXiQLErTEY05QjU3kys6lAQctLSC0h6baeX6uXKgiX+DOWGIDZQHvf9tBJGZksO8AX81
W7Mt49JZ9MJk2VcbmLi2tFnKsYZwFfe1Fc6MAtciPbjyai7LVVaOLhnRo+OoUmvZ495p8k/5xQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 85623d69-594e-4236-be33-6a665d1edd7d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-content-crc64: 3n3OuhkV7Y8=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-d6b46f56-5053-b932-0ecd-ed656eab949f?restype=container&comp=list&delimiter=%2F&include=Uncommittedblobs

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
x-ms-request-id: 983ff6a8-c65a-4371-8ee6-a9352ffd59bb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-d6b46f56-5053-b932-0ecd-ed656eab949f"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-2db3a792-1f74-f0ef-9a89-2dd10db44203</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:06 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:06 GMT</Last-Modified><Etag>0x21E34CC05BA3F40</Etag><Content-Length>0</Content-Length><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-d6b46f56-5053-b932-0ecd-ed656eab949f?restype=container

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
x-ms-request-id: 907a4852-db98-406b-abb5-554bc5791017
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

