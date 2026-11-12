## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0079ad05-a3d7-96ff-36df-0d927e509744?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetPropertiesAsync_BlobSAS
now: 2026-11-12T00:46:53.7649012+00:00

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
etag: "0x1E176C00CBBEDA0"
last-modified: Thu, 12 Nov 2026 00:46:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 62283d2e-a19b-41c4-9c0d-d26de0306b6b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0079ad05-a3d7-96ff-36df-0d927e509744/test-blob-67a9081e-a627-6ac8-a7d5-07459bee7638

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
6WFG6UEDRXuXZFnjPfiHCJ/athqL58Zf5Q5YApu5+0dp1agdCq0CG8It0MNM5SyvTf6mwThbrAKa
5wQyqkPg3WgReWhQav7x15tYXhYDEgDiqbSdEzkPDimlgiOp0HB+TfNaOmvEXuMAtOmdAk7rl9QE
UACOQskuAms/qujaSAcq2RAjqNiUHUrRnF9QcgvauupPpIBw8AopKzgAhbT6Jmzicik9yO78bzK1
vKZq3o9fZPD9iqOHuekG+n2flJiW13bybf/inPH7UzVOujNjv0ypoCDD/ZvIW7g/N81xXNuZH+Uw
d3CPfMj+AjduOf+2ojow9vN40traKhJHo2UkifZZtJpNMkfcGSNXxfpjWiK5iZSTQWboIU0LVU1e
SNlj2nhBFIRkaHDzVNzPIA3fd8/wjRrQkEiPcZNNQt36ftFK9OqCIkWdVCAkoO2KGABALN59bbq/
kkkvsaPxFyaS+NUKhSsiXFWKUjn5rPBbBFiSDRX+fBAXimKhU3ChrD36kacXgJPVHc+J8xuBxuVY
1K1KXgkQlHzF8/vJgQnk6KX7/xtJRITFve9FdYj0lsR8SH7DV04z6f0rUYyYC5zGpAt2hcbKD48o
haAayx7z0V03TDiKIZFWyBYdHvL4LbFSf9F9fhD9sjnumtGuGR7eN4AvYb9kO4J6H72wrPCcMFju
x0tNdlJMOZn/m4a/qK74P+ZyyMzy7kNOAl5TTAVIUWp5v1LSkMEt4yclZKD7unYOuGwJKmeL/NgI
/3Pz+O2TtkkcRuhbJa4lReWlzImjUkjnRZOYPicD7cN5yZFOOeo6ka1W33SOspK+5OWB5i9PZawr
DLNZ+3giGFgl4lwd1gv6ajrbTHPTWZIB2llCgQeTKmTlIy034JY1NMYcaNA2oA7Zh3v1cxg4V7Ig
VyAe35dRkrj3OLPew4mjphist/HCyjpLaPmLnrdMrMt7Foh2FlQvytUXP2ha+8TxUcwAi6DAXo3m
03adxfQBq4vnY6wALZDDfewbqovR8W01mUzqTCArurj7kEPdkQXhFpTccpgX8CM8PA60pbQCFOIJ
ZyynFl9rvKj0BZ1N5eznOpP39X7VHagorg8SdxQD+Xth1CnYOQA1cLbvI+uG71chzGshCx9kNEmD
fmdPWUWT8Awh6xDCDgCTwoTH5fq9or+38Kqp4u5b/aDfVbqY5RdxWzLfZANGXr5rjkmbnE5Pxdyo
mGia6g4dxe5w47hF+txsVorH3j28cJHsPlSlwGBRj4/e70yu1nEjwZ4U1XsFJZNsL0XEh+ef6yfW
rqu6eAWOH1MpZguQvYAZoxyeqJoW5hjAOZAbjQioPgMk1yfFaUiZhrYn3L6I23HFq+TKAUOMwA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EE6FF2673C6B40"
last-modified: Thu, 12 Nov 2026 00:46:53 GMT
content-md5: F4RFXNzTL2VEQWw7HryWmw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 382bd698-c290-4448-8797-b0fa9e752ecd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-0079ad05-a3d7-96ff-36df-0d927e509744/test-blob-67a9081e-a627-6ac8-a7d5-07459bee7638?sv=2027-03-07&st=2026-11-11T23%3A46%3A53Z&se=2026-11-12T01%3A46%3A53Z&sr=b&sp=racwd&sig=BHSQFRXB5xW2GxITQ9X46yH%2BblMU6nhRsx4ZdFMbHIU%3D

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
last-modified: Thu, 12 Nov 2026 00:46:53 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:53 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1EE6FF2673C6B40"
content-md5: F4RFXNzTL2VEQWw7HryWmw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c3bac4b0-5415-41ee-9c1a-b81418d74c9a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:53 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:53 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-0079ad05-a3d7-96ff-36df-0d927e509744?restype=container

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
x-ms-request-id: 6d868d7a-73a2-4dc3-9976-7ba3084af49f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

