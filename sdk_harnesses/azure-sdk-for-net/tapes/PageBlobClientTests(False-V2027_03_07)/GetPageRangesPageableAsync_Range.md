## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-24941798-5464-7839-c62e-307c0806fcff?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesPageableAsync_Range
now: 2026-11-12T00:51:27.3193708+00:00

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
etag: "0x21C5ECCACB64440"
last-modified: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a593b8d4-22c7-44f1-89b5-9512b112874e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:27 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-24941798-5464-7839-c62e-307c0806fcff/test-blob-d1210bfc-8ed3-b0ac-bc56-46a193c3a00f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
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
etag: "0x25DBA73D254EAC0"
last-modified: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 161f1b31-a569-4d1a-988d-bf906ccd9179
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-24941798-5464-7839-c62e-307c0806fcff/test-blob-d1210bfc-8ed3-b0ac-bc56-46a193c3a00f?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
2Tv0zau+4fNAtDKvlean+yehFklLlXAJauNoDg6Y5QKNIaPMES9TPiotkB9c/RvWrkt58a1Xw0PK
62LHVtPlqM8vIXND2un4TtgeHQRRrGzIkV/CHvNVNV1fAibMi+dXSOhPLNunk9RigaPUOKY+eD71
/8RzIonb2uwV49jCLMLwx9QcAYCRIf6LYJ1QgPy3IYno1owj4yVedFLvka/7n1Th5HHRIXe+ZN7G
6MHsilrvXsJP2VU2zeOuvY0uoY9Oj8FIb5uL5f8SKnGuXPtkcun3ADPtrMb/qxeNImTpkMNOeFkA
oxu/ZHnDPa7kh3DoSkujNqFcYOL7ScSE/cKaKJquX+ShY87OOJu5Km8XGiOmpdgYRlkh8hd3BVpX
Ome2KBUUNSiMR+Z81f4FojZz4y6h3lfqguFBjGzMKl50dv00AwFaAuX6GV7xnHBbHFDgBCErtVwP
y6Yz0qm7wByIB14A0J41GOBJpsT5+eVx5nAc7CY9ScChJThbJzA7PllBaZQSWkuxq+tA4Q6XFdLA
wew4n9P2S76dX6tm2fGwDWhruI9RX4ska0A7/GexCRBmmmVDAp+FSx7WdPugS9H5j9OmLF1Cb2Jg
FDOSu05W61Wa/z6MbQrJ5mxxeuqQhB9vQW2UC92yIysC4u5r8pDPf4ilBUuSbSLI3EXw0fR30I8U
I3nhwuB46NwTiYocXvPcofpi637T3NNKyy6XwVI2ihJeVs8W7r2oLR1vfuSXrH5SFC/5FeURQEam
lvex4CaJ3f54vQckxbM9ub1hZF3vsx6wRawjPHUtTRaIcFfG90335aHlH+93LU97vFwnsNvot+LY
AJt5ZqGJSm/wnFRcd8JwaX68CZQuORddp38YBZ06n7l07faxfn8AXNR/hpH6H0Wat0ZdLK5OqceD
G74hcETRtvyb54nLvuv+vKy/rrOGYog6fk5X3XMLJkMuLmLB3uyPrs+UXze7zvhaXm8BjvsU/bk1
5vL1etmJkMFGnJCJPd3ALwDj8QNRf69W/H4DCZdIGjGpi/j5mjP2Cs51dDFo0SCRQV76MQu15GdC
n35bhYcq/oJe37LlxpXN7ec12wp+7Spdccg4Tekl86aQt/q1m4RHS3auCfFuq3rJLUMkgAlcw7FT
/RS+8bCZOewMVQ6aF1Ji7Y+Uz+Q478VNbyClAXOdM/NJYZ1wiFrFFdAFYVZrLhXxwZJ5yPTNGg5O
cIGP9Dd4byEaUbW08WU1zrkTM41v4kELtD/gI2v/fEePIhjYNiGZjPI0UdxfPNAtQ/k6ueeA3o4/
g0D3mEu2G9VuJc5MXJiYeqaaOpFkrHdvs+BxxMNfD0SJmbLgofSnfjUH8BcB4OdhoT5B5aT92g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2480F27CE1594E0"
last-modified: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-content-crc64: GibXgpngt+8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c6a222c6-0eaa-4a36-878d-be86b9e09a7f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-24941798-5464-7839-c62e-307c0806fcff/test-blob-d1210bfc-8ed3-b0ac-bc56-46a193c3a00f?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
2Tv0zau+4fNAtDKvlean+yehFklLlXAJauNoDg6Y5QKNIaPMES9TPiotkB9c/RvWrkt58a1Xw0PK
62LHVtPlqM8vIXND2un4TtgeHQRRrGzIkV/CHvNVNV1fAibMi+dXSOhPLNunk9RigaPUOKY+eD71
/8RzIonb2uwV49jCLMLwx9QcAYCRIf6LYJ1QgPy3IYno1owj4yVedFLvka/7n1Th5HHRIXe+ZN7G
6MHsilrvXsJP2VU2zeOuvY0uoY9Oj8FIb5uL5f8SKnGuXPtkcun3ADPtrMb/qxeNImTpkMNOeFkA
oxu/ZHnDPa7kh3DoSkujNqFcYOL7ScSE/cKaKJquX+ShY87OOJu5Km8XGiOmpdgYRlkh8hd3BVpX
Ome2KBUUNSiMR+Z81f4FojZz4y6h3lfqguFBjGzMKl50dv00AwFaAuX6GV7xnHBbHFDgBCErtVwP
y6Yz0qm7wByIB14A0J41GOBJpsT5+eVx5nAc7CY9ScChJThbJzA7PllBaZQSWkuxq+tA4Q6XFdLA
wew4n9P2S76dX6tm2fGwDWhruI9RX4ska0A7/GexCRBmmmVDAp+FSx7WdPugS9H5j9OmLF1Cb2Jg
FDOSu05W61Wa/z6MbQrJ5mxxeuqQhB9vQW2UC92yIysC4u5r8pDPf4ilBUuSbSLI3EXw0fR30I8U
I3nhwuB46NwTiYocXvPcofpi637T3NNKyy6XwVI2ihJeVs8W7r2oLR1vfuSXrH5SFC/5FeURQEam
lvex4CaJ3f54vQckxbM9ub1hZF3vsx6wRawjPHUtTRaIcFfG90335aHlH+93LU97vFwnsNvot+LY
AJt5ZqGJSm/wnFRcd8JwaX68CZQuORddp38YBZ06n7l07faxfn8AXNR/hpH6H0Wat0ZdLK5OqceD
G74hcETRtvyb54nLvuv+vKy/rrOGYog6fk5X3XMLJkMuLmLB3uyPrs+UXze7zvhaXm8BjvsU/bk1
5vL1etmJkMFGnJCJPd3ALwDj8QNRf69W/H4DCZdIGjGpi/j5mjP2Cs51dDFo0SCRQV76MQu15GdC
n35bhYcq/oJe37LlxpXN7ec12wp+7Spdccg4Tekl86aQt/q1m4RHS3auCfFuq3rJLUMkgAlcw7FT
/RS+8bCZOewMVQ6aF1Ji7Y+Uz+Q478VNbyClAXOdM/NJYZ1wiFrFFdAFYVZrLhXxwZJ5yPTNGg5O
cIGP9Dd4byEaUbW08WU1zrkTM41v4kELtD/gI2v/fEePIhjYNiGZjPI0UdxfPNAtQ/k6ueeA3o4/
g0D3mEu2G9VuJc5MXJiYeqaaOpFkrHdvs+BxxMNfD0SJmbLgofSnfjUH8BcB4OdhoT5B5aT92g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DA90E768E01FE0"
last-modified: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-content-crc64: GibXgpngt+8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8cd5a00c-0f27-40e9-8254-efcaa4136016
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-24941798-5464-7839-c62e-307c0806fcff/test-blob-d1210bfc-8ed3-b0ac-bc56-46a193c3a00f?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_5
x-ms-range: bytes=0-2047
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:27 GMT
etag: "0x1DA90E768E01FE0"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 317f4cd5-c0ac-4f4c-92c1-056792e77cd7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:27 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange></PageList>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-24941798-5464-7839-c62e-307c0806fcff?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: 637953d8-aeca-488e-bcc1-979c57308c6c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:27 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

