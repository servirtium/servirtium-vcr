## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-381403a7-31e9-1e20-9f46-d68eb4cd0950?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).ReleaseLeaseAsync_AccessConditions
now: 2026-11-12T00:47:02.1009189+00:00

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
etag: "0x27CA28C5A3B8540"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 444d628b-5313-4bf3-8b6a-ed6897879000
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-381403a7-31e9-1e20-9f46-d68eb4cd0950/test-blob-7f0de3cf-a639-4426-6c21-299d6e8c6e79

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
TvBSSsdDB2mRPP2LMb2bgtcvsfDnLcYB3NDMyAeDrxPYXEDDer+JjNyk7f2omhKvhafFP9p9kiAp
UW33dz9hDozps9V92AcYpSUUQz/JWEG+HENgvXA4WsofmilRkRSdQt9wvuc9MqyfrZm1aU7gX/gr
OVr7AVEcsFgKXT7dxhQQdwFgWZlagOqWwA/Wg/F7PzowJli6oUGOVA6OMtRuweaFpPJNgAZf0bhv
ZUBBRS1njh4DraC7VtbA0gSLy04WKP4pUd/+Lr400FSgSjsATQ7hJqO1ahRGyU0cjK0B1AVqWTxB
GPRNaV9fz9xLGwyav4X1qqWqYL3q4oeR4qERMvxPNvD/vjQak71DVps4+65Bgc0oCypgv/l/VzVt
vIa+Tpzf++UbmwBQ2xbnZgkhsubYT2DU6CfS73b3f2f/rNc3hQf/WP/IJebM2C8TeVjvXqROlGwl
6WZ0DQxuJBuZUS4/sOECIVrnDyp6CBD3vnUeCCHCsBhrEZyhikryWgHKMocA08h37TxKZ4RCq+BV
fU6WUBz61qEW1J5EYJcP9LUor9aJ9uutphrkeEiTKWa8TA38Wwnl0Fzl6v8qM42lO3LOGfwKzIZj
6aoBFV5Ygqs4iBSJE5isQ955owzrgnONPzzVxQ9psn+HmHJf5Lr9jWhT8qp4HCfZItYdkCl6d2c2
c9Yhgr2bztWUAXomTV4kfBWkmJDIFCMU+6I5TCJVDSEKKHDk3AqqtyPV5BqtstV3+RQT1t/Wbl6y
DIYaYoKzPvRZHCTuP58L+eBs8zAJZ0nNwVINQjdBNLoSMc+DkFShIaUlU5awibl0CNz+anotqaU9
TKEvpvy9GOhq2w7Qh2iLy9GL4xSyHDeZmTpaQ8k/5IgpRkOzcXuoaDuuRq2ro4B0c56oosaQiy9p
lgzBYtQeKveFp0Ek11lW4nrZA9aK7fW55s8rlkLCmboUSttu5gVmkBy2Jfw/T5tEUr9Lt4dZ36gW
CHwF8pO1ww6GEI1+5/t0cnK508j5eZc05kSCduEzumsyWN6JYZ2JAWHuuT4NxWrD1kQUnwvgHY7k
0AtOMk0sUlYiTI8d6xHVMNJmC8BZJyDavqCcHhpgUjtQpJCROs8UwWbn63napusyP284eRHOi6nq
dHOsjzQ8wvlUzEaAQ/YDUUlZcTun/xe0ad6rJ9gpgRnnpsVbZzIxqyl/htqlsvx4NSfIdBptQ3Vb
+CVWkJshK0osmZwwp+oXJ8USJ3g9D7fiMvGwYA3/eWNPAG8M2xqOXVuPeBhgR449sU1UWxv8Hehu
c16pcco9LR844ad6CkurhMkdrpeegupjcq+/qx5HUuKGnme85OyQUUr5J2bmwqYBqdZR325Rzw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C129373CA2C070"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
content-md5: oPN/A+Qhygsg2y3yeg93vw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 028e373c-5ea8-410f-b6a6-d1baa117d70d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-381403a7-31e9-1e20-9f46-d68eb4cd0950/test-blob-7f0de3cf-a639-4426-6c21-299d6e8c6e79?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: fe4674f1-7d1b-0082-f18e-c5f46ce3eea0
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C129373CA2C070"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-lease-id: fe4674f1-7d1b-0082-f18e-c5f46ce3eea0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4143e4a9-2eef-4d80-ae37-f041383d8fd5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-381403a7-31e9-1e20-9f46-d68eb4cd0950/test-blob-7f0de3cf-a639-4426-6c21-299d6e8c6e79?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: release
x-ms-lease-id: fe4674f1-7d1b-0082-f18e-c5f46ce3eea0
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C129373CA2C070"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7544c7cf-c857-481a-9710-253fc037c905
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-381403a7-31e9-1e20-9f46-d68eb4cd0950?restype=container

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
x-ms-request-id: e56bfb76-269b-402b-9f18-d4469a54f171
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-4c5d8ddd-5aa4-7c83-af09-be0147f57373?restype=container

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
etag: "0x2046B36A4C41B20"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d26e43b5-f1dd-4abc-ab03-bfb38d380027
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-4c5d8ddd-5aa4-7c83-af09-be0147f57373/test-blob-4876ce34-ee9d-d375-c7f9-35d821ce391d

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
ujZ0UhEFKpbwyk8Sv4C4+xpRwJ5tpgLuF4mFqySqW+HPoEcQgCFiL6TfV9OfYxRGQDq9zw6bsBM0
hTqHgH5xRW5tQh85p3r575D5jk4vT7R1Pmrq7YvSM+8z3Prn268lbRJkMSD0DZi/xOB9oSLFBTaF
EUETh1jjmg4vBct/ERTh1CA8yh6UgDDSKiiqVZHNbtbEYsltEeW5gZYRxQjNP7LMm80BiDsX8JAR
QVwvOEV9YZb0u69KdMM6gkiHg7snBep13rnEy+abrHE4W8+IikhRlGNy2IQDgicKxgbyj2zV6Txy
ulqLuJawWQ49Ehjzsfj/Nu9XtS1lcluRugXfqR0FYnKTFs/uxdvNwn92xW8PFhQO8lh9fTMPDEf+
+f2R0K/wOK+lYJsoEXETivOt763rgqPw0bfEh+U+gwqI78vePPHPhYzAabZ55eDnavNAYRyaEnda
oP/3LLHKZ9yQoCGlNU4B3WkgKxjsduvX3B3x/SLt7d1Ug5vx2Fjb9gLa6UW/QTSlPoOyeudebSoU
IE+U2Gm5orNEUbGyDwUQRDQWEo2lF5voTL+eO3L19RZx3bcJRx6YIEaSeu+D8i59oTWzR1qcbgi0
q4yqGmdATlyaQTJOB/0WffFHE5yrZVmQIZk9Qq271G+uVZuS7gXeUiyT6LH8L5o4ncpoVVprCEYy
GvnOAwuu32zCn7Jhg4/saMFwGHyok/H/BaXjU38UQ01VX9QLEE8g5AlEOZDo1hk7fO2Z++/JioYI
zv5myovtrlxkDCS64FdyTzNzY1lgFy6MqNaRe0dei9VOA0JRuhp9V4s0g8n0gJyWJ6u7ViYsp7fP
2SG1XDIUBoFPbNwVIZQZ9gzOLJNklyg5+1SbojSuIVuKgeD4x/pYH3xIpRS/gQUXomAaXXsjakL5
e2HeeGNMoEqBip+zIC4RdQwWHPETeXlOhADUlMPgZhee/0uZeacY+wXKPvZlY4ExCOhuDU1Q5QLn
kPRjdwyGoSSIFSDiePxl/SHsSTuD6CB+oovbcVnJTRlJsumytYP4RJ3S3U5gT5DsCQ8sZJzGZKfT
5NSBqjDLv8cHmcYSskid9AWesAvRHVP772dKnel9g01C39CudpltBx6HWbXK2VfGjnCXKLOcAcaB
hrrIgCLeiRZ40NJ37n1rMantSsSeMBYPgw545VqZpd0JLfDfpIb8qc+fUQmETp/zLPYKr7YC41Wk
uP0TZaO73yr1bsGMi4wi8KH0/t8MizRuhblkj/YmBkqbO+uI6EMr5HLfj+DeZqBp574VDuR2ly3I
pd/qV08zzmd28VChmQhdyBlsLftUkB8Z+qc4EfhlJKO+wENkQY0irMF4Z3VPyE21t0XLCWoydA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25A07D8FFCCB6C0"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
content-md5: zgJpMztAl2dnHnZWZIPZyQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 79fc13a3-7892-451c-bb9c-e005de7f1330
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-4c5d8ddd-5aa4-7c83-af09-be0147f57373/test-blob-4876ce34-ee9d-d375-c7f9-35d821ce391d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 5cd0bf14-faa8-6ebc-11cc-ace2d9c5f986
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25A07D8FFCCB6C0"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-lease-id: 5cd0bf14-faa8-6ebc-11cc-ace2d9c5f986
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e7a0fe1d-2d57-490a-8329-547aa1057f88
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-4c5d8ddd-5aa4-7c83-af09-be0147f57373/test-blob-4876ce34-ee9d-d375-c7f9-35d821ce391d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Modified-Since: Wed, 11 Nov 2026 00:47:02 GMT
x-ms-lease-action: release
x-ms-lease-id: 5cd0bf14-faa8-6ebc-11cc-ace2d9c5f986
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25A07D8FFCCB6C0"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dcae1cf5-2df1-4aca-bbba-af2eb138c070
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 9: DELETE /devstoreaccount1/test-container-4c5d8ddd-5aa4-7c83-af09-be0147f57373?restype=container

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
x-ms-request-id: 369dd4ea-a1bd-4e03-a851-145ba00c99bf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-3a81498c-28db-c9aa-3159-825ab29a1a39?restype=container

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
etag: "0x1DC35F3A3BDD570"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 08cbf66e-d38c-49ee-bcd1-3e35a1c36a14
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-3a81498c-28db-c9aa-3159-825ab29a1a39/test-blob-a42e4b8c-3071-b17a-0409-56a8a2e673f0

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
vb8+wOn3mesVBytOd2K8drJzVo6WVBVbz8820dIBJkvlkpzzW1pPlLJCjmkEKzmhTeD2L4/lWmip
4/AZwccZE+DgaeXFyRpXJMLcU8arVqSWlIPyC/e7ADgzSXhpNdPqKXqJJMFU24TFngrNCQai/oxM
gy1DJwjpJGmtkn+i7e7u8SpLIjLiQbj/LGzs7vYxkEvrHbKlpgFyn/9YpkkEI7Ec3hfcV9taaUF0
RPqb/TZyfAE0t888SEoo2IMyiptv+wm7zw/eVDlvkLRwMWIG1qLI5SpIz2zh4JXNs35YKN+mBUjx
4C0nkyfIxSYbyxfoIgLgaqRwJiyd2e95EaC6FmjUySsaFPV1oVEDgAlFxRR+5ZF8d707Nt4cVAY9
rYKGDa6+RgHrzQ0Ma8hSbaYiVxTa+ywPPZ+qmZNN/cDvN/TPfHJbh38SkheEcAz06cg3+vzyY7FV
d9APE61uns9MHTTUgvA0xtCUx2kVis2StbDLFQPD/NNCeQWiS3PSpPRHN1PYH2bXAzMsXZtHQOwD
fF39o4nMiSBgkgnrknpdwiN1zVN5upVJ8xHQlp44+jgYns8V1QFqe64yd41d7HG4z5t30nKZicLI
s693+/KBJ5fQ0vOrR+0hClKkR0II6wegF8cDwCjFfxUMTSFR83+7sFD1jRl9DIetVsgg9EJ/v8eo
1uMqfmdvClPdnvrM0BbT6JbyEl7uIgs/VmpfpYrTjI1ZqRybkTLohoLFoG2N4YWxTQurja1oubTY
6yf8D2TICRJscib6N1djCYvbKIKdsnXkrlh/J//g8PBow6UL63ce/ZZbIW5ftxazSIMhjZExOzmy
GGAMSeISjIE2kXOxWB0UvSvsQZAGhPdCy997vmNeN4dsWNMWEbSzSJTtKSWiAvBlDc9mRPqoq5Np
yn0Cl80d11rsRP9K/ax3OPj8GVrRoMnvFbGU+PKNxK1ArUc2sbHHz1LKtb3xGw8i7gsCrJI4lyq0
E4EciN5oX4BRCVBkQIdGNEkIBuoM/fmicQrmihgaBxUdgZ0vq0d0YlY9nxK+vq2Eu3dIMJE/qBWI
eRbUgdRnNgI7R7/pFokClKSTz17n47NcYs+h0deE3dmHpzEwn+CB1WgQgnbumqTtRpvsrNm3oJVj
eB8FxWQqt2rlYW5Y0fTDEvn112E9bccqs4s7lzEA0AebzSfBfA8D5csLCTk1lHSnKZnfwsk0JQtY
2hHZ7iA55ZFnvQTMAZXp8fGWMmOO9B8WlG2XIA49ZqccaKH9Kveq0SOnztdv2icE9tDXnvOnyuby
wlqyosWDKVZcsJn068f662BA5iZHprlFkyk9Zci0dZ67Cmec9y9eJKSAEiqODwoI3bKTZuS/qw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24CB6855ABB22A0"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
content-md5: Jv5iaVRoSwgz89yFT7HJUw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 93a48c4d-9822-4d23-8cfd-150851428c01
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-3a81498c-28db-c9aa-3159-825ab29a1a39/test-blob-a42e4b8c-3071-b17a-0409-56a8a2e673f0?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 0e6da11c-459b-8ec4-a83a-fb38e0605df3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24CB6855ABB22A0"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-lease-id: 0e6da11c-459b-8ec4-a83a-fb38e0605df3
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e7038eb8-2cbe-4e8d-a37a-442ac950308d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-3a81498c-28db-c9aa-3159-825ab29a1a39/test-blob-a42e4b8c-3071-b17a-0409-56a8a2e673f0?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Unmodified-Since: Fri, 13 Nov 2026 00:47:02 GMT
x-ms-lease-action: release
x-ms-lease-id: 0e6da11c-459b-8ec4-a83a-fb38e0605df3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24CB6855ABB22A0"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fcb540c4-be43-49c0-904b-b89a4eee827e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 14: DELETE /devstoreaccount1/test-container-3a81498c-28db-c9aa-3159-825ab29a1a39?restype=container

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
x-ms-request-id: 2c5a7b69-f893-4b21-8462-e4c7595d89de
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-81c2e130-93c7-b68e-831f-358815210eb9?restype=container

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
etag: "0x2485BD6D43CA300"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fc045ac8-5a04-4183-9645-48f5e67d17fc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-81c2e130-93c7-b68e-831f-358815210eb9/test-blob-fb4b5ffb-208a-dec2-e0f1-6af093d729a7

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
f75ihCI+44gStot8Dzt5hytBPYAVYmkPHuOh1SmdI6v1jQhWvomXvXvC6NOVRs6keOPEUZqokh1V
U2U/nA5fdZPfhoIzIsihqX8EUnmWetgU/VxF2dERTPvqAWsjWCFtY3NAtcBMcFUbIqcaoz+kvtiN
Kp6xGZvBzTqGSCFcfVFel+4GVcQYx4wGKrYq96i8RkKSli2Cu0rXf+iFxic0vqRWuwxQnmkUdWMS
qu7lltaRygLfyecj3NukLtbckgBk0mwR0zyca6jZfiDKbxBc8ugR9PwlVfS9Mt4wrG+SOONirdiB
1MOa9V5ZBkvGWWzLRzzuyp4EPn14U6Fda744RkY9aME42h0ld/6dy0+o9tlxZWQzpG1FXW5bCYAh
PIqgIb8FifGrk20eyFKfZ3Itz13I6wZaBaHY+ApS3NCdAzt0/aqPo23nxtH3FdsbpfX8LToiWVGD
RRsdLJDmWLadgMUXKmrInizv4CQ0Y+/GvVIUVq+Veqrp8LePcXbcAW4bWZQWA3qLNI8OM3ksT+Ir
V2890gEGBwUbLTmzOCy2E9+2GAlbr7rYiSIgh0cwvaHUYxoGni5tFFKO+9VA1/tiWB+adjbZ0Ke1
ZUje5n++6nCY3tURr3SwSQS2zLTkl7EnvS8olkdr+pJyUTnlji7S0BFlqPglUKiq6S0xIgPz0M6X
tihQllMpLORCn107yrrW4/yjf+64AmyGfawaOdiPfoBqTtgFgjq9O3wU47FLbh9yWz8HUFHf37S7
yRinD/IMsyDc0Hzh0GHC5UNyox+7Ow6Np96Zhy4vi28jSbghFSyJCC+Qbp2jkIrdRWoNbDuVAI4K
GmgUcyvyrUUNvoeooNAX6JrvKs1w6RZTu0LDIh8zjkgqF/vEdZUDnsFYltIDNaSa9oOgpdbBmTBR
wLfpL4sl2S8+fYnUUnIF64wLF1NDUIWeKCubk+hyaX3KcrXdGm41Mr2jxLgaxaMQm7pKtYLcDm8y
SgZfikVHzBQMCeC9J9Ad1uSWoIzNg2OIivguJ7P77mRFq9Bo1qh3W/ejDbvDU3PpLd+dRW3iZcaj
1wBMGKVgERt8d3sAtP88H0SVKXanxTaERPrUXaj2Y0YJxf+oKkJSQ/yfRtv36XjfYCYpTTtQ+xHJ
yNSqi7NzhhQ19u8AlPQBQ+Z5B35ajFuB9f2BzBULuMnt3mJup7dJLMDHwvKI3swyJwlU1/OTbjt4
KZa28bn+Kj0mE7WSk5wuMNq9k8pp+BYwT6ULtuHVWXAm9n4gkzsHyJe0YsoWoJRtJqcY1dtwDzCA
haIU83RcULpFa50eDpyftsoytJZLGq4Qno86vISVtuZOoA6Z89UjWBIQ0DX3TxgKeR8QPVqaNA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x244C9E5E7BF04A0"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
content-md5: YDD+3XGoKUaWushmZAHChg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7545dcd6-ea40-4891-a709-a782c403e1e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-81c2e130-93c7-b68e-831f-358815210eb9/test-blob-fb4b5ffb-208a-dec2-e0f1-6af093d729a7

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
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x244C9E5E7BF04A0"
content-md5: YDD+3XGoKUaWushmZAHChg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e291436a-ba9f-45da-8254-cf303d3a3b78
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:02 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-81c2e130-93c7-b68e-831f-358815210eb9/test-blob-fb4b5ffb-208a-dec2-e0f1-6af093d729a7?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 5403f36a-21e4-3693-b0b5-b6cf6d8e06c3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x244C9E5E7BF04A0"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-lease-id: 5403f36a-21e4-3693-b0b5-b6cf6d8e06c3
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c4d8a29b-5728-43b8-967f-b26af8896c4d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-81c2e130-93c7-b68e-831f-358815210eb9/test-blob-fb4b5ffb-208a-dec2-e0f1-6af093d729a7?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-Match: "0x244C9E5E7BF04A0"
x-ms-lease-action: release
x-ms-lease-id: 5403f36a-21e4-3693-b0b5-b6cf6d8e06c3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x244C9E5E7BF04A0"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 51e2daf9-0c1d-4da7-83ee-b6a57a1a104e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-81c2e130-93c7-b68e-831f-358815210eb9?restype=container

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
x-ms-request-id: 99ae7cdd-0d40-48b6-bd81-7a9e344f05c7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-835c0ff5-4a3a-1879-4e77-30436485788c?restype=container

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
etag: "0x24D92D89490B4C0"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9ef30814-0a6b-45b3-8c60-9aa01a680f83
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-835c0ff5-4a3a-1879-4e77-30436485788c/test-blob-a5a36bb4-80ef-373e-7eda-207f417faa7b

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
clsaLv4W+iB56wZs8VDRKzwqGwLqYNR10SUEXyr518/NtNAJakqNnXGDLAR60kUuCfRDFmOokRGH
pV3YEZr2fxM3njx/yMHynH6QZzTQ+v7f1lY1tsBrJSK+gcTttIzXjazwQjMJr0EzUHrlFyrdt6pe
+TtDwMhSy3kZwEb8BefxudmI37jL1iYVAmZGhg344coaj7tQk8zjnXe57+76NkuS815QVNfykiMU
Lr5iDEVsId984nYsoCUNpEFAEuc3Gssbs5Kup4zyJ/yYPGUNgZExTc0PflTUZVI5QrCWsYA73RTy
R1izvXlSibp5lGTA/yOwD8UZJ5t3Rk0/dWXcXHV8XF9QGzk4fo9UvfWZW9HteEOM5qK6IbV4ewEL
c0cUdi1F/TcFb+Tpd5A1xWqm3et8Uf0hT3bTwTqp2KA4LQpIP0fHVF6Z6Alfo24RhVxK0p0WjiFK
8ia3cjv9W5dDsUqF7YYj3omM4mnzwqwHwTzeXwUDIp7o/U0gD+IinIxxG/Eji5jVJ/MTiay4Vi96
r7D/HvyRQI+snO85As6nakbdgae65DWjCDcR75nyMKcdpWAxI32P39pid+6pnCUlbB9l29SIwMt7
WxXEgFH1uWxHG1xudUbITaHNV21G+WwS7IN5jFXSleWUtsdny1+JbL2CYYDItvbYnI4yu2heNWKp
sZPNfC0XdIZ22b9+YYFCQ+qvw5frSjaMoe/GoNp8NoBlvRnLu/CQau35Udw3WTsM8Hd+rnHKvWdd
Qdo9UNSs+aI+GaNodof6H1iq8fhZVEezuq9i/ocPm/+xbXoVUhoYTVc5+ECYpHnvhI8YH8xvBOyT
iZYkSvsbL36jtggN5Mw+kqSgH1wGGxY2cnr49nszQmmNgsiD8wNcHsjC9O1w4p/C2Y0nzuSQjG6A
7teAIjgCb3OfgGEEup6hQwGTRCYoxZDaNRzuDHOF/fVaAwQr3PuPwIV50WE+vR/uhovj/EhHVylH
pewcE2MAGYNsqreadWcFA4OhrvMunHf9AIbooQCtEqvb5DYPc6whebfe0RNnVBAj3vnEpag1GAh1
HhPdF3eDv5cLvpEw9pDXfzU7T8tklat1xcMG6G0CpcsumVSZRGFAWxJ7W5V/8+hp7SVz+sg9EIhn
Z1KzfNYqCRnFAlw7PTvT+/S46DoW9tHbnftHj6sD8InLMt0PjN88UVJ8ufGLLa/qn/7UhShOUHCA
2N7b43ltwhHSbwtdw28VfJfnmj3gT29LXO+sLmtgfOFtj7MAYG3YDvffub6kjduPvwmQZ7Yzn4hu
j4aKwZOlcfIq8DS7FBspDotFAJaxp88THW9izxUqOe8rkdHnTU1kOkfLepyn06rtZ1gr7Z/xvQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21733324F07F900"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
content-md5: GpNp0b1lSqCFY62u8zBsAg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b40bfe6c-b40e-43d7-bf1d-fd8922574771
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-835c0ff5-4a3a-1879-4e77-30436485788c/test-blob-a5a36bb4-80ef-373e-7eda-207f417faa7b?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: a377b7e8-4323-dda2-ffb6-458f824a42c0
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21733324F07F900"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-lease-id: a377b7e8-4323-dda2-ffb6-458f824a42c0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e54ed5e6-fc24-4de2-87e9-af9fc8f19e1c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-835c0ff5-4a3a-1879-4e77-30436485788c/test-blob-a5a36bb4-80ef-373e-7eda-207f417faa7b?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
If-None-Match: "garbage"
x-ms-lease-action: release
x-ms-lease-id: a377b7e8-4323-dda2-ffb6-458f824a42c0
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21733324F07F900"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9ca71722-6572-4fe2-aa9b-ebec5a068814
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-835c0ff5-4a3a-1879-4e77-30436485788c?restype=container

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
x-ms-request-id: 81eae629-e62d-4a54-a17d-d61df97dd777
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

