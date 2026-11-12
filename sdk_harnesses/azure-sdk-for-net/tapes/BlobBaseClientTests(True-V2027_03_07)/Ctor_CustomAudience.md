## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d4a67ef9-fcc5-7cfb-55c6-0e5f43fa16e2?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).Ctor_CustomAudience
now: 2026-11-12T00:47:43.7798173+00:00

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
etag: "0x1C98673B29DCD20"
last-modified: Thu, 12 Nov 2026 00:47:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 44a78611-c708-4326-843e-e96b762c5b68
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d4a67ef9-fcc5-7cfb-55c6-0e5f43fa16e2/test-blob-ad592ab7-472b-efd6-e492-b99abb4c2cbe

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
psl/cxmAlkt9szblkDDottgh+Mps7a1AfaAxtTq0U6OLLFRRaS7qeehbVxHGFusl3liHIgJLdrgc
P/Z4TuARyGCTWWTblk2qNn/iEZabeWa1DNfiLTCgQLacNSk3cSoISY+xM72HSUcK3OuDaWUigMaQ
w0IJL5ow8hmuP2EjcsVU2ccH6kapLcKP11FEHddRerRjp63o/xr0gECj2Qrm52kmLo+dGpZ/55Z/
eVhJ69RCXcWtwMsXa9qtEmkFBVS4qe/nHe9Hs18d48AXaYXCq5VsYXxFOSeeD8K08ActeuFBx9Bo
Yc3l+qllj9wL/wJV62bTmKPXcm/ISA4sksNX8Gje1aK0WUnHhmfS36lKkg/AXwWgWeE9aVRgoBm/
uWfmDZ9zLClgoJEdDBE8BZPGfbX+azK+t5aGoGxOVLkwCM3/7NIK1mbmYL9zg03QAWTBmiJjwE00
J1YI7Iy9EkzY7ANEPBjAu6ZPFwtzSjNJtp4HjbmWzUd/y8R7AenaKU5zm5dJi8VMAN97E6hCwd0j
vzbttYSSQR67xHFTRbm9de69AK+b/yrZuo3aGrqfPQrnWEGz7HPJ4Fl5jsdU+bolvp25hcAuh8AL
E/r3uCdkHIZna+x4CYh78yBWInBjhcHStVwc5bhJudGBqNl40ScyFHJA7I3NrbUUPpGg2GRPp445
JQPKRzbOHbIb9mCvAiL4Iw3+Ipg0BAinB6cmqOBtMQFLP6skZ807cs/asrZUZTtvp7RWUYX1BSH6
Iz+PqHTRrsRfZMN207xAw7DJWVFRUqJrtwAsFuB7VTmKKUONq8laCATx9QB3+NT3Fo3UK6vPqNCd
JPBzpZfj4w+J66l4shfmb1BNYF2i874sNQBSpymOu4Bz8IfY5mNsDRHx7Q0qf2N27bxagkhz+zAy
R3CXkDzl+zAoBcKPDYnt4FJLsAaxArad3LltMzk4//RXpp/z1XzVDPLcAXmg5uAzbaH2KEopgUS5
+rSCd8f38AbOOGfp+QvVdaQU1AE8/PXZOsaXQdeqLSRaOdvIUpQq5RBz0q54SXOWILKlFa1Cff2/
qT0BX64vIwtCj8AvDSIQ6e/xySpHYPFSASAkBBd3GLzeCalXKIVhRK6jNbqzZhOPlSy+UbPSd0hM
r16OCh/zy3YEUQR5ucFpj4V7pCs3n5sNlG/rucYIC5FgCnkm0zmPr2pDrhQPFttrVMEuVtMdFQ/D
gHWwCBKw/EZyGK5HQrxL7PTB8/CG/X6TgGUE2bS9QvVpY1LD3qdXkrLOnP0tIxEF4mrfXCEfPIP3
HYetqyKRtNW43d9piA5MaWE9uGCBZVxT/vZK3ubUSibPzMEfquaQPOgndEUxnFpckvO/4YQidQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CF6A746E67E0A0"
last-modified: Thu, 12 Nov 2026 00:47:43 GMT
content-md5: o7LOPl12QWEVQVbI5gktOw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5cc9eb71-7206-4d87-b6c4-3f9fcaa36be3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-d4a67ef9-fcc5-7cfb-55c6-0e5f43fa16e2?restype=container

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
x-ms-request-id: 8f2e1aeb-8282-4c0f-9d18-9cb7e8a56d59
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

