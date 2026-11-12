## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a0ab66ed-cf6c-20a6-9dbb-d85caaa89112?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_DoesNotOverwriteDefault_Stream
now: 2026-11-12T00:49:12.5908433+00:00

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
etag: "0x1BE7881117A78B0"
last-modified: Thu, 12 Nov 2026 00:49:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b13aaa08-be74-4264-acd9-9a196252ec38
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a0ab66ed-cf6c-20a6-9dbb-d85caaa89112/test-blob-3c4f7ce1-ce18-e918-20eb-112b604363c9

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
zbVMX0CsT5ByPzzsitwg4oIbJam4hoUeTcKAgL16v1lYD4/0XDHSNC2+ytiSLF5Eyy+pRR65EUYw
LRJ+LM7T94Dik3tMK4ZQSPB8+rusjCFjO7WO0Xo7nv1JxC4fVAhe6tNYr5jj95+oWfwuPReKg6Hw
GvAYRSYGp/V9A2ZXMPToHQ/oVNyJf0MV5Xh+DWHmvkGNLjoXRaWsUgijZvQ4UCgHRR8Hoi7EZ5qs
Al+uiJmTlkUlygG60NhqPALU5hlP3ZRPdsdC3xwSyMefakJF/spuD8+vE4UmTXVHnWUr8IGAXSXK
XhHSUbcpEgI6GmaVJD04ZdZKoMkPKShS+0G259hGHgwcep+4nL4XhgCD7DIOsXgn84qqNr1cuzXp
f1V1cisq8/xZeKqegMkXMhnIiz32Q0nJjvNNm+hPwL5qzxxoohPVWfg2tTjNiXPBkwOjkzD48jwM
rOQ33FgTCrjrNLGtrpAG8zJEv44Q+wSAiwjkqy2OcdzfXPUunXygIquA4lTBE+RznZ/9szKt+7Df
t1BPL1+LXMLUzVKa11a1pJ3jkBmvvngjcA2Nkb6pMmBFT+YrUPNM9YWS7EaS2cZJRw6VymuXL/jY
LL5R/csDK5vxVYdwilSql5qTHdExkZdHQ0mwE2f0rR/uUiQ0+ve6jsGqoIM+2b266zPRBBImp5on
CrmBUxcz/adogTcwdZyj2I8QhvATCGqM9Sg0I6kNx6uJDfA9ODqpd6Pb1leFinWWLiuDFSCqEwFP
9V7v/9r+WrqMpmisZaBUZw9NNzITB2uznvV9irKL3/nu7kLcunjI3Xud+eMM6siKLq4QXNvOPO7y
O2DlgdAIAMdvvXZdd62XhFq3dQ6Ip7Qs8lsDeoMdILJU6n4X41uqlfgcnSxRLbYBedeBF8bgapSs
uI50BIZEUZ3ECY0ugKH+DOAVbAqH2sWkAgGrnAjsdH/qairNNZBx10uPjSQp0vk1ggrlyv6KJd7I
0AGFmLWU2JQNRBV2MddPpJS+90yhezAIdRn+BqmBX0RMBGWP7D+V+7SPG43jv1EzlSZpyy2RJ1TR
fCKcldHqjOTRKixxwLdUKfyXEWCiJLbHynCDF5QXutwRvm8c+WXipI+pEpQkwtVvFaEx+hXzLlhs
1MphZ3RQuXBQXwFHODCWtG3R+RIhowibFALy5cDGHY8XsCSagT0aWFgk1GLTKNxxmkWoIjVFSjHC
xVJxXdSwiUJyL4cL+zMvtqC6/M6mx+wmgUp6Hvta0mXz2LzqqPqEdEsfYfhUZZ8SeGuVi01iG/1m
S9yJNWpGGF0iGCJ2RQ2lNYiChmbz0RuraKWQxEYXkL2+hF0e+z7g2UmbMkx8mzNd8FXF35SXcg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2520AEA5C9F76E0"
last-modified: Thu, 12 Nov 2026 00:49:12 GMT
content-md5: trPBHWOax6vTs2Vix1A5HA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f862437-a657-4799-8dc8-ed561250a09f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-a0ab66ed-cf6c-20a6-9dbb-d85caaa89112/test-blob-3c4f7ce1-ce18-e918-20eb-112b604363c9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
esDdzMW1UxYKiGW4wbCGOkqirRxXn88uzXIz1PFSsCgmEeNdHXEbI/aFJ8MX4nKsaRp7Ped6Gtvx
r/9Tgn4kuNg8kq/NKR3Yh4km0ncLFuoAh2vW13JAq/YHbG1yx6F3YG/r21DC3j/8orZeVEhj5ZkU
UvoTTeBm++a4xb2wZr/nr3EIIDuaPagr2TS84leupIbUXXWmZBOOhd9pCRmCTDz2d6XXWsVdehVS
53OsqRmOCiA32wlKQEpeeptbMDOOqY34xWqy10nAduJfVH2f4tvG2v/4S3EzrDZaeOAqAknhxD7m
s+Ou3DPXdmUm6uzNv5i/lFU0ll0cxBk0V15plnOYfo8+uC73GP7MIdULDcFKjblIam30rC7gyu7K
eoXUbt/xjWxcjgZpyHxXaHSIELdX6cqlICwGpNFhXu4/LZ1497P1GoBV7v6y36LwnUS5WLo3cpG6
L02z6+ib+jAYKprf3nDBk/Y3AvrL8kGJFQeMqAU0CLsMvchlQS6XuvTOmrQHEb7T98XD/2+W7z0M
KdbhDlEq5CHf0iCoXFHHoEgG/ViMggNIubFAcAhLds6LWBdYtauio7WSKD+eKppz/F8nj/HkgKfS
mVSg6XQZlFtRHQQ5buqcZFqi+VnEqY4WzXOpI+fdpthwhhxXArlAeZTjTAyWOo50iiqXQYZNDu/F
iRwBb3B0dHcryejNRWKgYn/F4F2CgJLlNJi8RWRSInctkXmcPwkjbteVa3Glp0XI998GiC2RQwiK
GzvXty8S2aZwoLPpAyJ1onGF7BUhP41T9E6FS5pJm05wEiPOS7aog5HKNQeR3/O9kea7DFfzaNyt
hMPhjY4LJgRlePD+p1a63GmDVgqGwRRayLq0jY/2fapHIcfzx/YDvw4CK2YCvuqPAS/ubxHSJsKv
hsTTVph0bvtGt4WOxxRyf5f7g5atVwnQJIxfCA2ZdfoFQ0ExL2h1jrxrvAdkATkae+951qMsAS66
AzILFGbtrEGLiIPTQVAvhvXZQZsCayJTRI0dH55X2UISdis2aXlWfQ/F2Xm1RzqfSlCtUr+TuJgP
uNDZ0IyjM65Bwcok+Rx7gsOLPJKpnv1SfdVOqYaCfr2TJrGpfa2CIqXKc4Vve1AzMdD7CHsFZRrS
hlK3VYoov0IMkNJr0gUWCBrt3ip34wKEGne2hnZCjsCX1vZby8wborRDYut+yF/K5f9hGIfvWqNQ
MjoScTjLygIR1PsPujxN0jt2NIAWBlIY66B34HU5p3xTCpmSCDF8eJjpbfNjuyvCE0ZLeSYiOSvo
+oWXVOmM1y1/u6+ju8kK+rzoLZletDB1tM0v7i1VMNFuqQ6r5COuXZXG5P97H1h8QH9qOgySiQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobAlreadyExists
x-ms-request-id: d470cce7-757e-4157-9acf-88f91d0a2b9c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:12 GMT
```
### Response body recorded for playback (409: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>BlobAlreadyExists</Code>
  <Message>The specified blob already exists.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a0ab66ed-cf6c-20a6-9dbb-d85caaa89112?restype=container

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
x-ms-request-id: 70cd0802-6500-4d88-8fde-1f5ef90c2a5a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

