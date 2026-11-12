## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7c631b95-9e3a-75d3-7295-95778a64f1f0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadStreaming_Initial304
now: 2026-11-12T00:46:43.6168253+00:00

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
etag: "0x1D98BC23A438D00"
last-modified: Thu, 12 Nov 2026 00:46:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 019e09e7-9001-48a4-bf39-63bba98ca61f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7c631b95-9e3a-75d3-7295-95778a64f1f0/test-blob-207e7b49-dd37-e6d1-69e3-dabf19e76fcf

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Gf8xwbXrG4pBMvSBH5Whkj+rQZ5A8EvXJkaN/Y5KER5OuDFEkEZRqf/YOgipUlbc8wI33yNSsCi0
WZpvXR789yHVMmZkXAL4WZefaLVDLdTwsQmLEjH7/AgIkDar4kzh3EPm1B/vd5cAP4WLskdzcSzG
fqwUcOTv2jZeW8zLTHdLvoxxXFm1ATlyi9Osb0nAlR8K5WSfzWte9/nokRzKNPIOQPS7ARTTEXxy
oeURQ2vsncaswWcTq/EgEmRfzHAdqFfgnS5UBJMKNtTnLSyGTbOO/PNWHnKL+5UDm++vdEQMVfmN
MKU8l5gyoYuSLH3FmsWx0dB8xonkVaKZUWmkWsKP2tgz+BwNUWRaI3zn+M8XPgAp/qJ0j45vqdsD
o0YujkfIA1GlkqGoo39rIqIN/FzSghNpelwfGkpJw09BCa4dK5U1H/V9caxegFsjCW3rYax+MSAz
xRPqqegGXM5SZ5nRTfYN2N1nVBBmCvoA/BHdXWKiwtiN6mWBSnYMdxXeDBjCUrt33ojPFtwQzLsZ
6qzWKf5rsKTAQ2OQi45nW937iP7hPqpWZn/a0qz7fR6qaGDJNk4WcltzAQ5Y5lL6aLv/FEO9OKsC
gMJ/kd34xMVE5iMuniSP5RWibT2b/n8t4Grw/Gja7C+0xraLluF+ezxJEwAuy8qWcC8tGstuZ4FD
UrFyCMhcafnzedduBE40JPIAUup+/hSgWYw5rNFkRl40R0QwC3J07KkHOlLyKGzh+fbZbRWWxFSc
0q48I7wnjzN4OrwJAxh/jGZAd8PCrTEfWLPbi9lJnYLwkznDN8jt4Kseeu6v1/bdWeCvVU2Q2iR9
HMsJSwNZL5w5GW/fu1WdU5YXozNDcIC8/TH4mkc1X7gURhv845SoxUpSdr6G/Z6LEQK2eTfwOqxL
TE3SYJVUBLm3ynQ5oHACb97p8frBNgCSbYhFfuaBJAxvsZdG1WS1/XEFzzIpUXGStAlZB0ixiRZN
P/MMDobSNaZoyu7Zu5l6M/OIvGfNaRsXs8ndKB3DvSiA+JZwqe/qMpmMwYeCufhv3tNVKM2ugNbX
9Vq89AyIpAzGWMMDCYoEnonNQKeUlfrRbklJbpRa0nfAmbOULT6NBB16u2A1a9VJUYpE4UAvQ2Bg
64bDPjZ4bIVLQ3DWb3BLQDyJGtmZnAJ0ABwJFvA3kFVTNEK3ysXmAk7b6ShlcuEa+KEDpSiGxk+E
Tj4ZblWUE7IagzstlHV3oheKvrLZDo067x1PNOsszG3zMnuHzZP5RtV1Su6m7GQrjAIR+wicq0Cw
3n43RN/G7bfOOmH68NWEkXjcY8OflAK5JKjpG9BkV4c71u4VwQH2r10317IDMJwsjGqQv0d8EA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22ADAC46A1491E0"
last-modified: Thu, 12 Nov 2026 00:46:43 GMT
content-md5: dvSDnM3svly5kQCJKRhFKQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bd3e8083-e6a1-45c3-80d9-b6a87c5b5163
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-7c631b95-9e3a-75d3-7295-95778a64f1f0/test-blob-207e7b49-dd37-e6d1-69e3-dabf19e76fcf

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Thu, 12 Nov 2026 00:46:43 GMT
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
x-ms-request-id: c454355a-44a4-42ad-9d16-9d55e6cc426c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:43 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-7c631b95-9e3a-75d3-7295-95778a64f1f0?restype=container

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
x-ms-request-id: 568ff284-81c5-49fe-a478-44a4d2f6c461
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

