## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a1947247-c948-9fcf-8494-f0e05e152877?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).CommitBlockListAsync_Lease
now: 2026-11-12T00:49:38.4489821+00:00

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
etag: "0x2295CE25CC58B60"
last-modified: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 790b8eac-f1f6-47de-981e-fac0de27744a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a1947247-c948-9fcf-8494-f0e05e152877/test-blob-94b7a1ae-8b13-c6bb-b58b-8ad9fb58556a?comp=block&blockid=dGVzdC1ibG9jay0zYjM0MzU0NC05NDQ2LWVmNWEtZmU4MC1hNWQwYmNmNjQ0ZDI%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
eTcqYBGH9DChODnkRPJHySJoqkG9A2C7ts3rvT/2pCw/hmYn68dmJqyG89pS14LCRMC3k60UrHbW
bqlDnDfxqpQMpb2MH95aAYOUNxCFad9LKHh+PhF+K9nwUHweI4p1lEhGRTLENiThXJEpf3RlUAXK
93O+c2uCjXrkm89iPN75H6PIPyOth/JUnOJ/Vatkiv93UysWtiDcw7e34JpVfyCyL2DRnRHhHXCB
adeJAzjOfxDP6uiz42iC7Htr9adX/xzBzCVKk+3ulTa6lUxJUsB/6GCJhZQ4/0z3T7GWdifJKWq6
xzYTg+wj4VWx+E4bOJm67AxGzXmHiczYUkM8Vx4O8Wvij4qKa2V0ZqQ/hgf+3BYX24obglzwMj5p
OzCo5ok3owbiOKkPMICn0mfUSAPE2nYtJHuU828P8VxMITA0zH8bCOIBG6NtCKsJdLD1G+o6pGC6
esINoq+W00dMwg9QcwXnuUAgw77SwBzQin++GtVyEnzPeVG9DWUzakhcIEabuQCqDWKpGeGi57ql
PBgw17lx2rCSgPm0Kqzb7Vh2dqDWNNB+FAxzyPibLZGXF9BMApOO60WVCTkH9uO1ziuJLHEZzwhH
ssOs/RG391NnHBLbjuvF54taQCuXdx0pvvrMEgAgfUjIBVDP4u003RHln9rQ2UBAxEXmv47csDql
gz8X6+VSR57KE4ib9QWeJWIasddDWOS5jE27Or257FQVKV+tHPIsk1g7Bsa3pc5ASJkswv5jYipb
XV6XlgzhECc0hcul8Alv7R5/CFEdAeZ/e/IkjSlWssc0Ur6TlPxLWfafgx8CmleQvNTg41nYPVt4
GBsavIL93dMEcZ5K21khNK5bfn7GfOGak9FVdc5uWxRjG3zhMJ1zoaVL/ii5RuB7vq+qfb/dsZs5
fyixp2gFlRWJ58DdQAMR59zYen244U3x2rYfw91VhWngp7B0wvo9RmgTL18fnX2rmJbiBDYegZ7b
wM2x5dE3NGFW/JlSnSXimzQUpbHu0Tw5cypHc4AywiYSmAIsi2CW2/v9yaHkWftx/2kCCdzt7O+Q
eHKn8MHgIzlzQAQitg/Tfcm18QeaVBov1nMXMLlKJKwTmxPu7+s6HKVncRj3TklZL4sSOPvn9iNX
dxlNyfOAKBxYDxr85I7detRiM+MBOIcpvgAuN+uwK6Xvl3jR7FOx50j8nj4vXUv9Nb4nhMJAVT+R
JArzUvEwqON0DE0VC42BsEyaBZlJ+mC0MAItiafir0E4QMhIvpRXzPZaulD+5ykwpdR2pVClSCqp
PiHuAh48klwL3cvFOPG3Qzij7j8PtknZ/ePTbAnxk/ednoBzaMrXHij08glda23iv2EXAlrqmYjY
FQQ7aSVTGkrUJ5lxRNtuzM8XG8M/e5J28K2n2ZCcsgT4mlLFnLUCoNi/iUPTcXqGqDaL037EmJpy
xXh4q0C5OHSUeKmIqS8aFHvqgPJOon8yITBaEd+GMwK4Utc8ifWXBlHPPvjR/f4GcL4D2hioJCL5
RokQXieVDkWn0FdY3YuFU3mhf2OGYSMyVKAgg1nqDy60Q0Nrh6cpOTCzKiynrZMzfYaeB6S+cuVm
3QmGdIrrvcAppJlIGcvSd0Uz0zf2iqcM7AbSSwiJ9dFdBamdo8Smx21sfgn562S6y49ei56ub1Ni
eYiEGHG3n67I6hMiNNOAjQzJigyeEwChF394K2ozr5ZWOik8Ia77tN5aMAFQmJe83f6S5ORGxGaI
4gDxP3NElTt9y/qqRGtdztYtQ+L/UX/ovE1rocqxD3XDtD+uCXRrFZvG08ydEZmSNBYNGICDiJCB
CYIm2fRwy7uE55Asr8Rhwi5HOH6yS6u02Wy0pPf1PyuuLADyRDynVQcQGCoIZoVRrFZRPFASzr3X
cf+HuyfEjqdlfYLDb37yoON2oTKAq3LnY/ehowPbnF1DG9I8H5rgTImDo+kCjj3XX5xsmyyLVsaN
oFgvI+ujieEkgFOrtoBIllWo/AiJ5NW6yUNnbgAxt8QMrn5BsSie4BkI3Q3pLKgbJAXW4lm9BLyD
dVqnOxvg88iPngcCB+UtChzugQfH0ZybTEr7WtVqTqrBvjzN9qT+KOlEWY6gGBwgqdc9z4O1u6O+
DO/Q5JnzJU9dQEipXxR471kdgncO+jMt27D9LX8nDAKYD+q1LUNPUTQ+QtjTd0nDxeAqlzksrxG7
ownp9fjQNjRGEE8qwsEVzTBCz7dbWWNmOmie/HTJa2DY+Yo5Zlw8bQyjjWb6mQIeFMoI6uBZYEmm
gruQMTm/faXvUck33GbUBmGrt8z9bKBlgOiqwIGAfphAk+ShrDzS5A/AC0c45zdjM+R+rql9qBUa
KrFQFbwkb9Iw9kmCM1kl2NO8PGFYLJiwRoydAdDvw+rOhoKKgc5TnJt1CPHu4ACKWdXVwGy0wv0Z
oM4vh20CQDJetKzXmlYEaaDF4ySnwWWMEqj6GQJ9GcSEceH/IxUtcse+kCxUsr5/0VfM7t7Zcd5o
o3TFCCcw4JroUyl0BUWLl3Bc6DE5N2Dqe0iqsSrlq/8DloCgaGqgjq+Ra1+UCssSQVdufImtL2sU
24zehS9vA6gpcW7F6i8Gu1qBp8wAVXB8mHDTdy52VWYUjI3dwgiAImi3a5hcTVYnZ8EuK4efE4Yc
Ye2+m4t5shsHsF6iKPlRAYVjSenXH0sZrA9tSCrfdXgHwWAbwYbcPbh8VJz4hT/H3CkCPMqcREKi
pe98DGrxKDvlm2eZNj/+hgsxW8quICfQpWsA3DiuanweeByWYDFNiyxgE+nXLqbqA7W+aul384TI
rGf/8EwCNjDqer0jaCXa48+eTgw9+HfFFtiD7wCTp4WXzrTKTpvfXdy57bPoxpuP5IYZ2KV3i7Pw
Odlzf0cwVtM4i5pxEJUzv/AvgwvD3E898wp5ec7gH0IB2RTCa96ViZbgsDsBHtTx5Rm0RweoLFyJ
Now8ttwEWGtXcDaAcVMSmvp04ywUO9Q2iJO1K9g6WK23OTVSWdK521jPqq6dcHTGoq0NM0kwdPq3
BS5JTy2THBeJyDgdwEAnuwfURZEmmBcf7ogqLSRjh8Q6mlSkcIsrPI2XFKc8qOJt5nhCWy9pkWwW
KWCkaO/yJkBz4yXsg0p7qQgEj4Nw40WlvUesISyU0QnnjUYqhtOdpO5myMW9gWIuxrImZQLopkYb
/6uoRgUU3hIcBPUDUSM1ZuqVCRqA6Dvkflp5bmsG/uf/D4Yn9V3pUemzoHxtKnWP8P4XU5wsmhZv
xMiqmnCmFQUOA0GcDnGNq7cxzEe/d1Tl6n1t76tK03VwtzCVP7d5DYt3XyYz8+KNiqfl+87OsE10
xLDyOSZawzDMK1ZA+GwAt7+8Rxgtsvea32QDZdimoQfjIHoGhtNkHJv2Z8eMTZI75EMOEmg0RhK4
WFnBVl5XJYpPXNfx+THrWCt8N0swDpLSyICVmI+ertpoTi16o8U9n0E8PfC7SusRI7k9uA7Gh0nH
747dwY37sK39iKsDcbRlP5gJ9NGhF32VhHXVYfbLocbjsrQ3X920QYxDvcFADbEF2Hh2vZN4JdcQ
RzwXJU+2MubkH74ALt+6VbJEXlm8VXfD0Ih9VOQya43cJhignBs8jIvaW+3zBKmZu2jhNMZ+VPLF
U1XGON0CsbQxJAjHGriXB9LO4fqJ0Mzf5Jl8UTbGXtEm20nFdlOt2Kk4wd+h0qGvSSz0sHP4PIOJ
51REhWB+asY2oD9v0ZF+IAhQUA7sPRL3zAcJ0q1eLp7GPI7/aVJJulYZazFiQHibdZBqp+t0napC
TLlYdJgY2HKgqZQCf7a1Bpa30tHglYuPblwd84azUZ/kvR2Y8Ua+AJO+wpfjmPbZtKFVvMrYYbYu
yQU8++Xs7Ff1HsKZHBVP+dI+IdPzq9VmQz7lXpXUC1xmaidAgQWt0tVA7nozQJeLBcL3mT/jOh4v
1bemB47BIBJmMrLtD3jNkE/+srxbMgOmWVjT3XIcgjAJEKtNB8tGf81nzQ3lnfZKKgjw5Ydh1KO0
/6027kOgSa+B5P7Mf4mDtzPu9GT1wLtiibJpK52opzwImQcdEJCKx4ReY7n4fat+bC1Tct8+vj7y
02SQNh0S2TzBw+WCZaeiZC3gl10CaQsH6r9wVTVdytrIKzws+ZBmS4p8NrrF/AaFsA6yXSfh72lZ
iUteoYQHZPkKuTprdmucekvShjNRQe246qQnqmyz5jvS0nBEB6oGdNLBukLMGjqiFePcD2k2CEde
prff4LmMV9P+maT6WHKgyxFgj4er69BqhJWJ1tfSm8oo5mHzJpMZNWNvzoGVqL1wO0NY1njAsrvm
dVwkAoD8LP3Z0nERraV9RlojOxxO1NzXGJuTecRSZzOmDLE39TLic6KDvNVLX42e2pAdnHeemKGA
TOnlaLI5h2o+aqH0RlAoQcd6yxcGjLkN9Z8zNMq7CHQPtqhI/AvwSjVqDfTsqpQ/9VqvI8yJecAw
13MSBVKggmIs5I+n30S8ioDinH7EIEoK9D9vC+SnhjzoGCWY3UTiyoqSwMUFlxUV85lMpt1Ba7Yo
BxESMHZ+hV5Sv8YfJKw8ANH0MmCFBVwpWhhKW99fp61ub9Uz0JoUEztnsthP9s/sD6YLTThVowK0
6NZeMyl+8hgZsbTXCDA34B4lHVOE2mNJXks4U1l0GMzTfufEteAR6L/ANUQaFQZ21G0ZMIWvMA1y
FdXeRp++pJjoA4pIcyo+FDSTw6QfLkhEwn/sWuhGJE3ZUaALM6IgApGrMhF8LWBC2xtQG2xpU+aM
mYMf0Uqwod88byGKMuGScsETc/s2yJQfqn7M9gjgcP65f5keADBH+5EyP74+uKk6vqirVd/qVtHu
ACbL46rXXP8i0LNHc3KQzHhqBIjW4PHVkjdfNRofzijHMAAKfBfmWuO+G+j18ko2GolngFFIGB81
9VFzeCfkAwGKgENxhlBgg6mlF8QJ4KDtKBqRt07Xfhfg1YbFc+K82Rjma3IHxZQ4BvyoowBbKxWx
hU8MU0uzswErkbHJmhDG6T2sI3Ut5WOGWLFRLtsXhalxFO2Tr4bMMrdx2zTib2vs4brCrwegg6Ds
hvqaYYUlFAsHV4YiMzm33/C9vAovo+lFZUwgVNah0ZFNpimLMtEyS8Yo2hflya6BC88X4saVveIR
VPw4BMA1Zob01YwPK60fi3FDBsnRYJyen0kGiu7Kt+lHed3U+UYG83SQ8PQicd8i+FdVUrYZQPRg
mmV2LtyXKh2iyLLPSpEqPBNUQG+nfC5p5JGXdWUyLjnpdF/gj8SY+cbWf6ksU63FKhWjxP+EuB43
DEpK/7S3b5p45dUySa1OvEep0PyFPZHj0ktPj2k6ZbxAqYJ6TfkRHw8OtG3Yk+BoVAi32+chss+4
Zi1pZ+AxPoAZ8aAq025Ol7HtdokjCz5q5zpggonUH/eywefLqLcv3XXtvqJAPoGaaQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7182e76e-0546-409a-bf9b-233fce567896
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-content-crc64: l5F/PuenE74=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-a1947247-c948-9fcf-8494-f0e05e152877/test-blob-94b7a1ae-8b13-c6bb-b58b-8ad9fb58556a?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 861177a8-ef82-bdfa-9813-364d9c2aa9b9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23CDD49B8AF4940"
last-modified: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-lease-id: 861177a8-ef82-bdfa-9813-364d9c2aa9b9
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5483d3e0-34c0-41de-83e9-7f1d22857797
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-a1947247-c948-9fcf-8494-f0e05e152877/test-blob-94b7a1ae-8b13-c6bb-b58b-8ad9fb58556a?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-lease-id: 861177a8-ef82-bdfa-9813-364d9c2aa9b9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay0zYjM0MzU0NC05NDQ2LWVmNWEtZmU4MC1hNWQwYmNmNjQ0ZDI=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x277017919E75780"
last-modified: Thu, 12 Nov 2026 00:49:38 GMT
content-md5: dqMglU0eBsLc1MA2iXFa0Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 991dc55a-dd38-41c9-b493-465d2441ed24
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-a1947247-c948-9fcf-8494-f0e05e152877?restype=container

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
x-ms-request-id: 77405eb9-fa73-4c15-a08c-a329446ab7b5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

