## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-61c606e5-7796-12f1-4585-2530c906c526?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).Download_Initial304
now: 2026-11-12T00:46:33.3818607+00:00

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
etag: "0x248E1A9F22D81E0"
last-modified: Thu, 12 Nov 2026 00:46:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 873ffffd-60d7-4056-b54f-ad96f4dc2d3f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-61c606e5-7796-12f1-4585-2530c906c526/test-blob-05859636-0bbd-657c-66fa-955118319fd3

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
rSrrLmtsL5eU8fQPV9khHeoY9YCVw6AvvMpuMRASm4oOgI8eT0rNedcuzKSC4bprZAhFsRBEkemJ
vHGg/f2HglZqANdKAs2gSnuoZvb8rNoPAs0Hzel5ye+llJPZLHvZp0pNGODjIWE7pWaVnCryjRCX
kPowf7Rt8TfopG46xx4Azr6srpP5LOBrzCiC5CzEsgeCQpuBqSiV4Cep+33zAN5Ilc1sRt58nWQZ
xLKM6gwKJPJmt4WDfyWWFs1sUDFjeMxKOk9fV2soBqQ3Z+R1CfYanteLjEhZxRao1jARD0wytkzm
QrC9q8yGPrDgSxdBIAzXUbFa1+yD8XQ5t4E7F/dXBLCXj8dFXfMLBU6YeHn+ZrUjOr2b2N5gY1E7
hPRKSie5iEdnqZFFkfS+T9Ke6nj7O1DMGNw5vCzRNyt2Ctn/wLom3/Axlrwk3anI3IgLwnjYP0ij
fTJKf8sblXJlz4Ybv44YdwuIyaSTqDozceCjxnSzncqQW0KH3F8kFgBKvg0irR3680tsUHWkD9X3
Fg7rd8/9sjG8imNLkJqsY7OjSOksEcPDqdIpRk1U7EttkMVROZ8xTQzcZiK5rmKwwO3CAMbrygVK
J83902vkZ54Y3gDUWikTcvvdUKqgCvtveYZgkuyEgcXABhHRNHmg9/+EoNBi22XDro3LDnpbqh3S
jVnkhNWyk1w6FFQYQj6BPFmrHGkrDZ4hnONeuXNLZVzz/qYgvHMq0g1zJ8YQq2xOSdEhr420p4C7
w+jxU9rp76/4JEOXYYDlgUlcuOXXEPB3EG+hKbXOP1cmZPiKOH8yiTcWGIcotudQOy5DV++a47L3
ekNqSMb6KeTrcf2HW0nKKS+twfdpTlmHUO6Giudoi4BGk707yEBxHO6iPUXqyODleS7A7SK6jSzq
4vfXc5/8g+V8QceLjmHuO6QJxhETnIcOoRG5qJ5diwaQUeVImqhPprlgbocZWerM0bJ9scYb1kVw
ydGNQtpGHrbA+jx7paH8uSBXsi4A9Ecm7Nbs4No/dXqf2NDWwWPeGU/RWF6tUSwQgfimxCQXb9SJ
ZlUEWj7cgYXB28zQJfe8eJjfL5zoeZuq217hmLBWiGj8TFoO2r8R9NfZ63VfQFwA6kyLOEA4oe25
WX/f+ujVa1Nj1Nicrp3ZzTrFD40mSpsC4a5ky1AoxKttVIBAMfrvBIAi+2uDZDyusWoGc5Ffkw/j
3Rk5cKACOxAsL1kcmZs/1QsNBE4vfn1ytRnmIlAaDsFxXFThtZPgH8BbVzXikRjOxp2FUo7AtF6c
xrqGHBi/ESGYqz1HXiB4LeWN0yZHkCQBF1uzlLsysaf1Re7YWQKnnEUUSebah2h9DSSpMuA3VA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C0740EC890F5A0"
last-modified: Thu, 12 Nov 2026 00:46:33 GMT
content-md5: A4+On+PH5ulUDUjbqHolug==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 98c5d35e-0012-4566-9853-75bdd48e6289
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-61c606e5-7796-12f1-4585-2530c906c526/test-blob-05859636-0bbd-657c-66fa-955118319fd3

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Thu, 12 Nov 2026 00:46:33 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 3184603a-8036-40f7-9284-9d0349f69474
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:33 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-61c606e5-7796-12f1-4585-2530c906c526?restype=container

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
x-ms-request-id: 71508057-8193-456f-b130-33d8865e5aa8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

