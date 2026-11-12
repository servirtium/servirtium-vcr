## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d3d367c0-6d68-cbb2-3b5f-c757e7a9c2ae?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).StartCopyFromUriAsync_Source_AccessConditions
now: 2026-11-12T00:47:17.0700743+00:00

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
etag: "0x241AD7702D27C60"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a53ad5a9-8862-44ff-b9fa-e03673da0448
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d3d367c0-6d68-cbb2-3b5f-c757e7a9c2ae/test-blob-5164c309-3cd6-8afa-1cc2-247de3bc9486

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
z+GyMJ8GBxhyGUQQUNKjEzuPtDXrbKSEbUi2pkg0537LQIcF95IOArtL3r346TpJHhBBVAhem2M8
LsJXT2HPPTLGRQ9LnRypgLF6n47mjIQNbYc485J1baQkycjPt7Nae6CLMaQq/oH0mNNX5PvUVqI+
SeLZl0qfUNhrJtRU2cn9HyTtW1rg4m4GQ1u/HYioT3MmkG7RgONW7ODLv9etn74KWcTX5/pIXmZz
01Pu4DNPwtdhLkhbLJ5Bl295FCOWWaSdtMPD0Wh43TIHXq2PZwytfPwAS3F1ry0mlk+LzkpD3Hqv
UStvi/Bu6FAWU87wsTBjy5cmlg0yJwWWnTsZ7Q/nw4Ez3xbgPfEMkmIhX1tfNeQeKAOzHUZtfSkm
2e21VftBLpBMvdEago2mGgOqEMiqNmdW+sQLNKY7xmLsumQDVjxn4DDLE3gTBKV1DANCwmxhfKOG
Xls3NfnpEPdvLcgposPHQy+X3yPvQ/Ufliej+QP1iz7BfffhMKs24QKAo9fdTGo/e389yZ1/lhtl
F5/RRhfzeaKKaCXM5RKEYf0gbp8dQkq9Y36DuMGhQebcexgMZJvrjSo1UuNEc5VsuGifXyd7SNVU
FOKYcMHg6Sc/72r6d/xiNOF16O9mefDoFv9ZAeG+YDNCt1C4UxxoVGm8BIMrckBsPSpGBl/m7pry
sFnChudFgI82uMCrqeHEDJOFqnRsvaS+7cO3eFnUXMm2xqPDps6BdoT09LmAwJNJgfnLYEMmhvK0
A5kjjgg1Ylz39eM+AGbFBDPwd8jrPi0wbvZgCPuFkD+wD6M1Xeh7v5JdiMqwCoCTBlwQNQ4qycRr
8yAR1FpgcmWjjvHDkKZLdLg2jbVif2N2zQGedFoxhUbeyWrIauo3/BZlDHyPz3a2xcFW8zsPCXS8
mgdYwf0Lcgir5cY7gwnO/pCf/HLn5/2L6K+Z2pEKzr/1C8/i3zoYWppz4+qvekG3h/WrbwwB1bMK
zNlNcZd2oBYHRXg66x9Vh6LYcwMT3G5t4VOcXl+y9DUc2BJhyugC/EPTqDTJfZvVVehqKWGw9vBr
35BE2kG2VFFCHRMN87y61XbAPzQ5pGS3xgl3SMrTbOEh9upYviIBHVPih1+IyGErr1Pq77e8MTsr
jRM4PwuGbrEy6/3RYhdUvyLgVhwFLv6nS5l36HwqZMSuLDAPyN1HWxitVtxkWU07ljCU3NofJl4U
kfRyD4U1B4Y4IjXnRPZEmPoDV9giQ/FLO1JLlYjqjwXS+jfp1UySeE5VLDYXVFE5T0PfG8+G8k4C
J9Qz6XL+TpMwFUq/W8OucN+JzBe6M+YAEkVFCnQ2Swjp5q54X47bV92j5z8HevSAMarv/CU3SA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2687041102C08C0"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
content-md5: 1jaDTt6k+JvKKFTxt2ic6w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9d5e75b1-fe99-4259-8a21-0b9f70b78211
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d3d367c0-6d68-cbb2-3b5f-c757e7a9c2ae/test-blob-d733edf3-b82d-1e44-fac9-41d675143611

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-d3d367c0-6d68-cbb2-3b5f-c757e7a9c2ae/test-blob-5164c309-3cd6-8afa-1cc2-247de3bc9486
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x271ECB9ECA01E00"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c9b9f1cb-611b-4643-9feb-60b8b37c6917
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-copy-id: 76eeaaa9-d379-4999-907c-74164c7f04d3
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-d3d367c0-6d68-cbb2-3b5f-c757e7a9c2ae?restype=container

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
x-ms-request-id: 181a3a20-b0a3-41ce-ab3d-0895965e8b44
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-3974ad51-4c16-f8a7-9750-c4d8ca464fe2?restype=container

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
etag: "0x202129FEADCA720"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b5609383-e96c-4ef0-b834-8d8bb689e69e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-3974ad51-4c16-f8a7-9750-c4d8ca464fe2/test-blob-8bba9eb2-b62b-9eae-9985-ed76c5a47f6b

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
+5ieTrH9MaZGOz/c9GtUs3lfI9ZZq+aa/9afkV8wMvPRWN0xpwExtGwURO920aouMDn8ZoCoEVCy
BE7aXp9HFQlMCpuOIwt4Lm9pRWb2Iy0rcWElM8xyKUeNf6OyVlbNzS/mKscOoA0thDcQPszqu+Ah
ruw+IeI82eFUAaNoxtgZnHg3D/hmHdFT+K+VYup6osPCkadpjqtMqlHlup9pxb1f96JTs6zoupEb
6ikyp3f22V7gpTUwrw3M6mWngWIy6jLxNmpIJ+8X2tYVTaSCGgLZ7uBAiR+ILkeUh8hGQDku6f/2
QHEMrrJuyMteG2JpSc9jzpKB8WESaQcjtJ8m0Zmd5mSki9mQzEAu0sBUKRPlKj344nKmrPie49dp
6fkSR/cxwTT9xb320gFRUx6hvkD0PYpiLu4n9jlrBagCJuNGHIvIImje52SAAg9xVFna/SWWdatv
sBkJCcr6kr8V9KwdCzeT2JzXFVYl4ivetqHgkQiCa7E312xxvxie5FSkag5jU0kiRySJv19VSc7t
KlMoGgC3koj65TPKIRmDOTEBgHccemNXvUrj+axS4o2ehJTFdcpU7deFaW0WVyULBYUtU8hW0LDv
0Fy21JncqAOlLJ2EvcRmrZOglxH1QWUk1/QmJI7ER7Pk1aRunRg+qcFpcCqIh0fBx6Y1tjmf+Y/2
kv2ktYN04eXqoOgf+BB7Ye1PjNA7m0+sZV3oj5F5RdwVdwsbmfM99Y9Fnudfoc6WulRMT22+u/at
+FAli1FTcFoLCYEEX8j6EZZB9fxoTMOPUtU9LfZuV7sUbaGjGGk+8S6MU5hNkVqMUj3Xfcb5RauM
ljl8FkNknbLF8PEmVvktAwPO2/krQcF6sNu4l9n1Gij1FoEwwdvqKLblh6BoZftDqnrCK2qyYVR3
AWZoqwbYz9XJMEB4/EEo5LJCRbkgEkrfde1fM+++Q7QsuMB1gnyvDLjLnzS7yq04mka3bxubV+8b
iDYZeZzmC+2LTEOAs2E2kjkBVXIWJKs/J5moBtOYkWHRWvlGlpMc5JRHL35puOfkgdzimQJ8BWOL
2VIDPQQa87vir1ho7/ym5XDezvUs1m+xw4X2tvdfVVWWu71BGaePLTzChgiOfJHgPLSRnTZuXgPi
UXp+IzzDg1kD0jQ+ZMzJT6G5ak9mI0b0FnlDzbceJ125XsctEAn//wOviqpcodfoyE6UtPO0fC0z
ig3DgLah5KrXhAYEnD6YumtMt5mcl3SiWwVpinNpBeGZ+ob8O35MDaUAhRzR4ywP/PqIZ8WUlvKY
ISWxOFo2bn4laqK4m37s/6nzmxJX0HfZWo544J4bBWOTYxpZm9RLyReeq3mJV2B8nGgboPrgQQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C094B3887BF580"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
content-md5: rKlojdu8P3Qfa6TVpc2N/w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 31ab889d-2368-4454-8fa3-7557468d8afc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-3974ad51-4c16-f8a7-9750-c4d8ca464fe2/test-blob-ded8ad50-becb-e08d-0965-3e2537639364

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-3974ad51-4c16-f8a7-9750-c4d8ca464fe2/test-blob-8bba9eb2-b62b-9eae-9985-ed76c5a47f6b
x-ms-return-client-request-id: true
x-ms-source-if-modified-since: Wed, 11 Nov 2026 00:47:17 GMT
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23F5B6736368FE0"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2891e9eb-9d4a-4303-8414-6217889d3404
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-copy-id: d4c9c295-c8fb-487d-b3aa-51930fa1c051
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-3974ad51-4c16-f8a7-9750-c4d8ca464fe2?restype=container

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
x-ms-request-id: f7b67553-9c28-40a5-b1f7-68d2785e4c1b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-fbd2a8d4-25b9-4ffe-022e-fc4436ff6468?restype=container

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
etag: "0x1E748CD5F16BCF0"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f3d9ef31-722f-4d83-ab6d-7c5773f7580b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-fbd2a8d4-25b9-4ffe-022e-fc4436ff6468/test-blob-abca22b3-f6c3-0a80-89bd-a2134a312818

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
CANG+CjkiCuviNudwkiqCQDWcRWZ56HeKMdx+4LqBNEF4zsyuGtAzpqe/Dob4khAEpkTdMATfiFi
aNBgc4yoxIQKl94NeFCUlaN7++tmw0V+MOnp148Q8mQaz1Cb31oO9Te2EEppM5pIft4cmIM2/KWK
4UOiv+z0+aV58qgA+bZIbQWzsLL6FfxOoFmx9Fnh5NOqEP0XazZLwRel70DySIQo0yt+gkvzkMxG
VB+TQwVLmA7UVem4MQHOaO+aVSW8XFfViCAuYmGIt4Aw0RYXt30SWVcxHfObb6IpsBpcWDunifjH
vrrkHTatTJ1piF/rt7BxiPvOij5jORl9BbJGK19EiUceT/nDLTwhhNBWMudCPvhq688/2f+5Y4Sg
ZxeDZiE9JP4YzGe3rVu/rAZuDQcyOse53ECPBbBIZex0IsUknR2vGA7oKnGRsz10fyz5SlZ8bixQ
yYrgrh5Oz2d7QouVmw/ovvT5ShBWKCkDGoaDTxqV97SZ09OTz2rvmloJFnGy3+MdEIxhgyQb+qFh
3ZOXyoBN5UrX+8c7VO+KCa+2TBG4UDujZj6ONHSPfdkyMvHWWM/avDAm2+Mb4byc13l0Za2PqIxY
9GRBv7HVR33uCSL+s7Hg3JDgkXVXh4SC8Vz6GxgroolkfmNrmP1/UZRmLdianiTIk4kdrhcXAG3f
v81U2ytlwmaYmTROdUOSYT/h8Vmr6FM3MoeODvNyTX72i9gwKnZoAGpxAQXveh5Fik3XNQ8TM9Z5
HKik1rRzJku2V+lqYjbJefDvOuZOSLhpSIOlmhdv4lcCtg7NxCq2/tu5OSI02ygXDbweJPnwK9Tw
Oo0xzYszR3WSaKwo/LTGODsLlA6VNG1ajo1bUL5dEoo53ImchDBQhfKtonJ77xAHV+u95JbGWgYf
1j/+2Pa2NFYh7iArKrMLuw8c6JH73598U/jTny3zc4GCfK7xUaz79m4cWQDw2y03simHqnJ1JPeg
goX+4pQpLXueqa0FGmliIPEi34Wei3fKnO0DbMkPDVe3Uc8n/RTZ8iuFUTKAMpjAJYmAUkVxAfYO
M0anJcGyj5xVTcmaOyPdSexZGTpESmpUQ0Y/j7oSRU/YGcrOMsxq0sKWKuTPJupmoglZGOi8yejc
UuJ6cgDhQwd5wSFYDxYf70Z3riCFhR1c2eyxuC1mG0/h8d/q71/BtObcVWTIDZPyOSmhRBvIVszF
HpkTMIraEqXSdx02NP/ntvk5qTC4lMtZvn8Exdc0GZsTJdDFroRbAkK/9pZ1uwQpuo4ijqycDIrO
unEL1U3Onl2CIw8uIQd03afu+Z414wN62wpIEorudxlG9/QTUCz08Fg485j1+pmGrbAFrRLsmA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23F7F4ED938B1A0"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
content-md5: 4roRBvALro4HIEah70A2Mw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ca6b4376-f98a-4ed5-8a4f-8997322e53a1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-fbd2a8d4-25b9-4ffe-022e-fc4436ff6468/test-blob-f9906ed6-8542-d38b-93ac-f6e82913618d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-fbd2a8d4-25b9-4ffe-022e-fc4436ff6468/test-blob-abca22b3-f6c3-0a80-89bd-a2134a312818
x-ms-return-client-request-id: true
x-ms-source-if-unmodified-since: Fri, 13 Nov 2026 00:47:17 GMT
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FB297EED6D8920"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b11b25eb-6918-4b1c-b2e4-6a8dece17683
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-copy-id: 27499d4a-5ab9-4cb5-85bf-af5b2f3446d1
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-fbd2a8d4-25b9-4ffe-022e-fc4436ff6468?restype=container

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
x-ms-request-id: b8134191-aa5e-4ea1-abbe-4bb845d69c68
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-4608f97a-f0fc-856a-e171-c164d9e9c906?restype=container

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
etag: "0x2471A5438E58D20"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5662cfd2-6517-4aef-918b-ad02c21d4958
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-4608f97a-f0fc-856a-e171-c164d9e9c906/test-blob-a41d5f5a-32bf-6bb2-cc65-5febfe116f72

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
TCOKtAqmm+UDCxjRwyf5quLwjsr2vM5HRp15l5B/hs8BThi1XhT7tMM3obMa4Keka7UIDoOlfI9V
Q21sLARVhIVJz3UOREzO9NoHvhsaLWb21CzbdndLXNKIYBqmj4e/4hwt0BEylSdoOhqpnr50OhUH
dVfXeQ4O/XOiheMxJ2RSSNv+7F1UxD4Fcjtdob4TFCUFnxkw52gOH9KdjxBDNxK1V1XidU24s7EY
0QfSsFu1j3C9K4hLImBy78yKtjUuwjspp0poMJ/YTetoFxZhPG936P+fhguKaTT1b4WALvx86Q/M
qQgRTF/R5d6c4wpKEbNdE841jzsvnj4Vc8AZVx/v6y4GlJNmZZygzaAs7YYpq17SIxouRlnTnArK
+9met46/rPfcQ3wf960ylcKaArG368hiRjMEwaXUM/iJm2rCAhUSbUCOTWfhsitt/LGXOJlYEw8R
PHFauutRCBCEllxCb5OsiJRxKJ5ggJMIlsX0PPpeMIhbscWkuLNVPERXXBzPKowd6rAE5+pwsLvd
USMlXcsWJWbU577NCM/hHOxaCSR3OWw51lFJWUmd6gAKxmaPL994QTa2+kPOUOLhI8v+FqeXZRi3
7IZ6zMwdNvy9wkFoUuwM4cftwT4oaoZvaDZ9n9RYc2FO10JZ/nRqmMRGEI2heNHe8TXfqaTZj4IA
CmSVn5YoZU/gGnqps+JTgih64Vn4ze9lnq2feMm8dEjAWPMP1fktHqs9wV1WND5SjCd8Xq0oBz11
LwDpieyGI6Ux6VrvRKwvTcKuugyRDmlvTOyhQBWbmFC2mqX4RJW/t524JUvjY0h6TBHqek0w4yGW
ejz/5OOPllAJOKkHNgkt7gJv2ekei+mkJvMEsB4DhraEYspYv9O6KI/72iqecxYIvYtKwQk3eO5T
W73vi+UyBbLzgtM/1C8vtbFaIrC+BrLc+/OTucStTOrbBWQVypypyNR4q/FDyehbGgtX3VU9lVUK
Eo/ynkztRTXpZM/LGuoVsFncRVvBmTIKN564VW6UnXAOCrcMtyqHimW7WWQZkAAhQi37YU/6SXlc
52etNO/GVcZfvA8yCPgvVLv1BkDN8KeelxJBmTsgFME+r8/C2lV19ASeutPx7jo0ywyUBEM4j/e/
D53dhbuLPqdN81gpbHplgBE7LzXTrKjYDM0vjBB+BiDYA8u4mG5IE3wro/viC16SLoQx/F/B62L0
BXjuW7GXz+03UGmurOei8xy5pwmt9QFvnF2MTQnBFxdpw5P2WrfKlNQNqrv144KcjglCB0NZRw93
f79UCoHkdjhRRehUrJll7xM0n0tGebna777/fg/TEHyEf9v3dYlSKTSCo56ZR+Jw3BgwJKjDMA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27434FEEB751E60"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
content-md5: FAgxrtep2H0fG4l9Zk/UJw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7716f706-f806-4b2d-8587-63eea4f1d2c5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-4608f97a-f0fc-856a-e171-c164d9e9c906/test-blob-a41d5f5a-32bf-6bb2-cc65-5febfe116f72

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
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x27434FEEB751E60"
content-md5: FAgxrtep2H0fG4l9Zk/UJw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 523c865f-63ae-41dd-89b3-23dbda030d31
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:17 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-4608f97a-f0fc-856a-e171-c164d9e9c906/test-blob-1a790605-e4c3-29f7-7e35-6cd02dbe6d79

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-4608f97a-f0fc-856a-e171-c164d9e9c906/test-blob-a41d5f5a-32bf-6bb2-cc65-5febfe116f72
x-ms-return-client-request-id: true
x-ms-source-if-match: 0x27434FEEB751E60
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21B4611DB534020"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0b382b08-2d95-4503-a9a9-c0a86c281a35
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-copy-id: a295d3e5-cb76-4ebe-9a15-592f9c0ad6a7
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-4608f97a-f0fc-856a-e171-c164d9e9c906?restype=container

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
x-ms-request-id: 11243d8a-9c7b-4611-9dc7-5dfd8af4329f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-1676e189-d6c4-411b-a8dc-8fa2f6a3ebd4?restype=container

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
etag: "0x235C67354780280"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4e5d49c-d9c1-4c07-a386-fade52494f20
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-1676e189-d6c4-411b-a8dc-8fa2f6a3ebd4/test-blob-f1d54ec0-6efc-448f-3d58-25682d77b5b2

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
b5+mQzKtbC7rOHLnVFUy2kmYD97ofHwaUTHZa7GyEzAm3TNX/KehE+GnBsP7qPDoJkoelWfWyfIi
i/EB1AF8OCVCwHYi296i9vz8QHW4HqlA8ERnk37JUBNANHC1oD/gKs2eueh5xktrfJ5r2Yl9aWxI
wOO8FaWmeG9j4aZt7FW9HBanGmXBxyn5+xbfXXaKwsoDbeBbJBUo90B4FuSk/pBJrr1z1U8Hh/i5
whmOxxv52B/ban91YfgAfyIkSLFFVf2Fla+5F+16++XnoWH7mTAlfz3FyJMR1EzFclYt4z9HdG0c
CDJsP8AxYW6Zjb+WBeXx/slzf4xpdMFi9KWXTRemoC303pD9uT98k2cld0eNLmxwO+V10/Tgs5Rw
CUsbmhRW8+yRoiZU9EWJ9uslRPx61MU4JhEyMM05Eyv8ja/zYflTzoNa+4xGG0ef7NwIu26X9jSG
4nMCJMMfWI76WGaVlpXy0XZ4H9k48gvJkkTwMFi9ZZZ6bX6FUKnAO6L+S8PgClZHFen4HtdbTfBo
OJF+Lig1PfPQGigWbIHMuOM2OqdI6IjuqRpvxUa/Hx+OHRcYQQ16yA3QEO8tMaloK2bzJRNJIFAJ
kIUNxXisEPsIh09ps3bWu3GZd9iYwHhxB5ngzPkMRf3HD7GHbQKVIwD0JKlZ/nfvHGqhr6h3cM8N
m77fy0QB+0JRoaTFTk1uBFPXo5zOFwgh8K+Pa5VVT57hetFEtli88ihnCF3TKs0cM6tUn80zPoS1
vdqUcZCs/FEF49R8Kk37G7BzZw+rTcbiczjpAa/RrTtNjvh9J4GYugsLzUf5oAhdWIQcwNd0Cm8U
sv5YwvuhNDWYLptVffMv2qwDoH9+6dMvi6grtO1k2IOIaHWCQPcPaZkRYHFtCNqQ7OUqcGrwlcgq
KDZTdn9INFYXzBV+rJq09DbmbYhiwoPNm8cHOWcZmNOsWBfBvPMaySwbVTvFEUBLdnwzCShAyGaz
hdq3QPru/jRB0VSC8zdDzKRcRmxHCImHvMPr5o6qbI+xDTcYYogxLVcHg0DryIJF7z2D44H5a31Q
L4Q3Axell2TE0eUAK2kbKxkVQIRIm/NBpvZRJokOt6K5xzIE+ik/YuzcJ/edRMTUaLhn5Cv4CJSR
9l0hVHDbthpDRmM2FzDv1d6YbHT7o2Eyfb7QptJ3wb+ecgTMHg58AHDcWf1gnVCHdw5MYJsflVL7
7taxCg9Hy4WkmKQsI7bPG2wDH0pj0t9tSS/DKmAkftyy0TA3y/VhlI54uwWrW1RYfEUvHHYImBz3
Q8HghKElgBnIelGGmFB2ooq76xbawu7aa60b9GJmqjkTQIc0gRDtUzvr4+AC0eT0uHnsTKwFHA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23E04ACDE2C6760"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
content-md5: ajDPPDbqQAipfNjdxZzUYA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 30be0e22-502b-4805-bac7-b09973fb0ea7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-1676e189-d6c4-411b-a8dc-8fa2f6a3ebd4/test-blob-1805d381-09f3-b68b-61cf-187258c84221

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-1676e189-d6c4-411b-a8dc-8fa2f6a3ebd4/test-blob-f1d54ec0-6efc-448f-3d58-25682d77b5b2
x-ms-return-client-request-id: true
x-ms-source-if-none-match: "garbage"
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F757E7BD5A8580"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0258c076-6f4e-412a-b1e8-4e22369df057
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-copy-id: 4c36b49b-0749-45a6-b418-de1cd837bd13
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-1676e189-d6c4-411b-a8dc-8fa2f6a3ebd4?restype=container

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
x-ms-request-id: 9c1a3b9a-6c63-4204-b124-6bc325f91bc1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

