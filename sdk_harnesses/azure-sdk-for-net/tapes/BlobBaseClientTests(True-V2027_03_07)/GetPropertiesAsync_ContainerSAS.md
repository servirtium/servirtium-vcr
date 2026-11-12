## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b203551f-df8b-a98e-7338-34e0391d6696?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetPropertiesAsync_ContainerSAS
now: 2026-11-12T00:48:09.8733404+00:00

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
etag: "0x234E6DD964AA080"
last-modified: Thu, 12 Nov 2026 00:48:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b41e7cce-696a-4e3c-87d8-bb68872911be
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b203551f-df8b-a98e-7338-34e0391d6696/test-blob-df5210ac-1f49-8693-8acf-882b9b3d3c5b

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
TEa93pH1zkKsQQ7Hs/GKthsGPtj4uaT/wXwovFZiDjb72ZPyX4gEtkIQMwgQy9OYRdIQlP5kYpKi
vRwVzRLrSTLYy9pdl1aSAoeW54Wc7vaoj3aDUXo3l3YAUKJs7+kvJerVOAD5Oq18fZJ2znoNBc4m
bD6bZ/i4oDRjXUezJRKeZsKbxrb1r1XJB9Pnwcn780rTRoKrlL3yHZfLld1lyFd/12i4cT8YML3o
0mAk0N9qaGn939+P89EFqakeKRl3Yz58aOlhQ4IKuxbFwsFczky4YC1zaOh47+SWsseW+QakcW8i
p2j2CSTn8iTIyjEQqdtdZsjrA/pVA3gEy5C6dMEQIFBSOSbjwVcJjHXErySzhgjrOJM9uW10zaTv
8T6TLH1iuKrgvXC1eaRx4neFkFRTUUWIzjsu02fj3muB89AYdV/3Yfd60siYNr/vy9f17zxQm5/5
C11CNOVC/N8EM4XUWGwXjS5c2X9875h8PweQ7e4uMVcwH2oBtS0SN9bokwI5GnJq3mIO88IgfBvF
xfXdsg7w1gEtpDkCFdcBSqGpk1yVQiSVJQ+MID6VD6JOPO84NYXH970BC3Y5Z8iKDKkgd+m/MILR
SIz/ZLXDmJSWtNnoyRUc4ZuflDetW71HAhOVdJe5jgtsZ+z4x5MHPXPiorPuokOTBJVNIJtLI+zO
uGGiLiT83SXNe2EoIxkIl1bEy7kKWGDPAW8CbG5wIUMAKg8xZQ9O5cWOISbia+F7RYhEh1gyxGAB
0iy0+nG2XVoeJ/kK1jJHdeX0fDc57ZaOhiblK5nqzWWvL5LimutU18PMw0PocW5V/RFzPkgoyOWW
JnRK0DLAM1mTWqagZdr6oKRzbCpSpRS3kC6Id48dhmetTHR2CQaQDI/pVBfItZg2eZ6jtVu6Q4Bf
kkAEOLzKdtM/8hlmg5ae4mCaaVH979qVUf7wedEM8gjzF3fFjNTTH95DicJ+z/UIBdL6INovYqJm
bua+2fwCMwAQc2we2FaMx0lyumYXF4EI6HT+EdEtxLXUXx3tFEXhQFbCblyJ6S18blmQvKc8Tldl
tfCIAyEu4q63Snk4nrIEkHkQVagkf/9HgqJ4nQgNmBDGiF5UWTw0k4uu0p+zRM+njCstLPmuQDbx
QYF/tUWmqbFocRZTrzc828Ecdqxgkz7S0RDc32wXF0coYxe7td1GByjtS9K5U93z8FA3kcqJkK5C
rOQ0yclFUVrOK0sggSbj1m6Ec0hsGX0z6e8b34V9ntNpeQn5Ej5eqPl46yiR028qVLtbBR1m1pJm
AODaKXLUUI14tgcd6sQwJspO9C5VohV/8YvKIZi1AqJ2khFdg3+Ho5qbGRxnDGn3K99SGOJkEQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22BD479D12D4C80"
last-modified: Thu, 12 Nov 2026 00:48:09 GMT
content-md5: oVofzWKWBdNTtmg6O9lGCA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6787d84f-c7ef-46a2-b85d-d57c15cf0f7c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-b203551f-df8b-a98e-7338-34e0391d6696/test-blob-df5210ac-1f49-8693-8acf-882b9b3d3c5b?sv=2027-03-07&st=2026-11-11T23%3A48%3A09Z&se=2026-11-12T01%3A48%3A09Z&sr=c&sp=r&sig=OfEDuZa4kIpEOBvOXgyW5TTOeQotxx27Afwb61HLhpw%3D

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:48:09 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:09 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x22BD479D12D4C80"
content-md5: oVofzWKWBdNTtmg6O9lGCA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e4632ead-40d2-4d5d-aa37-fa8d8c53730b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:09 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:09 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-b203551f-df8b-a98e-7338-34e0391d6696?restype=container

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
x-ms-request-id: d3da1712-8920-4597-8edd-df1f5e1a00e0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

