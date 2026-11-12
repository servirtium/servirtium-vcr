## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8bf84d5c-c143-a11a-6ad4-23f4da095000?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).StartCopyFromUriAsync_IfTags
now: 2026-11-12T00:48:30.1384090+00:00

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
etag: "0x1CF3B20F79AFE50"
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c1ed5f90-ffee-4503-a706-f6d19e8ac1e8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8bf84d5c-c143-a11a-6ad4-23f4da095000/test-blob-ca442991-c0de-0fd2-8d55-8072bffd1fcf

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
7rRm3zjgtdQ/UrZo1zKtjIzMnz/LwgGceuj97kGn4my1VAYlo3DHsHRvi4wJajhbp/Pm8l7fAyuz
ymRP4saTl29Js4MriOkbBO7LWzZ1kg+wokdNwO8O1VDbcdgMeM2t2/Qcv7e0Lx4Ky+1vE6f1PjdU
nz9/RtaAO90yTxYQD4whHn9CWdNY+3IpQ/UBnsKo5jOht9mNLpUdm4PaguAH+bxhTvUosuRj/KPN
VQPhfpwaiWnjb1ezk+/qJb1PfnmSIUk4oFDMgDNOPbo1wNiSOxznv/h2JIpkrboGPY0nFH0pOjS6
qN5LTgk2lDGdfdMXWOmgaL+BHP2/1POWxkOmJyk8DIak2JM+m3DvQI9Yxy/m7uWjh6u+px02+tPr
tYjFj20IYHBNcoBVYcxOktxuZg3Dr9ddAqB9fmVobd2/U+boKbAhUGa+mHxkTiXfcBRByJTGJwWw
Z4zNi+IL5QSjlg7lZWkrTBamBBZb+bR6ng1QJqVI+SvhOMEjVMSEs7N3wbgW+QurFXt9ICPuVG7Y
UuzUu75fWpziBC2oB/dRIVFj5Df8ZKQCpREpytgH8+NSSwHXsPj1GGYbM/XdAg2DLP7SinA33O5I
0RWtNY/E2hBJVbz2eXBYbczQ4TCvJKIDpZ7aNWhyG28Tj97iSOLWV1nklK1RjbKNeR2kZvq+maxy
qY/x6qWo1zpN4+qRdiXp+YrXypD1shfrTLtLzrV0VPYycJ5S5WyzPLxyA6rI/AP3umxw584bfPd3
BZ7pXAmF2Y7zXwaGlhQdI47Ug69tI1C4UxNIA20oFvOn2t/Oyd+z7Soc1Jz9cCRYU8NAR/lICuJN
MQj2PNYhy0kT3rw1TlquIJWFUE6zu+Lv8K+p5875X9D8gJjXvbBU+wlS6ZJoIgVpkSdkw7mUmnUl
B0wmeON7GX/rOM3B1mLlMFVFYdFQh82qP1amlZwWZ+YisbZkLYIl19ATfOo4qLrEf5JjTzmk1H9/
eziN1ITi1dDmnyWsgAPSH4kBPQrjcpeb4hUKshitft025bJKlwJLMKcZUQiVF/6OkC+vo5Z1nAmh
8vJu1yK4OCFHdptRiIiHtg1jySCOBcoXeyHo/tpGwUioqKQP3FmEYRnnTaFiPQinJ+yJEdLoE+0o
VlsA0DlGAbRSqODjd9mz3mgHprcotT4ZQNftvK92v5W354X9hJDfoUvtD5UoxK8T1TJq4W01AKEd
5o9iWEUE3OhLK5BTtlrXKAVrOqap8Xwn2uZ8C94ngefk350BfEkG6DKs3Zkfvx/YkrhoysX7dPUT
O31fiNAKI6mob9a81au8ZVJz/BTiBxvHpHgmv7ci6Guo7kHLpmBiornvdk9IHL0Mq2Vyh3fgMA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x272A041C6EC52C0"
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
content-md5: 6JuPf9B8VZe8N/OfUmYqaw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bc266c1c-ffe3-42eb-826e-b62241519b53
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8bf84d5c-c143-a11a-6ad4-23f4da095000/test-blob-e4986233-e357-f263-8687-6b14e76af0be

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
8hFaWvOQy36HuxkTUa9g9Me9DWgOewq+VvzvyN0H1aK7p392HIY9o5cZXJvKT6DXJndMKV2Ir3YH
nAT2oAOhgOZ2WKov6tdBgGrR9B9u8wdbGKFlu6tFMvcIb4CBRgKUeNy1U/b2pzygCqnyt7pXmKj9
mohhO8Q6MSayJnpWvzpoPXxDuJ8QZXBlxbACUns9sdbXhKt5MjwXeyHQRIDBSUtuino9E98J7DUX
+3UUN9+rdHWjfzqP7gpAKz19QCDvo3xlk8cA/572zph1YTbGA0NBJM8LHsoQ35tv/eeii6wVJ1j5
r6QYqnTWrLCiGY3TeSj6OxtR5IWyVLMrkAK2VELsYDnezVSeKXpaNHEZbcYOnIS+qE+QxEPSR1rw
7BlyIFhttrlT9azUWxKh9q8TmOftHPR+96vzW5z2C4X5rjxg6BQZq7cMu6bX6k08782Uv65zA9Al
9CiselodXeom2qzVQA6a+u0v4GFOpg1etmzOYUzWhqpsO/PsbTBd7168sQ+gZq+/+cTBQyJv1k4b
TcPuTvueT1QCaQQaro280vACkvX9vU+9DmiHFUKH/GSl0B9tbqFiHWG7nv2qpUo3BHEybERZHZBz
MD+SFjoRemygdN1uT2NPn3SUQR9SE2kdTxHRVZAgTLOP+T1h0AYmqiSQCTBsybQN4szPxdtwIR3W
dccoQCTcfygq31Yl7c9tbZf7wgk4sIVcw3PEUIfXHtcgi1s//Wr/s4oIQupe6PT8YldDdF4UncRB
zHyxGC6gUsB+BWJ0LW8t+w5+L26b/dp+x+4vlKl5C+2W/jHtTptbZ/Aq4OKRhzToFXhQlW5Vpc6i
MlBAcb4WBfp13i89QK1yI8h+cR347EC5Rn4xKXV/QVhiSxxLGvYxE9roHKkFqtXL3XKl1zSwqUUQ
hypA5dyE9pzX2/WRJwjSTF1CD9CWtJuoZUsC2WkjsaHWO5PL8S7+YyUMLc/fOrZq04vXbZp1edKP
l3+QgR0zsylUuut0B1svRKuqiobMySuVmAXeTEQHYMHAPFmubuEI2Xqmi3/K9swwpynuy+9Mws5U
++kXVWflTVoqs8sBgdXJobEMJj2syqE4rqQaGJXSdHmLWXL38IMSwD0loEIBLiZTJCk+P5yQqDFH
3qfCyzTEVz9RdSdj0rEt+WX/hylfN39+xvRskzTc+7FBrxHcUPUJYEgDr7j/8FJ3EUU3kCEH6Kcn
QwQ/V8QKdHp1IiKfUKlv9ibhXIfGf9Wi9YLvpWqQOsdqtQ3wyQmE+To+ic4w2MCcx5r6JYwfYcMv
nWJBGs4Q5OhaNZubfiwcXGNMiPUHchzBUt7QlRQ7SlRJwSymQ95sLqTm1aMlAEht3sko0tjOJw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x206FCEE60691800"
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
content-md5: IFX1JbKHFcF5diKZoWEBOw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3b606320-b2fd-44fe-a9f9-d9bc490b3869
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-8bf84d5c-c143-a11a-6ad4-23f4da095000/test-blob-e4986233-e357-f263-8687-6b14e76af0be?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d9ab8d2b-8f0b-4466-b0a0-fff1db182afa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-8bf84d5c-c143-a11a-6ad4-23f4da095000/test-blob-e4986233-e357-f263-8687-6b14e76af0be

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-8bf84d5c-c143-a11a-6ad4-23f4da095000/test-blob-ca442991-c0de-0fd2-8d55-8072bffd1fcf
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21466BD17BCD180"
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e3e14423-c85c-425b-b91c-5aebc95aba63
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-copy-id: c39cbf91-74b2-41cb-b088-bf974c8a7734
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: HEAD /devstoreaccount1/test-container-8bf84d5c-c143-a11a-6ad4-23f4da095000/test-blob-e4986233-e357-f263-8687-6b14e76af0be

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
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-copy-id: c39cbf91-74b2-41cb-b088-bf974c8a7734
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-8bf84d5c-c143-a11a-6ad4-23f4da095000/test-blob-ca442991-c0de-0fd2-8d55-8072bffd1fcf
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x21466BD17BCD180"
content-md5: 6JuPf9B8VZe8N/OfUmYqaw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3156f4c6-521e-46c9-af09-c9fbb139f203
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 6: DELETE /devstoreaccount1/test-container-8bf84d5c-c143-a11a-6ad4-23f4da095000?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
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
x-ms-request-id: a0942cde-7a2d-4925-89fd-2d10ec2efb5f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

