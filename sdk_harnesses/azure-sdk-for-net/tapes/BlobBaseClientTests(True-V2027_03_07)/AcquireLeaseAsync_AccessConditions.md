## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0d05d097-bc96-7d2d-875e-7f1e1783184f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).AcquireLeaseAsync_AccessConditions
now: 2026-11-12T00:47:31.3482234+00:00

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
etag: "0x1BF6D4DAA786070"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a8a2187a-915d-4928-bc61-085919f6dbc4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0d05d097-bc96-7d2d-875e-7f1e1783184f/test-blob-f454b1f7-3c6e-9723-f824-a4aa05f843dc

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
xlj6Dpwql4e9/B1CvGEjegOzH0FSq1FarW0VcheCd48aoli+iAmzzRrMN3If4NqWACmnUdgCihoH
oGEuFCVwOoSNKBoJZfH5AFEmhXTfOsySfnHt2ia2Fxg+t+iohLj1XPztkbjAjZs4rlGG2wWlKGaU
m5azgmBe1xAByq0JUXuYMSh38agU0vDWtSzULzwTmI+BE+kiQdqcj7qnvsLtLlzV7arcLja9f8ml
3cwziafU7jIdhz6Sdu9N2mLubRMt6IbP/kGRNmpYxJQgfGQNaQUT09CQz6ceQ3e6j1PUzhK1d/RG
Y4plQrjIxcKpcfmLP3Fc25pDnBjfsbvK16cWhPWCagVwxwV6rZAYyArkdNJ+Lk/hd/N3ctrbZrLP
m2oRsUDNJwf0G3hs4i0JKtQN+zzpS6hYNA0BCvcqlGFTqhIlBxfKF0zKiRPXdZXGbkcGzmt15k/C
uXwzyx0PyoYWGTcb5CO8Q+TwHsGUgL94O5uvI8b13cTCY06al0suu7+NwFxdqookSYqHhciNLTi9
u4+CX6bAIDtzWYDVIquYwWICB8BjGpERi9k7blf7NDUV3dy8rFwYzZ8g6lEJTiff7sRliyZ3WqD9
cdPNhLLkdyRLv0TP3BQG6TohQi9ABz2xXICTlakPnoM7vjuIS0jtPHMtvo7jDxKvX6LsVRdxvWmV
GygyUOF7PCHAlB3Zfp3xNAa8Ekmvzkxt4zYGIkhsyQDR8i8fu+uRsYJtInv01uAE+iEQtaog5k3c
xG2qdBnYVMocB4tt0XkbKmHGQavQeA1VAScnWxRVsQziQ/Z+5j1plc6x2M5Vlimn9YpJWaShDEtf
VHLxsPi1xlZ/i46CnEQkXazdHqA+AGv+gGaKDFdnQTeqHpHKd+TV/BF41gubJFhFJfv4w+2rIVQH
8jCSKrr+F0pW2H6yWeXHCCKPxSpgY1sNROZbb31K//09woW0QtFWer7AREzak8sWMLvKG1sqp4/U
heXToqjNDNiAdZdgE8VROUtrnx8PMrEbRT7Cf+ShEhv24L3rgtcW8zd0Wh00tR31eeIPvgdwxVI0
uF1pC4zz3mJ7ajIIZbZzVavnmtiT548hzAYCkVMThRpqt8p6rOirgHu7uUvq7RMrm2lciCp6oNHN
SD6G8U0OZ+QYna7s+anCPBpd1y1DN97y1vbqt/zv7xb5rGOqJI4urVFn0U9lP6LAmUwQHcijiRFf
kxtWJLDnKK2X8kxFGBeMLirc3GWPjZZTKR2w39JOViJSSpFy14mhgKmizk1Ve4E1hO6dxq2s0AWF
A/qSN0jbSJwq8s6GGVehO1y77L9J/q6celvjsI91pnmL7dOPDklgxoWwK4izr2qW/ItR8ONGOw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x230102555C66340"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
content-md5: af9bZBBm4o+Z0OSzePcLYw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3856af5a-996f-43d9-8507-3dc5b9e8ca59
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-0d05d097-bc96-7d2d-875e-7f1e1783184f/test-blob-f454b1f7-3c6e-9723-f824-a4aa05f843dc?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: bcf64b04-f7ed-0c98-b44c-54fa2b83122c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x230102555C66340"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-lease-id: bcf64b04-f7ed-0c98-b44c-54fa2b83122c
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e006a61d-33f2-4eb0-af02-4e0d38508803
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-0d05d097-bc96-7d2d-875e-7f1e1783184f?restype=container

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
x-ms-request-id: 5c6ad079-9c00-4ab0-9595-5c5eea309ad8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-39255b13-d298-e825-cbf0-4db40423b595?restype=container

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
etag: "0x23738EC98BFD4C0"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0e75d22e-5d9b-4ae2-8129-ac393177b99c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-39255b13-d298-e825-cbf0-4db40423b595/test-blob-43cfb144-8c17-cf72-eda4-763b5eb43f12

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
6l8+lb4MozElDfD9quQIkJe+tXm0zhSG6FZM81zqihaxOsml5R/XOA6dHQmbdSUJm+WjoP7FXhtK
t61nwK/VO4PZTHAaY6t4531qF7EL6nIxQ1h2RuoY69uuWi1xb3dfx+KFwSm17zg6K7mAWkZpPsw6
Nn1XXvWZwWCUawh9BncGC0/PhSlJe1MfPBowl5CVRBtgNzn6CGjt7ADIIIMvvSVBek/2mrmj8bop
NyLaaCnP/ibsHM89CwPn4pkogFrQ73/17x1BnqpivEV+0dBGEoPW+CJdQ6BVBG5LD7cge3BgWUej
5HkMjmB7il+Jvzozoc8VUog4cqzen+qu9o7yQUHUHneIoi4JymrB4bhAy0QzGG7oCyjoJ+abxEWO
XZfRiUgetaHCqv6hDIcdd5HzndOme94gCjYY7PeR7N3pemzS8FhvIhajcG1wRv6hyrBUpyZx6OK5
sX4SBcmqMb0guJEbSoc5g3u9Agpxr8M3dyFGPEW2d5GKGT7ZXR1N+T+vT45thYApGyOrtOXYSAG6
242nY/R4aUD/kDFIXyZdbwnKwWA1yvGhHSEhC8OsstA8HoKPpZZLNuVNbfVO4Lv8TUTcDYahhRGb
BkXSVl59U95gC0Ckzslzf4t76Fz8Uj1mJL1+0KRKm5lw859QeN+G0BoW7dR6WH97aI77Jp20n7MH
bDKh/oM6FnCnM9oqIgar9BdB5mVo68w+AmcVTnX8vFTrSAyt5dGX29Zk0ySlUUWHUDGFc7hOn4Bl
YvsbJcj7qneFPtr6/Q5GqgqPBBiombEijf5Dd0ibnamLSILVe7YOaCisHxJrjVIjP8iuv5pnvMlK
+ZfKtzMu6aEwbrWLcC5TgJvw+3metgCrIDiA7d4OJIu5i4IfRLD0fTVxOh6dl86aWz7/d8FQq0KX
Hpf7rvzDIUop0uSsNDzq+31DLHvhDYhp5ZGfD6zKad8/hyUZ+c84rhjTdMTq7icBFHtDDH7HthAO
kclqIxKeX2kEbKwX0QGuCn5iDZnEf/dqnvswhlxheNEVCmcGzYsGNRVb5YF66kN6lQEAZKh2ShLR
AIQXbdgMo/TaAceZqDzyXNeEaZl177S4tvFbYBQpnr9VNM0G78g8TkKNoOh74OzEDQjQ8eF5WxDQ
X7bnsULfsWMHRHNv7GwPSBpW6E/LPNYEllIMWKzd29i9NpARVZ3/re+FdJt4VSGbwanHInPBBCLg
4hrv01i2KmmbsrXc/fJ8VztfRsg6i0ExcJYDFrll+zFtMHODD9mWzkoy3aNsv8S2Sss4Yb1aplbY
vmLBshOvNraDbsx/+UdhyHd9B66exbHSTMzuLJpzEoocq1B21Rw2gqft6FD3NlCD1phG3J6oOg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E5056E09473250"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
content-md5: fLNJitW9MEZUzQ+F/5XM+A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a2103d21-b9c7-40e6-a7dc-e0af147edcde
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-39255b13-d298-e825-cbf0-4db40423b595/test-blob-43cfb144-8c17-cf72-eda4-763b5eb43f12?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:47:31 GMT
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 66efb1f9-c147-1b09-0f5b-41634ef7eaf3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E5056E09473250"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-lease-id: 66efb1f9-c147-1b09-0f5b-41634ef7eaf3
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c7209134-ab2d-44f6-8355-9ae48b6f7c72
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-39255b13-d298-e825-cbf0-4db40423b595?restype=container

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
x-ms-request-id: 2eb2dc60-ac7c-49fe-812f-da8e0e6f2f86
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-0785475b-dcb1-da60-157b-6a56012d35ec?restype=container

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
etag: "0x277099F2E5AE640"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64d02b0e-8c95-4874-b65d-8666fe70ca45
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-0785475b-dcb1-da60-157b-6a56012d35ec/test-blob-c5577174-b6e5-c0ef-9dd1-d8f5b5d3028c

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
7KXqlRmgiRxQFFDMVrMa4iVV792fJQ6lWMRp3wRrJEJ43mpcQ6DT0+g6dNBlI2nqt/bPYOQl7MaX
RD1UN6kY5e8NU3hJvZ6Fghv1ZbA9PzVafygOm8RdU/Kjxf5jfpw+Io/gWM/xoPlXSt3IMIcVWQQI
+reACkkrsACGpfegIQR/tkMhXOdlaN4utlHnlCJrjWv5WoTkvRhGtajPa/oCtyjZSXlE9P0dopHY
UlP3RBvdGhiMpsaAmvgq26Y/lv3jLP8oDUupJpht3LjyDGvETnGM8VDidRBhWa6AGRlX3QyT9CZU
zjbPNPN/HsoOjY6NZow1sqSsAbbux7ScKA1/Fv6rXxdEcH86vb1cYldGUssg8rKMIito5vNvZgeB
MwvmAAfLYy53SfYN+vXmUJ5ep3TpfDVa8vTTQ3gk1Al3uYqydmJPeu+dqam8fyg1gZZUEb6TmLbV
iw4T+B+2U3TslUBrNNk7Di2ES9OLnnPLncLhz8NL5CDT3OtUPIHP51Y10Onnyky8GQKRDk3jSeyb
R1td1IOwoLEgl1ju59KrtWR9Vs6J5NN1JLbButbT75L+ufQmcRLShC84xzLzzTEv5lnoZvMeEWOI
6K/N7+bbTKfF8C7ehENRqtGfURyggVaEkdN86omf36eQnoliBJVIXXqKLt0DUGEWl7shf8BH52ZZ
SV0SXmEeJhCGTuW57qY8VvOhFlN5gEFxZlPOfWDnSbYjCbo3Nf4YbAfMfQF8XagU5SjMpdES38gb
ofgOUKmwngUvleXrBCH1iKpMrANA9QmruZg4GqPlECnyG5QGChteHN77TcfCKOAG1xwnxjPE26vu
YpYQd4RhSYS7+eiN7n6O7pAlRKhC6JC4MUKHvkr2LUDpF6iFTaRZmgNCBy/3eeiemNejn5cCrHkG
WEZB2Yo5xMyopNfVCaHry6ql/+FhwLha6SVzU42o5moufvReGMB4CEJiTtURyI82t9TtXK2YpJeO
5/BlxnA/AL1spoqsjLPpLPae/nLiSCGWPZu5u4q9ltpc0DDPE0LRI04YpSEFiSshAzC2+aYlq5/P
zonVhkQyrhCwULuCGhm0zdsjyqL/kbNwl7haB50zNiWRAES4/J0J5fcRVDlwnukWAizKAeH8zz3V
ZO6M2KdzfBmW8RnU+9A9GuSr7jx6APnOQwVxaTVElDAG4pevfAxPndgg2a3PQQZbjOf8UeEBW2T0
vZWiAhPkUl3pzhg5jp3YXFBkWiZM/wH+FtxNR0NOBYcyur93rZvFO4dP5nPtIf5KI/WRnAE+qL6T
o+w2lgoZmsiRBtTeYa60nx6e/BmNEfTeAyROvWiF9BEA4wmvjqV9NkuqXBopbMJG3P3jn6ylBQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x211575B278A3B20"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
content-md5: P13aiZk45Ewx4n4qcvntJA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f8babaf-149c-4979-8107-0052304fe6f4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-0785475b-dcb1-da60-157b-6a56012d35ec/test-blob-c5577174-b6e5-c0ef-9dd1-d8f5b5d3028c?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:47:31 GMT
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 9358f792-cbe6-60dd-0b12-c3dd7ea50511
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x211575B278A3B20"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-lease-id: 9358f792-cbe6-60dd-0b12-c3dd7ea50511
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 97896918-2dc8-4df0-b7ea-26d2d1ba0d06
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-0785475b-dcb1-da60-157b-6a56012d35ec?restype=container

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
x-ms-request-id: ec1128d4-1253-48bc-aa4b-0eb5522371e1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-cdc62178-b4e3-b4d9-9661-07e06aa25464?restype=container

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
etag: "0x261134079B47B00"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 55e3004f-edf3-4fab-9949-47f757de3c95
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-cdc62178-b4e3-b4d9-9661-07e06aa25464/test-blob-b776dd5b-1135-6a97-6e4a-5008668e44a0

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
1+xqfubYIt0eo/yExPz1aL5egqEuTdtniVtemGTRTggdZgl+ONV+g7qZmZIUEqVyVedJBwyjcokR
AvWKeYp5TFX0Z13zdjDo4P/mlbRJUna27EJ8h0b7evR/bTXg8wkvH0w8H6tIft+3YCcNvN3Vx7B+
1IxI/cUO+e1pdAn7COz1tnVnDDLLbW5jxSYf7r0XqaWFYR995yKHLia+3wrVvFc6GAVnbbt9s2Ye
5Dee7gsvUcpkdafNd89S4N0MDI5kjQnO5NW4rzzpCK24XgPq6T8bjo0/cUawbKA2FI3dcKbYulYu
zwk1d6GOem35FRnLaPed8H0AJBzCHnc1gZuuC5cG36Ssuxk25hfrsPbYtleHaqyWQH8o2JU5bLCR
//UG327V8jV0H6zdZwpmFHMl6mcgrhfvGMsX3QYOck9opOYh5NGHAsMhEkv/uNh1wsMiE4FJcVHe
F8ejvhQuZqxcdMMjRS+inuej/pvL72DzohtD7F7NHzKVQs0K5ESu8qyeokMUUnyUf3WapXK1Eihm
rxv463pNj1WQjQNimLmi9AvvLUwc3lCfrmzoM3rA4C+kozUptgcxUBPuhMR4Mee8+LBnxeXbStHL
WTwNZFza0K3TvfSEeT4Evdw5LVqLJn2ELDrJWRpJyVhjXVzKI+u3E7MWpHTyN35xYgcJoR12PzK/
iTghEXeTivOcIBviOprwgRmmdYEJkfS8WPYSQCc77R4qCpqzlgI8gxqAVhdijydtGCAD0MqwtvdE
ZbiAgEnMYDP9uC//PesWafFniTvcWcjPpScHOBxTeVSjbzFKuwPQs/XkZdf3bds07GfZSS27Zwzw
sdsixCgXqj7bXM26zK3tltVF+PPx1zdL00u1ejAn5wglWgooru7NzbuYHBENeiC567NXdW4Y/tmj
1vHcYS8OtHXFlXKjxefmeCs4WLsmPlgr+499z3GZDFswhNj88GuLimibSOStFiXLcf1C36UefZiY
sWagkeQDK4gXckEP6YjArc5TivV0feVpsV10Vi21EQZAZD4E6/iDmBxblqPjvIh0gjLWy/OiJDOA
Nt+Gj9RbYWA7z4VJu8LWz/LZGOdBhvXV/9T63kYTnT8LhLQY/AhHADVCqO0CK8ZwAPsAyQxMPrDq
sY8AYIIaKDFFPjcNvdPpkRiy/t0I09QNit5KEtQzvkUELkt5R5+zKIC7vOyPYkMoFzfzmj/T4d26
8tajzxVdEn/xCY+IcEp4/tZdTBbofSebIvucPyQFMUxtvlTID1lqXqpsnVmzn6bte5tpdpTH0nSv
CKwawNJa7NhCG7L1r+988u5re+DN54NUrsSJnLu3pevfGQasT53YEbGBcYTz98ur7IOmXFeU4Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x252A2AFB9245B60"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
content-md5: fFzGzyPSJ9JScgW4wsHABQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bce1337e-9e28-448c-ba24-07d4576bbd7b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-cdc62178-b4e3-b4d9-9661-07e06aa25464/test-blob-b776dd5b-1135-6a97-6e4a-5008668e44a0

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
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x252A2AFB9245B60"
content-md5: fFzGzyPSJ9JScgW4wsHABQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 35d9477d-0fc9-447c-9c41-b84a312516b3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:31 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-cdc62178-b4e3-b4d9-9661-07e06aa25464/test-blob-b776dd5b-1135-6a97-6e4a-5008668e44a0?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x252A2AFB9245B60"
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 11c62921-d10e-1d4f-8a75-c71595e8cfa2
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x252A2AFB9245B60"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-lease-id: 11c62921-d10e-1d4f-8a75-c71595e8cfa2
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3599a345-7e3a-40dc-ab3a-3a2c01ffea91
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-cdc62178-b4e3-b4d9-9661-07e06aa25464?restype=container

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
x-ms-request-id: 1e21333b-d806-48b7-ad77-2901207d1c05
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-2e699350-754c-60fe-b7f8-deaf37114993?restype=container

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
etag: "0x21C379CC8848360"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 50e46456-0bac-4f9c-9948-341117b9d66e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-2e699350-754c-60fe-b7f8-deaf37114993/test-blob-83e5384b-8c89-40c9-6164-e60e2ce135c2

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
HOFWye5mlasqZVoW86DleSwzyl0DTBjEySjM6I/wNNXCG5JWuoCl5KM5WCQxs0zBfmzi+BfYv9DI
kv/Fmq0cOjGFU9gOj7+sjua6yfT0khbcC2kiDju+6lzBjSiA4Er2HR3yrGB0su6tNWowHvXb0wDp
6Y5D+Sz2x2l7TAGWK66bw6vWAeW1Z1h7dNjQjctm5rkol/a7syPx/OT2+WXtFgm7lVpJBdIaM4I1
yIVUJTqdFGZHbpS33xCH5QQBvm3zjl7OFPdxHODnDmN0heqendeqWeT/pad0BLVJwR/NGXQUQjon
hRBCLPeFYGAxQ1ol6UgtVmWJ9Oi2WhBCJ1vAGfTuYEOwdxfGaC3seURGQ8BbI9jXoMIPi05RcCv/
/wScxUZrQuMWdXEwZu44nHujbxZQ5wOC6Xky39T1Xwfsx2goT7P+2wHdRK5npznU1+7TrQEUrxgA
GtzNOWIOIRVqQ5+FD03HpZQUcqJVGkE/XQjmIrEF2BdQJzTXMKGezyOY/WOaT8ehCwdtADx1qwCa
jdtaJ/9kZGuHNecY73XydaN/vBzdpA5ARRaqmNjb2nw0PaLFRKcjNJj4ExngiBySeoqZ9e/jvOnN
GeLoucyTrFpr47LSLDH7W4eE5ZH1YLz6Fx1NQeWMUYC5+CrFOnrMZWe/dKVqwE1YnZlnX9dX2Lkl
7qKuRWp13pExGDQGNiEMt38qNewXj1fP9aNLJfKpYSBxn0zYHSD8SZUTOacZUWd4WqdXLaLNDV5K
31DHKrmfh7YTlZbUNJlfLexWBFavtqM80stKUTR+pJHtjT7QNR/cc7HxBbzQoyYN+AC2dgkHmyis
ilftVDWClfEE56ZbjvjMeZClvrDnay6kPVk0yC2I5fIVI6rI7h57b3DKy7yAsmoI6f15Yt14xR4o
SRfcTszEfAGzRWpNBIpxKU9AHKByJIrvK94vD4IVnV6Mn6UHnyCjBk+6zGz/uuVzBzmNN6l+tiSM
7SLtlG1/nqcMwWTkaoounBVQuFge8HD5vAhJh2W0DemBerL+tnHiOy7E8vmBjpyvX5uTLf3Mbv2x
9NhlNRZCV7N6Y/DXL+akbnwpWf13eC1rmifKId/rtQu0TcGZfQUXgppGBius1y+177+BohT/Onur
+ZrudzbUjq7kI+IkCvF2EtdjMHEBv8P3FTIgahL3tRNF7oNrKQtkcXh9x7RNkOTNCpA9nAkKqTrX
9mIDtCSb7W3P3hxtC+nM/7/5hPcPqoROUl+CuRgJO0RJkzKoYL1U4dpGfrLHX/6mcZ1KECVCx0zd
tWHEGDNUxaLYJHe2I54BpaIdySvShvJh20d7vysfBsvlyqpckMim8bkP7zuG8E7+SGuCJf4gCw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x223A83351154800"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
content-md5: Homi91SMj+1pghQsiKGjXQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9ff61f59-764d-491c-afb9-d5c7923add8b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-2e699350-754c-60fe-b7f8-deaf37114993/test-blob-83e5384b-8c89-40c9-6164-e60e2ce135c2?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 3d636e2f-d9eb-7705-b81d-acd058f4a415
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x223A83351154800"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-lease-id: 3d636e2f-d9eb-7705-b81d-acd058f4a415
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 441ce8f5-5ded-49a7-9b75-f9b270d87848
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-2e699350-754c-60fe-b7f8-deaf37114993?restype=container

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
x-ms-request-id: ce2bd634-9968-472c-9240-5ce093d3db91
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

