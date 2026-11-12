## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9e665f95-5bde-0266-eb6b-8c09b040b290?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).BreakLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:47:33.8660784+00:00

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
etag: "0x1CD0B560BF8F010"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2bf9c32b-fc9e-4b58-96d5-dad5511da281
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9e665f95-5bde-0266-eb6b-8c09b040b290/test-blob-efd40ec0-883a-83c9-e1a6-ba9c9fe1fd0a

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
LkzmIHps6QJ1W7A9s2DhP1ZJi9rY3+wMleK8OKDKYwltgdpjWpEWUyTSet7Xi8+BxHpFVVYjMk5f
2YuXsLFhq/em0DKFfuXFMje1BWUNNQkTOnMlhA2zSU6LA4EGf6Nycc7mMLud+0aVgCMfbS3pUqOB
hHU9Oyfq84bj+XpjvrOTQ5OWJgVOdT8tjwTqlNwhorHdhPstNTWn/Dw0uQHLMcFviyqZUyueMw42
EKsi/16qwlfJhjq4Zg1e7irIGbs9YV5Cegmxh0+GP1Hs9ySJhPzeiveqAquHtyUcO2QA1RpT+a9N
34VV+ToIQkfpy27p1Wkt6o/Dkl6yu8PklEzqhWk2mf51O6V3iJC9osBkney2M2X70uuLj2ZRmyTB
cWTtHbzdsjFwc5nEtmL+BvCdTh3XLWDm77N+qwqYJKCAtRYsz4QDhuu6Rb/MNhyJjIl1s0wG6kMD
Bi4JXwYn2E/4QwBL0jZsmsgyHOihGriX9B+AInBUesvTKMlV+ibkkmxv0/IbPrpSCBmD081bYux1
cmvnp7XfpMk1d6ltFp+iTop7MUbGe7ZkLhpX0Kf9eMbc4Ie7/Ou2kC4p5cYR5fF54YVD3zClr/a0
g3mbiNQiN//jkDYX51GexaEXnJXwU0go3e4hupmVNjCRBnlyGgdaB67GLVS7Yfo0pBmPjRJgwzAw
c6rlAH1mTloGhuDXLKqZvZXnKiX0bXv07RZ/BqgdMENJQqdddAYwX9/6tNsaXHdv9dB9eZkKOwYv
8RNn50ix6FWcjeoDPEiOtspG+rif2ZCeDxDYoLeqPwagLYPzyXiXSMyFfc6NbLmH7sLOxEFOjxiD
yNc32Uid8k7kYg7Fm+1RrrHsGVvBEaNWULH123vEUZ5qcAGgX2+D6IuAqQmrwVPVfRWPYnW8wbY0
4YiWqBfTHxFvWivrsU9CaDHQQGiZq49eIF5mNe8prq5KbH7n7D90rYr4O2Yn6cvFTfpD7IBOmjb4
OIi4bekhRqx8oUTRWnvyW5PeoW8oNjaSoOj15cIt+9FH7rS3u0Cg1vS6qkiH9PJ+UJDtcPjG0AFR
JswBLGDqT6VziWzHO6BTPst6bYvuC6v1dpQxQIvYgB2yZpRznqmU0FujFGuFthXwmTItTGJ1Yhsh
DLXMuA4ZmghOFdQL358i5p0vS/dAb8B+QaZZqzS7PAN5UpLzyBdNinliNqFB5LqSC2XFRRck4Zz1
TXZnv+7Uk9jRkY0NLh6F4sF93TkePVzsx6DO9fbrVXH2/nqg5cqLjqLIb1IshNxHP2NWpwNi1g8a
e/hOBZ3i5TwcFzCj5Pz28k6WVs4JwELEh7aTlK1tkydrhmrRPIkF5okWEG2so1pmX7W1zIBBEA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D52F72C35B2520"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
content-md5: JpmpoNaRo5HcFS7KBVTXrg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 05a6554c-df59-4250-a1b6-0116b1a222a4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-9e665f95-5bde-0266-eb6b-8c09b040b290/test-blob-efd40ec0-883a-83c9-e1a6-ba9c9fe1fd0a?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 7e8ab6bb-4fe7-8e51-af84-08375e9225b5
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D52F72C35B2520"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-lease-id: 7e8ab6bb-4fe7-8e51-af84-08375e9225b5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af9354bb-9a06-4732-aaca-9436f6197124
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-9e665f95-5bde-0266-eb6b-8c09b040b290/test-blob-efd40ec0-883a-83c9-e1a6-ba9c9fe1fd0a?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-Modified-Since: Fri, 13 Nov 2026 00:47:33 GMT
x-ms-lease-action: break
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
x-ms-request-id: b1ed33fa-45c9-4ed1-a58d-d9b4eb16bdcc
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:33 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-9e665f95-5bde-0266-eb6b-8c09b040b290?restype=container

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
x-ms-request-id: 334d42ba-4c20-487b-8f29-11232002931d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-447091c5-aff3-18d4-e35c-2c34f8b7c6a7?restype=container

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
etag: "0x26A2DCD4B9474E0"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3fff49b0-f035-41ff-b3f0-4c6714ac5922
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-447091c5-aff3-18d4-e35c-2c34f8b7c6a7/test-blob-1baf752a-0ab2-961d-3887-60e9a36bfcd4

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
Ov/vOxD8HQvhcZqKIhyV971hDejiCQK6c9kMa0/qdHdgWPn5yIuXLlikOUBwknQc8WkrQV4T8TH9
NMc28LG89v0jKsoinC4yyd6PPs/BSuBl8HrlvzIZTGbI+5PDYD6n6EJDTWip+VQ6+Xh/hLNhO+rn
0QA31jfKCt5jWaGbbmmg6FaNfv14u/YlqsW6mcizZ8Cp3I4+cBELeUOKRZ+zn4sO3pxc1L3sbxYJ
EStyD3AWr/Lg8pLbYndEggS67nVWcgs6rLosVpMCvG13NF7lmGnSdJat0q34M3wkGFG4MoGhs58g
OGO26llf3TUlYy4ZXumb6HnfqZ9eQXg+Bz5BSonr1oC/xWAGHIo8TfR309BOCrloHUoHwQr/wfbq
d+IaHpOrOYytWZmJlMvvolur5m6o8P2F2C0/5BR2vwNpHKSnIi9hy5lDoLEf3oh+Fx+vVNqHQYfk
lEVmbFR3NpmVH3gnR38rShvUZE9MZfqkwc31x2so4docw47p+19FzGoXir4QVs+fgwq/st04mC5L
waqGgm8ubD6dC4TxQk+7j5jlNNs7lGv+VURhaS795Cpfnjm1vkn66B2AcktKrkC7BCNEUmNSEC0/
iCwqzQMPoCdakaQVBtFO6ky+uiEftKcDpmULuJHGDI0MdTYd0BsacdEj7xycpf1R9WgXlFULH9OF
JyaeA+eVlIUWCJGbMRoxo0hQ+8WKZwBnucMprnc3AVVil6n0fG3pjlqXhpxstsRO5vEMuiMO+8Am
NkkkbOYN3gc7OZlxPCfbZm1q8+Bk+wP+2siGK0YyU5zozkUkxSF0iaeVMX0q3KnJMVS2pAffwTtG
JpEeh7PACeb9iG7htqFM9mo5z8mG0/4evPnye66VCQwK3p+PVgL01CiWLVQ76Huzaa6dpfJxv1KT
/8q6zo03aH5h19gCvJ9nRfqh76Wp4tR+PxIA92MZmB5M/FY3OgWaX8XW2hCisa0ONWD30NCs6h31
O497N3AaRz65tcBJLwr1BpDg0wjD245k8sEDIchOnxI5Qv52HyhVu5LS6PvtxAVWAslAzBYUMWAB
FkWuFyV2axWuEO0Mfudnixd28fKSdi27rR//DtP7JBCddQjjpqNsXH3lP7QYSYTi2EH+nj9tbp8X
82oGd11CsuvcbgnehOR0CZV1rTd4o2OaHDWS/IXRLwZoy7M5ZeUfo4zIPNp6BFNcipWq+MFonk8H
bFonr7ZmCz4DdbkxOqSwVQmqsGaIIBjiNnHwJjdEACxjMvmK+PPWYjCcd4+aKk/x+aO4ve7pfktC
RXlEdeQHvnSMzgiqJVwW1E027KiJRwsi/yyTjEI9erOtSLN6kuxMlLgaDVtGRtRGoemhspKiuQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D072D8221E0440"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
content-md5: mN+09ywI6c2W77WfpZKAFA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 80401dcc-0d07-43b5-93dd-c8f0ac16a789
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-447091c5-aff3-18d4-e35c-2c34f8b7c6a7/test-blob-1baf752a-0ab2-961d-3887-60e9a36bfcd4?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 76216dfd-73b8-3132-4f54-55fcdda99c42
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D072D8221E0440"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-lease-id: 76216dfd-73b8-3132-4f54-55fcdda99c42
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96e35711-5b09-4fd7-b75c-d96064690333
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-447091c5-aff3-18d4-e35c-2c34f8b7c6a7/test-blob-1baf752a-0ab2-961d-3887-60e9a36bfcd4?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Unmodified-Since: Wed, 11 Nov 2026 00:47:33 GMT
x-ms-lease-action: break
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
x-ms-request-id: 9c027dc5-f8c5-4e9f-a695-3f9fff6995d0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:34 GMT
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

## Interaction 9: DELETE /devstoreaccount1/test-container-447091c5-aff3-18d4-e35c-2c34f8b7c6a7?restype=container

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
x-ms-request-id: b6d0d35e-ba1f-4626-8abd-23edeb17dd08
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-f057ea60-3a6e-dbb0-b858-4cea599bc721?restype=container

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
etag: "0x21314E70E4BF880"
last-modified: Thu, 12 Nov 2026 00:47:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9cce8fa8-e422-4612-ad38-1782643fe130
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-f057ea60-3a6e-dbb0-b858-4cea599bc721/test-blob-0cb68f0a-7670-2093-85e8-be07f149f69d

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
BadAyDqySsK9Rr1fJ0fYs40z8k7yj9LqVjdqhnup6m9hr+SyW/7nWETzTym5NPk9EAt5vVeoqnbV
VnIDR8NHFFxO/XhjJViPTJkJ/0CoMSE9LHZwLywXuQRu3QSL4xGArDvNajaB2uqz6nG+nqs2LCVQ
xRpN1uQvNkR09UhTA2iIiFIF2sbru1KLvUW6WRpYN7DfOx32M9ZWnTTyDeSiX+cINRZZMFJfZQrI
whifdd0pG72XdMdKkVV8rjyR+K5t6V1dsiME/wZdf9UTLnC9tyhXyfEnCusfvaPB3IIWzWxbWti7
QcK5JRy2OvTxN2Pkv/YTOi+8Rt9yPvR/QiKER7JpuNOYAnZmnaTVcND3LYZA3B2MApI9nxP5SALN
OuL6MvJCiH+PTLx/rZ2L59UPehFuPmUE90UfKxm/n7lzmGLB2j7dtaQHsJBgDFT1src+6c7xX/t8
9TqsIl1mz6wDCxU6yQyXMcVsZo7UpOvxKXlhgbXrgjhnReUDMJJHoeHkXQA+uumqprcIhfhtp1FP
u/njBE33GInd04MnlAEzJMWs8Ebrsm+Pttv+4vw/+Z6UtHSZY5yT7UV2YeZlgxG21WAzwLYKZAmJ
U01x+DaMndnlkuCMmcEoGQMBdFCIKjPKRwycDDnniVBrDw9PIfQP6cQNgPAxKjyfCqezCe+5ASka
p7Ep8JCg/gmPIYqx2fcP8oqMe6lCmB3Q/AGRNIBgsQ3lNHlC5fkzbILnoQix7jGvoxdlLIaA2A+U
WfOODsmJL298y6R9zA2RWA4nWvYUHg7Q4pBp+4WHZVxqrosFpF64XnKZNSKMMdcK1NN3WH0Yfzvk
viw5HzTq9WVHEx2Bi7Swb/uEe+jrQ7C4XiexDwzfUi9QIOYxfj4+rkC9RR65iEgfx+mBkwNS+Xp8
gMAMOeVYaMHuMGrNfvC8RsyoLv6R/9bekUgiXb4r/idstf19MXVaZNxdy1jdUUj5xEw3qcp76oHq
LqedNgsCwjJCYcnyPxVWTsohMzR9AED/KZhx9FRd8Mt8kgPOvS7RWwglmu9/BoU34FsAWbZMbC1n
ngxykM7d5XH+dqwSh5CbUNgsWGVQfyISOhP5XJYULybVZx8hXss5SLV+gZDZJFjKZAneIBTHFh7p
X1W644nb6UaGPCBxevEN8g+w0v6SORW6L/iMNQ4RDlAAN/51fmQsopdJU+g4WOoY0S4FFkQfViZA
ALSRTrQ4dC7QcULymHOqhC9nSeYtgtYNdGTfC/cL4eHYNX6wm1TjEN65Z+enJTi7WpIVuAxAEn3d
g9lPWGg2xI9hGmP0+unbhDkHcxrvZU8rJLFl9inUmCIA0hd6k7h1g6NXRgvVxl+oOTTTOJ9j7g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CEB3AA7AFF7240"
last-modified: Thu, 12 Nov 2026 00:47:34 GMT
content-md5: 6/oGnBL9sIDbuIb2+Ncqhw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 35171012-9ccf-4c6c-ba3e-74b26fa8f7f0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-f057ea60-3a6e-dbb0-b858-4cea599bc721/test-blob-0cb68f0a-7670-2093-85e8-be07f149f69d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 33238a1d-d1b7-66cd-8c82-40f428d160f0
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CEB3AA7AFF7240"
last-modified: Thu, 12 Nov 2026 00:47:34 GMT
x-ms-lease-id: 33238a1d-d1b7-66cd-8c82-40f428d160f0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 880aa9a0-018e-4915-9280-676558ce09e4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-f057ea60-3a6e-dbb0-b858-4cea599bc721/test-blob-0cb68f0a-7670-2093-85e8-be07f149f69d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Match: "garbage"
x-ms-lease-action: break
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
x-ms-request-id: 11115ce0-a197-4328-9d81-faedd882bdf7
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:34 GMT
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

## Interaction 14: DELETE /devstoreaccount1/test-container-f057ea60-3a6e-dbb0-b858-4cea599bc721?restype=container

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
x-ms-request-id: bd14765f-f685-4fac-b884-caeb70613e46
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-77f09280-1f97-5543-5d52-bcbcf5005f83?restype=container

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
etag: "0x256CE0A0FF18F60"
last-modified: Thu, 12 Nov 2026 00:47:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1f173d19-d221-4269-90c3-edad137a3bb6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-77f09280-1f97-5543-5d52-bcbcf5005f83/test-blob-effae39d-8470-b1be-d5f1-b98995d236d7

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
2ENTpq7rVv1GzdZkFRFwjCK9VkXWcYD81D+ipmW6wIsb5eOxrbjUsoz8qKKuWZzDgC1m13zxAGfD
VtJvSLCYjA1LSTAtv99p6aS42sjeTXqi3iU4U+gOKuR87lbmZGnbZByVYxBrlsFN/e7XOCWf5QhX
zGqLXzgkPB9LsNGIg4Q73HarSepqN0dj6lb5N/G+3AhNj5f+UATjcCbxIOXwxHpqnFyv85we7JUi
J3XhKgUtjNTIO/PsPIxxx9jDeRZhcyXcj5qUD+lsL6IC3CiPAUUhw5MRJ4mGfV/PPivDWnN+wLNP
BZtqmH3qWwxR6mBj4saSobaDT0ucVhE6xNC9qNQugxt0P/yqtyoWJ8x8NJP/bFtlMbi8+3Fosq6J
L9OsLbM4ImZF76LJ5+qMbCh/HyJ9O1h0V3cbcoepDI1NIYdWafoYRBEtuX25nEnOMI5I6JKMC/R7
N9U8HLDem+IUe8ZiNQMuZ9sQUIHbu7stTUH5YSP6wRWT2zEk3ChgTh6apCCDa/qLGoG3e7tyn3wZ
Ds5u5Tq+Grmwz1rRCYqysAFjQBaaquJGbUeiQ0ZaITu0C85a8Wnj24pn0puguRD3BMu5Dl5mfmPr
KHjzHNdzVa0fHf68WL6YgGWMM9dGprM2qz57oRPcTo1rbsnx8L6z833ugJwSOqsNIY752kqLpIHE
vHGY+LOaQ89xUer0po+m2EBaWCUWJHCTboCF4nNC38lHLDNNG/vJUz3NoenBGHr+UwEKMEtcrpgB
BIozFWBbLnEgrHpcWL1FkAXnSIOG0lUFh49xOK5+636bSxZwlj7dcnJ4oGsAofpDxaBGdGUVezI0
LY7R6fbCosH7wAyn1PnHCtYQDTHpBeWULXMON3YYhtDkPGmvDIh8tv6qBOHtnPCmf2qPBW0ASiep
PLuCtGpK4jo8w5eQF/1Nk1cyPwAEp5GCZ7gLiYFj4/FBBs/M+QKTXyKmsdlZFWhsQnEWzQonpJQq
AEyyP1m52d+mTxAtgJlVn+DeXfa3KVJQn0YPTBXmGmE7ovm14SDI7dj5s8ZXPsLYwS4qSEeec9f6
Yp8TqYzKvzWu8t6fn73AFm8dvXaL+GCEN4vmvNEanC8iu3+AtURML/ORqUvkOCFxaTLYgbVhbmk/
jnIA4wJjlFaufeM+QGEq0Y2C+k8UoP5qdVOfQRt5wE0VQCbSS0zwLhT1Nbo+MijQra8n3nQaK+5z
lm2vw1I7Nb2WKAA6WIVBkcw6HmtEK0Iqz5RrUuHZ+hU4X7XfQWrCugD9qAkolVQp5k2n4AyDLmoq
hfS+z+LbvC7qAvnQYVBheGRqRoM4ATk/QmuUMRoJtTBLtbt2A+odIuvbPpNbWYT9RmenGOjm8Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x265E02D2E1D37A0"
last-modified: Thu, 12 Nov 2026 00:47:34 GMT
content-md5: DXRnPNr4j2yyNlT8F+pxIQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0660a851-c4b5-4b69-a468-14cc2f119120
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-77f09280-1f97-5543-5d52-bcbcf5005f83/test-blob-effae39d-8470-b1be-d5f1-b98995d236d7

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
last-modified: Thu, 12 Nov 2026 00:47:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:34 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x265E02D2E1D37A0"
content-md5: DXRnPNr4j2yyNlT8F+pxIQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6f8d0f14-57f3-4afa-a249-20ac9baeadd6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:34 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-77f09280-1f97-5543-5d52-bcbcf5005f83/test-blob-effae39d-8470-b1be-d5f1-b98995d236d7?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 8c7fbb84-4676-138b-e14d-c985ac94eb75
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x265E02D2E1D37A0"
last-modified: Thu, 12 Nov 2026 00:47:34 GMT
x-ms-lease-id: 8c7fbb84-4676-138b-e14d-c985ac94eb75
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 823adbc3-8e41-4af7-9b17-474301145a82
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-77f09280-1f97-5543-5d52-bcbcf5005f83/test-blob-effae39d-8470-b1be-d5f1-b98995d236d7?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "0x265E02D2E1D37A0"
x-ms-lease-action: break
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
x-ms-request-id: 377582b2-b426-453a-bb6f-322204f5d898
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:34 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-77f09280-1f97-5543-5d52-bcbcf5005f83?restype=container

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
x-ms-request-id: a12d6b82-df94-44dd-8c54-dd22c842dd4d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

