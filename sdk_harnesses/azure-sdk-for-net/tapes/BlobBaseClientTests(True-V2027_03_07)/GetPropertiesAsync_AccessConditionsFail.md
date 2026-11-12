## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2edfc91c-edda-fc84-5d07-24d4dde3c963?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetPropertiesAsync_AccessConditionsFail
now: 2026-11-12T00:48:07.9261901+00:00

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
etag: "0x27517DA83542520"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a8116b94-f99f-40d3-a868-ae4fe9cdbda2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2edfc91c-edda-fc84-5d07-24d4dde3c963/test-blob-4b676f3a-8f6d-2c1b-9283-541d56cda4fd

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
xnHhEhQABEBv7QsM8MWU+PZScKFzHMiMrbObVphnppBiJg1rAbZOOWsm24CEDzzN71smA10Diaqp
VGVhZK2nB0d7qcm3KPc/AzY1TEBICJ13zmc9QaIyX51jwq1R7dW9f9Q4CGZyFcdk5/8nzTxpYEvH
6pZGacakSEksVGVJ7RZgeM1sDwA3BLif2VmjC5Jg+mJhiQI+dxUNlL8cRcFiGvnpxlVv/FFLkOXd
ppBsAT23zFoD6GMTIQC4X3tAG7/3Pb5guUU88P0QFfkcYdGEoJKCZHhnXzGV1aRUt5zWC3Qm5WjR
DEf4ettc8tNq9sAvM7/ovrdGkN6Ny+Sg5zlhOgmE9ntospNKiemdCmxdK97jJYPd7U2931SJREFj
V5Oi+rjJ5QBExoArnjTNqYVyL6AFvMK2g0y8xxYn3m5S5zJW+hCzlEXen18CsU8Z7zbPFxShXZrR
7HdrDB7pHecS2bcBd651vptaJx1is9L9o9fgWMdZsYmXhQ6YSIcn9IJ48NiYF3iHWVl5RjV9bjik
bmlGCcUfuCctavKg3HYTMzKb6cP6ZIxfWP5u4GpUGRbV9Nke4Ou8WDiwa6yF53ziZhMC4oR1qgrd
57DGsdi82VHcyuid9VJH3pGKSfnf2XCCi3lXUTeRYEnPQfg79qdf85FbqR2TRXDAuwTz6mEQ/Q4/
QyZeZYgZSmmezbRaDOfpKlZnhC9T7kUIl5UznnXovkTq+7KBAY4JQV+09Xi8Zq8cCb8KqXje7FXg
Vc7y5qz0tQ9wbxA0aCnHXULQn/nNSzHmFpS13RXLDA5doKvAF1qyvz9oTPae56CWQks1DU1bEwmc
DNAYPtj5pGIC1sh9B0boHd+6ZP86Ry7zH5rKlf/BAo2hIwuKmoFnbqeUnBHYGDsFTe9uoa4KYsWh
JB49Lw9jQNQ63OQ7XYNdUvVXpaodGgdfxUgPUmDfl8BF6HViKj+YMFs8nTxWye9sEE64s7wahAkX
3WrGVO5zW0Qk9XUN+yi2vnVO4H3KCftYo0ERJuQDK2NsSkzU0txtyEH3MdR6XxUmAfRHzKSMTNNv
brCsYTVgIcoRobDb4uyY4Bc709cm3UQr6yXvu16/3/14ZWMrwGYMlhAKab1lSh8IruuMUXn8SZBs
gHYQcWVrUsGyY3yJbR+wLjzGG3SGxqEF5w1zMo2EfBzSvkDw/CWrnxb8s+eif0HL3CI8Ni0c5rrU
ColY9x8zLuZgtq7fvzIXG3xdihO6YmjLqFZrR0buttiFHPGbU6f2yIUAQsiS6xzwJRqxvlynGqgh
jE/JyOagcf/WWaNAe8jUZ8KOuiCfObw5eiIrPfh83gFJecZXLf+eX9DIvJF5r6lS3FeZGWCHgg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x224B57D51494E40"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
content-md5: /BqB9qrVYuAUiY4vDIEsgQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 607733ae-989b-4354-8042-9f658840fddd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-2edfc91c-edda-fc84-5d07-24d4dde3c963/test-blob-4b676f3a-8f6d-2c1b-9283-541d56cda4fd

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:48:07 GMT
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
x-ms-request-id: 2a0df183-4523-401f-bd12-eec53712a8e6
Date: Thu, 12 Nov 2026 00:48:07 GMT
```
### Response body recorded for playback (304: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-2edfc91c-edda-fc84-5d07-24d4dde3c963?restype=container

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
x-ms-request-id: 819697f0-0517-4f85-b562-c881cbbb1453
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-4d909353-75c4-0733-597b-a1f702017c39?restype=container

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
etag: "0x2643CBEE975A6E0"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 122ca542-7282-40a7-b320-8b9f207e98ad
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-4d909353-75c4-0733-597b-a1f702017c39/test-blob-505aefc2-7cd6-c02a-cb78-d861a1e2c5a1

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
wfdzxJyx2uqcwWIW17inUV8d1ikFN6vWaNCCS5zSZne2/zUKjridERVvsxUaFOkS0YcChAubm4pM
nFvMLo5OylvrYNeDncKmf8UUloSWvFTncHoV0OJrGmOqvvJc0OOGIem6LrMRjzTFWwRGhwUGtt8H
5b4UOfp4f0Zz2N7QSq7ijnSa242h1eFFT3TdJZNepAgSVeslcejvQa9tnbZV9RFVY/iQa9pSZQ/c
zumFm1myFTPWvfTDvRyMq5reMzcq8FpjiMGazTkuv+/bSKL/aaZVuoiCfjcckqbbBMA/dDLYst6O
IhKXF0f6qP0F53R6jUH0iHiup3EjRvUbvsl47ku9A5bEcEeTvaJBh9Y5F6oxYXd+S+u5KQpsatsc
fFl9gbqyR+Tethz6YMvVbSCb6i5L6V1S+qNgA9qLVwZrdkFJwwUch8/GUqpag+og47vq0ICs0ZL7
K4cXUUQJU14WjuqJjKkaf2NfhJay93a4QCAeoYaFvqWuTph+BDWLvP9LRPUAllcSz1EdTU37SDMQ
XhEj67HYkNBF2z4Qm3ot08eXZrOBuKnIC9E1aHBXsgVlbaYjZ9FNc7Qku7oZATPW73qFZOF/j6Zn
W9/goihf7Sk5qy7UCWv2SfP/XPzurwqdXnj20k0j5d7/vAzxbdCLxc2R4FYFAuYOjxrugDKpeKzV
QkOwaBrbFcVQ1E1fBNsic5cuXc60mFyS6EMyNGWrVUNgHCuM21yztsqQtS2Yroo/yw2behvdIarn
HoDXqOFgpH4K/+iwlZg6e6cEI+Iu+Tm482hXENongvuApb3c2w3pMBGuja+ijjZ0YP902P3IuCRG
HrR4CJOk43zsL/DbXZ+ZG/PRgGuJFmUy47Dbs6r9uOyYlr1ZcCd9CqoztV5FmQNf270K9ji4vQhP
RiXjyDDS73YDQsfiP6rLU3XBVmAG7Emte9fs88G039m0CioCmkF6YcbnQlY7fZsSPqPC92anSFnb
Nk1Y5fy1TmLuLTWAybgzRvSaHqrycf482bQd8udyDcHQJmT0InvKMvP0TU9lknXrjrFyDSmv6MRO
HAtHl1x6fCBzr6JUPyR50Ou2/iSu1kc/MmM2AP+XIT2fpQZvgpuXedEv8uLSlk+M+D09+OqgoEXE
CGT4Q3wh241ltZkeCU1QHoVTf+RlbZwUqgfBWSlT/wXAq3k2njVVDhZUbeG2be/v7dlkTSBhX5vI
5Jl0X4FkEbaTXl7UGX9Q/nHNEP+6XjwX0mxP77HlXkzdbrqb4K6U8FsrIg+RG9NZFE6vlE6bDoVc
XY0VFCIErv8S9qvFtB7COCCkjjsthraY9ttjNcr9QmA1P4Ihf9s5J3QPfyUolF8w7Fsu939KLg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2792AB9C75C5740"
last-modified: Thu, 12 Nov 2026 00:48:08 GMT
content-md5: SR/0Yv4t3CZQ2j5+B7V4sA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2d6e6a19-7b2e-4c85-ba70-b871375cc2b7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: HEAD /devstoreaccount1/test-container-4d909353-75c4-0733-597b-a1f702017c39/test-blob-505aefc2-7cd6-c02a-cb78-d861a1e2c5a1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:48:07 GMT
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
x-ms-request-id: a0b27d83-0423-4827-81d3-892a61fcc073
Date: Thu, 12 Nov 2026 00:48:08 GMT
```
### Response body recorded for playback (412: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-4d909353-75c4-0733-597b-a1f702017c39?restype=container

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
x-ms-request-id: 60fd67f2-7d47-4608-b6e0-8b0a2eebc274
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-1e7cd6d7-a147-3478-14b4-4b90759ba1b8?restype=container

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
etag: "0x26CF07A2FB5C960"
last-modified: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 918ceae2-6bb8-45b5-8687-f4a387fb81dd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-1e7cd6d7-a147-3478-14b4-4b90759ba1b8/test-blob-c7676a44-061d-7091-617b-32486ece4ae0

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
6xCrSgO88ob722px3QTqlUui6YwYghHQRAu8y24wxkVpaqVk71a1h3jgy0KcIJNdkZz8y+S9yGj/
2wX4ACcXyxQkB3NfhaX17WIUN7bONCR4XzrRM/phq6E8ZRRQvIdRyQAtdxgg/gv3B92CqZGxMKfh
f6DsRZgaw1zRIiCRpTHaw262oLwLWGEv2iwc3gEQijRtbj3mZINoErO8TtvqZWGsqOYi+4/q1Sc/
vWpr/uVawJfsJDb0817qTY4JTwmFRHXKbzUb7Y6kg5kVp6YY/BTOYY1D/UEruLSHN60B4YYduXj1
oY+vPtIISKGd3ky30lF5Ou17QkcznraBlLXhoqIS9+0tIlqFHiO6OrSgjtpoz2Vch6aYoXcxwQLY
LaocJ6b+iudfia/29BvKwAeSkxDcGcRQhBr7eVV1/GBXrPF5nhIOoQPzCEW2ZZOKzuFwni7y/BTl
zKOLAxCR6Y1OnkgqUSL0hPEM6RB/mh+Hcat0BV4yZbDck9Fvg57zYR+4Z8ZLX32+exo85RIDZTKE
BJFlHeQvHDmXTr1RhQBTGYfxxzJYPBEttolD9YCd2C2f634MjUQ6iEuNsxHAbPYZ6cuLEp7/K8h/
OGZa6ya4+nWPspmCRotDtj7nyogAbUmTKQy1EsaPn8C2jVXd4J0k1bibMLpcl6I/R1tfGGA/f8od
x8EZA+ivABPZy7k1ZdahwvXQZDyPNpJqdcpqL4Zfdw2LwBjbC9LQ7DCng8voCuKEvlZrbhqOjZEv
r40eRNCMelSsqqS+xrcjAHcL57LGgWvn5nAw9Ajy/DKHq1tEsahfGgl3PF89xvieR26jgqXeaC0i
Nl5fW4ZLua5yNhpb307PrM2pTkQMqh94kayZT3qMqUMuIXtKAL+DK4Oxy5DeQ2gg09bYNRnoFos+
58nZsWkz5Y3XLb3ShawNJSPBWt6Pmk5DeXyktHQpRQvvCxj1qXkZfeYDBxarTU4qyw/2Jrutr016
ljjtjzEZreex4nmTGHypqN34jJI4mCsteehkMh5PQlzLehNBK+216Vku+WvVl7OTTX7etCK6Qv4M
wBVItHvIYaAcx51oZ3zvQ6I5CZ7AWOI10eWfcY45ETgVNWvYbDXdZZjLuM8VKuUC7nCAgDhgS2cy
EuOWKe8R4rVlUzIQF9ZsW6QF9Z8TIKb/nYMduZD/tekEpVpSRzyoudYZsNez8teaEyWUWlbIH/I8
lots9CglZZ5JDHF8GhNnXTzJ+W/PTKqrg6Zra1uTPIVnFrGwO8Wt9Es5aeZlHvkRLfwZ/iaCbErh
wXGCufpDttDsFANitiJ3HAQkluLERWSsWj1eeT1f5Klmz3pTKjtQ9rMVeQn1rnbaouEhXtZoHA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D76AA9EE8F8780"
last-modified: Thu, 12 Nov 2026 00:48:08 GMT
content-md5: lbMDOQE4lvs0cQQxNjjQEA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4686f029-b38d-48ec-a434-ed4af8d6a74c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: HEAD /devstoreaccount1/test-container-1e7cd6d7-a147-3478-14b4-4b90759ba1b8/test-blob-c7676a44-061d-7091-617b-32486ece4ae0

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
x-ms-request-id: 1918352e-f4e2-42da-bbe4-639aabdd90e7
Date: Thu, 12 Nov 2026 00:48:08 GMT
```
### Response body recorded for playback (412: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-1e7cd6d7-a147-3478-14b4-4b90759ba1b8?restype=container

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
x-ms-request-id: 71d30f9a-d0aa-4fb6-a0da-93d3266395f8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-5fd60c7b-e4bc-923c-8d2f-5afce7a723f2?restype=container

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
etag: "0x231463C674DB340"
last-modified: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cb00be22-86f5-4883-bcaf-a17fc0902762
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-5fd60c7b-e4bc-923c-8d2f-5afce7a723f2/test-blob-2ea0d3c9-ccae-b75b-abc7-84d65c3d86d2

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
/rL+R1PclBF2g+zamrKPMn/vWIs2OW6usR+z9WBmNk+piP00qNue7D6OtyvggBz5N1FXbOT6m8RE
UJY0KJ+xEEycMRK0W4mjUGxMqIFCzjACur0ODslrruw48FhEasOf3KfeRE8KRNzIsxx4rvNDAYJm
Mm7howKDMIMle2oxX+aorczaZInh+HXgRlus8//59e7W3jdVvTilWxPL5MlxllQ2zwEmaZ34hDr5
AV2m1j2DLIZ8W4CuU++TNQl1FROrbq8GdiP+0oxR3Vn9W7zb/oTWSLhD9TvTiHwRkzSTgm8mTZKu
oGAZhFn6Kn0msPcyuDeEn81baHlzMu6m7D5XvVrq1g0qLF0jvcNeScq+rdeF3tv9DuOiy+UYO21y
cpgaom0jPNnpCIvZYOEJ/R+utYUWIQ1jWq53SAsoEfHwsUorQ6ddm3D9m9ZQI60BmM7GaobnW1GK
t0e+q/TOwfeZ6K+X3rl4URoUGYU3EjcAda89YqdrCFb4oItgn+98L9retjv+aboUThlr00HMUqQQ
vTZEkF9QLuBZnz0tF7Erl+qrWFz7Agv0KRSO/zUUK03nT+K4OJ56johbpcp95jZnQDtXIfpIFLoq
T2ZLwS6qRXPvRsfPcl9LMMnUoF1Ad0LeJr75vApTnjsnjeg4L8xZsGBXjZ9ul87cC/Awc3Nd6tcj
bZtwsYhonKiMqOR2EwH8e/D96eqjb47wHbAaIirHyaMQFMEx6P/X7vH34e/pZfjuM/iDYADtgP0M
gJPXTXl9xN5BZf4/ypLxJfr4q46fBre4K+4yRGmjIpPEJWhrAKF4eh0QqP/5r2hmkTsF9dVvbXrc
HyGKSn91nkNre6UphiVZgDBwjl23vnyFzLIunS2+VbfujuB/7S+dmwq8jjPDPAsWrHWk/t8cJGGk
BH7NRwAVrCXtO/dE2pIB0/NS+y9Jwo+nGPC4GlbY0Wp/2umx0FMJp+IN1QAT0dLioyvsySkxW0Hv
Ji8QXZHPFWmNxACpTwKfSVRNO+2Ok0Ye1Xcr7AdATn6nwaok+UlQPsCXhg3SOVMoTIDV5CBUYJPp
8ocaoyhhTHaBAo5Yek8K/Pwt9ww4TJwkA5+Ha2ldUmEXOgfCNpuYNTmXUDbFz9IwyugkJ2mGsKXq
9aCI2uEMJK8sQT9IR8ZglMLSoftmXzPNVqCBOCv4kIph10D7D1pYiiuGmI6S54Miw5Knsw+phJZt
uoNAi+uENLC152+FZYVnehbP38ekO24dX3SYUd16t1OqjlXXF/9AAWPe3AATnF0NPzn52aTPyH4U
Iyx27OPSOzAc29cvkGIXj91jxV9uCsIXixGkgN2u28XXwvTSyRWAC6HQ9sGG3q/W4krHawIfpg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C46CD2C5BEBDA0"
last-modified: Thu, 12 Nov 2026 00:48:08 GMT
content-md5: Q/fUMRJ1WdvZnoct3ZcNKQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: abe55c69-1725-48d6-a243-997f16c627e9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-5fd60c7b-e4bc-923c-8d2f-5afce7a723f2/test-blob-2ea0d3c9-ccae-b75b-abc7-84d65c3d86d2

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
last-modified: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C46CD2C5BEBDA0"
content-md5: Q/fUMRJ1WdvZnoct3ZcNKQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 807d8c23-c00c-489d-9f98-807b0b6ac15d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:08 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:08 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: HEAD /devstoreaccount1/test-container-5fd60c7b-e4bc-923c-8d2f-5afce7a723f2/test-blob-2ea0d3c9-ccae-b75b-abc7-84d65c3d86d2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x1C46CD2C5BEBDA0"
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
x-ms-request-id: 0b2368c2-c9a9-4352-a603-8b51c1661500
Date: Thu, 12 Nov 2026 00:48:08 GMT
```
### Response body recorded for playback (304: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-5fd60c7b-e4bc-923c-8d2f-5afce7a723f2?restype=container

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
x-ms-request-id: eadede31-d647-4d42-9b3e-52db95e80918
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-615f6918-2ed2-52ba-6dff-1257ce6d44c6?restype=container

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
etag: "0x26C128529BF6300"
last-modified: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f04e5200-0ae5-4cc1-834d-0ad479e586af
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-615f6918-2ed2-52ba-6dff-1257ce6d44c6/test-blob-bebae2c7-139e-9001-ac61-cd9e93e76fc2

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
uBzbaWm0rt3mfYnBc4bhaJ6E/4lIYAcFaM60cGAcv4aQT5+xkttcEzTc1yGJPx0mgGUADufmeVcU
1gCbAD58yr0DMSPmL9bDKOxUa4nmeymxjfD7G7CeqtZInbvawRL2YA1jhg75QFCOPeb7kQ3OLVrW
6XNNga4MZYdNnZIa6GfZXgt8g/Ubt0yfbN7KohjIem9hBNefqN9eViGHrKK+dFV/ITIBUqpluzEm
rhTQQsJuhCMiueOPOrYsHS3Ukwuq4PiJSoDlxijE/EilefnKjRNeGCd/nLpx7+d81TR9kCcme80c
R/dBib76Xb2b6sC8Yo8ZdXvjKkQ9F1uZaPH0R2sgfv0rrkYbHI9phD791QUmwHKkZBusQlCJ3i+c
qCDMBhZRemvDkLRI/VjreqYFQEJVcqh+T+JQdDusos8XfnRvnH0oq1qZYy++W2bCwMiqg53tRzZ3
TrczAQYvFu7kMX7kfN0o3ZTnuw55v/N8jbRzAR4xKjc+907G9KpUakxA2irn3kPrgqYJBYsn/Y7E
tnNSvBXQsgdHpYSOYejqk1HCOeXIlK9wh394KCSsF/nAAj02Aq03cCcjoDi+XSC9HnI5ZMSo+yLE
4TWVV4nim46KzV+qs5Ckisi+pfR2sSlfugqyc7I1GAcbciB3oRidQAWpM4/AEmvhlNn86lUtTjAL
Npx/MCfcVbVYjkFwLOmwIGXvzH2Znqif0N7YOS2x7iTwbGt7HQ/dzd7aaIMpcWfwS8nvPoGycZj0
4GBJBByHpqAdgMB9NAJVEf+fvzUkdV925+1kwrCiPvrThz2vk8jBUsLjDPGncxfGmSyCErFiz2sB
0h0vI+TwekLFqq3Fpn423W1zQWluznTVnSiDICtIcLfSrsCrki7e8pGu4chqAfOuSzVD744BkwOo
WYW7bFoXfTn18/i9i0o/lU/Yv+2ra5w11dT1BIEo0Bq8AjmoIoU2l2SOdA368cDqBFk/KdMW/e7p
hpeFIXi3zCLdAIgRlnLJoSeIHPaOOuQUCgAn6adGpgVLv5zusXbs16jrHfE42W7ndYesjuD4Wkyz
cRZ4j+N7llmCxdbW2++wnEVOox3z3DGRQHMfmhglU2RPO0BgdEfEb4aXtROXEZqX+/Gaqbcuv5Xl
5k9vXPxBXXJyhqCvUCj+iTOXWyYd+i7Zh54miqmtIHureo33VROJVVehJYr66KrJnCCDl2NuyOwg
ltRdG9PJxWUkBNaaBjMfDQbPe9Sk35/0Xe2IKYkXPLKh178/LDqE12Al1ePULpbsZIpdnkwXfLY1
ab3lQJvcDcgj+C504ODLS6N0fgm7Hy5Xm8X+uZ1liloICcN8npfESMgbsDZnd4OqklOoov2seQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CEECCA1DC198A0"
last-modified: Thu, 12 Nov 2026 00:48:08 GMT
content-md5: 3OTeXpJW6niRa5tffZYU3g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ec83d366-062c-416f-b002-019829cfb5ca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: HEAD /devstoreaccount1/test-container-615f6918-2ed2-52ba-6dff-1257ce6d44c6/test-blob-bebae2c7-139e-9001-ac61-cd9e93e76fc2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-id: 68e9f42d-1413-719a-dcbf-b6aa10da6836
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
x-ms-request-id: efbb1099-11f4-4fe7-8014-f1a441764bda
Date: Thu, 12 Nov 2026 00:48:08 GMT
```
### Response body recorded for playback (412: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-615f6918-2ed2-52ba-6dff-1257ce6d44c6?restype=container

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
x-ms-request-id: e2dfe6a3-fc4b-40f7-ba2b-881be0fd7b4e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

