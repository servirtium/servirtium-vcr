## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8f7ed2e9-2398-0aab-ca4c-067d470fecb1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetHttpHeadersAsync_AccessConditionsFail
now: 2026-11-12T00:48:21.0818486+00:00

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
etag: "0x2734D408BE4E280"
last-modified: Thu, 12 Nov 2026 00:48:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8844c527-17d7-40d1-aaa6-dd8ec4600c7f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8f7ed2e9-2398-0aab-ca4c-067d470fecb1/test-blob-c6df577c-e943-6e23-7cc6-8d2372e63c5e

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
pLuco6LU/BF4kN5/qJxwI7sTaN4gB+UArhAT0ZaHl+QQqNiMckkOqFrNTbIKpMXfVWloX31ePpzV
nPSSwCt78Pn6bgDE5LFyBcCDUrky9QpKM3ssHzhnsmk7ttVUfOcvUl25DzXFG3G49lq92uzio6bp
R42vTtHBk7yWiC3bHYjYVP9ceObVhRcKdCjdqtd9WRMuajRZgAOL+Hx5LpND3NjR5IbshSrAFMJ2
pNqo4+jkGS8arLJUftP70YBpW1eExpdQC8VRkNPobVVy49sp4hWTlBRkKS8lfWWz8bSqV7hq8t1D
WNcjk4hbMT5d4Zv30u5q1cdCH51nKo5gnp8fPhacCPH+5ok9cAGLCPfxyJvKux/FP4HxJ9I/2y1J
wvTpPPMowNmq+etlLWTFthamdmLyleOAWf+Uq+Aevgpc9K0MoswEyAjCH8EzYBEdK3C7mWXLVi0R
aOL0kxX5izrhCTm2uBRKoa1ZMHUhTfntd39vYiWlkJ6A+zrpEDXzyJSHUVfYZnNccPe3cSW38Bvp
BhyViSgVPHibNb3aYZF4ZmfhmfuhFBAME/It7R54yQoe/wkZXT9rcRXePTG1gg9lPwq91VYgR/IL
iXU26E5aImyyu2GIXwkndijlw9bfVpHix64TuvS0/bcWDdTKNIjHhBvEAsat3d8BlV4tO4QcLDLk
VCCfRmd3/r2pcVI1XUKfHT67GlPKNOrPESSVhsIz+uGh5uBoJz6zTAQIA2yNzDgcjR1FYBHeGR82
0DRC4nj7dnZwk3diN/YACM1PwjF9QUXsePil7ZrPwszAMVcJcGqLDY31HDjAulYmRFhEjlftuI7u
VmmAVYjcodGqoQaf95hjxLSkiCQNLL6ifqhBizN10nnIGhoAC7gEGHtmFRlQh03A4MqjSS9q4Smr
3tbfmhWdNc6N1tx+Yrj8n3CpphalUfZbgapp0olJXjnwVC3hJH1lyeBKw7BxQn4Rpqm/wDsTBozf
hBlrNGNFQ3ijjQ6LGnvyQ902Wo5F6T8sVyvfiZ3+3E2hAZ9k+pR8BX84zbRvhosuzXxd3az9mpvZ
Pt04ZrrapbHA6RncjUlIuVUPDRyLvNCfsLwhoP+hpGcEi7y3RJ7EXSgCr5xyUj8zFSRW7Yx+TYEM
mLX+uQWyHkWy1wKNkHS2Sq/ziAw0LV587YrbSrbahT06q6zpxqMjUJFWwHo9poSvoKLci8V012tX
gct619SO11LEUuXIzYQM0Dh73WzjP0cGK6oU/vp4xdNAkUTXqHm9x+goeFOe5tIe0LqM+Pr+c0KE
dKspetlYTIwShzw/NCi/vhWEu8bzZ0TX9S0/683YQh0BUzTNk0wPzyvHjF6W3pySzTnkerh8kA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x249DB5FE6D3F240"
last-modified: Thu, 12 Nov 2026 00:48:21 GMT
content-md5: LNyZZGRzHEgHHJVVL+9BvQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7f1f200d-2b22-42c0-bd4a-0a85c1e10b3f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8f7ed2e9-2398-0aab-ca4c-067d470fecb1/test-blob-c6df577c-e943-6e23-7cc6-8d2372e63c5e?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:48:21 GMT
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
x-ms-request-id: 69f215d4-d3bf-42e2-9c79-e36f119ed266
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:21 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-8f7ed2e9-2398-0aab-ca4c-067d470fecb1?restype=container

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
x-ms-request-id: ed17875a-e5ff-44b6-a001-c03d24c63351
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-8551660c-18ab-bf61-3945-1e3ee0f4f12b?restype=container

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
etag: "0x213A7CA1EB48560"
last-modified: Thu, 12 Nov 2026 00:48:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 86480fe6-d3a4-4abb-8eb7-822ace2cd32d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-8551660c-18ab-bf61-3945-1e3ee0f4f12b/test-blob-9aeb74c9-db2c-41e5-1791-ad1d93f4c765

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
hcInZkHHZLfKB1IZeKC7ntsOGwbM4WQxgBBtGWpDLEV+uLgezIvqAQ8z0CSJzMh31g9BhNjBmKNd
9uUwWUtNhtsMmr/nnNFQJBr2mBFAqLNH9kJaAqdsvB8VwdaluafE5klIfDEJkDo+8WC+ygCSHE4x
6WMI8oQ0oN2g0tv6qmpyMrHH9yuBPmYIHBBGrfIfgqSIc9BEvPTFFNxTab5eQ0b2TJhOyyUir6r9
/9Vz7fLrgE83cjeaLnW9AuNPLtWnqtnKUGFa0bd/ZsQlRr0fUSbpaOhuJ9EPWx0ikMhB0oHVVVX7
qZ2Rka6YuAtzdOe4nbC9ZsXsOYIHu/RDN0DuPZNCUPFnI6iJV9c51W/FnOc1afMXhGy86BzS9O6o
TVluqnp4MCT2UXkINA7usmMTQh4NDs5N1rkmhmfVlS+54Ap9yyv0TGvDPxh5D1BdzTa4vrHPmz+K
IdPBUaq8IbtKTlMEcOc3HvWzSc+208dpybgxHNZ+6kTK8qlXM/vABh1cL8D8WVxOgZ+7G1Fw1E0M
WIjyiwXkzGQPOX093+v68kOxWaQHbG9b4po2ws7zWh5bSttyznsXd2Jc7R/eEaG0wSkOvnupBesY
lqhqrgqVHN9f4ZUQhyTHmeFBqn9QfNH5ggCl5JuiskXvWjfTrclYxtE/fi8MozoERyWZaFpsxxrW
cCsJ7zdEvS9PIC3s8+wY6OStEf2i7d7GoZ12CUnqg5Id/DydTteZ+sH/vIMNF1M4gX92vrYcNINM
Q06azrPlZZyaz/avepkMFBY7ojFbuIlJPYfKc8XcAci5UQuJ/ywNGlfmckhciQflaqmf4JJS8IrE
UZEsG/HWvs4u9SiOghXqLofadUZA7LSA5AkbPCA2Z2CAxa6b4f5lD7R6LpPeV+eUtbIKeHtEg2Td
qzbouoGt947IDr1mT0yJdGWRxr0goY0hh4duLO/kO0FJvTXIfVQzzTcEFUkpLWVlgQMVs72nvAmp
xjP6P8ue49J8HZEWwPYRXfmGG4xE+FkhCKvrzoiEogErHrcgOY1sZTF2rRDUT8AMBFXDIKB9Zc7a
2DYfsxVJ93uQ66I/8CRrGrVazUpJTbnr38ozwIFhrbnpRmBXTLIcLbWUQ2QdzRQwWAbqI5eDkYp9
NNNLFjf6Lz3pVqnDFM0DPZ+UtAlVzRG1Amh6doohZbXW2Rje0RZ+mhQmNHZqbUM55+b479yAKGbB
lRTOf7iyx/H07Tq1JGuIFhn0LpmbS5UkQY6kKXbYVbCyHTwCrxtcc2yFdX8IhMN6b9jDjPrNJkp+
qT0pDp56HJeKAwcvhmb+mLosFdUVHL3LKbqdFMm25PbyhAXdMmXOCljnfoG8S+hxxPM/oBF0aQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CAADDA6C942200"
last-modified: Thu, 12 Nov 2026 00:48:21 GMT
content-md5: RyphgNDSRNb5ZrOHjnRYtg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91c12c21-7402-406b-82ab-99b05e445f96
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-8551660c-18ab-bf61-3945-1e3ee0f4f12b/test-blob-9aeb74c9-db2c-41e5-1791-ad1d93f4c765?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:48:21 GMT
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
x-ms-request-id: 8a6cf373-6e0e-4be8-b11d-524b1ea73f38
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:21 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-8551660c-18ab-bf61-3945-1e3ee0f4f12b?restype=container

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
x-ms-request-id: 7015fbbd-25b3-4ea7-bc9c-b20299884af9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-e45e808d-dce4-ce07-d31e-103c02612065?restype=container

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
etag: "0x2736AA0FACA6580"
last-modified: Thu, 12 Nov 2026 00:48:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c4363223-2068-4239-ab4d-c5f93ef83b3b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-e45e808d-dce4-ce07-d31e-103c02612065/test-blob-7c0a5d55-9d2e-0e3c-ded1-2c50d57643e5

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
fhp3XdSA6i1QGatiqw7mEKON6kIG9zvwQ08GE7C3+FzaK77n6cOR1XPcKxTy2WPQ6husSIsA34bf
hxqEetd9mSBOiIBP/yfg+xXPKcsm/WnsNSiUC7DR2Uw3B2GoDVucX5L0pFHiger0y0x2MbW7uYqw
mESu6I1wfa40F/jFOO66Msk4MlkYCbQ9oEBkWqeWfE3X+HUW7ncEgyeirmnyL5Ndu//rgocwmI6Q
cEhNDCIHnZqq7j95o0RSNK4ydVpKS3CtBp6oqvrGpl/mhn0vtncEmxHOSEFT5Bi7mU7Z/iI0RSXX
oAWDXvKg40fgkx3GIn02LdpJfAMvWSGG7RCs7ac9skBYVxZxgTweLmT5clH69HbQotFI68kip0bk
/HHh9Pafo+HcbspnxKudKk2eNufQjPia20rW9MZ3NrDPjYTLPTptWc9vHYarad4lqsB7g3FfE3B4
Rxisya4aZTcamDcm0u0TMd0XYG5y7nFssEkF/LM/b3oUUvUhwZAhVbhOkdGn/tjTZ1GTSLIBBlmm
QBhkFGiE2yi8EoD38nBM9gu1I1ygxbJxMpRhqybHEkuceoB3vEFPyrWo6uxX3HXhR1KnS+P8Bntm
8uLTIzAC9f80W3jv1TnKZlmn+NrFGVUff2TTIMZon3MFEclee6aFpfXsI4D88nEZ3eWJVQ6goNiM
tKPLLtU4y7sE6cNva+qyIVLl2fbVIozyukLh30plZXHw0scCuncgs1fE+AmuqXH71jS7u8fitpEX
2XSSV+xxnoRSfpkisGfbxSWeECqDRBDQ5QgWqampDhs26+ADjVxrUlqFWyvY2CbN4PaiRKVnlJVj
wXHkW/TaqG9+7MSG1zfIM77P/ejl+AzhScizB8p1z1dLn8zqh/dlq7O7WuxiRgm+2RDnl5asfslk
AhIrJqGlCRxtOjhr3avGalI1KZ4ffwK/9S65jTjAniEDhoTlOoURFVHQ9AvRU/tkIS1Dd1QqRIMP
azBy7HvkrJwWZ1cn4S/NIxNNT4r27qEyVGsKfSbM2EEB1c5UnynV60hvuuujPUD9dlRB3fX4GX2P
P5cQ2S91So8WJQtheITpd2RChjS1jhYrDQbSivpMCLtRxV+RxBEZ+m9cjRc0m/3QV2aRtpJI2bCB
5csoor+VyR1PELMkWLJSKIzEWQH/9nEIAjOUu1IpCOuuEN9G8FewxsT65YtJq/+zP44FhH+vgu5Z
H6CLAQ7LJgfHdkfTCzc1E5M9BBHmv1c04XzDI4Rs/o7w7NG2JMW1L76EgjW44DNW0HDrcn3dc2BJ
Vx+SBwOCW3e44h9mfu/Nh9VSYTwhfAFIbVIUgIsRE3hwbcylIii7Aie9//4T71GAHuuoixIjJw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E8FE315B92C510"
last-modified: Thu, 12 Nov 2026 00:48:21 GMT
content-md5: cb4otaRcPwTqYku79j39oQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a78c1a55-c92c-4d06-a11b-6a207890001f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-e45e808d-dce4-ce07-d31e-103c02612065/test-blob-7c0a5d55-9d2e-0e3c-ded1-2c50d57643e5?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
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
x-ms-request-id: 17c1cd7f-d0fd-4f1b-b232-7f9bc0b4f284
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:21 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-e45e808d-dce4-ce07-d31e-103c02612065?restype=container

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
x-ms-request-id: 325fba9f-8f99-415f-9f03-79790883b995
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-99491edb-6eb0-ebda-a7ce-a7f511222764?restype=container

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
etag: "0x20F5BCBCC5A0DC0"
last-modified: Thu, 12 Nov 2026 00:48:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8cdcac03-f655-403d-9b5f-1a9c8b7d32c1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-99491edb-6eb0-ebda-a7ce-a7f511222764/test-blob-155f96ad-7c64-3503-7e00-9362a0688766

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
TEbxh9mOC5NM0lcva/lAXvaG+/SyDsJeGxMbr9p3Sj5HQajKMaCLHovLyJIl1MmEwDRrGm2Ssz6D
kmvFc1u41YcY5ypRdS1W+9xp5kUwOUdKl++lDDDRtI1qR581xasvEvMLDOyfM0oHFR6QKcz5Ulgj
e9tsEshWRjOc5i6NIDUxOtRSJS1bqmSknvYSQYvBcfRGEUrPwv8qtcW4A0wbevTpXu74pi0ryNB3
x3TSRAWn23U5Rw/qYXfUJ3BnoqcYiSQBKOKcyMrHG0h5WPqKWHC/ESfW4jPl//13JH+9wyUpXz5Q
0BsjCxKrcivGcAl9Sc7/p5F/QabxHCnlJaRKClciUPi7OohVnAYVKnAHHo7z+tqwvRuUqh2YX7Ty
PuVuYGfToyAQwQ9GqguLahc26f2b8SvJmkw8jqbbI9rUYl4gpskIM3pt4jjLaRMQCT8GYXa2V0y6
pMYalxV6NZ01cketasNNLraCLQ7y/TA5LIRm1cJkHQsRZQIC7Zxl862blvfMYp58uDLAMyo9yKaW
4WuRE1/b0VQ7mwTBSkAZHTlhV2c5bcnl6hyPo+rh1J1bbAsw1OBNv8WikMeaum7xphXw3HE/XXSi
qylCSy1qWsdnZt416UlZE5eiltwBSy+unf3U8PcsGw6Xjii2C3SYNzUAMlSQvLzMl8jZncaXoGD6
lK4vlWrPOkrPnVsgoggiCl6nARjaHuBACFgvUn5I/+3IvHbFaKLKMPgKwB9hq/TAtpJo759HH3XN
7o0SoOfLh55tV+aRXKG83dAg0F3B3lxjb5vs3w9NgZwB+HkUuJAQPjmB9FMOLlrwqxLOJk4XDA8x
rjFM36eOH9ZJj2QopyVAD5IkQOoIVUBB+zT8f1pO6uxp4wlfxF6S8tR9xJ71yAPtjha88sskKVnw
CuRzkaB8+6V4vsQb4Es0kk0WipCiTDIwD/BDkfcgRLmwb7p5H2EzAcn4fQo+0a3LiGB+Dp7ITr6x
QoGvOGmuV3kLa3GRunPs44nHqc4o8T1DeAmWojYb6CD8yNzfg8hfSiWQM2Y7Oc7tkSsVAKXviVBE
bMBfF7VC74NQlfKWDF/AaF6pl73WBz47qRALBud7DD6LmhcI/zJwTkTj66TcV4XLVJdGRfKTbWWB
JG6kN+mb1YizCnFHt2grOEl58hyZX1KLP7FPNcZL+Cyyh9vEyxZaSBUcKEwThJwvGg2pGXtI58Qc
Gfc4S5/BaBJFlTCNZ2wyH6oGfTcFeLsVIBq5ot6xaZ8WqLIfIvx2WsA6zu5robOgd/rQQmqNFqA7
IiqEB8UzkyuRdr66EvytkCJ3y6rMqX9nGSrk4Sc0iZIR4//S8VP6BjrD2Sr15mT9I7JIFkr2bw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FBDEA8193B2E90"
last-modified: Thu, 12 Nov 2026 00:48:21 GMT
content-md5: vcv/fVsiURqKM3XboI7chw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f2994f2-cd09-48ef-b626-1177e6828ce9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-99491edb-6eb0-ebda-a7ce-a7f511222764/test-blob-155f96ad-7c64-3503-7e00-9362a0688766

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
last-modified: Thu, 12 Nov 2026 00:48:21 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:21 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1FBDEA8193B2E90"
content-md5: vcv/fVsiURqKM3XboI7chw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4b27141-f17f-45cd-bc78-d494d54d3fc0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:21 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:21 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-99491edb-6eb0-ebda-a7ce-a7f511222764/test-blob-155f96ad-7c64-3503-7e00-9362a0688766?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x1FBDEA8193B2E90"
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
x-ms-request-id: 9903608a-804b-4646-a045-fa11eb5eebfb
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:21 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-99491edb-6eb0-ebda-a7ce-a7f511222764?restype=container

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
x-ms-request-id: 5c8d222c-ec26-448e-82be-6359ba14697a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-ee1dab79-4f9b-04b2-5ded-2ca82ffddb9e?restype=container

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
etag: "0x2410F299AFA9140"
last-modified: Thu, 12 Nov 2026 00:48:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ef81ea32-5bd8-4660-9838-9522305d313b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-ee1dab79-4f9b-04b2-5ded-2ca82ffddb9e/test-blob-6fc57ccf-cf09-7254-33c6-e6bd75ec7247

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
G3SGJtNkX7aIv3w8yD01AEgTeJmFhmWpVqu71Gn0jnF65Yy6d7TLax0O5kpTGKn1kOZ1YnPZwZQP
3c8oqIpNlDALweOwe4mTSA18d6AaVT4CxkSDfiz9oSP4q5rkosKTwFIaSFbFRBVc4hplXUr09IeR
JeJFyhUEDSDAuNDvrqVL6bZOAA3oPIIvJpwSl0TYBLYSU3zfTfY8FTo2BYtFbTN0GnOTpfR5qOlg
FqN48nbb57MZ3Fsoa5vAEerSsjf26rhpnX3QRV7BmaqTfzZSwyPEWh3XK5HYTK7X05QJpvaxaizr
D1T5CqJVV0OwlexlbU3HDlcaHr4mkVHO+HHKuPK04RQKZ7TOyk96gtNOJ7bBcmZGQpifl0xtxH4D
KhExi59R/LPXWgWZ+EMHn5vr2GmaDIYKg3VZFUrInaM2yqA+Sfcz/SsD6hhgrElUl/iwgesUaR6L
Jgcp9+ZpDrxiYy6jyVWkt9s+liJtqtYsBX1RGBu3IWGBsiLvCgZEmttb/UkbsM2jC8oQ1tL7HXwx
/fFpF/agq0HMIRYyta3V+fxHEayNEVSvrgxRpkuPhpSmvgwU24Lku1IHTo+3cFYcO9zVtAvQo+yd
uWnpTgX2PZuBjPegwB56YlZahcLF+D22NGpuudGI1RogdyEZ+2xNERHzNeRffHq+W1K1dh4p18Ar
Mhqah4PJ+bbcf0n8YWbqDHOw0sNZV7jvr15/01/7959h7chSsoqNKjwtgv0xwvrrymmreAX90dth
qtclSSVX4Iiqm3OdmFrpI6eGLNW7vuxjlAn2UH6aYxvt8AiyaOAW1qF0hieGTTIPwlVddqUGpuzr
wbUcYZAJEDdXsKhSNrrHcFUzRjfF3EbW544pPOx250kbx6Yr+nURa3bvL52KvIublgZP0mC0JeRu
RXkB39NL4cheNm8Tm3XgItrB1a2pTCoDjqblJhXpZ6HBvbX7EIuipE3VK4Ybh/qRbrCF81A3xPhP
/VEtZbqydc7OUd7A5RJOHjBf1CGj5wesVLdkY3RQivi8qxI6dT+TIra3TTUb0ImeN9Uf1/DXrBZK
gBACTRFafcflBDn/FKjxzLFr65rRkIMuxiyeMLII5f/78PQukNSkXc9tNcxPniIsLgs/bMB7ePCM
1Iflu00U3R46BCSzwzvdxo7LY1q33igJcgKnyXg/gHcEobtNvqGCWVitFZr+eGrPYaUxsBWV1fZe
3ElKbRSm+oOsryF/kAftSAoCCciOCvmY12fTDc9ibszF7uJYOOtDBxoWUclIT9GdRGgKk8su0NFP
spWt0uy0SkBVuqEllBAevgKtd7gwT4eVNclnV9sAlh0RCIZWljQuYQeI8pUweK9X7NTJgVgYHw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2490F5EB2FBA000"
last-modified: Thu, 12 Nov 2026 00:48:21 GMT
content-md5: RXwl1OusBkhrtmMEcr/+jw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6e5cebf4-92be-4670-b534-d590a5d8dec6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-ee1dab79-4f9b-04b2-5ded-2ca82ffddb9e/test-blob-6fc57ccf-cf09-7254-33c6-e6bd75ec7247?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-id: a99b2334-afcc-b719-33a7-c4e535ffce28
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: 014ac32f-954f-42c6-a7ee-ef6b8c1b3168
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:21 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseNotPresentWithBlobOperation</Code>
  <Message>A lease ID was specified, but the lease for the blob has expired.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 20: DELETE /devstoreaccount1/test-container-ee1dab79-4f9b-04b2-5ded-2ca82ffddb9e?restype=container

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
x-ms-request-id: e45e5e17-81d3-40a3-b2cd-8fcfe4a6491a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

