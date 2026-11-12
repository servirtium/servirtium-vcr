## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9374b805-887e-27d0-5fcd-d771573fcf97?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).StartCopyFromUriAsync_Source_IfTagsFailed
now: 2026-11-12T00:47:17.7078465+00:00

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
etag: "0x1CEB6EDCEDA1BC0"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 470fe450-2f5a-4c42-807e-d08e2cc0e2a0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9374b805-887e-27d0-5fcd-d771573fcf97/test-blob-6abf94d2-ec3f-6005-ee6d-cefaf0830b2c

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
LbhUN0aEbqwqsQE3jxXaISTE1L9gEnkYshSlEbnWN9zBq0Sf65dRTiYSQI7qztHYk6zVK65MzBs/
O4Qx31zzU3kldePROzaMc4aZTdHrLeRCzH0MAAwtdd8oYK8TH27JHuwUxVjtBlh2Sbgosn5JUw2f
7xLf5lNt9wAEqdqGeVMX0C/l12iMVcYllrdTBcJg3gyiczBc6TeYps5X6F19789kEOJPZHylEplL
uVCcGvI9pMrO5AYju+b3TDCaNW1pqKfn7/TgEXqQ/GCWEDDn/IzbGkSTrwvIQVX7WBdMC90s4hGp
tCr+XZJPPueljKq2D1Cjvhso1vmbH66e5LliRPGCai0ePUdh3byxQ3AjI7SrRUjHqEzCAwwYDZV8
X3jZ7fr1IyJ8l9EIQuBed5KIePz58p9xm5ulv2cgBjCy5X1E2FV2Lv+SLq52vmZrZIx5kJWZgmzY
aFFeUGO6W5GhVl1iGZ89Ekr8Z8Tx+t01OVvbpnabGGIRa28EF92c19Ic1GcJCEvsPH1LnRuo5210
KBcH37QaBj37Ua0vOPpsX4/x1CV1LDAQ7mr4T3tGaIMBkO7GlfcdAs4qDradvQSD3j2LtxNH/vzn
9/FKIrbBtOkpLagLpsqY09JXSx55cjFmdHE9urFwuZHy3p0G098XaFnNdI9beDdz8+NB8LLdbYXA
5K5FhPk4uXMWGMcskgDyQOPEq/6hCvs5ysfNLsnfFHEYRe4x0eNglbobRF9wRmHjTq/PGcGHHtqy
DLkya4qpNwNWFEwRwW7/ZBZDhsWcyINm6d8aD/uvkCcUf8UqLSkvcQ1bGTEU0o1Bz7SrQ5cUFkM2
y4KrjycIp4Ml/UKo1TbtExW4QK5RURZS2EBHBE2P/2iC82KnhOHlU3Kt79VKmPl9vS+CXNaU5Hpr
WbfnwKI2lf3ZJuHURY800uw8pGFBBz9GykYdDaKS7Q/oOysp/pLPd1rXcXIXqHigTonpWEAYKlF4
oPZcGIhaRjjS7ApkCtRZbCwHaZbMLiHOfb8ZqJXOzxHZsV6cc17SfCo5RbxtO0O1kOwTEcC7q3HV
jprIQZ2jAxz4i1h2vfnONe1rk+llYEJ7Yxipu75RHQbsxuTECTuMlkGfdbDrPtLzRdzTUBiIcC5Y
Td2F+khepm5RifYUCSux3/ynxeqRjyVFtXbifs3uZFa2a7xdB5v5QM5CmbXc3juwIXAb4KpDxr24
P0TSfCigYyWgXZ5vU9hgroQcT/Zvadc6MV1c04OscqX+pcdXJ8SmoTaPO4CdQc2YujIlJ3bHSNVt
l0rLRI+h8+r4cK4QCYbAda6/4C1WnfCQxBhRhksuN13y6pB62l2m7UiVpNAeh7GrZbHIB2enFw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x244E5A4DC0BC920"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
content-md5: ws8wydXUp5BN7Wdzs1QOag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a51c2881-38eb-4994-a732-e6730725075a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-9374b805-887e-27d0-5fcd-d771573fcf97/test-blob-803b59f9-5077-9f6d-ca39-511e1ff6459b

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
URjz5cD4IHE8Z6YhmWYw9UvSliGf3S+d2vbal81pkrQfFnfudMFWADnJQw+pSwVkCVzSTGAk+3To
VgrJHoik0tXyAYPuQYCJfJXo1pkf84/wdY5wlkVT+xsDBR62jOKwJXA6tkmCdcfbSdDLOyXayWJ7
2aj6MzyPngVn6zti0u+yOLAp5TxFbgDGlU11h8D2KDy8OrM5tfI0qxhEGoqMeXbgGAN0seMlNmqo
NJ7vGRZFccL+pZc7eYK+9DokAVN2OhvWlG+8gndZlwRIkYFTRJEB/qnHjdPfpZ+AtbypADUXMvqC
GIWniO9LpQ6T8+gBaq+pIwKqrqxI9+/QPMy7r5bPMV6H0SwLWXW5fOjES7K2fkoMANwybINNOiGV
10wjkPV3w8GJepmDncqN8TLDg6s9Gb2Brq+6ncXbOZcKdYIpluzyTYfwLQSxiGMSpXtRirZ2WL2O
oeFGvSb8rkEBeSdHZFpF0DYjTOy50CZMp/dJia7glB3EmvULrI9g9H/Crw87ykAgDLmAUgvR1dG7
+hUusiSSIOQJg8llOiSmwlht9iAWEN22KX30YEIR88UkULJ5MkFaL44qMUd3u9GV2Y+zY96wpOk4
d4mmncCi+I8EQepxLZAWEsaR7N6WP26sX4ayXo/nc6vIQbq4tJLOiDm3c3nnI6z/nFEXH7cKoTgb
+j4575n/HM0+qevWXl00wmSl3sz0xDvas8E+0FT0vaCBnbpTlZifuFasqHrBKD7z4lxTZcNsJzUC
XzzYwUx5SutLVMGj4C3LBSZ1RxvBGYuDS+74oFjdFXWEUTVbx/cKM16OddN8TwEuh1+c9t8ZQEax
VHZegKmTbj9LH4/3cD4vahS9M6O3Bvvsyhj4QB6WahDvqnKBrLK0+weTMTByNhcgbYzKXA2i+U56
cbaQmi0htbR+CMXMrr5iCDibI9XLepMB19OSyw4DTLAjBjr7I2Dacnt88y5RVL/NaFTVB9Z5r/Yi
j8JajumlersVqKeDZuTXwbBZT4Zlr4MTxGO6LkXZqldD2ZSdf+SS1nhyPKsXSgJw/UYlH2BwvOA/
R8qG60x2O/5QP41QOkLMx3gO83LY/HphSTD+tIr20xyzXjgaC+os/AGtxwp0IMIEWVjnYcluZkpP
JaEcd4dzWWtwnNwJsruO4vZxKzRv7Clt+loxD3JSRfftyuZID4V5OW2fA4Pm+qedWH/T/DsV4Dl4
rnwsQUr5HlflHOfVRtJw9/HH0Oimh/+ylLbyfki81+qs0GEITPgipeUsAN6/yBKtYgVJTg9Q0SZ8
eq2UB58OKUX9KHVwaKr5pCoCeYYh88yjRBxDconaXP46i9JLjp5GHteZwZ+dPPpaUKnkTlifWg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C832FC84E2E860"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
content-md5: 9m0wrRN350z2MOrYKPcAHg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: de81c0de-ccf2-4197-bdbf-c17bb133f243
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-9374b805-887e-27d0-5fcd-d771573fcf97/test-blob-803b59f9-5077-9f6d-ca39-511e1ff6459b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-9374b805-887e-27d0-5fcd-d771573fcf97/test-blob-6abf94d2-ec3f-6005-ee6d-cefaf0830b2c
x-ms-return-client-request-id: true
x-ms-source-if-tags: "coolTag" = 'true'
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 77136120-9776-4834-b1ce-f4192680f3bc
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:17 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-9374b805-887e-27d0-5fcd-d771573fcf97?restype=container

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
x-ms-request-id: e59d62f4-f7b4-42e7-95e3-c221c0629892
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

