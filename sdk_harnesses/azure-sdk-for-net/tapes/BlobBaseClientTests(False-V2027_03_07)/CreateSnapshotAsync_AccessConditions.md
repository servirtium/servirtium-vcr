## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d816372d-b9d8-7c21-9ef1-e20e19167b8c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).CreateSnapshotAsync_AccessConditions
now: 2026-11-12T00:46:24.6153240+00:00

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
etag: "0x1DC97DF155DD4D0"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1d190159-6771-4210-80e2-a0a6e0e0963e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d816372d-b9d8-7c21-9ef1-e20e19167b8c/test-blob-1338d470-f676-a636-3880-69adf36e9043

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
KNO8CeYDeol6rBt42h9lvyewtP2e6iI3AHCgWE90iC9hn+ZFWnKmbFmumcnbvswYGqqFQ7qSpT6x
hQh1YyE6BiTrFzs4H2W1Ckej8FFYW0Kkhz2l7kV1zvmolNRqMAk4c5Kl76aQ3/tE0Dhy77XsWCrF
0dvjlRfedkhBkIuRSto9a3y+s2ybE6dCYR4NAt9EuzuqpF4uVN57xnheT09wsoVeNIM4LqW+Kb4z
oTT40XRp/NRP56V7DxeeQu3zPcNY0q6Zrs1cC4yW7Hqg+rOqgvQE9VJ7IMvf4yVsmuu4yuz6286G
XyKmDfFHuPor2hRj88D47khw3bHiucuo73Gh3iGOpR/kJCPSXehhM2fQtAgQCKYrv9ykif0co6VX
/h2AptrZnTX1f8+dJpBgD6lKEQXDl+fKdR5F6hshx4B9e1/K4Y2N9xfTG4nWjplLQ3pU0pKgk2c1
tTC7k7MZ07dPIKsxlS4cvBnu8Hxe8+eF+qahzfTu3Of4lCtc0WNkuUfRh27uGa5MNxV4sqPq18FJ
NpkMeAbCYEPDOQACwOu1iTY0jGx4luD3VZbedSpEDbxqEprKV0FBDyYqKt+tSXYqwihstktV0Z+4
FSJv4+sZfyxEmK5Q6zL1831FTWwBSgsftLMB11dxFEH7EUIe0Ss7EaqzabHI2db1d8POD4Mzt8oX
UC83F6jV0oNsVdnw1iFRCjzBTeBZVtrcC2CTogW+x1p3B4H8A/kC3pYuW4T9BaGhfAVGcWnpvflU
WwtIQS99ro1/eM6gVQZCv29KK/pW3wa+8ib/d1bwjUqHp6juupxmsK32fYzTACf+BLH6n5H//nwF
iU4JfjY2juqDGa1eVAXT43pNX2F56/H+AXOl9u65iKgr6TBNXTJ2v++hT+d5n6+sJ7sWsZ8ai51d
CnzDkZf8ypEEM2vUhYZI1p9x2JwKhWHD+M8yotYJEF6T8FK1sy1XpYVWdGxE16E1ztv/qLIBUoUb
/5nIyii6+yINQZQzkiNyGjMWtBD1fyEt/NP7CmerkZ3MmrOUj9pcm3lKN5YNATy4jY5/6p51JYB3
ms1Uv/C6YbD2Z/dv3YtYuhmWqkeLIPqXQn3ZK6b/V3QzHPQNCNuJkNXmFppESK8DJzCF3ns47HrS
vXxz4DYJ9w+CO8CWS7E9DRpypAlfUvnN1gR2enj5+zB6OkpeFq+f3B+KwQ3ubNt+R9FgxUdwcmqD
pQoxk32XiUCQHBFm3/dq08jp1JDs32ko9zKnmDXoCcfg23CkbUmi8zjNXlDKF2jZ9fJ/h53Zlsag
CZtK7/AKqBJJhgSGxWZ+RuFYH4AZXd/JzaJDaIIpBkSqBGSuWARIwrU9gZFkUzCMAUC8gXZFhw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2007758EAF7FD80"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
content-md5: iqAT5JSOXMjevBrpXw+TyQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 22cdfac0-1326-41b7-af20-4c2b5d043d5e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d816372d-b9d8-7c21-9ef1-e20e19167b8c/test-blob-1338d470-f676-a636-3880-69adf36e9043?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:46:24.6850000Z
etag: "0x2007758EAF7FD80"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7ef7a38a-771b-45e6-9dd2-1d88f9fbdaef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-d816372d-b9d8-7c21-9ef1-e20e19167b8c?restype=container

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
x-ms-request-id: 5e453763-cd5e-48f2-9349-f8b9b5e00bcb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-2180bcab-c74d-9040-2080-bfdbc102d0ee?restype=container

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
etag: "0x25FE06C479CB840"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8207fc1e-69e8-46c2-8d4e-7af6f6d1ef74
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-2180bcab-c74d-9040-2080-bfdbc102d0ee/test-blob-ca5d0fdd-dcdb-654e-7a72-b766426c84cd

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
ZXy48dfi+/p1rWAQpXduiTFR33IZeqvObhun2hDZTrP88XZFSd4X+xRiVC57PcADBC018I0Rs+rR
6oO7OiDqnF+tFLMBKEBSOeRetyV8UjBapNXio10m6j2LdF9aW8Dzd7jPzikMAdvt47aos/zEVJdT
YJZLB/kBhyl2drTh+N4kaz9trYMHTqL69cCmfTdAxiDHB/opqHC+zkf/losmC+vYhEi8VqYTTBL0
UBE5WgnyNa+UGvDj+sPPr988B7gW0+nUzvjvhG95s7roNFdfhXM+DWDckvH69YmF7afH10Ra3X0n
ZIwQA7E/G2Y2+8Vrbypr/vpXOkD42tlvaZbIsdt2jVfZNyDnLQmvnHaKxPrEGX19XNlKA6M8L4mz
oZkbd2qKwG1ukjgJhNDxqJ3KbRbeq1AYSlUCK4qznAiXM4xvlCUMAAOMVYZFdNcIWVsFcsJy1PZI
AiwUiJTju/YwclBEgRR4vW0SUlXK09Z9+tIvrilGJF+VJ5H493dvqZqQFQGHw9hGjLVUX4Kgfi9W
l43CswzM6k3xr1qCgMX1o6i7Ob7U9jb66CFz8cTd9KhioWDprfWNwyqzlhR+xAvwX7zZ5UVwgaFW
x8vrWPiJE7qxH95lC/azLXWTIGAifCMVg5EIBA9j8R++kuUpomsyKoJZzKQsilPGJbfP3WFBNEun
1dRmgQ+qTi6/pngQiYsKYfbdyK9+6Pk+Qd5YkxS+fV6Zgc2Wy6hzr312beTbtZwrxHxqY2ucKezb
KD8wUroaACgadwe+dJZNahkxCHoUY4xCLM6XUxry/VjguqJpQlzDXG27wT6UbVDmHflSaiBxx8Wz
7SbrgqwOJ3mv3bnz5Ce9bqwNWKFNrr59sTYhoJI4b/PctVQ219nArZrE5ZCX8jnRlPx0Y24jZT9n
bdB27Ibndm7GFi7ShpfSTKsHiMgu5r/9TwyWxAuFuU8VzmkJSsET3W4i0dwL/w1loRfCHN12OYcR
eJx6ULJiQF3evbgtyQHq86taDBXj8lD+MSL0wp1ynpXi99EkmY27v5B+LEFVN9cV2CgyHC1xLoZL
fB+Qbn7Aax4iStEvxVkdnkyFZMUPqPlK3ul0QIJocclK2B1uK1ARvsEiMu0F5RPOFH3g68rBPNMl
RZCVSyqcutkI5Ow8r3P7dKUD7HUMRPjWpiwEiIX+iZtKSOXAfHOWhncT/QAmkmQK5HckvlBdGAGX
vqT+mDJUCVtR8WeNO/cxbWb9+Uf3sBTI+aMN2stL7C/kKL3PmO1FvvOk1KD9fKiA81DqYB+5nw6Q
NZ6ORy+QBQU3qRI5YtR4uDpUUttzy3z6jed6YIwQKomvPmJOtnfDFM+axdOWRpB8cqflZUwyHA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F2F6B10B1D47E0"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
content-md5: 4KYKPbyurYEcfFY9ulGyHg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 077a3972-ebac-41a3-bc11-ebacedca7c8c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-2180bcab-c74d-9040-2080-bfdbc102d0ee/test-blob-ca5d0fdd-dcdb-654e-7a72-b766426c84cd?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:46:24 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:46:24.7540000Z
etag: "0x1F2F6B10B1D47E0"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8f3c9ef4-3c8c-4611-820d-5632ded8013b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-2180bcab-c74d-9040-2080-bfdbc102d0ee?restype=container

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
x-ms-request-id: c826074f-92be-4bb7-8073-698e1f286f09
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-ba94226a-1648-79a5-267e-898a23712901?restype=container

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
etag: "0x1C5A1459318DDF0"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6ba35b89-10fb-4585-b6eb-43e82fa018c5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-ba94226a-1648-79a5-267e-898a23712901/test-blob-0c3e90c2-05d9-64a8-4656-fdeee42bc53c

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
fSL3LCK9e/0qIZ5VDbxsCkilItUOJkJleS9z8Ri2lfu4TA0Aev3fBRVA4rhmU1eK6fOmPgnwLlbf
krPySYnkc4yjnMCva5BKxhzAzUSK/ibY6QclEFbyyB62IehJ7LuLW24rw7aW235iW3jsL2ESVJON
GmCBv2M1sNSi+EqoAdlhNHHVXztvQg6JwrTdBpi9pMxUvNJaCpwL9RPh9OIzulqfivvvPPVYHddS
9/yuWKo75FR+U0UGBirUymkojU0rVgdaPnudzWfW/J77CBKgXJ1opg+NtGcUmITRG3KML4+KJqD0
VBkunhftqFamC/4XNG3Lv+c+naGgRaX3zLL0ScwOcOFxqwiEOgj4oAwQbo2GueYFwXCoS4j/VA50
N9Fk+F6JmJocpYlkR4TeRf2Uj9cXcRLL74hcZiRYclb6EAM2k6euhtXzaRRdoHrrygaLasQ2XMa/
mQnWLTJ1xDMyajeBp7JV5ggBJAj+bk4NcJwezQiSw7M9dvqe11mjfaTgKjZCaiJTNYO8NDe9wSq6
yLyWVvcroKaDRDG4tw+vXqdjHUMYywZ5y5eE1Y58f7XP4w6cDSattYqPvyXxmn50DNaQWqTmov22
HItfpsoYB8V76dMAElGAtWe5iQvhiDAZEMm47CQQ6EER5vCbTg6/d7hfdbGqdPqFD6U8LRjx1ZNb
RZYBXxqhagCS7ixg5WdZ+RJTgRN+b5zOM9x/1LsoHxFdQAh3vhedvgqwF4XOJCo+4zMGnlN/3Nb6
Mys+IpZFas8aAqVe4Tv6tcMJzVcWAA6yQPGHIoG+3WMxfYvrXptza622syKF3wL3C+iPdg5+4zId
jOGlvkdOXCRBLGOwDlYnlWKqYEzsLWHukBaYLmdVs5lYztK6zq1laFf9Q7KeRvyRaOCs1IPmMF5/
ti4xtS687HnKWD+EbMe1Rfj17umuUEkZBsWHqd4VcZ1zOhd/NLIoQFc50+68DfsY9o+K8UJ10WXk
F69oNUKatOaiEDGwNhBFzK2SdX1bXPjJbrJPioBb/mmxmhwDvwsUnh8HGv3JaMB+RSSU41voibq2
nsaQSilmRhHI/pv0Qg2hfdZeU0H7AAby0UVbxhsNyRBhTSBFhFT1oNPrAWokiQIX8mWFijZ5up6/
nXnjC4D2ujSLkvTsXPiCaLNuD/6czkdCRNO1iD7a6JKBhebaEZVT9Uc1mPYNKpZsAyGCC6qgI88x
oMatQDH1sKpiatcSp1cdGxq2ZjVQNBk9SIUdV93n4WEWqXDOpbQVP+hMq8C+WlvKZfCQ6r2a4Wut
cPis2FnNeol1+/7mTnVloCdMBIlZfu0pUvLtV/ake8cEITW8aGaPfzE2SF5d5BZ6KkmWTdziUw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2705CDF5342EE80"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
content-md5: 7rU+2uwekCrDfCMYB+HzmA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 59c64eba-ba5e-46f3-af41-3a43d9fe441a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-ba94226a-1648-79a5-267e-898a23712901/test-blob-0c3e90c2-05d9-64a8-4656-fdeee42bc53c?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:46:24 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:46:24.8200000Z
etag: "0x2705CDF5342EE80"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cfdf15a8-dbd4-4efe-a454-010fd11c666a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-ba94226a-1648-79a5-267e-898a23712901?restype=container

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
x-ms-request-id: e885726a-7a3d-490d-a19a-d7ae24fbc5e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-86830af1-df66-9223-d17f-36e12c40a938?restype=container

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
etag: "0x20ABC8F5D974E00"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9da2efa1-8211-416e-b4a9-b3762d677589
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-86830af1-df66-9223-d17f-36e12c40a938/test-blob-5784bdc0-3523-cb8f-6edb-722cad0e2eeb

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
Is5DseTgKJ8No3ffJgPqOoAQ1Y9YijC8e7cYi2325cJRS79e/PhT35XlSX+9r6Rr8TisnDiekped
hjYtyJwyF760jdtDiz2Ivfb6ckCx/ssSrJo1SkiKs7gnwHbBJhb5szLACCLJJ2X6I99CoyBW7Idq
GhsC/cx2KtkjHMrHxpffAL8O8PaoSYU0OiZoSA+X0dTuVgv797ZlSt5IpguaMl1HYqNhSPuRwtCV
zcKlDeLJi0r22W+L5AkIqKYXYKN6mQfJIOZsNonYXJQ7ZSrzwDz7fhrApFntvH2ZWJ9VeWEtGzO6
2+z8XVTBHXzaUH/fFOhqG+GIuvWu3GRo0t3pg+MyDUr2OeRP/yHF/4bdEmv+ukO2612ApGE9DP+I
k4p315qZqEI16NsEGhy/wrpv0cr4ahiZMpiFsmnouCzlx2uWTifrQ2opyNFnstBBwOKmzjs0jyly
3aQCFPXZTDCuH1KwKXOSg41gz6FGMYDHQ/GGQurxsDhCJHGD6S90T3yhuZN9kZduE0ut1L+HLKsk
OtADUglFvW8abQUCD5pe64AlpHjsSbFaGC+fRNt4u/jGX65ecPxyW/skYySSbAOwT+g/YYcyN/Ee
qTnapniTorIMO7Dr/3qDs0l9yOaNyKwr7vXyOFlwlCe9P8fCl7SDkcByhTBTxE9tu60+tG4KkOCN
r7iDoGlYm6aILsCzwRyU+jcmG0N71ymmhXysMt+4s67mNef7//BWGemJypaPuvqRqbo35HWdEdeP
3RvtrGnH0HsRzIs0mPpGzwJZ8gySFsqBGokkgc45SSMQbCLVaW2Awvoafu1uXBHA8BVzQx/K/MZQ
a5Hfok6s14NnJCvYcWWU2S8Sd5jcEr54ZJC5xgUERXBbhP7coB+rbqZqBzjl6H+v3mrvuIQtdFjT
Zz6+8xB+Y9+7fOxmtzgPZgnycguFk3wQCeeaFIzrLhCmCTnh7XqV7KRYKWuTSCcx4FF6OwJMTdTC
rekp405S0E7bwK7/LXmOXIVnLGoQfcHAaDQ7cPMOWbxkHz+RbAhVBlgdt4d5MrLX7N585CBqsS8o
aHsZF2BbzWbxmg46/fB9ESYR88Y5RzaCY4QUknWb+m0PaQONPO74wukgh5ekne7t/tL5WL5p7iFE
l7TbRjvxVqCgKpPt8NU4GDDcGMCf3caVJ5OioaGvpXriSKU6HHuuLzD2BHJaAA39wT+NjNZhpLnu
Rh+nT7T+8IQZC6cw/fy0LuiPqNlTOieGpd9hIRijgaTrTNZcBuB8+BPtQfVlzcRD2V7t0fvgmgv4
IanUnM9rdYkDRLElWCcIE7DGZfgxINgbHki6tq+oC7HLZOQ2p1tDgcxrYogSHoA25L5KGTQSxg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F7E5E38421ECD0"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
content-md5: 4wGdKZzwFC+Mj20sB5QyUg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9e26885f-505b-4a94-9266-9e2242f6e721
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-86830af1-df66-9223-d17f-36e12c40a938/test-blob-5784bdc0-3523-cb8f-6edb-722cad0e2eeb

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
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1F7E5E38421ECD0"
content-md5: 4wGdKZzwFC+Mj20sB5QyUg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cda907df-2c88-4d56-88e1-b3294421cab3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:24 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-86830af1-df66-9223-d17f-36e12c40a938/test-blob-5784bdc0-3523-cb8f-6edb-722cad0e2eeb?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x1F7E5E38421ECD0"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:46:24.8990000Z
etag: "0x1F7E5E38421ECD0"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1302df9e-273f-42d6-a4b7-1cd40ab77c7b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-86830af1-df66-9223-d17f-36e12c40a938?restype=container

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
x-ms-request-id: 03c967ce-aa3d-421e-91ac-bc6b3cdc461e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-7eb9d101-b187-dabe-5b39-005af343d26c?restype=container

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
etag: "0x266D35812C2D500"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d70bd9fe-ac52-447a-baac-50678ce099f4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-7eb9d101-b187-dabe-5b39-005af343d26c/test-blob-2ce48255-bec6-094f-00c7-83d1f15df17c

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
uJ7jZO3cvNANkAdOEsON8xJS9ZdQ5v9DgbB+vy3t6f1Hg6JVYG1+eMUUHzW2AfY8OpC/nmdaLNKe
n+I9Xv2iIKcJBo4hN5Kk1HzRPMfKjIC5QYWdLkqV7VfPtsCKQBrIcf6NrfpoGwL9GsrriO8L1BJi
hBx3BPJdcxk3UYHSGZNiCcrIPN+GUSaDoBN/qmVnxOKtKLv+UGwMMDngMMmBKwA3iH8lQpgz2zP1
9GTe3sm00IyeJPHYY7hduwulpSBdAXQSSCHlQYFKekyHCVwILlFwLF884gcPXiXHx4eMjjYSmPLv
zJaozo4KVKqkUFpbVY26NXjBIB9tAun8Hnr6vesWdHBpGGG7x17QMo5dag3KbHH50li9UXfTgcms
q7AUEJa+jtvp8Twr/m0a8e6REJjbMbIIAOuSWCP4lpaYDxytvCH3ntwx4Ho1ztPromCJQnEx0Hr+
Cw+rKzW48Vqmk+9RbTTMmXK7qVE30zIXp7bDb1QlZz6hrrASTHOmee8fjjvkmjUrvaj/dSYoxjjd
k4R/9IIGgCuxr76Eukz/FDBhF0T3Mw2AmLGrJvIXeed3NLnuJ4RtGQ4PMup3pgNbAGD2x6/z5l92
/lzQW1o5mTbWDIWTEO2r9P425wAiCfGtTyaRILI4g05aeCgnnL6z1pm0oJl+yPBzStKwvf5eVPVq
Igs0qHiEnYg3OZjFg1dAgxFnbmhYL4Y2HtbfiMZP/CMzvHqyfi0gLwMQRo9XrcZ6bzrt9uWMEvKE
/omipRTC5zx0ksbdjgTjRz9lR+n33nAPZBmMYQU+pqqHLYCkfYruTl9S4xsAneA2Cq6lJ8sJjCAZ
k0D7NoY3NescVWCDP8m0dvmJpfpUD8c4VVdXmH/efqBgiupJ8xfZG64w40eAssvk8bDSf+clxIR5
wuAu4JxsPte/I7TfaoPhsIlLJCt/uKOMcqfPDP65OsVl0DA3qjsRw6VvwY8WBIYs8c9e2qBY+Qo9
om31nDLZBujueppSqgZOOWCGD/cTdW0hohovWmAlDdYm+QfNHCdzlrqmKIrs2UfID6A/0eoTKS0A
0/kXqquIyGzDLLD+gB05E3k8bUziNcnTZkrA5TzsEtDazUgtW+sOHl8eKK2Wyo+CBr1x1rvgHZ4w
Q0RgyOIw1xngI7PUDLiNLU/txAwcPJu7Pd9+ejsU+q+q/BinrVZ97VCTtqbbrvkF46ls81mSFAeo
pYoCsVzdyykEKg+f5X/5b9a7iIX0347meJaSpwZVGOgQ/gjLejz0tet914TpZf4pc4OD1ouBs8X7
HDjFSyQirhInjuZ3LfWax9OadwcK/BOYaDSD0UFdj0tCz10DLmrHWylywtYXskWN6Q645zy98Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26B5EFCA4BE84C0"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
content-md5: OsZ0Zm9zx72/GcrEli+LmQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 81af7373-9e3d-481a-9c8b-3749d71d368b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-7eb9d101-b187-dabe-5b39-005af343d26c/test-blob-2ce48255-bec6-094f-00c7-83d1f15df17c?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:46:24.9660000Z
etag: "0x26B5EFCA4BE84C0"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d2b540e4-4df2-4c9e-82a7-0e58dbd6c893
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-7eb9d101-b187-dabe-5b39-005af343d26c?restype=container

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
x-ms-request-id: 0e444932-3817-40e9-8ae3-bf90439bf19d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-e22d2520-9eef-d0dc-c9ff-9b345e979799?restype=container

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
etag: "0x26C77B286F8F2C0"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cbfa9da8-e364-437b-be9c-d22965518db0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-e22d2520-9eef-d0dc-c9ff-9b345e979799/test-blob-de1cd368-3998-813c-b5ef-f5e833a5a80e

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
hN493QCH17xMofnXe37m9VJ1TxQg31jm6awtAKn0nSRXja9/WrmY4PtgkvZAZQU3CACVvVWT7qWF
V/RUWtcSVwTUf+7OZpuY3G8YwExhpoOm9fepXt/Pw54K+QPFRIUjTTrya+UWaKFk/eHmey5ZJLBw
rWTfafklBbtPxGyY05jp9HIRbzqej41WRGH96UhwsNVSVZYhRONBzWYpxqQ0zCpI/Ya7R7V10R7X
iSWXJxxz3xOXRX0CyLCP0KLUdMjoIXg3tOvCtWkg3IN3Sbu+qaVKtueQnYasRjXVLHYToV1V72es
YHIwsCqpd2j5in710Cf8ib7hWITxim627InzDTsmIlpTEUkzGgW95yYds7u24FtPFheedJfiutUD
ecOhtmkt0mgkob/eyW+4JHBe1NeyAAwto/Yjh67DcVZzL6FBGzC88OBTkT6bcU2o5k8mhOb9UXi3
cxJzCku5YTBoapnNdwhAouP3X2/NkjKoeqFenOxwdt0piqgdSOaVmS8OMwez229H5eECBvEI6eHg
yo+pW8RD+PS7pOxfI1n9YcVAv14r9J8yFrcLbW/sIKDGPH1W6z1qyjoT9zaC58KIBKUsyCmCtdbw
d0QNOIuEz4RMmObbp3WH1fUkGPxpry/1gmjKv1d3RIenZnT5XJGvjiiyNk7crF0vpPI0Xp3Zh8cV
GLUiug8s1FReM0EBjnljdInUt3ngGdUKmxtlQ+Xqzt+s40TcjNQYhWH6fXkcLRV50OkTBNBNNf/f
GB/0xpFudGVhVKs0h+i1vDEY5ptc7m0G7HL81skPX65F/HS0I77PiwgTutlqREkBXUieNE5jgyqy
7dofcp2bUvX874p0AJhySVuSSDOTnKcp+3iBcCpf4XlJAjXjsBlqeGjkbVW+jVyvK+vz0Dr3HlEz
9XclGuHKnA0RKv5ij5lBKNDKry9Ra20b0UU+bBE/UuPksLqiRV2GGdBIrGJeTJxRsahpLG8i4YoJ
CUicizD80tcaft7fn+JzRJVfCb4LvYSo7bpo1iZ0wc4vmDwU6Y2fS9qLQ86+chHF9ejZw9fL/kzD
9J51k/yxpbwPrwemXloIv77kgHm26nqoouA+m/73Y5rvUfXuKrjd2Z4RrsMKH5eN0QMZ537TDQkk
zPAccwq+GEtstg1kGZUFBqbbpTu3noNIsMn63XwcHETryV3IwWaTUpZ3nmiKKLduE+DX92fObS5s
1MJAxDrPUJrIeU84PUU/R1KlPwAavYcSi8mbRCTcHVwuW+2kUo5cqE7Owa9nNtabl68VKC4uURY6
LjhwMwt17FvzCeFXm/XESZexTPvXqlXzAK10xvUuAAnWaSNW63RCWdRUdC30Q/y6Ud+XfAUaYw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2155ECC81808860"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
content-md5: gjA8tqNRvPvaHdKCFeCf+w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f679387d-2a52-4273-962e-477a622cffa9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-e22d2520-9eef-d0dc-c9ff-9b345e979799/test-blob-de1cd368-3998-813c-b5ef-f5e833a5a80e?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 337ce283-005e-6625-c508-d88032d16d5d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2155ECC81808860"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-lease-id: 337ce283-005e-6625-c508-d88032d16d5d
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: afa99175-7ce5-49a9-af2c-818bc95c3f0c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-e22d2520-9eef-d0dc-c9ff-9b345e979799/test-blob-de1cd368-3998-813c-b5ef-f5e833a5a80e?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-lease-id: 337ce283-005e-6625-c508-d88032d16d5d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:46:25.0430000Z
etag: "0x2155ECC81808860"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6fbba02a-b062-4aea-ae14-93cfd11b62cb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-e22d2520-9eef-d0dc-c9ff-9b345e979799?restype=container

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
x-ms-request-id: 6d10b37f-cb0f-45cf-a357-b07576593dfd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

