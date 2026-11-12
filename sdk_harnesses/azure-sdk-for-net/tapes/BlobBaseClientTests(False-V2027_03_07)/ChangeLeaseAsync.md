## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6701c61f-d241-0fe5-06c1-adf975f93ade?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).ChangeLeaseAsync
now: 2026-11-12T00:46:22.5216411+00:00

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
etag: "0x1CA64675CEEF880"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 74a1be2a-06b3-49ee-ad3d-8edad9afd50c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6701c61f-d241-0fe5-06c1-adf975f93ade/test-blob-4d865ff3-c52b-e92b-fd86-d696dc9e6682

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
nZG50Ur6CtNZPw+SaONGvhP+X5DKYmVamxhquvxPM2haKlvkP2mT+VWy8+y1mIAZPxeC3T/VuDsr
XzYyj0/XCgynOD2IYn6pamY7GG55pAKXUHvkzFUphHIguOAzYGkF2+nfDmBDkdyZ2HLYmqDMsbsz
mz/T8z23frPLZ6qedgn8NTyFmpWiVL6eS/TiUOrSVAYlAMUpMuerKJCtdyky+mJo3GRjRhclkUeB
NKhJ1C7I+ROjeXZE0wNV2nEF9NyUbFCRenSGbw3v/259qP0/YVRi5X4Wj4HrJAhgDWulIJxr7MhX
t1q6QYkFs3kHxisFFnkdog9dft3PplZrJWGiSd/SErs156n6qKP0ENsH5F3dW/fyh32MDW7qhxEE
ThsoY2mZNbRvzy7QI/psaG0CyMH4jsppr8JiRQVNS1+X9VmHzKxxbq+obovIIWSCIKQA6L9PC8BR
vrOnNu+uIYTPOC2h5JzBkVoSTx8/oY1d4CVhTWKfR+qZNg34yTe/+kwG+ek24TsHPldlPbugER0l
SVbJTdMiL/BDCK6PyMciU1XTOaekJ//qWQ8LOgov+CTv0n/h9ax45Mr489iMeHWPQ+plzdh2gSJW
3/PEFvXmEw+Jn/ZIQV2pWlTdqzQmXeGZe/YgyitMeVFdiha4tM3UEt/JA9h/RwGMvHKDmdXtL4IS
K5r+xUnkPSal67ZH8KaHCJlUXVoIGTT0kw24yOB7b1uTpoky1kyV5MWy2lxLRcvM/JA8mdEnCRFm
CTI7K3RFKXtas0ocVDJMvnmUVj/XqU1C68xPP9aJbJx4y8waWrhQbLHg8JKBr6de79pYkrPRjmDk
+UCo9uql0UeupIhlMWTAROmO97i7wTsk8E/7MNnopj1sNmB4qHbGOh9K0gsf+b11l07KQpeoKDgE
hAWaqqBuxf5L+fsDSJxyx7yZce4wBfeRhZiKHmOlww0odCNxLJB+3A0M0//CcU+yV3vaD7dJ034O
CSQH5KeapTXt29R4AZsrGpThJDH3zxNJ18boyrRW3qCkYiNsd/hlci7K1JZ7Olbfr/QiaK9NFjoQ
vgzhstqAlvwz0554v6Oce7EDLfp9zZxvCBu/NHbxV0zpXLjrg79TST2aR2a3Z+9Rhez9Sek/kvBv
cqq/wGKGQnxSjmPqsffysOO84oY2t6Asbq+J8w1iqcnHexEVlIjbFAXqZdiMZtP1C5kGg69qOboJ
k1Ky/E9u7+WZIzbl3Bta4c6BS1HHnwfblOhzXCYZXUFXCwE2KBe1e3bz8kOdDy59q6Lh6e5oQvNK
1mhm+5O/gMX0jtAaJLi3y8/b06zDPoW59bGEOHNT7skN61KvToDiNHJ9qIBdY4bpKh4ejG5Hhg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EECE9A558796B0"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
content-md5: YTixxvFKJUYFVH+2QaBGzw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e816b6da-98e9-485a-a22f-1b31e716ab2c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-6701c61f-d241-0fe5-06c1-adf975f93ade/test-blob-4d865ff3-c52b-e92b-fd86-d696dc9e6682?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 05ade298-3ae1-5148-a19f-070d3965077c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EECE9A558796B0"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-lease-id: 05ade298-3ae1-5148-a19f-070d3965077c
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 23bbe1dd-8472-479e-8c87-b6fe138f3d40
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-6701c61f-d241-0fe5-06c1-adf975f93ade/test-blob-4d865ff3-c52b-e92b-fd86-d696dc9e6682?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: change
x-ms-lease-id: 05ade298-3ae1-5148-a19f-070d3965077c
x-ms-proposed-lease-id: 399ff94f-9546-5b04-922b-9a0e5534625b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EECE9A558796B0"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4c0cfbf7-2b01-4779-b24a-ff128d80d1cf
x-ms-lease-id: 399ff94f-9546-5b04-922b-9a0e5534625b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-6701c61f-d241-0fe5-06c1-adf975f93ade?restype=container

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
x-ms-request-id: e385a8f5-cbf6-4140-96a4-13c62fdbae2b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

