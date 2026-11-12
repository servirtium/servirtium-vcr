## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b20942a3-249e-ec56-ae04-2c439bbb48ef?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).StartCopyFromUriAsync_IfTags
now: 2026-11-12T00:47:15.9511379+00:00

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
etag: "0x20140177B642780"
last-modified: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a884debb-e1f7-485a-896e-b49a434f2b2e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b20942a3-249e-ec56-ae04-2c439bbb48ef/test-blob-98b521bd-3df7-556c-60a3-368a58f38556

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
yLRQKLWrZ6DoAgO/q3winG92JyCEkOVl1bRR+u3Lk7p/1nrmax85EboUsPU6rankgJoa4cxl0jfP
61IBWmyzHW5IP9UBPDFPPRZmb+DvKigLbXpTsLHuGQNDFn/NOLdNYZOG8W3T40RoyqS2/2JX38Eq
9uzyX2y9WibRviWxggVeGA5NaDi7N4o16uUMOBqg6za+o0HKWwImyZdGAiQft0ifV+dUCneIbr9i
vHSGsCEMMNLu89/DlLwLJp+hdDRlFjOdbeEzTOG/NTSCZ5+NoBh1OtFSMMRo3MMqSOPX5/qK/aVB
6ENA2OTwLr2rQCwdfYWHKzljEuZuNJEdCAP96E45+Gr5TLjUNGLsYgEHvZuXDMteT7zBJuu/0rOy
I8/h8kZvcUjCJDHNsvbXd6/kZ3f2hvw4n5iReNF+OXoEIhGSCm+7l0tS1OiZkZ3F6a4722o7vJzT
qVOu3fl2Q+u2yJDlRWxAKdAso7EUng77zI4iQ10QyGZ0vmEcDbpR25H948gN36RC+7KZDhjrvwtF
shBqVP+Npv8pcIYLJBwV28ggFrtF7ezq4EirdrlNif9W1lqp54eRbzzI424dN9aVhDNQyqhP/8Uj
f3O34TBF2+eHtE3CbPNAjqd+fAp9zKlxFfKG/b5WBteVhWcU2Y0MggiHloKJ0xdAEDwB0YK7pbLK
Rsw+v94oMa51LeaMLLQZcvoB9jYm50HaRu2CVTVU2d+0SpPBzsMpXmXUFKYws+OH516Iua98o16K
Y3nxptt4IVMH1+IgV6Q22JfRUtObqZIJ+m3WzCAwOKY1N2pJOLiJW/JTKdsBZo+6UeAXqlCK77nn
56tuolQy1p876yA57Z/fR/bgR4C2B5TdG3pAGI1VqkixYlANG7ieIVI7xXtvgGRAOGJZqqg5MN8X
kIba8r4S5UDYiIpP0Sw+QiUtekEZbpsV/98q+wCgdzFw9ooxwy+UKeA6l/fa8WY2G2eCC7We/SLr
xfLe6OpAOBBY3tuiDH/1mVFh39ajOw1489+ZHWx80vhoRv48tUD2+V/ngRKKlA/ojHFkPB5LSInk
ZfQKpxqk3AzjOcWBueQRa+V3u7n77l/QsZH6GJbZHP10WE9L61JEQqQGp1pJZtONUtA504zQ6XeV
OvaJqcR1CRzIDWCUxYCTM3kU9EYFhkq9bMXGoElwpG7XtrFcupjgkZ09gVly+I1QpqATu/UxkLOr
yzz/r2nTV2nyvA/ON3jgNGOoxwTwS3M4dfqoXOh5pib9sO9c4eE0aSnwgDx+gW4nM4aRiMivu4DI
xzluK/uAeBbo0IeJg1OBdF3bAMs3ufSLgSli5x5dTvRukxmoxj4ucAcllbHnnq8zEBRq07q1kA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21A0FFB840640E0"
last-modified: Thu, 12 Nov 2026 00:47:15 GMT
content-md5: jUqsdBHAQxrY8x6lfL2rlg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96010d18-c80f-4dce-9897-2f8748a05453
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-b20942a3-249e-ec56-ae04-2c439bbb48ef/test-blob-aae2450d-1dd1-f891-8a81-921af039d8ad

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
H62QwxIkQqPieS/XCfN6OrkCDGPjlFxSdi0KL1WDvvk3ZksmKvF+6AI/x1juue6XB1hh7ix1yopQ
Pk3kGRNOXro1n6OoVA/HgyNgpM0DY7w/cyj9ItDMwpzA1uyjms/v8GiduRlL77NImWoJFCa9TNqR
paXrUDzpaN0G530jJOlUcbNkZaqi9IR1tIllw612AokREfUpBJ8stFA8RAc1JXSBtKNyWeYw77Ah
dZuzhKQwkOX0ERLzKm0TOLFZZrB8QI8U4w4KA6ii4SJEB44DeC+rC7MiQBNhjoo1XiA01okApTUM
n6CWJow8UTDwryLfD8CBrlr8Wv98slWE1KWIbQuYQ2JY99mPFeUm5e7jcd9nVk5gsicuBEo2kO1K
EVHntOMkV2vAhhjm8ph11nQQmEB2HH5WJ7vjaj8XImfsRAOTPjEKvhl0ps82esCOuS7WJfes1PTT
kY0oQe0rqWSw+q2V4ZdDBtknAnWuH636VLARQfxvP28Pv62k4n0sSP1qhX8S+diWkh8ehdJ+JXLf
Luw9GWhnQbo9hiHqnyRc+7l4Q5kt6FrXeq7dUbqdkJo7xLOQ7i6VA0TE1HO2rPP7wYkYBuHYsUaS
ZZ65ivAAoPWGr9twywyK4kBVaRPmIM674o8whIm4YhJt/omQ23lTxDR9MP0Xi/Z9jiOhgkgyq0TQ
/qdhzxtszkzIAsyD+gfHAaXfaPDQo1eYs/ZlF+DKO1NEv93R8vUYEWGxT4gp+ZMc2oCjUkJT/1pQ
yBskBrds/sZ5Pzop9Q+vxleOH1TObrljSTxfJugQ8MCCgSrZ8wuqRVDBsLpY8uVx84vrxd8GgVli
wbx6DNfeaE56pnTl1tNL49oDDL7+CldX7TNcJCvgfP/QdzJOMDh540ds3UtwjB24n+EFAnSbY7Zl
Ih6kgUQjmip0FF+h/bOiiil3ki0L5mEWpIVK23mLNRN76Q0Z1GIDSUMh/He+F6ItY3hLJNGJWjy8
jt2+2b+w6N9LJRSliLXHc0np6unqWIziHHcBPxFC8Y7RXEaERHCEcROXcvKOiNrChLCIoG9S0jVR
3LxHrqnOCTOF1CxvQi/ZZXnVU+WaU5SdP7tgulEff4oQM2ezPcJqyWm+CbOuU0GBrjv2fH9Qtokn
qW7tbk/hZVShXg/HJSe2a4p820ng7+x53gsWKAIKwHzei5NUfFoZ3KNfDPQyuYkTQBH109o/R7qC
dI9Eyz1Sl56S6ZmUYu4vYv6lgeL3RyWBA+fxFeyhnkTY0gjL1RFmDXVWoNDvft0ixnHcmsXXiixq
wsdVYIGx8EpVvJDlY4ztP3RtoaZUkoQKzk96xQR+AEfbYRNJEKzzpa+FmcJNPWLk71pRauiFFQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E8EC3C60005BF0"
last-modified: Thu, 12 Nov 2026 00:47:16 GMT
content-md5: djzer36IVk/PiPjRfkExhg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f6e0887c-d7c4-4ba5-b208-0f677c8868b5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-b20942a3-249e-ec56-ae04-2c439bbb48ef/test-blob-aae2450d-1dd1-f891-8a81-921af039d8ad?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e97fca8d-70e3-47e9-a36c-7b79d6b3fbcf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-b20942a3-249e-ec56-ae04-2c439bbb48ef/test-blob-aae2450d-1dd1-f891-8a81-921af039d8ad

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-b20942a3-249e-ec56-ae04-2c439bbb48ef/test-blob-98b521bd-3df7-556c-60a3-368a58f38556
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2789CBBD5C6C0C0"
last-modified: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3af58662-ccad-4425-9689-52eaf3fc5527
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-copy-id: 45180f7f-77c3-425d-94c9-2c6bfdf22738
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: HEAD /devstoreaccount1/test-container-b20942a3-249e-ec56-ae04-2c439bbb48ef/test-blob-aae2450d-1dd1-f891-8a81-921af039d8ad

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
last-modified: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-copy-id: 45180f7f-77c3-425d-94c9-2c6bfdf22738
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-b20942a3-249e-ec56-ae04-2c439bbb48ef/test-blob-98b521bd-3df7-556c-60a3-368a58f38556
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2789CBBD5C6C0C0"
content-md5: jUqsdBHAQxrY8x6lfL2rlg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 86582c4f-dbdc-4cfc-88aa-9efb86c8a19e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 6: DELETE /devstoreaccount1/test-container-b20942a3-249e-ec56-ae04-2c439bbb48ef?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
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
x-ms-request-id: 18526699-8a41-43fc-88d0-b582b478259b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

