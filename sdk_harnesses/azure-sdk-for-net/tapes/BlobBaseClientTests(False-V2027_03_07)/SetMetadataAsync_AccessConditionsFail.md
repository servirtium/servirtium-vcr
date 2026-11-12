## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-403b335b-89a3-e1bb-9e17-7480518ddc29?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetMetadataAsync_AccessConditionsFail
now: 2026-11-12T00:47:08.9777843+00:00

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
etag: "0x20148405BFB4D40"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2befa3fd-4f17-41b6-8e5e-af508a2f7ed9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-403b335b-89a3-e1bb-9e17-7480518ddc29/test-blob-13603a66-216e-a3e5-43b5-f088243d2948

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
1Z07C3DKqL+MhajhLEgip9Ccx5EPrPY6TZf87ZkzvGHuK6qzUtC4nJKghul4A3f7k0i3iHWYOSmn
Ab3ZzbsmWchH8wCdblUA4yv/biYMwUogAVlQfDTsVvKBDFES387XeSwhMRB2XSXztqRJmMoDmj9z
uMxh1t2UW50OHGED7QRdKPT565A6qqM0XMWPo70nfnIRnycBdaNPjNVyaEHD78mg63DWCq6vOQ0o
LHoXBLjf5p7u8k7dW7JRqV+6x0JhcGz777dMUXPEYWYZ2UkoOIcdk4Gj1f17wpC+hGBP9XHLxrsO
GxUAk5QqKZDoxIJoKHHXnTTAvptugCwnjc0TdWv0TRKNGhxyHP/teatsk/4NVlzvd1g9Cgggn5vp
2QXHF7Qk83Zw2w1UZIA000XwAu0tGjdxI/0TtkMJbXuBiUL5JmL2R5+InXpOmhPXCTfCL52tu7/O
VvO3ET0yZm2S09s9Oq3j+bpOpHy8IonqO60MRz3e082DK89uPzZiVjYMu8Y3mc6J3zbiXxZCETNq
zNWPJh8wtAANug/ddLqE7E5GsGfCsqLfgmgH+3S3QRqcBHNg0i8W3AfGKt+/q2p8XnPH+2HMpxkz
sKO3KLmLVnn1QXBGIxkeL9Nf+4jDH9b9i5wB70W40FxZLSGMX7NOO9RlyWr5NTtZqMuNbKyRb5DM
uZ0cimY0PHAT7fX4ktAfEcC0XVZsA1Zgp0Z5K2Owx72QwKUWMbBtMY355kdGYBb7bVvr3BI6YLVG
u+IfuxEMYiU3aNEqCd8QRizIch0PGkcwfb0IxOurVWDwz3XNTnZ87YMhDvhF0GR725bmcu2XN6Gb
7z1UBJ46jBJxOjppQvi1TIWa7QtO661YjelVxeNyWJfUMl45KOjl5oLm05YqEZmdMCVo/UqVTQSP
+3a15cYu/uKilRCZfCSctAeJZxcWLntPt5S9CVpNPuRaqSxyMAG7t9S0h3uJA7MAzEhDDOXsecz7
ZS0xcPWHVVcrP9P3KoQFzbBCYqb/xrPhvD0RCjH/bTBgd8rTiUbfLDIkXcTfCaLEPT80qhYl+556
ULS3dkomLNGjl7K6MkNqYzZ022juAbObTc3xysMZOnsrWTmSJ7bn/jHzPHHvCQr7ykbgsR82i04A
HCh9NGIOiVw2jtkK1zt/jN03+8VBq0PC9v98OYlc9c7qkguNasnP5bIVuHsx8PILYCRC/o+JvnDl
uz5ikU/T2pkKIEUv8SITaBYSLPPIkAUNcNlkGfc+YNOaqK+LbFNjQd3hJtCs3G4CLpV5d5F9HCo4
VSB2bsChzL9ylUlziPvCr+sV5mk1YJRrYethxelCHIyEUhcy7NIdP1oQOkclj6aZtsimaDXAAw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20C69CA0AEDA9A0"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
content-md5: MNUmN3KxrJuns+vit4BE4A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 21dad585-97e9-4d4c-854f-02d47bd21ef1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-403b335b-89a3-e1bb-9e17-7480518ddc29/test-blob-13603a66-216e-a3e5-43b5-f088243d2948?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:47:08 GMT
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
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
x-ms-request-id: 68cb0ef5-1bf0-48ae-a222-52c279175a31
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:09 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-403b335b-89a3-e1bb-9e17-7480518ddc29?restype=container

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
x-ms-request-id: 794bb964-d367-4e2f-a6e0-32547e726d1e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-0d0b8cf4-40d5-d607-3078-bdee35e38fc2?restype=container

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
etag: "0x277B0166EB66820"
last-modified: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fb16e9f1-ac0b-4717-9498-9546f2b5dd30
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-0d0b8cf4-40d5-d607-3078-bdee35e38fc2/test-blob-0fa7f718-2525-454d-d145-c70e219bb456

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
w08jpuHFR/9TOQrPZ6FwticFjXCOsd3OP8U7j3j4tZTDZirlwOnhU7CnvOsbft4w1BHnGw1DxxJy
VGcbibeHWoN2CwF2i/U9JDrA5vXys8DnCrtmEJqGf54Yc2uBxcn4IGFnpXPdukkcqffTg+Edf6Gm
NH/8IErp74tiXheJvF5xyMaTig5NClBxSmeis/y9+vPK2pBK+wAXfrXnelsxku2YYboaifWSWSou
itbiRjyPpGMkvuHNJ8zGfAtYZo/1QLd5ClFBonD+N4FmG3ApNDd4WNb3DdMLyjnuVA3pOfObOEoe
aTzqTQHzJodgZwtcnEfU3w25/TLkbj8YU05jFP6OyuImC8v7jgrUBOdMq2IukbfFFVnl4jsYOfr8
0vqzjxGJ0Z0oNZB82VEC5PhLl8Ld6sGWnf+kqeinDtHQ/rwQIXXVw9nFBVwnSTwI4v1CzaI4H+g4
HPIS5Ci1gSe/rNqV8sODddToF+Rlb1TDm8bqZEEvl9/T2ASCw96xEIQ0Z51ic/A6v1fNTwcD062d
T0lhyhzmjxT6wRq+ALH1NwdgMQe3YSjWr6XpYUjY0AVX5XSVT0VnTteIZ7HWe76m1xgAoqKl5u4g
ixt3/S7LIvAUZxs9YOjB+eIwLvl2ADPmQ4kw1y1jsv6FdMQq8FCpvUXAwRSjaHcwPqm/dLf0qYrn
kLmkm0rDsbQct+wjlwmShnG0tj8eQ9oSAJmEoz1GkMo5Q1+XBCH6/Q9fhrCKDKegLe1GQPNKyE3f
kZuwPg531Sch6lOp+4JQubgwvr0qh/Py43ZPAFDW73oSt3OFSb4B6LCJaSJT9jJr9oc7GgmPtQmo
vluXJ9XWSvrZl0MOy2/5L9YNoB7RnuxE4wrJm9RwggJp3YtjacDash4nel/uXCsXQuozghTr1h9u
UkTLDa8maBRApe3klcUVMu0AqiSNVYbfsVjqPf/tfQZr9Rd8D6VuARFKrbc9Mq0kHVAn6yv74fy9
7FtXOyoVUyfmeZ+umSNIkakTQqjPon6rxSCvxpLbcBQavyNJF8XmNVqPVrkNdoQt3lmB559U7Unc
q3YKZoyVCwmLlNn//3rkLAxNQEvFnk+bgeg5WYh1xdHZbGxO28/N+UqwguGqLd7enbuSBq3+Fw0n
b+SkW7KAFc4IJpIOlVA9gEYAFBtt8FMJWrvM4r8j21VeJ2zqKJ6YL2wToQdM0AdqVYZm/QPxuX6Q
mwH2tDIP5Es9r23kUleoZ+SuWk5MvYqzYY04vd1SbW7uWo2dons6BL28DiCahgMuvpUeQl8vRN52
QlKl1idt60L/9ffKC8VpdFWRkK5pGdqJCv5IMyoPvhavJmAolC6VTiLempALZLPQtM4JnbQvDQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2314499641B6F20"
last-modified: Thu, 12 Nov 2026 00:47:09 GMT
content-md5: 7+EVq4mTYkuBmAgYdgy4fg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: da12e4db-d8a0-4f57-a480-ea9746b1a89f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-0d0b8cf4-40d5-d607-3078-bdee35e38fc2/test-blob-0fa7f718-2525-454d-d145-c70e219bb456?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:47:08 GMT
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
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
x-ms-request-id: d0714669-0ce1-4c0f-9a09-3b530ee401fe
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:09 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-0d0b8cf4-40d5-d607-3078-bdee35e38fc2?restype=container

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
x-ms-request-id: 91f4abe5-21d5-48f0-b7bf-e190986f9ec2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-cc1b7728-2529-18b7-f037-e11be46440df?restype=container

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
etag: "0x240656CB60F2E80"
last-modified: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 053d8bb6-b332-4338-b914-bd436fe09d92
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-cc1b7728-2529-18b7-f037-e11be46440df/test-blob-8b41fc27-7f8a-7e49-a54a-777e5c052161

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
fxg4sXhhbClrxqpZKUnOa3Tu4aFypIOoLZ0m3q05vOoWf5zMLI9mxY8XIMTV8FRcfAwKbSN/79uV
j4PbO458MQq/Q6qsAj7lhxsRWoO+0z1JyWKgLk7GlpDBNp0Li4oBm+65Fayqr3nNJOUIbZRX1rtF
kXIs2wO7+KwZ68uh2vyREL+UBb2Rnxno0gpovij8aV/ixfkY1b/r/R3/kMStLErpdl3UwtH9tPJY
Qwj4UjmDHIJsvxQCeTr/qQegkQ5VOqXAf0jLJ6eO5BEHv5K28qrje3NBQW025v0i1RjKXSLjAghj
ONPxuPXb3doC+7moSLZcvBWaE/k3iZhLqFKOw4buI72JU7rX8sN+ZmOTM+tDeoxibqENSe4OK646
pg+jTRpUFNj8HvT8hMlSHK2VpFatBy7FK1Xk4dnOeigMnEyz2xlJPh8TR1uXZunYuy1BeYZXjZ/h
3SHEcDL+LaTM7+h8nkCTTGY3mb/SLsVrCyasjQGhtA6t0v74hM7sFRq3y3YBWxzsrSwgIPTfDq9c
WWQMUaCiKjvZz8xCm8eYSoSlG2JOarAJwN/UgZMazcNOnCtp38R5FKA6J4xQqRJkiNZwOvNMDe6z
A5DAzamovwEJ9P+cLmrAKwbCE0MkuRfNb/m8qpPPAo48ttwzuUf2kmiKRrUSyFlrsA7tifmrj0l5
816v6xVtOfFwX3eNjHK/y4HamXJhu6efUPqF4niVkSaTucXoR6ZTHQ3DoWjh3iOcLb530PXXFzi3
EJoa6FZ5285R+tOs1oTbh3xknRk+vXLW6bW6HcAwu6GNMTcLODS3SsWakONQ71c5nEl5cnoeeFIn
Q/+hvr4NID4xHqRNz09HrVNTpC2PhvldgIB3t0knb7nk4/Q1FYwHjHCkHtCy7Mz5McQmy9MkmL0F
Qz09lmn1Ca/raOtaEpfHSxi96mgpq5S0fYWEAKPmv0s3MNFOyvYHrxQgx4Pgnx8sX3+7Z65U3Jip
iRjjcAkMBaigI+HGeYEitjpTCOQQ095mV6EkKlic4lQ5pEDdIz4LFMLaQHw9Zub9mbFzANO0mLU6
fRlo59pQA0CNjNRARJL8SPMiNpNiKPC6JpGmKeGAhQyLo6Yloy3nijw7sNoSvFQfdrjfkmIi11Uo
rcBIqtpeDAbItaDs16XGOqtWJngWqGo9h7IpofOpaMxQ/fVsn+Bi3KPTSge0Mp8TGFi2y7DdEQVW
CyInNWsTHkzTm9qvWprL9ErUQl5jiFQTFYib8p0bc+vwFpS9O6c4vyu64ZbFY7696tZmCM+n84LN
Ex/ieCuvuCjvv0QFDrmjnIMyqKe+TbLK3QjGtGobSSIR7yeHVUcACihu1qR6uNwcw2xLdErbDw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2778DD09978B0E0"
last-modified: Thu, 12 Nov 2026 00:47:09 GMT
content-md5: nayVZvndnnqoMLtl8g12LQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 54005863-96ce-4872-b245-92fd03d2844a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-cc1b7728-2529-18b7-f037-e11be46440df/test-blob-8b41fc27-7f8a-7e49-a54a-777e5c052161?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
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
x-ms-request-id: d5f72cc7-c1af-46e0-9f5a-9a25599022d2
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:09 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-cc1b7728-2529-18b7-f037-e11be46440df?restype=container

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
x-ms-request-id: 2a32efc2-45cc-4b23-939b-e74e4da631b2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-9b186dc6-e823-bd03-d375-21f41f921b46?restype=container

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
etag: "0x1E0424BCF065DF0"
last-modified: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 83a1b58a-d1c5-46e5-b3ed-83937fb56460
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-9b186dc6-e823-bd03-d375-21f41f921b46/test-blob-7e9e323c-764f-500d-242b-a9f0fed0d4d8

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
Nd9gGT2r3CEksQMvWcS9iqgmD0KsXcBPYMd29z8SvgKgSL4/MgEIkFV8WZ1z3vdgbh9I2MCSLNge
ELl1NeXiEfIAjhAFfVimHX/sMAMj3ILQFYgfyuZCDhzlISFIkltwmUiqck/mWvHHorpApfzV+zQ2
pB9cwkcMvn/0IFs3XYokfJa6eGoy6rqXWCcrAmggECXsEe47E9YAnrTQ8TqVj0QvHCllGoLKBLpk
xWkf4LwX1A82Skyc6GjAutq1YviAAcji/OU+uvWjIg0z1k5s4L34uR0qX0X4kzPBpGCnFKHB5MOh
PeTW2Bkakyc+aRIZU9kdvanaVaKD6miyfRaV+w5rcfKLy6PZIuAEEMweuSohp1GHilb45o4hHVN7
I1oDhJcZ0/cfjog1Q5vI1kXVZTA+kNbEDnC3copjaa1QXf6GAYs0BOYzARnJUUa6MBBJS7giPZKE
PnYmYWBsuyTa5eadQdW5oWBKC4+9+7wq/EJ6Gh71LSBrAsIVDaOFxkb07mxgHe46kKpY2DEDx0K5
/GQe8aEG5bfFMj8So5O8xURJyAxPyd9TP4pznFXvZzuAWxE/ZtSk7Qm1muuvKOwXmxLsuv41ajKE
yrIXk0hh1soDkkiBfV5vpNsDmi/0pBedXABCAqw9SvHeupsijVrBVMMgq5WklR60fBYiMs8DkCaa
eTZHHtQexkdWosLCTReBQUZr1PiB+cbhjoWWGhgh2yp1iBMjeTXvAeROTfJc8S/+ofCJl7wuGIBv
Zo9Oh6wvNceYTcQEXcgQe9ITM6zUhZ1WmHgnmENuR2+SsxOloHo4HxgrxKRq+kQoeBzpGuTUm+Dy
+O80B52DKQZVcam1atpX2xSUqMD4650z/x8nhCyKvhgys6eLAxd6p5qdFYibcg1BkT7QQPMf+Q1R
AAd9XKXZyrORgrcyzNf8GQAmW9YUmIwR5vLtun0kErmaOQMP/Uv1xErVCfBWDsVn0yfy+Z43PGd7
bHay6xA1bG/9mJLU7Ru0MJaLP4+cu9cshuZWMhkbY/yclJHVQ9g6n52AWXUzkuYLPckHq/3Y3rGe
hWQp3zpW4TSVOFiK3+29UZ/xG2Fh+fMASvRQE7j/w7XfN710EMBiKndBnVqNgF7bSlle5sNPPItw
KZRFBs58lnSiqqcvSUHejvHqIFyYcsqVdMleoN3ykPsyA+YrHSSoxAfm69W3qwAYf1fSZBsv17fK
sJEFHvWXsBqs/UVasnHMQVtVsof03sjIRSGFICzfAisvYWySo6YRTzu7Cq27vszlBSK/2iUw1dLI
PNjUEZDtzPoZKlEFOZ61Q2NMOdMaDYdUnxoJHygG/4yaymfOPT2qzT6zoZN74MuECpbC5Jv+rQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x234AC1B79C536E0"
last-modified: Thu, 12 Nov 2026 00:47:09 GMT
content-md5: HW/LdIfWtglpb5zhh4BH3w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 80e7f33b-355f-48a2-817a-6b775fcf9d28
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-9b186dc6-e823-bd03-d375-21f41f921b46/test-blob-7e9e323c-764f-500d-242b-a9f0fed0d4d8

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
last-modified: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x234AC1B79C536E0"
content-md5: HW/LdIfWtglpb5zhh4BH3w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6dff7f3b-e449-4e10-8c3d-9f816bd56718
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:09 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:09 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-9b186dc6-e823-bd03-d375-21f41f921b46/test-blob-7e9e323c-764f-500d-242b-a9f0fed0d4d8?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x234AC1B79C536E0"
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
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
x-ms-request-id: cd31f9bb-9770-4611-ae05-040a8ec58c83
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:09 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-9b186dc6-e823-bd03-d375-21f41f921b46?restype=container

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
x-ms-request-id: 23c7b63d-1a1c-48c4-8633-004255ea1f7c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-727f502f-e475-d2ac-132b-c46a6f36e605?restype=container

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
etag: "0x26FE41B04810220"
last-modified: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1211f0d6-c901-45f3-960e-84703cbe7d0f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-727f502f-e475-d2ac-132b-c46a6f36e605/test-blob-956ba125-6b67-d9f4-be4e-841592441bf0

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
mxw4fr3KNemR4I5nt3ZcTSSQnEIvaUXDW6azJ1+XP84P085S/mhIWmuCA4fdjCFI8jfxAafYwTLX
dCIXFw6J+aC/WOOnCU+8SELXrGa+5c+EazQopj4nNxKce4pFMENd+QnmHjQ+oejoNLllARTMGI9T
k6vZYVJimCDRCo3Fdhf+ebNc2MeaRslLQHGEwTX+0GL68Z2Xg5e2g4YTbJdaIr6hZodgb0DIuEzi
jSDh3dbq0zkryoR6Z/UcpVRBhtky8B2z41qunWAiMjlQtfZ21aWvKZldL1g5Jv+RRMrrhzJzr5wD
Lfp7PDXYCZdLKbH/pc+vkV0/1cHEerxbHFmVNqsH3QZZc6irNOxkhCbB7fxNkp77PPXUNNnbPrM9
ICDbQtLrREyrpjInA11x2lCaA4y/DYq7mvm2MqgsfTT0bhPMiEFT1aiwouts1DiYYlmJQDsnfRKW
IKjZNRGjfyn9MpVJpFIORy3jD2qeTsbBHc9Pojz4zPAANmiZeqCXDCPCbqGiTr4HevkORG2n99Hi
FxdCVNzsBWakSG7pdcyNTANH2+AkHs8RSChC6oiDWT6Xt2KIVbdH1mk7/QVPHQUsgPdpYBvxvflI
MAyzqRrdIe8vUr5qBfdLAAV26SDJwSojFmqQGfgipfloQCSrkyxOXtwWIMtHwnsAHV8WetPYf27h
kJOwTAj2DKzEAcXSoG3ZKItEsqFe3FTukPuZDCslkMG2yQKZnRHUHxMfgsC1Ln3yPVFIlMzMg7Q/
wbwMXf+AnnEEG9ZqP4p5cJOOP1mTOWF+ps/Z3fv06UZOWtxVx8ITnuRPsRKmiP3HziM5PkRarIha
jrcwpsF1DzKQG+WuI6jQeqB1Q4dP1x3SEg7Xu6sC865T+zkK4/gi2qLgFmwXGKp7aMSk5WgBCraZ
XZOynVOGjic3WihvxpaoUmnkb8GwuvljXFPnXg1FUvGCcYVkcDxOWYdF4L6CC6It+5P/HJr16KOZ
T0D/nzAa8gg37VURQ+ItlRY5a9o74FGxumJ6RjVWjYjiyiD7T7lXKu21Sx5MG7ix0oaEu33IXm7v
TuXOn6vS4V/ML3nBMUZc4kDshpUzZJ6pyXSv0dIKGWyyCwDUiItB42q+f+w+8KA/KNg829fZvOlG
JNY3Iw+NwhUNDiVGh1m1qqIqdeSya9nTb6j5zj6U2U8XjWS1CsBaML3XMeF6+aB+hzA1rkcFlLj8
ZLNmlPPWeTXWL/r1/6Di0EQm2jn4WXUIe0YNXisIEvmruKUM9JzJALispMqmiYePU94C3rl/BAs9
XhityRoJzRwBSUb61dyoXNqBS7SrYfK/fQtNBjM/LLSaz5WDHDaeotatpT9BlX4BWYHf/bhWkg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FBD67DC1243B70"
last-modified: Thu, 12 Nov 2026 00:47:09 GMT
content-md5: rBUNXdAzCTC8SeqaN8vEgg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6ed5c99f-6e37-48f9-a43b-55328fae4a79
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-727f502f-e475-d2ac-132b-c46a6f36e605/test-blob-956ba125-6b67-d9f4-be4e-841592441bf0?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-id: 47664849-a0f9-73c9-35ac-c52ecc6fbf65
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
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
x-ms-request-id: 8843a086-4364-4b4a-951c-2620b6bd33e8
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:09 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-727f502f-e475-d2ac-132b-c46a6f36e605?restype=container

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
x-ms-request-id: 8d822413-1460-4816-abf5-c4b01d1bced6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

