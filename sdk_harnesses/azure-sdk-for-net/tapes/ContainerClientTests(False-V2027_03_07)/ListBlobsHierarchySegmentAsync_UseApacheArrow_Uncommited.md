## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4eae8d4c-0dda-5e79-226c-12d2fafe8359?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_Uncommited
now: 2026-11-12T00:44:02.0970628+00:00

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
etag: "0x1DF43AF79F21D80"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 37ba69dd-d159-47f1-9d42-f70f97f29db8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4eae8d4c-0dda-5e79-226c-12d2fafe8359/test-blob-960588d0-2557-135a-2d5a-467081c5fcda?comp=block&blockid=dGVzdC1ibG9jay04NWY2MDg4NC03YmRjLWEwOTAtNTdkYy02ZjY0MWFlN2ZmYmY%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
2TgciixF7CHh+m1PeUYqVMevudW6dhsmM5oggMYJ3V1vN/jB4fgsi5zktFy4C5rmL/Kp0gwnIGMd
9VeRJGta2B0Q30FOaXLOgi051sG+bigAOlHUYApRSBaUo+uhm2Yxidw/qCtYmMZ/21De7kqhXocv
kOkahXcTvpcrucWHLObGB0zlf8b8qKKKVYW5clrM8kVkcgp9FgNkLOmTLd4A+K9qF+b+vN7BMudH
jzDyWUw9X8Z/I7nbSfFIgFPcaXvDil3WT1p0zTZno0AiNYfTctKdVs0XgdT1js70tTuL5MlsgwXT
HArxyJGQGIB4uBRpdA6BPxKtqwiI4MGMfxj62753trGBAFXIq408h2hUfdW5ikAtCaS2vtf8SjxJ
ZEl5lTzBAQFi6HS4uZSFcSSgM2Lr0vTXzdEawfjahbUZfkZDw/Irk3zTV6LLdVAPMUyzXBfZXZJV
oshqpkAJiGO/njpOQa0ydKDmGHtRC1eBC4+rJiidQCG07iEpwe07ys8/DNYWwfCfged38kQWA5Zw
6ZuwXWE6IV0YmVKMCLOyqk6rEv6BakmfDKVBJk7dneuKuNdRi21tBep5/iedEngzxEf2avGX739R
EFC8+PsPO/xmAU/bYR/hPgwUCGwhAvksDWEG5zL68slY/3scsQzuacIrNhEpV2MoFCzkg+cSMA5W
j+uZCFTJbA+Gg2GkxIwAJZ6p9cvoA7X+3tIGFW/hRc9sxiIhVGFuYsoCotQBhFCg5F1JaTpDbYw1
mymCw1afpD2RN/5q3tA9OpMA5mDg/FqCZTERmNyVKViV67k37J90Yv2Wb0xRNgWNDC6mQoYrVJ7P
AF0kjgxh/A2l1PMWBU30jIRiSowNMC8shIut7ubRaZYbZ+xBT9PwNXM/q2ISdgbgsrYCyQoRws8u
+AmAsw0m02pc+55hsj2wcRQZzoTMGg6FzDswz6CLCqUcElfJcIFlGNj3tXpofwB4UVf29/RLYd77
++fS9gPJ0PD4RJ/m5gGSs7Ws1WWTHUw7t35JlRKx0bF4znWakyLULeSJbztgkmpVY0Q+n4x5aN2a
lz6FgDveR3LubRiM+B+T2KeACa4R2iQU8zLNcjIk/2WXAPzjTq2pqyfIciVRyWskqsbl+F4uiLwZ
cY0IENRAym2y9fcjsIn5112HSGj/wirHqchrPgcHaHc/yt0foJtSiKe4n9RzAfo96yEApz9UGq9j
QWcM1Itmq4yA4+Ws2jbCNcDARyNVVKfOLlPlBsE367AuvF80RbMcUfNH8h4UkBHqPnJ/lNKLDey/
PaU4gKTKSfc1fh3Wju8Mo/UvDWGJuZ1B+8hPuFfdoq5ydAcN5NFOfakm3xLzE6+CcvDdXP+LNg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dd5b313f-f5cf-40aa-b1fa-aef663509d4a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-content-crc64: Vb5DsnE6vQc=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-4eae8d4c-0dda-5e79-226c-12d2fafe8359?restype=container&comp=list&delimiter=%2F&include=Uncommittedblobs

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
x-ms-request-id: 54e068de-54bb-40a4-8849-ba86b94d6418
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-4eae8d4c-0dda-5e79-226c-12d2fafe8359"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-960588d0-2557-135a-2d5a-467081c5fcda</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:02 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:02 GMT</Last-Modified><Etag>0x228013BD2C55740</Etag><Content-Length>0</Content-Length><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-4eae8d4c-0dda-5e79-226c-12d2fafe8359?restype=container

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
x-ms-request-id: db83ea9e-15e7-4549-b873-65c534c425af
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

