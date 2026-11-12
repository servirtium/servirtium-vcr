## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6768a20d-9173-e8c8-0f76-e81ba00468a9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).UploadPagesAsync_NonZeroStreamPosition
now: 2026-11-12T00:52:03.9045539+00:00

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
etag: "0x27A0F3B798A1F20"
last-modified: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b630b56f-550e-413d-9d8c-154f7271db57
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6768a20d-9173-e8c8-0f76-e81ba00468a9/test-blob-179842de-8e4c-e73b-ff7d-4c18cc92bcdd

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 512
x-ms-blob-sequence-number: 0
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
etag: "0x23E6EC7FCAF5040"
last-modified: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 796f3b99-c9c0-4c96-ad18-ccf978f54c8d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-6768a20d-9173-e8c8-0f76-e81ba00468a9/test-blob-179842de-8e4c-e73b-ff7d-4c18cc92bcdd?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-511
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Ql2Bbd+2fTlc58Fi7M5SLrMqQRdt3hcjJ1GcQ4jzXyjIok1wPezHtVS7sQ9ZIOTwBXJrUBvAWWRF
XUaNGjqwaYiZmkmB4fHHY4vDsiwIyQZsqz0WiA8MB0npK9+mOZsaCkeHwIaabyOAo+yQ/ac3PJM/
IW/8meF5jZMAl7YRICnwqaflgQmA0TsaluQifAmhse5MZhgrHnFmDTLzmtdtboPCn1T/UruJv08z
4QP9VhGJXubIxboRxIs2fnPWjTdjrSdhX9y0ol4ywqfI9zxtaLchaTvxpanIsdrJydNIszEX0DTc
nPc01LyHlQMSSM1OyBa8tCP7cgd9mK4B69iK6g91sCcHkcy/7ZR/aQ+mtWgNegC9i/4OHF4tXgNI
Munj/arznZelRzdJ/MePfAj31+JF9HDXzF4RZ5TJ2jPId7qqm2xkshjQZzPJdI82fp9VNYYhAj54
DDBM4jYD3G0DgIUM5OCckiXJdYw9DVjO2uj0c6Wsp3R8MY88GM/izYrFxfMKKpq/uaJhV42xO/7X
fQhNDmnIV9kRkLJQYHpV56cBd0hlxLBONboCSk/myvaRZJvHlL8h/W0a+ZnnblgnDHDmsMO2crhX
/9iuxQ2JK8W8v/vfjlLn33raSssWZsZh2j3f/xoz2/Lib5Xmczhgkc7UK65cSH4d/tBJ2yftQZg=
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2217A10934D8080"
last-modified: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-content-crc64: ALyk7KnqEBU=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c53db74f-9f9f-449c-81af-3c4d67b701da
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-6768a20d-9173-e8c8-0f76-e81ba00468a9/test-blob-179842de-8e4c-e73b-ff7d-4c18cc92bcdd

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:52:03 GMT
content-length: 512
content-type: application/octet-stream
etag: "0x2217A10934D8080"
content-md5: XgQd0OreTMQetr+eJj12RA==
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d0cc45b3-6434-4098-9909-de7f4bab5aee
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
Ql2Bbd+2fTlc58Fi7M5SLrMqQRdt3hcjJ1GcQ4jzXyjIok1wPezHtVS7sQ9ZIOTwBXJrUBvAWWRF
XUaNGjqwaYiZmkmB4fHHY4vDsiwIyQZsqz0WiA8MB0npK9+mOZsaCkeHwIaabyOAo+yQ/ac3PJM/
IW/8meF5jZMAl7YRICnwqaflgQmA0TsaluQifAmhse5MZhgrHnFmDTLzmtdtboPCn1T/UruJv08z
4QP9VhGJXubIxboRxIs2fnPWjTdjrSdhX9y0ol4ywqfI9zxtaLchaTvxpanIsdrJydNIszEX0DTc
nPc01LyHlQMSSM1OyBa8tCP7cgd9mK4B69iK6g91sCcHkcy/7ZR/aQ+mtWgNegC9i/4OHF4tXgNI
Munj/arznZelRzdJ/MePfAj31+JF9HDXzF4RZ5TJ2jPId7qqm2xkshjQZzPJdI82fp9VNYYhAj54
DDBM4jYD3G0DgIUM5OCckiXJdYw9DVjO2uj0c6Wsp3R8MY88GM/izYrFxfMKKpq/uaJhV42xO/7X
fQhNDmnIV9kRkLJQYHpV56cBd0hlxLBONboCSk/myvaRZJvHlL8h/W0a+ZnnblgnDHDmsMO2crhX
/9iuxQ2JK8W8v/vfjlLn33raSssWZsZh2j3f/xoz2/Lib5Xmczhgkc7UK65cSH4d/tBJ2yftQZg=
```

## Interaction 4: DELETE /devstoreaccount1/test-container-6768a20d-9173-e8c8-0f76-e81ba00468a9?restype=container

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
x-ms-request-id: 26a71897-1b09-4ab5-b26b-ae495648c9f4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

