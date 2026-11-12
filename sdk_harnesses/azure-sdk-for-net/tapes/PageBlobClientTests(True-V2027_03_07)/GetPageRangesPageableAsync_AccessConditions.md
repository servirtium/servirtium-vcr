## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-657c0272-7ae2-c459-2aa7-5b4db0c2e789?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesPageableAsync_AccessConditions
now: 2026-11-12T00:51:55.1672050+00:00

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
etag: "0x1CDFCE519D781B0"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: faf7b911-a237-4478-abe4-8262777f4117
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-657c0272-7ae2-c459-2aa7-5b4db0c2e789/test-blob-1c7dd0a7-d520-2c19-3a98-97bede6d058f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27773BA5EB38720"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 24009c9d-75b1-4bc3-a132-f34d814d9e0e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-657c0272-7ae2-c459-2aa7-5b4db0c2e789/test-blob-1c7dd0a7-d520-2c19-3a98-97bede6d058f?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
OxqzU9rzdEgaXZrc3T7nnolAicgbv8id6VAqSuOa5byiyxGVDpOvs1s0AcM6PU/8sPk1neM8dHxS
FWqKySllgHfdOREsUo/2kdVs5r0FY6wALZnqZUfYZlaUQvgpJeoyz4FLXAM9z15pPwwOz42+TbK+
iZuPexsvBNO6lw+WzGzqOhc8uQeow107gCU7ypbJ1vVGa5tOolNmG1cwgjhO0nKgI5R2gpOqFcY+
VPr19Do88cEaT2HQnJjD1p2weEAl7a6zm6YCUlNhm1bVEE5ZcCcc85B2M4IQz4f8sqz1+pyFGGZM
QViTOp5uubQL+otKamV2k4Wvr7krossfBqCma6G6UPfnDC/OiLnyB3rOBdX8sUhHf2cW1WmtIJ6N
dDT+x00SUaqTYl02qArMvac/XZ32IlRYX+w5o3qOOuyQQROE8z8su7MqaE7qEdZcShfBbsMBllHg
pmhh2a0vBShxpmf2R8poEqHpy7oFbU0V3VlizMsojqrBpEzXy+IG+2ImeGtvZQJNWVsiF8qX2zga
TPtUzDhcSRe8NaJ9kUe/49BY3vXipndWFXNwBnbgKskUvH7msS4pyS9TsjBg0MgUYjT5PvxDOKWE
/rfF7EKg2wrZadTI2DGiLhXFjvNG9kSrW6NC5uvN0ITZYbN2ZNzss9cmhmfzS4oCVxDmfamyPQdz
GZCfXvQeDJhQ73Z+K8k52NscIG/dtw8ZP4/b5lLbJiOrA0tLTVTiB3rOo1wThCxGraXNlh2YlWGA
hh5lQiVFdchS0id+7YuHORj0DxSzBbtjlDitDpAGE27pysY1fMVUiC2UwLIEyMAZRVwEo4ZNzYBj
Aq3smGc3TL65lSLFUb1Tn4bmHkQIXsx4lMg0AXDonP1F0noXaPDGXHTzSjOdU/SfsQP/Zq48WqPh
dAOeA0pN0fklf39DOzeWH8LQFBOY2kDTlU9t6DVOCXfWNfTsKFkppnk6eNR1W3XLaUbsa0WQSJnD
y2764OnD1nUHbQZDqvdopm6aXmJsXjnaon/vYZ0xRexaKVzrL8aQdqFebe5vh79Og8XX9uo3V2w0
ID1p1HXX1icZ6IGbfXeoCefADfFLahrAoN3YWk8CI9Hvtg6IJqIshpbGVZ49swVOLuwCdkl76bUj
qTOX/3vXFsWvq8doIOJFk4ZahBR7guzXiitjAK2HdM1ZZX1ulYca7j/Zjgg+5g4JveLCIWWgpydH
v3VQdBUXJzf6Drpl1v7/P5XVofPkmaMdWUPKxVJouL1VJ9URynkpwmfRRNdTo+fkw+HPywYzYyXR
MhvSTWLkklX9EK4o7XQbq9+ME1XMybVc5gFwmO23IcSvQJdeV3QE7LKBVpM4u9VttB8mp0/QBQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27B67976FA7D3C0"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-content-crc64: d9pG3Mzw2Q8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f4a3040f-c4e3-4732-bfc1-2a30c171bdc8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-657c0272-7ae2-c459-2aa7-5b4db0c2e789/test-blob-1c7dd0a7-d520-2c19-3a98-97bede6d058f?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
OxqzU9rzdEgaXZrc3T7nnolAicgbv8id6VAqSuOa5byiyxGVDpOvs1s0AcM6PU/8sPk1neM8dHxS
FWqKySllgHfdOREsUo/2kdVs5r0FY6wALZnqZUfYZlaUQvgpJeoyz4FLXAM9z15pPwwOz42+TbK+
iZuPexsvBNO6lw+WzGzqOhc8uQeow107gCU7ypbJ1vVGa5tOolNmG1cwgjhO0nKgI5R2gpOqFcY+
VPr19Do88cEaT2HQnJjD1p2weEAl7a6zm6YCUlNhm1bVEE5ZcCcc85B2M4IQz4f8sqz1+pyFGGZM
QViTOp5uubQL+otKamV2k4Wvr7krossfBqCma6G6UPfnDC/OiLnyB3rOBdX8sUhHf2cW1WmtIJ6N
dDT+x00SUaqTYl02qArMvac/XZ32IlRYX+w5o3qOOuyQQROE8z8su7MqaE7qEdZcShfBbsMBllHg
pmhh2a0vBShxpmf2R8poEqHpy7oFbU0V3VlizMsojqrBpEzXy+IG+2ImeGtvZQJNWVsiF8qX2zga
TPtUzDhcSRe8NaJ9kUe/49BY3vXipndWFXNwBnbgKskUvH7msS4pyS9TsjBg0MgUYjT5PvxDOKWE
/rfF7EKg2wrZadTI2DGiLhXFjvNG9kSrW6NC5uvN0ITZYbN2ZNzss9cmhmfzS4oCVxDmfamyPQdz
GZCfXvQeDJhQ73Z+K8k52NscIG/dtw8ZP4/b5lLbJiOrA0tLTVTiB3rOo1wThCxGraXNlh2YlWGA
hh5lQiVFdchS0id+7YuHORj0DxSzBbtjlDitDpAGE27pysY1fMVUiC2UwLIEyMAZRVwEo4ZNzYBj
Aq3smGc3TL65lSLFUb1Tn4bmHkQIXsx4lMg0AXDonP1F0noXaPDGXHTzSjOdU/SfsQP/Zq48WqPh
dAOeA0pN0fklf39DOzeWH8LQFBOY2kDTlU9t6DVOCXfWNfTsKFkppnk6eNR1W3XLaUbsa0WQSJnD
y2764OnD1nUHbQZDqvdopm6aXmJsXjnaon/vYZ0xRexaKVzrL8aQdqFebe5vh79Og8XX9uo3V2w0
ID1p1HXX1icZ6IGbfXeoCefADfFLahrAoN3YWk8CI9Hvtg6IJqIshpbGVZ49swVOLuwCdkl76bUj
qTOX/3vXFsWvq8doIOJFk4ZahBR7guzXiitjAK2HdM1ZZX1ulYca7j/Zjgg+5g4JveLCIWWgpydH
v3VQdBUXJzf6Drpl1v7/P5XVofPkmaMdWUPKxVJouL1VJ9URynkpwmfRRNdTo+fkw+HPywYzYyXR
MhvSTWLkklX9EK4o7XQbq9+ME1XMybVc5gFwmO23IcSvQJdeV3QE7LKBVpM4u9VttB8mp0/QBQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2040950117B2740"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-content-crc64: d9pG3Mzw2Q8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3d6a8e2a-2865-42a8-98e3-35eaaf3f2f4e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-657c0272-7ae2-c459-2aa7-5b4db0c2e789/test-blob-1c7dd0a7-d520-2c19-3a98-97bede6d058f?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
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
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
etag: "0x2040950117B2740"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eccebed1-63ae-4d22-b495-ac689eacbbbf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-657c0272-7ae2-c459-2aa7-5b4db0c2e789?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fe078a54-dbd0-4ea1-a14e-50895bd02662
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-67766569-7460-68f9-45ee-ea78addcbc54?restype=container

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
etag: "0x276C51996B38840"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e030d24b-de3f-4b38-88c4-d10c05440ce2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-67766569-7460-68f9-45ee-ea78addcbc54/test-blob-a226876b-724a-2322-2a2c-03e4ce917a74

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E145CF4CD7B9E0"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 040c3b52-4d6b-4588-af0c-9a68e976fe7b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-67766569-7460-68f9-45ee-ea78addcbc54/test-blob-a226876b-724a-2322-2a2c-03e4ce917a74?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
3zsu+OENpHi4GRCkTkInkPfLux8pLrr2Q1I8NHAVmrR0dZlyrsRzXeOu6TBifdXoBHPtAtVaS7CA
OLWO0W8Ho39bMNipteIzV108ekSKlMV8Uy/9KJfeGSno8nYO5IxzpkWwBk39P0+Quap4HdFs9qTw
En0/CnvofReuwMJrJHPQydP+2Y14fxTgbG7sZvtYfPvSHtIPM5zKyIk1Tn+MJZU3qFT9bR0WeJJo
X50N+xcbVkPHmQagwZU3NBAEQjGVVEfYtL6nWw/eu6VAp9T+vMxyGvg7xYuOl+a+xjgMEjVh0gpW
NEdYdPo06N5gYBnBOHhEkSc5WY+8SR3X6JXW0alw39TJqIeFGaX9B9ytLjbN/Y3AyIAOJ3h7meop
gYxlXRY18IFF+I/wvniBO1KyDhvmCusHFQkoYbdbTQ6cW5cZmKnFeD21hwX+0AoIjOsmyYvPQ3eh
XUgNDI7J6qqAU2PgaKOo7JbeMILmCUX/H9XLNYSDzRgfeDphuGuu7J1afXymJyNIfdz08RL1u1MD
Duy4/rQl/YZKwO9oRzQqL0Tli4zIWPexg7eojtwGKr3mXql+9e7oNID1XGc03zanycHODy/HOrb0
B3v9fW6qRJUygeiKrDlV/FYL0/uQfaOAAMUaNxuOHyTzie5z6rcSSxjRAV1OHR2IeBPYu2e6ZInX
fXypjwx6pGLEliJK4hGf+Yfjv3tFMuOnkr8HtWO9OSVlm206absLVl37iYb7PZUBOcLf1qQNkkqZ
Af1Mcu7+B1385UekZJDM2GgdSahcrFQqBnuh3mKBVwkjoGe+vuRu/IIp/lhOXdQyEv4770ihPVWo
ImtzXSn6e40+gcMoDRmEr00mM6783Kmnb8tkRWjAgWMSFpx4+59ZLoLKENsQCQXltkD7ewmnq0bC
y+5dljYlff9gFvd9DLOtzAUrMczNlmXFf44nxQVZampVti+x+5dMpZLbsPINaKqNTa4Ee3l69DWI
mBen/bf6BquMJ1aD/NBt34w58eVyuBbkmnhWVO/x28H6KGN/pafb4alHgEBTCVDdlpzsQQJPFeAA
wmM+o7G8m0uUidNt7jnlXRA8KzfWkZAoeL1SBJq/qhODfuJDnT73iuX1voB8cKhiB+TyE+mpKjHS
FirzaZex1d7A6W9Wob/RRKFR4NIQqwgV7/y2zZYp2lSxcYYTAyBNQ+mhu4Y5C2UkIM9IV0lfwWsi
3nma+gdIlw8bpTA4vkCAA5zob++B3OSWkq3H4YMKUa8b8SWms0niWSR3HWY162KPx1Osd1J7oAKV
A2hagbaMEVOAHcwa2lBTBhbLCr5+YaZLOBkvXdpcoFAiELDgh9ht6gwStc6VdO0DWXE8sJVDFw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x247B8A8E9120820"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-content-crc64: jd7d30Lhe2o=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7308ae05-c886-46d4-ad33-6eb9a019598b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-67766569-7460-68f9-45ee-ea78addcbc54/test-blob-a226876b-724a-2322-2a2c-03e4ce917a74?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
3zsu+OENpHi4GRCkTkInkPfLux8pLrr2Q1I8NHAVmrR0dZlyrsRzXeOu6TBifdXoBHPtAtVaS7CA
OLWO0W8Ho39bMNipteIzV108ekSKlMV8Uy/9KJfeGSno8nYO5IxzpkWwBk39P0+Quap4HdFs9qTw
En0/CnvofReuwMJrJHPQydP+2Y14fxTgbG7sZvtYfPvSHtIPM5zKyIk1Tn+MJZU3qFT9bR0WeJJo
X50N+xcbVkPHmQagwZU3NBAEQjGVVEfYtL6nWw/eu6VAp9T+vMxyGvg7xYuOl+a+xjgMEjVh0gpW
NEdYdPo06N5gYBnBOHhEkSc5WY+8SR3X6JXW0alw39TJqIeFGaX9B9ytLjbN/Y3AyIAOJ3h7meop
gYxlXRY18IFF+I/wvniBO1KyDhvmCusHFQkoYbdbTQ6cW5cZmKnFeD21hwX+0AoIjOsmyYvPQ3eh
XUgNDI7J6qqAU2PgaKOo7JbeMILmCUX/H9XLNYSDzRgfeDphuGuu7J1afXymJyNIfdz08RL1u1MD
Duy4/rQl/YZKwO9oRzQqL0Tli4zIWPexg7eojtwGKr3mXql+9e7oNID1XGc03zanycHODy/HOrb0
B3v9fW6qRJUygeiKrDlV/FYL0/uQfaOAAMUaNxuOHyTzie5z6rcSSxjRAV1OHR2IeBPYu2e6ZInX
fXypjwx6pGLEliJK4hGf+Yfjv3tFMuOnkr8HtWO9OSVlm206absLVl37iYb7PZUBOcLf1qQNkkqZ
Af1Mcu7+B1385UekZJDM2GgdSahcrFQqBnuh3mKBVwkjoGe+vuRu/IIp/lhOXdQyEv4770ihPVWo
ImtzXSn6e40+gcMoDRmEr00mM6783Kmnb8tkRWjAgWMSFpx4+59ZLoLKENsQCQXltkD7ewmnq0bC
y+5dljYlff9gFvd9DLOtzAUrMczNlmXFf44nxQVZampVti+x+5dMpZLbsPINaKqNTa4Ee3l69DWI
mBen/bf6BquMJ1aD/NBt34w58eVyuBbkmnhWVO/x28H6KGN/pafb4alHgEBTCVDdlpzsQQJPFeAA
wmM+o7G8m0uUidNt7jnlXRA8KzfWkZAoeL1SBJq/qhODfuJDnT73iuX1voB8cKhiB+TyE+mpKjHS
FirzaZex1d7A6W9Wob/RRKFR4NIQqwgV7/y2zZYp2lSxcYYTAyBNQ+mhu4Y5C2UkIM9IV0lfwWsi
3nma+gdIlw8bpTA4vkCAA5zob++B3OSWkq3H4YMKUa8b8SWms0niWSR3HWY162KPx1Osd1J7oAKV
A2hagbaMEVOAHcwa2lBTBhbLCr5+YaZLOBkvXdpcoFAiELDgh9ht6gwStc6VdO0DWXE8sJVDFw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x204F10FEA19F740"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-content-crc64: jd7d30Lhe2o=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f96d450e-595e-45d7-b47c-c38992c54c05
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-67766569-7460-68f9-45ee-ea78addcbc54/test-blob-a226876b-724a-2322-2a2c-03e4ce917a74?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_11
If-Modified-Since: Wed, 11 Nov 2026 00:51:55 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
etag: "0x204F10FEA19F740"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ddece367-2cf4-4a2d-9e60-d66459a2e71c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-67766569-7460-68f9-45ee-ea78addcbc54?restype=container

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
x-ms-request-id: 56a49cbd-a028-4b59-9370-fc4f983d1db8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-480fc1a2-5c9c-79b3-237c-7bf7c9a0737e?restype=container

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
etag: "0x2272B7956DA2820"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c0345ea3-e39c-48b9-b729-ac1409b344d4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-480fc1a2-5c9c-79b3-237c-7bf7c9a0737e/test-blob-b2205d3e-ac6b-b5d8-c32c-2c046920efbb

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x262EAEF0A945280"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af071f9e-3e87-4c7d-a4fd-28ac1ea5ed12
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: PUT /devstoreaccount1/test-container-480fc1a2-5c9c-79b3-237c-7bf7c9a0737e/test-blob-b2205d3e-ac6b-b5d8-c32c-2c046920efbb?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
3/kNHniP0Y1YmZFRGXwjY+Xy/lN1kav26VmEcDCvDwONwBjPklUGr4ySWdIah5xHCMgediKcRU1N
FzUeCmBcqImNxFhjVNGQ7E/H4zfY22K9PWhokZjh8HvLgnog6KQrNbFJjcJD5LT3jorS1WIWdTzT
YMz49Bfwq9PdmNFWcAOqm62Gj02felizcAMODhsZtQ0+TYjYM0GaWOHuZkzioR6GKDq1j+XuM+V0
RIMU4p24w+PEFyN70mdr7DZssBQM0c/lh+XhYyUnUBmiY+++hnVENqJoHYn7C1bSSaOugYPRZ3Kz
L1u311+9ncYJ2W54rGXAKHpxpLRF6nyPDhqBeM+V0Px8ClcajF5Cqn/C8THoWZw97VkJYMO+bUXf
J8hFPCX3cwhx/KIOppscL/k0gvhKp7V9RIp1jHA5vpwSO2WV/G5ay30pdl36Lke97DDKietMlIAT
yPeageaXOD4F/Go2hjKK2bd7ITFYghVCuJ8/bzSxxabkgTR2wEmWkT0f9TLdhmb+P68z0HNOu0bi
V8lHWMkJUzbDUQT+Exlu5JDzOY3jZTE5QC+EfvUzlsbtlGh/Tzh0FaH7GTVhACuWxOviWoK4/vGY
DReZhdVBj7s+EH+w7pVXfyPr50z82EAD7rkJUDtDNJV250Eh2pDLuYl5IvCs5dVWi9tezBelnDXX
lpYbOD+A+tvpOgdTNqWTHy3CgrVPVwjjssVf5Wd+0EsMSkT5sIFK+SgVw6vOAlU1y6zp4xl/hz+N
N4V6IBVzamm8Ruthmm+seImNOpNdFbBvKhm6le0xjcIFa3j70NgSoVhBEbtp1DE9PGuQ8kyrMCHV
Cvb7uNR8i7koXC72sKewepg6HAP0BlXofVmBoJp2WTtWJsbiF+mDxYYCQHcCRovD4HizcBMe4QSg
Ejp7+uofsgLzoIrhzWKvtlZ98sXd5TfNvr8iwugnOETBQgSuCMuc4o51D6YB4hMVBLm9oO8/wi0D
rjwq/fAZy2dFH4teAK6K4A82aNWQzNysDL0vaZdVgn/XqlmPceWdW0Q/u8KHtwMLMr/fCFlXc+Jf
ffAy6mHP75wLh1ZU+28qmQ2RURAZJVW6IzfXdnomfzd3L/T0a3Dib8wlfDCttjdQtW9MxSHSRlib
eMcq93ki5Qce3Mt7NS2cr+FE9KklDWwAh8AL2boVpembWPOpuHhSA5Yojtpr1YBBsBZAjVGvdmpa
KnC5FgtNCTfi39w68vdp8fES/H6SlLFAyimk1ReX7OGIT40ImeyK24SjiPWjBr0e15xgnXrryJW+
eUviqDQfS/P6sqNpYVgEhyD67wy7nMRshf17Nk9nnIb4SR+gqDJQgz0CqFMZtXVDXBVZ8diJAg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BFC715137A5D10"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-content-crc64: VQXDJOb0prU=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1517095-35f9-449f-88e3-a420bf7916bd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-480fc1a2-5c9c-79b3-237c-7bf7c9a0737e/test-blob-b2205d3e-ac6b-b5d8-c32c-2c046920efbb?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
3/kNHniP0Y1YmZFRGXwjY+Xy/lN1kav26VmEcDCvDwONwBjPklUGr4ySWdIah5xHCMgediKcRU1N
FzUeCmBcqImNxFhjVNGQ7E/H4zfY22K9PWhokZjh8HvLgnog6KQrNbFJjcJD5LT3jorS1WIWdTzT
YMz49Bfwq9PdmNFWcAOqm62Gj02felizcAMODhsZtQ0+TYjYM0GaWOHuZkzioR6GKDq1j+XuM+V0
RIMU4p24w+PEFyN70mdr7DZssBQM0c/lh+XhYyUnUBmiY+++hnVENqJoHYn7C1bSSaOugYPRZ3Kz
L1u311+9ncYJ2W54rGXAKHpxpLRF6nyPDhqBeM+V0Px8ClcajF5Cqn/C8THoWZw97VkJYMO+bUXf
J8hFPCX3cwhx/KIOppscL/k0gvhKp7V9RIp1jHA5vpwSO2WV/G5ay30pdl36Lke97DDKietMlIAT
yPeageaXOD4F/Go2hjKK2bd7ITFYghVCuJ8/bzSxxabkgTR2wEmWkT0f9TLdhmb+P68z0HNOu0bi
V8lHWMkJUzbDUQT+Exlu5JDzOY3jZTE5QC+EfvUzlsbtlGh/Tzh0FaH7GTVhACuWxOviWoK4/vGY
DReZhdVBj7s+EH+w7pVXfyPr50z82EAD7rkJUDtDNJV250Eh2pDLuYl5IvCs5dVWi9tezBelnDXX
lpYbOD+A+tvpOgdTNqWTHy3CgrVPVwjjssVf5Wd+0EsMSkT5sIFK+SgVw6vOAlU1y6zp4xl/hz+N
N4V6IBVzamm8Ruthmm+seImNOpNdFbBvKhm6le0xjcIFa3j70NgSoVhBEbtp1DE9PGuQ8kyrMCHV
Cvb7uNR8i7koXC72sKewepg6HAP0BlXofVmBoJp2WTtWJsbiF+mDxYYCQHcCRovD4HizcBMe4QSg
Ejp7+uofsgLzoIrhzWKvtlZ98sXd5TfNvr8iwugnOETBQgSuCMuc4o51D6YB4hMVBLm9oO8/wi0D
rjwq/fAZy2dFH4teAK6K4A82aNWQzNysDL0vaZdVgn/XqlmPceWdW0Q/u8KHtwMLMr/fCFlXc+Jf
ffAy6mHP75wLh1ZU+28qmQ2RURAZJVW6IzfXdnomfzd3L/T0a3Dib8wlfDCttjdQtW9MxSHSRlib
eMcq93ki5Qce3Mt7NS2cr+FE9KklDWwAh8AL2boVpembWPOpuHhSA5Yojtpr1YBBsBZAjVGvdmpa
KnC5FgtNCTfi39w68vdp8fES/H6SlLFAyimk1ReX7OGIT40ImeyK24SjiPWjBr0e15xgnXrryJW+
eUviqDQfS/P6sqNpYVgEhyD67wy7nMRshf17Nk9nnIb4SR+gqDJQgz0CqFMZtXVDXBVZ8diJAg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x214AE905BD1D1C0"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-content-crc64: VQXDJOb0prU=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9e26e294-38c5-4b01-b4c5-4790435bb7a0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: GET /devstoreaccount1/test-container-480fc1a2-5c9c-79b3-237c-7bf7c9a0737e/test-blob-b2205d3e-ac6b-b5d8-c32c-2c046920efbb?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_17
If-Unmodified-Since: Fri, 13 Nov 2026 00:51:55 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
etag: "0x214AE905BD1D1C0"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a5aaff25-e532-4ff2-a867-62fa2d272449
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 17: DELETE /devstoreaccount1/test-container-480fc1a2-5c9c-79b3-237c-7bf7c9a0737e?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8c57e44b-0e12-4417-949e-6ef2402ac919
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-237687dc-a336-a414-9316-1c70173863df?restype=container

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
etag: "0x1F939605BE25AE0"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 230b1c80-91ac-442e-9a17-2b76093bc969
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-237687dc-a336-a414-9316-1c70173863df/test-blob-ce6ba9ed-f4b9-5270-cf87-38da390daaae

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E0972E852EF660"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d0eb5d80-1e92-459b-9c4b-541f75807a8f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: PUT /devstoreaccount1/test-container-237687dc-a336-a414-9316-1c70173863df/test-blob-ce6ba9ed-f4b9-5270-cf87-38da390daaae?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
bkZDGTIPGt8pXhQ9/EReCvk2bEhsu0nnFiNUrms6aoVsbgHQ9Uqs3o+LpFvfM1WLKS3hAqFiQbP9
WwIOumt07/OO0I5CjRWuiY244BbtB+PNyYQ9WWjkCixO0plIniMjF7VoUWLHSJwYMnkUqWCdEFQf
QfHmNpWLqsZh9Lp7ZutplMlghbaABYDoJSbu0GDMsMJFKFwxPOAg3aacZlThnMuOqhSXPIqdnztx
/hFunNpllUP3Nj2ON1joQKgQ458sBohaYCVMNXQ3p4khwD7PsUDLNtAQ6WaO/3O8rvzijbubRPiJ
Ezu1GWDPwI6zbHcaGY9nRK3OGxwhzGCxkIZ3VBrOhXtFRp0EFh1wQCnX2pP8opVte0kNzCjbZ0fb
A4jZV2t05Ob71NLxYi2QXtvySfHNte7xCtnRwblSad9WKROUl+m+Y/asAM3CexkbfW5N6R1VDU2Z
6E2SoyMtqGrzmzga+8bxNOb7IbUgLo/AtUNKBIDBABzF+q+cLMDSflhjzt/gAYKnW7Q3WuuYebm9
0e3g4qPpMpscVAAXVQglKaJcvV+v37TAoqnMiqUwLYH13lrS8pu0eZxDw6yCkAasETFJO7tZDfE5
Hz/6Haf17Cd+IXetUjcGqEPCaxwHPhKiH3l05/HGnNBomdJculz1TteFA26O/r76QpN3lqHVMuAt
V/0ugQQ1uIWnRblkqu3nzR1EgTqkFCG6eqVdTgUuk2bxLmJex8zTT0vp57kElZelkMmEkbCmiEPc
cwdf12l/eLJScnuLiQZRcTHuuyxnteQNuL48qgG1S6UfgVPFc3fhaW4HsiIbGgbCMyB/t80WdL0i
UR+rQ86wnCfWbAeyi/25DFG9YAPB8p63eXfhNpPYCAyWoiJYNiagVhX7Ra3+EKcixap8WBO6YV6B
9MlWz2WU/WT6HOjaYdYrHArtxq3wuGnPvnHoXK/53EHD1kFcSoevZkdJA/S+SGPTUDsJzJuxkDtf
hhDzq6G0AUCnF4qVztKCPV9mprV1EXYOFAtz7w+lEkYG/MN2u7ullQKzFjDYPoFpho47S+mG6nWa
5ZaWQREwAQREj9EPDIGkwBGywfpFNdaJCmmBasdcfxJO3NYkD1TwgxQrk6+wWXoMl4rY0yl6VK/A
DDaor5c96A+/wS+rgLC9wj3mGaIm2bDudNM8g6zo04cmYwIdR9N97qug8JhKYRbaGhDrlDsNmjOF
uTvEAWRj1u2ohB2uoHtqaCv3hugYpBO8Ymmb/T9MGMjPl42YuOxGPBqqotz5K3mUgSsPFhRLbRUo
CJ/7x9iuW2xU3gju0bA+sEnNbgE2wjbvBnwUPQK0hCp3cLBNS3VB/EdwpU1wprB70GbKff8T8Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25610BEC7EF3920"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-content-crc64: EdEmJj6NOdQ=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1e8e1061-0547-4772-860d-f522de6089db
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-237687dc-a336-a414-9316-1c70173863df/test-blob-ce6ba9ed-f4b9-5270-cf87-38da390daaae?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
bkZDGTIPGt8pXhQ9/EReCvk2bEhsu0nnFiNUrms6aoVsbgHQ9Uqs3o+LpFvfM1WLKS3hAqFiQbP9
WwIOumt07/OO0I5CjRWuiY244BbtB+PNyYQ9WWjkCixO0plIniMjF7VoUWLHSJwYMnkUqWCdEFQf
QfHmNpWLqsZh9Lp7ZutplMlghbaABYDoJSbu0GDMsMJFKFwxPOAg3aacZlThnMuOqhSXPIqdnztx
/hFunNpllUP3Nj2ON1joQKgQ458sBohaYCVMNXQ3p4khwD7PsUDLNtAQ6WaO/3O8rvzijbubRPiJ
Ezu1GWDPwI6zbHcaGY9nRK3OGxwhzGCxkIZ3VBrOhXtFRp0EFh1wQCnX2pP8opVte0kNzCjbZ0fb
A4jZV2t05Ob71NLxYi2QXtvySfHNte7xCtnRwblSad9WKROUl+m+Y/asAM3CexkbfW5N6R1VDU2Z
6E2SoyMtqGrzmzga+8bxNOb7IbUgLo/AtUNKBIDBABzF+q+cLMDSflhjzt/gAYKnW7Q3WuuYebm9
0e3g4qPpMpscVAAXVQglKaJcvV+v37TAoqnMiqUwLYH13lrS8pu0eZxDw6yCkAasETFJO7tZDfE5
Hz/6Haf17Cd+IXetUjcGqEPCaxwHPhKiH3l05/HGnNBomdJculz1TteFA26O/r76QpN3lqHVMuAt
V/0ugQQ1uIWnRblkqu3nzR1EgTqkFCG6eqVdTgUuk2bxLmJex8zTT0vp57kElZelkMmEkbCmiEPc
cwdf12l/eLJScnuLiQZRcTHuuyxnteQNuL48qgG1S6UfgVPFc3fhaW4HsiIbGgbCMyB/t80WdL0i
UR+rQ86wnCfWbAeyi/25DFG9YAPB8p63eXfhNpPYCAyWoiJYNiagVhX7Ra3+EKcixap8WBO6YV6B
9MlWz2WU/WT6HOjaYdYrHArtxq3wuGnPvnHoXK/53EHD1kFcSoevZkdJA/S+SGPTUDsJzJuxkDtf
hhDzq6G0AUCnF4qVztKCPV9mprV1EXYOFAtz7w+lEkYG/MN2u7ullQKzFjDYPoFpho47S+mG6nWa
5ZaWQREwAQREj9EPDIGkwBGywfpFNdaJCmmBasdcfxJO3NYkD1TwgxQrk6+wWXoMl4rY0yl6VK/A
DDaor5c96A+/wS+rgLC9wj3mGaIm2bDudNM8g6zo04cmYwIdR9N97qug8JhKYRbaGhDrlDsNmjOF
uTvEAWRj1u2ohB2uoHtqaCv3hugYpBO8Ymmb/T9MGMjPl42YuOxGPBqqotz5K3mUgSsPFhRLbRUo
CJ/7x9iuW2xU3gju0bA+sEnNbgE2wjbvBnwUPQK0hCp3cLBNS3VB/EdwpU1wprB70GbKff8T8Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x200F3680B0AC520"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-content-crc64: EdEmJj6NOdQ=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64c93a43-918c-4f38-9c20-c9f902505123
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: HEAD /devstoreaccount1/test-container-237687dc-a336-a414-9316-1c70173863df/test-blob-ce6ba9ed-f4b9-5270-cf87-38da390daaae

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x200F3680B0AC520"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ed5129ed-522e-4013-9ea0-b08368f90df9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 23: GET /devstoreaccount1/test-container-237687dc-a336-a414-9316-1c70173863df/test-blob-ce6ba9ed-f4b9-5270-cf87-38da390daaae?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_24
If-Match: "0x200F3680B0AC520"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
etag: "0x200F3680B0AC520"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5002ca5e-c872-4188-bd1b-f01cfd3b80ba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 24: DELETE /devstoreaccount1/test-container-237687dc-a336-a414-9316-1c70173863df?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
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
x-ms-request-id: d94798eb-96b4-4a35-b908-f44ab8131255
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 25: PUT /devstoreaccount1/test-container-c10b6945-9a5c-6a1e-9f5a-de7660fff165?restype=container

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
etag: "0x20EFB85A00F85A0"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a537db12-e115-4345-9ce5-23ca053abcb7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-c10b6945-9a5c-6a1e-9f5a-de7660fff165/test-blob-ba728bd4-1dc6-7ee9-5fcc-996c9cea062b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_27
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24A6E46A5A45420"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 31e509db-32f6-4949-83ef-9c981167cc62
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-c10b6945-9a5c-6a1e-9f5a-de7660fff165/test-blob-ba728bd4-1dc6-7ee9-5fcc-996c9cea062b?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
ZH9r5D+z5WEoBgXykjBPe98A9fKMWCsngIxhkAGyzrVUsxLhkwwlIKYQksAY9uwvfB2Mm/QUngtU
RGSzUlVgdjhQnd4ebefS2tVLfMZqDomgMRPjJTLAQBUHjU+ocs5RrxuIyFgOEQ41ucAfyCFE6TXa
EiBBfVAFj13IFuCYKmgG+s2r4kYwkSAErWtxoXf0wqQZzV+tDzLLgjj6RvounY9YGM5UmQbvqoEA
PM/lk+7m01Q7flwIWeqa32ANNUsl1RDbGYipoCmeKiPerdNj5e5KFHKm8x8zUL7jubmm4nQ12ma+
CXplPDMqnVQ5KawXN/pxwiHZf+LxqMjKxedw90ivqdJspNxz5dc+fFXK+icSzIK/NB9SXFuDzWCy
m3dMuqUMiYDZqpId/dxKmgONJq2ht/lksMMoXEx36NZ7wUpg8sGvvnCmOCHvojZDCMFY9qezEON9
5wni4y0zYsG8oTyR6ahB3Wc9+n/XdQ6N5VOLH/IvyLBn4gu4zdtDctVgMwD5sR4ZFhg/dRZkpnH6
Vf7ZqEPPjNiMKgediRCM+Yepd0IOkzQ1cgjZ8FOaAjuZvXjdacqSkKYnbYYXfI0IsnuOuy8u7MLJ
pDU69ZuF8SfLA8uYr5C9Fuab5iWtHfZ70T3XDEcMatG1E8WVV5sKonteS3jCbwLr0KRIkwWcG4Y/
vyRdruXgvpj54pzLJ75LkESpT9F9uWE76zuiw9fLGfc+VZh2rPOWfozgyI1mIKnm/QLB8sy1wgbC
IsKqPfvBLsmkjNIm1ONQE9BFnfDU1MuSvMXVCiYqiZORtIox7ECRH5rEwpPWvykecd/7byUV7k73
F4E16ySieQM/lCBZHyaQs35WEBI4u/2ct5hHLhltfMU7OtS+XDN2IUiPlyoJxFK4a7ynv948v1yE
mDSLW0rq0RhaHuVS0VdK4O7JqCTSk/JGjsNcxrzn/3p4OsP/6sb9pcURr6ZsZpllXN7vchY3sQVB
RMyHjQtbch9q2ZaUS/UnywNeweNM2Sgp92ne94xkQIm9vab6dhe6tT2GAowD0BHoyKYT2fAi9Gqk
XZahfXqSBZgN141PLFXrpAumxtabJiZX9S/lUGeYmsg7VhiBGDjC8/z09fmDmJtRKDXkey6UCDdv
SYdKrbUxdTzEFNY8aYvT49LapzEs1FyTlCgysx+ap03hEs6wd0ZHwn+9voTEFL6pEZdcumEFQnUq
txiM/8EcKm2JW1e8I2yLkuSxbxXYzoBqiKKHPe3r289ZhcAuu8O+oZQWO7hm7e4r0Sd8VNNgUeiY
InYflOyAnX+HYp2rXdch886AwpPHA5q0XGzFbof8+TPYlplMnwynlZ443opQgHNQW2AE349V0A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EFA128C6BC2A40"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-content-crc64: 0+qJb1hpjoQ=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 627a1cf2-79e0-4c32-bebf-1901ecb5dd97
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-c10b6945-9a5c-6a1e-9f5a-de7660fff165/test-blob-ba728bd4-1dc6-7ee9-5fcc-996c9cea062b?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
ZH9r5D+z5WEoBgXykjBPe98A9fKMWCsngIxhkAGyzrVUsxLhkwwlIKYQksAY9uwvfB2Mm/QUngtU
RGSzUlVgdjhQnd4ebefS2tVLfMZqDomgMRPjJTLAQBUHjU+ocs5RrxuIyFgOEQ41ucAfyCFE6TXa
EiBBfVAFj13IFuCYKmgG+s2r4kYwkSAErWtxoXf0wqQZzV+tDzLLgjj6RvounY9YGM5UmQbvqoEA
PM/lk+7m01Q7flwIWeqa32ANNUsl1RDbGYipoCmeKiPerdNj5e5KFHKm8x8zUL7jubmm4nQ12ma+
CXplPDMqnVQ5KawXN/pxwiHZf+LxqMjKxedw90ivqdJspNxz5dc+fFXK+icSzIK/NB9SXFuDzWCy
m3dMuqUMiYDZqpId/dxKmgONJq2ht/lksMMoXEx36NZ7wUpg8sGvvnCmOCHvojZDCMFY9qezEON9
5wni4y0zYsG8oTyR6ahB3Wc9+n/XdQ6N5VOLH/IvyLBn4gu4zdtDctVgMwD5sR4ZFhg/dRZkpnH6
Vf7ZqEPPjNiMKgediRCM+Yepd0IOkzQ1cgjZ8FOaAjuZvXjdacqSkKYnbYYXfI0IsnuOuy8u7MLJ
pDU69ZuF8SfLA8uYr5C9Fuab5iWtHfZ70T3XDEcMatG1E8WVV5sKonteS3jCbwLr0KRIkwWcG4Y/
vyRdruXgvpj54pzLJ75LkESpT9F9uWE76zuiw9fLGfc+VZh2rPOWfozgyI1mIKnm/QLB8sy1wgbC
IsKqPfvBLsmkjNIm1ONQE9BFnfDU1MuSvMXVCiYqiZORtIox7ECRH5rEwpPWvykecd/7byUV7k73
F4E16ySieQM/lCBZHyaQs35WEBI4u/2ct5hHLhltfMU7OtS+XDN2IUiPlyoJxFK4a7ynv948v1yE
mDSLW0rq0RhaHuVS0VdK4O7JqCTSk/JGjsNcxrzn/3p4OsP/6sb9pcURr6ZsZpllXN7vchY3sQVB
RMyHjQtbch9q2ZaUS/UnywNeweNM2Sgp92ne94xkQIm9vab6dhe6tT2GAowD0BHoyKYT2fAi9Gqk
XZahfXqSBZgN141PLFXrpAumxtabJiZX9S/lUGeYmsg7VhiBGDjC8/z09fmDmJtRKDXkey6UCDdv
SYdKrbUxdTzEFNY8aYvT49LapzEs1FyTlCgysx+ap03hEs6wd0ZHwn+9voTEFL6pEZdcumEFQnUq
txiM/8EcKm2JW1e8I2yLkuSxbxXYzoBqiKKHPe3r289ZhcAuu8O+oZQWO7hm7e4r0Sd8VNNgUeiY
InYflOyAnX+HYp2rXdch886AwpPHA5q0XGzFbof8+TPYlplMnwynlZ443opQgHNQW2AE349V0A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CD5B52BD82D9E0"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-content-crc64: 0+qJb1hpjoQ=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4220f7de-c5a0-405a-99f9-729cf0fe094d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: GET /devstoreaccount1/test-container-c10b6945-9a5c-6a1e-9f5a-de7660fff165/test-blob-ba728bd4-1dc6-7ee9-5fcc-996c9cea062b?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_30
If-None-Match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
etag: "0x1CD5B52BD82D9E0"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 84404578-aa24-4d88-8aa3-4130cc582448
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 30: DELETE /devstoreaccount1/test-container-c10b6945-9a5c-6a1e-9f5a-de7660fff165?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
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
x-ms-request-id: be002be8-41e2-405c-841c-01ec0b78d461
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-386adb1e-bb80-f82e-8b69-69d3c63ed454?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x229E117138E8360"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c8594165-87ae-4768-8b58-9aff086415e3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-386adb1e-bb80-f82e-8b69-69d3c63ed454/test-blob-f42cd9c2-258f-6310-dbf8-741326f719a4

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25F55BA7BBF5420"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 61652dc0-e047-4b9b-b43b-bf69b78159ba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 33: PUT /devstoreaccount1/test-container-386adb1e-bb80-f82e-8b69-69d3c63ed454/test-blob-f42cd9c2-258f-6310-dbf8-741326f719a4?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_34
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
gsV6cDTTJtpvQFMg56ysEoYMQgVjYEH4ywdch0Yb0ZNQxVAAw2Qg7rJRhU7R73svS2KMGrQTQCGE
gaUsdp6TVG6/0CJcrE8i7FNTEdvyJ9uLLTzkjrfePIQufEG/83gTvTDgER9Z058Tai1gwC5GklrJ
oEhir8W34ZSdLS8NY/nbP1SqEhW8Mlqc0SSJfXtV6Onm9VIwsQ1rKDCKvKZvBQY0hYHanIBFDG7t
xd6hLWMZR0RGJ22mqo1GP+nkMXW0LcsdVfj5e0xpoenjQusvyfvNcXRhKd6ZjdrzlFyXYNr5OZgT
g9hrH8z43YaEw2iiFnXtF8ABUwTthMcdBebv0UAO6glSHEUiYVGoaEtYFcpyUX3mqUga9+WUJf8R
ThnlCAtFddhfT/owy7VuWOq4lW/8qrRoCSj39PIjvvZGERM3wmBAEp/xEwGDtt6Tq5/73JCQFKNl
fP/jTYDmO5EE6bmiNpWJeILPC5ey5VJKZEhSKOJltvxw0kZhXMQfCtdwfswk8HUJcWMNwAkLspas
mOk3kxOunjO9MWNPKBu9sADAQmaFJnPTSbd+V/XyZSCvtMTb53fEweCZZ78RukhIUBAJS3AvJnJ2
Y0pcMEY+ysxDn3RX4siI+4CG7L60wo5uNQfk6Rmvf41RZYMsaJGaWp3yzRvU8W1IgE/wqTmzwaC8
7fo+WeCzlB/mBX1EXJPu65EhwfVzmkSanGnJv9ZTnaPjcHqWWwG8Pzj77ezwAyS8Ab2nkv+qSVO2
pL136dRJkmfZYesYWJCQZYK9d61YqZhEDb4YrAujOCcn4LdDRFZkslqEFqI4pKgtFix97dGlXvol
MtwWMOZcNSnE8HjYTSAsWcVS1JL1DGgV65XeJkpWgYG8HhJ5TYFzJ+B4c7MwVMkMUJQLU4pnLyZz
AERRfQ7fbm72HC8OsgtD36yyfZi15ZfL0ta1Si73VO7rBk09IarRmQVFOTia/p2JyHPetbKNvhqt
hqs4KiQ//8dAIqy9Br0B4OOTb6teMdQ4K4G6GZ48XUgyj5v/mW/gBTpwWdvxy8K23NXO+k5vTlTW
//6ihOYpBMRji3YhAkZ0smpx7tj4Rl+/BDzJbWP5w0FGKJlwPoBURlQWjUBLldqOWkjj/V983bme
4oCpYJdhasc12tmtA3PqHKeD4rgedG5iOhIbFcXhykrg0lwAqua9tSN5FroA4VfU+eC4+fsAgG4R
RiaERlQBVA+PzDEX6nHAxS2VpV2zYli6RhvkKNFP4FHt7mTAOG7Pd8KqcBQmvQ9v9zPOatsQXuTN
yf84HCs+P+zfKfsNAIy+xi2bCPFDk4kMdTGegXV23ZB/8m9ullqXbDEnR5MUYfamD6StdVXyig==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EE12F128BE4CC0"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-content-crc64: zTNdeVI2n9o=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 53256fec-40ac-4157-9819-197d9a6d8315
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 34: PUT /devstoreaccount1/test-container-386adb1e-bb80-f82e-8b69-69d3c63ed454/test-blob-f42cd9c2-258f-6310-dbf8-741326f719a4?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_35
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
gsV6cDTTJtpvQFMg56ysEoYMQgVjYEH4ywdch0Yb0ZNQxVAAw2Qg7rJRhU7R73svS2KMGrQTQCGE
gaUsdp6TVG6/0CJcrE8i7FNTEdvyJ9uLLTzkjrfePIQufEG/83gTvTDgER9Z058Tai1gwC5GklrJ
oEhir8W34ZSdLS8NY/nbP1SqEhW8Mlqc0SSJfXtV6Onm9VIwsQ1rKDCKvKZvBQY0hYHanIBFDG7t
xd6hLWMZR0RGJ22mqo1GP+nkMXW0LcsdVfj5e0xpoenjQusvyfvNcXRhKd6ZjdrzlFyXYNr5OZgT
g9hrH8z43YaEw2iiFnXtF8ABUwTthMcdBebv0UAO6glSHEUiYVGoaEtYFcpyUX3mqUga9+WUJf8R
ThnlCAtFddhfT/owy7VuWOq4lW/8qrRoCSj39PIjvvZGERM3wmBAEp/xEwGDtt6Tq5/73JCQFKNl
fP/jTYDmO5EE6bmiNpWJeILPC5ey5VJKZEhSKOJltvxw0kZhXMQfCtdwfswk8HUJcWMNwAkLspas
mOk3kxOunjO9MWNPKBu9sADAQmaFJnPTSbd+V/XyZSCvtMTb53fEweCZZ78RukhIUBAJS3AvJnJ2
Y0pcMEY+ysxDn3RX4siI+4CG7L60wo5uNQfk6Rmvf41RZYMsaJGaWp3yzRvU8W1IgE/wqTmzwaC8
7fo+WeCzlB/mBX1EXJPu65EhwfVzmkSanGnJv9ZTnaPjcHqWWwG8Pzj77ezwAyS8Ab2nkv+qSVO2
pL136dRJkmfZYesYWJCQZYK9d61YqZhEDb4YrAujOCcn4LdDRFZkslqEFqI4pKgtFix97dGlXvol
MtwWMOZcNSnE8HjYTSAsWcVS1JL1DGgV65XeJkpWgYG8HhJ5TYFzJ+B4c7MwVMkMUJQLU4pnLyZz
AERRfQ7fbm72HC8OsgtD36yyfZi15ZfL0ta1Si73VO7rBk09IarRmQVFOTia/p2JyHPetbKNvhqt
hqs4KiQ//8dAIqy9Br0B4OOTb6teMdQ4K4G6GZ48XUgyj5v/mW/gBTpwWdvxy8K23NXO+k5vTlTW
//6ihOYpBMRji3YhAkZ0smpx7tj4Rl+/BDzJbWP5w0FGKJlwPoBURlQWjUBLldqOWkjj/V983bme
4oCpYJdhasc12tmtA3PqHKeD4rgedG5iOhIbFcXhykrg0lwAqua9tSN5FroA4VfU+eC4+fsAgG4R
RiaERlQBVA+PzDEX6nHAxS2VpV2zYli6RhvkKNFP4FHt7mTAOG7Pd8KqcBQmvQ9v9zPOatsQXuTN
yf84HCs+P+zfKfsNAIy+xi2bCPFDk4kMdTGegXV23ZB/8m9ullqXbDEnR5MUYfamD6StdVXyig==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E7F28DB5751580"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-content-crc64: zTNdeVI2n9o=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9a1f0b59-4125-4d37-8ac6-ba167ea6f516
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 35: PUT /devstoreaccount1/test-container-386adb1e-bb80-f82e-8b69-69d3c63ed454/test-blob-f42cd9c2-258f-6310-dbf8-741326f719a4?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_36
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: a72c7635-a0f9-77be-684c-6b8e0d1d4f2f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E7F28DB5751580"
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
x-ms-lease-id: a72c7635-a0f9-77be-684c-6b8e0d1d4f2f
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c936ebed-6ccd-4442-a739-edaa0203c5ea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 36: GET /devstoreaccount1/test-container-386adb1e-bb80-f82e-8b69-69d3c63ed454/test-blob-f42cd9c2-258f-6310-dbf8-741326f719a4?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_37
x-ms-lease-id: a72c7635-a0f9-77be-684c-6b8e0d1d4f2f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:55 GMT
etag: "0x1E7F28DB5751580"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e694e6a7-da5e-4d99-98a8-4b0c0a6a757a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 37: DELETE /devstoreaccount1/test-container-386adb1e-bb80-f82e-8b69-69d3c63ed454?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_38
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
x-ms-request-id: 1e254b9f-1803-48d6-8653-3c096caf235d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

