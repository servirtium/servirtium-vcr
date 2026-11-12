## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a6d3658e-557f-dc30-07e0-ea0a0d4f377b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SyncCopyFromUriAsync_Destination_AccessConditionsFail
now: 2026-11-12T00:48:34.4969056+00:00

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
etag: "0x26EFFA0B9C51CE0"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5995121a-63c0-4cf9-ae35-16c2be2d0715
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a6d3658e-557f-dc30-07e0-ea0a0d4f377b/test-blob-c614d10f-38b8-d2c1-0779-4403b134a670

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
fzBjwcp/TQjI5NM6KE6HtucVNIKacs9z1Fb9Ddpn42/zdAXulkfBDxjK3pqB9rO4WTQi9xq14Axh
7+1zgT8uYABkR7RJmB+gUyVp0JQ08d2jRLSmRexUPpT5jaZZTo3YnH2ZHa//b8AUgaT1Sw93LP4Q
0DyLiBsUDwgfTwp4RwWXkDQXmtMupNXzkcNHX/OEgWGoSH1RTRNhhQ6m3x+2mzmfXrrbYJEq4Stn
mPZYzbAVm86p0P6HRkMgtRXFh8W1PPaJqAE4qSDPfmdS6bQdCbhdkURQDMs7GBd2u6p8ZFpmsVsA
ziSu3PKu2lKXNFyPAqxdZ/aAZDArTo/pwu51UxkM7DhZHTuTrrRSojJ4o+O757j+Hvxk5U0q1H+U
xRoEOIY4i0gkNuVxyrhBLsH+squsLds2dzQcqAbrLki7/umaTmqrQBial7HSjVREI7aLLCLU6Jc/
zsBRHOJBOQictcvPpuBXUnKTEZYqY+rg2IVQXwEm5xVRW4CqWSM1WV6oNdiIdHzVNNmvQdYAFGrW
cUNd8dkGdc22fUpgrPlOXbg4gS0SV2MIeisnd6Y+UEYV1Ojg2GeEor8K0vcxdYfgYOMeyJM8xBnf
VHet3v4mdywDS9gRboVRs95tB4Vs1gSkRxbDIIiy2A/OAYPv18PB5FrKLSquz/JezRS0z7yTcn1y
CJfoY1akUHLJQm0BYdwbrCIqoqja9ngjZFNz/glTOo4Ffc4r2IEEJty35YyFXWs4mSKaadDVlxIf
xP4DMFJodgje++QO79ShJnvLIxHsnQfnO2TnuNG9MOW7DBOCAfaJTm+Dp2GHKapO+EJUCXQBMyf3
G/Tugb02IMv+UuLAHyWFQtSiaPamYBG6mcCPaSdwutnsiuUBm82xTYaVidfHjdgdzsegXsowUbvi
NOj8p7ekjZcJ1JQ/hKYH8BpwENc68wvncppg0FsOuzkqH2fktaXO8fs/vblD3UogmG6wwEDkp0Hc
FDUdQ7w7+hhbFWQ/Ijt0oR/b+zVSpJRPQDftXvr4RXclCKBwsa0+A8Kg6Mfm4HYzOx8hCKwLinCg
zgOETpweYs/tGRqaBPBxnPdysbvNaV/BuiPb1z3KGn0v0OOqubUmgYX3+MZcmDcvsGy0mdi00mSk
w5R5Q4uSIv+cajQMx+JCSy821XCYZCHrqyfQFoCke/1+BvYhrT76ZNXHwC4DIumJck2pfvzzC19y
jZdjwgx+9+82jsHsIZ7xPHGa0aTy6Ik+R6Qz+/wAivqXrh+mlqLJSMg+zJQnnVCut0KLWTq6f6QO
JXpoS/zyNQPGVXN+SqXO0YjctBz1FqlThEO6dDG/3C57mHAnYf3MTJaQYUfdMG2cvYey3suIGQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2643E614E67D260"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
content-md5: Qq2CZeoF9ND+ymC8ufO4Jg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8f2962cf-f99e-466d-957b-f6a97c44608e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-a6d3658e-557f-dc30-07e0-ea0a0d4f377b/test-blob-85670f8b-b564-7562-54d5-1db7a90dfd63

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
fzBjwcp/TQjI5NM6KE6HtucVNIKacs9z1Fb9Ddpn42/zdAXulkfBDxjK3pqB9rO4WTQi9xq14Axh
7+1zgT8uYABkR7RJmB+gUyVp0JQ08d2jRLSmRexUPpT5jaZZTo3YnH2ZHa//b8AUgaT1Sw93LP4Q
0DyLiBsUDwgfTwp4RwWXkDQXmtMupNXzkcNHX/OEgWGoSH1RTRNhhQ6m3x+2mzmfXrrbYJEq4Stn
mPZYzbAVm86p0P6HRkMgtRXFh8W1PPaJqAE4qSDPfmdS6bQdCbhdkURQDMs7GBd2u6p8ZFpmsVsA
ziSu3PKu2lKXNFyPAqxdZ/aAZDArTo/pwu51UxkM7DhZHTuTrrRSojJ4o+O757j+Hvxk5U0q1H+U
xRoEOIY4i0gkNuVxyrhBLsH+squsLds2dzQcqAbrLki7/umaTmqrQBial7HSjVREI7aLLCLU6Jc/
zsBRHOJBOQictcvPpuBXUnKTEZYqY+rg2IVQXwEm5xVRW4CqWSM1WV6oNdiIdHzVNNmvQdYAFGrW
cUNd8dkGdc22fUpgrPlOXbg4gS0SV2MIeisnd6Y+UEYV1Ojg2GeEor8K0vcxdYfgYOMeyJM8xBnf
VHet3v4mdywDS9gRboVRs95tB4Vs1gSkRxbDIIiy2A/OAYPv18PB5FrKLSquz/JezRS0z7yTcn1y
CJfoY1akUHLJQm0BYdwbrCIqoqja9ngjZFNz/glTOo4Ffc4r2IEEJty35YyFXWs4mSKaadDVlxIf
xP4DMFJodgje++QO79ShJnvLIxHsnQfnO2TnuNG9MOW7DBOCAfaJTm+Dp2GHKapO+EJUCXQBMyf3
G/Tugb02IMv+UuLAHyWFQtSiaPamYBG6mcCPaSdwutnsiuUBm82xTYaVidfHjdgdzsegXsowUbvi
NOj8p7ekjZcJ1JQ/hKYH8BpwENc68wvncppg0FsOuzkqH2fktaXO8fs/vblD3UogmG6wwEDkp0Hc
FDUdQ7w7+hhbFWQ/Ijt0oR/b+zVSpJRPQDftXvr4RXclCKBwsa0+A8Kg6Mfm4HYzOx8hCKwLinCg
zgOETpweYs/tGRqaBPBxnPdysbvNaV/BuiPb1z3KGn0v0OOqubUmgYX3+MZcmDcvsGy0mdi00mSk
w5R5Q4uSIv+cajQMx+JCSy821XCYZCHrqyfQFoCke/1+BvYhrT76ZNXHwC4DIumJck2pfvzzC19y
jZdjwgx+9+82jsHsIZ7xPHGa0aTy6Ik+R6Qz+/wAivqXrh+mlqLJSMg+zJQnnVCut0KLWTq6f6QO
JXpoS/zyNQPGVXN+SqXO0YjctBz1FqlThEO6dDG/3C57mHAnYf3MTJaQYUfdMG2cvYey3suIGQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F1D432B64874C0"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
content-md5: Qq2CZeoF9ND+ymC8ufO4Jg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d5e200f1-ecf5-4f1a-bbda-c0eb09c000d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-a6d3658e-557f-dc30-07e0-ea0a0d4f377b/test-blob-85670f8b-b564-7562-54d5-1db7a90dfd63

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-Modified-Since: Fri, 13 Nov 2026 00:48:34 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-a6d3658e-557f-dc30-07e0-ea0a0d4f377b/test-blob-c614d10f-38b8-d2c1-0779-4403b134a670
x-ms-requires-sync: true
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
x-ms-request-id: c3f32c42-2f71-4db1-b459-59ac0981280f
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:34 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-a6d3658e-557f-dc30-07e0-ea0a0d4f377b?restype=container

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
x-ms-request-id: 322fde9f-e643-4bed-b177-487065fbc5b9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-56617ff3-364c-1313-d5be-59ce992cbb68?restype=container

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
etag: "0x219FFAB0B598400"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6a514bd3-6b20-43e4-82cd-4d898e65fa2a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-56617ff3-364c-1313-d5be-59ce992cbb68/test-blob-e2bae05c-2eeb-6e8c-80ca-8d44fe71ea96

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
FxcnzmMCtFlun3LiGwko+nvhEDLSTyRU/FSwpluT3CcZtJ+R5S7/8MsH56zDMPfLlV9TtxyJlcjz
0tIOUg3+28JLyGdplhRM4R9nymd3kctd5BD7QCQLkB/XnhNc8J29CQzqeGiQYf5LBtb8IspgfEEH
sW79ApuePzhIkvgA8PGBqcFajBhjzYIRsDlODm1UdyHSVT8vvwZxTDgvSM8GShbkengJBu8opOTr
61JhTzHL8xvWLpuyUuq66UDfM4SyC2UjaZP0S3EyqbBaRNS0D/wHZFS0Lxx7MiiOThyuSXBfON/s
PeWd1qiqpITqVw0VBtlE2M8w/ttJqDdrZfxUg2BA+wz0x9IWao2rCouXkNoaeUhDanGhLjoEo5Wt
MXCrVSAkqVwBID4HLW5BhPNPsRddUOy0ERnvn8zR8CQ8aDgcALVrcuZ+GVgJOzwDX6pGtPF9UOGE
9kQGNQqPLzAaysU1JIQ+5D4w3zeUq9Xd6z8iizsyvxhWmAlwZD3c7uko73B3zTolB9CzTHGq8Etu
KUnLbaT06Aut34t7zX8BVPFNbLxkZh4E/INrf3KmrKi9AjvzEIBFMwdlyu2vqjpQsfeAXIOPCcIq
xnEgiWiZBjPivctEDUNwBzm1/5wwVVFJG816Jk8kLvh4yUoPJKmey8O6zO1uDKS0D1VK2gom+XAf
126bH+DjvY/Sy0T5YeOPFjPYdYlk2g8oxhb62lPtUs/Z7007Aqzj1w5dnEBguq5yu8PXToTnuv1f
c1jJ6eM75Hh0IHGVVBSG9J57Bz7OxwtoiB6QFgRL8TVQ3I9UGu0qIbfH65o83GevUFnlbLO/kKtM
YGHFq850KS48RXeEMtqxUOWGBtxxLKu34MWrZYWCkUvkB7mMZHbpU8JrAJbvKh5+NBvNOIrO2zS1
DsoIycOpurQsoCogJetvnbIZBiwUx7anLDFptFnAFSyF1lar4In+wkbiworzXQ8wXprXtdQHoEYU
YJyRQAVba4r+m06Vw70pG0TmMgQss84iOVa+6WBXfTUPl4DsbYJAh1b/9MLAmprdrpqQIW5B6KzO
bgavnIIqpx0YhSw9PK3CpauuLL4MYp684TrGxlzHzq/THv57kerT1U2kpxVtoHLsznvCk7vuwQxo
87pIY+DBULd8ah2vRhTA2lZxaLqITkHI2vjgBDrz5F3xE54wi3Jt4lde8TZVPIdnArlkfVlS36R4
gIno4Ux8iYXAvTN1j07kA4VjKl0Lcp1weQKBjmcDnzP5twvohQEL4mewlX5U8XJqgHnU77RHbQ3r
eGhJ+vodvB7/fNhD+36DWEj1Wt0fG4ePFw7uL69/sUr+/Q2Zwedtk9hfVHWaJ4T7UJdsUhIvyw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24C4C723B372500"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
content-md5: y3JBlVMWe+OfAZ4i3YKCPw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1b4d3a3-b9dc-47e5-b65f-869be56ecb7d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-56617ff3-364c-1313-d5be-59ce992cbb68/test-blob-05c78760-c7bf-f412-f08a-f3df18125e38

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
FxcnzmMCtFlun3LiGwko+nvhEDLSTyRU/FSwpluT3CcZtJ+R5S7/8MsH56zDMPfLlV9TtxyJlcjz
0tIOUg3+28JLyGdplhRM4R9nymd3kctd5BD7QCQLkB/XnhNc8J29CQzqeGiQYf5LBtb8IspgfEEH
sW79ApuePzhIkvgA8PGBqcFajBhjzYIRsDlODm1UdyHSVT8vvwZxTDgvSM8GShbkengJBu8opOTr
61JhTzHL8xvWLpuyUuq66UDfM4SyC2UjaZP0S3EyqbBaRNS0D/wHZFS0Lxx7MiiOThyuSXBfON/s
PeWd1qiqpITqVw0VBtlE2M8w/ttJqDdrZfxUg2BA+wz0x9IWao2rCouXkNoaeUhDanGhLjoEo5Wt
MXCrVSAkqVwBID4HLW5BhPNPsRddUOy0ERnvn8zR8CQ8aDgcALVrcuZ+GVgJOzwDX6pGtPF9UOGE
9kQGNQqPLzAaysU1JIQ+5D4w3zeUq9Xd6z8iizsyvxhWmAlwZD3c7uko73B3zTolB9CzTHGq8Etu
KUnLbaT06Aut34t7zX8BVPFNbLxkZh4E/INrf3KmrKi9AjvzEIBFMwdlyu2vqjpQsfeAXIOPCcIq
xnEgiWiZBjPivctEDUNwBzm1/5wwVVFJG816Jk8kLvh4yUoPJKmey8O6zO1uDKS0D1VK2gom+XAf
126bH+DjvY/Sy0T5YeOPFjPYdYlk2g8oxhb62lPtUs/Z7007Aqzj1w5dnEBguq5yu8PXToTnuv1f
c1jJ6eM75Hh0IHGVVBSG9J57Bz7OxwtoiB6QFgRL8TVQ3I9UGu0qIbfH65o83GevUFnlbLO/kKtM
YGHFq850KS48RXeEMtqxUOWGBtxxLKu34MWrZYWCkUvkB7mMZHbpU8JrAJbvKh5+NBvNOIrO2zS1
DsoIycOpurQsoCogJetvnbIZBiwUx7anLDFptFnAFSyF1lar4In+wkbiworzXQ8wXprXtdQHoEYU
YJyRQAVba4r+m06Vw70pG0TmMgQss84iOVa+6WBXfTUPl4DsbYJAh1b/9MLAmprdrpqQIW5B6KzO
bgavnIIqpx0YhSw9PK3CpauuLL4MYp684TrGxlzHzq/THv57kerT1U2kpxVtoHLsznvCk7vuwQxo
87pIY+DBULd8ah2vRhTA2lZxaLqITkHI2vjgBDrz5F3xE54wi3Jt4lde8TZVPIdnArlkfVlS36R4
gIno4Ux8iYXAvTN1j07kA4VjKl0Lcp1weQKBjmcDnzP5twvohQEL4mewlX5U8XJqgHnU77RHbQ3r
eGhJ+vodvB7/fNhD+36DWEj1Wt0fG4ePFw7uL69/sUr+/Q2Zwedtk9hfVHWaJ4T7UJdsUhIvyw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2287D4A3E8CF680"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
content-md5: y3JBlVMWe+OfAZ4i3YKCPw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 13c97414-adb2-4f7e-9fa5-6047b6e05463
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-56617ff3-364c-1313-d5be-59ce992cbb68/test-blob-05c78760-c7bf-f412-f08a-f3df18125e38

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Unmodified-Since: Wed, 11 Nov 2026 00:48:34 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-56617ff3-364c-1313-d5be-59ce992cbb68/test-blob-e2bae05c-2eeb-6e8c-80ca-8d44fe71ea96
x-ms-requires-sync: true
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
x-ms-request-id: db61e2a5-c373-4d7d-a5ec-a1135665e8bf
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:34 GMT
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

## Interaction 9: DELETE /devstoreaccount1/test-container-56617ff3-364c-1313-d5be-59ce992cbb68?restype=container

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
x-ms-request-id: 4c7aa67b-d613-4f77-b030-c57097af5efc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-b8b031cf-0506-6481-4cf0-d3aa0ce28689?restype=container

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
etag: "0x24F7791AA0B4780"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b891ac4f-22a0-4cad-a110-79076b6e96fb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-b8b031cf-0506-6481-4cf0-d3aa0ce28689/test-blob-996ac662-0111-9809-519a-2e036edfec59

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
ZQAMykoqDJXOxfJhO6xWbmtVdczAMZBbBmK4zvNn5w4EaXkXBpTtpCUb6kASHymfmmU+t2y5yTRw
scTocT2hZt7kXdEzPmjXZ9CnpEZPSOY5GTSNKS+hSp9Fp1XPBTPneYRiLsJXbFv9ZlCbESXtIGjd
r1cIFD2uQhIy7ZYTCGKdvyrC7Rkj4a3YkMLfBTh6V4fs8lXc32VHtOuwJH7F6l7u/lL7KzNOuc2q
L4N6zj3ZuJYPJhYMwODEezguc7wvE6Zk8QbmfixUnTiIMq/hzOWu1mzntcNI4T1yNq/6IEYRehvd
Fd028jlpu4jehI4w4q5Sf5xQR17iGw/IdEh9WX3xd7eTBLcIeOMzfvo6al2vQVMBqKCpwTK9+/rN
bX7w7GEL7A3Xnd73SQe5Hcljp7GxGTP1e7HcSLaE1gi8OgplQpGYLn5Q16R0CV6Y8KRpWlNIHFRL
+3CwLqNXUsfWOg/9VNo3yngzYEGOgHJSQ1gSG3u0dB62GUYg5wDa+YXdns9Pm5zJMY/aFbsSvHv+
XutLRTdLIcbwRzqUFuN4WWa8seGiA6i8SOns2l5io13KIokUjrROkX0IXlRhNBqsYrxVVgqZW1pC
j/xNXkdnjaPdyvRZY8qxbR9kmqRUWhTPQHeiDU1SMcYu0f64ATM1odCwhGomU/7xo+jqNMG27jXn
fh7PxYBWi5gtKpHL+GzsLvjTo9aqqe15sGplZ/wFeOPJ0YMUZtxQWvjR+ChsJqp7/gbI4ktfPNQx
VRQW8SScJ7GuAifp2Mgcg0nd2bDEDYq/6Wn2PJaYapSu4hHHOmnUNNB3vSOCkSU+rF4BgWMkbUeK
Vge6pusaFpiSO/W2VUngCKTfTVBmPFhDuJA3lugxiXXJPONhGY7lXKaL8FUwh1YVIXm/RR/3JBmu
d+5b44CvYbJ/7Rllfu4W+fCp20wCEjA5IXVucURV0RjJsqKginkm246jsJk9sKKLqUsuTknMrGS9
IcEKQe9uKhwAm8tMdW93gv++X2KX+3HS48j4JoLO/QY94mi3G5qeNIZ9PBXWPjPbt8tJDk0CJiZQ
N10mdQOZMp7FDpMHv2dkHyrbGb5c/KSVHW+3hO65OrxBZ+M8d7+D4wp2ETCg1Pdk5e8iJgxo9Du5
kViT4q2wC9TWxVeDJ6drWDaz5ep09Uh3Up//lhSw2XOog+Zm7wFdxgVbyQ+f4b1Ht87VtA5QRJsQ
G48NsHXAJevk2qPBBGg0VR7kGCs52HHit95F2iRlVz9LVtRyUBWQm6QjuwYZhbNloV/wbCxv1kMe
KviWekrGfoNkdq6UwgUIVHyHFRxqyDIr4DnFdOsT23+QVCUc+iFZXDyDtA8F0N5a5xev58Emsw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25A429BE4DF4120"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
content-md5: pKyDrQ7Y3crKiJCOJ3dE1w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1e8670aa-8939-4af8-8395-7d2b6088186c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-b8b031cf-0506-6481-4cf0-d3aa0ce28689/test-blob-dfb92e5b-14e7-2622-0f5a-6b8dd364f3be

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
ZQAMykoqDJXOxfJhO6xWbmtVdczAMZBbBmK4zvNn5w4EaXkXBpTtpCUb6kASHymfmmU+t2y5yTRw
scTocT2hZt7kXdEzPmjXZ9CnpEZPSOY5GTSNKS+hSp9Fp1XPBTPneYRiLsJXbFv9ZlCbESXtIGjd
r1cIFD2uQhIy7ZYTCGKdvyrC7Rkj4a3YkMLfBTh6V4fs8lXc32VHtOuwJH7F6l7u/lL7KzNOuc2q
L4N6zj3ZuJYPJhYMwODEezguc7wvE6Zk8QbmfixUnTiIMq/hzOWu1mzntcNI4T1yNq/6IEYRehvd
Fd028jlpu4jehI4w4q5Sf5xQR17iGw/IdEh9WX3xd7eTBLcIeOMzfvo6al2vQVMBqKCpwTK9+/rN
bX7w7GEL7A3Xnd73SQe5Hcljp7GxGTP1e7HcSLaE1gi8OgplQpGYLn5Q16R0CV6Y8KRpWlNIHFRL
+3CwLqNXUsfWOg/9VNo3yngzYEGOgHJSQ1gSG3u0dB62GUYg5wDa+YXdns9Pm5zJMY/aFbsSvHv+
XutLRTdLIcbwRzqUFuN4WWa8seGiA6i8SOns2l5io13KIokUjrROkX0IXlRhNBqsYrxVVgqZW1pC
j/xNXkdnjaPdyvRZY8qxbR9kmqRUWhTPQHeiDU1SMcYu0f64ATM1odCwhGomU/7xo+jqNMG27jXn
fh7PxYBWi5gtKpHL+GzsLvjTo9aqqe15sGplZ/wFeOPJ0YMUZtxQWvjR+ChsJqp7/gbI4ktfPNQx
VRQW8SScJ7GuAifp2Mgcg0nd2bDEDYq/6Wn2PJaYapSu4hHHOmnUNNB3vSOCkSU+rF4BgWMkbUeK
Vge6pusaFpiSO/W2VUngCKTfTVBmPFhDuJA3lugxiXXJPONhGY7lXKaL8FUwh1YVIXm/RR/3JBmu
d+5b44CvYbJ/7Rllfu4W+fCp20wCEjA5IXVucURV0RjJsqKginkm246jsJk9sKKLqUsuTknMrGS9
IcEKQe9uKhwAm8tMdW93gv++X2KX+3HS48j4JoLO/QY94mi3G5qeNIZ9PBXWPjPbt8tJDk0CJiZQ
N10mdQOZMp7FDpMHv2dkHyrbGb5c/KSVHW+3hO65OrxBZ+M8d7+D4wp2ETCg1Pdk5e8iJgxo9Du5
kViT4q2wC9TWxVeDJ6drWDaz5ep09Uh3Up//lhSw2XOog+Zm7wFdxgVbyQ+f4b1Ht87VtA5QRJsQ
G48NsHXAJevk2qPBBGg0VR7kGCs52HHit95F2iRlVz9LVtRyUBWQm6QjuwYZhbNloV/wbCxv1kMe
KviWekrGfoNkdq6UwgUIVHyHFRxqyDIr4DnFdOsT23+QVCUc+iFZXDyDtA8F0N5a5xev58Emsw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CFB729F901AF80"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
content-md5: pKyDrQ7Y3crKiJCOJ3dE1w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7e705b7e-d5c5-49d9-aa55-9e4351c4a9bd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-b8b031cf-0506-6481-4cf0-d3aa0ce28689/test-blob-dfb92e5b-14e7-2622-0f5a-6b8dd364f3be

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Match: "garbage"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-b8b031cf-0506-6481-4cf0-d3aa0ce28689/test-blob-996ac662-0111-9809-519a-2e036edfec59
x-ms-requires-sync: true
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
x-ms-request-id: 0cea8650-0cb5-4c71-bbd9-f3df48bc2c6c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:34 GMT
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

## Interaction 14: DELETE /devstoreaccount1/test-container-b8b031cf-0506-6481-4cf0-d3aa0ce28689?restype=container

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
x-ms-request-id: 1d7f595e-5dfa-49c0-87e5-3fad942afc55
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-55c3a069-878f-5b47-32eb-6374d6cc707a?restype=container

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
etag: "0x24A5C4E872C4A80"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f3515c28-429b-4829-b406-f0b27950a216
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-55c3a069-878f-5b47-32eb-6374d6cc707a/test-blob-8cd973fc-9a41-9422-fa44-b67154deba62

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
+75TuAdHy06kRIq2lXzE7aZvms0clsrT512s/LCtT0Lq8ZIVEDu2ItV1sUr9kMW2JnXOZzKjXWTz
f9Gqms+d9/VHzKTpr9xruXf4p+V/1laY9tY63+cQRpMtIZBpDIcF2LlUtsMhzHaZYq66qrZ/dKl7
EqT4YhcON4UQvI5LAqzv8s4rKiCSdilgoXw5VZzcrazn7vrjDHWhRn4+EBDnTWAByrfnVEmI6Jt6
mMCb1OHpNA7hZBOxDOVZieShVGYZeFQcN4rk9FljXgVfaXS1BnKcVNwBBehMT77Sjspk55Q0YCBr
fpxXBD+1fgUNUqJxo4JyBP+KGHJsz+jLEmaO/ndxKghTSofVRU+cTIfjP/0cYOtI8uKUqkiu/6+0
i/LYJn+NnCeZHln6nL+v7cvqiJDqr7F7RguV3IDApUrYIbldwyUIVaPVgkKRTVYi5bx8w3YfydxA
XeBz+L+n2XgOInsGUiml4jLsFS1v6fi1cvfDQ+HUuVfdHGZFlF3jLajJgyvbHJKT1uFDMrSu0HTo
voXI5JWWOmgjKDXDYE3VCeeEpmbM2VZlL2wAkIaiLkvyXdbXG0kTMkjCt/Nc0HaUbinMKioNG+Qv
Y7QolqnigPrq0QN2/e2dcXMdCiJiCF/2bCJd1QMh5EHxqLiV6pyf4Db4cv9yHXA7L7m28BDCzFpU
MSqGhar2yO3BhFU0CIbXfSnraZZghE6yIaZKavMwL9teQLhyGFuLAqkSsJgbByYy33Lm1mPE9K3b
1GQEq175kVV51sfOZWXOYGfsTtS2lhp/GIuASVl4mUwLlkP3h1ZLGB9DoTBfY3oNGHb716XYJD1J
hJPSeUf7ADx6w84h19gQoTa1c/XpILQRczHifMKnMnIFrQLDeJ/XR6Dz5aCr60Cd6zZvI7FIYGTe
wQUVGIR605FcGyrVTSiW3StU9joUZYfxRZGLOA7AvUye5baZwi4ceBIPT88VyJ4N2EaG9Gkpylx+
I9Py75uCnF7dNmhy/Rv8N30oBBW3233zfV/IOcnjdRtZG55bKYl3jLNxN5E1m9oribzsAMVHxkhW
/3E7umKV+sFMGOJ8oQ70sXhhRqTrveGEnLAM93RWElRWBCkXO9FR3D3P6YP4ruet905M5YCjakKP
th6yiANM9gWNJp3k3XamEGlmHNRejO7IX/8mCS3Tspnnh4Szn1M5gvJ+aohKyRrYptUWPU5tMSow
6SkDJu3YunMD/FXx83AVLJni4CFlfZXlTWNXvHVLelZag7UqNlwEpbAUR8zE57JkABC0i1EIymyT
HtmKgP3+uIL/lm+76/Y93TpxUTbJIWWw87tklu4EUblJlxiCeiWzFY5KxFFDqRUad64Wl3k2yg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x210E038DB709C20"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
content-md5: dk9CYBsOlnI113nGqooKlg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 08df9bf2-6e27-499d-82ed-b58bb06395bf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-55c3a069-878f-5b47-32eb-6374d6cc707a/test-blob-a73bbd15-5c7e-6c14-4aa6-4a1e40eeba3f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
+75TuAdHy06kRIq2lXzE7aZvms0clsrT512s/LCtT0Lq8ZIVEDu2ItV1sUr9kMW2JnXOZzKjXWTz
f9Gqms+d9/VHzKTpr9xruXf4p+V/1laY9tY63+cQRpMtIZBpDIcF2LlUtsMhzHaZYq66qrZ/dKl7
EqT4YhcON4UQvI5LAqzv8s4rKiCSdilgoXw5VZzcrazn7vrjDHWhRn4+EBDnTWAByrfnVEmI6Jt6
mMCb1OHpNA7hZBOxDOVZieShVGYZeFQcN4rk9FljXgVfaXS1BnKcVNwBBehMT77Sjspk55Q0YCBr
fpxXBD+1fgUNUqJxo4JyBP+KGHJsz+jLEmaO/ndxKghTSofVRU+cTIfjP/0cYOtI8uKUqkiu/6+0
i/LYJn+NnCeZHln6nL+v7cvqiJDqr7F7RguV3IDApUrYIbldwyUIVaPVgkKRTVYi5bx8w3YfydxA
XeBz+L+n2XgOInsGUiml4jLsFS1v6fi1cvfDQ+HUuVfdHGZFlF3jLajJgyvbHJKT1uFDMrSu0HTo
voXI5JWWOmgjKDXDYE3VCeeEpmbM2VZlL2wAkIaiLkvyXdbXG0kTMkjCt/Nc0HaUbinMKioNG+Qv
Y7QolqnigPrq0QN2/e2dcXMdCiJiCF/2bCJd1QMh5EHxqLiV6pyf4Db4cv9yHXA7L7m28BDCzFpU
MSqGhar2yO3BhFU0CIbXfSnraZZghE6yIaZKavMwL9teQLhyGFuLAqkSsJgbByYy33Lm1mPE9K3b
1GQEq175kVV51sfOZWXOYGfsTtS2lhp/GIuASVl4mUwLlkP3h1ZLGB9DoTBfY3oNGHb716XYJD1J
hJPSeUf7ADx6w84h19gQoTa1c/XpILQRczHifMKnMnIFrQLDeJ/XR6Dz5aCr60Cd6zZvI7FIYGTe
wQUVGIR605FcGyrVTSiW3StU9joUZYfxRZGLOA7AvUye5baZwi4ceBIPT88VyJ4N2EaG9Gkpylx+
I9Py75uCnF7dNmhy/Rv8N30oBBW3233zfV/IOcnjdRtZG55bKYl3jLNxN5E1m9oribzsAMVHxkhW
/3E7umKV+sFMGOJ8oQ70sXhhRqTrveGEnLAM93RWElRWBCkXO9FR3D3P6YP4ruet905M5YCjakKP
th6yiANM9gWNJp3k3XamEGlmHNRejO7IX/8mCS3Tspnnh4Szn1M5gvJ+aohKyRrYptUWPU5tMSow
6SkDJu3YunMD/FXx83AVLJni4CFlfZXlTWNXvHVLelZag7UqNlwEpbAUR8zE57JkABC0i1EIymyT
HtmKgP3+uIL/lm+76/Y93TpxUTbJIWWw87tklu4EUblJlxiCeiWzFY5KxFFDqRUad64Wl3k2yg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20B88930EB58720"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
content-md5: dk9CYBsOlnI113nGqooKlg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6e621725-c27a-4a39-8d1f-4cd09a38bb23
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: HEAD /devstoreaccount1/test-container-55c3a069-878f-5b47-32eb-6374d6cc707a/test-blob-a73bbd15-5c7e-6c14-4aa6-4a1e40eeba3f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x20B88930EB58720"
content-md5: dk9CYBsOlnI113nGqooKlg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: df454dd1-9faa-4964-a563-54994b6fbfc2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:34 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-55c3a069-878f-5b47-32eb-6374d6cc707a/test-blob-a73bbd15-5c7e-6c14-4aa6-4a1e40eeba3f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "0x20B88930EB58720"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-55c3a069-878f-5b47-32eb-6374d6cc707a/test-blob-8cd973fc-9a41-9422-fa44-b67154deba62
x-ms-requires-sync: true
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
x-ms-request-id: 0553df2b-b4e7-4dde-aff4-13a31a2e7f87
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:34 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-55c3a069-878f-5b47-32eb-6374d6cc707a?restype=container

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
x-ms-request-id: 6b63410b-7e4f-4786-a4c2-77c6dd06826b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-0f1bcc13-98a0-7b72-6cb6-c90c8c37c13b?restype=container

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
etag: "0x1CB9A7FE5D1C000"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5fce2932-d544-472f-9568-d5daba237bda
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-0f1bcc13-98a0-7b72-6cb6-c90c8c37c13b/test-blob-ae129387-20ed-7e17-1e0f-f56fe000b033

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
vEsB2T2OS6BebEKaTwNTDIp2XofDq8J9S8A6yJII4BPlDmL07OAChIF6sDNV1ytpYr2BFtg5eBGI
g458VIIOVowvtUGhXyCqdNoGSPqOJ3OV0WbVhsk6q5ZQa2lShTD+bFqmJiHqyAOc16H+Mi8X+lsa
54McOM/C9AqqUPO3V+6pCNyf5wFRqwhjOK4nPHhnOXENN56t4TOL4zEXP3cQ5X+zVCpSdxJayDt6
uQAgm7iRQheBqSBQ/CaoFAPQOmuRU1IvdOdNFMFesm5iMigzakh4hf1fjjtfYlgDqWMPio7Q6Gat
8SbRQy1WIvex7sn+dam6V7RuMcQWzxKPSmpeTyjgkUrChXkip0HPCWtErXSOBTS6VDLZYrehliET
QvnC99PO0Vx/PO8vmK9znidY0SGeAEU2o/v1Bi+TIO5XDmVHDBGYddwXD8lFiryDZsOPScUAdUK0
jFTX2cos7BsA2IlKK5EWwFtFhvB78Bk/cp9rA9cpV5gjk3+9wJwR6yOtRLIyODsyeYhpuu9ROJw6
mGYrwehE1oDwJ5cRWP+/NJvNzqtnDDljOYpOwJyp0Vrjgyg25Sk6aG4xQhGjICCJqYZUhGrw0owt
x4dd9RXjR1U9LtTXiU5xkmU9NsonvxlpxRYWVE3w87CbCB6i3XJYTfu8ZvJLsSA44/EEspzCBQdu
8zD/zfIHTDokO4AvzrXz5ejOa1knHhT23nFc7EAT2QMWNOlCWYAItBq3J3WgCBQ8EM2085muRtUc
CO+Aq2D6EGF8GJrMsItoxrY/cPaeVdVdINtzX+ZqaO0TJlCRiAm5vRYTJO95cGBBTCzib9befbMZ
I4uEhrF7ErCtuIo71j6thbLgijHl4697MRO5h/kWNKicd2R+NTZkmBI/zLfVBnXuNeoj/vOCMz/b
CFWewYq3loPinl7ZLlB8e/Eephf4piudy1EO8za1GkQloyzgxteHhzYz82cWFAaap4IBY40o4mIq
AfU4qKNNLIMatIsjm7UZlh7hxLLDhrZKdEuzs7a2/MDJtsXiTt+T5sbk/GB7dgvN58xuRx6vZ3o/
7jNXmnnNY7fLWuXwN0g/Tt7s34pVz/5A5szpSLWhGU9Ko2CrO0tNFpiprxwm3K+EL/k/w4jw6R40
FrOt4xsBKUCWpZTnkxKSnsjxrCDiGgkcZRm8YVXGWrlCdiSYoDN9p4XbkDYbnZvmrSTA/zz9Uvyq
kH4CRcjqz0vapBzt+v6UcwWaB4rSAMd91bQxBlt9RCQo7g+1e2K98MDrQPh/+bMmK4s2Y0ty14+2
hG8TucnwXWD3xQzu3/ej3RbJ58DP/dwBCtvPRuHZtRZ//vbyqjb3++KYhzSmN0uTk4U0qPDP5w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x246DAAF9C85A7A0"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
content-md5: WfQTzYxG65X9WSVUs7wGwA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7a29d240-6ca8-4b51-ad63-4f639f28f302
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-0f1bcc13-98a0-7b72-6cb6-c90c8c37c13b/test-blob-deebd2df-7536-5aa7-d38f-3bb35ba40c25

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
vEsB2T2OS6BebEKaTwNTDIp2XofDq8J9S8A6yJII4BPlDmL07OAChIF6sDNV1ytpYr2BFtg5eBGI
g458VIIOVowvtUGhXyCqdNoGSPqOJ3OV0WbVhsk6q5ZQa2lShTD+bFqmJiHqyAOc16H+Mi8X+lsa
54McOM/C9AqqUPO3V+6pCNyf5wFRqwhjOK4nPHhnOXENN56t4TOL4zEXP3cQ5X+zVCpSdxJayDt6
uQAgm7iRQheBqSBQ/CaoFAPQOmuRU1IvdOdNFMFesm5iMigzakh4hf1fjjtfYlgDqWMPio7Q6Gat
8SbRQy1WIvex7sn+dam6V7RuMcQWzxKPSmpeTyjgkUrChXkip0HPCWtErXSOBTS6VDLZYrehliET
QvnC99PO0Vx/PO8vmK9znidY0SGeAEU2o/v1Bi+TIO5XDmVHDBGYddwXD8lFiryDZsOPScUAdUK0
jFTX2cos7BsA2IlKK5EWwFtFhvB78Bk/cp9rA9cpV5gjk3+9wJwR6yOtRLIyODsyeYhpuu9ROJw6
mGYrwehE1oDwJ5cRWP+/NJvNzqtnDDljOYpOwJyp0Vrjgyg25Sk6aG4xQhGjICCJqYZUhGrw0owt
x4dd9RXjR1U9LtTXiU5xkmU9NsonvxlpxRYWVE3w87CbCB6i3XJYTfu8ZvJLsSA44/EEspzCBQdu
8zD/zfIHTDokO4AvzrXz5ejOa1knHhT23nFc7EAT2QMWNOlCWYAItBq3J3WgCBQ8EM2085muRtUc
CO+Aq2D6EGF8GJrMsItoxrY/cPaeVdVdINtzX+ZqaO0TJlCRiAm5vRYTJO95cGBBTCzib9befbMZ
I4uEhrF7ErCtuIo71j6thbLgijHl4697MRO5h/kWNKicd2R+NTZkmBI/zLfVBnXuNeoj/vOCMz/b
CFWewYq3loPinl7ZLlB8e/Eephf4piudy1EO8za1GkQloyzgxteHhzYz82cWFAaap4IBY40o4mIq
AfU4qKNNLIMatIsjm7UZlh7hxLLDhrZKdEuzs7a2/MDJtsXiTt+T5sbk/GB7dgvN58xuRx6vZ3o/
7jNXmnnNY7fLWuXwN0g/Tt7s34pVz/5A5szpSLWhGU9Ko2CrO0tNFpiprxwm3K+EL/k/w4jw6R40
FrOt4xsBKUCWpZTnkxKSnsjxrCDiGgkcZRm8YVXGWrlCdiSYoDN9p4XbkDYbnZvmrSTA/zz9Uvyq
kH4CRcjqz0vapBzt+v6UcwWaB4rSAMd91bQxBlt9RCQo7g+1e2K98MDrQPh/+bMmK4s2Y0ty14+2
hG8TucnwXWD3xQzu3/ej3RbJ58DP/dwBCtvPRuHZtRZ//vbyqjb3++KYhzSmN0uTk4U0qPDP5w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C511A92F757520"
last-modified: Thu, 12 Nov 2026 00:48:35 GMT
content-md5: WfQTzYxG65X9WSVUs7wGwA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d7d9630a-f480-44ea-9517-52cd4725d80c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-0f1bcc13-98a0-7b72-6cb6-c90c8c37c13b/test-blob-deebd2df-7536-5aa7-d38f-3bb35ba40c25

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-0f1bcc13-98a0-7b72-6cb6-c90c8c37c13b/test-blob-ae129387-20ed-7e17-1e0f-f56fe000b033
x-ms-lease-id: 053304c8-c4ee-f172-bf2a-f0851ff9088c
x-ms-requires-sync: true
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
x-ms-request-id: ac36696a-5334-4a39-b7a8-1c2475d2e17d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:35 GMT
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

## Interaction 25: DELETE /devstoreaccount1/test-container-0f1bcc13-98a0-7b72-6cb6-c90c8c37c13b?restype=container

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
x-ms-request-id: c09407de-3a03-4cfe-a5a6-8ca8aecde0d1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

