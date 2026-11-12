## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3c11bb82-870f-bde2-64f1-ebfa0f2fe4c2?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_AccessConditionsFail
now: 2026-11-12T00:46:35.5533247+00:00

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
etag: "0x257C7BC6EF5AE20"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0a0733f2-9ea4-440e-91f5-23b699564885
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3c11bb82-870f-bde2-64f1-ebfa0f2fe4c2/test-blob-20f78b0e-f128-5928-10ea-b1a9d576a7d8

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
h/KcEamCwrBe6Bjo4ir7+5cl1OLpxqRpQzA0FxvzO/ngQ0TCrVKUAPlh3Sdu+ts69u9i6VsB2MFN
Ms54TaqVa60fCJ7mOE5EkdPpiOh9+0hV+iErkFGd3mqCdXqEG7NOy3F6T/E8VL2hHVeIGFDYzzeF
I1OJattbgSo0Y8PTwHUgmrx3AqtWGKZjiXL6FcUaqqVC//hgxWGVH87HCPD6zV3hZ36TYc2MLgus
JeBpYGtkGbkdkcF9v9Va4ePdjw+1abwVGa5HhkjYttDts6CBLL5jY+823TycY6epOX/pr5/797sk
U0e9HJJwRNrwkAw02bQleSsgfox/eLUGnk3J7wcx8bzkXdh3pUdcxZhhq9ObdGDKxDVz23gvpNuR
tn1Ep1XTv59QUHvbrdTkxLj0Hc3iayrt/irRvRZDtbn95u7JFx5Cjuw0SiPk7hZhjxe/O4YNrktT
V6kqAQGIDJvC3sflGqyasY/griAGCQ8UcC3+hHky7zejdsB1GI3qqz6IIhBPfHRqJIr3LQArTE2Z
FpDTiochj+6QQaTsJZgB9gPifuf+xPS5lF/vO8I2dyly2wH8FiG2Z5IivzrPff/x9Tf9Sc5mm1Gc
GvUnMVQrWcp7ekqWBd/iLBZU2wW66RZg/kWLOS5aCz+vX/srjjU992VwVAO0Wu9XGxy3Eb9M4jHe
xzIOoB+bIG4K5qXjtp7gF+SfSpQTrKNVMx4SovqAY33KTMcCLldG1DOVqnNJdGR+1/rbrZicyxqP
uGwBiX50ioMoGWrX3eiNWXVhfgIwDL+6k8v/pbblLYGsc3bqREu0IB/vIVr6p/kSTVMiOkwYXqys
R/WydOXNQuvoK2pxohQprF3iQOplv+zS7FdiwvI0kxTJPv1VAqs5It5uEXyPoKo/+I7vNR7CRocJ
4IiOa4D5tJdVqGMX1KqxqR0L9q5vQ0ysI8lkRF32Bvd1SyEjq7dedV3kOvdGJyTjPYwAtlDZmZ07
4Ue2lG86XqJsoYiIjf1mrIBRiwlUZfulgAfQ9U+nnLKE6MpvqODtqttV2oacW7CPmgrPiA6U53tL
EBRoaWlSxAXWBKUz9gSgY+At/op1CSVXQVtF1xOj8ABOI5fMhUFyAxaAxVYKXKMFLyQtZunw1gfu
ESgNDOzxMhSl5NNs096fu/p09UPOTOS3P6jvdYkWXk2Q3XMZZPYpjpNCZXjQmVtFjqrue+HEIMRD
VcxDAryKjoWF3PZrhlcDS2avi+ds56ZNqefeKOJsy72u1Q4q5YzWuNbySrxk2ghT6jB6FJTd1m4m
9lnVq2aiGRA5vLBI2WXa2dMQeZzp6M7eij2x8bco0f6fBO8yAAxwTzGsKx5XChDLoDvBzF3SPA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2713AD4984A37C0"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
content-md5: E52oOF86zTYFNnTh77HRuA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 42dad3c8-aeaf-4aa4-a6d0-10821c017965
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-3c11bb82-870f-bde2-64f1-ebfa0f2fe4c2/test-blob-20f78b0e-f128-5928-10ea-b1a9d576a7d8

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:46:35 GMT
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
x-ms-request-id: fbf77c8c-5612-4035-abe4-08267f973039
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:35 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-3c11bb82-870f-bde2-64f1-ebfa0f2fe4c2?restype=container

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
x-ms-request-id: 3d2a77c7-890b-43c4-9867-7093dc9bee86
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-6b299fc6-bd3d-86af-802c-e6507c6704a1?restype=container

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
etag: "0x225641C3E623C60"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eedc8dda-b015-43ee-8345-bafd99aa71be
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-6b299fc6-bd3d-86af-802c-e6507c6704a1/test-blob-adf39a85-09f0-2413-8fa1-da794d7b49a3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
zcfgpwnsSF4JUhozpmE7Vflj+iwzZv5Q23Cg+wrX3anmENsNlf/O2VfLYuqie+Ae8ZFXGGzXbmbJ
kMyZS0xTMXVwTZaGLb/5lCDVaAQTrV+Pggp5gMQ9DqF0RAUzNI4KdzB1Mi5Kl8PRXYRLAgViteJs
CclC2rGxMz/0Eui6xl+SyvDUnnsxRepGqCJA8gybEo8jxivEx5x/w//vVoXbFpckuDcVjRZmO8Tf
/DKOcUAzWP9Zl/80zgNTVdt8Qu9ka5GKHDnUhoR4vItm5ctq8FK+vP6FgX+Y7+k0wTg76fnVepGg
A1QHXtF74Npzzek36WSIvoXw3+kR8ixPoMVLPdKRkWo5yuz9t10sCqClJCEA/NjTsitz5JunjxEn
t70LL6MH4jt+/h94iwcoxNRJbM4LT6Ttd4unHq3Pkjrb1f+gIdr9nULlgf65WyckSyDGXiJDHGcZ
HrcYYMOOr2vknLUHh6L6S8+LJc2mNBxjgtONCTMYmLiYhwMi5Tx+V9KS1L9xHcN9yxJTt/eacumb
tN7wAaY3ywT8bwCf2GaSDM76FF9d8WQPDz0hxeHB/hQZhzBejlYsWgm7da7D3fOswKopn16KPsJ5
4fFoFgYiO3HrhlA1NH54zrlWony2TDFJdAQ2l162j0ht5K1kxEQDmDo911eid4wssdGlNJxGw5W/
HqEB7KMSNfcIx0/REwl1UgpCeHTapv14CuaNEVqsJyEYpKWiAauWK6Jgmq88Wp3HL+GSBEog5Xek
iOG9hCOcXKAtuG9k0lFeq03ReQxNPK9IxuF5GiLX974t/XnK2aZ+xD4PDqIuYl2QM1j8T2trVksx
dL5CIkJ9VsGwN9TXlNKnUrXOPi0NGmOE6ebJ26hSwactmGTnPKH8kbjgfSqIuJ+GVPy2nRgeJFpa
vjlbs3oZXXUtqfttwBYU0qx1LZw4+zBGQoarnCSPD3QKjH5ooN49xyC1Wg6kGZTmocprqfa+IcII
FXDzbcBRnpqHYjOYrDHON2V8g6AioinyxftZI2Z9TGq7YIptSVlfZLxzHLdhTvWZnXGRQp4h5XNH
AajF93o0ChbI3EunYO0MHB/kroVykXYFwIb07ArMmXoWJkiwmWxCPxKgmHGp8T2EhCV+PTfu1W8y
wDb0Px4M+0PRkDmkW4Ozom5y0fgFW85IcGfkTltDKFHYftk2Tf/0lJ0u2GEE3yiiy5vIewN3LGRn
rM+2J6znjmfoy92qfVRvfj1b1oNtRJE+QoPAe61NYVF0zqEwPWzwR0r5GxNL905GWPzGG1bg+mc+
eOUpJhO6mmqLNa6zP0DRao85cyh98ko1eSKwh0X7k9M58cWHxyA3P4GpwMKfkxm79bHGp4Y/wA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24FE3460010C180"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
content-md5: d2eA4jucBUOTEVAHYWkEDQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 136e55a8-7244-4205-9cba-c880ab39cae4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-6b299fc6-bd3d-86af-802c-e6507c6704a1/test-blob-adf39a85-09f0-2413-8fa1-da794d7b49a3

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:46:35 GMT
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
x-ms-request-id: 88157af5-a7f0-4b78-bc07-e8f2e0397fa1
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:35 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 7: DELETE /devstoreaccount1/test-container-6b299fc6-bd3d-86af-802c-e6507c6704a1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: 1434e18d-1da6-4c1c-96e4-8ce0e0d9ab4b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-a734016f-32d4-9687-e508-f4919435ec4d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2666FCA6A48A740"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b3ec2fd8-422a-43b2-a57d-6de76e029fee
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-a734016f-32d4-9687-e508-f4919435ec4d/test-blob-757152c5-c742-63a4-1cde-8547767eb506

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
+jBA7NNyRjVthDAhxBrMQKsNVqVRl+xSEl3H6BWBj1q1jX4cO13P/bv/OU8CZtHLO7Pmh95G/GNE
7dp2ql0f6/TVbDecsAVOPVnqUV6cUKyL/K1hmwh7bpAb102DWVJe4E1bLPqaLoqul0mFXKoEp5wt
662vvk/sWv2mgNi4y+QGi3EQQSOy8c4iswO+9RLmFi+wVW2lriH9btL8866x9sxkf9A582Z5e/rf
jQtLLWTqwGqpB3V2Yd1PE9JRtf0fcLw3WnZCrCLJN9lzxSEWsUFuETNECO5W7h3z6eCTJ8b8vxxO
FNPtqBNH38+cApu7OWGR4qPJ22jN4GtYTsNBNg8SdgUFx5xugGkg/CkfuuuCN7B/AUQiM+OzgDRn
lVpPBai/iYuVtnHEI2I6qd8+riWA1hcTwjTL70MiUUdoBusO0PeAXzBf7IE+u97i6IoEddEO5r5D
PEN09JlIc2UqWxx2K9nnvk70IOqV1AZW6Ae5Hdx1WR8sy5O0DGuXF3gbFF/Ba72wHLaDGsbUrWc8
HQuSjlaItAL8Sl9FM7LjXQlxesCnlHxKCAAl8j9ZVx4reO5fBYkhkl9cxSFda+kEn729YzKnlImO
R4VVY8LDo/JAGbvEhFd/T+dgSs9b7Z0XIVKCnPTrhONl0L0DzC+dmSEuHFEuPxtlPRNLRkm5M1ro
PkFvQQf+VZXXX7OafIO3wrGtLdBL6eI3HF7hoD2Zq51jGo3uLlgaL8e8VuBnysCPlIOYCwWJnVVf
NySoHLVXPbMWN2L2yJRZk/0JjpIBz1KdUQu5AZ+X2Xw3j/YzchMSZRgsUZNemczvP3gHgA/DXWjS
CsupnTwUfl7lvjidJSDq9yh61H2+P7g/ysEmkFhtdDGOYWdHaMjbGNM1edqTUhlYHInmSInqE8sS
atN67e4Fd0kGDsO5oo5gnruqicXerHeoznPOhyuoo02cNf71YSvlLwGQjENVnnr7hqrNQIoFM71b
0h56NvAeXmt2HG2Paz2QxVnETSA0Ui/50wCB22LDlwFAmY4MavkRci3X34INaxptPHsxQeadJ4Dv
gWLvnIIIsoVrT9GuhFpgs9vyXHKt62jlE5/nklUbo3INHOiWIdWrzy38oRtJvrcg0Y4Kq8oOQZX5
CYnjIB8vUKxfoWdyyZEFRo1EsEpMnFXnx8HHEPen/9tSnBdMyK4NzFFv6h1Prgf8BGQ9yZBLrGw0
+1leZz+0t6GMHyx6uX7eN+T43bI4mBi5ywySajZKB++qGM1Ur2USujJ7wo/bgkrmX5GsUs+6+2JA
pJwyIU1rQhc8z6GxiYh+5iKAvNWJ3knBrAuknbQg8BxqEwrJ35nlD4B3nrKpNNUJLWytOT+Ntw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27D427C4CB19340"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
content-md5: OauB7bcPOSYEt/Z7xtyiFA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6b808360-aa49-4fde-866a-591379f4cbb5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-a734016f-32d4-9687-e508-f4919435ec4d/test-blob-757152c5-c742-63a4-1cde-8547767eb506

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
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
x-ms-request-id: 6e65f330-6404-4988-8464-1f21e2754d98
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:35 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-a734016f-32d4-9687-e508-f4919435ec4d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
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
x-ms-request-id: 4f6deaaf-5625-4381-a139-28fdbcfb2873
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-54ad9a89-4012-1796-7835-9b6f4873b6dc?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D326D30B06FB90"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a263148f-1886-4610-ba18-627112fd6f10
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-54ad9a89-4012-1796-7835-9b6f4873b6dc/test-blob-1968da53-7fb4-c3a4-fe92-55e77cd2e175

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
3FxEdm0kokjbFIHUJO1fi3hlI5+SOKSFvFn8DCs1G6koqGoZOT+ZZfdkef6+wvOL1hD34k8XSqS3
v7kUJ5YcpvjYq3uCRVE4zL6nLb+mx/pmcTUbPThZEF3GYXqFhT5hR9IF5RZ3CJG+vxaRcBzkEfi/
rrVgAWnAf5sevOTXskeARebtoOHj7mikXH4iyKBA4U+CxteIAEZpRGZ7WUus5wzOESo293AW3L9N
vKTrnrf73duUVexw90WfhFt7aJQc93VxU7Z1Cunea+kXO0ShfaavgHxwGJIgXhnllnMUm3MrMMQv
eUoAhdPytekCWbwA/ga1zOgXrN/jUfWdj3N1ys926wt/cgRbrvqpfmKoHQRc5JhtX8+LE4PkSyhV
YvZffOsZjG2xgIsCWR3ubi58OzTwQaraB2oA6teHmybcBkwDSQF3jpCXqmQMawaynaRUaBDzZSFL
hXSAGaGVKeVlJVLQ6iUtBayjWZZGzZxkTk0zMjMV6KEqt8SM9nTuAYB+p0Wz4bN/J2JjUAuLBbfY
HMpUYveyTz2xpjJhoQ83tFcVyCZWsW2aswvQsZeVn7IMs9qqmp6Jy1gHATqAHYZTK5u0dj2RgWpd
uq/r4p2mHAZ/VO00jRq5i/zNT68yGZWFfYX74Sl1ezJvTd/vnem6YeU0AciYHp6B+upAwzK6KqAZ
ZmQXqjrdCtm6xUA6ye4TE+3K/hjN7F7neeY/NLcAtCI/1jaEoraqVvbv3lldRzH8La9E8CuITHoG
MDBUntUhuhAe+/O3j3E3H6ch3Q4FijK1QgcIvMT2toq7fnKFVrghzSNIP0w9RZ0+DdCDZ25sAKX+
n1vNGf5LJ0Rp+xD+scnvABDqvEvmd/1pya/0ck8cT33Mh7ZcU7Ml/BcH1EmNP1sGlGZdgUNaGCde
Y1BPV7T1TKyTMikTk61cxb8z3qK03IlT7t7ovs05cm+O/u9j1qViEoed+Q0x8wG5ALyEJjmFqYfG
+2nWDI7eWcC6hJS9+e8a0cwaFuJ8IfrdL70QtUs1CVRonNo8jAX5vqBNd25s+wfNalRtapOkStlu
+N3RzqR0hXtAVV0U3kXGIVdCL6qMcTO2Q0v2yJ7Bw1IAzZMoJ/D72PLzLKapuYwPpkg7YRov4Yep
G4pYfbzcfpEKExCynvlnRla4mUSNDIm/5yFVhWE30esLfgxlols1Fq0UnqV7XAhO1BvEdkhDHA4B
mZabhvkv00Ekpx/tAaP7g4KWeG3jQ4oYBrFGc1qjx2L9ZAnFmZC05MtkVrXpYdJ3yPPGrKOhHVYL
gn9H6V/mgd+975yaNuny4pSif+zUL6Xez6pn3Ru+XEezuRcQbPtrfdXWLHI13JIJ08kO/p1pNg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x200BD8698D8DC00"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
content-md5: J+O3HR52XphhCxxq+PR5Cg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96114b17-07b4-4f39-84f3-b8f8fa87d886
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-54ad9a89-4012-1796-7835-9b6f4873b6dc/test-blob-1968da53-7fb4-c3a4-fe92-55e77cd2e175

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x200BD8698D8DC00"
content-md5: J+O3HR52XphhCxxq+PR5Cg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 98bc4deb-257a-4730-a2f1-9264eb316818
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:35 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-54ad9a89-4012-1796-7835-9b6f4873b6dc/test-blob-1968da53-7fb4-c3a4-fe92-55e77cd2e175

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x200BD8698D8DC00"
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
x-ms-request-id: d149d44d-4215-47f4-933a-7364644ddf01
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:35 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-54ad9a89-4012-1796-7835-9b6f4873b6dc?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
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
x-ms-request-id: ce24a6fb-1d7a-4301-a02f-8849ad9f9f43
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-17023699-02fe-a933-f218-5d0951af5daa?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D7DE8842B8AF80"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e87f4804-54bf-4d13-bc98-ac9d4e4bb1e7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-17023699-02fe-a933-f218-5d0951af5daa/test-blob-893adaae-76c3-6310-f818-7e2a7f3112ae

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
SYPDNgPhtv0wEi7f4PUVN/FTdcibUjhQpr8mnCGbcU40q535Dqtyt38E5uvUVMj9AiYX/jqVD/dL
c49DuxrclaDfqjRYHChG4b5JlmxMe1L2KZr7g3MUn5ymrpscLvxlKFBK9amUpeX+0Rx8S3iL/vg9
TZGA4RItygqYsm6MKrPB424bAoWoYoS0/LJXmFMjGq+j3+Fq5UY+HSqf+/J3cadpumgJb/xylOoM
y+Rg1TK2dJe+6UvRVv4n3eRbCWeRPYsK7d7rGaqzMEr3XRli3Uf46IZbuIdcl2Np4pIXF4uDe45Z
VedUylvsC7kA2vjlxf+cYiDgNoQDrlZ6gjcYmxm/c+KKCYhgpB4rbq3OXL1qgx2Te7RrokUJVaeR
2Ugj1G+fQGYWWrt2PL4BtcfXNFKYD/4ahSBkVNGdgbPhzsrWB5k+LhtWVClhHD/2ae19MiBU+MlJ
CU9OO+yVedkIlW30K60tmAY3QrvVuGnhbuvkH06SjNUAjP5K7/MuwdtQWYbRAT1AT5kaHbYOdFDm
bcwBsVmKdQmX9J+u46kSCIDghF/iEGyto9C1eG4f8RetY4ImLRCBxeN8OQ2dkWzwCBU1Le/xA1xf
Uw2J1f2aeAKHAX8m69pwXr57ZdZfDxJjxG9Y6cQovGAlx9kC+PDm4sALFo/tyR06xM4xdZ2GAEP6
JRCNQo89X0QfASQBbmbOlYMWVPmDdvpSHiT190fCn8aWCNLfWaAxzbdKzsj4OVZoYuAab6xKd68W
OiNqSGj9XGFdamaT7jvj5YdCOKgxWuTOjZRnqC8aTJAjyR58x4VOTXFnms7w1HSkNookBz8H5OA+
m7rUlrQxQx7VbyUcZx4B8+o2yr8W3rgfwnGl9URRHOQ+PSvKere8NVewG2RPh89sIxNU0BkhKL0C
tNNDjE3Zg1NA3inyN3kzepVnZcNT0DuiOdIw/UvKHBVuyMXjeakK1pgRDqileeuaIFaEusL6ruOY
oFJ7qYUIdcEUhG6zUAHrXY8qQsGS/L/mldz1RWJTcxrhSthWjywSCJjnkfR959BVmV0yz2wiBqSS
lBOoEzBewRBU0QUolM5iGDkpqmvKaa4MoKwFIKStv0MzxPoZafVoiNDkKBXKLASOz7Yy+Fs5xypk
nHODWaBrphHC9NDTSa5EwCKa5kGZQnOodlDte8fn+vzPtM2C5S8veIEEBzczu4YI7Tg5nuHpy1n/
2uJQfitK2vrUA5Tgwtvzam6/lDo8dbvJ5Y6Orlsb5elzgwpN3/pWuS09XrfxJytdRjRyKjYfwmQm
hpicuyueuR6rbT/Qpop0aNsM/xYE2L5iMWgnqLqyVMCmJllhuf0BnqWZRrrsjJ+p/sJbEsJOIg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x239C8FFB4C3D100"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
content-md5: RQfFsICBLYka2318qULWcA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3a3177ca-fca8-4f75-8a7a-de9c508cd6eb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-17023699-02fe-a933-f218-5d0951af5daa/test-blob-893adaae-76c3-6310-f818-7e2a7f3112ae

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-id: 99ee26f1-0609-4aed-29c4-05cbb44a643d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: 3bd6ec82-c5a6-4554-8153-a2bb7ae3b930
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:35 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseNotPresentWithBlobOperation</Code>
  <Message>A lease ID was specified, but the lease for the blob has expired.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 20: DELETE /devstoreaccount1/test-container-17023699-02fe-a933-f218-5d0951af5daa?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
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
x-ms-request-id: 30c427e7-d9f2-410b-807b-8a2984d52bbc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

