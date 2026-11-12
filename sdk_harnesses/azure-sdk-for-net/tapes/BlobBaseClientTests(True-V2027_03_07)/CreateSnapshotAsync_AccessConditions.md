## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e3b27b79-806c-dc18-b77f-7f2799996fcb?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).CreateSnapshotAsync_AccessConditions
now: 2026-11-12T00:47:40.4686686+00:00

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
etag: "0x1C678B4A5D4CB30"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8199381a-43d8-47a8-8213-704fb0d34845
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e3b27b79-806c-dc18-b77f-7f2799996fcb/test-blob-667a715d-75b5-18cb-526d-b083cabb0ba5

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
qMqSe9y3zM+tCa5TAqXWKejqDPwC/AwDsJmR/8+UEvt02n7OBvTvpqWruKzHdxWsloeb4K8Ooqy9
j8pCJsz/Gfay3igmCCP0+2VXV0NgPDiD5GlI+TJMZTfSEHcprIDYrJ+1FJjtho1kp+VJt0toXVOS
v0Fjth/EZnnwU/esyk/lfqqkqyefll7b5FJNAq3sarMjl+w+dfV/8K4f/DKWt9yWZDmgxLIr8inj
iNHNd2PLBOlDiDNipwm0JLp5gJkrRSx1tp50S6UB+KXCWu0ksnlKU/dIUi+oM70w7KD3snKPt0Ok
V8DFV7lEQpCOn0wckHJALiyi4/L9zYPhRF8FCUYzM6Opf1q4hfw+BBCfGpRwFFsutoNF7dRQp4o9
5BNZPjhJWmypchEXiKkwY97iXbLvcDAD11LC7UXOWdfPe6Dp5MXXVb8nx6JKFi7ZFYr1bkrYTnPj
Vmflh20n2hg5SA0JR38YCgfyx6mNucAk6di72OuM9y0tBo5e8s5SAOyJEM4h0M4K3WNC5obKVZyn
wZ2UbAItrVDf20Hxuhg4n8e8BKjyAhkKsPuHSRGmYrDxtjAxvpTqW2N9QfSNGSJLCUa+DVDztL6E
irsGpmM/OXmQ/wPnB+Ez0qlFdMAlfZbZO0DK51Rg/QJyrTPY47UAPQh7/RoeZAJlizunrkD9Xg0k
LWojdVEkLwEBdFqtW+70RTe4qoB8utc9ZVwZuU/CdE4ms7ZK3ci3Vs0YHO+ntzBNs2gJRbSMqHKS
5RD1C3ayPwAMhqc4qWhuAFOyZJ7olq0rywbmuC6ZmQtDuPi3wktWZtzumjGJFAkAmkVh2kPUqk5j
yT9wy4bSc+yc9fFvtz4IXP7B+ft7orf85R7pN7/Hbg6pVPgL5ppWHCdE7B8YkOMGWX1FE7BS5yeI
c+Vo6Dst1IbixmJF/HVja93UN7WY41Q74t1BgltdVmzRg3K17jTrFxiYNcqAwV0H4ajTfrBx74+Q
LAZe61ErhG/1c3gDrX2p6R+d/66KuiCAOaGyiti8YJPiJMEujSzGbbBbik7lBDMrKpSQ0/DhBnHl
3bGwePqWOBLkIIm7e1zz1pL9Ly/SmzVth2BDLIyjAB5PSK96FvS2xFI7AOOqb644nP1e5NdBEkJ8
QvGZUgyGQB9qazKsecCeR2rdl5pRwxexC5CPRRxHDTZt/tMCHXFFtb/DQAN8jCM8v51sY3qoKn/a
50d89vsDIl37P3rsnCn5mOLajYITNX9sUoV/26m7xNNTJzUpyb7EwB2mgEyoUCNzcsuYzZ38xrLI
D6N1g0e0QHqmmHTzz84kFsxlbbQyxAJiDGjeI/c2V2CDYbkaTj3V8UDSAbevf6P8dLfQlln9lQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x246842EF6AAB9E0"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
content-md5: 6JrZ762pYyzmMaLDW3HKrQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 04cb394c-aadd-485b-aae5-7c82dc38cefe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-e3b27b79-806c-dc18-b77f-7f2799996fcb/test-blob-667a715d-75b5-18cb-526d-b083cabb0ba5?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:47:40.5230000Z
etag: "0x246842EF6AAB9E0"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 207b2764-fd76-4f6b-a133-816bdb53453f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-e3b27b79-806c-dc18-b77f-7f2799996fcb?restype=container

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
x-ms-request-id: 99e744c7-edf3-4151-9f7f-9c2d225d2737
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-7613a04b-d5df-831d-6f41-136f6d1509c7?restype=container

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
etag: "0x26AA1AD5C952FC0"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3f4f96d3-f17e-4f62-a219-07ba8da95ddd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-7613a04b-d5df-831d-6f41-136f6d1509c7/test-blob-747b908f-c260-b24b-8cc4-e1ae3f66c007

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
hstueTvG9hwiTpF1nA8152vwQQbeiTWIVWDpGvRuQwmBC+mipo+MyJlfUREw1RZ9j/lDTyW5Kf2W
5STa3NwntAuI9JAlk0HbY3htfjcjWH9KbIr6K/Pkx+LsDMBrsuu9N50GqOGGV/y4aOysTKrFco2k
kHBRLIkXpC2tOYeAcLGMr0aaHbCewxSOQsIHN3s4J5kyxiF7bAsU7gOz2B51N/c6IJxjKlTdBsxb
wunGD22ydRHtTqmPEUM7hi6s6uv1GQvLzRbe1P1FVcBVH6khTt+WAWINh+lNqw5ZKKMlMBvgZane
+kJW06AUp/jpOvKZGThPFuiI6JEhfSEIhaxZHySkdLkAQ1OcQC7C+ODwY3Ecvw5r1RoyWHwXvH0g
TU30u4jTRcU4mdbls9W6xvCxMBmw68ae7UkKcRw86YbVfPLgzj1XHR6r5CU4hiJFeJGMZYxkb2KH
Vc0+ydOp/LBQDzbj2fizWRP6BQegZmYnxfmKr4P5cQyPWHhvGVNKAud153frYZ6Z2Qt4aWpb5u9n
FwTaHkwsVp0qU4CAQ0C/sAMfKn7vO2Na8dZ3gQiiNHGICAJPcOObSZDZwQ4dGZXLublmO7xxd9yh
fy11tNWViB4O9zs9cD8gg+HtFnlUPdhAq8hPO/m1F5AmrvC1JZS7RDjwDiFZjkh5Rrfag2FiTEJV
NQgNRU0kWeCrF8FOal5NMtFAZC625x1/1fRC25Mvw2GtX/CLrv7ry7VArnaGKttZjVGPIegUnk7r
jm9Y4n1Ne1NgoAttwYTTVZl4djin+KsY6E5CoKJ5mcCioCCOkug38zMiJonQ68vNvMxPmygVQ5XE
QPkvC9ux5gdKyyBkRMKwQYIFhNEhR/2CdOPVKv6XjFyKylLuB+hYcUCChh+qaXgKnlqmEL/Eo/j8
rZb33LsIsj/E2XpwwTmarROQnsHd1wtry4yk8XudxSZZ8lpRYJWFedPg5o/9mtwgC2OrMwQ2HtaL
ixAvZMHDJhRTFs/eSEx+CyXu/fB7bTGvg+UX8ZEiItOExtSEVRUSHMB7qoMNQsMXLSjfSCDlDx3f
gOHbqzSCMfT7WoJ3+bUQ2+AwAMOtokEiAMNpQ9myn7a3pdU0N3CL+XmPEedBnzRyzmw/tA9ZMd2f
uKtxGO0aSbvLwFTg3KRvpQZKHpFZ4WCP93RtcuqnXXP3lH7FGeGLdMcsdd/gkvLHzw8IDxJMRtdK
4iF5rdbRJGPg6Ecmqoslv6rJLWuBr2WBpaLbnk1gq06meze/EcfxW1F8/6mroSWD41BogxhsyTK7
+Agz9YUVgD35gC9TZa3i19IaBLC71gN9V7v9+Cg1OrEFBBm/vmXLZ39ssSD2MH2ihqtGUcSCAA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x243C80A0DA94680"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
content-md5: ZokIhjD2oO5VStW0TdIe1A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 618bf70a-4f4c-4b77-b178-43c4c4c26ca3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-7613a04b-d5df-831d-6f41-136f6d1509c7/test-blob-747b908f-c260-b24b-8cc4-e1ae3f66c007?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:47:40 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:47:40.5900000Z
etag: "0x243C80A0DA94680"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a04872b0-bacd-4990-a7ab-8a83c1ca8df0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-7613a04b-d5df-831d-6f41-136f6d1509c7?restype=container

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
x-ms-request-id: 856bab46-1a75-4b76-b5f4-745649dee4c1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-9eb60421-17ca-1587-c446-7d4e61942319?restype=container

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
etag: "0x225A7076A5224E0"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d2b3a79-9fbb-4d81-9420-535aa3a98194
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-9eb60421-17ca-1587-c446-7d4e61942319/test-blob-309d4f6c-244f-87e3-273d-5b727ceee8ed

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
ggT3uwjHAFD3VuzaeOEbDmOR2gImUbD9IS53jLsVmNZdj8xdnGcRpU5NOfg3CA5FIU0O6xPlxjBT
+prZT3OU4b4WfOgVvnH7gDSz2Ri3xRggMWtuBq3Cd8ibCaHNN1XauVc6IYwlL2PbE2rfMe0YnDWB
uB0IJtoRVAQgerTPLUjf2SDAfaOM+wIHkvNC40bag21sTH430pN9KM2HBbWuC+YhAFjNVx+R9b0b
AZPnz3C+RfZGY+HJpwaMQ1TWBPVNWIcMIOPtDSxO21bBHNH/lVlcyMC+aKgEV1hRQBTKuvDHzqgM
2q6N0TjK+IiKCIs1ja36ejs1jvDfCMiKm8wXgyBl+U0o87qrzveI9G8feU/NHLNm0D+0kj+4LdLl
AzZrsnRoJQ89DZnzT6xErZqAv455vH8YsbPgsGcOcMboxcvBHEH7t1RAkA4ZcoGTcOSlN21EbEa3
UgDAh3SnLpzTC4ngg5FZhQg5OCxw/z4yTUCCaThYo1mFCslAOjDfmGFyRWf3su1TS7JlCjMZRlPC
jjk0JMVje2cvW3jHGEvXWaDK/bnWOptSLx2G85kla8N2fqv3q3ObDsoAx1Z0izNnjbCTT0mZ61Od
4fWo3YjOCvC1UZqf4K4sLu/v1nJF3qPqH2Xokht63JNXWcl+8zBCMr1lvzqYx6wCZyBZqhThWANR
vr0i5XfUO3QGR4fkrTu+raS13x9pUVe45Sv7IDJ+dgDGLDVzH0xFkIPFkoAlHbnkmvxwK3nk6Gxl
agBM2BpCiNCHHoEGS45Xb06bo7/Xk8dxF4Y1DUqH4UTIDbVM+Ldpgwmvnf843k5uGbwqSEWtjdY4
28GUDHqFADw8PT3ZC3aXMh+1KPXIOTg3xvSOXJj/G3/eEx311XePKZ3C+6ERlQ1FkxYl+GXhcKGI
XEWF96OjPSK++vdZoV2oJf5XBT2XJjHnSMmC2SMa/aN7bHgxCTH6H71+UpsV7PG5fdJmiWpk8TYU
nq/ZIWT+o/1U3TTkdxvNXeZ/GNOW0VvXyFxRs3M4F3tCHGuCIf1ZgK6dwQ+91AW2mSyE5Nhifs1T
AVgIrfCKG8W4olqwSjvpJpgk+A9MGvRWmhlGtDOj356eLh+kUdK+E6ZJBTGrBU/wm70/PoW9B+dk
sRLWQ2eSFcO8EhscRNTGZeVpAhXCq5XKVhl1Y6AY4Cc4P5+/588+tvBu7vMz1FboeNifUwTSogZ9
DO1OHLEipDH04wQ1B34WKkskVLyhl4HCjevHeI0iZp2ZQdvi8Jo/S0nCPvFSs3FaiSi4rU1J3HRs
i4/FWyyj0n1mm8WiNDqx5Qhz3liQcNl5be5karhPT2VmdWUKefAdHmxz6xert1XuBsdE1v0b3A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x253B82233A0FD00"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
content-md5: FQRSQ4ImQFyZHQC8p6FRbw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4a0b761-c9cc-4446-86cf-335706e13863
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-9eb60421-17ca-1587-c446-7d4e61942319/test-blob-309d4f6c-244f-87e3-273d-5b727ceee8ed?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:47:40 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:47:40.6550000Z
etag: "0x253B82233A0FD00"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 813f5cce-c648-423b-88c7-8dddd6c3aa82
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-9eb60421-17ca-1587-c446-7d4e61942319?restype=container

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
x-ms-request-id: 0c627a5a-b04e-4506-9c3e-6437ffa353a3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-ed4cb61b-3e3d-c468-164c-603bbed4a66c?restype=container

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
etag: "0x1E577AC50E77D90"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3375b9ab-719f-4a7f-aee5-8e51d0bee253
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-ed4cb61b-3e3d-c468-164c-603bbed4a66c/test-blob-ecc05518-841c-cdc1-b599-7663f10a7967

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
S5lJVCwC4N8Er9TLS3uWGWBaLIE9L7+W9H43pMgF0gvT+fAki1JAFXXg6Gyv9YI6AlwDlt73KhvZ
sl+uyzsW/9zI+FGKco4NGhYMXEZT5v/7/aFsAjwt287VStjykko5yemP5/wxr4/O9XzI683Uhstg
ss2aqv2gmx2CtSe1GojL05Jdw/8Cyk4SngzAZO8BAMQNkt99nx7r70vfrvloGNrz/Bg6dsLLXed/
iAzw4DYtgbVjqIipTjRzcdS0IhxVqYUyzGjXxokCQTT3/hcS+w4UsSxDBW9SSq3kxgXtFzvLKd6G
vhTOVrssYWdTsVAcYXbFn3HvEqQW4IG68v+EFCr5LNQ4izz6RltxF6QI/plcx2WOJ3fK2xc5cN6S
E2O7qEw9WoV85NU5y1kVfvoADeHoXSua9eyyL1C8/hpeaDP3tW5XyqMU4OOPVFwetFwcOWP8qbU4
IbJgiis0v+W722ImHsmMqUI+1H1HCqCPlHr0oMW3Yb59v5S89kB33yH91Hn595aTkI8gvtU48BYR
0PawQB8fA3mkqF410LICxvRcSTYmlpzkYBA1l6PoRc59qiVJx58C3tAAVE83XsDdHffh26bf6zpZ
zN8P6WzVu2KQtyWMuf9VWWtmJkFNrAJPWHmsB2knnb/r7/q/8/VjK5nsp6aaUGT4i4E7ecT5DB/d
v5DzKLT5aBpmockElWZ2AvqoYAVctQgUs3vn7CT68eLb4jNkcALk8z6LNK6b9PYbxHbKUawZgAqH
33U4EXv2bLDmKLMzEZL4w23H0IBaeb+FzCetMKA2wWEp3JGNrOLClcf+tMtC6LPk0Y4/UrCJLWa1
skRUSDwPsGdRCTUBahaKBDq5W8T0Q+R0yV4S92+woK4r2PqebkyL7gRk8d594mZ3tE510NKhwG9f
33/d/bn4oGmG1pIc7JXtLWy/kFIG9ub3m0IgOtDciReKPo7NrfFLbFB19wzUWsi4iKJl4TAdWeiY
5mJ212WZqkx7ka4HIH97dCQBkP/aI0B6aLItdqfnbeSmNMeO1JTq3E2/WMgasWgj6m0LG8jpvsMh
/G6zazOlkyTJYOu47J+PF7SyGsp4YLdKCow621IcvXUDbdgmN3AZGsWjUFB8av3NfAQUNqT5qZu3
aGGna7jSraN1tH/GaeBDmAAF1A9nzZ+ObF9OB4bRCsM9b84Pcq8N0aOsBrV+BxMj0J2k9NSMUJrB
GP5ZhKUdpKq7ifkRNCZQ9wJrusfqEGVLKjboLBbvsB4zTVqwtE3+j2ELw30ZEpt3U/zSIJXT1wiZ
DVluNHiTzNja3efMoEO0bCtl3k3nMRibcdgaHZCJYHVRFqb0kFrpePalPjS0qrO4HbNqbfm6sg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x263CDC3C9C876C0"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
content-md5: 40lGQnqosTeqYBNVImilEQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b032897c-de5c-4cad-bdf7-3466862cbb54
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-ed4cb61b-3e3d-c468-164c-603bbed4a66c/test-blob-ecc05518-841c-cdc1-b599-7663f10a7967

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
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x263CDC3C9C876C0"
content-md5: 40lGQnqosTeqYBNVImilEQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 78ad9c74-c85c-480b-aed1-a1b7ec7b6529
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:40 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-ed4cb61b-3e3d-c468-164c-603bbed4a66c/test-blob-ecc05518-841c-cdc1-b599-7663f10a7967?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x263CDC3C9C876C0"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:47:40.7270000Z
etag: "0x263CDC3C9C876C0"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 89a5b75e-2e57-4180-b608-fe873951dabb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-ed4cb61b-3e3d-c468-164c-603bbed4a66c?restype=container

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
x-ms-request-id: bbd8659f-e53f-4b6f-8dae-b9fd4bdb9a71
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-c3d341db-789f-48ae-517d-717a899dc0dc?restype=container

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
etag: "0x210FBF670B434E0"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e73cec1d-7fb8-41bf-b017-f8fb982c393a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-c3d341db-789f-48ae-517d-717a899dc0dc/test-blob-56667cd1-f341-e6e3-c625-6200dc1ef27c

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
l2TLsryWSf9HXe22QzAqGlzXmfGSZHDoXez8ehaubDKL9OMl0g4gOjJnDuQGLaOW+0ejBYUA6TLz
41XPmc/omfG6K05MBEhOtl6/K1WM4TBJZn7OCmasigqwMe+5UKBifnXzSwFUSfb+VU4mQb3cZwEk
hTNQGY6KDaFEnNNZlWa+Xa3gmJUu9R2Iz7UYhkhM08rtlMptEWTnaT5fD6wjpcDnaOQQ/M5r9ZAV
yErYcYdZ98gIawCbUUtJ+C5Xz+VwZSr0MB1jPNf7gp46V0kaDvi3BhjkGjm/SxaZxwOgFCaqpWMf
5EBp9brxDeliYfoCLuo2oMjNjErwNOQGynXTW253j7Hm+iq3TRFd8g1QXeoclpgZaXNe3BkYLq9c
YipFHrF669FIGzPAf1K2b5k8oNf66jTcuvL6GLKYzcx6W+rnGNRb1XIY1HplWekhp21/247YYXj2
aGS/gNIer05nRSRnz1fE4cpk4ha5d2AI2XFFGfI9ovly8K9wm1Wg+SQs/RPFudcWuvrDc39iPfAD
t6Zg2ZZcKaMq9d+nVEV1xOjxjHpNQiCZL173ei56ELO/beSuPyCO0NRvm8P4bma1Ta+WcLB2tXWG
x6k3ZK51sOUr6OZgxoXIYryl3adcoMD4Qix/458CSLdvKHh2V2sl+urezYZ/VIcqzg700NjNKSbp
PyKC9cxFKJ8u8Z4MUgtQgOK8ftM5eO2lVRWQDnffof9SjBdJowQdmaXmUGLpHXsDpFD1EatSr8c0
3KC3tBooTlCeusX0B9zdnuUuUyeKvDeZjWom6pBU/91PFMZkZuSKvgESSmK1D5x0F3LFJFyfqiBo
HSevAWTASrvopPMVeTgAo5QleHHV437NstIdjtuAsGml+0i927ydUv+nzWupXp05xYDHejKvkzmo
4k+RorzfZ/OJb37wQ8jXiCVyLRYTJFQ05MlauTU39mcOFPhtC7BCx2V3H+4fSYG47/IMPGYjlb36
Xb7zha69UXgX4S/Panx1L2WxnARmFZpHoslDK7oA6386c67yT0K3uc51B2dS6IV1lw0Acvm5lEcj
q+Pleia+FvavlPfOg98j+eI28Q0z9blDzpSsAHiGgd5mzqNe0j+ntvFwolSOpxMt3HgWg6M577Yp
oauREhV+KRMYZ7Q8xCejjjocwlJltSeAfiMAb/47Ld7sNDCTFqPb8nlAdUBf8RdQcvRoHS1kxOuE
EZTyfbkU3DrVUJD3EHiXQNDZJD/nIY0Mr/0J0w+xiHBEDgUP6XTALJgFiqCHWWJ80N1ci6CsnfAG
5c67CwkqI8cgsgFzh1ZbGPim4ZbshFabjQIxVP3PmHEUCAOmBCCP22bZZ6dgCUiHAXKoBbxZGg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FFC2325BB6CAC0"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
content-md5: PV3bwYo8G1A5gbGa2jUEeQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ec13664b-e33f-4ce8-bff0-10f3a3c759db
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-c3d341db-789f-48ae-517d-717a899dc0dc/test-blob-56667cd1-f341-e6e3-c625-6200dc1ef27c?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:47:40.7920000Z
etag: "0x1FFC2325BB6CAC0"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 23091adc-20db-40d3-8816-c9f7fb373dd5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-c3d341db-789f-48ae-517d-717a899dc0dc?restype=container

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
x-ms-request-id: daac5f39-93f1-4e36-8a11-85355b0f4991
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-7d207861-f906-cace-5019-905e7e52b514?restype=container

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
etag: "0x1DCFD101CBAC9E0"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0bb90b7a-0f0b-43ed-9456-1f5a7acac933
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-7d207861-f906-cace-5019-905e7e52b514/test-blob-300617d7-1d13-3aae-84b9-aa538b2792b4

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
u+6iLuOjiOGXDhaOz6rKNEtd0O62KAZEyeX5TU56PymG26KQsIYxM44kmAQGIGvZ73YILVak/pLn
XmX9qTuTHM/tB/MIOYPFLJxgkY8CPah6IF3YchHS4t0PqFIhM4pTkXs0GBh30LXyQgC5Q2wC5SC8
g4nduqq9GyUW+JExo/kSDQAUziWQAk+n5i8RGJ5wDMMxZa8AddbRd/3zYdgkwJ8HpzZs7hb7LIA6
NdR6rAKGpuvNAD5JEZcqQlYonKF2gyWQCXFnBB2sNjkvxj8BV8r6bbvsVsBhvpWfQay/04/fw7Ku
6qOQHqHNIckEGktXKOuMLS7lii1lL0rcyMJx7GOpTwONUm0naU4ZHjX2XKRJRxnAM6Vh+jmESbpY
tFXfXDRmW8pHydV+ZMPfzGv4b9KmkoCosLi9SFXKCQmyz7X4OcIAjwDZAX5DQs7igS3NjNnnsSHU
Nqt8qRN1fcDMy5UN5pKo+N/RzJACZW3q28cn/Hwvyh2UJAMWhObtZIS9dnY51JqbJZT6FeSQ0tE9
kc1MTYFEnAF3ecKPkXT45GgMRe73sAYsjNfnNbQ5BFEx2PIYoRYCedp1wVvXC5MgATF8g43iRuHH
H8GqXGdMPnVxXbiB4EJSCcsUge6rVYBDxjOCvYDET5IRUYJVWBxyKIPmZq7aniHvKXnBzsXyG8lA
ZpUzyoD0rA0mcI7A/bGvoVlrxe/SaCgSk5MHA4HMHjW4FPKGPl4C8bmgtC2SLyzIESxshlbabv1t
ITbt7aiMWVFZB+i/KGP7aNM1MbT6gGRmPvFVYJjf3qX0GR0nFQQRE1rcOSdDCenIcR6CpDxJc6HS
h663N/i5eihDyg9F01PPJB5aHUY8IjUHjO95XDlpqqV8VI1VWtxhIr//AD7ag53LsoAe71ValmR5
r6sJQB3u2R9pyX/FespB+PuHPCH3LQlSrqm5SrtQIb0p3KsxWOKhECcecbkdBji13PZZ01pCgYGh
tpJzNI5kGajCm54fEKAZ5Sz62LxPNKhxBG7E9k5j5lopj6FPLduYulcRW2qalsxWQO0tR6nFUYHq
AjAgnyJaXrRD9YD+ybdRYh5kPtk91m2hbrVgNZ+xZD0fZSqqdxo0tvy1VqBMWHY23OWKYBOorCzC
fzBt+SkVkpFC3mSMpuoEL4fch3/NVBY/Klm5JgMqd7j+5/jpx7zTn8QPCXkSqTb7hjCLzCSs9Soa
Lc/PXGuNGGerjb7yGmfKCOi7vkqdLYAjvqDSnqqUUvHNz5rtA0NYgfERZht3CGzIwMQ88DfffQBO
rJ7Lunm8FzrMJErN3QSkYzxYi8Zlq7U0Cd7mV2K67VKZnleljcZ4VU/gquQh++O/l436h/I56Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x261D8BAAE977360"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
content-md5: iGBTeo8KlHbNmcGgVnKusw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: baad115d-cd4f-4ec7-a1ba-c24eaa110acd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-7d207861-f906-cace-5019-905e7e52b514/test-blob-300617d7-1d13-3aae-84b9-aa538b2792b4?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: b097e801-d69a-d8bf-1236-f8333fadffd5
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x261D8BAAE977360"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-lease-id: b097e801-d69a-d8bf-1236-f8333fadffd5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 36ead8c7-55a1-4c76-bb5b-41c948b0e900
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-7d207861-f906-cace-5019-905e7e52b514/test-blob-300617d7-1d13-3aae-84b9-aa538b2792b4?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-lease-id: b097e801-d69a-d8bf-1236-f8333fadffd5
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:47:40.8650000Z
etag: "0x261D8BAAE977360"
last-modified: Thu, 12 Nov 2026 00:47:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d2c155c1-0460-481e-a317-0089da059a54
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-7d207861-f906-cace-5019-905e7e52b514?restype=container

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
x-ms-request-id: c36cefa7-c94e-4ef2-b40b-7196282e71d9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

