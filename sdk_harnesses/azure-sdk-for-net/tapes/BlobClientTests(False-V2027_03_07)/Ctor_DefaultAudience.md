## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-79e3645c-ea41-e68d-68ff-508d538ea20c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).Ctor_DefaultAudience
now: 2026-11-12T00:48:54.6446204+00:00

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
etag: "0x22DCB25A46299E0"
last-modified: Thu, 12 Nov 2026 00:48:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d9de9f98-b36e-42d8-bd51-57aa64e6481f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-79e3645c-ea41-e68d-68ff-508d538ea20c/test-blob-e7f685f1-9dcd-5126-eb59-9901fc3faf73

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
Os8ELjfKXuyfG372jap17RDwy59u6gRFIzeu6QUbZfXoxvN+OJ/Dkgb22iZrlli+iWN8Y8MDnlDK
vgsAG3Xng7aJDse297RxLDiZdw/e2oze8F+inwEx5Ceis3mTwneQD1Zw4oiRB5KuCjaKaiZA7OR+
ISsWROO0VyqfFEM73WrBCGe5bvcETejM9JTLpnoBYseVFaFMespzvIpd8fNPcy3MyWK/h37setRC
SVBO6LCvnrF8pcjIdI2cRbJsplv0fYBn/90XQdpJqZvMCTB6JNParlJB0s1lA1TUIkHLf9N5TczP
5+nTl1zXM/ws/GtdIiHekvgIs6qyAvuIQx+YfSnHU7tjqjzpBhb2ap/ROAbpdgAf7ezacJoiHOTt
S1Q9PrXSZKmv+Xfl9YziEkgK4cr1n80feZA87eIgQY1X+7vBuCvp/9NdOX2IOvhg+F1SFzsa+KuH
HsUllXfGjrjqjfnQIFocIeL3l2VQlj6Y3PWFzipSPQIPOplmxGlblqrEna3+kNcDNfZZI2FGN4eH
jbmCQcCOmE/2wObAtlx5mwC6i/iQmUsdgZkz+BqhyQMS3zav2VXqNgVdCM/xQ3+Z4IdgjKyO9vNt
ZMAnWp81VPfirtYlycKrz1TzMpF7LD4ZmhiSQTxXg+hDQXSVw9xlKLPYDpWocxbFtLxXm8Ri8jiC
DcCHoxO6iyru4odOFgx4jQreox2ocSYBzYyA/+ck4E88E7Yc3oWfHYNqupCPdp6v3w65g08a2Zya
hdWGOotDyQE3EQNWW66EPoWaPraVclbu0CDZalwAIjoZgVmvGOP4J/GPV2WaWYNfNUTJf5rlBBN/
mGlqaV6kN+/JPNlV1SahoRfFBhrxU3acejUYNqKfNH1GMIB5jb2S6iB10R2pCl8eKN6CH/74jUTy
zu8ojABMKQdcDqSmJxRZMxz6e4FZ8m/V+Q7EHBR+TaM7h7/OaV0fKKgVTPu7eADKKOzi/hHCmdt/
U5PxiAzy3cEBaqBUi8m+21LZRKZ0GoEO+vMonE+ReO3kTxbJLaCbIm46uQ1fdZ0iIyO+6FU1CzgS
444YykFycPKycDyz9K2yPiE3OWBzroRWBXgr0o+YrkPdt0kRglgtx0kbrARhbi51C6oz/tHYnjUJ
wsTIRp1iGsH41j1jobvJCXIXWAF/9JdKtsblZLByBRgUB8CTZICruJJDaZjxEWrvavRfwEYzic4t
fpDXfbYQhtAkT5n7NaXxa59vPIv+WKRb9fq8EkTS4H3yZeXw0zvcMuLHzcLR9DRPbVWnxE1CLybr
e4e8VHOMUW4bCM/AAZdjkwmoNoviigHFbaXvKxwwrza+BFi0H95uO3tTtetkjmu9QzBDmfiaCA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20ABC9239DA0E20"
last-modified: Thu, 12 Nov 2026 00:48:54 GMT
content-md5: lV5+qSTiE8fdHsPSeJsaoQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3592e934-1509-4077-a9ee-5dfbd4ecda92
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-79e3645c-ea41-e68d-68ff-508d538ea20c?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c24439cf-76e3-44c5-8b95-644b4af4591c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

