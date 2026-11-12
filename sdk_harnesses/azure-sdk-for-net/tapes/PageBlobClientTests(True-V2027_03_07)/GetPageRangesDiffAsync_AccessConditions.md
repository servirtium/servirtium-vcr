## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-fcc70b3c-c909-8267-5e0c-6a94a3ddda1c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesDiffAsync_AccessConditions
now: 2026-11-12T00:51:51.8507001+00:00

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
etag: "0x2748D268306D680"
last-modified: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f22c026d-418b-45a4-bafb-ed980abf2e11
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-fcc70b3c-c909-8267-5e0c-6a94a3ddda1c/test-blob-e47be639-38a9-7cf9-9d50-11818a19ec01

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
etag: "0x25CB3B249A22B00"
last-modified: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fdc59619-dd31-410b-882e-d29542fea7b4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-fcc70b3c-c909-8267-5e0c-6a94a3ddda1c/test-blob-e47be639-38a9-7cf9-9d50-11818a19ec01?comp=page

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
vEmSj0uMNIAJvas3urg2sAxWttlwRYYDEkpeubfl+EQgaddZSkvRrbH62uuMwcLlGWF1M2MSkXfD
jnwALXrJJMVnFlHg3WXBhQkndWqadlCIeaBVcMThDtdglbzO0X83MbUmJapwBDz8s65Z6hwMKRcs
eLTac7QAhgh5f0eo87OK8EO0c1GlF3RkWLwWhyO7U2yloVjKXb0BJZ+h94X0VMD6z/rYWLXGhmA/
dRv36v7lvSvaA1Fbv5OGsk6xAyDvbwT8G7cp4/u33hr3iueiCjugvDlZGlBunxBmUqVnFINAUAYW
+85HvNowIiQ2YzSs46gSEEfmllSzjXynwpFWUMqXtzrgiw9sWQBfKfgrODzbum78VAM8WrqxYm1S
n/lI2dFanqv5y1iZprdGhm1ciFVAzAciWvzGW12ALiihGroGFk8m0ZmQ4e8VY65M9dNMVdoYEdPx
Jn/Vk0NOeZww94v8P3AdNba7sOoYDPZOemWKM9lNiQjnFfDQUT5WQWhS5WsiT7ZjLx8kXGHo2RmI
hxjdxEXD4m6DFSp/TOR3ZW6CxSaLKyuvJgS5KCym/jvXSMomeHwijwP8njmL4+I7rPfyZRPy/Fvs
LZ1BCrlC3RfupwQaUezyXzYjjo3yJEMhfXw1s5gn5UtuOUve4YRKusEinDvdIFsKAAbdzm3N+gla
H4w9DCl+xsK5qxihE36x2dTMz4cHQ10hKrKSShbdoT5BhMH4DK2XpNV5JHVCae2HK/WZASqBU9sv
HOJ263ys2wraX468ucwmNCuyjh/n3sHECx8gRJ8TvzHmyPDLIbhZzElqaAlfy3Epcs3/z8S8Rz0h
seBci5ZrxqBd1vDbWxNzWMHVfXa3ZT+u99HRFPBsKYGzqW/Y/UCy/6JpAvSATRa6jHcC5snHaUug
rZTEmbGw8KxvKLKjmlqAIn7UTmNLLam7F4h4aUK36z8jN0+s7mbwuBFHESVkFvEcgsNL8xvoVYDq
CYEpN4ZptzxygGML1DQY45VRAxyEVgCXXOd/a/gkO+LPwuTkxoGL3lno8paNEa6OMw+FllFjZbOA
ktue6ktETkSAOxJQMx0UxiXDnGRqCUo58Djon6SQbFwxYzSl7PMNpKRRDdWbPgDycNAsn8lPFoiQ
ZfoTW6+g78+2Hs/obtoytvi/GPx1nbE49i7UZMyS4k2rFIf5+Uj1sR0F5SAwCQL2+unRj/2MG8dI
22WAy4sDIzyCPVlTOLyvymfeb7eRB+0s3mriwFJPHvm/sB3jdOWSAsHjrsuoo8EsIsSWrqsPt9N3
VO0gIGPqMh5gk4iezFaBS232rlkhgzuotp6OuHBNr/hKax/4ceJe+XutRw84jVVtFWI+GQl6Vg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E94947FFC1FE60"
last-modified: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-content-crc64: rWR7UuOsEU8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ed5cbf4a-ab94-44e2-bcfd-4ea6729bf8c5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-fcc70b3c-c909-8267-5e0c-6a94a3ddda1c/test-blob-e47be639-38a9-7cf9-9d50-11818a19ec01?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:51.9180000Z
etag: "0x1E94947FFC1FE60"
last-modified: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 08e42110-7c18-4aef-aa09-5374ae7348d0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-fcc70b3c-c909-8267-5e0c-6a94a3ddda1c/test-blob-e47be639-38a9-7cf9-9d50-11818a19ec01?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
vEmSj0uMNIAJvas3urg2sAxWttlwRYYDEkpeubfl+EQgaddZSkvRrbH62uuMwcLlGWF1M2MSkXfD
jnwALXrJJMVnFlHg3WXBhQkndWqadlCIeaBVcMThDtdglbzO0X83MbUmJapwBDz8s65Z6hwMKRcs
eLTac7QAhgh5f0eo87OK8EO0c1GlF3RkWLwWhyO7U2yloVjKXb0BJZ+h94X0VMD6z/rYWLXGhmA/
dRv36v7lvSvaA1Fbv5OGsk6xAyDvbwT8G7cp4/u33hr3iueiCjugvDlZGlBunxBmUqVnFINAUAYW
+85HvNowIiQ2YzSs46gSEEfmllSzjXynwpFWUMqXtzrgiw9sWQBfKfgrODzbum78VAM8WrqxYm1S
n/lI2dFanqv5y1iZprdGhm1ciFVAzAciWvzGW12ALiihGroGFk8m0ZmQ4e8VY65M9dNMVdoYEdPx
Jn/Vk0NOeZww94v8P3AdNba7sOoYDPZOemWKM9lNiQjnFfDQUT5WQWhS5WsiT7ZjLx8kXGHo2RmI
hxjdxEXD4m6DFSp/TOR3ZW6CxSaLKyuvJgS5KCym/jvXSMomeHwijwP8njmL4+I7rPfyZRPy/Fvs
LZ1BCrlC3RfupwQaUezyXzYjjo3yJEMhfXw1s5gn5UtuOUve4YRKusEinDvdIFsKAAbdzm3N+gla
H4w9DCl+xsK5qxihE36x2dTMz4cHQ10hKrKSShbdoT5BhMH4DK2XpNV5JHVCae2HK/WZASqBU9sv
HOJ263ys2wraX468ucwmNCuyjh/n3sHECx8gRJ8TvzHmyPDLIbhZzElqaAlfy3Epcs3/z8S8Rz0h
seBci5ZrxqBd1vDbWxNzWMHVfXa3ZT+u99HRFPBsKYGzqW/Y/UCy/6JpAvSATRa6jHcC5snHaUug
rZTEmbGw8KxvKLKjmlqAIn7UTmNLLam7F4h4aUK36z8jN0+s7mbwuBFHESVkFvEcgsNL8xvoVYDq
CYEpN4ZptzxygGML1DQY45VRAxyEVgCXXOd/a/gkO+LPwuTkxoGL3lno8paNEa6OMw+FllFjZbOA
ktue6ktETkSAOxJQMx0UxiXDnGRqCUo58Djon6SQbFwxYzSl7PMNpKRRDdWbPgDycNAsn8lPFoiQ
ZfoTW6+g78+2Hs/obtoytvi/GPx1nbE49i7UZMyS4k2rFIf5+Uj1sR0F5SAwCQL2+unRj/2MG8dI
22WAy4sDIzyCPVlTOLyvymfeb7eRB+0s3mriwFJPHvm/sB3jdOWSAsHjrsuoo8EsIsSWrqsPt9N3
VO0gIGPqMh5gk4iezFaBS232rlkhgzuotp6OuHBNr/hKax/4ceJe+XutRw84jVVtFWI+GQl6Vg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E6230DF3ABBA00"
last-modified: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-content-crc64: rWR7UuOsEU8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e952f97b-82fc-456b-b470-9b4b80dc691d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-fcc70b3c-c909-8267-5e0c-6a94a3ddda1c/test-blob-e47be639-38a9-7cf9-9d50-11818a19ec01?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A51.9180000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_6
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:51 GMT
etag: "0x1E6230DF3ABBA00"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f6a267d1-b04f-4c8e-8573-e8c95a1d7d70
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange></PageList>
```

## Interaction 6: DELETE /devstoreaccount1/test-container-fcc70b3c-c909-8267-5e0c-6a94a3ddda1c?restype=container

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
x-ms-request-id: 4251c54c-71c4-4fde-87eb-13f2c1086a5d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-6a77b1d0-5bc5-ad7a-12e4-8f54613789da?restype=container

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
etag: "0x2099BB6B515F0C0"
last-modified: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 56db78a4-fc8c-4644-acae-08d58482964f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-6a77b1d0-5bc5-ad7a-12e4-8f54613789da/test-blob-deb4978b-3c74-702c-2848-20a30e0f95ef

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
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
etag: "0x26CA56C62BBFEC0"
last-modified: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f003d186-e4c9-417c-8742-59893e2f39f7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-6a77b1d0-5bc5-ad7a-12e4-8f54613789da/test-blob-deb4978b-3c74-702c-2848-20a30e0f95ef?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
zxVORvl4mJ0A/zUqqTn0NoyIs4JUm+KUhQdBfDrXnwNPoIVL6ELgE/8X3XQHAcfvVOoWhlwTmzMz
usDyNhtiKWAy2wi0qE5Jp6CCPL1tjYRAUihQwBmmOwVRGC2B7tzjtLQT1CW+O6yczN67kF51xSw7
sePzEmhHi6ADYo8gx7nDn4gJWrhfghd8s/Q766um21MARj3576FMzEmFutgcfAQk+PDVbGt03C7L
d150DKD0XIc8H4F8yrDmvY1u2cc/XzfvFvK60G7ojGkOLXhD18CpkF1Q4FyCqC5A76/dBQNnjBcm
hPWtOosZU5IYbpw3o+XNxEhp737bbG7DeeG/CoZlpqFgHFPK/FXRN4zKajmSCEzJEEC6/ZyYSxiH
6cGqWUkLs8f614aSAsjymLjyEAI0MXCV9fpFq6kEx9A6QxKUJ91DvrZylzHGNw13x2XkpjoVU7dQ
FWNOxgcd9hC1V7+2XnDarlJLwZo/zr7tzeNEICCWJPBaRBJ59fivVKEhEN9OwWn0CffnypEdEUak
Yfgk2dXvHzLPWxleYblanG34Hb7fngx6TxYprlpePTPL1JP/invLMvGsf2VPlqg+jC0kJPOIxcLr
qYm/xnDYcB7mkowlWhHyLevMMh+mKrlt6iEsOhg/Qw7RFOHxC2uB1A9GaQQcGDEcMvcHu5OiRX7Q
UttOqzUGpk59VEYwACF/S10QX8G0UdLvEAghN4h7Ls9iILmQMinZQMK2nsTr7DHVh281kuW9HAEI
X5ss5W/FASV3zd9o7hk0Nh///rIOBCPXS68ZRpzqpQS4iNOOrVtT8J2ecx5RbJhWAFvFvR5P+Vp3
VZm/rLuIjSjbsGZGponDrA0Ub5AFhd8WwkVBJOfmaI54F1fCk0TiFub1drwyEFrRAhAQOorKcc+6
qOl1R2lA9EfYzY8xARjIMlmqDw8i5LLqbyHX1S4ErqWICOtabM59tYF0WkLLoAD3SAcwIGLAl8M3
ithHaR4Y0x/pqfksbcWKLFqNrYpwH84h340n1I5Cx3AoI+L2NUtiW4Yj4fcGy9pBpfMIM+k5xmsJ
JYqR8f+Qp+GJBErjk/cOKlIDTT3XGhSz5S6bOpSH71127Q/A0WmGkjoWfcaPXRH8+QiXNXktMQp2
3QzR9WxMARXtbKbnTVjofbsCwZ1NI4ccn0CM77rjSbsESvNdtZzOyXuxovBrFKuvr7i9KnBtKbqE
tFYrwBJaCSPq4gNlisceNPchnICWsYqV3EACJR5LlyE52ABFoglpVpnNgTKoSiXwn/V4TI057gPM
luPSWOMFnkviLLHG2ZLuuEXnyTBY7JEbEYYo00qU/+r9eQsll/22x+LnxR5zKcVjipRHUiTTdA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2029F0006B44100"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-content-crc64: ztxF8XhOBQY=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3abd2c36-9f14-4172-bbd9-01b056f946be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-6a77b1d0-5bc5-ad7a-12e4-8f54613789da/test-blob-deb4978b-3c74-702c-2848-20a30e0f95ef?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:52.0510000Z
etag: "0x2029F0006B44100"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8a10457d-9c3c-4383-a918-bdf626e38728
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-6a77b1d0-5bc5-ad7a-12e4-8f54613789da/test-blob-deb4978b-3c74-702c-2848-20a30e0f95ef?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
zxVORvl4mJ0A/zUqqTn0NoyIs4JUm+KUhQdBfDrXnwNPoIVL6ELgE/8X3XQHAcfvVOoWhlwTmzMz
usDyNhtiKWAy2wi0qE5Jp6CCPL1tjYRAUihQwBmmOwVRGC2B7tzjtLQT1CW+O6yczN67kF51xSw7
sePzEmhHi6ADYo8gx7nDn4gJWrhfghd8s/Q766um21MARj3576FMzEmFutgcfAQk+PDVbGt03C7L
d150DKD0XIc8H4F8yrDmvY1u2cc/XzfvFvK60G7ojGkOLXhD18CpkF1Q4FyCqC5A76/dBQNnjBcm
hPWtOosZU5IYbpw3o+XNxEhp737bbG7DeeG/CoZlpqFgHFPK/FXRN4zKajmSCEzJEEC6/ZyYSxiH
6cGqWUkLs8f614aSAsjymLjyEAI0MXCV9fpFq6kEx9A6QxKUJ91DvrZylzHGNw13x2XkpjoVU7dQ
FWNOxgcd9hC1V7+2XnDarlJLwZo/zr7tzeNEICCWJPBaRBJ59fivVKEhEN9OwWn0CffnypEdEUak
Yfgk2dXvHzLPWxleYblanG34Hb7fngx6TxYprlpePTPL1JP/invLMvGsf2VPlqg+jC0kJPOIxcLr
qYm/xnDYcB7mkowlWhHyLevMMh+mKrlt6iEsOhg/Qw7RFOHxC2uB1A9GaQQcGDEcMvcHu5OiRX7Q
UttOqzUGpk59VEYwACF/S10QX8G0UdLvEAghN4h7Ls9iILmQMinZQMK2nsTr7DHVh281kuW9HAEI
X5ss5W/FASV3zd9o7hk0Nh///rIOBCPXS68ZRpzqpQS4iNOOrVtT8J2ecx5RbJhWAFvFvR5P+Vp3
VZm/rLuIjSjbsGZGponDrA0Ub5AFhd8WwkVBJOfmaI54F1fCk0TiFub1drwyEFrRAhAQOorKcc+6
qOl1R2lA9EfYzY8xARjIMlmqDw8i5LLqbyHX1S4ErqWICOtabM59tYF0WkLLoAD3SAcwIGLAl8M3
ithHaR4Y0x/pqfksbcWKLFqNrYpwH84h340n1I5Cx3AoI+L2NUtiW4Yj4fcGy9pBpfMIM+k5xmsJ
JYqR8f+Qp+GJBErjk/cOKlIDTT3XGhSz5S6bOpSH71127Q/A0WmGkjoWfcaPXRH8+QiXNXktMQp2
3QzR9WxMARXtbKbnTVjofbsCwZ1NI4ccn0CM77rjSbsESvNdtZzOyXuxovBrFKuvr7i9KnBtKbqE
tFYrwBJaCSPq4gNlisceNPchnICWsYqV3EACJR5LlyE52ABFoglpVpnNgTKoSiXwn/V4TI057gPM
luPSWOMFnkviLLHG2ZLuuEXnyTBY7JEbEYYo00qU/+r9eQsll/22x+LnxR5zKcVjipRHUiTTdA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24E87AD1345F340"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-content-crc64: ztxF8XhOBQY=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5f4022aa-d00a-438d-9f05-fc439c7cfafd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: GET /devstoreaccount1/test-container-6a77b1d0-5bc5-ad7a-12e4-8f54613789da/test-blob-deb4978b-3c74-702c-2848-20a30e0f95ef?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A52.0510000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_13
If-Modified-Since: Wed, 11 Nov 2026 00:51:51 GMT
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
etag: "0x24E87AD1345F340"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e8054d90-9391-450d-b68f-5328f2552a77
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange></PageList>
```

## Interaction 13: DELETE /devstoreaccount1/test-container-6a77b1d0-5bc5-ad7a-12e4-8f54613789da?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
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
x-ms-request-id: 056e9414-5c14-4228-890f-896b162f6305
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 14: PUT /devstoreaccount1/test-container-46b752a9-dc5c-00cb-4e2d-c6c95f86c820?restype=container

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
etag: "0x1CBB7E3A3508420"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e9fc9a4c-58fc-4739-bfad-9213e2980424
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-46b752a9-dc5c-00cb-4e2d-c6c95f86c820/test-blob-4d013047-2670-a773-e7c1-c549b64cacc6

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
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
etag: "0x1FE7A2CE9510460"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6d43da03-ca7d-4658-a7fe-d6e0f1505126
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-46b752a9-dc5c-00cb-4e2d-c6c95f86c820/test-blob-4d013047-2670-a773-e7c1-c549b64cacc6?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
KQVi0+C2WesX5nfxrGBl3MJz/yEjhQOC3w9fmxeCSQGAAJ9aJPRAkNcWNoqvgfuGW+iGQ02KoqQB
3/TQV77TlZ12cKvBCrjNMm5KDE95010U2EAv+wW09l77WUUAcDkZQ6HsOBFPxVAwuRDeP5VViAuW
vH99o5mXwnlNxrFzzcI1McmtjJtLxBLv/0H01bfIpdA5abO5m58HVXaXAf+fvOxOqQ3Lp/twSvds
jqRYouzChSDgOWQOe5YqpTcktMMTUEJVpiyp/P7UyB68TQz7r7KK1XzevoOHPy13oQHETJY0WT1h
Avy/GYghC3BFUi6JL/aFmt9GNJK/zWf/MVv8EHyHiPPOma21yrzzvLISQu3/7XELP7G37SSrojSV
wOctJfvzvso6upZJz88jUnffrYt6/0Tp8dDKz5rOI/Z4IArUxpe2HoMixDLbwnDilJuty/WoG8Ci
RDMqKO4va5ef0K7ETozfKI4IVzsRDS9g6Dv/IVcB0AVKMoFkjPWV81mbPPHBHkYOzaJmoMOFkTcE
yUCzL0o/nv+oehwKe5yZcmPhdtE9nsn18FO0mjBBxKBKX8K04sMPW53yGaQqBFIFzS1goxpmxit2
vT/2iwPPZrV7wBva5JCf0hszS4UlyuwBrs0D4SGG5JmXPSSEGdCaI7LvrkQ2K+mcwNH/MnulUfNS
9Nw2zIWT9NuCQ6ZsG7lKmSfTNhunyoPkZiFPhrEd8ewxMSTzY1ctW7lotOdCL6UYtJlT0RrXqilY
UmVjRG4pZFG5O+mUVjbQpttiPxacoTZ8N9EYySDSWob6mxDxyRdLP0+ViPS7g11jgis+dWsSvLEu
5wycEZox5uFimrsl39zEFgDHBxhBwLRztUf0lOUb599fwuEKri20Y6ETWemiPaNPel5rS7WY7CZY
KVtTPVL8R7Lcxhz6uWjSEqN2LmfK0XejpRqGr5sqxtW7soXRYCVPFxE2xXeGVMD2mTkRIb6/jVfk
sJg4dZgWsv9GPwfiALF9JxZVkwv/HFBZkBViGKQX+yQt7bCNFqJ5IBN4QBW4E5iHk/qnaflM5JNH
3uWCtJlaL0PjtRIA8BF03HP4h9w7oXx92oSqb5Iq4AgcRTe992t5HhDR1F6FhqPpMo2GVF23DD1o
BdkUr7+xudQJ5KrZt+QHfmjMas0e91PhwT0FpIyrZTn6VPKSZG5QIBuJe6L4D3qoftX066JwSg2F
M+6CrBVHXn5x32PydRn6e0qxlHuw6LLCXCa2t3qWigrkDDGAznMGQR0khy8Xtgi8+m9YvrWS1Es8
wE/ukaYE2lVYDWjoeq3Wq1JdjGCCqqYd+r0KPstUUTjmQw0kF7B2H63Zvqig1H/CgRJiNUfquQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F24330D264EB00"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-content-crc64: rZvEayBCZJY=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: adea419b-e7ca-4429-ad3c-a1fa468b0502
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-46b752a9-dc5c-00cb-4e2d-c6c95f86c820/test-blob-4d013047-2670-a773-e7c1-c549b64cacc6?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:52.1770000Z
etag: "0x1F24330D264EB00"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2104d16e-e59f-45b7-94eb-b6ed7afbd0b8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-46b752a9-dc5c-00cb-4e2d-c6c95f86c820/test-blob-4d013047-2670-a773-e7c1-c549b64cacc6?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
KQVi0+C2WesX5nfxrGBl3MJz/yEjhQOC3w9fmxeCSQGAAJ9aJPRAkNcWNoqvgfuGW+iGQ02KoqQB
3/TQV77TlZ12cKvBCrjNMm5KDE95010U2EAv+wW09l77WUUAcDkZQ6HsOBFPxVAwuRDeP5VViAuW
vH99o5mXwnlNxrFzzcI1McmtjJtLxBLv/0H01bfIpdA5abO5m58HVXaXAf+fvOxOqQ3Lp/twSvds
jqRYouzChSDgOWQOe5YqpTcktMMTUEJVpiyp/P7UyB68TQz7r7KK1XzevoOHPy13oQHETJY0WT1h
Avy/GYghC3BFUi6JL/aFmt9GNJK/zWf/MVv8EHyHiPPOma21yrzzvLISQu3/7XELP7G37SSrojSV
wOctJfvzvso6upZJz88jUnffrYt6/0Tp8dDKz5rOI/Z4IArUxpe2HoMixDLbwnDilJuty/WoG8Ci
RDMqKO4va5ef0K7ETozfKI4IVzsRDS9g6Dv/IVcB0AVKMoFkjPWV81mbPPHBHkYOzaJmoMOFkTcE
yUCzL0o/nv+oehwKe5yZcmPhdtE9nsn18FO0mjBBxKBKX8K04sMPW53yGaQqBFIFzS1goxpmxit2
vT/2iwPPZrV7wBva5JCf0hszS4UlyuwBrs0D4SGG5JmXPSSEGdCaI7LvrkQ2K+mcwNH/MnulUfNS
9Nw2zIWT9NuCQ6ZsG7lKmSfTNhunyoPkZiFPhrEd8ewxMSTzY1ctW7lotOdCL6UYtJlT0RrXqilY
UmVjRG4pZFG5O+mUVjbQpttiPxacoTZ8N9EYySDSWob6mxDxyRdLP0+ViPS7g11jgis+dWsSvLEu
5wycEZox5uFimrsl39zEFgDHBxhBwLRztUf0lOUb599fwuEKri20Y6ETWemiPaNPel5rS7WY7CZY
KVtTPVL8R7Lcxhz6uWjSEqN2LmfK0XejpRqGr5sqxtW7soXRYCVPFxE2xXeGVMD2mTkRIb6/jVfk
sJg4dZgWsv9GPwfiALF9JxZVkwv/HFBZkBViGKQX+yQt7bCNFqJ5IBN4QBW4E5iHk/qnaflM5JNH
3uWCtJlaL0PjtRIA8BF03HP4h9w7oXx92oSqb5Iq4AgcRTe992t5HhDR1F6FhqPpMo2GVF23DD1o
BdkUr7+xudQJ5KrZt+QHfmjMas0e91PhwT0FpIyrZTn6VPKSZG5QIBuJe6L4D3qoftX066JwSg2F
M+6CrBVHXn5x32PydRn6e0qxlHuw6LLCXCa2t3qWigrkDDGAznMGQR0khy8Xtgi8+m9YvrWS1Es8
wE/ukaYE2lVYDWjoeq3Wq1JdjGCCqqYd+r0KPstUUTjmQw0kF7B2H63Zvqig1H/CgRJiNUfquQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23EF7DF16012EE0"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-content-crc64: rZvEayBCZJY=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 59c2e2e3-d219-4b34-b53e-6118de8aed2b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-46b752a9-dc5c-00cb-4e2d-c6c95f86c820/test-blob-4d013047-2670-a773-e7c1-c549b64cacc6?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A52.1770000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_20
If-Unmodified-Since: Fri, 13 Nov 2026 00:51:51 GMT
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
etag: "0x23EF7DF16012EE0"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1adfbff8-d6f4-438c-a3f0-efad52ed72b0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange></PageList>
```

## Interaction 20: DELETE /devstoreaccount1/test-container-46b752a9-dc5c-00cb-4e2d-c6c95f86c820?restype=container

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
x-ms-request-id: cad77d42-5e56-4b68-979c-d86888d2c0fe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-97d1a915-f9e9-899b-03bc-3001369fb294?restype=container

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
etag: "0x249714F4ED9A2C0"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3115391c-198a-4ec6-bd8e-f2775c694d07
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-97d1a915-f9e9-899b-03bc-3001369fb294/test-blob-b36ce6a2-eca8-7dfd-263d-48bcb9f21cf0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
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
etag: "0x2456B7E6CA9B400"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b6284dea-6196-4563-bbdd-d282dfbf9c6f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-97d1a915-f9e9-899b-03bc-3001369fb294/test-blob-b36ce6a2-eca8-7dfd-263d-48bcb9f21cf0?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
+4r4ekUZjSURT7rsb9JJIs9+wE7aNhApq1RxrLHe0BGfQAaspjdOiFlGolkxEA1T9CXtOzHNFcR5
z8/xqOB0Mn6pTC/MnHuYLzf0k5S3+JpGHbiM8ZXg0ipBM9dnXeB40m/ah8Teh1epVAv52IEwwdc0
qooo6EHpyHoEimmkMdJXe8El3XDWaJVh4p2J5vmpEXEAM7JVUOou8L9J2fztBSM5olzACuRnXUL1
xwWjX+GAW3n4pP0fASvX9+ywjI+Yc916UESd6QaMmNVwYIjkipHdyX2C9GElGaAw6BP4ttGyXFMo
KQ6d43JzbAsor6Gi8mxa08MRFn97VDajbADzlOIEvQQ0u2GCQOYLD4hV/Gr/jfamneINoUbUrNTY
+XZygNgpJPKcbjYL15PdBgb3JlfMo94JTPb/9hy9YA6MqkZvmY+vLNh4Yh+/m8ZPMJo/3YZ9DFWY
aDPiKS7V3w0nfy1MbW13R/p/U0G+SrEvr8WBfoOID57x1zFczQKpooMSlxuYA8ItyJWM/bgU2R6B
snpoU2GJn2+OW5Y8Gnn31bG9rLKVlqwDVLXt/BHm3P0S2huIQU8iiPisCqcr8K0blCgHVy1r6xvN
Zf6rnKJdqH6ZKUBeb5NimiO56YwF12MH0Wfp3oXQp+8Au9xQduxVTmEoksdtvSWUpbwJsgGOyI2b
pMo6dMn5yYJQXrS3ESM3ZJsr3EWcmRRCVTnIxvXtcfJPtNIiGtqXLslFHF9w3JOY0k1mY+tI/gq1
+B6PMQOMY+zBaFxRFEnBk618Vn200XmmMPOnhg4HB7bIbCK7B/3FuLhyr3Q2R74EpM89y6iMACal
6QAP5dzeumGmiKgmBYuvtp7EQiIFcOk1ouI+yTsOO2v8Fh78ttPclPUSj74V3Z5EjRUJyL4DoHkX
2kL6n/AmmEw8Ku9tswDK560t8uAqH8VD+jslBHOt+Hak5duQ4fQE7PZx2bOv19oVP+AQ1q2Y7bt9
tqW1AJTZjzF4yM0kOga5KAXpuEYRlCNgD8WSnCLIDPcgEipPTutil0mBNg4N8QTaV62nrzR1ayKC
VfHPR/IPsLzVBCfbatoahyH8kF0UUx7AuEV0IFzDqqcIzPn6k1BWcYZSN+zc/+zTjScTeNrEbQHS
Do+tm49fElmA0p3hH/TQpR/XwRwy5LhYoZM1sDLMQ173J4TBqdX38ySSWyxP8W0zQtO77azloCrW
VPn8KWIntI8+6fhvD/xJ4M33n4iMCa8lAW5fEFWyEYdZ6lTb+snCaqedEAh1xDLWcQ3e7gCiSktK
1yj0yKM5jNhxFSWobeUDNTTg7/mnrz07iJ5I0yOGt6AIkSOhzqIDY4QvBK4NLgQo27jMwVtSow==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22C9EDDBEAFC520"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-content-crc64: iADbssSuuOU=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a9187ebd-ad3b-467c-a5ee-93292339c8ca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-97d1a915-f9e9-899b-03bc-3001369fb294/test-blob-b36ce6a2-eca8-7dfd-263d-48bcb9f21cf0?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:51:52.3010000Z
etag: "0x22C9EDDBEAFC520"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f9824eec-f711-479d-b576-187d428da5d6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: PUT /devstoreaccount1/test-container-97d1a915-f9e9-899b-03bc-3001369fb294/test-blob-b36ce6a2-eca8-7dfd-263d-48bcb9f21cf0?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
+4r4ekUZjSURT7rsb9JJIs9+wE7aNhApq1RxrLHe0BGfQAaspjdOiFlGolkxEA1T9CXtOzHNFcR5
z8/xqOB0Mn6pTC/MnHuYLzf0k5S3+JpGHbiM8ZXg0ipBM9dnXeB40m/ah8Teh1epVAv52IEwwdc0
qooo6EHpyHoEimmkMdJXe8El3XDWaJVh4p2J5vmpEXEAM7JVUOou8L9J2fztBSM5olzACuRnXUL1
xwWjX+GAW3n4pP0fASvX9+ywjI+Yc916UESd6QaMmNVwYIjkipHdyX2C9GElGaAw6BP4ttGyXFMo
KQ6d43JzbAsor6Gi8mxa08MRFn97VDajbADzlOIEvQQ0u2GCQOYLD4hV/Gr/jfamneINoUbUrNTY
+XZygNgpJPKcbjYL15PdBgb3JlfMo94JTPb/9hy9YA6MqkZvmY+vLNh4Yh+/m8ZPMJo/3YZ9DFWY
aDPiKS7V3w0nfy1MbW13R/p/U0G+SrEvr8WBfoOID57x1zFczQKpooMSlxuYA8ItyJWM/bgU2R6B
snpoU2GJn2+OW5Y8Gnn31bG9rLKVlqwDVLXt/BHm3P0S2huIQU8iiPisCqcr8K0blCgHVy1r6xvN
Zf6rnKJdqH6ZKUBeb5NimiO56YwF12MH0Wfp3oXQp+8Au9xQduxVTmEoksdtvSWUpbwJsgGOyI2b
pMo6dMn5yYJQXrS3ESM3ZJsr3EWcmRRCVTnIxvXtcfJPtNIiGtqXLslFHF9w3JOY0k1mY+tI/gq1
+B6PMQOMY+zBaFxRFEnBk618Vn200XmmMPOnhg4HB7bIbCK7B/3FuLhyr3Q2R74EpM89y6iMACal
6QAP5dzeumGmiKgmBYuvtp7EQiIFcOk1ouI+yTsOO2v8Fh78ttPclPUSj74V3Z5EjRUJyL4DoHkX
2kL6n/AmmEw8Ku9tswDK560t8uAqH8VD+jslBHOt+Hak5duQ4fQE7PZx2bOv19oVP+AQ1q2Y7bt9
tqW1AJTZjzF4yM0kOga5KAXpuEYRlCNgD8WSnCLIDPcgEipPTutil0mBNg4N8QTaV62nrzR1ayKC
VfHPR/IPsLzVBCfbatoahyH8kF0UUx7AuEV0IFzDqqcIzPn6k1BWcYZSN+zc/+zTjScTeNrEbQHS
Do+tm49fElmA0p3hH/TQpR/XwRwy5LhYoZM1sDLMQ173J4TBqdX38ySSWyxP8W0zQtO77azloCrW
VPn8KWIntI8+6fhvD/xJ4M33n4iMCa8lAW5fEFWyEYdZ6lTb+snCaqedEAh1xDLWcQ3e7gCiSktK
1yj0yKM5jNhxFSWobeUDNTTg7/mnrz07iJ5I0yOGt6AIkSOhzqIDY4QvBK4NLgQo27jMwVtSow==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22AAB766BA3EB40"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-content-crc64: iADbssSuuOU=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96d2c550-4b8a-4edd-91ea-e250f34fafc3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 26: HEAD /devstoreaccount1/test-container-97d1a915-f9e9-899b-03bc-3001369fb294/test-blob-b36ce6a2-eca8-7dfd-263d-48bcb9f21cf0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_27
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x22AAB766BA3EB40"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3eedd6f3-ff76-4194-aa31-19b1784765ec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 27: GET /devstoreaccount1/test-container-97d1a915-f9e9-899b-03bc-3001369fb294/test-blob-b36ce6a2-eca8-7dfd-263d-48bcb9f21cf0?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A52.3010000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_28
If-Match: "0x22AAB766BA3EB40"
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
etag: "0x22AAB766BA3EB40"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4c71dec4-1dc0-49f2-8b4e-73111d6a8ec4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange></PageList>
```

## Interaction 28: DELETE /devstoreaccount1/test-container-97d1a915-f9e9-899b-03bc-3001369fb294?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
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
x-ms-request-id: bdcf2a4f-974d-4007-b6e7-3d6765091e47
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 29: PUT /devstoreaccount1/test-container-3fb8eb27-f104-b4b8-ea5e-849fdcc16266?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2020A7C137A9A40"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 515d8af7-0577-4983-9a0d-4930f2fe92bd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-3fb8eb27-f104-b4b8-ea5e-849fdcc16266/test-blob-748bdd92-aa77-2e8e-5a9a-20f86abaf644

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
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
etag: "0x26AF34D2332B980"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 52c90416-17ae-4a14-9260-491bb7bc047a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-3fb8eb27-f104-b4b8-ea5e-849fdcc16266/test-blob-748bdd92-aa77-2e8e-5a9a-20f86abaf644?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
tu77tRVi/nHLehpQiI4oZnhSOeTP3St9XYrlatHASjBoQOntxa1RL94ZqfyQPqXMcrl/GIASddjC
fliLfZSgCzDp6EikOqDLAQoFtTQv7R7kGPcXQDKvVsoQK0dUxbFKeZ7MplZdJzcZtBd1DL+kkpE5
pmWciMr9OZJ9kw5ZdjtZujyWY0bIh/C//osbOkkLbJi2Gh9MrfDTzmzE4JMpvz3bHFKCDi9KcR90
3Io/4v9IcSd1o1scDAxMwpTaBKdclj5NPx33iF1pa6n/19Fmk+tte25ssxzhvw9FNkuacGx4F0VL
8aPhUejJDDeyHDQ75i+pbIk48OIia4AOslISzvo9h8CLGqJIiymFo6bkL6LaCVAc8QPiPydiKIUj
05+Wtj49dJV0r8uMYeFgsk08PTzdM6gB9dz2WkeYKPEcJbeJ7+xop7oNZVqFj5AigozaJutJRaD3
lMFiRhpN3IbZcDwq1sNg05aB0M1NfGZL1Ne7vgIG098XklorBmCgv4nTqx9U+KzJeVNUyHTSqRha
FnFDkh2E0p1cEkNpNc024BBDetFG99wq8kSusgpqROhC0O/uXS1rTtiC+OVoX0SFHudkjy9GFB+V
GKDZ1SCS8c5bJmXdR4Pj1yv4w//3wZIAKZQjBrS5+7vQWUSNkni48AYXDTjep9ZjgbcETlAfnVYN
2KyMbusZoiupDe4/VUSyQNP44LRZIYG+wIX8taxrsLvtf7nMLIEb/WsNNZrnJCtyUQ59Jr2itLcr
zq5lHO1+PlwzUdaL5hRR3eJITOzm1ptaiWOe7or9S8oCoF3TteF+jvY+tNNU52v6K0nbWWjKRfcS
C5KJ4FDSNQULiEa2figAyr32pyHIBqL4pMJAIfFiOFtlwKpP9K6mbH/NSF8kRK0g2o+r1J3WSgXw
kDuNkRMUqVDrUL5+sdUOTzui+71D02AVIEdht2S9j3akXmNyGNpruJ8OOfPuoii5nIRhM09HrL3b
eHDMsvHrLcBI2VJxnDdgN0IeNJlsJn4eqBvgW1smXLKmlqBqngatIwwzpsjWRwBNAfwMKXgjb1Hy
rgrWC9JlIXygywWW9pg8cBCNOX+1R2AbklpeGTI5gidOd/D71hc6zoVLNXz6tgpk0LlnljbSPWaq
u3h3BgdJZ0jeSH+oQJn5U2v5aRLjINxP+kl50ezxfDqJUBuewsd+As4zHG6Lu48fbkPL2NNUxpuc
KAu+0JVc7MtFHu9+WpCje2dErwNuwz65WWOpJqRmNYp/Apm8wDE41y+iRpyfoROyJ1xsDxeXLmTM
BHYxssYn3ull/lj357s1C9jTy32iGbdP9/5H+SVy6NQ077u7BiVpe2ezOaO7ukCgNwQ/xGLnKg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22DBAD73F12BF40"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-content-crc64: laXQwUgdw1M=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d6115842-6df2-4fa3-b230-bb3a04cd0d9a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-3fb8eb27-f104-b4b8-ea5e-849fdcc16266/test-blob-748bdd92-aa77-2e8e-5a9a-20f86abaf644?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:51:52.4320000Z
etag: "0x22DBAD73F12BF40"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 205d0275-25b7-4195-9ebd-067126392e22
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 33: PUT /devstoreaccount1/test-container-3fb8eb27-f104-b4b8-ea5e-849fdcc16266/test-blob-748bdd92-aa77-2e8e-5a9a-20f86abaf644?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_34
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
tu77tRVi/nHLehpQiI4oZnhSOeTP3St9XYrlatHASjBoQOntxa1RL94ZqfyQPqXMcrl/GIASddjC
fliLfZSgCzDp6EikOqDLAQoFtTQv7R7kGPcXQDKvVsoQK0dUxbFKeZ7MplZdJzcZtBd1DL+kkpE5
pmWciMr9OZJ9kw5ZdjtZujyWY0bIh/C//osbOkkLbJi2Gh9MrfDTzmzE4JMpvz3bHFKCDi9KcR90
3Io/4v9IcSd1o1scDAxMwpTaBKdclj5NPx33iF1pa6n/19Fmk+tte25ssxzhvw9FNkuacGx4F0VL
8aPhUejJDDeyHDQ75i+pbIk48OIia4AOslISzvo9h8CLGqJIiymFo6bkL6LaCVAc8QPiPydiKIUj
05+Wtj49dJV0r8uMYeFgsk08PTzdM6gB9dz2WkeYKPEcJbeJ7+xop7oNZVqFj5AigozaJutJRaD3
lMFiRhpN3IbZcDwq1sNg05aB0M1NfGZL1Ne7vgIG098XklorBmCgv4nTqx9U+KzJeVNUyHTSqRha
FnFDkh2E0p1cEkNpNc024BBDetFG99wq8kSusgpqROhC0O/uXS1rTtiC+OVoX0SFHudkjy9GFB+V
GKDZ1SCS8c5bJmXdR4Pj1yv4w//3wZIAKZQjBrS5+7vQWUSNkni48AYXDTjep9ZjgbcETlAfnVYN
2KyMbusZoiupDe4/VUSyQNP44LRZIYG+wIX8taxrsLvtf7nMLIEb/WsNNZrnJCtyUQ59Jr2itLcr
zq5lHO1+PlwzUdaL5hRR3eJITOzm1ptaiWOe7or9S8oCoF3TteF+jvY+tNNU52v6K0nbWWjKRfcS
C5KJ4FDSNQULiEa2figAyr32pyHIBqL4pMJAIfFiOFtlwKpP9K6mbH/NSF8kRK0g2o+r1J3WSgXw
kDuNkRMUqVDrUL5+sdUOTzui+71D02AVIEdht2S9j3akXmNyGNpruJ8OOfPuoii5nIRhM09HrL3b
eHDMsvHrLcBI2VJxnDdgN0IeNJlsJn4eqBvgW1smXLKmlqBqngatIwwzpsjWRwBNAfwMKXgjb1Hy
rgrWC9JlIXygywWW9pg8cBCNOX+1R2AbklpeGTI5gidOd/D71hc6zoVLNXz6tgpk0LlnljbSPWaq
u3h3BgdJZ0jeSH+oQJn5U2v5aRLjINxP+kl50ezxfDqJUBuewsd+As4zHG6Lu48fbkPL2NNUxpuc
KAu+0JVc7MtFHu9+WpCje2dErwNuwz65WWOpJqRmNYp/Apm8wDE41y+iRpyfoROyJ1xsDxeXLmTM
BHYxssYn3ull/lj357s1C9jTy32iGbdP9/5H+SVy6NQ077u7BiVpe2ezOaO7ukCgNwQ/xGLnKg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2526CD9EED169A0"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-content-crc64: laXQwUgdw1M=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 191a584f-9605-4467-b9b5-1998f5439f19
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 34: GET /devstoreaccount1/test-container-3fb8eb27-f104-b4b8-ea5e-849fdcc16266/test-blob-748bdd92-aa77-2e8e-5a9a-20f86abaf644?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A52.4320000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_35
If-None-Match: "garbage"
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
etag: "0x2526CD9EED169A0"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: db10e250-531a-4ebb-9405-03163e4910ab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange></PageList>
```

## Interaction 35: DELETE /devstoreaccount1/test-container-3fb8eb27-f104-b4b8-ea5e-849fdcc16266?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_36
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
x-ms-request-id: 28bb79ac-b271-424c-985b-c68e70aac1d3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 36: PUT /devstoreaccount1/test-container-bbe1beea-dfc8-c3e4-f216-83c2f7007a04?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_37
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22FB4C5C7CB7CE0"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e03f40f3-ee9e-4abf-95b7-6514c9bf403b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 37: PUT /devstoreaccount1/test-container-bbe1beea-dfc8-c3e4-f216-83c2f7007a04/test-blob-154f6ab3-dfee-9414-3cbd-a7c221332471

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_38
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
etag: "0x1D259356E452A80"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1fe8f212-b02e-4ce5-9280-872e0483f763
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 38: PUT /devstoreaccount1/test-container-bbe1beea-dfc8-c3e4-f216-83c2f7007a04/test-blob-154f6ab3-dfee-9414-3cbd-a7c221332471?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_39
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
TcTQ/CVpoJyC70eNN/hJoLwAjFkT0jsLqk1/Czgior7yEnUyL33fScqzkv+Yh1xDdAYFIKfKXnqI
xVLX6pVkYEyImyWDFnE+IEKPX0A8ciLwO5cxHIEXJ7P6qWorB141TzGyEOw3wF2VxwBlO/46TFMv
5679MkTKcXNyiGwHExjjWhAOiWE2uXs5nFWBsey0wF0W+yCvNx3s6J94xDfxjrPngeHuK8Lx+S0z
xJXvSL+HvcgP8Bf4MyLzIaHBvfRESA6hmjALxpSaJALzfHOH/Z/g8QZu4p2c702++gkhMDs473uH
Ta6Oe/c0dMsVBbevbCQC4cvt1mZwBaviTMuKefTGuo33/6/wUXUPOm3Sh+mWD47lHk5wSxgVF0gD
rC8sqfrXTkspuGx0EY9V3pv4nn7BSz08pVqlVm904ehn7aRG4pBz+jiebFYicQy/Gmx9HXjJQWDx
7wSfMfjbtdaDDCTqDvsLhaNGIt/nGjNO5jsC98RvnatEVfOM08hAwrd/nmXo1AtwcZjVgx+BCtXR
UUu82b0SE255prkIf7HaBV8nZ3vOZRIwkYUsmhqMwksdu4J9g+n6bIv2by1SaPLm+n2/WqJaAus5
jEc35nlU7ONt6sQuXYJ2Lfrv1/bk3SmTRZ+czWiowriWRPeiwoYSooJK5H0uuJ37SC2nair1VK4e
pKHZuB96xCgLmBiK1Gp03TVzmvmrZY0BoIQ7AVeNoe9Jgx7lOOpjzx9VIh+EcXTCM431gbq0cj4U
1xeaP8PQffcpQFBMj6VLEMvZVkJtfS4Pec3KmB80lBHf0GDSyI9bhaQoWzAkdqTnqXHv2xz8p1ro
i8b2BeXY9Kw+bL5EeUc7fdGeRCH+6gIp4u+tRbn14ykG6T3JZX+/UGaE5Qnmoy8qtF1KXWI46qDD
zSL1Kq/zSYmUPZAKcRhR3vO7egX5Qz+/gpFbqoXHzf6dBphdySW3kJyAUWWfIEJF+X9ufXCbyYnj
Nqcdl54DzHCRbWt/9BTNA+loefHZH2JOFbEGWFCOATwOeZN+mfn9fIT1DrLXxgRqoXqGMlCYChZE
z4Ht/XQfAmsvcHuBT2nwavxs4xGwd0+tm7fWB8/rdW98Ocp3EH8Q1gtHqFWJ6VEQlshULCYFlFgy
P2G9SfqcQ/oLBBafeFl8Ww0FaM/6I7JlxXEHlklId6RyRdAdU4wRq2RafeQ6cB5u19AZ/yyJNxuu
V4SJlayxwoxyLTOIXgiB9L1qoKbOKlRSmL55L3h46A21b/sIhxa3qLpYyEPq5XnHlwtuHpd14Cwv
NvzuN5IU+kQm0+8NeG2nsvfrdmIRaLNFsZdtCcp1P47P2FAZyXEoQ87+wxGJuh+ex2ufimrKHg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21ABB5E219B3BA0"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-content-crc64: +5b/Qi5S/Uo=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1b81ca68-2e1f-4b8a-b5d8-b73176b0cae8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 39: PUT /devstoreaccount1/test-container-bbe1beea-dfc8-c3e4-f216-83c2f7007a04/test-blob-154f6ab3-dfee-9414-3cbd-a7c221332471?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_40
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:51:52.5710000Z
etag: "0x21ABB5E219B3BA0"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f8723c84-7a25-47df-b25e-e4b5e6585b1a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 40: PUT /devstoreaccount1/test-container-bbe1beea-dfc8-c3e4-f216-83c2f7007a04/test-blob-154f6ab3-dfee-9414-3cbd-a7c221332471?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_41
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
TcTQ/CVpoJyC70eNN/hJoLwAjFkT0jsLqk1/Czgior7yEnUyL33fScqzkv+Yh1xDdAYFIKfKXnqI
xVLX6pVkYEyImyWDFnE+IEKPX0A8ciLwO5cxHIEXJ7P6qWorB141TzGyEOw3wF2VxwBlO/46TFMv
5679MkTKcXNyiGwHExjjWhAOiWE2uXs5nFWBsey0wF0W+yCvNx3s6J94xDfxjrPngeHuK8Lx+S0z
xJXvSL+HvcgP8Bf4MyLzIaHBvfRESA6hmjALxpSaJALzfHOH/Z/g8QZu4p2c702++gkhMDs473uH
Ta6Oe/c0dMsVBbevbCQC4cvt1mZwBaviTMuKefTGuo33/6/wUXUPOm3Sh+mWD47lHk5wSxgVF0gD
rC8sqfrXTkspuGx0EY9V3pv4nn7BSz08pVqlVm904ehn7aRG4pBz+jiebFYicQy/Gmx9HXjJQWDx
7wSfMfjbtdaDDCTqDvsLhaNGIt/nGjNO5jsC98RvnatEVfOM08hAwrd/nmXo1AtwcZjVgx+BCtXR
UUu82b0SE255prkIf7HaBV8nZ3vOZRIwkYUsmhqMwksdu4J9g+n6bIv2by1SaPLm+n2/WqJaAus5
jEc35nlU7ONt6sQuXYJ2Lfrv1/bk3SmTRZ+czWiowriWRPeiwoYSooJK5H0uuJ37SC2nair1VK4e
pKHZuB96xCgLmBiK1Gp03TVzmvmrZY0BoIQ7AVeNoe9Jgx7lOOpjzx9VIh+EcXTCM431gbq0cj4U
1xeaP8PQffcpQFBMj6VLEMvZVkJtfS4Pec3KmB80lBHf0GDSyI9bhaQoWzAkdqTnqXHv2xz8p1ro
i8b2BeXY9Kw+bL5EeUc7fdGeRCH+6gIp4u+tRbn14ykG6T3JZX+/UGaE5Qnmoy8qtF1KXWI46qDD
zSL1Kq/zSYmUPZAKcRhR3vO7egX5Qz+/gpFbqoXHzf6dBphdySW3kJyAUWWfIEJF+X9ufXCbyYnj
Nqcdl54DzHCRbWt/9BTNA+loefHZH2JOFbEGWFCOATwOeZN+mfn9fIT1DrLXxgRqoXqGMlCYChZE
z4Ht/XQfAmsvcHuBT2nwavxs4xGwd0+tm7fWB8/rdW98Ocp3EH8Q1gtHqFWJ6VEQlshULCYFlFgy
P2G9SfqcQ/oLBBafeFl8Ww0FaM/6I7JlxXEHlklId6RyRdAdU4wRq2RafeQ6cB5u19AZ/yyJNxuu
V4SJlayxwoxyLTOIXgiB9L1qoKbOKlRSmL55L3h46A21b/sIhxa3qLpYyEPq5XnHlwtuHpd14Cwv
NvzuN5IU+kQm0+8NeG2nsvfrdmIRaLNFsZdtCcp1P47P2FAZyXEoQ87+wxGJuh+ex2ufimrKHg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F61CF1113D1F90"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-content-crc64: +5b/Qi5S/Uo=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a6fa0c82-eb40-48cc-978a-6cfe9c4e1664
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 41: PUT /devstoreaccount1/test-container-bbe1beea-dfc8-c3e4-f216-83c2f7007a04/test-blob-154f6ab3-dfee-9414-3cbd-a7c221332471?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_42
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 85a848ce-a7fa-7af0-b094-613da01c8de9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F61CF1113D1F90"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-lease-id: 85a848ce-a7fa-7af0-b094-613da01c8de9
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2736152e-a576-44b9-b1c2-636eced025d4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 42: GET /devstoreaccount1/test-container-bbe1beea-dfc8-c3e4-f216-83c2f7007a04/test-blob-154f6ab3-dfee-9414-3cbd-a7c221332471?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A52.5710000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_43
x-ms-lease-id: 85a848ce-a7fa-7af0-b094-613da01c8de9
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
etag: "0x1F61CF1113D1F90"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f90832a1-2995-42d2-b9f9-2a9baf011319
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange></PageList>
```

## Interaction 43: DELETE /devstoreaccount1/test-container-bbe1beea-dfc8-c3e4-f216-83c2f7007a04?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_44
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
x-ms-request-id: 3a76dabb-b79d-454c-bf2e-fc3c21412dc1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

