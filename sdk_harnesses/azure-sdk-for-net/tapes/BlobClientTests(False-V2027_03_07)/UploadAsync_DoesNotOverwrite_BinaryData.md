## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-96368c5f-eb36-4dad-a80b-4468ca331001?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_DoesNotOverwrite_BinaryData
now: 2026-11-12T00:48:56.8014598+00:00

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
etag: "0x26B63E57C01B5A0"
last-modified: Thu, 12 Nov 2026 00:48:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7f62dfcc-caee-4bcc-b87d-b15cac512ac4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-96368c5f-eb36-4dad-a80b-4468ca331001/test-blob-cd723e04-1ea1-eec5-f055-bea4dcc809a8

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
/1u0R7wjS9IcAemGcY4eqZ+OO2DxAE9Ax0il4SwIcOACnGlvf8lF4fKgsaA1Pn1iNhUFTYyotv4L
c390fmqlFJAIhNQlryrVSFpuUU+vC4jLQ6oXAyJTWuZqYwtJ0WOH+p0PLLqoPYfrLwQyOWSuXGj3
qTvAjhBttCruuksejHf351eyoN/OIgUiLNMdISCBuwejUigox2uMoXePuYI7zKKNOlIN/LyJKYY1
nWI8UJMJbf5EezlPzyDrJv5nPmmC5l8xkObOc79KGimh8ikIT1HkhUuE91FoPWsyIda9IeodsrcD
C7+sO/o++mAQrtz24tetg7gd/u8NyFN6m1Hpjfg+hEByBUORN0lRRfzwWI+POz/+D54x/7PH9UNr
MaCoVW1o0SmbhN2UG0tuy7nyHG/E6l8S6n1aDYSNqhD/JgWpqe+PiIZl9LZiavNSwjT61NnUp0dA
lmvvDsSkDtrNlPVFxSLJY5PoXvapsH+JB0pQktU2K36+aROEn3rCwebclNb+DP0SMXFF60lQl+Xr
Zgd5VHsElml3h1wORMMZJpwQzBupi/pNPWFk8T80bdEtmTlzSWxq1/5shoWgA+yuK8SsQMrJQdsM
KxYaoKQpQhmK4KqJpt0wpfQcPAR0rDp1tcV7hy0HY1deZh1WUDdaQ0NsFiJBJIXnfJrVrQTXmH/c
pererrvsgn1SKz/A2lW9wvnACJUXM5FAkwqSMrZThs2deatMe5SIf5Ol7vlFJ6JFF+oKFpDpxXFZ
nhqwWlDG/6RyImCqcEdkN4gCcUSY+mxoTBrLSG89tLM589x62CVD3+5U0wRBm6ejpd8H51QswaSt
Rw02+rc0NG6tcHxq6l9ivpJVQydoJrFzJ6KQNc1fDDI4zJAYDeQ3H56WlCoqObt/pSjB1n19RSFb
w9MUpP+hTWNKMh7PSbGtHiSI0pKHSO7nEZCknTa0u4dvvEoRI3uf9UfG3wedsFt2FLhZ9HKO1Hrk
LJNu/K8tlXaWYIxnnPqo6N1LwGjnSmA0LYl9W8YU4OjPLPboMPiXmUqQBk/OD3e9sAyVQxQR/eIy
Os4mrzqwgoCkmHAEwLfksyceVkQRZR4Sv6q6fpzTvS8UtvYqcekQ4IPPKXcHufBUsZDs86aeIdSv
E++P9QPj0NpA7wnBukI+DXbAQTunCwa6Zs0M58qIdpUhel35gOqA61mcxsrmkvdOruUv3d+YBwjp
1Y821+kQuHl0nz/kRI2LQFXiC0Q709PWvjjkWZi1iXNUD6tbSRRvjA5QcfO4aWlYo52KtvzErQK7
YBmxK17hvxbLjzXhMPZAc34262HgHVTOjLX7KtJ3kGGpn+n7vmCvb7Ld7Nk0d3OmSUJ9jcKg2w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24D3F9F28746660"
last-modified: Thu, 12 Nov 2026 00:48:56 GMT
content-md5: hX5c+v1hHeD7Nr3GImt0EA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bb2f2cd3-917a-44c9-ba45-b9cda17bb8cf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-96368c5f-eb36-4dad-a80b-4468ca331001/test-blob-cd723e04-1ea1-eec5-f055-bea4dcc809a8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
QsTin6nllUNU/9Q3kA1FtB6HfK8DMXuaFEJU4JD5A54IxKY328AFiRyZmNpgP+KYBI5fBkbx2BFJ
SIpnkbSzWvw1LsxnDtldgfKSaZmgOtVfu9wBmvxYF+uV7ZM2nvho5j3dKhAVMfa0AYRTXm94qA21
B9XYscD/3Bfh0iBFJ+L6KYNcwg/FSorlTJl4BLh8HUWFgJcikDR93k74NF/Vb9qiWTXrG+X+771L
8mQmh9heZbTbv6ZL2JlO3uTBzBUqEN2+1auDkAFfh5Da157QVld2ms+q+q8zV4GcnT0BPSOnIOKH
aLEs29SzezgVcAD6foiMSjJGgBUtin4p5/PEXkltMra8Se2mSb769353HuaAoR60dPLxYKDMWd0y
AvTh7x3uqD5JPjWa5gFzTImWtmyYqUXUEOpXe9EW8O8Qc0bKGAdhiHaoNmPoGY3wfhQWNaJwmVmu
DN8zlyxsMk5FinK6qDOBNS728HLi7PZcZv28/7pNn9rtHAwoLvFJOwQUo44aNtXhlf90eqjmyyDo
1jAurzOT+OqYzYwmWQc9rLRuzUhnQTAo22q62CUxBlDrP1fAGozQgaqkgmhIujz4N830eP3XgJUA
BtTI2B/FZ8c7OhmwfZEonUyew7/H3yAtwqFXPY1TFL/BvxS4CKiL3huhDIAiSLo8y9uxOb3VOCaz
mhZ9bik56CZa7r19cJWjE+SkJtOgC3rnG3GyodsB7IbtBG2SDXDxZyNZyFn8vltFDSbYMRJTE4+c
llO3hkZLWAI2j2woEQVzsr6vRkIg61wWbZS1Kbp0mvDd9XcdOeHcDnBXxS7vHfsgZH5TpMxNfKr2
oRmxlS9HwvV7ShyOVnnd0jfSyCUuJ0+ZlMQ7IfUjkHnMJ5jHKnhBEAM4c9LfkQ4FddGVe7OFyHrJ
GABqC6AAV7qiwi7hFqe/kbgh9bN9ugO1NqsjjhTGRl8e/RJ31gRjOBwXPM7fJF8q1ur7Y9LGTF39
tNT03Mil3HvPwxiUR7qzvryXZX401hFM+bgqyuKMV7G1eiEvblxTcmBTD2FGlY4vSKUVL+ffyd7C
qOIPehGZQ2tn38yZg1BgQ/Md4cawBWQp+4I9dijK1bFCbMV6Q/dOucz137bClcRUtev0wecYEqJ+
5X+PW8xDnAkbVhaK5v/7zyf5uiauZ2a96cE81hTJKloj+114v14AskKspj6uyc/s+PLAHld80H4Z
0XILB8b1USy7Z+qhgxDJ+QfjAcAnDh/xT90hCQsCpivfX+3s9at7tlQS8mLlSnTi9yVQmc698cNS
Gbfp1EggucG/wiQj3ARcZ0trFRu9DARpPxLmsgxcIW0pmdv0kuEM8TmgJYhQvhoh8zGCUdynlQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobAlreadyExists
x-ms-request-id: 709c2b89-b628-4b45-8660-3634bc87c886
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:56 GMT
```
### Response body recorded for playback (409: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>BlobAlreadyExists</Code>
  <Message>The specified blob already exists.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-96368c5f-eb36-4dad-a80b-4468ca331001?restype=container

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
x-ms-request-id: ab902302-8596-4b24-beea-2c8464e0ed2b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

