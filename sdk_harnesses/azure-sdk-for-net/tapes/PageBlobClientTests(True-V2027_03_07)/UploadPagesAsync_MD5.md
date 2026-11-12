## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5af51b26-146c-ecbe-b755-b8198b5d9c6b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).UploadPagesAsync_MD5
now: 2026-11-12T00:52:03.6938259+00:00

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
etag: "0x22E79CA47057FA0"
last-modified: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d2b8d21-479d-4a98-83e6-b41502e21596
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5af51b26-146c-ecbe-b755-b8198b5d9c6b/test-blob-8febda06-24ff-da44-23d2-0028106390af

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20E58519BCF1600"
last-modified: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 65d77d0a-e966-4ad1-a13e-cb9ffad2dfc5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5af51b26-146c-ecbe-b755-b8198b5d9c6b/test-blob-8febda06-24ff-da44-23d2-0028106390af?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-MD5: xiPDXW9PNWOxM/mdITJf1g==
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Qkh7E8j5OlON4zpqomARq/sf5y49lCqCMXAMsFfWec9PK1Kx5gVxLeGizIjZU0pXQw0da3ZtLa0e
+OJY7Yn8t2prG3YNYMX2rrpNm8ihqd0ltW1JuA1Z4f2lk+4iGUBXpRQebjjUSeNHJ728H5HlfE8E
Mjccsv9cEjl4aMzX05R59fazgzqlUWuJApFQnMFswBafHeYIO/IVwVz+W+EWcFMoQiqbMfkUX+HM
k7BtC3V3DKe2N7aucboEncHdp/aKcpE+KFqX0Y4dir4FPKhBqLXnhk85YDicetFvlpQ3NrfrQSAe
L+Ma4DsZma33qDQSwvUM9iGnURJZoa6IKDr65VMGGvqHI3jSzKYTIMaKpdGcXdSfK0CWRPAOxY01
krcAH7Na8I46ip98OSp6kzFLzvvc7MtlWroTb9UKeV7rnTruEwATMLRCYtI1IvEVHLC/w/aRWKXs
msT5RoC4MBFBkZzwjIAwOJ1Hmon4MDjJ/VMlSrZnWUWUAXg8Geo0iTLA85FUJY8wj4pYSr4b82qL
L0gsk+Vb2TdXW4oI9B6zEhBXNzymdNjE9LsrDg+GeA4NsOmhB/VNZRpZ/ckFKJtspTeuxLst5Ltw
aJ8pL8so0ON8+kM0EQoaCtIiTXcPv8sgvmjX2LRS4MsuMZ9WIzVOMSzliC5XOJMtk7npCpdEYKjT
CXFiUfcuKhl4BeBrw+ac0xtKKTadyYbVqkX6aNUz6tD2gxrE7OA1t14U3jKzwdDTTTd8+TZyNT/q
jaeyNMFDRBsPdEDM1+c7FXLYiOpTIuh1Jxuet/CahE3a2V84goKc0ZoXo02PBnVQQOTEmq1Vlmu+
PQympI0qdfDz8f2HApLvO7dQPH6b5SClTnYM1eqfhUP0eUV19iwM7S5cmxV3yD5R1F/1BVrsI1fs
AVUXHZ8GU2y6k4hNekSKRE9QPkkLLYY3uwGKqoDoB1btifTW9M+PVkiovTS1A1oaa8EKnOUO4NTP
32Kde6ns0osyYPBQs0+AwegBY3BRgbencD++3Wtx3qkgBxRs8dqfvOupg6Nqyrdxitv9DX1jfV2r
9gpqLfQgwYFGL6w6E88NYqaFqP4TPaaHTVKPdNEsvYm2wfvPNI/2iMIhI5oKNncL76vW3tVfl7hk
4t+hkE2wGXIihFHUPS0Xjh878RkLfRbbg4QmVt60VypCa1GvVfh1cQko57IlN7J9vlC1I6WfWWXJ
xQzIicOTbiwnkdHbaDgnxoAP4pVktkzRqJeN/jOEoxLs5o/rrOhGlHmF/aXgolYXjl0lj3bQZQ/A
9+EsBW/5o+6/7oGoOxmXyU4b3rim8AZAdnDVXxOcHIGAKrUHGY4KjFq3IbPUblJEjcUntIZWGg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x232A6C667B80D40"
last-modified: Thu, 12 Nov 2026 00:52:03 GMT
content-md5: xiPDXW9PNWOxM/mdITJf1g==
x-ms-content-crc64: rFoRG7WL9E0=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91dbb409-de8a-4ff2-97ca-d5bfb24153d3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-5af51b26-146c-ecbe-b755-b8198b5d9c6b?restype=container

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
x-ms-request-id: 08a0fb7a-428e-4baa-8518-54b2a236545d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

