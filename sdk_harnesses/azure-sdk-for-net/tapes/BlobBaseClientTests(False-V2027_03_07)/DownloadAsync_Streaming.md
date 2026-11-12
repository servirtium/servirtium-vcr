## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7e4f3c03-5d4d-2c1e-90d1-e15fa29918ea?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_Streaming
now: 2026-11-12T00:46:41.4155444+00:00

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
etag: "0x2772F27770B53A0"
last-modified: Thu, 12 Nov 2026 00:46:41 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 241aafeb-a40b-446c-918d-08929a6bbf8e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:41 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7e4f3c03-5d4d-2c1e-90d1-e15fa29918ea/test-blob-eaaae790-704f-f26b-2583-a047e940b0cf

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
ssqCPP/z0ae4TENuK5vKV9gQ0G6ZtTWUOtBBMPTjbWkqyl1f+UXpEGqoxgAarwH0B4mHkcmpUPyV
7QEusaGy1N/ZRGA+al2TJ78E8e80eovOTShrW9uggHlgyQtDul7J9vEhQGugtZwr82oJpV8NYXJ2
YGR4R3gEOcPn3qFST21hOvr9EjogLZeLP2dwl9saU2iZzVr5Ua54HQanudf72aT9p2tkEE44VjLN
7AcQk6LnzIs4uYITaOlMhPU0eHS/kGbDc+9wtUIZYHYnK2SmaIpkv+xMwiAh6j6BGIxZBN29DVyh
TR+ydxdIHlgL6zyEpRxrz7iHcs1GoYmw7p22wFyZaR0HBRpqskfVBKPIFv4C/XNv7TQkNpqPW6uW
AYl5kV77coEefZ8BAR1wsm4pfYuKrvEqR9ModDOCeKpv07C+W3NFzKR943/TbuwXs4MsZd0gDFKY
T0mL0v1OmwX1ki1sslb647HmDctxV9jmEMGvVhLMTsddJgwpuvmnL0d63du/qgEtMYEsOf6HJvhx
pMI8nkXyKENlDotJ0Sm3P96D93n9JmW/giSQoBXI1gAUuBU3apABh7WYWZx142BYdPkgAy5+dH1c
fBsgYogunDiLNRkTf9RNgnDEZM3JSZ7EOCsbqNLRlUSX2+514SUsab1j6q5GRPUk0oG+ug+wkjJ8
WypcEvNlup/Ue6Pm2KBLl/sPZl/wffM299VQE9o15km7+IX60FfJ/TAOcclRPfrgcyMToSzSi902
JhseFKbFn5VaK98bUMekRmgv4gwq5LnbcJ+3IUUd6Gynw6k7q+iJSdE09xIbxSNcb1rDoqnRDEJi
QqQHDX5PPEJyc4wdaJt/ppk69uymwKp8W7HrWkbD1bdn2WhDgjtS5LvQqFKWPge+Q/wQlxZWu4L6
irLNY+L8r53Vto4zPCRd5xEw1RdX5hypLRZJsz6gEB3lSfeIhYHY1Pm0wYh4iwfXsrAFJeZroqSV
JDbMsvtfNKVxTfIs1WGQVwAdoySUMaEPcgGNm+o3eqZT8mFKDCL9VYziBz0Uqt1Odc3lTf9/AfKU
vED60Zm7OdNM2eIARUveH02Xsipk+scjPyUcUi2n0/FutU/iA4TzJ81qyNH7TS+CBi2y6E7IMMJ5
1pJznuelpQXwko/7/BzJpItc+jL1KPH2mkv/9OuipYWNaCzxf4jlxCLMCrughwoQ6ETDbDaPhK2g
fQOcprAZTe0JbZPw1yQCdjUPKB42VRJB7wun3zlP/eR+UAKESR5ysr3Nlhl2IBEfwPUAgFuPaifx
W7akcm20unCvcYYifS0XnXVgaL/5ys/6hx5DT32J7ubak+1nzkBPGdupx66L/UPH6OLlLwFo9w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26FA4741E7CB8A0"
last-modified: Thu, 12 Nov 2026 00:46:41 GMT
content-md5: Lw0O4a3N5Qi7I2Lcijdofw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ca5534e9-8a1b-45d1-86cd-9dcc1ada8917
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:41 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-7e4f3c03-5d4d-2c1e-90d1-e15fa29918ea/test-blob-eaaae790-704f-f26b-2583-a047e940b0cf

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:46:41 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:41 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x26FA4741E7CB8A0"
content-md5: Lw0O4a3N5Qi7I2Lcijdofw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce2e20c7-c1f3-4697-b904-49cdbc4fad69
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:41 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: Lw0O4a3N5Qi7I2Lcijdofw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
ssqCPP/z0ae4TENuK5vKV9gQ0G6ZtTWUOtBBMPTjbWkqyl1f+UXpEGqoxgAarwH0B4mHkcmpUPyV
7QEusaGy1N/ZRGA+al2TJ78E8e80eovOTShrW9uggHlgyQtDul7J9vEhQGugtZwr82oJpV8NYXJ2
YGR4R3gEOcPn3qFST21hOvr9EjogLZeLP2dwl9saU2iZzVr5Ua54HQanudf72aT9p2tkEE44VjLN
7AcQk6LnzIs4uYITaOlMhPU0eHS/kGbDc+9wtUIZYHYnK2SmaIpkv+xMwiAh6j6BGIxZBN29DVyh
TR+ydxdIHlgL6zyEpRxrz7iHcs1GoYmw7p22wFyZaR0HBRpqskfVBKPIFv4C/XNv7TQkNpqPW6uW
AYl5kV77coEefZ8BAR1wsm4pfYuKrvEqR9ModDOCeKpv07C+W3NFzKR943/TbuwXs4MsZd0gDFKY
T0mL0v1OmwX1ki1sslb647HmDctxV9jmEMGvVhLMTsddJgwpuvmnL0d63du/qgEtMYEsOf6HJvhx
pMI8nkXyKENlDotJ0Sm3P96D93n9JmW/giSQoBXI1gAUuBU3apABh7WYWZx142BYdPkgAy5+dH1c
fBsgYogunDiLNRkTf9RNgnDEZM3JSZ7EOCsbqNLRlUSX2+514SUsab1j6q5GRPUk0oG+ug+wkjJ8
WypcEvNlup/Ue6Pm2KBLl/sPZl/wffM299VQE9o15km7+IX60FfJ/TAOcclRPfrgcyMToSzSi902
JhseFKbFn5VaK98bUMekRmgv4gwq5LnbcJ+3IUUd6Gynw6k7q+iJSdE09xIbxSNcb1rDoqnRDEJi
QqQHDX5PPEJyc4wdaJt/ppk69uymwKp8W7HrWkbD1bdn2WhDgjtS5LvQqFKWPge+Q/wQlxZWu4L6
irLNY+L8r53Vto4zPCRd5xEw1RdX5hypLRZJsz6gEB3lSfeIhYHY1Pm0wYh4iwfXsrAFJeZroqSV
JDbMsvtfNKVxTfIs1WGQVwAdoySUMaEPcgGNm+o3eqZT8mFKDCL9VYziBz0Uqt1Odc3lTf9/AfKU
vED60Zm7OdNM2eIARUveH02Xsipk+scjPyUcUi2n0/FutU/iA4TzJ81qyNH7TS+CBi2y6E7IMMJ5
1pJznuelpQXwko/7/BzJpItc+jL1KPH2mkv/9OuipYWNaCzxf4jlxCLMCrughwoQ6ETDbDaPhK2g
fQOcprAZTe0JbZPw1yQCdjUPKB42VRJB7wun3zlP/eR+UAKESR5ysr3Nlhl2IBEfwPUAgFuPaifx
W7akcm20unCvcYYifS0XnXVgaL/5ys/6hx5DT32J7ubak+1nzkBPGdupx66L/UPH6OLlLwFo9w==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-7e4f3c03-5d4d-2c1e-90d1-e15fa29918ea?restype=container

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
x-ms-request-id: 1ebc5129-9785-4e61-a138-b10a632f1a8a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:41 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

