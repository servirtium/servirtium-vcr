## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3e3cc63e-0460-2a62-b894-9230dc8d3e9e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).StageBlockFromUriAsync_SourceAccessConditions_Fail
now: 2026-11-12T00:49:46.7287969+00:00

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
etag: "0x1C8E19FC81ACEA0"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f2e5a81-900b-4f7a-9320-b7703c419b81
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3e3cc63e-0460-2a62-b894-9230dc8d3e9e/test-blob-c3c3630b-9f9e-69ca-d798-01da9e8e8a81

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
SRrcA2rWDsFbwJXxVpc0BGOqvAQf1zDfoQ28DqEAqWUNuCysln07Z7d74p9ucdQgX47MMtE6fnHp
/GFcGQAfWxcw5J1qiG3mblRNo/SRcTA4nK8TM3eT0zq6w5kc3062XIaHPY03tdcg5sR87Np8V4ox
I31RCyignBBjsMXUyo8GlkduCTSiAebX802yF+ZfPWsO6rvQZVFe56B80wUSSxw0dlaTDk1WjiKX
eRfa7YUqBHJZxd/UNTD1DyKTJi7gxacwfqCQyy4duFyZOew5hPkaUc+TuIY8YEAlnf8rwmf0trNw
qW/lmjhDOw2DOvxEvIooedReTQwh9B1fai0v8vX0pYI5ydqKNLeWT315uSVE4eF0AkmTlWmmTrVR
hi8LFEgXjpV6C/KwnkQdx/2PqDr3GolMuvCsYQ8ZknokOK6Iizs0YSqQytXuxGQEdc1rF6Z6Wmul
vlpYay2GYHh4i2WWlTzBWkYQZ1C0XfWLqOtCrXvTqt5D4s3h3Pb9Cmlddjj/buCRqbxfavIa8WBk
zMNBQ7L9pOGGU7Jv4H1QEl3nVue9jDkKsAS+dD/rKPFsfRAyu8a2X9FWeBouIsk+DleVM5p4pj+J
N5OuPjCimyrBAmNtHVeXMPcWZxQf3I46f2XnVvRW89bQqYQyByChtNzwbB9m0PAA/QOjYj8qaloF
dL/KukQ1ag+MnXTTZCjWdbM3Lm9u1K5051jxs5GXpT8pLZNh1vmYugIQ2jN8LZnazO2M8zvqlp8Q
VtLrQ7d99Pg1qTeUdZ65n3RtXvp797q/F+ekC7IEPpf0UH8mrHZLkuU7R4NiRVZO0lPGfTellV4Y
LCzP2ehFMGqfoCQekvL+IssUP7A2XdGQVThePcFfTrshDoBJe7n99RYZwqUxLz9gyFtrkVWu4c5b
PoOv5vOpQFFp/YRytKYSFkmZHZssXib5/nVl871mciyx7jw1TQ8jcIJTyDG77hO1WXoLFMQzL99d
tuh+Q0yUA4tYwMVp3ck6dq0Z2Jb0PhBhsJpCWl5ofr9d2JYmpCw1vsWmYy1NS3yw0J0XGlZJaHjY
HZKyUags70IGDAQyFNKA4xrQTtriE2UekYnAUWRpE28eToeagmwceXPrRz93frzLljY8eRqd9Qkt
lL8fbJ7enfiUFMZK5WCts9Rn98wlphPM9botLJpVgFh9be6s/Q3UDKpH4mr2gLHVj8VFNf09B+2s
UnfksHBdP5NtzXhyALXHk+oi3sSp1nQIWJ3UD0taP2UBAKuV71w56aLWiLM4Y44PfqISGykpAnsC
21jSiC9IEo0Tcf8KMaOO6PUh0k7B0PUOxZGoSCM72P4vkxQEZmBzjnUlJfKPBUz/hDM0BzAtQQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2027CB7D5F00800"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
content-md5: YC/bHXU8hoSORFctnD+zSA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 640ff8e5-c71a-4c94-b9b0-738ffb66bfb9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-3e3cc63e-0460-2a62-b894-9230dc8d3e9e/test-blob-d843ae95-ab9b-7f03-c044-a9c3f007d0cd?comp=block&blockid=dGVzdC1ibG9jay1hMTA5NTEwMi05Y2EyLWVmZDQtYWJiYi00ZDU5OGUyYWFlNzA%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-3e3cc63e-0460-2a62-b894-9230dc8d3e9e/test-blob-c3c3630b-9f9e-69ca-d798-01da9e8e8a81
x-ms-return-client-request-id: true
x-ms-source-if-modified-since: Fri, 13 Nov 2026 00:49:46 GMT
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: CannotVerifyCopySource
x-ms-request-id: 5c40d82a-1a5f-4045-a953-e56c67e66c2c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:46 GMT
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>CannotVerifyCopySource</Code>
  <Message>Could not verify the copy source within the specified time.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-3e3cc63e-0460-2a62-b894-9230dc8d3e9e?restype=container

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
x-ms-request-id: 37161ffc-c627-48b8-975a-062a13d95ae7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-599eb1fa-54ec-60a5-6044-0359f60679cf?restype=container

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
etag: "0x1C31CA1415B58F0"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 35a12d3d-96b0-42ec-b099-cdec0953c084
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-599eb1fa-54ec-60a5-6044-0359f60679cf/test-blob-486d9955-030d-f956-947b-0cf21ceab120

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
yDPYTIXp3vjZVC3fXanxlZY4yT5oduGtrKhAXph7+KRCfZBaUWHqEdKmgJcnxQO2U23CvT06Z1JR
K6DcqIBfXVyJnd8ZlkQ1TrhswvZKhealigsruDpmCBY+CCbBDWhSRiI7nigjnbwpjW6FzqRcB6W5
Nx10NKUhIpTI2o0edEFPGXzTD+a+gu1OASvM4Tpy4gGAB9ZL3RF9GXyTW8IvCxgtNbQniPi/+7Qv
JjN5VUBaVfiMnWxqAztrVvVqKiYrH/USnquFSlkJwAshG7fdBMQ7OQXJom2rwjJ5vDICVNCNBAY9
ZreV1Qufg9xhSeiEjVIxLvEhYnyIZtt5DI0nBms6kxawoJ0NpmP6Kh+QSnlJ9S/g0SbfbKKKtQDb
HMl9d3xwJrXR0+y0I4iNJzhc9xthLxZeRjRFWyd0JuqcMYmafLKjHyTDeCFCK66dUURqLb3keuyy
HjBIK8qOXKwCGPL+86qFudf3nrf1GxuGqAriCvksuLed6F2BWvRZNBt0QBO7nl6a5HPm7Ns0vQIV
woPArFKz1V86YQpMBF/jnmmcgNsIygmrRyaFRsvbaCtabJhxmIfIwWuzgT1TTd8UAk5ymDwnDPh5
FGUrLY6TXvjf8ZjGcQXh079wVEjMWPpGcUN9adDuM1+g94QinJPcICJEc1tHTZFIkMR9trivrbxq
5bxKFfUo8b45JnqBvjYrkzQmh+Se/iOyNdkLcHyn8UnHuLfXkgosG4KdDicWxtGOUiODiCbXy+aY
l+AcHYFBkTUwuQZ/VAEp+WtiAfD8nG4HfB5ZI2gj8OzQP/opEP4AW3zy5Q3KD/0iWY+6dMr2m/ty
FKBi6G7MDckarhUGAOhtYqVzCrZgPG0gNsnZaXsh2aP+tvtenXINJdhDr2DoG1mmTRIkg5BFEdcy
QrGl86RN+dRxCEntDsQzZeXdHY0NNxtvMhtp/VYSuaQjK1vBZzE09raLdxMPuT5O8R2rZ/RKJQqW
NsGI5Pt9Xk6lyeJocf2zqSbWgcAHX3ncGgs5Z1Gv2AZRKjFwrBK6DRjEau9b5n8f977OdKNJjtZH
q8nvRPf89fDcFkfMQ/wUG3OnQ/WKgDSMGm+T4WRiB5tbKABJy8khx3X+f883U7PBulgwokvgvSqU
YymHaRSMeg+rcBr8y1CphXuAiwFlVMe80ScLMWVQemvVtGefml5hcgTAjOKYxe8IhhzQYDIoLw5i
ypjsgEipW/WvJxboCuodHxj8pcjkIww4A6tJgBo5rIVZPc/GdPK8FjHs6Z3YH3wxs0EZLIlGfaeL
tHycYNvbdnqQj8waVqomQI6X9zpuX+MvF83YH4D8E78oOr91H7ZWEXIjSJCvFlyW8uv7roVtHA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x273A8A767C9B840"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
content-md5: FOTOyB1p9bEfbGMLJEx6LQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 32aad5d9-a33f-423a-8807-bc7bf362a87f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-599eb1fa-54ec-60a5-6044-0359f60679cf/test-blob-c7e641d8-174b-7f52-0170-412d9400643a?comp=block&blockid=dGVzdC1ibG9jay1kYzZhMWViYi02ZWIxLTBlNDgtMWIyOS1iMzE1YTMyMzQwYWI%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-599eb1fa-54ec-60a5-6044-0359f60679cf/test-blob-486d9955-030d-f956-947b-0cf21ceab120
x-ms-return-client-request-id: true
x-ms-source-if-unmodified-since: Wed, 11 Nov 2026 00:49:46 GMT
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: CannotVerifyCopySource
x-ms-request-id: 2d0be524-e04e-4ddc-b756-35d6b6875335
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:46 GMT
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>CannotVerifyCopySource</Code>
  <Message>Could not verify the copy source within the specified time.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 7: DELETE /devstoreaccount1/test-container-599eb1fa-54ec-60a5-6044-0359f60679cf?restype=container

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
x-ms-request-id: 0932cfe4-5345-4fb9-9880-403fccfafd1b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-6d23ca41-a59e-3ed1-46ee-469dc1296493?restype=container

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
etag: "0x25BC3C6ADFE0620"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0da2e796-aec5-4f6a-b41d-ea65d575acd9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-6d23ca41-a59e-3ed1-46ee-469dc1296493/test-blob-0ad94d02-9736-c2be-19ed-4a27b670f2c7

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
F9I3/oDUbmn52KwhYz3b3TCV68rd9psWTCyWwyeqTPLEIP7Q7EIrbFy5dMb4sNoIEmlsKz2atSA2
IbFUPqtCTou6XEM/CvDuan5uJILVHZxRjbC+PiG0KWrdmsuQ1y6wdyY6PlOXyAd4fcG+LJGeYQMV
ArD6hA9qBTLYYXAlXpNQva1bmt5IucWpRcBf9fzYPzjHetR9tvIWzzggv2aWUx8ubm/kQsYlzUnr
UT5PChA1ACI4XeO+0ge6RMqlJ/peEvKgMYaN9Pxxoq2LkmSzx8Uo6r5EXvU8b5toKf77gKVPjD5M
rtiJqAwlxrs1Mz+iBnwFfD07GrT9ZMHrJcr+dSEIPAUmZxnsn0KyH5g5BjxbxSOB9gNoE3KKT0kW
noNCJlCZLfc6fJ5jGd36ifscw12Fj1+nfX8eoCiTmxjP1QG+cPhHn9lFIUmEHtwlbYl3bovskQ4k
m6jRe4zOpuCGk0PcPBkC1CSDQG0VIl+i+TOfGy2N40PymtVPdSRMd3pp/oqYSDFwdZlnaFGhDnhJ
LoFZLouy+LD/6qFEsl7/N8jyqyTVCbABLqaTJXryUIxcBkei8kjvtgXZmF6PLMI6ZzGIrmJTdCXR
VwDkHtI2DZkV56wXXESAA/Qf+3BRcgLkWL5JaaIpCJEh0JpICpgyo4vEeUQVIwrtCKptNHi0gOX9
AMUU7KP27N4a9YypOPhc7VfljPi9zzWzXGH3u9MZbVC1SgrSHbbnzo1l+i1+Q8+yEUchz/PsPzCQ
YZBC/zALAYg78+7uis+h/b5qWNQINBiRRaqM951cyArZQbslpc5dWvilQ1Dhw4Z3f9I1gedciC14
sLmFfgnq3irjFEgUe1fvDf3cYvDIr4EkFHjLJ0YifbmOrfUV19vuumQl/a89YwR6RXTqfyU8sAA3
YWqRHrbjwZePhc5i2jUh7aiMorLS5rBzUeLSOP2UUfz03XVxXJyuQTwYrt02GGs+yJF9sA1OZXu6
Hs3UEYmZ+zTRbfzAsJAL3mF1ujjSPTh3k29rF6DupXf6tz7O2S+zfrOpZKpufhcAcdKs2KtC5+GU
XX0ZLeST4seExflSPQQxwjuFKdiNCBVYaqXOQs3MuM9dOXyxmVHOFYHj6bgerjPOehZvvb4IB1Ro
wMI+xaD6uA0p9QOIfyjpthNWqh9cObxxAMe2XPoQVDInSNiPkFDh6DGr9LkwRvrthgarsVw1DIcF
zMXYQ1sSGKDQYDZQWiXCdcLtsEUDQbrNydb0ZaLW8jxRicSLCKTVmdsYX+XDnSvg6DyaR1tBAooK
C3mFHrP9+m36/tFhN20dGBdp6+LUCSyrE3xmPKvgEIY5gPwqUHooGmR4yZ9Zf7HPfC5E1xeoNg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2104BB64B8FA8A0"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
content-md5: rAyC7P4KuKZoeCNi0rFJjA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fddfb406-9df4-4c94-8120-2a8007e34e41
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-6d23ca41-a59e-3ed1-46ee-469dc1296493/test-blob-7dd0419c-405c-518d-93cb-97bf7c9c386f?comp=block&blockid=dGVzdC1ibG9jay1kZGZhNDk5MS03MDc2LTgzZjEtYTZiNS1hZmIxMGU1OGZhNWU%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-6d23ca41-a59e-3ed1-46ee-469dc1296493/test-blob-0ad94d02-9736-c2be-19ed-4a27b670f2c7
x-ms-return-client-request-id: true
x-ms-source-if-match: "garbage"
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: CannotVerifyCopySource
x-ms-request-id: 837c0af7-e07e-4233-a4aa-3920afd0e5c5
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:46 GMT
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>CannotVerifyCopySource</Code>
  <Message>Could not verify the copy source within the specified time.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-6d23ca41-a59e-3ed1-46ee-469dc1296493?restype=container

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
x-ms-request-id: 6ac0b8db-94e8-40e2-91ba-aa3abd674a28
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-96a76789-2a46-c1da-c088-776bfffe467d?restype=container

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
etag: "0x1FF913EAAA7A6A0"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5838224b-9aff-4b01-929a-66df4c0eba70
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-96a76789-2a46-c1da-c088-776bfffe467d/test-blob-59171a00-0bae-2ca4-18bd-2ff89ed671da

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
tdqVbHUVUSxPTdemkdxCOtA4NRT0oilnbzgd7vmGg6dvMfs0w43pdBZ7RvhTNDDjRTyax8gxiBOx
Lv08+GIzycovN1/hDndCTsH+eVsxEzsHOam87LzePajogpSQrHyzR30uI/zRAjbEV3gHMg+3gBrB
NL65dtwNUPm2+IvjsqJFSzHeAu8+NjZy+JRE1wqZMAJ5zne9+tGgINMCGgmq4KXWwufd2H0rg/6H
Rn1HyXnuHciJaeMqh1BgPuIcOxwtxxfvbhUjvFiFTkt5NbNTWFZZE/xBIXfBqzqWfJmbDkfiWn9m
WFtky2FvBBuXsVGcDeaLwigf66WgLcLajD++6kAEl9s07QD69Uib0R1cKfro+W+zD0sfwm7ZxSqZ
iT4hsRnakxl2aCDmkc3fhBqIRAPH8ZLQC9r05NRsWyfVYWsJeSADgZbgcpFOzX5+Pz5UUYEm0Zir
UaU/5a9FCQ35EDBh1gr5hMNt5n8BgT5cdqWWGAqmr4/TXSh6xJvmm2mEVb1OHGk0Wsy+uOoYqs9n
4m4Jr/ADUmCgjXjhfr8nhksVfSyADlo8Yb096PakurNZE+Is3Ox4gAJcrY7wUtwMljKfAiyj5tMU
zU0zxWpq+9LFiGvd+qpenfwpJGHLSw/hMFHEBbeGtSwOGA6fRLuX8bG8KslxLpuIQGUwesFySII9
UpQZpvYaP9M+zuKbv1hBkTOvDyFFbwG1PMRSVTtrnM+MYfImfku7oer2M2C57IEM7+iOwjlh+OKS
Y2oyyOqX0zISDl1mGhLo9G02Tzyh/E9DRmZS3NmVK2kPkxvgiNkAX2Atpt4jpdTVps7LKqmm8Gca
74GDRPZYfOP0Vob3B2uUNe/cdFVwH6CRfDYLygC/aaKzxZlXfBpp1Cr7Lk9N3p5iN/S5yXwSqc/h
8ce/TbLiNe3kQ0HRPbnVcp8rdfBRRJ6XqZMMBp8moRvKdYpSqod3GfliaZpckPk741fd5zTekK0p
KKQf1i5NvaIlB8cugsgXs1z379oDOhiZ0CJISLrn7OXdKYHjV0PKFKv4N4kyDWGOxjPX5qHSJe2L
hgUMBHTnPhrhUFlGM1sZLdovCwOOZsLBuYKGDwVECwSUV9E9vhA2EPhuUL0HSJLXvrnGoxrp/R9D
SkvyYC4VnUVVsduK3G7J+PoKHxYFuXDwrlFLfWfpq1my+nPFRLDKWbN3spa2TeJL/aog3t4JPZDa
ArHdyh/dawaB1+H6BLNKQMVjjQfZOWFuAIC9ycx7qLzj6kL+7I+TmkaQNXUAUPj21p4Ypq+JAMlQ
bsmfIKI6Bi4kFxlxS1Q2z/LASQPrba+IxvMuYgIMWep5rX3F9HqkVi5G2zjehYpJ4ta9yLbFZQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EEBB08687FC360"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
content-md5: nNFeUSBjHMjNE4YOQ7WVMg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 80337ab7-7611-4114-bafb-0459dc09d4df
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-96a76789-2a46-c1da-c088-776bfffe467d/test-blob-59171a00-0bae-2ca4-18bd-2ff89ed671da

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
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1EEBB08687FC360"
content-md5: nNFeUSBjHMjNE4YOQ7WVMg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f466e52f-a966-4ed7-95d5-f17544aade27
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:47 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:46 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-96a76789-2a46-c1da-c088-776bfffe467d/test-blob-d4f31b78-91a4-a976-4169-e4802c4f9133?comp=block&blockid=dGVzdC1ibG9jay1hYTdjNDdiMy0yMWRkLTRhZjUtOGExYS1jMzdiYWU4Y2ViNzM%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-96a76789-2a46-c1da-c088-776bfffe467d/test-blob-59171a00-0bae-2ca4-18bd-2ff89ed671da
x-ms-return-client-request-id: true
x-ms-source-if-none-match: 0x1EEBB08687FC360
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: CannotVerifyCopySource
x-ms-request-id: 43e64df1-9643-47da-b56a-410b23bdad7e
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:47 GMT
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>CannotVerifyCopySource</Code>
  <Message>Could not verify the copy source within the specified time.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 16: DELETE /devstoreaccount1/test-container-96a76789-2a46-c1da-c088-776bfffe467d?restype=container

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
x-ms-request-id: 9198d284-5779-4821-901a-3a2ee5406d6f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:47 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

