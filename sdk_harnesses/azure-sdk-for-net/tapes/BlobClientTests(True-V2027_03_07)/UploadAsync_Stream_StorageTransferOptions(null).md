## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9e470653-2759-7fac-404b-fc011c7cdc71?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_Stream_StorageTransferOptions(null)
now: 2026-11-12T00:49:06.5819003+00:00

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
etag: "0x2668B8C6E01CA80"
last-modified: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a62e05ed-69ad-440e-a82b-130a674a8266
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9e470653-2759-7fac-404b-fc011c7cdc71/test-blob-58b32a2a-7590-2c9e-8638-7ebb1fc7c25d

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
TgXXmzQTVd4FaZWbm0Pnkpzo5nHVyKjeaBsXIanxX3iIn7MXpUA9F9TVUibfA5FCUOweN+FQh4Zc
+TMZ/DQ0FAocEvyQz+1cq8+dAHWC/mSJ1NC90iiXOBctu6wMIxufoD4cw/CVsoH/wosRsocQ2vvP
jydjd0HhhdrkYhRBT4i0/V82ZTp09CJPvhCchYWQHOCwPZPzPCn9Oj4VsE9svnIDXLUo2nTAWpsF
E7kwRP9VVEY0kBL0wcE2OCv8XkPS4/+emSjQaEJr8OL47ihvzfU+wFwJNy1fD5vz8aFJw/tXMzC5
kqvWhOwDyJ8w+9KYxms1vZ7myKvRPoqM3HahISzmoLv4tTpKaDtwBW+OLxPJWis1FAZdcWqE51Qg
Sah2YqZzSVsXoBEw6lVidsI8Qw53w4FLaw0miS9QdM3mKR6T+qPIGuW4sboZBCmw+vqnSKRFqYUm
KveZTcArxyxDSsA3z3wfdCgpvxLGMWbjdY41qCwpoYCYbM+rLs0ljOmO1rpoeSt+iNN7HOpzX/mQ
ttcx9h7/GalAnmOsc0VbAzIoN1qsevxjtiBYroWVJQzVGnj285XLjr0RKNrH0RSNHxi3Sief5Dva
zj/9p2okq3lW1ljNZRCdXamdmlIim+UMyo5s3dvkNjU8GyRVzedS7Xxhcfq7wLoIGux+AUrpuDJa
8d3ct82dcaAjkUnrR4/CSq3VwCrqUArTY8PuZTTrUmLx+tsJdjWvw/9amC5xHdNdvLecFPcIcKHT
CFMKrwtrNz/n+UyzuNR3Jv0qj7jbYkbwkal9Tj5q6Yo6Nm7hpBTz72HviSOGqQTjJO363eDp96UN
Gh1i7egAfBDCeIFmloHpN6BX7NgiaeekmipQcAupUT/I1Ir2kQF47g0TwzCCfI5sEaZAkQvM6rA2
vVO+sAwEGCdCncH386ae3v3LD6W3IR2b5F9kaL8z++nZv9Ouuj4ADqsJQN/MdB0AorMNAdsKf5w1
IsytoLBnDqHYHjPT7yS/ygD6reA+zm9BZMYMJvoOzkA2eZdxU276ojI99FbqLbOPTjbbENG79lNc
azzqWuinyU/ynHWNTXaR/wuuAdoZVjYSfdfEMr5ve4JDFecyEEdKlioG+JE9AgG/ShDGDPV5QxUF
190Q4peQgyDzSTePXu7DZGqvEl6l1XvWBeiuqG6MydLSLTlpObOTdnVwSbjJMOshA6iKyTC3YAFi
Ot2u4tqyZn9lvDG0WSq3HJzoNYvCDNT9jKXGAQChG8w4Bv/V5ZOavuM4ZHO5bKl906yUzip1oC4I
sFU17GR/w6FkfFMr4TcITneoiqhhRCD8SC5TDUyhwmbQzDQ+ZNF+uaDSVO9WUvF1i3+zzRWGpw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24941F7847CFA60"
last-modified: Thu, 12 Nov 2026 00:49:06 GMT
content-md5: j/eSGTryVQ3yDqeDhsM9GA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 44e1e000-c002-400d-84f3-ad3af1d1b228
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-9e470653-2759-7fac-404b-fc011c7cdc71/test-blob-58b32a2a-7590-2c9e-8638-7ebb1fc7c25d

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:06 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x24941F7847CFA60"
content-md5: j/eSGTryVQ3yDqeDhsM9GA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64dc0ae6-8e0e-4b9f-8e2a-fa60bd6e43c7
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: j/eSGTryVQ3yDqeDhsM9GA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
TgXXmzQTVd4FaZWbm0Pnkpzo5nHVyKjeaBsXIanxX3iIn7MXpUA9F9TVUibfA5FCUOweN+FQh4Zc
+TMZ/DQ0FAocEvyQz+1cq8+dAHWC/mSJ1NC90iiXOBctu6wMIxufoD4cw/CVsoH/wosRsocQ2vvP
jydjd0HhhdrkYhRBT4i0/V82ZTp09CJPvhCchYWQHOCwPZPzPCn9Oj4VsE9svnIDXLUo2nTAWpsF
E7kwRP9VVEY0kBL0wcE2OCv8XkPS4/+emSjQaEJr8OL47ihvzfU+wFwJNy1fD5vz8aFJw/tXMzC5
kqvWhOwDyJ8w+9KYxms1vZ7myKvRPoqM3HahISzmoLv4tTpKaDtwBW+OLxPJWis1FAZdcWqE51Qg
Sah2YqZzSVsXoBEw6lVidsI8Qw53w4FLaw0miS9QdM3mKR6T+qPIGuW4sboZBCmw+vqnSKRFqYUm
KveZTcArxyxDSsA3z3wfdCgpvxLGMWbjdY41qCwpoYCYbM+rLs0ljOmO1rpoeSt+iNN7HOpzX/mQ
ttcx9h7/GalAnmOsc0VbAzIoN1qsevxjtiBYroWVJQzVGnj285XLjr0RKNrH0RSNHxi3Sief5Dva
zj/9p2okq3lW1ljNZRCdXamdmlIim+UMyo5s3dvkNjU8GyRVzedS7Xxhcfq7wLoIGux+AUrpuDJa
8d3ct82dcaAjkUnrR4/CSq3VwCrqUArTY8PuZTTrUmLx+tsJdjWvw/9amC5xHdNdvLecFPcIcKHT
CFMKrwtrNz/n+UyzuNR3Jv0qj7jbYkbwkal9Tj5q6Yo6Nm7hpBTz72HviSOGqQTjJO363eDp96UN
Gh1i7egAfBDCeIFmloHpN6BX7NgiaeekmipQcAupUT/I1Ir2kQF47g0TwzCCfI5sEaZAkQvM6rA2
vVO+sAwEGCdCncH386ae3v3LD6W3IR2b5F9kaL8z++nZv9Ouuj4ADqsJQN/MdB0AorMNAdsKf5w1
IsytoLBnDqHYHjPT7yS/ygD6reA+zm9BZMYMJvoOzkA2eZdxU276ojI99FbqLbOPTjbbENG79lNc
azzqWuinyU/ynHWNTXaR/wuuAdoZVjYSfdfEMr5ve4JDFecyEEdKlioG+JE9AgG/ShDGDPV5QxUF
190Q4peQgyDzSTePXu7DZGqvEl6l1XvWBeiuqG6MydLSLTlpObOTdnVwSbjJMOshA6iKyTC3YAFi
Ot2u4tqyZn9lvDG0WSq3HJzoNYvCDNT9jKXGAQChG8w4Bv/V5ZOavuM4ZHO5bKl906yUzip1oC4I
sFU17GR/w6FkfFMr4TcITneoiqhhRCD8SC5TDUyhwmbQzDQ+ZNF+uaDSVO9WUvF1i3+zzRWGpw==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-9e470653-2759-7fac-404b-fc011c7cdc71/test-blob-58b32a2a-7590-2c9e-8638-7ebb1fc7c25d

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
last-modified: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x24941F7847CFA60"
content-md5: j/eSGTryVQ3yDqeDhsM9GA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c2e3a632-7696-42cc-9c0c-4a0ba90e5f5b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:06 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:06 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-9e470653-2759-7fac-404b-fc011c7cdc71?restype=container

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
x-ms-request-id: 88fb2eb5-0393-44ac-85ef-a8972ba1e97b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

