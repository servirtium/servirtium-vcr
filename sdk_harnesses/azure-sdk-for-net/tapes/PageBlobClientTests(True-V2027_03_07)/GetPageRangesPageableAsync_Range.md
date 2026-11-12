## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-934e6fbb-385b-7ffc-4d1d-83d5ad35f3e0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesPageableAsync_Range
now: 2026-11-12T00:51:57.0340624+00:00

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
etag: "0x23D3BF51EA22760"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 592dc788-8fe5-4683-896e-a1c4fd879c4d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-934e6fbb-385b-7ffc-4d1d-83d5ad35f3e0/test-blob-c9894196-0bf7-e615-a435-442df41ebc8f

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
etag: "0x255C8EF89A2EDC0"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 45a7663b-0acd-4e97-9fb8-972c82f64d65
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-934e6fbb-385b-7ffc-4d1d-83d5ad35f3e0/test-blob-c9894196-0bf7-e615-a435-442df41ebc8f?comp=page

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
YSw47SPvo0tSJY+3eksrZZKqgtffxc+vWmfuJfPPii9g83SB/Aa8p549d9J7XWxZCt+aSZzlsJtd
iZO8AH1Xg5pgV4bXqmiL7do5oU78M/z6lRoUNEGTe0PYJHNzAKYg5fM4GwblgWB2D1zBqw5MYFWW
wWtiQ05ZzdtD/oX1GOw0Gbtawxj2FRO6nSXk0dA0i8Md3D87vaKl304qooPagfZvjJFS8pw8oKtX
qKUpdPsLDnPC1zyt+FwZteTKzHKQ4BwudEQ+4Zkm4TyT4xX8e2pSHpMPF6m6wpM1OTy4ctM5x8eI
+gC2zS3Zm/b/GRVHHDp5d63egMhzdLGwCKhdbW9oWhxNdIBqnFFmNXyyuql+7h0BP/omWkb/FYVO
BcSFfC2Hl7/5+ai5DttceEpMwLoIMhqLWy50Qv/VTl76HJaM4blOKyLqhfR0SDAeyeH7slTLRtOq
+iH/ElS/I6tJvvJE0JeR/ZWXHawlFhP+Vnge2psKL9XD4ueYTxjOK2JJKok92vlKabS/MygmhOMO
ALzboEkQP44dgO6v+a58yfJK3OuJwHx/03DmSvysnV0DiU5c8ooZOOv6IFkLm3AGQmk226j3hEBA
XM3YKfSScOKQq29gINdnMaMAjqAidDj/4AiSdsK1CwUOHJW9QA72aLB2eu8ApSKSz6oE9/afHeeV
2Uns//og259qUgRBqvCVCibwrPpI/zrlAKYXsRQPbv6uJ2fFCWi1VZ5PlVMeUCS5b+3Pr3HtTNkO
B/9TCSqLW+MFk4KJzwC+OlZb+Wnnxq+BXkInP7+MwNuNtgJoYkx0xDpvGL2hL5/sEXQbkVNwJ0BP
0avnYxwkedKn/Bn+VdcK5jUvd67x3y6jOy5KcS+HHY/CGZChjGAeS5/r+jOF7rucEKodQa+RXfF8
RCjt2QejIN+KOzxHaVrUESwOBuX6HUxyrWCEadvfMLufJEc3MHGXSNpU+7J/VadQSTCCg1cLgSfb
eyymHrYDqguAp0QSnOC7dr0LpiGa81e5MyCrXaxjk6IgW7RF8SkjUVGm/q5jPqxPxwyZ/9sGQYjU
7euVV01eHROi8UArdoWU6FTP8/SpVvRzXJWgypTGGRoscAM+jvkESOGawExrI1GGBReHNk6TK5f2
Ifu3vlJ/29cm/wWBVVlay6sTDpWnBzhEGcR8P+PLmEVsR2z+TYmOGuV0RSRLBa+9LGujgBwCThnC
cqSNA5z0W2bAFQ7tXH0hhPSvM8IU+RQVvhN3JxgoavhSPNrlABdJgOq9ivCg0M/tgvwoUhtXrXmQ
eESIfDNOmKoVmiCjO4PcZrLYV24kdO1DiqUbABjc+45gVYjTwAO3b/JFizavSkZ4S+xoflYLaw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26C52309D0D1F60"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-content-crc64: dT0YGqzOTZ0=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d222055c-3e37-4945-9111-97b599825118
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-934e6fbb-385b-7ffc-4d1d-83d5ad35f3e0/test-blob-c9894196-0bf7-e615-a435-442df41ebc8f?comp=page

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
YSw47SPvo0tSJY+3eksrZZKqgtffxc+vWmfuJfPPii9g83SB/Aa8p549d9J7XWxZCt+aSZzlsJtd
iZO8AH1Xg5pgV4bXqmiL7do5oU78M/z6lRoUNEGTe0PYJHNzAKYg5fM4GwblgWB2D1zBqw5MYFWW
wWtiQ05ZzdtD/oX1GOw0Gbtawxj2FRO6nSXk0dA0i8Md3D87vaKl304qooPagfZvjJFS8pw8oKtX
qKUpdPsLDnPC1zyt+FwZteTKzHKQ4BwudEQ+4Zkm4TyT4xX8e2pSHpMPF6m6wpM1OTy4ctM5x8eI
+gC2zS3Zm/b/GRVHHDp5d63egMhzdLGwCKhdbW9oWhxNdIBqnFFmNXyyuql+7h0BP/omWkb/FYVO
BcSFfC2Hl7/5+ai5DttceEpMwLoIMhqLWy50Qv/VTl76HJaM4blOKyLqhfR0SDAeyeH7slTLRtOq
+iH/ElS/I6tJvvJE0JeR/ZWXHawlFhP+Vnge2psKL9XD4ueYTxjOK2JJKok92vlKabS/MygmhOMO
ALzboEkQP44dgO6v+a58yfJK3OuJwHx/03DmSvysnV0DiU5c8ooZOOv6IFkLm3AGQmk226j3hEBA
XM3YKfSScOKQq29gINdnMaMAjqAidDj/4AiSdsK1CwUOHJW9QA72aLB2eu8ApSKSz6oE9/afHeeV
2Uns//og259qUgRBqvCVCibwrPpI/zrlAKYXsRQPbv6uJ2fFCWi1VZ5PlVMeUCS5b+3Pr3HtTNkO
B/9TCSqLW+MFk4KJzwC+OlZb+Wnnxq+BXkInP7+MwNuNtgJoYkx0xDpvGL2hL5/sEXQbkVNwJ0BP
0avnYxwkedKn/Bn+VdcK5jUvd67x3y6jOy5KcS+HHY/CGZChjGAeS5/r+jOF7rucEKodQa+RXfF8
RCjt2QejIN+KOzxHaVrUESwOBuX6HUxyrWCEadvfMLufJEc3MHGXSNpU+7J/VadQSTCCg1cLgSfb
eyymHrYDqguAp0QSnOC7dr0LpiGa81e5MyCrXaxjk6IgW7RF8SkjUVGm/q5jPqxPxwyZ/9sGQYjU
7euVV01eHROi8UArdoWU6FTP8/SpVvRzXJWgypTGGRoscAM+jvkESOGawExrI1GGBReHNk6TK5f2
Ifu3vlJ/29cm/wWBVVlay6sTDpWnBzhEGcR8P+PLmEVsR2z+TYmOGuV0RSRLBa+9LGujgBwCThnC
cqSNA5z0W2bAFQ7tXH0hhPSvM8IU+RQVvhN3JxgoavhSPNrlABdJgOq9ivCg0M/tgvwoUhtXrXmQ
eESIfDNOmKoVmiCjO4PcZrLYV24kdO1DiqUbABjc+45gVYjTwAO3b/JFizavSkZ4S+xoflYLaw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22BAEF4FD9EB440"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-content-crc64: dT0YGqzOTZ0=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8ab05543-6212-4974-b888-b89fd8bd0b48
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-934e6fbb-385b-7ffc-4d1d-83d5ad35f3e0/test-blob-c9894196-0bf7-e615-a435-442df41ebc8f?comp=pagelist

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
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
etag: "0x22BAEF4FD9EB440"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b760f0b4-2c2a-4908-8a2e-b3183ad47fb5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange></PageList>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-934e6fbb-385b-7ffc-4d1d-83d5ad35f3e0?restype=container

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
x-ms-request-id: 837cdbc2-a52c-4cad-8433-3d923d1448d8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

