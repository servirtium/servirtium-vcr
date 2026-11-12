## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3b8aaf1f-0da6-70a9-66ae-339ecbe1b47d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetPropertiesAsync_AccessConditions
now: 2026-11-12T00:48:07.4533913+00:00

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
etag: "0x278A1A26D22C3A0"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fa611c68-969c-4fd0-8aed-030eb6919e17
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3b8aaf1f-0da6-70a9-66ae-339ecbe1b47d/test-blob-a6a72cfb-1d90-93d0-7464-0ae36535f30c

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
sy+yHKofEhCwPmevi2NBeaZLPJEtdyoB3/bHQgLFCzC7JuqbLpjS2xqX9VK2IAgRIpE8Gfhh3zwF
sT2zWNAN6zM282R4pkoOeWB2loHYS77uth9xiPE4WUeuln1aH4NKiQofgCyjmHtGLqCX60m6LWZ+
xKKwnGJB/podyhDNs1ndLAx2uMqRSx2kKlpQoG7+82kX3Frhmuyo3YKShs1reHpHur48Q3Sb7HmE
C3EH8F0rHtenttf+/JIfztpI/8VPOLHgCeWvwq/0e/DhXI57oe0kZmf2w8KjSL0sHHWZU+yzNdK/
J+Z3e1wnsjrnHKADpCztI5heWHXvPcEog6U6WygDLie7u3oGrOoKzxGHvCsdKHdIrC9UVdxd0Okl
T/i27VcS5O55SOmy5netVIlkZ4GVC1ou8a/5rthKXeuQ4VzyU+K5ddg9o+CNlcW3pgFS+WhokESd
iPuoGTUVLur+IgQauwCnqvKoV2d6oFzpQQjX92SCJ1EYVcrmEVyiJ3X2j3PAneoAq092wDjdIuif
vtcsPjeFe/uzAmY1wJiVBi/xhBDoKKMd1kwVC2cYOzLiR1KEduk+cBN4DZqEyuq24bkI657XtpY0
DmfqcG+TmsczU3lGEI9GsxP9cBoJmAthXiqtEE+TC5G8UGiBU/+j5HLTUXdxcNAqwjeL2kV7K3Vc
iBJF5op3oEfoisAnxGAUWYyoNUeU8O5agk4YCDFLQCXyJcrtXv3oXLEviOUPA/3XdoC50/Utx5gj
6mM7XpcWnEmaNJ+VJ/qOv9mWZGcISn9RQZGwkm0vxF0yyXSZrf0ZGeucdc5eQU+FKhQcl2MwGp/j
6h0GZQrcam9BYl2G9RLbfUp8bNWx8v9BK2hYEy36Aq/UtcLfErPhvwpeHd7y/zUCQRkYtK7KMvce
xDqig1dCR2CusT9P+2qXmqzKU9UgTyszVtIU4U4ACoPKwU55PzyzHNV+RE31skWugRkB/98i/XUO
bi2FLmURrae7hTocHVtwFzf/ogvePaSNZV81/wqkqMTYatAPLe5vbJamOi0KkmO+keenIlppMDGI
+MgG3K2cF9x1Q7OKYOlJjzV0NwJ2gtP7dm4j/IZpbzmehjUlaZDoCiNQlE6wMzD9XpIl9fguEnX1
CmU/eRpWDNR67Nq0Iyaliy3fJe2ES0M9JZ3zRHpAb3O/MF4qqJAI+oh5NUdVSTprf2nLT+yIcL8i
AlN8YshaOXxm9PPHe+Kc1ytkCxX859tih8QRdSCHNr+fCKY8i5fAH/zK71RHpASGLnfAI2WpJRp4
GtoDScNb3r00J3I8X0uUpOsZMfiGG+PAikeoxxNa9uKMxHG8vNY4bxCXE3yRSs4sLH95kPQi8Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BE69CFCA921000"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
content-md5: hmoimkcNTHSMNLnnUx4K5w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: de097291-7dfe-4b82-806a-580f02a2307f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-3b8aaf1f-0da6-70a9-66ae-339ecbe1b47d/test-blob-a6a72cfb-1d90-93d0-7464-0ae36535f30c

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
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1BE69CFCA921000"
content-md5: hmoimkcNTHSMNLnnUx4K5w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0de5cf15-8864-434c-8b63-3f11181b8bb7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:07 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-3b8aaf1f-0da6-70a9-66ae-339ecbe1b47d?restype=container

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
x-ms-request-id: f3d8d60c-708f-497b-b371-307ec577ea52
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-be43f7fe-b27c-aa17-d931-8faf9bdad7e7?restype=container

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
etag: "0x25C00272671E860"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6ed5047c-284e-4061-b01b-dfa8f418bf73
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-be43f7fe-b27c-aa17-d931-8faf9bdad7e7/test-blob-e7c2e015-08ef-2e66-4079-7c9a94e166ee

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
adNyxXkXvLz47DlLApozUlSXY68xOgL2kRV9AzZ8FvjLoUbIZxJt/iQF7wLOGiymRilG/H22vC/R
fDNkmbmGe9ZBgGBTa+tBKWWLLEr/J3bo17wMNhl7FOQW9ureCWRqfnQsjZrLUts+BdMYKo/k0VS9
e8H8ekW9xWx8PXQAYiAAIK7W05nbHYThzTBFY+lUMiSVII2ibgMubscuThVnPqOzFwrhDf674l49
GqwUd2KCJwtPakGSXbGqp2TRrc5veo+NkkvfcyQm2j4vZVRXGvZlqycKF9NhILpYNmWa6TSPzZ8d
huUXo7TmKY8CY/ddU41tbAGnZWK7LHGRhzy+i/EKoJi0OpMRTghyI+5DX73C+uPYLH0y52g8YVp0
hRx4J52e+MJfqBn5XB75NUF0eM2zzoxY5l9z17gveNk5ncjs+vtRpGb7Y1HK3tBeObInyOiNwLeP
H0E9KyAJLzA/wL9WDDtFItNmuGs6jgePFZ0GCK/wrNwQXNu6FHlF8TMgih4QCC134aUVJghMVZA5
rhWDAyeBTxPiRa9fig5ZIMc3GQTpfgxwjycJ2oXUxAdKgWZjwu0MnzoKLsN9F1aXuwVAFDuMTy8J
E3P/d3SODYCnFQmo9V7ZK3nJ3lBJ8njQch5/k7DMvTE2Wq95DCjGfCBC1QFN78anZ+nBw3HewCD7
LwRVDnrQ21fXcZuvXx5RAmIwBh12goNY2CzHC/rAV5qOftwjcG2mcvqqdX0r+AfKb8APrrkDhK2B
/TZNCNBdFxkAIOFBLZL0ipQjzAwFLd8k/Js5sanhi/kvoXM3WGkpTF5jKtcmiEIuGiQl4LigfM9W
KQs1I2ZwH5XnEYwfvTIq+X+uoQII/XRYC5aEu6tBjyWj4C5e9Cn48wtCP3e2Dl3y+uY48tvMTiuX
3BjP7GPppYJmfN0DzAVWtq73xb78ovw5kcDECJ1K1pECxhgQKAenWJn1T5KA7y7h4Twt1Yltmjkb
llqiJJ3kHKVLAAXsRY2mUGwkB1NquaKS4ydhHAEIlSve9ZGsBDP8EDLtNO4o9JyuhoQcSZLmsd23
EEF2g/+jQ2vaDlD8+ks5KPcgfYS0ae6KspZ860uY+ES09fTyhowySfCDTuZLsos54yCaxTRYA6dT
69BoJ1cfQRUMRwRXRqFr7TOTMRoHPwAKQwgq/jMPXPFMn5u7ySGZYw3RP2qH4px+L9cAxNKMS6zP
XeRP9EPi/OsSCqcGsCQS+s0NNv+Wg2BsrM5bD5cfwFPu62s9Sm7K70J/dNj0eH+z7skEfxSsOdqD
40h0hu1T80pUF8S41LBfQke8Fw+IdzRPqCHNG0A/QrKRumYmVWhVK4CNoGC6+xoZpTzN7yLK+g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2157A8D21B88D80"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
content-md5: WJJ13WSZlfdlfZSPAETphw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 982140f3-453e-43eb-a17c-d9dddbbba790
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: HEAD /devstoreaccount1/test-container-be43f7fe-b27c-aa17-d931-8faf9bdad7e7/test-blob-e7c2e015-08ef-2e66-4079-7c9a94e166ee

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:48:07 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2157A8D21B88D80"
content-md5: WJJ13WSZlfdlfZSPAETphw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 90469c70-e5f1-4a4d-8f56-503d645448e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:07 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-be43f7fe-b27c-aa17-d931-8faf9bdad7e7?restype=container

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
x-ms-request-id: 43c04f17-7161-469b-b20c-8fb2093f94a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-de25146b-85cc-09d7-14d5-1226194938ed?restype=container

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
etag: "0x1C26DFED79F70B0"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d3982eb8-ed62-443b-8e1e-aa492de72370
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-de25146b-85cc-09d7-14d5-1226194938ed/test-blob-8eeb67df-d7fa-94d4-ad07-b4750372538f

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
x7/7ETCKiaapg4uKqNQAz2xP7og3O/+UQJAxxNFiBaKBgl5aTie8VN1F5XdMSevYBuQJtITLWIvA
Z9GgWMTURn7oCCV2pYFFk5mq8VWISPekWb7sWFEetirSmudWHPsYcJ75Y0DGYWBjxCHqIGY2Nx7Z
+/8G6O0sylL7owuZ7nadkYG2j+S33vddiZQvM5XDnGLIfCD8EoixzJntyr5VytWqTY7lf6c6IhwI
qV9Z/Ja8OAao0HJVoX/5BcNLyRQ4B76/heYH3h26jloE82goWM8CMZK3rPljVKwO63nk7lkIz6Gg
mXewtVnp7UIXUa0X0K3zSJeBgVvFXDA5+PKj1p8B/CTGiL5XUnw4zr62SwP+9xvL8KbBhk5F2j1H
dr1nRReiFlWJUEfvm/UbSbOdDxAsOwDX2OX5P3XVgK6BENy/0YimEzSudabT3FWwpT2aqMssGju8
kG0yqdbfs9CZbosZXHcq9vvcfsZZA/uQSZo4O9jjVPWgAkEbdGpdzsHWOm7KlkjFb7HPUJx1Yoxx
oWA7p3j3thmVeFo1D4KQfq8Eg8mNxrJScssmEwNZK6C0qdIKISdJ3oNUNB3uj2AvP9LtcN/D5Nut
6TSs0aIVPE25gWavhlyHu6RFOJGUY+Jr99QxbLrB8cX2XDjznA3gPvjQNA76f7l2ZbU6fatKGIVS
QdnO5M+S+I+guCkjlB6WZfmYxC/TcXgbugYFhnQarESyoFozElooPjx/WcaQUtGWoxixsVRWftBh
syrJjXEbhgzlcfPDYlKfb4XyVBexi2c0buJbaPrvXCKK0l4wX7HKY9O6q+He00HFEULOYyq4sCjC
lR6OwB0R9RXROJD0bxDUJ/BE99+GVpuhlVa4IPj30iI1bcqSO6O1qLXMDZqw0KEx+js5c7lIOz6D
7SrGWdUc2WZuvgFGQutMj04quUkB8MW1hia8vl9o7TKLD0557k/frzQzQhKg67dP7ONqHYH1gfxl
EdKvYBoHBdHPuzKd06H+SgoVza6yFZtubNF7/s+wlo1SFNx8ME8ZLDxA0DCEshlCa9N337NNsvw3
QPNJiwcCHySlS77Eghq6/KFyckRr6bq4OZL8OLbZBGLfRfBbz6A1PrEL32dafem4vOMS20C4y1Y5
kVJ0BuZuy0Zc5TwqXywBPTOSYApSXbuoQ3zSxykiJ3qZIj5NwDjLnBQg/pitjl23EZ4MJWtM5jOX
y8NpmwMdOb3CkD3ts3z7x8P2MV8j+7QeG7aKFQEOTTsLtvR0YQAQA8Ta6v4gyl0hEF6nVrXUdNAO
S4BMkiO7s0MB4f2IhmXC5S6aSBG1/lBZaAWjZveGN0IkZhaAw3CgHje7HuhgmYr45XCGOSu/WQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x233141A438937C0"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
content-md5: ZheehhNgS2zAp1YFKdOa7g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 45d238fa-1d59-4fdc-83a3-b1c94bdd113c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: HEAD /devstoreaccount1/test-container-de25146b-85cc-09d7-14d5-1226194938ed/test-blob-8eeb67df-d7fa-94d4-ad07-b4750372538f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:48:07 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x233141A438937C0"
content-md5: ZheehhNgS2zAp1YFKdOa7g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 10563926-24f4-4f11-938d-1fba68e69e85
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:07 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-de25146b-85cc-09d7-14d5-1226194938ed?restype=container

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
x-ms-request-id: 60261f5e-e70d-45ad-8b36-812a3afe822f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-2af32f4c-181e-4b4c-7baa-bb64204f4221?restype=container

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
etag: "0x2342E71F3FBD080"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5329ad3e-278d-4b70-86f4-5bd9dc91eb3d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-2af32f4c-181e-4b4c-7baa-bb64204f4221/test-blob-d929fabe-dffa-f968-cf7a-ab8186fffd16

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
ZQzJUNBGgQbqb6I+pDVpqKJPyD8B5V5sx/pao2zKxXyspP8ThvFReHgj74s9KlSaEQPfNze+FX+u
XIjV692aH6omkQA2ViKw/U/G3vXTL52mwJJp641E7o9/ZSloe4ybidDhF5hTY7vgLjnn+DaK2y3r
LypKMDMc4aNxtvD5SILDK1Ul8RgEUlzXiL1TXPVY9Yn7fUxiUFicxDX14q3K5+a3JM3hZOkV5tzN
c6h2yIStGMFm/co2Ydr9iC3jD3CvDaHXnDgodpCg5pZwlNyvJvuwSMnrY+obgcPy5Nu8MddrHWUH
nixMhaExxhY0xcz+TWIxMsemxKm3vBt1NpK05LW+BHZ2qIfPY8Inup3T5rv29JZ5iv8QxVm8T+IQ
108PfOFhdcFWh6TaYc4EfgoM49Vgf0H7Olm1rj8dulilv4xzGD27cnH5n23xnygwDEZPr2wNsFcN
E0GHq8aCOcxMNaJCkGbMUHBjZt/UCZsxhaL5zQvrmA40ZgT7M8eqd2agpWqF7Xvfgl78qUp4OAmm
ViUkiGvBYJyUDSph0R2puO54NGQxq5cmGUus7+/EvC36Vd2hhu773kXN8eBRfbFBU/Bb/wSldKuN
/W8fFXCtz1H8Zns/BzIAfVUeZLm31Zuaapz+abwpVOAyE4h/28nUHyGPVBY1AUu9WoKvhxDx1ijT
harUr2aV0xKbDfOqgaKLSkSXJ4CEZWlQQA45ec3QQD1fq1UfAHC7+YEEmvRYE9nfIzzLWa6oTiBB
g25XW1lEysy2S9VMbEnT3C7+f8p0+C00WlWQBOeOtlw13XwCY54nwM8noscEk7fz+H2Aqs9VzItA
IgEEs8blJ5R4F47M0XiP17/7TVVlMMednQxqDQyN3xHxwkGdIw0JQnozi3wpJiYF8dMPWn412vI5
Zha6exmI6zd82w838bOy8gvaMqRLdHblZRw4fYWSu+dOY732TsdhqqBErUsXzf8fXWhzW6dN7vKf
1Bb9T22x6iAn6I72u6NDeYgEBscrzpcdGSAdHmA/AXXKV3qxY1ozk8Ir7+VxKKLEL+EfSegrcwZ+
4DZMlMu/5+cZLGMokhUu0HIEAN6xq/B+WO5+ILeMn+R0MoMj5//3awf+WPw+m5zL8Hh1J3MnzDRF
zTvcQccvjIx/tGCSCulzDJXWs1P0QLxRsy8/FnhwTWVP3hnDGilAzstwvuc8OeaPAhrdUBnhUI1+
io6X8HUUDmf7QivQsPFrluSHhIHVFXlJsBRdkvxMbY2LRJCbqd5WW7B/Qfa6vlIocro0WswMqXUU
TUBhtntqrtWdRWthz+wGMSjRVdSDjvHCNSBCFxPBfpsah1ue9KU0FZIhHHnmx6PNLiikO1OhkA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x205A14E31ECBAA0"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
content-md5: chjKJhIdY87x7g1JTQ6G+Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4a004bc1-ea58-4618-b413-62854a30b6db
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-2af32f4c-181e-4b4c-7baa-bb64204f4221/test-blob-d929fabe-dffa-f968-cf7a-ab8186fffd16

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
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x205A14E31ECBAA0"
content-md5: chjKJhIdY87x7g1JTQ6G+Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7bc64435-75f3-4234-aa3c-d10176dd1cf0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:07 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: HEAD /devstoreaccount1/test-container-2af32f4c-181e-4b4c-7baa-bb64204f4221/test-blob-d929fabe-dffa-f968-cf7a-ab8186fffd16

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x205A14E31ECBAA0"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x205A14E31ECBAA0"
content-md5: chjKJhIdY87x7g1JTQ6G+Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5245ba35-d260-41b2-8222-e97936e7266d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:07 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-2af32f4c-181e-4b4c-7baa-bb64204f4221?restype=container

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
x-ms-request-id: 9b66efb9-78ed-4bc3-aaf2-55841e207bed
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-809e4ebf-285b-c197-dcc6-cf464791673c?restype=container

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
etag: "0x21B137AFF5099A0"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0bf0c61d-a888-4dc8-b096-4c952656fab2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-809e4ebf-285b-c197-dcc6-cf464791673c/test-blob-41409d82-7162-db78-6e7c-75e9ea1d4347

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
efacUFYk2Oz7X0CyF4BbO8bsIZ4TXy5N1sIS3rOt1r+DiMxR9RfmXcVTRgIxxsTtITkj/vulNBrH
TnqTEvk5TYmBLo+zCUavBsPZvxgsHBD+Jb15itfD3lSyiaedUkvLGvh5sJc1ORfzc/g4zHQBmzJq
le08wMOxvVA7AYCfErN4DaUgs2x4yOulhRbfihLfsO10M71ej1k1x/JG+jiXVGFEwL7O4ejF8cwB
ljqt0TI+W1CSKt72GX1L6ut5Ms6yDjG0mspTEc8Fr0HwXPgfiPW/CJ/oBCqCTqZBgvb8TL7+T4gJ
+Ddo6kmAjHudBr2ELGL1uiouygkGMUwjEo/YCWKC8Q1vFY++Vx1VZ3iv5UfpvFWTBpGUz4R/Asfq
RNi6qIMYGhWvFRbTN2IM2WOQV0sEOlY5RALR7iGI8BLH0xJFmr/0l8syOac+wM8uiPYg7qt75gmB
gWOARizzJyQDC2NPxz6knMCA0gGv+oQzomUraAFnTO0JwxlbdFCfPhKCOrRr3sC3fFLr+xMI0ofe
TaTGyL4jnL92RgQlSChv4JPvLb/PyMOlc+uufFDZAfCSfSar2HZTX5719Ji8kjMqexqAGaXHD4Xh
IVTTdCBunEUUkssBxAgdm80h2dMr6OG3hAA2WehLym2hyrchgOt+h1hSqP9oKbcSYn3XpjWxtjhz
G/AfN0JdychdYPlQ+xviolJ72EDhT1pJJPZqcyQ47xR+rWT7Xk8V9d83Csm9wWdh9QPiNt34kcuV
1hNM8lWjJXDl0U2250QDZeJhqkWRjGKPCX4gVbg2hhuYZYg7yQOJk+RY1+8Zqg2/3tH7lueGA0mx
vOnXgs+4r0syHoG7yJzf2BdgObRydl5wYXbnO/A0EWI+iQwasRAUnyik54yLAxY0HL7QJsmVP0aK
ZiFZ0XNa/QwffT6PxCYGS5mLzY/S5V5gsh4xZOuYqUrGj0vvu860SumAbIbXpFeYydovCXG3uIHD
+B9VKJgghtTzyTTaF5DL14OlUXjYiQ3HmZsQaZ/ZDtfJK8OvXyFQX+ax49sivbFKZDLtEWYJ628R
jY/9EBw0GrpdEevMHHdiVPKRJqUxpNzpxQRt6/1xwEBTndGRU0/JfcggxavGfUi6i71zd8TJ3+my
FEoYxy+961CqeH6m0AGjyKncEd4wI0i8smA//Ul7ir3n3z4FsbWZY9lbGwXJFLq70K8b7c4LgvEC
WxXPfe4HLu7AvvHDnRbzQq4E1QdD8p6lgyyaX5zv3F1NA1WgyuXrU+wWCVXJ+DKYKKogBqzpv2l2
KfnCbc5S0eKUdprBU3jJGYIbLOlJ24v5AjfxztWwY0TsKaDrKOYdxDdyNYKY1tQyV+0qzpKALQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2119BE78652E2E0"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
content-md5: TBCIqIRCklg/LWD+mqu50w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 506a4347-5b82-471d-a37e-021b4fd67bc7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: HEAD /devstoreaccount1/test-container-809e4ebf-285b-c197-dcc6-cf464791673c/test-blob-41409d82-7162-db78-6e7c-75e9ea1d4347

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
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2119BE78652E2E0"
content-md5: TBCIqIRCklg/LWD+mqu50w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 42406ad9-fcf8-438d-929d-aaa527e233b3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:07 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-809e4ebf-285b-c197-dcc6-cf464791673c?restype=container

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
x-ms-request-id: 7f8536da-78f4-4b33-b139-484af22ec06b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-6bc86e4e-6097-0d02-e312-56d529d7ddf0?restype=container

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
etag: "0x22A35F026C45080"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 43c9c4db-020c-4b7b-8119-dfe3e970d70b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-6bc86e4e-6097-0d02-e312-56d529d7ddf0/test-blob-b168fd9c-a6d6-6108-2b63-bf77e88694b2

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
a/xSfF96hmM1ZVFvQQGqW3n8jtApzleoZWdAM6CLJF1+pGkthGGRIXcEfHBUmB8quGP+6/jDiJ2k
qhb4OlLCqkD08Z2XfdYYa2xZJFLnU8xHFns9jTlluhvMiNpKmeYkQtIvYKeCkjqN5YCLamRLvVZJ
sCTWhR0HjjeBy/T8zdKFNOKAt/MlxYNAr6e42VC3gcuDAOjCTry1J9FwAcZGkReuBTWBygVjJOug
ldZ1TrTnyUopeM3pw+Ymy48htcO9+h6PCtQaNrbFH9z9IbjlP9gciDd7HBhKxUJPW/92Qm4n45q3
5kTgzJOUZFjw7KItQIu3BSyLQd4FRUSSytq2T91u1T4dLlmTO7uk57jAWdifIhp0vz1Bm6G8saAA
TgK43hV6ghZjEBIyI8lw51olRets8qi/Qo+gLDmcYHy4k+256wmjRdbBOxIIQZxz0LRHl2y1k1xZ
+ZyF2lXdx6+Weo/bt/tQggAUqraWtwDzLFyFVMkPA/+RX/JtHWuB5HRicscMmBm49hRsoOmlw0Gb
ka35WHPmhnePSlcJ42SVk8VCM0U555RCzF20o2MW65yw0Yy9h4wBfOtPfU7BrxOw1gwkY4/8YaoZ
tosVMeIUeV66WBHY1ww5QLdZ6WlFgB1KBMxW8YcNtG/ipNAA60oIOwTvB1YB1///6yLXonhA0zVu
yy0WvYfWraSh9jM7OFVsUK5kVnnHSCzNVgZlNRH3odCakSAd8n58GVmyX+HMw7LNa1HJ3H28p4IA
SGaBcXeSqlVioac0Tl4w6DwfFOlKAZNUl8q/LcVT3uqeHakX+6jiH7WMaSILmBzzmfNAnJKZtUfT
LNmt0nyPDsK8ljG0GOyUPfUzvpdwSf6ty5TREkJYBGdiRM/ONEw4/FpgTgLrP4EHrF6dZfewYuPb
AAbovvyAZJHKUtQdxQmo+8E8EPr8wowTyWbjup9vsuHr8zRFUD5e3+pwIe2s6uZV9Wo2c1Lo3j56
1fWVnKnyWqDzMdLVYqqD3TAQi6CfZt9/jsU1OT6OAhT1y3tJyENAfsZNubgUf5O/s5Ui2FOd2m4V
Fg3kvCBhZC6935YuOhTszwzaUqwnaw4ydYapbCrBWPEMM7I1XMKl61WJVqD8kXiANQlGwofC7qr+
skeat/gE/IalIQZit3JKNGZXnRRuNeQNKDYgepVpSkUIN6p6CzRdhFoZV29yHn6W/I4ha1CWkHxj
jI/B44HxO9fBWX/Izygy+Ri6Vd51mwq4in4GSN/0cactF36km6HYKBuXsMT+zSxl7nE43Due7fGE
CFkD6vP3zejYmriqjV534SzC3epFubxSoVluu5VrjymNIJNH1T4nn+PcJTN0u2ATwPoO2xAGPw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20A266B93EAB920"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
content-md5: FLYR7hoM8wGd+1oc+GQW7g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9119492e-45d1-40eb-b3e7-abda44e206bd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-6bc86e4e-6097-0d02-e312-56d529d7ddf0/test-blob-b168fd9c-a6d6-6108-2b63-bf77e88694b2?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 49b19c4e-899a-5211-6c0b-8e1c6dca2f0c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20A266B93EAB920"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-lease-id: 49b19c4e-899a-5211-6c0b-8e1c6dca2f0c
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 439145f6-b0a6-400d-85b5-5f2bd1938fb1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: HEAD /devstoreaccount1/test-container-6bc86e4e-6097-0d02-e312-56d529d7ddf0/test-blob-b168fd9c-a6d6-6108-2b63-bf77e88694b2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-lease-id: 49b19c4e-899a-5211-6c0b-8e1c6dca2f0c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-duration: infinite
x-ms-lease-state: leased
x-ms-lease-status: locked
content-length: 1024
content-type: application/octet-stream
etag: "0x20A266B93EAB920"
content-md5: FLYR7hoM8wGd+1oc+GQW7g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6932be2d-aac8-4da7-81a8-acbab8607018
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:07 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-6bc86e4e-6097-0d02-e312-56d529d7ddf0?restype=container

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
x-ms-request-id: e43c2a3b-3930-4567-82fc-b72ac9018b21
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

