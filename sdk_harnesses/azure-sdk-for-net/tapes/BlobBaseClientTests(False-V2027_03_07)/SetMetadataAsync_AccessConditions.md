## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-613c623c-fa06-f3f2-98bc-2b3797ac5f4d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetMetadataAsync_AccessConditions
now: 2026-11-12T00:47:08.4193300+00:00

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
etag: "0x2011264E4FB9060"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 32406821-5125-4974-a4a2-4c5a2459e4ba
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-613c623c-fa06-f3f2-98bc-2b3797ac5f4d/test-blob-afeed1c7-eea5-81bf-db1b-177f3afb9800

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
gIxFn0Rr0cm6izD5pRfJcassKyCorB1NoruG6uJzuZ0jK7YKZr8JXAAl9Rm+xtvEUqXTDc94WNRu
9/yJ5ebmR9KS1nlgvwvsI88fgrYDj9zfwpg8n6vOq9Pim27Df3YaPq5HK/BhY5Oa5+oAWNUda2gf
qiNNqqcnxCqmfiOcKKRYBUQIvGPsfV4FobjBzVL+xTAFpNVTzJMHH2fFu+Vv/b9Gp1ORFa4FMizE
SAjvZvbXqLnzl4POBTiwAZz7J8F5lqT4eyb/bK+BAHGojoSLF7lw7RMse2Y7d6Ia4BMSCQtqS7Jk
9uvQ1zsJcpYSJXazJeniizmuTRo9vQOE5Yycb/ZmPUPSJiHOoBXYIgnPKVEsZrsqL37SvP6XJjjn
TPKubQKfq+gy4f7HE+oj1SoQbpSyV37QcT94lIFFOgDo51QjKbUHL31p+YW9YhuTrubTh7ikNfR0
3vvDJxdm7ab93yyWAKx0CT4WSF74Ew4k5eWacbNIRLJgrku5RAhmAgvev4Pv/K46Xn55juyVfMrt
nkExzHvztZp6NVFgu8U2sEZSGVOLNOg3XxI1zrbFyzKAzKXGNDWQ6wnodMdc2qO4Q92mQmJ3YWlZ
+m1pvubktGof4O4gb3sQwi5KosAh24VufIvYH4jPCWo7bDrIJy0iA8BcPPm1mNNilYA0LL+pOB7n
+kJbDJTiT9aD5QJASJsBJ54AxZ6LueO4dYoIm9yrkTQc4C3rx/creewiMbPQIU3kMwUhqXJ/XEBe
opcK2rT62FPOJGduFl+n1EuxaIcw6FM8I2jWiufBnITsjCVfIJ84KFlfAv3mdh2medQnzvS5LrpD
zrdMI01sDIjjgYk6R7SseUAt0OZWVqxKMBASms2QM15qHFLo7AQL8/V0AvSTazIgelS0i13U7HcK
AfM9WXG6U04qzytixI07Idzw4lO3tsTd8iB53KgAli/a3eoRzpqEua+maJwHvrbHeGmB4wokUkou
X2dRQXelKjj7h+aiKlNCbCikEE4o1jRpsWM+f7Mktoug4m4yMnc4AT5jCzbPJU4WPnfif0H8Bokz
548TZ6uF19FaAUfkDzmwbA8PxMr9mYwVKEA7QjZKpNvl/0voJJmS3jRkdSMGMS4+MRMx7EK+NU0D
/j5rSZSbEF1r/hDuyEh2fOWVmSRoDvYR/REjGLeZJsn95CVaJ5WgyWTGmzMeUGjLu29dKZwpmvBI
WUuDePil0tdG8OQiG1RQ9dDAonPD8q2oV1xHPP0t1Ek1Es5JHFFrIchb11+EqKAbDTPLaPh9hWae
2yCbXZbaGBya7QiGBtl+VIGqZxpOI668LC/KYWtRuIxnq0Ew0MMygb9C6ruXlAZaTRN30h1LUA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EC46AFE87944F0"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
content-md5: tvzxH5q454incJnLN7Ybjg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 39871280-ea83-4a3a-ab36-a16702c08c86
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-613c623c-fa06-f3f2-98bc-2b3797ac5f4d/test-blob-afeed1c7-eea5-81bf-db1b-177f3afb9800?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x229E93A46077220"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fbf2059c-9b5d-4242-95ba-0e8fb5e4fe94
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-613c623c-fa06-f3f2-98bc-2b3797ac5f4d?restype=container

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
x-ms-request-id: d997563f-aefe-49dc-9f17-d83ae619b4b2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-30de71b7-0f67-b0b7-4835-7c1e5b984e84?restype=container

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
etag: "0x22E1CBD8FE16A40"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4026a0b-f125-40ce-9575-acda81ed5ad2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-30de71b7-0f67-b0b7-4835-7c1e5b984e84/test-blob-5be678bd-380b-25f3-9728-6f1458d9e56e

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
G1qJvvGSy3EIkqGFG3Wqwv6Pulo38ER/frmYPp+iWG9PDQMADo+SKqx1U3iXbQoifq0VyB+LNysW
CkA4+Y3RZToyNQ1yqbNv/I+twZzM5xCvdr/yjI9PxNXX6gROWjEfpO0+ZDf8r9T6psyQ3XaPSSIw
iILN39mq4nE4m76uIKFdjh2ujYLYs8fr9+XDv+dfSKDiHtKuUsUUlILGwxQWS4UqMk5Y4LyfWNW7
4ufz5yOJ2FIdzALPrzxYmvkAEe+y1axfmIyYBmjkQsb88m/dIKxePevC+H+DWoMSAEXCn0bmCQ06
k06X8NLqOYk807zMenpModME8Nws3D4IhgYiIaN/Fulio4xex0wY1772RofGRYbKdv1y4RgwDrcQ
jmrLxxflvbzTadfu7tqH6xgdNpa2QUCAWKumDDTQMpTUTjniTRCnEInL89uu3Icj6/YAEtcgWUwp
S29sP7CHAjdCGaChpJ4IdiYN605l0XskgyE90CC9tPTsuQGgOtDYQ/GkbMLmgUZY95uxE23+xHrz
SLyPSTIWhWWrtOucaDtVNKhdwGW5PQHa5NiFC6CH7vWHrPIUSPm+jeZdOs1bvI9fXN7EoQMVOgq7
tWRZkXrEJMb2FbtJQOuvnjJ+XAI0fyhJJa/Bwk3xcXLnWZOUZfxsmBYGZKbUFhvyFQLQlt4IhjY8
EGvKA2F5BKNIYedYGjg2EcPrLRqCdQ+Tzq1KIduU39JdWFWQoZS1jWADi7UzmvvKmYUaHFkcuppc
NzS0L+LItIEU+8Ljpm8uNqC5fupaXzSyf4dVecN5QJ66NGpgAF19OtYzH5445vMV6+W4YjuwAdcA
Aq9bcjq+m7okKXEEzjVCO0QTJ0CVeZmTP47dwd5jCjKTYP6uIsebdYTkFL2CEB2vdSb3ndqWaokV
xzKs4NncwR4/cG03lBl8d7K8sWTcES5wLUu3bG1X/fV1mFuV75SqCFOeQqCveOENeiUo2bkkObUD
O7OOJFSx6HN4wvu95ocdEqgRPc+OwbVqqfFHLiM8UF+lkbPgG+P+7FosN7blT5OdCscQE/vmdHr+
JHpjarlPO3GcGFXUPfbFElB0Yor+hFpdqSNcKz1jvhw54vdomoKg3PtFSDc+yc3QSwCrcRLv/58g
BsCV8xAzOVk5mlr/XHfO04aPuTsiH+BVjN88uE0KSuNXR5TBCunqEQ/dBS5z0e+J3J6MYEVk/ufg
QGcw94EMLlB2pxTjDMicpKcsRRqx4rvws9uvfemd80mt4cqBuRqN0dbe/Cnaps/V77udOLnNL12s
QEOlXbBm2bTLNSv9G+qNnnND0+WRFQwM2Y4u/7uQ4LJs1XnW53MldyN0D3Cj19TQEJlFiVt4Gg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x215240C7E790A80"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
content-md5: OZzf5620Mv5eYBy+DLYv2w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 86365536-fa24-43d3-b9e8-df13bb624f41
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-30de71b7-0f67-b0b7-4835-7c1e5b984e84/test-blob-5be678bd-380b-25f3-9728-6f1458d9e56e?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:47:08 GMT
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x234D9CDE8949EA0"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2f4ef4a3-7d1e-475d-a550-ac7ddf2f37f0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-30de71b7-0f67-b0b7-4835-7c1e5b984e84?restype=container

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
x-ms-request-id: c837452f-b834-4e04-a4b3-de68679a1e49
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-8399372a-3822-f9d9-3a55-79914571b6b6?restype=container

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
etag: "0x24A8BA0ED9CA580"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf320e08-bc64-41ea-a6a8-59704ee84fea
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-8399372a-3822-f9d9-3a55-79914571b6b6/test-blob-c15b1e00-061c-689c-02ba-5def214b5656

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
9LpPn03wAz9Ke9QbKUaOX1rjRWsAtv0jmzGAZ9rq2O/+I5yLIhZoDxocd6ExgD68LP2UPQbrVj29
KwQcb5tkYKPlHAapAz1DejVQ4z9c8hryxDvcVZrpE81fzfcSTKB/uBb+TGM4EijAUcPQmnL9YTnq
KapfhwsI+wk5SjVGMC6U0CopXaW2urETHAPWGHhaYWy9KCL1IDEL9VFZ/8jzeiCUO8lI1AOTM275
TGoHMeOR3ujIiAgLn7D5HWdUXLvoIKLjQdyuEo1oKfSz+9TGBMNtyCDfKvEXiZwZTrabP9ezECzI
I+8G48xbX14UV6PcMhmj5pSaCfWwy7hAlMPWzeod/+uo/uDTZ+RUhMqTAzH4PByd91lCGQc2F1g3
xk4IhZJ09le4NDQ40H+wRoQrHciHR1inONWQ2ubjceaInKCVS/43HgzZQAfnZSfaktKCC/qQsH/2
YUy94xtx1MJNsDPeGvuG8/67rQdQv9OttkgUYWbs9+whn+mxeTvwaGtFmbT0+3jX/Bf71AJ4paF5
EC3TXHNcYbhGvXsR1HnDykWbCyYeuLrPPGRP8SPpqflIOGkNHAv46Tj8rT79xiidNwq93Jp7W1dy
AyAPDHCVXROByJsQtq05oyLtIgt80nY7sbkYLMxezN0Rmxnr6dzIZlAqe/2MjYFcgzl4jThM9TGp
01q2fDBHIvy+/hqUTrlFJLu6Uld5ryQ4u6iS5j+kxKXoQRWBEuog41gBzY5myDV/Mmh9kaPZMCM2
fsCHtDu9Gjl1rAykxBLRmm/+eOGV0fNzE7TWJjMCDhHySpQpmC8cRLNU8Rsp221WrPc027hCoazN
FKGH5vMGcp77sXl+qAFA4TMuQN/XSjdGf3o7zTNYsKnnW4SOlV2/Tn59Lin01wP19PmEE2DN9clp
QWd4yqRqogHPl0x9sUzWbvJgWRsNUah2Rtk51JxIGmW6JFT1R4PaEownJEC3eEKtraRubJyuXO++
AYTLMc1lh3zmwo334CduhkaP5S1nv86Xiyb42q3JDMhlN0X/DuG+wp3D0LW0tcx8/+VVHnbBVkK1
M6ambazOHLXFkqnib3dl0SKQpO4Z4tVae9vIdO5Ro+ADSds7F1Xw9LT/7yMjmpBt70xTMbJTnFHQ
TPLRBqjHdO7J3iWcKrnNn7A6GfOyNuBLWoSh/XItr62JaspjH+0MOHs0Wbtq0cSShpICGYNeHRUR
hqwjJXZ8my53Er/uan/CLuB3ft0k4Im/DnfgK5YqK0y1UZlB6BMEt76M8r4FpBsSP+ui5p847KUj
Yxb+nG+YTedyORnmgEXMcsYel+3Kumpbzeyrh0WtfGTzHoX9BRtO9KTXkmoCLL6m1nPZGVS3WA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25C3AE6B583C100"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
content-md5: YXf03bAFRveu+B65RrMWuA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e3e45a17-2c5c-440a-bf61-09cbf8ec2c38
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-8399372a-3822-f9d9-3a55-79914571b6b6/test-blob-c15b1e00-061c-689c-02ba-5def214b5656?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:47:08 GMT
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21DAA154DD5D160"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 92014424-ed67-4bcc-bbb6-a5930f2ec56d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-8399372a-3822-f9d9-3a55-79914571b6b6?restype=container

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
x-ms-request-id: 2a116ee0-de9c-47e6-98d1-1ee95f94e2b6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-cfa2aba8-ed83-a2c6-c5bd-b4f262bfce6c?restype=container

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
etag: "0x22B481DA1A9D500"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f9c7d904-4b70-4aa6-8159-abbd92014b87
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-cfa2aba8-ed83-a2c6-c5bd-b4f262bfce6c/test-blob-48a3d0aa-28f3-5900-a02d-04b0d1d3620f

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
O8bdUmNMywbeNMytTjpb5gcGL0mxbmR/q0kuVegV0PJapLac4nwJXgScar5cUwtm0R6pyqQZXs1h
XacZHXYeyWPaUqmDvwSK/dBEFASlI1c+yIPKawZNQUXpO4TV8ECOfqBaggBh4hIZHs3T1EnIuzlP
21XyVF1djBFjmoR/tQyPtZZjS6FW3OVxsE04emz8IH9KhhTrnCpD/fXv/UeNmWnAQx+yZXCY+P5v
gaMQJBKkZ3oENC74pBlsIE2rZ96d4xfjeDZNSbsPso0VexuGMtjjS5bNiWQ6yJ8FRUUi7JEg0p2M
LKzbVh2+9YKg4ij95u11xxtIz1qyqLCWRwR27Mb89al9+gYsB/R4D5PimeZ2CF9XrSR11wJD2YT8
RQ8ZSAm7pOx/gOvnSL8nz8DGzw7JHz+kHj6hhx6nOSCBMMLlX8aKJvX594d0cGRkTghBfQp1MiXP
dSrKGR3O2EbLZRj9QW/6PKkZ0Ci3MK3aPTgWZbwWDP6dFeqcvwzYKx9AqAtMZwyYR0FhXGL8F0R8
8Nzkt3KKtFkaXyyFXXycQKQJd4eijdYsfR56ta+coP2lIM8w9HSstfOxMgfgEunFxBu986C92WIG
uDlTEP+pfb8u3z2sa0wwXMGT8FvOS2s1tfCT3q1d6EZtKjw6WaX0B7RIsjOrGFnPjZbfKukGN2zO
HVoPFp8R0ff3P0EQ9gMcn+inhpk3ipyWw1AXfr1dZvPPaztK5PEVNuA7s9kYv5eSwosAX7DSlpO9
eFJO+VM5mthNQIrH0br3kk+4/NbDfgS5hLsyXAdC/dSojGyexj2NARgByn4My/HQCc1hGZq8+vlN
lHWXBz3QC0O2H0ROWMsSKvu+wrSFrLnJYVM64eM665JyUTHH9vrbML47VqusgrACTu6f/jhFx+i7
zqXqlilffDSy3AeZSjQA45H1SlYOHN+iN5L0mu1ZLIlJCydV8JmU29p3+qapaAS5nhumUH2SrbHF
R16XauFGWK99Tz4Nq/L4YG58lyI5+c6OO/zSstwLt152j6k6/XH4MKH2KxnFrPMoru8OFRaOjE6P
CC/ldKbTcpjglhtIvWL9g2eAQs21yY4IqQPs/KFH5wNbq/VBE7v7I7mB5BbX4PGMEZKvDkqB2j+h
3Mui5nX2mK4Y7RJtvHCrhR4TNOR4MckRX+sPmNm52tC1oDbvWDxEikxnvvLfH1UiA4grbaVaKaoC
kIaJ5wDVXxNBtxw5uyzhz6mYEHPWMkCW7ZRQjWwrWnaL7ci2uqJLkl7enmc56EhcSZ77whg3K15G
8/pshNKnFlylrc5kKxQHTH0U+JPZXQRM9ETOL5hdVMFqb8eo3w6MN4gKkzp5+B2K9HaaIjPKbQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FA2AE5B5B8C200"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
content-md5: MYFxMZAw+fSn6QfPK3vGuA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 80ce6f78-05f1-4496-a062-66275cbc8f4c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-cfa2aba8-ed83-a2c6-c5bd-b4f262bfce6c/test-blob-48a3d0aa-28f3-5900-a02d-04b0d1d3620f

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
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1FA2AE5B5B8C200"
content-md5: MYFxMZAw+fSn6QfPK3vGuA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 13f691b5-ff77-459b-ab8c-fdfc7b188da9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:08 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-cfa2aba8-ed83-a2c6-c5bd-b4f262bfce6c/test-blob-48a3d0aa-28f3-5900-a02d-04b0d1d3620f?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x1FA2AE5B5B8C200"
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E1A472C21548A0"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7496c3d8-775b-4b92-8673-e290d853c745
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-cfa2aba8-ed83-a2c6-c5bd-b4f262bfce6c?restype=container

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
x-ms-request-id: abe32f43-ca06-40ae-a8e5-7dc4d513cd08
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-8f1ff596-d88d-c4e6-4759-0df9bb4c5f6c?restype=container

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
etag: "0x1D881BCFDF2C300"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 39cdf620-02cb-4e9f-b9f8-ed705a05e648
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-8f1ff596-d88d-c4e6-4759-0df9bb4c5f6c/test-blob-0bc0886f-c9ce-d2ca-fc26-433a21c3318d

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
nwIxsr9//l6hRUzgbP5hPZUKK5lzv57MK02SZpSso4Qnf1q5G6ys8IlhaYl96Wb+xQakF5eYGt9k
ZIdy7JjJ9aLHue2jqCHoXTsQEVYVT0Hnk6GOB4zsj2V6VbclOgPxl3TmtTB4Wxzlu7lchwiJThRF
i1n2O+0V2ymIKFNpwyM3HnrhLpoQbjiEqUvTkAdc8Qai366q+1yG0doH8DLJe/iVJGmOpyB6NBwg
cZKiQkohKzdMxuN0jSMdW13ACX0Guy5TPWyezknmKKqRiYnK5I6P5cX6fLQVIJZFcEzCuSufGrZj
TwXeg1zuZp444gSaU3bOMCO4Cz95PhzVWF38I25/8m7TZpWJsGJoDBUW3D2Sqx3W84kI5g936RDo
CSr/8UMvufCVx+zgRX/AT/8pY2HfQq1AJi/ldwxeW3yEoac4aRrS5iNN/OQx9a4JR5cQTYavCcZ9
v8sUSUHjNmtvXKTYiObkV30+kUbIDjGB3C91Tg721Zfhu6pPvp3hacV5wZgKML6wK/YIcXd/tLCa
kmwSbuhdeYcM9808lZnfXCeBT02Yd6xxxCIX7WMgYQf6tCswz/rdHEcR/TnxdJZdKRRQ/mRiAhvA
oarFRYsj7JXGQuBtr40spDMFhnlyf0+MusRPz2Kil7IPby5QF9a87hGjKzK173qHI1owXHuiTiFa
OIvH1BwzI6otXj9f3IxcSZhozlQd18pKx6wHcTs3bCEM9t5L9Rn0cAeIh5A6J0fO0xPiOn/MPGHA
fAxwK7Jv9vEdUuWtEVN/c15MlU86D6BkOZ0nVDKiP7l8i3gMhEVVGJCfHdVhIMK/Y8Ygf6cShWxs
C/EUR6G+exIsMYbacu4Y93y+m/LKAhnbaPBrgcARagULoHhTQdHv4KLDNe485PHYCIgrU+p6oQjY
Od+xU/lSGsaAz9F2xLarz7pQB80qnoP/k3k35hcakf5vewfyPY2ocBoouxUgYkPSf4MvKpo7rZpb
sb+AGjSvZj3SBkiuuJEtp5azAuNu3zE2ZWaT6mdkNM5tlozNKFXmeFXXTVv6I8fyAoIDiKu27dKN
SbXNHHvWbtF6QSEFYH9AzImOlpLVPEGfoOjlYKwitqm5P96gGFvZAd6Kf+Kl7KEDwrshKFZAuA1z
LXuT8Q0kV4p4SyCgoLMttZSzS7xf+rRG4Z3xAY5TeYfRLOvgRhDRZSdXLaCBYyIH9HPCjW1RFDPH
TA9vM1b8JNKZznPITW+D4uWUB80TxX576QwakOwagBi3GPkBYTHRWwjO55SvPqYEPqqHvAxltIeQ
9ElJ4ZTmfk5aEDR1goGzw6zFRN3qzKtmFlJBksMLUmRycGzoh3lz6GlFVC1yjrwp0/hgoG+ppg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x214EE310B23A180"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
content-md5: I7AdO8UQI/pJdZIVbiTGGQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 440fffab-aaa6-4861-ad8d-21213e462412
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-8f1ff596-d88d-c4e6-4759-0df9bb4c5f6c/test-blob-0bc0886f-c9ce-d2ca-fc26-433a21c3318d?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20CEC5A2B9C4860"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e29b3b19-c70e-4cd7-8180-4a74183b5fb9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-8f1ff596-d88d-c4e6-4759-0df9bb4c5f6c?restype=container

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
x-ms-request-id: c18c19e1-fa7f-4173-aeab-acc76864826e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-cbe39e27-a441-8bec-4ebe-d0031114cb3c?restype=container

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
etag: "0x1CE2A92B6FA05B0"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 466017db-7dcf-4fde-82d7-997dba94703a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-cbe39e27-a441-8bec-4ebe-d0031114cb3c/test-blob-745c5132-78a5-f37d-8796-17becaabb2f4

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
yMpESaOtMUN8uQVuoYuqFQi8LU4TNQCvIO9Eq4wtwKMM3DpGz4GZhB8Z9+tzDlL76wK2Dn1j4JPJ
lSmzaYW2T/lhYsRRY0aGI6gu+T0VPBGdSMCKdrElqPumfDlY5RuZY6fxEayNqoe8L+vUNOZVtFgX
FSHFK9hHO7nJquYMLj2NlZaVIyplEJ44zkfGUXQVUMjhQM/61DfPqtXyxP+gsAGtRp9PwJEusgWC
jF2RgepFtFkeK+5tk8BfxnlVckuflx1GGArUxZA3so3Jd0fZPSjqrRClgoQSP7Pe8PkX2EC64/Q/
S2jgcO/J5nhhpBt5hYhQasQ7+hWZM9hW9dSWH9lMD5RSmvHACjwh25sMsZuXZWpwx257funfphiQ
iXoaMseeFJSHJuuXkF+HGh55jII8v5BpJVdr0JGrc/PZL4DCBqnUbpwHED5/2TcP9GPKZhqVU8rq
sAxwM0MC27P4vWDfxRN0pR7mNK9R6kwfXNwt4A3ZRNy22FWcZDtYBDSLhxzXLy5PVsD7rx4amMbA
UNdm1fqmHnmDKe2+2EHjjS97xmMvSCyu3YpM3ZS9mz+P3BNk8S855WiiUwZBkX5/GCHun9JjkAiq
uPdwWUDkxo2tLvstf5wAQeH6jPQmbEsMzcVzzvxtK0sLuTg4yYsovo14k2OCUZmF7l3waQMUhEur
ZIx7cfeRPwKwIcVjyHhV0s5mrdnoinsr7eCefcJI9zXsjGT+rE2W5lRg0S/UIibkmpY1rdZyw9kR
UIMW88I/aCqQdjsTVyWBz8aEiLhLV8u6ueIrE0leesiL7VzJgPORIGkFQ6vq0UNxs94Q7Tohxfi3
XDrgFFTgMvxyiGnJt0/S82dORRMfz+ieul9rTYyOaShjESO5sQwUJRGvd0jap/yOPfrS0n/lmIxR
QVn1deRv5B5AZqUsGUJbOSACcFifxBNi3BCSu5aofnmWZ2+yH7AsQJIpmUFXYiO3d5lf4ic0sn1G
k5jU3SmHmOgrlbLSqBpw1TDFdSrRC3ns2kP9SZtSYbTxbIsXWGNooQBZK81x5c5+7g33bz1TdIce
6ALlik9M2TP94TyOWH3NXNMpeN+sevV1flqNWvJ3nvgE+W9gghexDFKZdAOR8JWQKhJpKfuocW0N
cAz1v39BhUJEil8NbNm8eGyNEwXx447E/S/gDnT8W4cBUhILvEzTWO/BTWU2g704rbGPGl5oHIx9
MMJPYHfOSC7YCxnHsLsfursWMJUojnpxp2DCbEEpmTaGjYuKg/d48gU3XXejcfz1b2CjUev2VaJI
3bkWC9vtr3HjQCMwlTbDnj2Q8TACzTZjzP3ghkhLjzfpQqU+YeYqSa4GwDDZxdop37KtZmRxRQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2037B4DECD4BB60"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
content-md5: g5v3RZC3MnDhysUJ8pwG0Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: babd7eec-86c0-4792-999c-f729989d536e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-cbe39e27-a441-8bec-4ebe-d0031114cb3c/test-blob-745c5132-78a5-f37d-8796-17becaabb2f4?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 3eb28210-0cdd-2928-97b1-eb475291853c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2037B4DECD4BB60"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-lease-id: 3eb28210-0cdd-2928-97b1-eb475291853c
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 97de8cc1-2864-4013-af73-3cad4d7c6761
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-cbe39e27-a441-8bec-4ebe-d0031114cb3c/test-blob-745c5132-78a5-f37d-8796-17becaabb2f4?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-lease-id: 3eb28210-0cdd-2928-97b1-eb475291853c
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22032009055D700"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 37e19931-f6be-464b-9932-af48ec71e4d0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-cbe39e27-a441-8bec-4ebe-d0031114cb3c?restype=container

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
x-ms-request-id: 05289a86-2fdb-4143-98e3-0a78f5e5e06f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

