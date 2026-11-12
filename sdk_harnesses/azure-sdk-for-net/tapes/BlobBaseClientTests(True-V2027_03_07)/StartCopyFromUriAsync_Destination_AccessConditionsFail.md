## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-05ab1ed4-9a3a-0b9d-710d-59ec84902f80?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).StartCopyFromUriAsync_Destination_AccessConditionsFail
now: 2026-11-12T00:48:29.1425749+00:00

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
etag: "0x26C6AA6ED700AA0"
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 180afde8-c9ca-4fe4-a82b-bab7c9939f3f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-05ab1ed4-9a3a-0b9d-710d-59ec84902f80/test-blob-13d028a8-8cfb-e426-adc4-d5aceaa2df17

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
/5bwG+APV94stZZ6ZWDWGwCjnAqyrLjdh/M3qzaMLB+VDEFHB0jVxcbM2IQEIqYQNz7s4PQlzlPd
E5Ps16yon4l25FgfjxS3ztZD5dM02WVNJnT3oEsrcD7tafO16e0aIzj6jT5O8agpNRId4eh/qTou
n7E4sP89S3QaMSUgAuToKMKbOUsm/zXLzmo4DY5VbsC5hko84XI5vUHJM7+CCDMuNLgm5G/uB6B7
bOKUBD3lxMNkZ3uarEdPYXwJXct2SMU3CtjVL4pRyn6qwHWQpLgD42/7HqC3k4hx14Ly5KrUBCMd
XflkD5U5Ep398OvRv7zEBXlceiokf3dQZFgHXuXU1btRcke+n9TZwgsDuqOcnxfFLt8xeIr5+N2C
FKs9MrO3KRsvgEx1BmalgrgeIcXUtMRAQTAGo1wxWHppO4oonJBXS5CIbB/LUCd4i/bS2tYYrl/n
/PGDsYa+/ijRDMrbfOUnx9Y0S0eldfEJjhdmX32jUI0rQZ+f1JkKyW73+UNdnA8QqhMA42IXQYb/
eSNvWJ6qLrs8sDtGiPI8KoLZrXytq/IHVbVqo20rE/8Yn1p2m3DPTcuHIOvUyiEgxLnfPpQKUs0x
ZwLpP4pOEZ07LemXxY4RCmCxJosGM4uTSt60S9VrDk2MRTRu5g1AOQ5NmJ04iP4qzjQzWSxCKjN2
VfWsmsbIzx6cC4BaoyNScOx9uJruW8HfiXyhN7QhShoA95AYlJ9Hhcl+nH1+0CsQ4Og/xXKYiPoz
zBBJJ5dqe8BlWauTOtxNNTLRcL5DYblRkVfL4YWoZ2+V5MeO/V4xFCG9GXZ/fKYM8Y8/xxg88GtX
+JZAnpk7vPE8/lUUvjfUoFudhkdC0RSwv/D1aaBWWfRcNwXI8HaIgVyFQ35Q9zJYaia8nmkjFSaB
j96pRlJQ5aVht4cyC7DlFQTqvY6WYMe9nf56mrqKOSHfR2CX3zsJNF3Z7j+qJV5114lkOViX6i8W
66lU1kvq135lU8RPTTbJ4IgwvXGIEnefBMMwJf/JR1wwgfOStV0S7hfARNKaJolTm1jPZi29jtgx
tNGIubJ+nAtoH8xCNyoqHs9ax82kBd453Ymn+uAvcvMaYAGLijRlQajHMQa9EGQtpEheY8YKjK7z
Ttso16ErOazYKNYpn5Sa9IUk3dPXe80leVaX0A8sD9NSmDtZPWoHm/ha5OiNBAW0w25B5a/aG9MO
Al1Lk2idrBgC1gZYQbcbHUHbfJblmHVQ4w2g6ykkeHxoSjoMuwiPvTjQii7+W4K2Jsht/p88KWro
+q9b/MHu3V2K8PZ8DmI5S79eFA1HUoeK6cVht3ndKyHQJMBZNMF34a3QdGuMORdlNLLf3RRcoQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D6053FBAA0A020"
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
content-md5: 0t3zaQui1/tBRAWc8qPXmQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d2356a12-4ffa-41ac-a136-623e7b9bb0b2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-05ab1ed4-9a3a-0b9d-710d-59ec84902f80/test-blob-6032e6fe-dd76-fe1b-afad-fc83c6fd4d0c

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
/5bwG+APV94stZZ6ZWDWGwCjnAqyrLjdh/M3qzaMLB+VDEFHB0jVxcbM2IQEIqYQNz7s4PQlzlPd
E5Ps16yon4l25FgfjxS3ztZD5dM02WVNJnT3oEsrcD7tafO16e0aIzj6jT5O8agpNRId4eh/qTou
n7E4sP89S3QaMSUgAuToKMKbOUsm/zXLzmo4DY5VbsC5hko84XI5vUHJM7+CCDMuNLgm5G/uB6B7
bOKUBD3lxMNkZ3uarEdPYXwJXct2SMU3CtjVL4pRyn6qwHWQpLgD42/7HqC3k4hx14Ly5KrUBCMd
XflkD5U5Ep398OvRv7zEBXlceiokf3dQZFgHXuXU1btRcke+n9TZwgsDuqOcnxfFLt8xeIr5+N2C
FKs9MrO3KRsvgEx1BmalgrgeIcXUtMRAQTAGo1wxWHppO4oonJBXS5CIbB/LUCd4i/bS2tYYrl/n
/PGDsYa+/ijRDMrbfOUnx9Y0S0eldfEJjhdmX32jUI0rQZ+f1JkKyW73+UNdnA8QqhMA42IXQYb/
eSNvWJ6qLrs8sDtGiPI8KoLZrXytq/IHVbVqo20rE/8Yn1p2m3DPTcuHIOvUyiEgxLnfPpQKUs0x
ZwLpP4pOEZ07LemXxY4RCmCxJosGM4uTSt60S9VrDk2MRTRu5g1AOQ5NmJ04iP4qzjQzWSxCKjN2
VfWsmsbIzx6cC4BaoyNScOx9uJruW8HfiXyhN7QhShoA95AYlJ9Hhcl+nH1+0CsQ4Og/xXKYiPoz
zBBJJ5dqe8BlWauTOtxNNTLRcL5DYblRkVfL4YWoZ2+V5MeO/V4xFCG9GXZ/fKYM8Y8/xxg88GtX
+JZAnpk7vPE8/lUUvjfUoFudhkdC0RSwv/D1aaBWWfRcNwXI8HaIgVyFQ35Q9zJYaia8nmkjFSaB
j96pRlJQ5aVht4cyC7DlFQTqvY6WYMe9nf56mrqKOSHfR2CX3zsJNF3Z7j+qJV5114lkOViX6i8W
66lU1kvq135lU8RPTTbJ4IgwvXGIEnefBMMwJf/JR1wwgfOStV0S7hfARNKaJolTm1jPZi29jtgx
tNGIubJ+nAtoH8xCNyoqHs9ax82kBd453Ymn+uAvcvMaYAGLijRlQajHMQa9EGQtpEheY8YKjK7z
Ttso16ErOazYKNYpn5Sa9IUk3dPXe80leVaX0A8sD9NSmDtZPWoHm/ha5OiNBAW0w25B5a/aG9MO
Al1Lk2idrBgC1gZYQbcbHUHbfJblmHVQ4w2g6ykkeHxoSjoMuwiPvTjQii7+W4K2Jsht/p88KWro
+q9b/MHu3V2K8PZ8DmI5S79eFA1HUoeK6cVht3ndKyHQJMBZNMF34a3QdGuMORdlNLLf3RRcoQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D0D9AA934A59F0"
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
content-md5: 0t3zaQui1/tBRAWc8qPXmQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dd8a4ba6-f241-4b1d-a4c5-64ca43b92b7b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-05ab1ed4-9a3a-0b9d-710d-59ec84902f80/test-blob-6032e6fe-dd76-fe1b-afad-fc83c6fd4d0c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-Modified-Since: Fri, 13 Nov 2026 00:48:29 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-05ab1ed4-9a3a-0b9d-710d-59ec84902f80/test-blob-13d028a8-8cfb-e426-adc4-d5aceaa2df17
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
x-ms-request-id: fcd7a0a7-3b18-4e43-8585-ea0da38551e8
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:29 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-05ab1ed4-9a3a-0b9d-710d-59ec84902f80?restype=container

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
x-ms-request-id: 4e86df18-79ce-4cc0-805c-deb38e0b8b9b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-30178374-ad63-557b-86ec-c7a6b78d2dc3?restype=container

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
etag: "0x1F8DAB40E666080"
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ae4c03ad-3182-4e6f-832a-7918e7c23c75
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-30178374-ad63-557b-86ec-c7a6b78d2dc3/test-blob-843bf77a-1348-90c9-001b-959997e0403d

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
VJvh9uH8KsoM0mNOkKIdr3bIOGaKr7RQa93ZihZ1RyGAOC8rG1crd1hMJJBKLcTjzhcw7lXGOaXm
kYsDIp+0l4tBzldz8pMfnMAOPYojBT0Y9bz/RVjMuf+KRIrLJ1W4mI0FCF9scNuDEFKVuPsaw4tN
6izjtFIydRRY6a4JVHVqVaX9HvzerIXgezQGNgADb4H+fTwo1eM70pNKFIYterzcKmNWHKWObz6n
AjgdLD8UVHksCtY4QoDBwktpk5j/swF4KQudrVPbbw7+gNKqHaZUNr8MAG/mpOjjlFpZJdumqE82
pQIzdqYmUZrHOcGtFqSkFV3Y8rKSkoQiuhn5gUozV9iCc3ijIMAY5q/UHmsnNX61tRB+zbWdpBN+
ELyNLc9QlOHoKqIsAPSdwAwCvnMZ+4SbQ8w6tYki5c9kJQ8Dirjgg4qJPgrbiLQb4A2pmuafZBU3
8ukCFd5YxUXTx9vkmTVTIjrokL15v7sYH9R8eUvpxcH6zJjP3m2rMHjFCMDZNkfYVnirttNXvTMu
6vYK3Ez66QIZ6cychETMPV9EtLf6PuiMoyPSPQ7tow5loPN3oVQryx6+v0x6O9E033l0Ewl8M6sO
fTgpJ6v0LEa+N+NQVZsKGOiYPH+bEWdRnl6UeY8F6WxIaCMcAaRzypIGvATt44neafog5PcscmvR
2IhNX7O2uE52COx37hZEJHHslVViY7rUtg+V5AV1G/W3SikbJmrfTwO1d9udZnvj3L+FP90WbnTN
eKmkIdRJAez2wKPtKP4HDUVRrezfN1CUsgdF79wYoNy1Ta3AOi4vbHXvpqbX9rTAfjGXxcGI7kFZ
D2/MAxIP3h/HN9pRR9IXIUB28JCpvLtShXGqgNsbLV9sZyu/Ymlj38iGEL7abzZef6OBEf6wr1Kz
eX2hZF1Dqwp75eCnWL/WExDIIqz9eBY6TAA3mRxgu7fYC+jrwnpqQ2S0XolWtyfkqv3t6IymtgFn
ZxhcDBHuGikoz03W61GWXd9HSBmM45TZUu8ectMqMVXnhFthDTZSxkRfLujZDb+sV4qsXm3n24OE
grki0KhW/Z3372f1NFCo9YLVLLSs/0UwcRtIftLn/6jX3Yt9MPWcCTBL4h5YtyI6BGnqEa7P14J0
8l+MDn/KD+++HlfEK8SMOSOEYR0m2Lr4Dnpo/e36CAUICT6WD/uwgNIumpjKddikXdiLSnZlTRqk
k/8FYRIBwxZSvCGG9ioo0+BK9z0hLZmhxJ8Vb72Oo7sj8Xv7qx7ALdaBeLi3HWetYneVGlbcg2Vm
ZJ1z7FRZwxllYgSvLCfBispnn7Xg6aY3ZwxG+YhlR24VlUeBTEGCKLWfUbpj/jZP04+MdeOwhQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x225057606DB8100"
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
content-md5: GZP3nDteoyw8Owy0SD02lA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7a71c020-2643-4ea1-b62f-f32cefc86209
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-30178374-ad63-557b-86ec-c7a6b78d2dc3/test-blob-ff77e588-9841-d3eb-68d5-f625f9d9d28b

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
VJvh9uH8KsoM0mNOkKIdr3bIOGaKr7RQa93ZihZ1RyGAOC8rG1crd1hMJJBKLcTjzhcw7lXGOaXm
kYsDIp+0l4tBzldz8pMfnMAOPYojBT0Y9bz/RVjMuf+KRIrLJ1W4mI0FCF9scNuDEFKVuPsaw4tN
6izjtFIydRRY6a4JVHVqVaX9HvzerIXgezQGNgADb4H+fTwo1eM70pNKFIYterzcKmNWHKWObz6n
AjgdLD8UVHksCtY4QoDBwktpk5j/swF4KQudrVPbbw7+gNKqHaZUNr8MAG/mpOjjlFpZJdumqE82
pQIzdqYmUZrHOcGtFqSkFV3Y8rKSkoQiuhn5gUozV9iCc3ijIMAY5q/UHmsnNX61tRB+zbWdpBN+
ELyNLc9QlOHoKqIsAPSdwAwCvnMZ+4SbQ8w6tYki5c9kJQ8Dirjgg4qJPgrbiLQb4A2pmuafZBU3
8ukCFd5YxUXTx9vkmTVTIjrokL15v7sYH9R8eUvpxcH6zJjP3m2rMHjFCMDZNkfYVnirttNXvTMu
6vYK3Ez66QIZ6cychETMPV9EtLf6PuiMoyPSPQ7tow5loPN3oVQryx6+v0x6O9E033l0Ewl8M6sO
fTgpJ6v0LEa+N+NQVZsKGOiYPH+bEWdRnl6UeY8F6WxIaCMcAaRzypIGvATt44neafog5PcscmvR
2IhNX7O2uE52COx37hZEJHHslVViY7rUtg+V5AV1G/W3SikbJmrfTwO1d9udZnvj3L+FP90WbnTN
eKmkIdRJAez2wKPtKP4HDUVRrezfN1CUsgdF79wYoNy1Ta3AOi4vbHXvpqbX9rTAfjGXxcGI7kFZ
D2/MAxIP3h/HN9pRR9IXIUB28JCpvLtShXGqgNsbLV9sZyu/Ymlj38iGEL7abzZef6OBEf6wr1Kz
eX2hZF1Dqwp75eCnWL/WExDIIqz9eBY6TAA3mRxgu7fYC+jrwnpqQ2S0XolWtyfkqv3t6IymtgFn
ZxhcDBHuGikoz03W61GWXd9HSBmM45TZUu8ectMqMVXnhFthDTZSxkRfLujZDb+sV4qsXm3n24OE
grki0KhW/Z3372f1NFCo9YLVLLSs/0UwcRtIftLn/6jX3Yt9MPWcCTBL4h5YtyI6BGnqEa7P14J0
8l+MDn/KD+++HlfEK8SMOSOEYR0m2Lr4Dnpo/e36CAUICT6WD/uwgNIumpjKddikXdiLSnZlTRqk
k/8FYRIBwxZSvCGG9ioo0+BK9z0hLZmhxJ8Vb72Oo7sj8Xv7qx7ALdaBeLi3HWetYneVGlbcg2Vm
ZJ1z7FRZwxllYgSvLCfBispnn7Xg6aY3ZwxG+YhlR24VlUeBTEGCKLWfUbpj/jZP04+MdeOwhQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20C7A1D9908AD20"
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
content-md5: GZP3nDteoyw8Owy0SD02lA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dbc97082-bf79-45e2-847a-505e877f6aac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-30178374-ad63-557b-86ec-c7a6b78d2dc3/test-blob-ff77e588-9841-d3eb-68d5-f625f9d9d28b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Unmodified-Since: Wed, 11 Nov 2026 00:48:29 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-30178374-ad63-557b-86ec-c7a6b78d2dc3/test-blob-843bf77a-1348-90c9-001b-959997e0403d
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
x-ms-request-id: 2caf5fef-09cf-41c1-9ef2-1e13a2a4abae
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:29 GMT
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

## Interaction 9: DELETE /devstoreaccount1/test-container-30178374-ad63-557b-86ec-c7a6b78d2dc3?restype=container

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
x-ms-request-id: 6246857e-289b-4719-a583-9ae6df866b35
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-89cc0f64-bd10-1539-eb0e-509fce659e6e?restype=container

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
etag: "0x1E8AE3938A23960"
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2636c1e5-3623-42eb-ac9a-d57f7124a158
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-89cc0f64-bd10-1539-eb0e-509fce659e6e/test-blob-701258db-3f97-bf05-1a65-b2734bead8e5

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
k1EDj2yxQ+IMaBtyHKSXJ0gKNYcUtizLq2ETM0dLBQM2h5Kn1kIessvqfaihxvlHdylWwy8XWtwk
N+QLnhCawGMXO5US71EG64K7KTiEKuRozLse9EHTHyy1g55eExS7T71FiYtkNIjXUNetWzGjoA3/
otFVfMwhQxxoXGyyp9dtANl7PqBZBJczRqNpJsP7EeKRXnBCZtPwJEZu+9gcJan/QFtXKGFspp46
ITUotx1ZbEuJIEhnKpoGihpa6gi/FyD6auVnpOmAJbjRCESdyGwoFY6MkgRgmBXBUZ1HEruWewoU
LU048chhCPuPlSJVaMKtMtV5MoQcmtHPplNMORL9O4w6iJof7yTGK4kI0APzbOjameDmHEmF+JN7
aEt1Fc7pklmVG98njUKwswf6FMnN3DlqcaAyFx9DtJAHo4fYURa6Hz6pXlEJswueNWhBiuTKrowR
CqMut3o6UWZOIOq612LwP/SKI33oYb6VlOK2ASmsPfX7x0ZyjGjEbwzqupMh410FUEvvP4oOKKnl
mSOYg089ouL0vxAcfrOMxrNx/qYqc7CEsLDevP1r7J6djfNELOy8rRiwLSNM6dKXYnnWnSoCuiVy
E9KeXuXkidJyf/C/R5rHtFGOekaMOMfeRlqElE9zmtPN0hgaHk4yy6RQ2mri2BreDujZdEDf5doK
wBeLYPSD/uUd8XWBrZYCW66iPF5d+24/poVnmiWS7uw9D102p2uvzduFxealXWFS1hiSPKl8rcWp
TLluHGS/igOIQ544zLRC8m6C2DaImUgkFMMMALFDwGGYjVqxQbF3xTriHBnDGQpkUEo6+tWOIbJx
SQegsopRRYI8oD9ZkLC9ChL8pX0uYfu5qLBnCMaLCWuoQPip1xKvkdaXhnjLCr+Zfe/Dkns0QucM
5gra6j28sZfTsU+4FDP/TBSml9uC7p7wzYvWyHbvc/4QnPAI1aaZ29Xh91hw4Wi7w0ZnjqoMivhr
6R2x5egg4z1Rp3dD9nZtDLwGoPZFgOsiGgUwiOVUAxL4neuJ6PXswRQbHznxeMzP+YHtBukBJmkx
j8ri71tY/KRkSlmL5CTHGd7iKmGxMKE4YY5jZv0o9neCV1gqCdK4wyKVjS5yRBVdJuwKH/sHgF4o
qY7M9JamO1TiCIzLnA8MKWY/HKNzxh14Bj8RHtd7etf5Al9D68+L71HZkDuJkYrc/vWUyGS7tONx
VO1WlR18Z4610ZqvyD2XsyxRmjbh73W1NCDi5rFzPk180pfiNVo0XCit1L/wLDW3/RU3ahqtj2R3
oGD9moDcQZNMM/amtX7SHD0NNBu1xQjqKumcPNMyzkMyapT5N8Ko0JIso/g/EUeWZE3doFtJwQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25C2DDA14306640"
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
content-md5: /9H9rhhR8fkOquWDogkHUQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9a05cc8e-09b8-407e-b896-7098567645a5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-89cc0f64-bd10-1539-eb0e-509fce659e6e/test-blob-8863657a-2289-ab0f-18a2-05d785542de7

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
k1EDj2yxQ+IMaBtyHKSXJ0gKNYcUtizLq2ETM0dLBQM2h5Kn1kIessvqfaihxvlHdylWwy8XWtwk
N+QLnhCawGMXO5US71EG64K7KTiEKuRozLse9EHTHyy1g55eExS7T71FiYtkNIjXUNetWzGjoA3/
otFVfMwhQxxoXGyyp9dtANl7PqBZBJczRqNpJsP7EeKRXnBCZtPwJEZu+9gcJan/QFtXKGFspp46
ITUotx1ZbEuJIEhnKpoGihpa6gi/FyD6auVnpOmAJbjRCESdyGwoFY6MkgRgmBXBUZ1HEruWewoU
LU048chhCPuPlSJVaMKtMtV5MoQcmtHPplNMORL9O4w6iJof7yTGK4kI0APzbOjameDmHEmF+JN7
aEt1Fc7pklmVG98njUKwswf6FMnN3DlqcaAyFx9DtJAHo4fYURa6Hz6pXlEJswueNWhBiuTKrowR
CqMut3o6UWZOIOq612LwP/SKI33oYb6VlOK2ASmsPfX7x0ZyjGjEbwzqupMh410FUEvvP4oOKKnl
mSOYg089ouL0vxAcfrOMxrNx/qYqc7CEsLDevP1r7J6djfNELOy8rRiwLSNM6dKXYnnWnSoCuiVy
E9KeXuXkidJyf/C/R5rHtFGOekaMOMfeRlqElE9zmtPN0hgaHk4yy6RQ2mri2BreDujZdEDf5doK
wBeLYPSD/uUd8XWBrZYCW66iPF5d+24/poVnmiWS7uw9D102p2uvzduFxealXWFS1hiSPKl8rcWp
TLluHGS/igOIQ544zLRC8m6C2DaImUgkFMMMALFDwGGYjVqxQbF3xTriHBnDGQpkUEo6+tWOIbJx
SQegsopRRYI8oD9ZkLC9ChL8pX0uYfu5qLBnCMaLCWuoQPip1xKvkdaXhnjLCr+Zfe/Dkns0QucM
5gra6j28sZfTsU+4FDP/TBSml9uC7p7wzYvWyHbvc/4QnPAI1aaZ29Xh91hw4Wi7w0ZnjqoMivhr
6R2x5egg4z1Rp3dD9nZtDLwGoPZFgOsiGgUwiOVUAxL4neuJ6PXswRQbHznxeMzP+YHtBukBJmkx
j8ri71tY/KRkSlmL5CTHGd7iKmGxMKE4YY5jZv0o9neCV1gqCdK4wyKVjS5yRBVdJuwKH/sHgF4o
qY7M9JamO1TiCIzLnA8MKWY/HKNzxh14Bj8RHtd7etf5Al9D68+L71HZkDuJkYrc/vWUyGS7tONx
VO1WlR18Z4610ZqvyD2XsyxRmjbh73W1NCDi5rFzPk180pfiNVo0XCit1L/wLDW3/RU3ahqtj2R3
oGD9moDcQZNMM/amtX7SHD0NNBu1xQjqKumcPNMyzkMyapT5N8Ko0JIso/g/EUeWZE3doFtJwQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x278A00121CC2340"
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
content-md5: /9H9rhhR8fkOquWDogkHUQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 40690cf6-18ed-4833-ab14-a3f4d24bcde9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-89cc0f64-bd10-1539-eb0e-509fce659e6e/test-blob-8863657a-2289-ab0f-18a2-05d785542de7

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Match: "garbage"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-89cc0f64-bd10-1539-eb0e-509fce659e6e/test-blob-701258db-3f97-bf05-1a65-b2734bead8e5
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
x-ms-request-id: e583bd8a-3283-4605-a319-ab7a834c97d6
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:29 GMT
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

## Interaction 14: DELETE /devstoreaccount1/test-container-89cc0f64-bd10-1539-eb0e-509fce659e6e?restype=container

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
x-ms-request-id: aebfbcf6-f320-415b-92b4-63bf0988bbbc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-a1b8a8e8-5125-9111-8d6c-88938c9efbac?restype=container

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
etag: "0x1FC4F4490D4C150"
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 10b11969-6dda-475e-8405-dca17ac6299b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-a1b8a8e8-5125-9111-8d6c-88938c9efbac/test-blob-8b631725-8d48-e67e-92d3-d544a7b827a2

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
i2hiO/jBN7lIZlf0OS05xjfKiqIxN8AoU9H6HZl7H3qmWUwd8fLvJ3D/WL76HFdgMsJcwRNZelSo
OucmxhofzUbdTuDhHNRF22MxMt4BLjd6muvXH15mTd/3dLcKyGBW4It3Hc53fxXtFuWwJ0h2pwuw
qywuR63odgEA6agdOhIC2lJSiRFpAxvV6gh4tiWXgc2rWhw0KJjdj6bNdpVtz9zTrkz1Ix36RqgR
WF2kcL/baWjaceD1zbK5dfpqnIyFaBospQjYoV2vsRN0I886OB7n8Qwtkl783eCaPK4jkKobjPBD
eMu3AsgKK8DMganjfjzbg6p/V9a8MMgnPmWvjCFoWJfe98BTL+5EI2adL1s2tr1xSAwAmzQahkcD
kMRjWp6fYygSBIZ7h1O7OzNvHgFs8IenPUQUaL1ixHF4UJ8q4cjH/csyJLI29sC5RGAAqmdGlp88
uxxai/trrz8VAzezkFlrpyE1OczVcUeDWiRcYhkJMrkA7iarbXLQx3RyIPOJBbMGlQNGEVzSZ0nV
1zDWDk0mDNB9s6IyvzquZHJXYlFU+lVwVcwWwiBdLYfc1pZB+bgnTBMiDFER1NbJl6zqewT4gNzb
ZriAD0qwIIYaVeikbGu5LxY9Mu0DX4H2TSp0crGD5FW5ZpMApzzJcezL9n7tJStBMEztu07v1wc2
icIfPK3Ul3GS6gbXuYfac8ABOGgDCSj/MkJllSgHyo+LyR55qTU+9l4MWjokaXbEE0eN7Z+eM4Ca
IAlrbgJIiiB2S/BpYMqKwkEJ967u2sjLoYLhetzw7ZWe34ks04hcw9AZrh2GWrJ9AitdlDzRrEVA
oM1/ZxBEhl5ay4BAXu+5rTPe1CyqREbPZHexklhZzDND6zO63Vu/1Se/K48yPKM7pOcI89cZlVuG
sAOZkvQFAf9N/HO7/tDXHv8F6xm3nSfTde1xUdhbKlXXNCxYJkMyuSqQ5D8wgKYXMNTYFKpBzhLb
xRwGlLAm8dIe5Mqjf/i80jLuJ7joo/VHWiAEgxarlWUafWAmLCR6afNsEZzbc7HcHEJ3U6da8yIn
vzqPIm28c05kiAKXlaYNdL3Ee5FZa+ZuKGfUM0K9wIk+/2zq6keFsJ1Nd+qvRIacad7qlXeQzVNU
IfoG50ALp8h4WZY5I4p1P8rzC/T7vuPgOMlk0yoSrjEZlchNfsldQs8hN+rvYkVTdFatnMFfWGMW
Jq92ptOeZqtkII3BJ8ABlskk2Yb58NWEEF7UZBFvuT1lN1gZ55v7g9E/ikK3kkyWrAb4On/cHDXZ
8ZZ1yQGZ9WZQXPBn564tKVW1uWWTzH4RPrgLd3++iRoiP/UFhrrQppXcZzVcLsRXyxEpJmPQRg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2673D6FFAAF69A0"
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
content-md5: WtLfFQNxKlXuPWSXe701mw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9994d4db-7936-4c3f-a329-cc9f9718c540
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-a1b8a8e8-5125-9111-8d6c-88938c9efbac/test-blob-cf13e59b-65b6-b548-0ff4-b3ab6e9462b7

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
i2hiO/jBN7lIZlf0OS05xjfKiqIxN8AoU9H6HZl7H3qmWUwd8fLvJ3D/WL76HFdgMsJcwRNZelSo
OucmxhofzUbdTuDhHNRF22MxMt4BLjd6muvXH15mTd/3dLcKyGBW4It3Hc53fxXtFuWwJ0h2pwuw
qywuR63odgEA6agdOhIC2lJSiRFpAxvV6gh4tiWXgc2rWhw0KJjdj6bNdpVtz9zTrkz1Ix36RqgR
WF2kcL/baWjaceD1zbK5dfpqnIyFaBospQjYoV2vsRN0I886OB7n8Qwtkl783eCaPK4jkKobjPBD
eMu3AsgKK8DMganjfjzbg6p/V9a8MMgnPmWvjCFoWJfe98BTL+5EI2adL1s2tr1xSAwAmzQahkcD
kMRjWp6fYygSBIZ7h1O7OzNvHgFs8IenPUQUaL1ixHF4UJ8q4cjH/csyJLI29sC5RGAAqmdGlp88
uxxai/trrz8VAzezkFlrpyE1OczVcUeDWiRcYhkJMrkA7iarbXLQx3RyIPOJBbMGlQNGEVzSZ0nV
1zDWDk0mDNB9s6IyvzquZHJXYlFU+lVwVcwWwiBdLYfc1pZB+bgnTBMiDFER1NbJl6zqewT4gNzb
ZriAD0qwIIYaVeikbGu5LxY9Mu0DX4H2TSp0crGD5FW5ZpMApzzJcezL9n7tJStBMEztu07v1wc2
icIfPK3Ul3GS6gbXuYfac8ABOGgDCSj/MkJllSgHyo+LyR55qTU+9l4MWjokaXbEE0eN7Z+eM4Ca
IAlrbgJIiiB2S/BpYMqKwkEJ967u2sjLoYLhetzw7ZWe34ks04hcw9AZrh2GWrJ9AitdlDzRrEVA
oM1/ZxBEhl5ay4BAXu+5rTPe1CyqREbPZHexklhZzDND6zO63Vu/1Se/K48yPKM7pOcI89cZlVuG
sAOZkvQFAf9N/HO7/tDXHv8F6xm3nSfTde1xUdhbKlXXNCxYJkMyuSqQ5D8wgKYXMNTYFKpBzhLb
xRwGlLAm8dIe5Mqjf/i80jLuJ7joo/VHWiAEgxarlWUafWAmLCR6afNsEZzbc7HcHEJ3U6da8yIn
vzqPIm28c05kiAKXlaYNdL3Ee5FZa+ZuKGfUM0K9wIk+/2zq6keFsJ1Nd+qvRIacad7qlXeQzVNU
IfoG50ALp8h4WZY5I4p1P8rzC/T7vuPgOMlk0yoSrjEZlchNfsldQs8hN+rvYkVTdFatnMFfWGMW
Jq92ptOeZqtkII3BJ8ABlskk2Yb58NWEEF7UZBFvuT1lN1gZ55v7g9E/ikK3kkyWrAb4On/cHDXZ
8ZZ1yQGZ9WZQXPBn564tKVW1uWWTzH4RPrgLd3++iRoiP/UFhrrQppXcZzVcLsRXyxEpJmPQRg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C02F8503F5AE30"
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
content-md5: WtLfFQNxKlXuPWSXe701mw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 021d6990-8935-4918-80f5-b75184e96e2b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: HEAD /devstoreaccount1/test-container-a1b8a8e8-5125-9111-8d6c-88938c9efbac/test-blob-cf13e59b-65b6-b548-0ff4-b3ab6e9462b7

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
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C02F8503F5AE30"
content-md5: WtLfFQNxKlXuPWSXe701mw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 791f1d17-c701-4f09-93d1-dbaf45134376
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:29 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-a1b8a8e8-5125-9111-8d6c-88938c9efbac/test-blob-cf13e59b-65b6-b548-0ff4-b3ab6e9462b7

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "0x1C02F8503F5AE30"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-a1b8a8e8-5125-9111-8d6c-88938c9efbac/test-blob-8b631725-8d48-e67e-92d3-d544a7b827a2
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
x-ms-request-id: 197fbabb-b2ec-4cf8-bf52-bd35f2a2b279
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:29 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-a1b8a8e8-5125-9111-8d6c-88938c9efbac?restype=container

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
x-ms-request-id: 29fbb2e2-c3ef-4e1c-a8c7-11875156f92b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-edd0f952-2e22-1887-17f5-d46287ea1c9f?restype=container

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
etag: "0x231B5375B75F260"
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5ada2cee-85d3-4709-bf21-6f6d12d96550
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-edd0f952-2e22-1887-17f5-d46287ea1c9f/test-blob-e6c59966-5a0d-5030-c25d-11803fb916a6

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
o26OQU8Aj8DOrnxU2dJ4/XAd8a7oOn9sXfu4wZDmLSTXFAj/BiBoUmkQHnSyMj5Ffdbxafhut2nv
IeNTSM4v6IBXfcXKePdQtZ9F1xsLuiu9ckS69MQsaF2eEOU8FAma4TbzWrR4ewTfobNYKN9O42a4
ltWKdfO8KhVoK2gSE6CWqvbkF192RPc/2lMQ1D99UCx+g34zEGtCNzCfEE+czY0SwX7oacsGQlLe
Spqgq1bV6to7k5AiYpqKouAv1jOnow3G/hLBlOZheEArVcXRoozZyiZ1YTr971/jXsfr12weNqeN
2a1EE1Xz2htP9g3Vuf9UVQsNMkLTyQ6z3jYfdaDUDR8dRMjflbbQgYYerflRDaTHl4FgEANluRCe
kDUf1GR6e+ntuHQ3dMBVPbG7tBsVYdCRV94fc/0bt4q3QASAsawhpDIPZFUvkCLAC9NSqgX1iS9l
jX2GWgjs0gDqfzS71IwFmRDpBf17Yca7X2cqyQ2FwrfVGyMum0kqI5FURRDuBTdGTRD0DIQy6Su2
y/ugwQnyZL195rho1v7Gv+FrJxu2zFkv43v9kLYzozH3eNBOiWGIYeFTcR9+3ncSLk2ixsIQAP6h
cN6N9dMHSkKGcV0tdzV/48U6Yls6sQUE6mFpkN1v53fRrBiD+msNTCfc920Z5LcXIuL81Z2jZr/Z
iQpxnrllF4nmXMsd/OhZLRYzXrmY6waqUW36chHZLkVYqXFgm61uduDjM4jr+Sb6oqiHbwgGQZ0E
x0xLa6R3DC2FxVJ3+ZFoxefZtLh+vlhHAM9pUr89UmjTXNRhIgs7bCZaZjTTgqkWHqkgLI3lhgjz
A2vUDbltR3Lqo5y9BqLcnUiRI1gjdH0mUjMWHCXa7tbMbh+gZ15s7B7B6N8NWRcGRI9EU2Kwz4/t
rruFVytND7XG8ZiDOzbqJTY5YoueGfkcD9iVlppzG56Qsrii5pXzdNgpRmh/gghZWi4sdm0DT5XB
aUhTt3kbUtX684l9Rz6hRe2zdNKRnYzPPDtrRqUwjWMj4XxMoL1fDvOShI9/2xPwizGAT9rCMMy7
g3o+rwwwymYlWmbBVKUvU2be/hj9T2Eoe7tzrz2JYLCwkRxCIV7nYrooWoGtLjaLUPt04zKzvjMZ
FTRQvBopnPm1EMOI7DIH95te1PXge0yF6F5BFX19/NPoKQsql6af/76H9x1zA2PJbOyXVOk+OZro
y9S76IZ7OBTwn8Mn3F/1v9U3WIMuEeT6eKiQ5qfpqvBwQszS4xc3C74Jg2SgoZCMopUTBuAWubnv
wHDe61FsBvTSt5qTItu9/0zFJI6AWtYYBEQS1qMPWYgS4iKnWSBsnXxvzur1+X+5VQaUUZQrbw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2599259336FE040"
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
content-md5: FFUPYIdaALA2B5OWkIjZrw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9b46c136-853f-46ca-95f0-92ec17291f86
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-edd0f952-2e22-1887-17f5-d46287ea1c9f/test-blob-1187582b-8b10-22eb-0bc5-58809c7b07f3

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
o26OQU8Aj8DOrnxU2dJ4/XAd8a7oOn9sXfu4wZDmLSTXFAj/BiBoUmkQHnSyMj5Ffdbxafhut2nv
IeNTSM4v6IBXfcXKePdQtZ9F1xsLuiu9ckS69MQsaF2eEOU8FAma4TbzWrR4ewTfobNYKN9O42a4
ltWKdfO8KhVoK2gSE6CWqvbkF192RPc/2lMQ1D99UCx+g34zEGtCNzCfEE+czY0SwX7oacsGQlLe
Spqgq1bV6to7k5AiYpqKouAv1jOnow3G/hLBlOZheEArVcXRoozZyiZ1YTr971/jXsfr12weNqeN
2a1EE1Xz2htP9g3Vuf9UVQsNMkLTyQ6z3jYfdaDUDR8dRMjflbbQgYYerflRDaTHl4FgEANluRCe
kDUf1GR6e+ntuHQ3dMBVPbG7tBsVYdCRV94fc/0bt4q3QASAsawhpDIPZFUvkCLAC9NSqgX1iS9l
jX2GWgjs0gDqfzS71IwFmRDpBf17Yca7X2cqyQ2FwrfVGyMum0kqI5FURRDuBTdGTRD0DIQy6Su2
y/ugwQnyZL195rho1v7Gv+FrJxu2zFkv43v9kLYzozH3eNBOiWGIYeFTcR9+3ncSLk2ixsIQAP6h
cN6N9dMHSkKGcV0tdzV/48U6Yls6sQUE6mFpkN1v53fRrBiD+msNTCfc920Z5LcXIuL81Z2jZr/Z
iQpxnrllF4nmXMsd/OhZLRYzXrmY6waqUW36chHZLkVYqXFgm61uduDjM4jr+Sb6oqiHbwgGQZ0E
x0xLa6R3DC2FxVJ3+ZFoxefZtLh+vlhHAM9pUr89UmjTXNRhIgs7bCZaZjTTgqkWHqkgLI3lhgjz
A2vUDbltR3Lqo5y9BqLcnUiRI1gjdH0mUjMWHCXa7tbMbh+gZ15s7B7B6N8NWRcGRI9EU2Kwz4/t
rruFVytND7XG8ZiDOzbqJTY5YoueGfkcD9iVlppzG56Qsrii5pXzdNgpRmh/gghZWi4sdm0DT5XB
aUhTt3kbUtX684l9Rz6hRe2zdNKRnYzPPDtrRqUwjWMj4XxMoL1fDvOShI9/2xPwizGAT9rCMMy7
g3o+rwwwymYlWmbBVKUvU2be/hj9T2Eoe7tzrz2JYLCwkRxCIV7nYrooWoGtLjaLUPt04zKzvjMZ
FTRQvBopnPm1EMOI7DIH95te1PXge0yF6F5BFX19/NPoKQsql6af/76H9x1zA2PJbOyXVOk+OZro
y9S76IZ7OBTwn8Mn3F/1v9U3WIMuEeT6eKiQ5qfpqvBwQszS4xc3C74Jg2SgoZCMopUTBuAWubnv
wHDe61FsBvTSt5qTItu9/0zFJI6AWtYYBEQS1qMPWYgS4iKnWSBsnXxvzur1+X+5VQaUUZQrbw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D05A5E0D8C5020"
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
content-md5: FFUPYIdaALA2B5OWkIjZrw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d2b66f31-4ed2-41df-afb7-3e51b2ce7691
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-edd0f952-2e22-1887-17f5-d46287ea1c9f/test-blob-1187582b-8b10-22eb-0bc5-58809c7b07f3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-edd0f952-2e22-1887-17f5-d46287ea1c9f/test-blob-e6c59966-5a0d-5030-c25d-11803fb916a6
x-ms-lease-id: a9ff2477-8fb8-b179-afc4-8d41def764b5
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
x-ms-request-id: 39725d63-4ac6-452c-9368-052d7fe1372c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:29 GMT
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

## Interaction 25: DELETE /devstoreaccount1/test-container-edd0f952-2e22-1887-17f5-d46287ea1c9f?restype=container

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
x-ms-request-id: 19327439-f65b-4d18-8f15-23466d9415ce
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

