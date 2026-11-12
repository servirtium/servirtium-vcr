## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3c36542a-ff2d-ad93-9d8f-38f73875ee0e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetTierAsync
now: 2026-11-12T00:48:25.5517723+00:00

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
etag: "0x20525459B380B20"
last-modified: Thu, 12 Nov 2026 00:48:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: adebf525-381c-4c48-8ddd-eb3b28979347
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3c36542a-ff2d-ad93-9d8f-38f73875ee0e/test-blob-774caad2-d8cb-f228-ab11-504ffaae15b9

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
Gu/5xH3VfZnhtgx1dGDFaLhac95Ej+NSK0OQHK5Es+55f91JeyqR/C2ylRXLsn5LS+eXoDo2dYsL
ppg5RWDqnQId+/SDfO2OyHexkfnOh3nFRdHHrRKzQwlRPtWRWLfNyPgSrbaJx8/6CdfDheSRPB8f
dP+OI/DwabjrMT4X/W+/5MkAvNnCO30CzaQ68L0lwAG2ceS3PqQIIkT+npWQ4gtoBKEakYBFXTiB
jFZMtXn6xXE8YYuLCKUk+JmVw5zoceqY0uscCi6AcBOrNbJOvG3KA9gkVICA3Pv79pjmsJmcmRpr
tOKN3rpCvPF339Pz1TwsysDDxB1pF/XwIBSWmb96D5uX4giKPSUd4ZiPCP0oByBcuubZ2NX9AZzs
nb2mrCIy/c83XPMzoY2bpuOF2g/4yBj0Od/YoDfGmeFrnqBndzR1XQot8KstKBhZPjHyeCeN9NSk
sXNCWVyXccMRxwPsMy6uD30EytdtxhDHf2IF1CC53qnLwsXBMwSulX/oG2EUbAoDQ2mpiCn8N+tj
e9n6kp2iWOhZIXFo7dt5VjRYhauvshJYApC3EFZ/zovaXbcqswPiRsN4ukuZm1aNMDL1pLI/tMnG
oZAM60eS2VLljY8kTqIwdj/oNvfHvmY5Kd8jiirZm6nuYxFz1Vp75eH5sw3HaeGQxC1zV33S/+Mp
08Fobk8nDPLlNuuQvaDkbFEWzgtZcsD+k8X9ZUMsHGMuSgKZE3aR0aca4TP2/weMj+oruzHX0GAB
atuJKqauuBmHYXOeSlnahPxkPpCMB5O+cNZYAWAyVnqhmKmbB6cAbCkZbp6U7kSRUTc1c5HPdGJH
y7rQVre5VQr4/LKwP3xUY9Jnc5n1KoGRx68p/OPo0SNHVDztLxZxXxmTm/GS4RK64A+/aAHIUaA4
Po4HkFgnECuPaOpAZzS89ROAYo6Q/+WdbhzTKWkhfgKctPGHas/Aa4vGA3gnenjbA3LuSO8RqD6p
aSE8VOfBbernpLJCNItEv/YDyfxsdvSj9yX2MzUTigyy3QCthBekBJWNP9bFmc7mqYn5Dt5CPPMs
mF3Byzm11BmmkFeLljreX8Vm3jYe3l5WD4msGnsucKEMgOy64jlc2Gq8Hwh3WxNOGq4Y2128Drr+
aruvCLqedx+2fhVOJH2MCgbMYr5V37R2Xv/MFpVDT3Ixu3d9rNCwHajpwdz9//YxjNBX8Kv7qYsH
Oaq70WGKci+iHGgFDl41G0QWbB7XeF4JmonE61/HNhLsdnIl9UxHXk6tW+KNLH1xIdVm5T1tL8FM
sjbXxYfQ2+ZWGZjsECb4zw3PKh17e24LU8mKYFDUfkaw2UMVb5jG3X/8NxLlhRGubhYvnQWk0A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2177FE89CB79020"
last-modified: Thu, 12 Nov 2026 00:48:25 GMT
content-md5: 4NYehQOcRM0fBe8+/JWnWw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2ab50863-435f-46e0-bc14-76323a39f7e4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-3c36542a-ff2d-ad93-9d8f-38f73875ee0e/test-blob-774caad2-d8cb-f228-ab11-504ffaae15b9?comp=tier

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: Cool
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
x-ms-request-id: 392e4a26-0a8b-4021-ac15-8284a45d085b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:25 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-3c36542a-ff2d-ad93-9d8f-38f73875ee0e?restype=container

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
x-ms-request-id: 5b716619-4aa3-4899-94ee-d50f3c5936d3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

