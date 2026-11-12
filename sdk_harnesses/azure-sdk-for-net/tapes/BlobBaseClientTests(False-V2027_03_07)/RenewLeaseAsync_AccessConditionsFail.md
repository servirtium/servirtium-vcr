## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-87699a4f-595d-4262-eb52-d6f7f6bc0121?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).RenewLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:47:04.7140053+00:00

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
etag: "0x277D0BA5D957400"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c6b4f5a-4a54-4ffe-b707-7e9df439b15a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-87699a4f-595d-4262-eb52-d6f7f6bc0121/test-blob-9e794ab7-8cfc-2331-fc55-57116dc24d6f

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
IMkFz884irZ56IhMCbrR3gFojaGfdyHDaUaKBwFR1SgFZ9cttzJRfr/DJRMD5RlBhHgPBTWrz6in
QmWJroK0JxNgR6LjoyfPFg7h3FIOv4QsSIOIQdDzWZgvhnXMyNA9Dv0Aop13XuFRQO4myfJWmYLh
XGX/LOZDbe0JsxyyA00+pM1UDR3mtOqhNwHhzY+l2e3z6mtrPuIXvDWwbqvEnz2h5yUlAYtl+6h7
XfXlYp9eZNkvvxjh02XqPFHnNUY+3ZjEQOVpf9dhje7D8OHtMlqWUgnRlN8kvxS/OsU6fcZhPH9c
ICK69OQBzTEpHeOE/Qr2UeM9bUm4n4DRqkUSJxAoYrNhkBE4214kz8au+qExOj26QyziJM82pIGh
6Umf76UhAbsvI2z5vnWFGJ2CCaXeoG8IV+TjRT3kKuuPlvIUheAgjfnlARfQwYW3XQwxtJvcwkja
lpfBPbt+SviAaSeCcZK8YXyr+J5YOJZfK+gxs3ZQs9OpOe9JX089Z7ceT1hdNOx6dFMfMMqqgl4B
YhLSTZeCMLVT2TejcwEsbpHmOeg9Aff8tz4jMYMJ/reQR/09ahognB+jClu01gFR8sE5w0l1w2Ea
1pZYXv4xSdqAEisE7wN2xpzJmvacSOA90T/B0DptG4SbIpSExz4gccCAM8PVTAK+wv2trClqfo61
G42+cHmfE/enaMxv8v5eqCk1GxQcZ4Q8Aw09wG9bMaQFzqywYQBH4SDMLuQ2TtD+TgP/NGJ5mbMI
gm1rYVKISzcnaSNSrUYo7TrzUDmgBbQ9PnFrW/xBizX4qN+T3H/OQ+KsDuWsrKG810Yohkl5aHy5
LSPgHPA65d3uWgVnlBG6JQxX8/fPkZLQr4O1GQXrfkBi2q5c7SbxcSgHvVGcVEM1bWA9InSF6ZyQ
EG1shMzYA9vFBLliXjjlZYHOx9NAM1pAgKulrlzM3fASy9y5hO1cL7p211CJ0g8nV7zytiLIUNwT
LAQhMlR/+CfJT5NcLOGUcpgZylwKtq2cfVaf2SbOSXv/pVjpO/xl9t4pwIJ8yyvbXUSJr4V/CXVW
hLX93x8A+gUXXIaIqzecs9N+4PYrH7ErxHziRJr1f5zik7ZGaBe/KMV8ZG+kUrEM7fuyASh/KmUD
0huiHbVrIdzqphiBVUu8v7gwrrpBhnHK1VefQ35zY2hQQ5X7HAsQEUKTuquZi5iv9UJwTnyqwUup
10dey95ddkOwMBK1wKKsIJx3rszFMUm+8E08AxTrpoFKUkTDsUZkNUNo6FuG+TWfwy7fMhN+46b9
n9uQIXMvxImQam1d6W5WE3iJXUnuOPYXnD/lDHNtzG+exRFq0xTQOSTR9Y7HQdq/iR+a9IZcDw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21A0974168F56C0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
content-md5: 9TYJ9DbRisXzAWBXXTZuFw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 57dbb8f3-8f5e-48a8-a9bd-2732e9447e6e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-87699a4f-595d-4262-eb52-d6f7f6bc0121/test-blob-9e794ab7-8cfc-2331-fc55-57116dc24d6f?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 8479e567-4933-16b8-239e-febf235deb3f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21A0974168F56C0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-lease-id: 8479e567-4933-16b8-239e-febf235deb3f
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91be98f6-f0b0-4ecc-90ca-ade893862eb4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-87699a4f-595d-4262-eb52-d6f7f6bc0121/test-blob-9e794ab7-8cfc-2331-fc55-57116dc24d6f?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-Modified-Since: Fri, 13 Nov 2026 00:47:04 GMT
x-ms-lease-action: renew
x-ms-lease-id: 8479e567-4933-16b8-239e-febf235deb3f
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
x-ms-request-id: 938bcec6-5cd3-4780-9291-759b2dda3bee
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:04 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-87699a4f-595d-4262-eb52-d6f7f6bc0121?restype=container

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
x-ms-request-id: a4105b61-e3c1-4854-a36d-54b33f10e0c9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-2524b964-431c-5067-5b65-258354d3d7e9?restype=container

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
etag: "0x1C6A4C4B341B920"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 53b7da6e-efda-4a46-b500-07f281561be5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-2524b964-431c-5067-5b65-258354d3d7e9/test-blob-85aab541-8f5a-ef9c-6bbb-d2f0c882b762

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
nd81O2E38yN9KCnOIzXBUMYVfW2yZuXVHDS5YHF2h9iuw+V0nZyHCsKGBzFlzss2+oIqsgVJsDf6
YB4tfpOyB6BRIGBPTbIqjnOrK16zb05og2bvS9TTZBOuej19WYsu1ACQFK1r5qzPACSSnYTYR/DQ
xPssw7vMfrtNodJ1rDTnfFdeIlug/Zy5H0uwQMeO1TJNrZWQARBExJbyHkXaWlPvqiAteiSUL8de
c6NvGz30vsufJ/+fV3pGGV3Frt9W38X4wZamYVsOuH3OMY5t1KlY/l96OjJTUFOl52DHz4HoB5Te
d1mnTV1vkW+C0CXs2USzbK9/3KWTpHFCAHr6Run85in6jlxPsbACCqjD0X8uuQ4bE2LSaCvuS9Po
ZU3jdUuFhur78krnZLv+fNL80NLxFEds3jOHKn3+C0OJZ0xjH5RdPUuUMsfDNK+m0+xY8nsA9lAG
d5YX/lts/OYGXvxvmlw9n5KHXeF/qKqE4FaRphnIiHD7Xaj+RT/vKDXgvdWyNziPGlLoeZluhs7s
kx0F21bNPdaLdD20P1pTlzSsn+rV0akdAYvH4A/XjNfZEbEh6kzeEn//JsL72tv3lOFkwubkFsFz
59rLBl3GtOdl2i2oMa3ozYxr1qvmISawz0sucsnw9fvvrgJyEwwhOHHblv+tTmMzfPVZeEAWjMaz
GjYSmEEedeUyuYKrdrmASZ05C4smAoDn+vbUlny62CI8v/nVDp8vvSEae5XgiAU82S+i3YA6jBe2
K55LSd5peOBgb7bAqjv+CU5qDIfrB3LwmL1NF/uhATLhH+MB5HNDsQK1fxhOfC70pNMy0H+QyiQr
WrEhG2Dkv26E3otX/SXaJ1uENodZoRuOWXMobzCyUFS/1YnBIZWi0MCqyp2jnKeuV6kkC5Sc0biV
ksLsvE890Y02mCebGQXF4mXGr9d+6rzMeheGjkXAIgPRK47StRRwbfkPbAR/Ej6kXyku1iLhF6gF
IEE4t0JIdnYjyu128ixRVUHdbn24TGfZ4i8bkUvh7xTmzZXSOLa2x/aNXEhRLmz93YHgBKgqTdTa
X9UTLOQqQtrYjyWXfxyLJqeHKu8eh7PCHrTKAOpsvIDA99nhopoRYxpteJ5HZl1kVN0AoiLkvNch
UQ4wYELvbNOl1odDqoQNdcfVsA8Ue7hWZasNaxld3DsBv1GM4QPXfQzLoY/WIKlZ8y1bDgvIDNVV
2fqW4gC5R/pMQesygZTD/TICSNkogEQBtHjsAs0vObJ8NgcJQZsMElqVit6+JnKYlxHYxsP7LVm1
lS6HzUQtHAg4tkqMuryX9TZ/k/ZlQo0GU2u7V3LvgAmuU6tthUQVZ23WhnAnC91UQdCNe5liTw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2185C3A416AC860"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
content-md5: bQIQc+41fXX0PtrkVNJd2Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b15e31b5-9168-48f6-bfb4-99448ce5a0dc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-2524b964-431c-5067-5b65-258354d3d7e9/test-blob-85aab541-8f5a-ef9c-6bbb-d2f0c882b762?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 7980a052-71d9-95c4-4935-41de66112970
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2185C3A416AC860"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-lease-id: 7980a052-71d9-95c4-4935-41de66112970
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f70838b0-9fe8-4181-a4bd-d091c8b32c9d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-2524b964-431c-5067-5b65-258354d3d7e9/test-blob-85aab541-8f5a-ef9c-6bbb-d2f0c882b762?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Unmodified-Since: Wed, 11 Nov 2026 00:47:04 GMT
x-ms-lease-action: renew
x-ms-lease-id: 7980a052-71d9-95c4-4935-41de66112970
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
x-ms-request-id: 0530312a-531e-4da9-ba1c-06cfc655b6d5
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:04 GMT
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

## Interaction 9: DELETE /devstoreaccount1/test-container-2524b964-431c-5067-5b65-258354d3d7e9?restype=container

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
x-ms-request-id: 5aeafa2c-58eb-4401-9cb7-f9d4be8e796e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-882b69f2-bc8f-df1d-488d-6715a261046f?restype=container

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
etag: "0x2065816CAEC9D60"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5676c3fc-147d-4275-9ae1-dcc3a77ea308
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-882b69f2-bc8f-df1d-488d-6715a261046f/test-blob-cc58044b-ca04-f63c-a940-3d3ae62d7643

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
F1+bEW3av5aDoTFLCq7z5zDRkmK4XWwnLTXfT37i+BoXI/5DxvICcUTBSWKZ8Oz6TFYJFZoUirry
dOQ4+28YoKgWNOawsCA+ziEd9hMJjT1J5QMo2eOAAphEUFIOynbUqam6grsFSZw1y0Z595Sm6eam
7xVs78bEljJNbF/NLwSrSE1qTguBQ5tm8g6dBgsEnWZsZ9pgZ7ri9uuJuN08aJxBza5GO5rbJat6
Bvy4Jo8nSM74YccqS+GTiFgf94u+KYpxXDlcvmLMkEEv5mG9Kc9cYm8PQwbUF4LNs7NBvC4gu9xx
RspWyopsLNCF+mR/1V+JwpUcruaEnUW2jwquitQTDyqETOIFBZjkoxc2ThweTd5UuPmYAwz27amE
oDqAvaH7ces6+oh8hL38OAvOTk4omEErWdLbegsdjl85gGVdY+V1Otww41NV1zM8nMsAJ59aWwj5
VGPOIPbgHGspQwNXn9QmWRNx+LTu1oKfnt4/HGa/3iRdZA+BphnmUMbnK5Qv5Pz22s6L6GNTCn7h
L4IXoAAFaWTf+jrFpLL6i6ftB6rtb7riSEKYNPbACVmQoHaXzrDG4sIvUOnBMTUbkFy8ZgPU88DH
NVe9bDVuHvHgNAQ8Y733JiTovh7QIBcMfaOZBKNWvKy1z5hYCHWMwDH44fww3y2fxD/e6zWh9xVA
se+R1BpOinhYhpMlnh2uW/3t1z8a2511+j9jd9B2FNiCGFeG+usXqlaE2FmaeSUhL5A3tB/WJdVR
HNra6hKn4nK7oobGKGAR1izolgNE24AaQUdAPl+4rPOBNd4RPL9D3Pbm3tefWwcvJt7y7o7RDEBZ
wKnLZ6MSA/WTRPKCAJltpLoNXvyoeuY/EBiBxb5lryidt3wWeHRS1NviDBYVrCVEhUnTxK5DsEXD
i1aKkD03LZTK5EgcVixFu4khxm7PKmPyPD91ket6WQY3U+0ex0Oeq96CS8jdKC8djQkkIurW82Dy
l1T9wZyoT4tB5QI/J/NGghuQTd+bFRQQWATiVTYcYF+MKzDvoOlB2fs8m0It3mUW3qDPRaaAVoE/
7WmXxvpUJYSisvzCV+ExTnPkXnrS43mezHeWTBu5C9Sur7N/qhMB6HW9iitpU4a+nfYynPcHbQrv
+fmCvdhp6aYoFKgusqRg43YEFFhONXnw2K8khm/cp0Gpj7AZfiqdVKGEQT7ej+tR0rmBAlixocSA
keUpRWI3S21mhCP0RmRLZ8C3yfQ6EkjE0rS2WqXp+O3sme1FdA4+TfXReAvIXYtUNpqY+tfPRX+d
ZXKugfDIfIw1B613BfKxeHz+aJk9+3QoYSQKUP0WHFNtqA+ckMwFCft+k1bd3TCo54Fb0dzmXw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x218A409878F0B40"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
content-md5: ajkHFsYmP9x551CJx968hg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5dc164e2-6682-4f84-8b73-3223eba169de
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-882b69f2-bc8f-df1d-488d-6715a261046f/test-blob-cc58044b-ca04-f63c-a940-3d3ae62d7643?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 1f85fe69-bdcc-8e2c-1fea-59095de315e8
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x218A409878F0B40"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-lease-id: 1f85fe69-bdcc-8e2c-1fea-59095de315e8
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 510de596-10ed-44e8-b2ce-a63333ca3a23
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-882b69f2-bc8f-df1d-488d-6715a261046f/test-blob-cc58044b-ca04-f63c-a940-3d3ae62d7643?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Match: "garbage"
x-ms-lease-action: renew
x-ms-lease-id: 1f85fe69-bdcc-8e2c-1fea-59095de315e8
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
x-ms-request-id: 5f4702d0-bea2-4ebd-b9df-76653797a002
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:04 GMT
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

## Interaction 14: DELETE /devstoreaccount1/test-container-882b69f2-bc8f-df1d-488d-6715a261046f?restype=container

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
x-ms-request-id: 0a784182-a963-4fc3-8fac-f68b7ee1bb99
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-9d5ef9b0-68be-4a1e-84f3-62697cba4b76?restype=container

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
etag: "0x1E70C6A7DED7B20"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9742e18c-ffec-49bf-8fe1-efb262933853
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-9d5ef9b0-68be-4a1e-84f3-62697cba4b76/test-blob-9ea64887-ac0a-4b38-cfef-736b84d3d3c4

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
0Zmr135IoQDfO5vYW8ISZJ/ighQ9dt4DwBPOzvSzxrAgnZfiD3P4P6elvs4QYPAM3Q/LoVC+h1q7
pxdredILLHTqt74rMFQr6UNtl7gP8l8iwvHl5yRfYhY8J2hcjcXUmpJaJakx4ay6oLgNUO+irLS3
SLfgJkVQi1Sn7gnsz1t9mP0ltc228eBEKkdsURImmXuzpEUO9HRNCZpUivOjztBckLfyffbnAVbW
m/v+5DlCgFSOOCoWbqSI2KsyYWftoVx2EMFaNByEzKPuN1h4TyVgEgmeFZWmRiESaaRLtJ/v6fqf
h9R450w3CWuGJzdMEImG0U5dT4vGz8mfR8p4OBcD/05d2cdQ6Cu8ZgspHx7qxlkbxONRkZpv2LcK
2J+Cv9FUgyjo7jbBNekjoeh/nLCrtIFwXHQ0sm207gAPRg+LOqc61Zz2AtcjWY/6LfCx7zwHXyQe
EWJcH9C6MwA1su7Zl2dARMYTtLKpTQLkOoR9Av7EB+frbShF3bbLO87X7aegIJWIcap186pxdMNf
d+VLPTABcKoH7So++2YQR3nj0mBbRBnu9JFTTxM9efhl5WbRgP2d1Xz9mTJrSnVEZawxjaJjBDPL
XEmfrSGWyXMx2BYAP8d7RvzjXavmg6kbD+pnDOxWAuEyBSOz/idbZs++OXFfQyXktUelf6aH5Nmg
g542Lr2H29Y0zTmjx0fViPbcKEo3u8zEglaksIM6qyFKE3qJJDcRN12bKnXsQO4A0Pavq7yOaMjR
cqxm4ypT+iIXWbPNS2O/yvHsnJBX10JopOCMi/9ku6qyt7KLqlMzRzBS1Oc6MoST8OHLosw3eppq
/j5Kx28jsp0JGpSwMx+duFRgBAJaLnFb+JodmRneezwYIawV6YDBLiFJMRjw4r3CLul41naXD9DN
7s7UBRmEKp9XmBFziM/TntXgEfxZaxbdW2svZaTGgRLbSPuy7SkIxAZ5mEmrT6YapDigtv3Tc4K3
9qqtVcX6kRf+lz/UIbGs2E324NLMMQzFFcFrJcoVCNR4+vZ+W25BfgcyrLdmRoOH9N6v3JOv68Sd
50ADj2tM6Y9rWya6LX3etWLLmoVUX8895DHsZStAyA8x4HMuPe+c5cMo+upczMZh0Ccx5FA/SYhx
xqo5YIRjK5IXiU0JsHhyL7TBLGXk4Bhri5QEDuS+8ZfrvHZEYoQ/xM5XRUN4VyCvvrScfRwijeWR
ztXvXx2tWZe1HvQBLs0vgmeWjJvV8jR0VE8wInR6yC+Rs5SvT2SxquyrwzgrrZDnbPq1jABKvNuh
egrNfTYjOlbEcHs4gDMC5OKuKS/7SKa+SLZ5xTsvRva5DtRa5Cy1iIjhZj0VruzHsqcdm5OrpQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25DA1F2FE01CBE0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
content-md5: Bo5UDp3UaAzpO5ptdBsPaw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b531c907-b9b2-4db3-9144-ea00dc2b7c27
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-9d5ef9b0-68be-4a1e-84f3-62697cba4b76/test-blob-9ea64887-ac0a-4b38-cfef-736b84d3d3c4

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
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x25DA1F2FE01CBE0"
content-md5: Bo5UDp3UaAzpO5ptdBsPaw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 139a2a66-2338-40df-b2ab-a808563602ab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:04 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-9d5ef9b0-68be-4a1e-84f3-62697cba4b76/test-blob-9ea64887-ac0a-4b38-cfef-736b84d3d3c4?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 340e6431-a980-1a74-9529-847f715ea800
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25DA1F2FE01CBE0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-lease-id: 340e6431-a980-1a74-9529-847f715ea800
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 08dfbbea-03c9-4f9a-8022-f79d1f85d7aa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-9d5ef9b0-68be-4a1e-84f3-62697cba4b76/test-blob-9ea64887-ac0a-4b38-cfef-736b84d3d3c4?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "0x25DA1F2FE01CBE0"
x-ms-lease-action: renew
x-ms-lease-id: 340e6431-a980-1a74-9529-847f715ea800
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
x-ms-request-id: a29fbd1d-f73c-4c17-b465-665d5575f9de
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:05 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-9d5ef9b0-68be-4a1e-84f3-62697cba4b76?restype=container

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
x-ms-request-id: 9f263a1e-ce93-43a4-a052-ce078c6b5c59
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

