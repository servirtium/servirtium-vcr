## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-78e65801-19e4-a5c7-6bd4-9d7677f8bafc?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetPropertiesAsync_IfTags_Failed
now: 2026-11-12T00:48:10.8008340+00:00

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
etag: "0x1C3907F977A4490"
last-modified: Thu, 12 Nov 2026 00:48:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6003da44-9f9e-41d3-b327-0f4209a7f730
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-78e65801-19e4-a5c7-6bd4-9d7677f8bafc/test-blob-cae2d025-567e-9088-9a7e-e9d611e5c40c

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
ewLVvXzhrG4xwGmM+Nj+dEQHkSkiV6Sqz1XdZi/wk4YPkfp0Ivx/RCNzmL7t/JjCgHWSClOa6SNe
Ku0nA0Y+QCzjfGfdiVFHh00Grr/lvdO9G+W6XokydafWFvgPWEDdNVeSCYAx5PcjSoIFlDtkeG0a
aehgg+GjsAa/B3NZOC8NKHhnU7NSizfulxQGLeFscZ2L9O5YfLJ17ll5ct2DyhJS+GvC/SW5x96w
cuzNnIMlU5XWzkNBtKzG8WRa2Rlaas0BszR1qnR40i0QpwnFqFLVVB5HrfzOEUO++wvAXu7EVgcf
y+hPr6kgXfsWMQ2iAEkShYX6ErzQM6Lwtq5pt3M+S1ECptxphqR1J08AuOA2HPrBrdlpyUNLTphG
Xvn6tqaH1+W8oFltqf7hhOts0HrBuZqzpwqa1YINtlhDIieqe3CpeOD7enugVATaiERY3n0dhKVe
Rg+b7QJirukBKYbWNgl6wliaxj8fE1MFwEw+tNjbJZ2CTDRhDYvdmMuRnyp9A1I63hslg75mPjO7
liy1JPoRJgPoVOnUGbTMvC1zjnMph7z6A9W8taLfHA0BpXdeKHTRf3kmla9oZcVmWceQ8rDAkg5w
uiEkVXBhCTfb03M9bZS5og76AvINkp0QVVzaTilcQBNp7m1TrCkIxIx3jJFSKesz11CixY8cYyiD
FAAUh7oNf5Jf1H8mZfXk8T1mlQULvitxp3bZunuDTItEz5gp9D3RaQ3+8lVrDHJbvdRRtc0id1XU
ot9DNMQX24f04ZVdu/wAlCv4DMvWBZsEffymMpa9IlhCVFFdjTRI5xbNdyrc/gLXUSGhKmuK/p1E
P7bHcanwN789Gmerogb3ryW0CI5xJ3/6z+B1G/jst1W0GU19gHVt3T9qn+OaLK4aqnpF1fYP0xg3
zKLIexvHUGIR94m5eS6vRypOBoicX6IyW3F9p+JfpEY1RrTTpGIko06AiTUlYTBLlY7LwMyPmmz/
lh+qSamAslJDgzN626PIKmM5G9ZtDPlAMhFTk+R5patH1A1CeVml/9fj4t790LnrA5ZpVn+WkYkm
aheXLB9uyd2HMweVhbAJlBv/iiobQmFXaI9ND08ssEKDHA9BDdO3dRgAdp2yVX3mX8FjlgdfCie2
QMSPILqNWoLEEmmgx4dIRxUSG8vEpRMSZq+OyRk6JBLoi80OKFRechsa7UMTRpg5Gk/yTO5b8pqw
fbkK/5Foie1XuDu6OR/AtKivqbfQ/iAXVK7KSNcjjJkyXquaU3OKsWNVvI5cf+AvMZhGq0jj4H6Z
8qrinkEVNCuih9t0JmA0JfhTekGRu9TOmxY/3OBQT30sAGHIqBMiP4hiufgFuws4EYZQj2U8Bw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x206890E174F5F60"
last-modified: Thu, 12 Nov 2026 00:48:10 GMT
content-md5: NtWEhZcP7qtiv4pvgcbSiw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6d621fc6-aad4-43c8-84f9-ee211d93a659
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:10 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-78e65801-19e4-a5c7-6bd4-9d7677f8bafc/test-blob-cae2d025-567e-9088-9a7e-e9d611e5c40c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 1983b3bf-adc0-4b08-852c-dddf7adb5499
Date: Thu, 12 Nov 2026 00:48:10 GMT
```
### Response body recorded for playback (412: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-78e65801-19e4-a5c7-6bd4-9d7677f8bafc?restype=container

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
x-ms-request-id: f90faa3b-8704-4b7a-94eb-3cd242a4a931
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

