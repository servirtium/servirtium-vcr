## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6dab562e-283b-680c-dae4-cb607a233581?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).RenewLeaseAsync_AccessConditions
now: 2026-11-12T00:48:18.5919564+00:00

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
etag: "0x23F6A18B7820280"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fcfb9e96-ccaa-4c84-8631-cfb472bbf66c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6dab562e-283b-680c-dae4-cb607a233581/test-blob-27386a3f-2de4-f142-2c46-5a28b8ab6d07

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
SmypJWpQ28wMIrP+ygDVGE8C9VFtjT4AFLlB9M7jsC52wxUNeQ8W749rGsJ6RCYscEHZtbUcmb0u
qRGxD+b+KHGEhwbqyJ8/7AbCAXJ7hs+SFYSMCvp5WilY3tD+ZeCobfFR9rwgQaihmsmuWZhKsyNB
HvphcR53CizckunPQIYmGZOBKY8TctPb6m8wygCRDSutvEbmRvvS2euPQ6++0llDiEAEyYmTLqwm
hoevRj8rS4S+IoRAQNKXrlCjgy8kHBgW7ULAjEOhGY6Zv8B0I5OsZPcqALDVA0htbBs576t9AWlv
mFn9a75AHAj1poARI4q89x83+RxnQer5UyAoaCrjHL5XBYs6rvk46uOo313IW0mRfPeLRQdMB1du
BBeeGLTdEonCuh3/gkkm/g85v2GNMffWl+szV9a2Cv4zy6nhmtEuyszTBaEskfmtZUb4E0j24dIg
x4DJqruyDK8ezLefRWQ9CvSVuStVqgXxhfGPvva1PenXwNJRZCAQIPnxDcVCDSDiuglUYCemyh17
2CTKIk24aI7NyISR7KXThJgyY5w/r3fQrAPtYdzBMPW11Yz7Rv2rOaQ2dEWcUc1jgNuOdGaBOyis
+XVKyweyDJiO2xcY2D6bhir3CDoyNFs2iuEAMruONJlkTkyHYW2dhGitDXa2Sqid8+48iTLtesQa
FEElsdncAKd9tInyEyS9WoTShSfkfz85Yz/NUqpndtSHbU0seNOO0AzOOZYfq+DJfi+uGvWdNpQB
7E6aD638Fj60aqbXkOKxRLQaFkapGrdeA9N7uFvf6ja4KoyE9MFf0iNXakA68u5M/dZAgh9OWNGW
OwvZgF3j1IBvHmVWLE/zu0MjUa93JBHlL7uEn2cWatK67rm1hVHFc5XAy9OJ9tCHTcfcKgYiHxf5
9FGiXzUZWLOSmz6VPTXyXd0Zt1k+Wzjq/FKfOj/LmM+iu5AAIxRgpnIf9lqS8Q+S6s0oCGi+u5kY
t2LjeR1zxgNv84Gk8TnJuRDmHmXdWApCDFByo49n5AD352yyfCxVqy9WI/6N7fiTX09X2J0zO19Y
oGzMASN0CA+BrArNFzzjkHI1hzUMtR9Y3kNADwxixKwNWdzAiKkM4hrvC0HtxkgSdEcq/rMpTOtN
dCPfNPgDHuhewL1gIwfIKaQaHKndahj7LZrEOMX44w3wchSGLK0i7O1YjwWKslE/YdQPDy9CbwkK
5AddPuUiZdyvb7DyQv32+DC8hdsScHpJhNfx6dTergILfEimxK0HNiko2kKgTR/XGBb+huot93OM
FLkOMXwI0cGu58a1UDSDtE+x6ZU4qTe4GtC93ycX3oTUGq/z+ASsIAmA8WZYIcjie9Gbew3dVA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2641735B5F36940"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
content-md5: SBvG99Wr6XXd9fOeUP7j8g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 97478f08-7cdb-4579-97ff-b7a07722509a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-6dab562e-283b-680c-dae4-cb607a233581/test-blob-27386a3f-2de4-f142-2c46-5a28b8ab6d07?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 1656826b-4aac-9af2-9708-42e035848fbc
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2641735B5F36940"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-lease-id: 1656826b-4aac-9af2-9708-42e035848fbc
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e916dfab-451a-4266-a5bd-4e7e30fbc985
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-6dab562e-283b-680c-dae4-cb607a233581/test-blob-27386a3f-2de4-f142-2c46-5a28b8ab6d07?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: renew
x-ms-lease-id: 1656826b-4aac-9af2-9708-42e035848fbc
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2641735B5F36940"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-lease-id: 1656826b-4aac-9af2-9708-42e035848fbc
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 363ef200-cceb-422f-a699-0fcae8f62b4d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-6dab562e-283b-680c-dae4-cb607a233581?restype=container

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
x-ms-request-id: 07f6c53f-8f10-4db4-8811-780bafa2cd9f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-8cc9054a-b7b7-5fd1-f808-db64567b6276?restype=container

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
etag: "0x201174B9DA1D780"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 95a01710-983d-4cf2-badf-bfaa428dde4d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-8cc9054a-b7b7-5fd1-f808-db64567b6276/test-blob-7144c6f6-eea2-d500-16e6-5a5d1641925d

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
6xVRdkRRnLSw9h6kb45EG6bL6W9AHRlcBPN10Vx0SLZ1fXhAKuwxpSmQwazPXGaIoj+3SlcjHc38
9XFQ28tXPK5nLvEVA/G6mkRGr1xtjKiN7C4dvf1fUl+qRDR64cldOIX9Zy10c55N/LAS3W5xjmjJ
w++cOn6wCNySa7+8P7l76HbXbyR6GHmQz8BMTHXxObXLsR3awP4GTV9R4gjekL33l/T3mR9ET6t1
DGq+Y7tnoTEK8Y6boSd30SHFKDVxsT4CVLSA+aCVh2JyZLSUR+mj6kHW1J8uXPbNf8f9fiZ2BFsr
uw4G56eRdGksKTxz44k4IT7zmtyf0/i+snnYmAg7/F9YaIzanAOaRGA1AjO5Wpw+xV3ngml+jOcW
SDQtudxh8CzcGnv9XYQ7WVV8adHFBFjdmdKrVHn22tukxFTObIuD1BIG3EAgQGjZrCgTAiMWUEPb
UB8Jtpyy5j+fWJgvbO3K+JS/vigYvFhq0qdR4ti4jnMR8hxreR51U/YAgejPqT87SQmOVpIbw5PG
n+P0YQRn58okHnnRX351SWsyFztwmihnFpnOKTjh9S+IpNo6gfHxmJoeqorGauqLGQwm6atYVgW7
jEtqmb6SQyhKSLqkO8h5QH+gUu+eoayvQxAruwyDME7Uf/Smh//ci2dhfCEv5t1ErKgstwMVHOuf
u1atZogcxhds0LvU07mAxMaIPCSKf1wy5w5jV3lKvmIIBsupLiXfRbUJwxYhb9nvrPI8jeDGFTz5
e396uG+eIRFZy83t1pahqPZvgLtGEHc1dKqHDjCCQvGPr7KlZY1Ga6IFyKQLAtVbm+TpV5SAsmoI
RETEFxPg1onbXibk/ENpKBQZQUjSKXHVK3NMmOpcD/1HnCBJgVSOJPEbL6Oud56hgC6AZnEiNRvS
7+yglD6ef08pnGAjH6fAihxWt/nOJrPUqhi83KiMJWYEd5Fo7pCzfbBUhNs+fWCHv9tUy34hA8k4
y+kl4qOmnXb5HqgVWJyMozpJeaHYli23NBzNOFno4nPILyOmjZsNrudlRF+4cmc/xyhE2IonYDW8
bq2G2WUcETs0TSh45RWfPMu5clHO/8K1jXAxpArpoM/u6h/thtSCSDMjhCU+xuESpJy+bu3j7W7r
0Uv06m0xSqxYivr2sbX2NyodqnqddseOH/9tKzLiCvywArWJjV3G8Tl45jznG/PnxzbCxUP0TlqD
ZcptxB96dn/9Ra8AbanMV7hAJJCKpwQMhmP7H0S5vLRaBSiSWC0a/nC96dVD5lqN9m6KsynK+b7G
YT27flY6RIn7pWeBOf6KJiYgzb4uyJ8JbinWLwiKkAxpzPfwXn8ZgqRLSEHzC71v/4wCqiv/mA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25340FF821FF380"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
content-md5: toprbOevBRqHQd0Veegbwg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ec61afd2-21ad-4b85-9314-c60068edc6f0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-8cc9054a-b7b7-5fd1-f808-db64567b6276/test-blob-7144c6f6-eea2-d500-16e6-5a5d1641925d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 10b29e99-642d-8015-7015-5a176d079ac7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25340FF821FF380"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-lease-id: 10b29e99-642d-8015-7015-5a176d079ac7
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 759a4bfb-313b-4e1a-9bb1-333fc4abecc3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-8cc9054a-b7b7-5fd1-f808-db64567b6276/test-blob-7144c6f6-eea2-d500-16e6-5a5d1641925d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Modified-Since: Wed, 11 Nov 2026 00:48:18 GMT
x-ms-lease-action: renew
x-ms-lease-id: 10b29e99-642d-8015-7015-5a176d079ac7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25340FF821FF380"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-lease-id: 10b29e99-642d-8015-7015-5a176d079ac7
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 986894e7-562e-486c-8b18-531817fedda8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 9: DELETE /devstoreaccount1/test-container-8cc9054a-b7b7-5fd1-f808-db64567b6276?restype=container

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
x-ms-request-id: f5c50ce3-45e7-4395-9427-2a18276af94d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-194a06a7-7fe2-165e-626b-662f7c87e5e0?restype=container

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
etag: "0x21772DA10C6B760"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e763b670-ffa8-4edb-9171-7aff05cc28f1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-194a06a7-7fe2-165e-626b-662f7c87e5e0/test-blob-515d336a-6eac-1eeb-8fcb-d82b98f44f68

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
ZcVbo+DmtRk/nK7B/eUE6C96rTmpSBs4GyyJF6czfm0c/cq2K0L/hH1DEhDAKiCpxu/7HUcWvhyp
I4i0XJ5yDB5Apf8bTbzteim7ZTYLePAL31G3N2AmBT+tDQi5Syff0QXxf4QhjXgyDqMeWljlnquX
qHxNutW9Gp/AbkC0My4B25QxGfhs6lHYhSm8CKvmx29dIqKrkhYvNGXkYB83ftp1HH7EtISzK74q
dDWsARH02abRVxGMVkl9AeWSh4kyoQZOR+ssIRLqqvfjgB7hgzJU8IZ5ZifI6cY1RrOfIKM1+NMu
XbomyLeT560aqNUqnH2yPpcCuTvfhV4l9ttfSolTrohLsiZ4LSfO5X56rkDwCqo27OILMj+XT9db
ANHcNJwjxvlN3+lXORBwM9O8ZdcdNeswKV2nSHtIs2NPHC1V8rDiVuhHoivA37PRm/9r2+kAPsvm
qws+fH19BSyGBxzjGkEi2Q/u1ZLAcEqq1ax83dd6T95hb0alpNlqyZ3/OteW7oG+SALaEWg4JTvB
k6fRASdUC7g+gar6fTU1hAz1wTVzFOYrvpTUnz11KUoK5BAymch1qi4eV2zWw8vNpIxcQ2MGTn7A
pUOTf2x7yFhg8JkkA+pDfxcGVL16VfrIB/uwGebmBJaScfSE4SrCo44UddMyqaGiGMNM//nBRk9I
yndxyq9yeusDkZH2vp7sQ7EuZd8nll5ZDgAimQWc0SukPBeyUdjeovvnLxcQq1klYLtHkuBwIDQZ
F7uvT+DmZsBlUoKGOfLYUMPkP2dHSWOm/ThJVD5LNBvjmTodL1IaAchWqlnXnifJb0Idi+DM0s1Y
CVGonBGCGh1mo6C3uyBwyT6e8J8Jzl8RgOX8Lag7FsdsxSYAcmS31I87cfqHEbQhrMKiLuEuTjry
lhwshux1Ko3YS/b6cFfZ5xwPzV1kim4w2oHmmefmPnbrDttIik6ixkZtrsa+JjxqyEbEHoDcjgyu
+6tqjpGl8gx/DmJ7kVzObAcX99uocrNFe9CgIh/1D3/Pmo6iNzi0x7u5Phja7jfp9bF5xZYwBYj3
JRLBBNDtiv/irPfOKzTPYjAf7jSba42ZtixufEnpn5QGqhIl8sLrzLQY90I/G8l8qmJmEBdUXLmF
KE2kfw21+Axjx4EiqXBtNCJ/gnNKWZti8dHngo98sU5YoMp0R02mY/823FNIWgDy+Nv11dlGO86y
QY08zXZ95hYyyQml+e3U2R90E31HGZfR9Yqzh9x0EmT8wQW/apWIuPU9FpD3Tf7uIPy60SdQayf2
atjryV46vbekqDjnFW6K61qHCQMG2qiLxGffukA9q1XeyP+8nO6XAljZUqTGBwqNL+bMyWEj8A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DD0054606D10E0"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
content-md5: 1V6BqK5vvXdC3+GzVEWCpQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b0e88d34-202a-417e-b92c-55c1100e2af8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-194a06a7-7fe2-165e-626b-662f7c87e5e0/test-blob-515d336a-6eac-1eeb-8fcb-d82b98f44f68?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 05603090-5af7-7703-67fc-e2084c6fcd4e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DD0054606D10E0"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-lease-id: 05603090-5af7-7703-67fc-e2084c6fcd4e
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b76bb4d6-0e00-404b-a2c7-337049e73d85
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-194a06a7-7fe2-165e-626b-662f7c87e5e0/test-blob-515d336a-6eac-1eeb-8fcb-d82b98f44f68?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Unmodified-Since: Fri, 13 Nov 2026 00:48:18 GMT
x-ms-lease-action: renew
x-ms-lease-id: 05603090-5af7-7703-67fc-e2084c6fcd4e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DD0054606D10E0"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-lease-id: 05603090-5af7-7703-67fc-e2084c6fcd4e
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ceeb2365-e3d4-48e5-8558-8f31c75aa812
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 14: DELETE /devstoreaccount1/test-container-194a06a7-7fe2-165e-626b-662f7c87e5e0?restype=container

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
x-ms-request-id: c0e8cfd1-15b0-4b8d-8fff-29458f9fd806
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-ab07f06c-882d-c403-bd5c-528a5970e2f3?restype=container

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
etag: "0x225C12502569740"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 08a05c3b-1326-4bc7-99db-395006fb107a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-ab07f06c-882d-c403-bd5c-528a5970e2f3/test-blob-8c6ed8ba-e93c-a79f-5462-eaa8e3ffbe1e

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
Ypdg2Fp3wggtm0ebCHgd9xnuTXQAQRKCUV9Wy55b4b6eNCjCDwmZQxVmXqChA5/cRPKO9bFKHiCF
3of6IPdq0bqJ/dRQWucPVQpemeJx4E3AeoarzewMVBUHPDGCnyIe/I3mFwbKjOkKfqCm7IQ9FP06
OaZwvgTOfKm+SB62jbXoP51VishH9e6coE5MZmeRySgzR2V8rT2IGJtdDEPLVPDqvqzn6Ik180S3
0x61ghZBLX71gkVQbJFgzHIt6emq0UxeYai7qeGf/lQhxNkf0pWEG9/F1tKqmVEbhxsWBwlbDQLR
VyBuhoOcVYTxL6e3QPrcqc4K5fp6s8hWoCLFiPZLxrfXTXt1FZVbKIBOuWqpY0YhOl46UScIV6RY
GOZh1s2Npmnw4PN/ZpM4rrx6LPpdrDzbpE6XEHWPzvXXHf2v+VGzwBIBuYNTotPLAaJrjSup+mup
hTJ/9ZXzYRH9qEmVibRrx2vnXPO5iAJ6zA7SI0DJLSKRBXQfM8t9DVdxVfmJNXjtAMbAwZ548P0v
BCiHID3QM3onBIRAS5Ogak6bSDII8ZeW5SN6CWuDGRV27y+i9ewaoCJ/YjH0rLQzIFdQ3KjKJhOR
8TsZVikPo+puylxk/XRhgacQiY5moThvR+kUMzxsq8gbEQSxAEn4cL5GheJXziLj7lsAup2EK08C
qg9A+m+tAR6TSOxvsIFdGBnPHxxWF3jHMEXhbPErluW1rlU6t3VOmIPExIY1cz7Zo6GEtAsyrJKX
eckqzJUsaLEGuQErI2CjgYaYklPxkb0HB8lPpuLaggLCoj6rI8ztl1vUL7k8rn9B4DOFmho/pecM
I8TM3cLPLDf/aIAh+F26qvr3HWEDyllJDsWuVOjog/1WngAHIbqZBAKCPEX+H+jWy+8fR4iFCFhq
g8/8IddOF+WDylldsolAXhhegY4TSu7d2In5yDt10ZannZ3rnOMrNCVgelSOeBhl3+lvJofKVjjg
HkhOVE+qDvnDthXrVcE1M01ps8+aTl9wlOhSBaoO3EZlCn6a3d/WtWxay8IDeYonOvM5YaJoRs/p
3cBmWAhPtNnOhkpDmlZtkv1jP4OcbBpeKsu21Hqj/cSusf8eb11jCxboNfNA5J+czM6lBAZLTXCm
By09mOBfK4mFlelWTiOgADRtszcmHkYsGgir/vi9YmOPeGgwJnI1iQlquk61RX2rBQTS3pk5f+nn
EX7XsyyQxzKFx9W6b9rCNyktvGP3dtSLAPnz64TKVvl+SRXzXtbc2fIcMH6n8JUqEKZvC8KF75qq
TLIzndyuu3HcOybFztlSUONw20VV5A9jydrdWko3+Vl6SBEjqTwWbXUMy7VvZUHMHLrfFRRUVQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2379FBF156E4340"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
content-md5: Eub2C2xtvbuhTsk2+wTNVA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 753ad998-ae4f-48f1-b56e-042adf5f3381
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-ab07f06c-882d-c403-bd5c-528a5970e2f3/test-blob-8c6ed8ba-e93c-a79f-5462-eaa8e3ffbe1e

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
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2379FBF156E4340"
content-md5: Eub2C2xtvbuhTsk2+wTNVA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 421e55de-eea4-4db8-8787-091d4c28b5ba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:18 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-ab07f06c-882d-c403-bd5c-528a5970e2f3/test-blob-8c6ed8ba-e93c-a79f-5462-eaa8e3ffbe1e?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: d4d0a368-d002-2660-a442-cc4a86c72fa7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2379FBF156E4340"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-lease-id: d4d0a368-d002-2660-a442-cc4a86c72fa7
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a9dde2a9-d78b-4b19-9d76-a238a1120052
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-ab07f06c-882d-c403-bd5c-528a5970e2f3/test-blob-8c6ed8ba-e93c-a79f-5462-eaa8e3ffbe1e?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-Match: "0x2379FBF156E4340"
x-ms-lease-action: renew
x-ms-lease-id: d4d0a368-d002-2660-a442-cc4a86c72fa7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2379FBF156E4340"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-lease-id: d4d0a368-d002-2660-a442-cc4a86c72fa7
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72ff0b56-dc9e-44cd-9ba6-2b0cad653c39
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-ab07f06c-882d-c403-bd5c-528a5970e2f3?restype=container

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
x-ms-request-id: 8df29d38-0621-4a58-b5c2-65d2f0b2713d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-d06d5aa7-1848-f45a-6398-113d8f58e445?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E1B8099CFAE670"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 05767388-53d1-43e0-8db4-944a5f93a6b7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-d06d5aa7-1848-f45a-6398-113d8f58e445/test-blob-80a9f325-67d9-9d14-14e6-2672a21abb04

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
7RM3uqaEDE9J23BpvyKWTF6GJZIers4/Rs+8YvLnUkndDFB8ICmfoedaNv33qt7xT9kUG/Qo5j5E
+HTWx6lcYokmi7LSGiw054SrxHjQR5vxyxMY0jZUtSURNye1yNk+/dR00B8rHjSt3zRwfCLGdLHY
5fyVQ49S0taMweIEfx+qbcajXHZ8xazea/IC5DgDSsN23OLdqLlFIv5In11SqGAUxQ9bIhg6XCBP
tticUO2eiXYfjqM8zcQNXjl3NCVPjMKS7R8opyirPH/CjfLgqNERqRbmMhq92PdLTsTewij6ACkV
CmLOduFOdFIjeT/SLLZoZooPaFqo1RUn3FlkzHlXyI3Iy55vQjM0mL7ImV63eSEOdlue6pfPbTRN
p5mI6qfYy7GyCWEX+CRW28+b3zu2b2M3VVYdud71+V1pIZuarK4W782tBXDA9n03Rw7HM435lzc1
UJRQuhLSvBADrdeJuy4hhPBtCGnzd1/Z5nHPLcXQcIpjZFsaxjW720hfvEimrovgpq6di47OQtg0
d9ShA45KMj1MJlfSB766si0hk7sWMzfl74cWM+X8lSKD5U5gGte5FYkLWYg0DZ7v4thgrK8dHkOc
uxMHM/9XUJA1TyFvWphVZ34xCtmvsOLoJ1EMm+hzZcYLw17DsuGKtAn3/718gIdACkUw6xNq7Qox
HgyuS7SowupbZJY5krWcp1bQuLEka6fJzJCiQnmyoNZUkpPU22hUTj3TIRvwBniQk0S9mTRZDLJl
5H8jBX9wqMPA5P8hx8vtfGlzUUmL2MUYEq419Qeh+4Xgb/fpMEi9YnlXMCF4bsx4zx3L5bto2Qu5
C/LRO7K8Hul6QFjUA0sgtu7QNKijn6TivCXp1hbJeJXrMCRV7CfGmhE4/S5zpMzRqi/NmKRiFmtO
736N00jTscjC6NMmysrGCZqXaqF1bhdZFyvm/N/xiRm5B/yoOcfIZExmsbz4q99lBo8Ky6zK2YBn
NLsc7LXo0V+6bcPNHc/TzwVVD71bYGxMgfVQ5r5t7i57QQULq3iXfd9dPj0bl+m/N/ymdcnDC9NO
0Gq/mOugTX6VUdvKxyONvZLd/iEvMOoLkK/CxnlkuDYxvNsN1+T0vPG+hkUN9G/YGbc25Q2xH5+A
swg83oYEMJmlmAtHf+Wu6UEwcaqk/ps/6a3CLdIof508jSPcuN1ruVWsZ1tkkZnRiPzLga713LVs
/PXYQgLHfBhuC/HC0jBkxbdU+JY/21cT8KXVXP7uRrFub7vnknZS5OpD9oaoD7XLZ7v2oeMeLCGe
xFJd8SAaf8RAU2J0fDJAAROr/OTRa+DvCvVD96XNT0OaSc0k9fPKKHbBaLtTV+uItp/Qcy88zQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E3083CC1C10140"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
content-md5: oqRNwROGvghU5Ulw/kym8g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: add06023-1d2a-47e6-85a2-d09b56eec747
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-d06d5aa7-1848-f45a-6398-113d8f58e445/test-blob-80a9f325-67d9-9d14-14e6-2672a21abb04?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: e76d7159-d72b-1f87-7204-1eda32651b0b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E3083CC1C10140"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-lease-id: e76d7159-d72b-1f87-7204-1eda32651b0b
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf7781bd-0897-41fe-a71c-9fb6012ec969
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-d06d5aa7-1848-f45a-6398-113d8f58e445/test-blob-80a9f325-67d9-9d14-14e6-2672a21abb04?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
If-None-Match: "garbage"
x-ms-lease-action: renew
x-ms-lease-id: e76d7159-d72b-1f87-7204-1eda32651b0b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E3083CC1C10140"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-lease-id: e76d7159-d72b-1f87-7204-1eda32651b0b
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91143589-6d54-4ada-bd34-c3faadc3803e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-d06d5aa7-1848-f45a-6398-113d8f58e445?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
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
x-ms-request-id: 3308fdd7-894c-444d-9882-8d91233ad428
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

