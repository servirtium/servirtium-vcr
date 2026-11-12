## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-fb37caa2-22ee-cbd9-b261-b1999eca718d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).CreateSnapshotAsync
now: 2026-11-12T00:47:40.1959568+00:00

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
etag: "0x260510A45346E40"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ad736f47-fd3b-42c5-af97-0a4b9e12a13f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-fb37caa2-22ee-cbd9-b261-b1999eca718d/test-blob-7b728c48-0013-0b6b-678f-0175e7e3452c

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
phYjPN9qxFhrTspdRTNHL1RfkoK2JOGhXyyUXyFk484bhfKIpjWu3scaEMU2DcYzR9IgiFHCdYI1
gtyz1WU3B2r7Qb9Av4gfsbO7nBQca1JlYBdOQ1t8WA9wUiRZ+ghh4wlaO8sG84hKAdadB9ltGRaK
TXVO6MMOf+mv0GxjxrerWbkLwS+GXm2OBEKF3lE2AjkNzqySE/pFS7viViMc5zse8q4fYlfmBO4I
v+OBiaCYec0yVfcKGEW+xnV0pAhKch0HZuyiFqDhJsq9ilMXxMIbSt1V6ZJDFNloYZzicmDmvk3G
eSK09WIsUS4tTI7ypwGyWFkq9IiLxFISObUE/7Rq18wFUUqgZ1R7KZhkFsdLdrmaLxkGvMnEO7XP
obusKFF5wnXC7Fa3EvEEr8rwJ62Lx8L8atCaYxsCQBWV0MWYzgFG6lNRiIpj4xwoAQz/1BQHRNn5
sL6B319av6tAIUEsa+DJqT1aOj44mIazcmIOA2wBjYzsnx5DxQr09sneI8Hb+5UrNSvXrAqawBc3
zW38TLw/PpO1P8zChuMyZkN1WXXF2HbM4s1BKuGCUt8GC/ec96oMn+QuJbzJaa5HpEbGJGaicvX3
MGru/ROyMu3svHrrlW+ZabmQl7K5A3kf+Yabuy14Y5kBpcdAHqHRe/PP3Kw0Ww7WLbusEttDPS3w
zwSNF3a/c1nh6e+oWEoXvhu+6ibM6553xI5xy1C+vmiZT06dRGR8D2hTU3EeLtRwlVO/hVIHI+Rm
FVLoTagIIiuHDgn7enq2Qtu9eZgsWZW5ATb9/jkVkitqNy8Rk8HASjBGlyDLdBvYCUJ3SalMOry8
L0xxCiTycXvdkUJLpK8Z/C9n5sJ17YwbJPX2nkmCHv1yVWR0Tz8LUyWk7uPYjWSTXU165FT5R0HA
VeYv/NIyW3JE2E9Lpa3vW5Kc0f+oQpeQY0H7BzmpeQ0itPlZ3FdScZNxk7QUSLifi4jBXXZCFxJP
npiRNlM4m19BKPCzlX47SV9sN67ifBuJXHux6BuX4JzmCT6+wTs/OPhV0h/H6/UJhhMX1uBjbSF9
CNrYh7NEqkhTzYtAfIgjLP+2jan7wXCFp2EIgAq8gpwdQbhgZ7BFESjWdB5pyQqK86ngreB4gkZp
Ut9ROyk+lkrvIzvPwsVOcHuAJE1RG91XfY1g3NS8pL5y9xTR9NX/mN3UeqbOujDjkj1k+F35FzYC
+r6c3bp1Mn58XcuxfXymgIxvfaE2iMJcfUmXWKxheN/ezvoXY7oiXkcoUlxkMhXBvXfRiZqUy3H7
P2Bw3trSG+Ts0q6Bjx3RTB9ZDjVl90o01po1j+9FSQOIGyNasoBtVjd3eF9mPy1Z/zx6O7w7lQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27AFBDA9BD61160"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
content-md5: 0M3cRuVc35UQTeLO+qfKtQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 534e7fa2-b08b-4bac-9129-67b6d5b41b3a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-fb37caa2-22ee-cbd9-b261-b1999eca718d/test-blob-7b728c48-0013-0b6b-678f-0175e7e3452c?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:47:40.2590000Z
etag: "0x27AFBDA9BD61160"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7e30177e-3b57-4794-a95e-e07896430cff
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-fb37caa2-22ee-cbd9-b261-b1999eca718d?restype=container

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
x-ms-request-id: 3b463637-ab15-4fd7-a4c9-3ce86fd9ddc6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

