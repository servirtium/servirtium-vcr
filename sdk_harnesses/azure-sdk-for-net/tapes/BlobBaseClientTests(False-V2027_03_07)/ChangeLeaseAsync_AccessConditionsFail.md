## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-44bf7498-f509-4727-b428-73aa819498de?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).ChangeLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:46:23.1942556+00:00

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
etag: "0x246771EE80AB600"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 882834c9-f391-498a-8b31-7a7aeecbfbdc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-44bf7498-f509-4727-b428-73aa819498de/test-blob-f55599fd-e7f9-5790-ce5b-64f56232fff8

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
QW8IWZFWygV+liw0EGsq4RubwPobFTew5Gh1rZAy5YIpe2kSjD5Mp89Qd2K7W0ZjMYLZxnIF3Cw4
V3Up4Bx0S7GpC5UCF1XdTxkqy53U9YgiEnwOWR4QJJ492jTII8ay3CuwEVCxYBks+3ZY2hGOY2Hs
B82gZfKSmeb2xD0hFCxSeO9yJOQ4cbFj4V2ot0mNr3fS2xz5EnY4HXdpupvbC+ZKBmIiGz99tJYb
PYSV6uGdaBXGTjgQWWZ4OQZszrYWh9V2XbDna5M3VSeF3dTxozOWzFGGFb2uOq37qeI4EOXfBbWu
Howwtv2CjvgRinyRh5bT1gJkkHEYyCMD68Kx/0VBptcfQ4SmZRVUA4fEnK8xaiJLZTrjenVElVZp
LMo70Y+z0OSkckMRLXHsEIzqUytz0oCgZZkLXiti2q0tPDhKGTL3EczLjPjeOjjJ9mrpWkIq9lpK
m2z1qHG4QpeV4/A4ovda8kFfp0aIwSthQWjAeIBrA0beAH7GAmlaE0pgSVZHkFNzjmcAy04TwdlA
lGYJ98kWKuCqWqF4lPDYBJT7KHjVGbEUTeoYazf4yj6khW0CUBuASR51nTay+vp3J8a5F5lha3q1
9arf/b+pso9i1A6C1rR5et5ZX3x7YVPvoUNxPrKlQxnzTVtwoUtfzOumTybs9VESQJy7CAz9OZNX
71x7N3PcvZH1johYCNmS+ZOR1BItA6vyX/4V6joN9RPHGbHu5JR3yZKU92fIuTfDKA54bGWBKuyw
idh1x9NW55h0ke8npBX/GQp/mAxEKabGUcIslYmuRe/EPlq7AQK/Pg/OUydInIT4eVJbAZHgbGAy
r3URKVIOxksAYmW6QxgHwFr8dtV+frU9Mxw3UkRd5NH6iVKNrhS9v43cRzkePTU6U0E35PWKtDC/
0/U213MHon6Uv7nFehJFP7ZIoTZ7H/Xm/P8DJf/ccNUizdoeh+cZ1aW7in18ddgu8qU/QhL5Q7P/
T9p0A3x+uE/ko603J7fPL8yRwJV4aocn1DNanC3CKIknHjcMpNEoPNIumNEr9srtbxNGaIMdh+VT
TC9JIxshIXojEAiAwor6aYPDSdG1/N5obSwafL8FCZZRuVii3xi2DHZXB+bCbK2IS///Wj4TnVBQ
4LbuB6S6HQZxLwgyWIprDD1bXvT4pgB/kTDABq9YPRwHUf5iyATSnOnfUD2lVvN1lE0AuD5bWDq1
bnVz+hdXGfHrKgaLCEQ4icILGFXD2js9S3JiWITeq/jErFmPXqLRiDdLuSzs6YsJxy98UEDk8pQ6
Nq+l9MBsDX4Ox1zqqSogOZAddyAOUWHmWZBVYlu437rFVCjzLJN336ut3iIvHx4EWxavxnpzKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22DB449557A0060"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
content-md5: b3pUIjTw/blaJ1ja/Grn6A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1e3c5250-aac0-4f1f-8c7e-e36fe4e7b660
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-44bf7498-f509-4727-b428-73aa819498de/test-blob-f55599fd-e7f9-5790-ce5b-64f56232fff8?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 9bbe4de5-172f-22ab-55e7-a12554022d0d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22DB449557A0060"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-lease-id: 9bbe4de5-172f-22ab-55e7-a12554022d0d
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cfb33374-af96-4aec-956d-f025febe87a4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-44bf7498-f509-4727-b428-73aa819498de/test-blob-f55599fd-e7f9-5790-ce5b-64f56232fff8?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-Modified-Since: Fri, 13 Nov 2026 00:46:23 GMT
x-ms-lease-action: change
x-ms-lease-id: 9bbe4de5-172f-22ab-55e7-a12554022d0d
x-ms-proposed-lease-id: 7598a6fd-7261-b73f-3a72-500645081840
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
x-ms-request-id: 87c878a8-5edd-492f-b0da-094acc3279a6
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:23 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-44bf7498-f509-4727-b428-73aa819498de?restype=container

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
x-ms-request-id: 302df64d-8e5b-42f0-87e7-f269417a3c41
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-a5422951-f76d-c747-008a-883a8efac901?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x253168E281FC580"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a7412bb3-4374-4474-8027-175cb3e43d49
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-a5422951-f76d-c747-008a-883a8efac901/test-blob-1fb2092e-fee1-72ca-0d07-61bcc6a4dd4d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
zmDTK8CHnwVf0XTW6gUpQKlO1zxV+V5SXtCXZpWKAFutO2stJp5Bp2qtwBCJ84gI3SETeM2g99UC
gczv7zhv1NAZKa6Z/BkKDDDSqDhOyGtHjoh0d4iODEOVK6TSUrcxPutAcMrZb+EHCGuczk+ds7hh
p2Gv+11IixxqA9F1OLp5oGpNDligbh+nbG4d8T30+HfscapVgkKN+OSubmsQktCwIi7lT6VgwDlB
CI7vKpnedgtZiMYQIx4nvxVz8v+zltmdbM8PD6jRi7BxFHm0nc1Lz/hgtgkJoP4PvY+P7c45jnK1
Ur7Kz2ZiiP0Wng+kcyJIJyIGU9/Pk8vQ/1EYQZ7hN4UH/0sOgP+R/S4M8wHva0ptR8WrMzuS5b/y
+tAVSUZfNGeJnXTWOacjdVWww5/K4JQGqvrYNQRKdBmMHIYvfLTorL+ZZc7Wlw0eiL3l4iEfKBk7
Dp5Lhv5jPyhaSh0h8/mgyBbgMHvGMBPtuq1GZJL3bPRs820VnCbANialfEzv/ZTERBkLPveedd6L
XsxRHNqWYt0otACLiyzwIPlVILTG/b0YgR947C78zn2Pij1ZbxlLDxlvx0iUObnsGh79SFUpxGEO
OJu6HXWvLOaC+wHulrDgCRGaVzZ1hEhmi9EP/oUoZcXcSzZ+kfKjwJtiEj24/oRtHT5Ej20qmbRS
VJGkny1gWpY8Ekt5YXgf95abE3ELro1NouFH5NZXsbGCKzxg/yFtAbenfOs587vGJZfXj4ZCR6UD
VvxLGXa/5GGZ9zU7vvd1LRG5YzKiFK4lgL8+gCEqQOSXXagkIehB55eKn/yFimagYmJ1iONzYEJN
Jpi3gWQ/b7dRpGBOUAspeHyaGHWyn/ZYnh6/tbcAI/xm1/tPimYzSjBFNOUFURFXSxBn2UjNm4ei
XuJFgLn/UYFk6HgQ2e0VZ81FbWsQUk0MaGmnmUqzmTx0rSuD7cp2ReJkoWiZRnIiUXJ7hy0bkQyV
ORhPWLg2sE88myzBknkDzieIq7HkcyH3hEfYOBEOWBsf7rSyJu0qLvAZXKpFYL/4eLkFk+Zascb2
WNNwXnc9LkMRoqPEUKg6XX3AyhZ2siOI38BYCcQ1xD3uu84Zus952y5nNL4bNCcRyjZomuavgKWw
6H+25SR/291m1pXZIaOtR+/oD31lbKuZRj6OzCpWPjooaNFQwvUJ51jgtF2SN6mSulL2xnEnS3vT
HZ7m8A+zD5dasLjRXYT53yclhLhNBw+V+xLXYHjIAB1WfKVWIvdJLKTFN4bwwF3O/edKAsbDhRaP
UfT93K8fkbCae+Dforwv3FgTiM+IpDu0CWOQfv5XkveOx9ACTFD1paXWVUV87loqGyZtsP1GBw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2746AD9227CF9A0"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
content-md5: 8i4VtRRB9GFC/c0k9efk0Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aca2bdc2-b355-42ce-af4f-d7e5e4e0a454
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-a5422951-f76d-c747-008a-883a8efac901/test-blob-1fb2092e-fee1-72ca-0d07-61bcc6a4dd4d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: d348b9ad-8e4c-b113-42e8-e951dbeb2c8f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2746AD9227CF9A0"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-lease-id: d348b9ad-8e4c-b113-42e8-e951dbeb2c8f
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 42eba32a-3329-405f-812b-4ac7addaf280
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-a5422951-f76d-c747-008a-883a8efac901/test-blob-1fb2092e-fee1-72ca-0d07-61bcc6a4dd4d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Unmodified-Since: Wed, 11 Nov 2026 00:46:23 GMT
x-ms-lease-action: change
x-ms-lease-id: d348b9ad-8e4c-b113-42e8-e951dbeb2c8f
x-ms-proposed-lease-id: 29e21d07-4eb1-38f5-1a09-6662d7e9e2f9
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
x-ms-request-id: 62b3911e-3a5b-4dee-ba63-a713037e233d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:23 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 9: DELETE /devstoreaccount1/test-container-a5422951-f76d-c747-008a-883a8efac901?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
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
x-ms-request-id: 1d2354eb-d6ef-4a56-81c0-72e0672c0f5f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-4923c048-7d04-17a9-9224-135c939d7e3e?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22A84448437E3A0"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ee9568d4-11c0-4ef3-b5ac-7ecc1ec6d6cb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-4923c048-7d04-17a9-9224-135c939d7e3e/test-blob-926696ee-1c1b-5e55-c310-b84328b0d958

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Bu8IG8jji4p0y5eMO5mkfYondEGDUN4rasSF9MRm7uFKulajlGN2CgvbHU+EyCMqazq4ADyY1bUQ
3bADXpfFDty2QoFDAOknsWo1qDKOpqKhWoiKre2lsuSgk7ezc6xzFQ5zzoai52pRkU/RYiyDgTYN
YgMOO2HuEY+com0ycz6+wpIkG9gc/nIeORue00+4HRGApRGoZdqthLz2BkT9Hh0RE6CZXmZe8GOQ
8AJFUD5A44Vcsc4sFly4d5YbJvguIBr9jb+uHr6qIrStF3TYZzR+tSK+oG1P5P1D4efPQspqYs/n
SMN+ksXHsY8Zfv7o4BBinHDVb3+trqjBajzW2t/qQrSk8B9xACNd9+/dNWX+WwHXbaZZlfNPOpka
vCeI8NavLzxKQ+/w8JxNeHeQz3hCww87/205kK3BVLWFVkP71AcYLQUptBcR5nwKCxx7v2sg1/kY
TfBpdp+OiO85a5pYUaRwd6FyGQ/4KhnxLoSRRpVKZH5K44cWr7dmmysn13risrl3CkfKrr7qHyLX
d0ca/EJa7wcbDW4dWsjpDH3j0FKeDnzKGTtNgLbAYMNkPjdvS57ozehzxqVLWrB/4KFABk/QOWnL
UOIHDG9QW6yquBuQesDf+wJqKkjXf76Lzp8Uf1p0kwXOpPu74cF4Imv4oKKU7mXhYQtNZg4h89Ak
ez3PPNtSNiQVwdbEIxpB8Qjc3t4c9t86Mx1PJi33rbAql2WDqeaPpmp9fiyPHT7wDHQFRBTyB4Re
lQm9Aw/3HhQmmYu0vUghTDhzn3iyqxbfXhq48WibOJDgJRTd0aNahmAYaIOyPE4s4/jcfmcMq+rz
3qT0PiyrimH71JczRHqVGRkXmUKSLCLMjA5wv7ko03kq6fP+ZUc0bd4it2e2+J59RmVO9RGnYLGC
KLEeOsun0gAdCVqHlrPR4ixkb3W6FZNv83hU2d1ogolBez2VFjISe+RnmO5D9rCyfBPkQ/E8yBMd
rkdTU/kitYfRRRp2O8z5UfSRU3ylK/3Iol3Kgz6YBbMqd2frvyjrRONncrCVO0FG6/L8qnWWeINJ
irCcVzJJOUBnS8NkDZHMpg6ZPrlMM2YchJhLm1o+k//joTR3T+yxHThwLe994t1gMARm/TrK/FdK
f9OZ/Z7lKbjEgGxdVFYi6CCA3AV2nqG662tV15XEGaTdLc8YFyCaigQ3uGFxA9utRBUaSiBR0+Ey
3hEzj1EiAGfHfyeHCdAA5lIBP+ZASeiPp5OAqs6EjFnu5jgOZ/qyFLj6qoOzJjpEGmPOUJT68pUp
o+i+olWYQvPOmSOY8X9XTiouRZ9k24FYO5BrtjzE8/Sj5cMS83JiYWeQ5Y0XrCjkdgFqzKz1xA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20E036D61703A60"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
content-md5: jL911qoS5UYl/r1Yvxr2eg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 47e91367-1724-43c7-8a6b-dac290b66f9b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-4923c048-7d04-17a9-9224-135c939d7e3e/test-blob-926696ee-1c1b-5e55-c310-b84328b0d958?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 666666c7-2dc5-b68b-09a5-2ef50cbb455b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20E036D61703A60"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-lease-id: 666666c7-2dc5-b68b-09a5-2ef50cbb455b
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d87ea37c-b96c-434b-a494-b2f89e35e56b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-4923c048-7d04-17a9-9224-135c939d7e3e/test-blob-926696ee-1c1b-5e55-c310-b84328b0d958?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Match: "garbage"
x-ms-lease-action: change
x-ms-lease-id: 666666c7-2dc5-b68b-09a5-2ef50cbb455b
x-ms-proposed-lease-id: 37e4cbb8-f6d3-40f4-8f67-863f3b5a2748
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
x-ms-request-id: 471da9d5-38a9-46f4-bb9d-e226c1fe0143
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:23 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 14: DELETE /devstoreaccount1/test-container-4923c048-7d04-17a9-9224-135c939d7e3e?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 773b47fc-175c-41d5-ba9b-0cc2017ddac2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-abfc20ad-0b8d-349c-dbd9-dbe7e9b71c28?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C52A2208545C40"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91ed0bee-5525-4f83-bbf1-3037bc7f24d3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-abfc20ad-0b8d-349c-dbd9-dbe7e9b71c28/test-blob-00b1a531-bec7-d1f1-7226-d75ea64b7baf

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
fuZH67+Zzq0vsFv5GgxX10peDpWoJoDvLys4ZjQ+jY9dLGgCbzFpl9cE0Rdi97Zlz/8TSD3mBldm
WLyUYGd48CLLnO6kVGgZ9Ha9pFRpjTh005c0KkVSdiUQnBZ01TZwi+H0llrIwXqW+VTHKWID/MuE
H43QQ8XdeSXJk7dRpB4/TBhzdPbdrBEcnjHxi03CDZ9L8LapoEcbFxw1/i7DRFU1h9xKj4jUpnN8
s6WU6+7YB4UYBrNolqzQWF3ap63jWVncuwNwd34XdkpCLOyihisuXfeoqj2hzfEvejcr+v/FmVpM
uDDqZ5AHAJBpJWnALdExrEq2Oq4bOu4SQPxH7HtKfZORVs77Q/VnoamtN6eHb0xl+U61D16sMH1C
1yeTvxQVH6jVL9cCNmhUT5gEbgNGi9Gw4fIslW005SVRuWzO0+KVlxf/skB0YsPmYL/Gp8J5+0xW
4t0i6Ik6oEmysXz8hXu2b9brRtmRO34uRjSubj1i170fePAEcq+OxBH2wrBG6ttEEDjsjbRzxadf
86FVjDIMT9q/3A2KsfwmXYLHmnnN51xZaV0FdkkIq7NJpX8NOTjf6XLWhw3OuV48xTAyqyoukQtF
+yLUB9mQtzBZQAx9GCRJ6LAG92BPi7D+yLAZ1QCJGxRzyD0VCuKYRdDcdHhSv60M6MN5J5mq9nBy
1T4pd+Ew0CX3CVDmNN3ObbGQchY3rAkDDe08EPN6yNHNozWkb87uq6RSWrVcJbTlqrroGoNZOig0
Jmrz88AyfUB/GZGnKv7jocdy5FFUp+c4VmU5kq5Nc2gMb0hk+rfjIN113AwjPoC7BHi85lbX4H+C
u51b+eqRMaUomrq1f6YPj8Rz38rbFRjkfY02kI0RNY/J4T8aiCfy46pm+qPFBoXRrVeSYwG1p6WE
dnxdW6EYF2Ur651n9AacgPsfdBt1HnYHZOM1f9GOFDqZlhKrlYgJTeM9mhrnarhR9eIFlTKKDlcF
Vfa+45eUnNdjzV708etzFSY4OIRcH/oq5InuiX4HD4e6pUCRS2pLqf1DhJ1aXAP3kX8LUtbTqDX8
k/4OpRNYXL3WOUyq4sm87I+GGZtc0IeG9/f+/Lyx5/wLlbhsPAPq6iffgyO3Ta+1T2VGTY+Zn8N3
iK4cWWABJVJPn00RT6+LnC5zfU1kzqpISaxWapltcvX09LRVzZHH3l3QaK1ipP+1u7BhJSJ2E7kD
1BCzqrq44i1XHFv6Ns6dq5/vk2b85aStoK/oDEzTfuH7UfmAFDOjGIWACoeku4Xiw3mCh39SB+5r
BgkLz9bgg555/+TVHZdrS3vge9odCOUpBkjTUfdhqEkKFA4pl0ivoIfpK7ugDabiFjsEcowTTQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D845598CD59300"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
content-md5: EixfmNbkxKM0iOp7o2DU2Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 77e9f55d-7201-4da0-88b6-3399cb912a56
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-abfc20ad-0b8d-349c-dbd9-dbe7e9b71c28/test-blob-00b1a531-bec7-d1f1-7226-d75ea64b7baf

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
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1D845598CD59300"
content-md5: EixfmNbkxKM0iOp7o2DU2Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7f04056e-ef9a-4bff-bd8e-642095e7a4d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:23 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-abfc20ad-0b8d-349c-dbd9-dbe7e9b71c28/test-blob-00b1a531-bec7-d1f1-7226-d75ea64b7baf?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: c9e124fd-0d8d-a632-1756-9aca088942b4
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D845598CD59300"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-lease-id: c9e124fd-0d8d-a632-1756-9aca088942b4
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 768016d3-6dd3-43e8-8827-b274e0a0aca4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-abfc20ad-0b8d-349c-dbd9-dbe7e9b71c28/test-blob-00b1a531-bec7-d1f1-7226-d75ea64b7baf?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "0x1D845598CD59300"
x-ms-lease-action: change
x-ms-lease-id: c9e124fd-0d8d-a632-1756-9aca088942b4
x-ms-proposed-lease-id: 53db3132-dd34-882a-f9a2-f13abc5d36bd
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
x-ms-request-id: 207fd470-e7b4-4f92-ae9d-5a1cebdb3f31
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:23 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 20: DELETE /devstoreaccount1/test-container-abfc20ad-0b8d-349c-dbd9-dbe7e9b71c28?restype=container

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
x-ms-request-id: 17043a0e-5f83-4ef8-9320-1fb7783e4996
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

