## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0f451250-85b4-6b28-d7bd-98c0e44e1c3c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_Uncommited
now: 2026-11-12T00:45:02.1281076+00:00

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
etag: "0x1C1F6D845E37EE0"
last-modified: Thu, 12 Nov 2026 00:45:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 41afef68-3ee4-4862-b46d-f3f07546a606
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0f451250-85b4-6b28-d7bd-98c0e44e1c3c/test-blob-98134373-a82c-e47d-219a-ca4503167b4e?comp=block&blockid=dGVzdC1ibG9jay0xYTQwODcwMC0yNzk3LTZjODUtMDFhZS05OWI2M2NlYzNlYzA%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
dZXKXRImj9JxpYWz5Z3iD2aM4ivwdFyolGDuGrviZ8FCSUtOhL4qTLNBJoYiyf+Dt7rfdjRPXgA5
IcixOHUXjj7EcZtSk4unYpV3r07Vhctha2IAA/GN8utKFWL2eBQ+KZdIXlhjMCQvNxOe16+yZJv9
UM0SFotMN3+wCH4oseqBOYW2jSdz/To90czd7ho8l7HG+SdGKxMM+ybZsyemBoYpHZ4p/Nd0ilOS
1EW+b0hkc3HMYrjCOg5xqZEAmUkTl8pFs9F8EpraUm7UtFbNTYzedEC12aTOZ+KPuFNFc/AJfj17
ebt36GDW8g9J7YW3o1sEIiUJXb0ld0zu7FpHlN5+yzUZUtTRZovf3ueUhHpc1xT4QVHK/yGAVQFu
iPsGj14xyiFQnlGGMruZKn7VkfLSkRRGT1KNs8sUmP3SYt2Q2E+JY7pYDDjDcQ6VMdWiqsQPnPbm
v0ALpBZWPAZTs8/eCVEvTC04eoXbg91D+IL2ce45w8bnqRkPfb+jAdAyb74/tyeDc12W1iJxCjxi
x6uUX8oYGu8J9mA4IM5ulXi1qRMfBEFbc/6Qou2jdZ7crLYTD6IFGlXONcDHS1OPJ0Gqu2EoQ8Jq
OezMh3cCZYHBW3MYW4bVr46+Uc+BkyiqAXus+bo8s2nzqNa2OZPdzM8/Be/fdsy61AzTafHz6aXD
IYb8VmzGhacKJLKwH3X74YX/QY05y4qv8SStaEp3AL8w8hgM4HZieIBH1FEZCrWW2Ihs86cXilX7
TWRIGRxdkyTzfyxd7gAPnckN8fY4leZuFpDBCgwXGWfCEJMRGl5j6UEtJouIOemHXVbdCplew7d+
2QKMm4gX22bFmt1t/YJrqQi1Cm9b5t2mOqy2Og/OY03bkkFc1024Fkolw54MGWDUcmCQqbhII/Ml
5WHbYKFX9jaQkWpBDtK6/PQkNSI+miBM4seuPbqVk29ON/Hs3bWpzcxofIj1kmON1a3EI+3Q5ktA
jn7ZqLl8+v7789fgzh8+e2hW1h6YV09jIGgM0XCCfVCmq043zyUT64GK+p+MrQeOhaiFehAspzcv
dodRbymNeHWHOSLQBqtDQuqcDl2v13NgfkvI/QNAegQWCFmdwnxY/IEqBHTkvX78QTcmj5naf54U
8PDdxXtyR78euv5RpYBtRBLchdL+fMHNy7vLGupqPIi7iNKLezYFt720xQOAq5y3uEuG/frLFXMv
EPrApi3Vs311lhyu4cnb1s0VSra+TB8fFGGe4z6O73NeXGo8RRCQ3xGFChV/CNaCqycstsu8ccPa
oJLLNs8+5qapT4VenpC8hWqkOEIKnwuLHDgXYTmnoeunYqR+xKhCRyNv1bhRIwyWcDBgFziBzw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4545562e-ad4c-4f52-81b4-fbdb5e04c3eb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:02 GMT
x-ms-content-crc64: hStxxDHHYnA=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-0f451250-85b4-6b28-d7bd-98c0e44e1c3c?restype=container&comp=list&delimiter=%2F&include=Uncommittedblobs

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
x-ms-request-id: 28e80ca8-6f41-4e1b-8508-28be0b58728e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:02 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-0f451250-85b4-6b28-d7bd-98c0e44e1c3c"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-98134373-a82c-e47d-219a-ca4503167b4e</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:02 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:02 GMT</Last-Modified><Etag>0x2727F98FC3193A0</Etag><Content-Length>0</Content-Length><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-0f451250-85b4-6b28-d7bd-98c0e44e1c3c?restype=container

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
x-ms-request-id: 5aa6465c-c7ce-4000-8c71-a31510bfa0c9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

