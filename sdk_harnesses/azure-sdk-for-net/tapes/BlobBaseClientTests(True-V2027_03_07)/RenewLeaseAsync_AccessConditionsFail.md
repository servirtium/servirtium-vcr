## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-67eb4015-6086-2210-f086-115d9df30cda?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).RenewLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:48:19.1051199+00:00

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
etag: "0x1D69D071C9CBC00"
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2e4af8d8-372b-41fc-9cb0-4677ec76f0c6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-67eb4015-6086-2210-f086-115d9df30cda/test-blob-50cc771e-cdfd-77e9-3c7f-bf0f8276b2de

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
Gf/Do+3YLDcJybBObxu3AkR4CxW1SnNIVnQqBqEAn3rUMkOeMGnsRkuVRjMcmwchyLzKCWqcKM+L
e014rSWVCCk2ejzXGdLbi8TKIAM/K7ttCT7kNpUPNwp0ErUbc5kl/z0J5iDKSa/q7n6m0gfLS0+R
C6TnsNKUJkIyYwYdvxgrpCHFNUSaor+P+kcXaGQCqMdlimj0Pk5rdcDemOaozS5mey7mBRUL92nk
WLaLfL3dMLo/tzWvNmXTWsCEuwrZ5i0Yse02G6OxWpL+D+aY3/kCAGcraRX4tkXIEqpVhjteC3GI
csvQpxQXjl2jsSZ/O3vGgruirn0YH/uobQj4W9NWnwR0D20uMVhSE9q4VQQeSdcvjgR/vF30b1LP
KDoLHzKJTBEhCisNmFBjT5qiX8r2iSQxyMzP1uOngJ8aXggeR/SnLwnz/D6sIfazHGzCURCI2J8W
2lZmuXUteoqL8zpIRAil+jDBA4zlhKbWG7l35C6PkYVpCGyeQXWTxoK0IS67a9hjHVffx9USMFWv
j527tZVb+2G03jycB7m6LTwKMGN4GrDhFMfXr8qwV9cW77HX1xDtWCXNB4ycxxWeJZmYCP/yN3Xt
2qHNhEyXBIdkhRgH41YsHNc+qxMkRUyyOIowF07YJLg86v1vH9TZNQMEN0L9lkJDbOsns4thyJRU
G0vBZuw5jGBgy/hYvf0DZXUQHw0KtKJI7KtjsHEs2iFpGgSJF88Wy6vinctJ667uJE4WUamGSmap
eXlB1tvuM/DW76P4ek2m+VNiKBfW/gH8dIsiFYh44s+d355V1fXP82nacvsL9aoBcFhVJCFP0np4
RGFQzB1oXg3TW5quUSNekjWu+4sF8X/hIaUwIr2uTgwk3JGUfyZLchTuOJoPUh4095LsoNbuclPi
bqp4ODtQJQyNinSSyhIOY4l3F7jl0c6H+ysqwa42NWo9shF80zrYnhONgsiqoS2A3j1Nd1ua/Jzb
8DwQJWNeV1QJVBcBkpBPnnilV08G3Fr+quNw6L4OorV0oOL9yHivLipzoUwVfkyt/tni9aRM1RTi
EnuA7W6W+rJijPGtUdYA9SglkjsN6CuXw+rlLK0QKMrNG7X9L0C73aaasvJa/6wC4gB7J0PZ1SlQ
6SqEsc4EUmQn4DYgAsXoabWVcjU4PMQ+4kmtlACH80aLrEYWNyvXlmCOMh514t86k76NRGLzF6xl
Rs+FV71jn+zwlFV/0TKJvdzVqgqlyABpcgBC+q/jmJWasPFcUj6jKpMyhU2JusKMBIaFHm2iwH3P
G+S8IaU8DPzA5SBALGueMX92c0Ky37g9tvUoXnko9/BzjTZZ5gnu9XlRydWiS9cb5+ztK007HA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EF2BA322CD99E0"
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
content-md5: EYYmN2KpB+MlxkpGhRnvFg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 786735e1-d922-47ae-a6ba-be5b092d0acb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-67eb4015-6086-2210-f086-115d9df30cda/test-blob-50cc771e-cdfd-77e9-3c7f-bf0f8276b2de?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 6a7f2c3b-13af-82ae-98ed-2fcd9f35444b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EF2BA322CD99E0"
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-lease-id: 6a7f2c3b-13af-82ae-98ed-2fcd9f35444b
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 66a29759-8a01-478a-965e-730b188b55da
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-67eb4015-6086-2210-f086-115d9df30cda/test-blob-50cc771e-cdfd-77e9-3c7f-bf0f8276b2de?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-Modified-Since: Fri, 13 Nov 2026 00:48:19 GMT
x-ms-lease-action: renew
x-ms-lease-id: 6a7f2c3b-13af-82ae-98ed-2fcd9f35444b
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
x-ms-request-id: 6cd3f749-07a3-48d2-8b28-fb4b91d42cc2
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:19 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-67eb4015-6086-2210-f086-115d9df30cda?restype=container

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
x-ms-request-id: 46a90598-1af0-4dc6-a742-a33e34b47e1b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-c97d8875-1661-9be3-6b1e-0d768c3acca3?restype=container

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
etag: "0x23586CE57A7E140"
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a9f2e771-37af-4083-bf4e-194a9d6c9ef2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-c97d8875-1661-9be3-6b1e-0d768c3acca3/test-blob-2dfa7037-9f67-e13e-cace-31e7727d37e5

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
o6F3o89yuyVJ4/+QBjj2XSGMli47F+TWSpz+kuX7Ke3nKNLrwyjTxbTU44OfrduS19PF5ecIqoy8
oVkzdClATbkRqd1lC5r4uNB5ZjNgNpzAa7oRNkMG3n1GLiHPoFGLlJXJjgP9Lcw5zCwWjkRYXGq8
cghuLhd2CstgHt14KBd/7tGelqiZwz3u12kW8E857tK3Ey5IHWZ+U4M3nQ/vwaQVlqBzusXBI67L
f1auXxp8JjALwBXpN9BrH0IlYSYu/xbFAVquxjQM9vB/fZ0Pz/Rpu3bf5AGPK1/QB5qCnMGInIBA
6V2/zWD8/sokaboyW09OvKWvTxoVNdb73r6Zilou9uAdzuaXqe0W4+U2asGknaxKNOAc2U1mK7OG
xO+hYnRv9nPaFY1pthK3mWw03ssUVkEST1Z6Eh2StqIzEOT+dIBxxnROyoce4X3NZEDhMU3ocm6t
jxMe9eNWR17qNaYuuSXrwxdWxou5823YrK7csIVUS551UORtU9GR94MpM6vWn6sb9m02kavi9Jul
RUg1eZbZluoHuGhAfXBFxc4IkL/CAQ0DwboXHrnzk1xIxw2IXH7sUJ3Az+dD2nj98Mvc2mTc40M7
MbfcwXcxFCUL97ZivWlQHEAiATImwOdCGS3tFrj3bOTJTSrHEI4lj7rBN+LCmzNijL4kueEQFHHQ
madKQ/1sFIvRmG8/iQux/HJ4ZIkEgH75i4r607ICuDi49nbn20u8VSJX8ALDIwKyc71vmK/oyxko
UbhzcUHYz982hpKVyiEmuw9mrY97NmiHSGD0kiCJ0CtcvomTSePhfiAjjJxwHKmcSdyggR6JrBtQ
6yng4zy/rbVnOAuXknIrhC5vWKnLFyu3WEhD6E4M0xFuQ126AJvkY9/mCeSdBLZqdf3wGlRxhNP9
KYv0e8RnWmX5KE8VcIOTivXK5A5HGVOS2XNRHLi9/b6JvNYQ8Ocaf65+o9xmVQR6XY9ep5/FthA3
YaJRFT2sPCuRi7Ssg5oNr2VfyHZ3K4Ru178pXlUexAbG2I5FyGlw0mex1clQzdn0Ufc6Ze2avzYe
4j5+g93Vcset5aoMx+f77/YOxla6HgnlNAxd414YLBlXJ+Yr8k6J22ICoucv6IoQP3b3i/ngY8Q1
mE/QeI9olLmRtKABz/2nhevzuHsitkyCTaToIaAfd8Mh9ln/uGLTmg4tnjPpD295TwYN7KtJEuIC
Tivqf3IZcT3d39mjp82IIB1s9BcZmT00b9KaEYsX2ON2/Go36BqbFCz1CzCW1ac5hcuN3B7K6bTt
tg+gfl+xxQf2LapiUDgD0d/qI40NnpoqYYy/ifvEqxO1STEK+pXNREYpn6f91jWTigs+38Yn4A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E4C2850389C2B0"
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
content-md5: 7+e5LXFFNU2V8PAs33K9Lw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 461d9e15-baf6-493a-a9b7-47f97b0a660e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-c97d8875-1661-9be3-6b1e-0d768c3acca3/test-blob-2dfa7037-9f67-e13e-cace-31e7727d37e5?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 1d767518-f2d3-0b3b-3281-97ad0606f8d6
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E4C2850389C2B0"
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-lease-id: 1d767518-f2d3-0b3b-3281-97ad0606f8d6
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2265eb82-f953-4f29-8552-321077727e4c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-c97d8875-1661-9be3-6b1e-0d768c3acca3/test-blob-2dfa7037-9f67-e13e-cace-31e7727d37e5?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Unmodified-Since: Wed, 11 Nov 2026 00:48:19 GMT
x-ms-lease-action: renew
x-ms-lease-id: 1d767518-f2d3-0b3b-3281-97ad0606f8d6
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
x-ms-request-id: b78c0c67-60e5-4839-9b01-eba0ef3931eb
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:19 GMT
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

## Interaction 9: DELETE /devstoreaccount1/test-container-c97d8875-1661-9be3-6b1e-0d768c3acca3?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
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
x-ms-request-id: bd83cba5-2bfe-4c75-ad4c-15b119fea16d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-47df1d4a-fee4-2cf2-8b57-2cfff085cb4c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24E1BF1932C32C0"
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 732522e4-e456-4876-9f2d-513d1d498f5d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-47df1d4a-fee4-2cf2-8b57-2cfff085cb4c/test-blob-9519698d-7883-51f9-0a1d-6d2565282e8d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
kTT0wufg/BmCSZF8xTwarLZKH53sY1LRI409xpHMx2Ion268kQllrWz/EjrmfYzNA8BvGgmRoC3i
I55ZozaHtYIvUybNXhus5XIw7FAY6qYBb8LQXKxZl/5A2W5rCwo2eF23typl/6SlwzWWYLPcyTj4
WDRzt1jV1rsojYStQdlo+nTzYDN7m28eK5l3wjdLYxA1crLVw8EE4eBuPXIg+IFbLmY+6WgFfL3E
VYu/XhOE3Cl0d84mkjaz735SDV78/TIXG5PQDHqnMPb1EW41RYPM6WBJq4GzNZwvi/rpsm5ex1dZ
p0KAs9CuzUbYMIHIfqn7hSP9s1KxZOX3oYGAvX2HlkkX251BTDWPmt462gQbZwxQ7ixLYBQEqENc
iBJPLg/JUZk3saMMujjtbhlzdonh3Dl0L85QPDU0EjJa5MQjQGvOcYlq47VpRDT0XfL7kTG5e6vY
2v9AeBRkA59wsdV0yi2tpAUAdvmECuqZXN9DOYEAoGgYSmVsjvl0BuAW+ZJff5LFTewsuQSyVNAU
phs1IMkdbxBsXIDHQRYMi28YbRFYOt1MfeuU1OdkZfWVV+fdP+UW+IqB8iMR/QzVIC6Vmee+vGw+
6KPeiZopCPaLMukvLkyKAnSH1ki5O4DfvrS5z8wN1pt6n1ZCOG/vWOkthsoipvHhCpdzN+YjhK0i
/srmcDkqfVtNtI71R8oEl31ejLS1vBjC18Q0mp+1VxqoIDmkCeewAglv1PJj68PNbqBoxfj4bEKy
JJl19eK8mF1zTSeQYI6WrYmrRucmXusAZyz+TZEir7P38uRNOw0nsjyU756cPA4R0RduTSZajMWu
dI61vUvLUZ10mG2pSHJ8g5SrkW9MZCoe7Xt6s2KMnWUfn8Z/cvTxyJ0BKKOgaImk8sqRrvtVYRBj
ltDQUZ465/sIiqms/RGfusjRSjyGfoXx1cCY++5qyT21G9sjIHf/xkComN3g9/W48fQygxbU3BdL
3nvdouwNncBr9+E2fJlR0oP73uanEd7L3wn5N0Um4D7D10L7ISRUmvoddP8TgnVb4bGT2f4xpMyd
EsPiFGV6RBeicqRWVbBfpkTsiZzet12TnlaUkwdAkjN2Xg9hcYaUojDocA/RBIwBMzO6RRovvlpl
T3UP5rAPYuBx4Pag/jS9V+ds9UZNwpnKk2DUhk0YRqC1+yIQhbyA2A4vYCSVYDT+/O0zw8gTF43c
RVJPO9uTWJlW6wMSrdIq7B04HmF1NDMs1Ypf5IPXoeOUND9pMJwynAeKP3Qx604bCdar2/krZhEf
I2VRM3MVfkoffXiSwbuABYFa6vS+++k7RNutLMXqac0uSQ024GiTdMEqEW7WiEcaK9V30XwcYQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x262C70294F59D80"
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
content-md5: HxN0hikamltb4UH3fbX8qg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c1d897c2-e835-4703-b23a-ebde43800739
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-47df1d4a-fee4-2cf2-8b57-2cfff085cb4c/test-blob-9519698d-7883-51f9-0a1d-6d2565282e8d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: ef167c27-6898-8452-3514-ab6377ae4924
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x262C70294F59D80"
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-lease-id: ef167c27-6898-8452-3514-ab6377ae4924
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 539dc7fe-19f6-4c98-a9ec-4e149535641d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-47df1d4a-fee4-2cf2-8b57-2cfff085cb4c/test-blob-9519698d-7883-51f9-0a1d-6d2565282e8d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Match: "garbage"
x-ms-lease-action: renew
x-ms-lease-id: ef167c27-6898-8452-3514-ab6377ae4924
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
x-ms-request-id: 5938fc6e-ff4f-47f0-9ba1-8f4c577f801e
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:19 GMT
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

## Interaction 14: DELETE /devstoreaccount1/test-container-47df1d4a-fee4-2cf2-8b57-2cfff085cb4c?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4387cd40-686d-4040-a651-e3898bfb7d3f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-3375c618-e994-657b-bb93-9200ef729751?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2604C25BC1329E0"
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 00a421de-3fac-4e06-9dba-ca58b78fd048
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-3375c618-e994-657b-bb93-9200ef729751/test-blob-bae5e812-79ca-0cfb-6ea5-dc592a25d06b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
4rFeCwbpzT4AsTME1lGVwn1ZUY/Jjlqey2nE7g0hOpbDJh4+E4xLKRqnuhhG9zUcEBrc0NRAolNW
v0CcJN4w3nadQK8zVq7wDih0ItRBWNMzp97zRWnCg4TK6FNMrgQ8dtuhqbaG6blr7MKsy4B/FGds
aHz/PZkN270raG5apF8jOKv4oK8drb4lh1mnFbcDStPs4EaHPDhClM74WoFKEEhiiJLUh3S4Trq+
2rVAZcUFJx2absMZm/xytgvhJFM92nYRRY0lL8NfNJGLyWGDAi4I8zJjsKKESO2WYdFo1ylngf8/
LiA34PhaOjkxjtGa77Pd2DEh2SnUjPygj83x911nJEhhQ9MN0BI5CHVoUrob+3Edi/74RqfWaqEk
l1EraEPcyWqJOKvgzwce59C0azlBhJNb1Gteb96gi9kx6TjBDqAxjIlQkcLGPbz32l7WIf9n4hO9
z5TYflqL6KzSrubOXNgwgt6w8fPQlZavZpR/yWrZyQYlAz8LWQ4uxKgW84/VKX2Gpp8gt/Eg7Tr+
KBfFDB9C+eTgqFiZJCjQgixKuqEH2T0W+SPLuBIUBRYEDTD2aLiJ1Pqq9YEl7IF2UDTE1TOY907a
rxL8dkDSy6JClBf42hl0weanXOS78QyhVWjdUDDjbBbhG7mljV252Cre4lhqfXUbUBRN8JpqHr0G
WyHY9HpyXycBFr5gzjSI7oS63Q60NtfywgAblnt7d/37nzE74eOva4MwaWe3uoHgxAIWsEGuUiRK
5TJ6V8mrhZ/AZC8CTQ2hCnGLg81vOwd+O9J5Zca8TEwN8PuwNBS6hOPI9lZS3nb1dabPI89X2qor
+xv2MiDYBBji9VwR8NVd0P7pp0SxLFxbhPAg7Ch9tRZQhTj4w1LC7/I9b+kZ44TQclLQbTNmes++
m64wuBfvZD9GwGucZA2rJ7dRc7xzQaBrUHrWrUfj6gppOSikkTfaTgup0yIZMw5FJEZ7FAYSS1kN
xWicGbf4YtZgMyrlB5WAdyWxym5+UhxskIgAaNYEV+7OlszPPTVTsXBMuADjYB2x+p3hYIHrj3JL
MIgv9/oAXNw7FnDJsTnwXhj9MZkciDBqT204IvZt4wdZhA2sJLp1TFwkqEms50lj8QJo7V3ZLqdX
xKeNxznlzTJoby0sQzleiOU9+ODmvmgk1TD0BfapgFVlVWAT6IQiPtoXQ3ccN67JCmV4mzXHcAY/
afIJ8cg7v+/Xxu3YSp9gGrkFz3rwB52CK/qRMeQfneRa1H+SGU0S24SIRHDA8L/FF4F7wqGLTmFU
h8XNqo0KuCkJfnYgzgFs8vP1Z8MtwTo7zBlio9tCzoUdPZKHRDD3fYxHt3JIpEiAD8+tlueeJw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x238A9C4C426D9C0"
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
content-md5: Qkw8eDgYkfYyPr1scrcK1Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d54ce47b-1590-4fa2-a46c-6f258cb123a2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-3375c618-e994-657b-bb93-9200ef729751/test-blob-bae5e812-79ca-0cfb-6ea5-dc592a25d06b

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
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x238A9C4C426D9C0"
content-md5: Qkw8eDgYkfYyPr1scrcK1Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 55af9f22-28ba-44f9-9f51-cea589f87f7a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:19 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-3375c618-e994-657b-bb93-9200ef729751/test-blob-bae5e812-79ca-0cfb-6ea5-dc592a25d06b?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: de928bc5-a773-4e14-c6af-f103916ee4ae
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x238A9C4C426D9C0"
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-lease-id: de928bc5-a773-4e14-c6af-f103916ee4ae
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4ab01229-c7d3-43be-8784-b50fa579a958
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-3375c618-e994-657b-bb93-9200ef729751/test-blob-bae5e812-79ca-0cfb-6ea5-dc592a25d06b?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "0x238A9C4C426D9C0"
x-ms-lease-action: renew
x-ms-lease-id: de928bc5-a773-4e14-c6af-f103916ee4ae
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
x-ms-request-id: 83de55b7-d5a5-4a90-b434-a439e53a74f7
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:19 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-3375c618-e994-657b-bb93-9200ef729751?restype=container

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
x-ms-request-id: 759eda33-aefc-4a93-bd1b-1fda8af5f44c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

