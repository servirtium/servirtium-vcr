## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6da85444-0821-f7d2-3b9a-27c1b12153d0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).GetBlockListAsync
now: 2026-11-12T00:50:03.4517679+00:00

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
etag: "0x206D0DF7FAA1EC0"
last-modified: Thu, 12 Nov 2026 00:50:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c776c3f9-d030-4d37-9da1-ed2b81a0f97e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6da85444-0821-f7d2-3b9a-27c1b12153d0/test-blob-8911385b-0a76-1f7f-5294-c06de67a3f90

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
+9J3WTtXuh5/sa55M35hN86i6BpNPv461YkajUdkEcBblsbfqvqVA33zCsRcBezUM4ifQ5EkQ7zT
PISyPS3XG6DtHpy4go3UDeWcWjQ53s+cRlq/xM4vN1MJC21148ZQHO4kbudPHLH6yzasiOmHmV60
FffTF1bRvudIrnYgXikeTD5FFW/oTSqoxPmYgq5qgnEPwM3PfASXUrAABm062m0MjjurQYTuzMjN
KlNdOTw43iwFEJ1cT9A5rsK/50a8bumMjPNyv0DsIfQFAlGwORlzxydBNMnPrz5rcZPBLuWCELtp
0a1IxR/rGO+pV01+iXSoTB8eejofvNy1B02sKvMPgvGVRmdsKwIIVhvaJljw7OgfGOLFZJaBShXQ
kr7SPu38mtRc6UIMPCAdFiQeRZaDxBpljREQSR5bE/xSm5hENhct3oyElAOmE9zBqE5xYgV/Tc6j
bLHc61C1AdVFuaCI2OAN8WYK/y8Wv3k1T6HQ6bH3007KoMllUfI8zpMuYFk7Oc9uZHGedU6eja04
ppyu5RckTeZSvjcWp590zTCc514f+hXSYoQ/WV4AKxMbLatVjel7ChNz6HuXV73SKaceAqVPGKyG
3IKS5PSHUpIk+nr0HkBGIN1LqxGaOgrHbC+34ShuzBT+z7Fn6CUe65boc1xC3gpn1+LIA2yb7KJ3
y3jE0HBptS1m9U+P3ze3LMB7scauhY4kTwlGpsinY+IO7x2tWholfr4u2+i71/iqENesHzrcyUXp
n4BmIw9lvpJsgO8ZCtGlVTIIf6mmaXgRm5bx+kOnMiXXw7qZvluuyRxWTlcIkQUFB8oI00qcQzUI
VYd5c8ROxU3KQkYXC5fWWbWMTxsgCAqQ6/N5n17bO4CEkWnUNFZYB4kKPk6/7vwyMXqVEPMa6E18
6YjQ1SXu7wfGknouAiRfM0eRFsm70Pz3Rm3kRiqMaagbWEvNhzJjG09H+VyCBC9VNdysiNKDwBiL
2Y63CqncOSjREqrZkasULvp5c9egdEI+jxBO4OHWl5cyQa2krBGma78zsPGFfKMwl1rXCU1B62VM
eXuYjVlH+3sSplD+cILp0wgXbMRQuBJsHUiG/o1K8VZIWDKVDd1l7LV2ctVTMifY7jZFKn6g/MBo
LG8Rwf3tyLX5tRdPU8YqsYAP2UY9GOshrRBXBcbXp1xyLeFuVCu3iakgWXwPiZpwGnj+kSJ5KhOE
8BPtlsPuIg273Cbku1xUV0+cHb9uESN15+pO2BY5+ALO6mQXyvPlMTduU61zi18bqTrT3Q1UFd7w
d67ZoEn3guMjFtH4PYxctuuHAL52AluLMi/bZRv0etWGJ1NEDJDud9DJUHWNI2ytdyYhzBUgeXVT
Tm4ZGxzILpz8chY4F6pbmIjtrbHm/Q/CLu71062/Zq3e8b0i1Fu0ASHYkLFVdF98xjSMMszDbFBe
V+0u01vvPAtpWiXsOMMtOayPDW1dbLmOeQx4MzPgG4Rsw31thS7G6VOl7Bo5j45wXvkgM17jAeo0
n1pOdgnYiD6hf3RGv7N+ySQZuICeVOl+CNQ6wOclicKSOOXUd3NKzGTcmA8ZKp5Fomk6ykhqlktw
0G40nshWe/ays4fNqlKwzusbwbvaZN019B1+6755KKGaY6YFFi6chR0YZ3cXePgXifxcTtSPlmyQ
/qmq2JA3OIrlMkarq7e9fzyewfxmHnwlZ2HCHdnMC806dBiE8a2M4S/sMkWxa91En8+Y8NRvKeAt
hHEudRqxGCd4cTafOI6PEuDNeus3c/uDfn0KNBr4yks3V207XWsUOxkdOfmnpGdBCd70oq/09hB1
q/adpuQMf6brZ+AgU7R0uD7SGToC3NkVySs8BCicQ2FcxrJ0d5Q1EblSuz2HILUpf+lwItzWcs8d
h9y4z3t9TyR+xI0C/0GqnAiBryCcjql1EoQ+KyGEhlPiV++4fEE+1WwYCFsoJ4CoxoXUVMOugfkz
Q7z2PyMD+j45H6hR8SDGQ9q0g4ZOTesElWWcsDGPNNX2hTmER5VIFQ0c7gjYV9RkDhHp+v5y5PXR
8qm+ZkkNquvSW2znQftEa214MV/iKz6QN6IfpjnXg6BDslTsiq7EDkQdBftnfcwVpI+Q+bKW7sZq
LS+n7QOx+tfMo4+nV+G+tCIaxSVCKbnVCQKqR4rtrMONgl1/HCBAawskm9o9bkyt0UWPeymgJwR1
0eQBB7NN3vbLGdWEP5gB2VoaHo3fmJu1/HVEXTGa7FpYCko8P2RY1r3jcVV3KZKtjaLOhgl3lTlJ
TAo9CIDFMCx7KzVNxZr2wkfP+yZFPtLjl8+PzGZQ4XQR8/NZGs48HkEp+/5cX8gH2MTBp5oSAw44
WnGwNmTFKknBPNGmnad5kt3lHELUhjcHh/SijjrZ/u/lIcBcjOjdY9C0myL3YDscSBS8LefLZNM5
qa9wI5sP5z7hwXznHAb1CLhxH+oUECa4hkYlHNEIGbzsI+I4bEA1pLTkFZ+/NCsOxyUuWUToJJmI
t51V6spt2ae/+vkjvJt4PHo2L/qH+VEaFlWr2b94A/5Jr7Wi37rpdzz3/zky6wuKth3KsvSeAb1L
OtN1wf/oR/f72Qzl1VzATLi+j/oX6CtJISOirVEJq674VqTmdLY9D7hCNxH+pODACmY84HLDNFKn
K5/bRZml8S5e7X+42dgBgYBB1LAaSn1D4qPqzcs7NSJSP0gXYckfnEXjoLdgCDGNO17xgV+ijeAh
l2P1uiRiIrhcZpmP6R+2IjdqN6rG4tpyXZFsSrPDr7Fn9clmKuIhgH7/BKKX/lE/O18nN1Y2W7WI
gl2S9tgEmbboKPRVT/hVSbYsxt44215ALQ5Um3hbMZkU3qeEj4ql+mvsr9Zd6etn0e6fCpTWUKf+
UcjJsP09jPdaQHFQ0bkshsxzTCyI40Qi7MmKuyYFPY0AhT3B20ptriLfA6h6FgA0coPIYwR6dm6E
psMzstDQVQPkUEx8a6uBBp0JqeCbqNXJVkmjPNqIhQ/OPDSGOfxSDq2llca0twfYR11nccyO6P7t
aluHLBgpW8o8ri52+8yht5oy9hIPFZ9By/V8IRRDQFM2mM6gyuKVfDr7dwnYYUyRxbkxXPLr3lW8
RWAjrDm2+W7bP2L9Aey4nXrYE52WaWmo61xaEeNhS7p544WBcc8ARH6a/SLpk8TMeb94Esq3Jtz3
esHdW+eKefSogx1nNiuq184f+2xHv1iXjpgk6Tjvwr2pivYOI+mWEIMtQQ+mZEKTzTv7lypvr7tp
Rc1OZZC7uMFgvqw1nLTliOroGX1I8SlWkRz99CqSOdo6pd0cR6rzcolNRaaWXjCHFQ5Ah5U+IFSj
+NRzvcSWzoXR+vfWyUE/9Kb0+quCvzPrdt4bUrFF+4SJeE7Wf7XEt3chxWM5sUzNAJPuSiWoITih
iEfme3zTjP9yTFHyaXTxL0MzYfrPscWRTlEeVrFf4FcWNPdu3jv7TThkx2T725Ye/Rvhdb890daB
VC0qtTZNEmv63DV9g1AHOBTCa+phlnK7AFmWfWuX2GIg7IoO0JgCFrT4Af5goHnK2Tyre2XsIL66
b7Tct5QAYgPSXZfG+Wd8v1U2aJVzWmDfy6Qu7Fz8M8zLVGHjJV4f+J77jkLiBODVLrwQtrgpRhRU
/evw0Xan1SnL+qUGmZn2FnD2eMwd/cfEWb2f7H0Uog1MjihzLyYoU7gYFgk7zpUjGp9HMs1INv8k
LHi4B+mrt1iXuQpwg+ZKziUTBea+iYonfNHdzG8/BFcpTgOub0zObF+xoxWKspe5/WSoNDEYZaPt
kYoYzuroWLSzRzTjnF/YRZiGDeV0nMo6JM4Lls8lEOhgwN3Btp51yEth12ti1WEFz++ZkVi9ePTA
3akb3cHkjTZLg9uBF475EUSaE8Rf2E5tBcbgjH6QokfpANn0WeuKfEo0F1KFhLhgn4AUImUvYQVa
rtf6BAG3u+CTlxa1BLdYEJZ6KsH854EOf+z+e3/iuZ/UmqsUj3hJfVtx8eyhq5vIuxLOtTdEXsZV
64QUuD9gsd534WoMQ4AeMa1livWVbdRRNsBtEwRojzvkv6PzNMQcEUANKckwvHeRr4OK3tTRv36v
woJ+857aD1EuJ4TcKvzoSHm1h0MLIXlI22OA3bFnE/8lRHJBnR6hMxp4AZXztYWHoZZbGzc7pKEJ
Nhc6WTGgxxOEt+aKp6paE1Qpkh/kVCbe+TwaDPjI6p/QOGYGZ9ro1zqBb/2e/fnrAAjjERGBJOLx
W2D0hbobvM1GuW9DVKt5QLvlYuUoP/tCLwzv5NiNTxOEFAt581F/ZrMwWESKp6tcadBWnMH8yBxl
slauK9f0uWpbvz+gAE1pZfwy+Oe3uIdgk3oIN7JRh0zvFEH60TrbPJ7aL+hru2mD7DbEytA1rfrP
TZdd7IG3CTfzsesMb5TCVrxI3Iie9dcRhUt8jL18uWZHK4Sifk8dIiWxeAp+dn2iAnQT7NBxMFjA
TGc2O3x5d/eExEMQH9hsK7pj7XzMkg7N2YpJaM2V1vss4jLo5ueoNwET+bI5kuObp8EWDULb87lZ
aGHyMA8p7u5I5DymhETTurZ7uZlbk0emrcALf8i4UO94j32FtQby6QrD8a2n9SN8Q1KMYDkg/dUZ
TINOHW8lj5NNLfTGTQSviNCOmKKZ/7idjzt1K++1WJKoa2mDo8ubnmEaWccutvVN3ddpkmUyf0zK
sI4zr2Sjl9ViHuGbLOUE8vlAf6XwbthFJ04YTMYtdescuPM8Z+79dsLyzJcTsrHyZJ9r8gCn2kG1
7YgWi0sONaj1fnTxyIoLQwnj/qJBMXSdJecnwYPrdd6xhnlm5+p245fvHjQ8AJwUX672xNufdLwT
eGVk53MlCQiVQEERpVsebBoLURNAYCRKEmLU9bECEhG9Um6EEvwkyhQspsBbA7lT2FfBlCOo0hhB
GdUQUBRWky0vU1LtmVke5of/FLlk7g+pgRxZQX7uFX9WQ/gnE3n/1ROSLK9mZT7+o62bqL5f3CvG
Z8/3/VKvQD7Tl1Vg9tINAD6l0cJfQhveW57QU2zB9mfNYayqB9jB4+txk87onazajqiAuQtoZiSz
GaGz3u3SEaDuk5UmY/hm5O3W7a9N9r7x9sXDQT1bZPqI9+42DQT+n4Et+QoWtCuvGdQdknh1ZSPj
wugoDtBiky6anmsKL9fp2E4tH/y020KZEydoPdKBEpHKU0sb1ZCwy2bbexW/pOn9NLoqR0YmLuam
jvqp+VVcGYvaP9yLzQK+fVSW2V8s2m49awkXV8tLpCRkdUeWB9EQfmKK5GUNcWa4bMrxkFWHerOL
a45LRMG/j5u3J1i6J3aDhVr8ofUJMPmjX+sBWRPO3PqTCptCxDmgylXJVUoN/URUbgr7i9i9gTqV
qOXWvjWH6EpdJh3aQcEhW9egQNqulWKnresJ01Ei1YhgrBxUygwgQW3/sNYneSxI2g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E61FC86C11B150"
last-modified: Thu, 12 Nov 2026 00:50:03 GMT
content-md5: 6Uk8vKSghm507wTkHCShbw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 77920f76-aa86-484c-a78c-6c2dac42e613
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-6da85444-0821-f7d2-3b9a-27c1b12153d0/test-blob-8911385b-0a76-1f7f-5294-c06de67a3f90?comp=block&blockid=dGVzdC1ibG9jay00MTFkMDEyZi1lNjYwLTgyMTMtMmUxMS00OTdlMTRmOTNiNTE%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
+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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: acb1555d-03e2-47f4-899b-4aa92f468c0f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:03 GMT
x-ms-content-crc64: YXIHzkVD8y8=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-6da85444-0821-f7d2-3b9a-27c1b12153d0/test-blob-8911385b-0a76-1f7f-5294-c06de67a3f90?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay00MTFkMDEyZi1lNjYwLTgyMTMtMmUxMS00OTdlMTRmOTNiNTE=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21687D8AC198460"
last-modified: Thu, 12 Nov 2026 00:50:03 GMT
content-md5: i5jMsuBaDWaR8dVroGj9rw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 45e7e012-b0b1-4b97-9d59-8f774720ba69
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-6da85444-0821-f7d2-3b9a-27c1b12153d0/test-blob-8911385b-0a76-1f7f-5294-c06de67a3f90?comp=block&blockid=dGVzdC1ibG9iLWE1OTQ3OTk0LTkxY2MtN2ZjYi1mZjZkLWFmZTU4YzgwMzNiZQ%3D%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
+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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 81eb61f9-2b6b-41c0-953a-450974ca58aa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:03 GMT
x-ms-content-crc64: YXIHzkVD8y8=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-6da85444-0821-f7d2-3b9a-27c1b12153d0/test-blob-8911385b-0a76-1f7f-5294-c06de67a3f90?comp=blocklist&blocklisttype=all

### Request headers recorded for playback:

```
Accept: application/xml
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
last-modified: Thu, 12 Nov 2026 00:50:03 GMT
etag: "0x21687D8AC198460"
content-type: application/xml
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b333104d-472c-4a6e-b2ae-5ceda409d358
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:03 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><BlockList><CommittedBlocks><Block><Name>dGVzdC1ibG9jay00MTFkMDEyZi1lNjYwLTgyMTMtMmUxMS00OTdlMTRmOTNiNTE=</Name><Size>4096</Size></Block></CommittedBlocks><UncommittedBlocks><Block><Name>dGVzdC1ibG9iLWE1OTQ3OTk0LTkxY2MtN2ZjYi1mZjZkLWFmZTU4YzgwMzNiZQ==</Name><Size>4096</Size></Block></UncommittedBlocks></BlockList>
```

## Interaction 6: DELETE /devstoreaccount1/test-container-6da85444-0821-f7d2-3b9a-27c1b12153d0?restype=container

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
x-ms-request-id: 513cbdba-b04e-4022-9f9e-a3af0a3a36e8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

