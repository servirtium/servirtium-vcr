## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-77d89ff6-ac93-9458-93c9-023f2df13e9b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).StageBlockFromUriAsync_Range
now: 2026-11-12T00:49:45.9724683+00:00

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
etag: "0x21E866BA52AA700"
last-modified: Thu, 12 Nov 2026 00:49:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0b0c3235-f17f-41ed-a8ca-8c3d3da041b7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-77d89ff6-ac93-9458-93c9-023f2df13e9b/test-blob-9c3ce3bc-33f9-5316-0aa3-72d5bed9ff5b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
iw0Y2W299hDVWmL9I8oGa8BiUv2kBlSPSsiuu8wm7PTTIyRd1EA7OanIoTlKW3DJwpZ/y59B9oW5
iI6kDjpDr25tKQClqJeAJhlU3GQbRe9X5fg2pyFVkiyfpEuxlytuhPLK3TFwIxr+/6SG7BognkOf
TChBDQdNF5fUBQRLzo/u5VdyUGi958HeN6h8z6URfwYIEkoCLHbqfcWZnB0VszAVmAfDrU3b4WVm
YtZf0Ujywob9Q7xE67jgh9KiI0ukyIN3ZjeeTtG5LDDlm8qgi6x8p9mWGG900KxO4iV6OL0ZwplS
52oRU3S1RBaLX1DuQPwmJXxxDbATA5aLT2urPvNyy9kwTaRCa1Rl4dNY6HBcYKIpVBJBqLTpPuPU
hQQICQYjGZR2vvJX5LooDCzcuxolLu/JgurhMSIkRg7AbeVPXNfNNc/c5aGv0W9YGZyIDIPIr1cU
P4cbQudxUnfkl3bU2K9UD4VLSElNGbB6iBeGmzqK976OOh1PsvPna5Mpyzr5hEHtNP3+fWYNxyXX
oLnQ6rY9WZ+3RZ2RBF2RY922I011gQPWmWc9jHpYgHP3eBE6F4Dc7HKbQT+jWy+gbBmIV6PYYh+2
+VFPAM0lXsQpmYxLV0xd2Tfb2T/EMj03nB9gzyjQHxbxgx0ujeylduN6ecKjVBXNK35s/Ijg8cYT
GGOtxY+bWXp1WtMuLkxKNmNcSbh7k0gJkqSqZCONEZJWG3SJ97FT3iBHLflCnv0xIcUkhKcNmIQa
pDLq8fRW50lB2BPXwD+yCGqYM2VOx/OneEJdaYzqSILvblN+aO0s8UawAMbpWmCFcns8dWQfzNw+
Q3ix+H68V4+Q51LsM599a0IfnsctvR7i1/cRrdId0KJ2PyV0e/jH86k2WHIOmT7cvwoiAC0VEYVa
zyCHq6m8cxewdfR6CfBJV6od9mSr0z65Ne3I+890YS6fGavXQEj/eeVaXiRJYrYa2KiC9xshr/vi
zXa79HdIOxPF2u9EchdiHXx/UXUab9I3riIn8mkTfmqw9XLSRIVtEiMQg4fG1WaRINqeoV2FyF6j
hEZVIUipslyFk3ylkNn3ET5SCutLcdi7ldKPdNwMKy0TLsA+GPHaZtErQUHp7I8Bp5AeMr5zWBJt
mot2Gj5/eGhPkWEZuPlNeKMaHy+X0alCjs1M7fhvoNat0H1lY0uSrMjYmlou5+6W0boaWTnj1sjh
NIxxM4tw4PCLbOd75xRXh3NnvjdOFKbetRw9VEedyvq0hC+/IXk9Z7lqonsHG+mmwtHFexiRkh/l
k31uM4up7qLtxmPkmGb6KlZ95HEq1pkyl5J1107iI/EP2o37zjQuwLTZGlSFwSpqy1HBFK6uug==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2179D4A9D93A240"
last-modified: Thu, 12 Nov 2026 00:49:45 GMT
content-md5: vHYpfpkgAggRiO24k+GQpw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 53fbf30b-6c17-48a5-8730-d61b9d9b527d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-77d89ff6-ac93-9458-93c9-023f2df13e9b/test-blob-bc244e21-bc51-ad45-d568-0a0bfc200f43?comp=block&blockid=dGVzdC1ibG9jay0xN2QwMWY2MS05ODkyLThjMzUtOWU4NS0wZmIxMTNlYzZiOTE%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-77d89ff6-ac93-9458-93c9-023f2df13e9b/test-blob-9c3ce3bc-33f9-5316-0aa3-72d5bed9ff5b?sv=2027-03-07&se=2026-11-12T01%3A49%3A45Z&sr=b&sp=r&sig=91KDn19S9S3nRatRD55N3B1p%2Bs%2FElJ85VoTIIO%2BH3Ng%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=256-511
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: /Qttt0XAgUjH/hB4NZ963A==
x-ms-content-crc64: +QwgIPyAt8I=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 13a736d0-ee99-4ece-8f24-840ebc928dd8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-77d89ff6-ac93-9458-93c9-023f2df13e9b/test-blob-bc244e21-bc51-ad45-d568-0a0bfc200f43?comp=blocklist&blocklisttype=all

### Request headers recorded for playback:

```
Accept: application/xml
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
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
etag: "0x20CE777C7EC7840"
x-ms-blob-content-length: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 849ddc86-60c6-4b24-94e1-eb3a86b35f85
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><BlockList><CommittedBlocks/><UncommittedBlocks><Block><Name>dGVzdC1ibG9jay0xN2QwMWY2MS05ODkyLThjMzUtOWU4NS0wZmIxMTNlYzZiOTE=</Name><Size>256</Size></Block></UncommittedBlocks></BlockList>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-77d89ff6-ac93-9458-93c9-023f2df13e9b?restype=container

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
x-ms-request-id: 383fa9a2-d74d-4fd4-ac3b-6f366f00b9a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

