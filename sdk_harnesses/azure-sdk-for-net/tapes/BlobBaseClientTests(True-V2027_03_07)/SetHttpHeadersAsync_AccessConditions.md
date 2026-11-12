## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f08924ec-98d3-27f8-1dc4-25633447c1ea?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetHttpHeadersAsync_AccessConditions
now: 2026-11-12T00:48:20.5934141+00:00

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
etag: "0x1F170A48E7FF870"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 43bc43b9-78cc-41bd-84b7-874a527b2c02
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f08924ec-98d3-27f8-1dc4-25633447c1ea/test-blob-39cd5b65-1041-0412-eb24-9db1533a73c0

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
xpdEIVP8ErfCDy1XqfQQ9qupSWrv0E7cEYQFrvtG1ONRZZ2dAqCXaEgVdjHiu1v3E6YGqvEJ0fVJ
aBDO92O8fDtJBkRWc/MLEeAh2Vkc+VUpDZtUQCnyR5OnVJqPyHDlWPr2mLUXoKCy+pgQ6PibLG67
penIaDwSV76wrx5Ze0hwO4BfJmCgEW36oUWQ4l+aCygr1COHHfC+40H3ZvGCWH9PoKx3PAYNGpR8
zsb2gXVeFqP2Lqcl6B6QoUIfqap8d0jGQEGzI88hHbmOC08px2HMmFBNjCrXKbeN55rE7nHp/1Z9
MEEzqvLU1BDtl93PZtrgUxBaL+se7haKJTw1XS9IpQv4rJYgme1debca6pLZvoDA45tgjtBqX0Iq
qIW2nnfgpPHS1rpDv7oj/LU0BAODsGa7dXqU5xc7jkxU9vBop9o/OUWhB+fGfCPhPZEaNVs+pvge
+in9TLzal0ht7snJulXb9Mq+4ql/9fhWs6qFIFjxFk/4SaywQuyIx3CfWI5ZF4I7PkGQgMROnwUx
ppgSVHbwfNh60XGpKrHdNRo54Jxq/JwnSeIWYJaKqaqmf5tUdXL6rtu230URkRSPskqpFb9oxqn8
6wuT2RxB7yjHA6oVib+oPjHBtB1WFrfNh61L4JPqPbnyV4pnZtW/dO8cSY5peSmLANaOpxKMpdRT
xVJu9g6U3MbxIzI0QdhbAUAtOswpZA2EwN+9XJWmZbG2E6CDUH3giG3IeFX2Vr/+MqbSXmsIKWFE
6jYv138wSr6Afi432LHCTbFfYey4jWkgvyrv1AZGrek+PmVHsbHtly2XdtiRxln0DxG5qMh1jFzM
DhhVQXW3OtBE+ZlLepsAcsm+IBeRj/jQ+sT1jAQhybIJe6OZl1a43zwHTM3AqJV1uTb+t2tFO34f
hUawwq3LIy/nQv/4Z9pzBkHbikIrEFIvf9LOIhJGwz8keREQBxyOOymd2GaWfFJcirAqabE79HX0
gUPa/QAdoH6/1O3IY/4lTE8ZjTfrmAKAcZdhHFqO6IWcG4XZsz0ogDfn1qhkkyexBBxhImY9COhA
Woxpu4QkMOxoLEd5S5kR8A3/BMFaG95wrxc9LMYfXhOdmFixv8Szw6a8/GfgOLmDUDFYPgQm5j6t
+Axs5wMmSM0z3LNAYDFJTEAbnh93kHZeudyUxyAPdrIZA8a3R9yilrOZrFwGQ+8ADvLDC0gfNmiV
Di0mkYGsJGUAJl1qkQRkeQdr3eMaWHbtlLguTGpq+s1dIjiuewQy7If2BRySlX3tXpJAtFiEe7W2
OfzJftf6lSyPDG/Mtv0DOfFbI1JZW/87Qe7YKkV12KaD90IHaG6w+2/wAogOIaeUPXpnKVhjXQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21FA748D93F5A40"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
content-md5: U5ttaej48ePGyT1aNWbE9w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1aef1e51-4c5c-471a-94b5-624def5f7454
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f08924ec-98d3-27f8-1dc4-25633447c1ea/test-blob-39cd5b65-1041-0412-eb24-9db1533a73c0?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25B257604214B60"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a85f5543-aa77-490b-88c2-df99f96486b8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-f08924ec-98d3-27f8-1dc4-25633447c1ea?restype=container

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
x-ms-request-id: 48a0e0fa-5361-4258-97b5-79310ad21497
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-3c8efddd-22e9-e66b-1a34-c848bebafbd0?restype=container

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
etag: "0x22EFAB40F54A140"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4318e234-3292-4592-aec8-56c9e5ec841b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-3c8efddd-22e9-e66b-1a34-c848bebafbd0/test-blob-e227ab83-5969-2d76-2046-44edca0eaf4e

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
IJpkCdoxxtkECudURdjo2UKq430xgPOEh2Ecot5+GwyEeigkVvH2UeRN3l9xIedIXWqqICoyHZ+m
4IJ4FSP7he7b0MuvxINQs5KY46GUE2V500Vz0/riUlyIfnZufTzAUllwllEcmJnmWm2XmTn+Ecwc
/kHeh7H0+H5uJkYN4jVV15FHJHwUXTqrjHmNSrgiimypUX774sqnfJ3TrXJT2Xc3QsGotu1PCKEG
M/o4Z67FS5zaY5C2WvXHoKffQLDIWLMBVQj2etN+WUjd9K/PbxXvDWHVeXbngOfM4RZFcMjwPdpH
NhGlztHJWwlH2GZG9zGS8DJO8t88GtQgKpi9OOmA7LbUhzgDST+QDB1sn6eBhenks4CVokv7Chw9
haQ4CyMgx+yvcm/5j6bzvebB0Hosn6Su2IVo6kpr2H0cxcSaWAD5S9i70RN66yPZouRlOTmhEeX/
iTOeuNyhRJny3MriWGXlyIWicM6RNOxhjkhlBp5De7Tfm87NW5P8Go15hw9Z90l+f3G0/qAXbVVG
PCmTOz36r2EVA72XF23xpVZAGKzdCJf+5oYtjnwTxy15hh5qaN5PftitQ/SL52gEw1lK1lWoaTOR
lVS3zSDlAjuQHZBOhz138JnTMMWjcv8eKcojyPHX0B3q2NOJmLG3yEC4+8nXtTwb0+W71Dlu7iJV
mKRWwjlJuE1zY65q7VfoG2eE6nc1RnOOB/ULHPvkfOmwM/8MYQYHbkJ8ZFGNseWN0rnR6QOqIFEw
x7pDPpxRjufEubpY27lhfXw0uOIiAFUQfklCE5PlBhOt3JpLwzCmK9VqyPgrNff/b2yHdmhvDsZk
M8BTDntU37Omqv8fFrlLjowNtzhd5UhSQ6MmXo+qPs7T5pBwUh1ZFulFhIv331myPOjcYVaOB013
AcrXLYAj+2swSy8p2ztus6FOGGG9WmRJcyGnzt14Rd9C+VFTgehoIYggx5QqiWCsba21P+7suqdm
jrleey2NuAVP5uLqGjG45ffYnJLPH+nB+2EvwgbxVT6q7fMuCaVbkg+O2qJ+wlJ8/Fn3FB0Ulm/Q
nYDLXvX/XpGjPy0+idxRfQqDQURGQjgOs8as+UEhllaEXmwljzMZjnwR24IlPnJ9ppcSkFQqiVtH
vasvU2RPgqnWuStwLO3XabPINWe26XRTLlOqDgUBWdUQ3dGI6joXwVjZToRHDXqpOyehYlP0kdQ2
3CQQpXOk1F9VX04bTn94sHMO3ZrwCyHZANPeYPeBHEz9UQ4WBhzlNHkl8a4rjeynKbHg5bQ5RtAD
N6SgxXRo1EICHvxwYapXKKghyxlzrnPmNjZFoDaYwws9E893RW4EvB1rKW7wNscHib0LGHq2jw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F7A982FC69BD00"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
content-md5: NDA7D6uYBfJP4WkagBHIaA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8e50a43f-5535-4992-a794-8200456ea455
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-3c8efddd-22e9-e66b-1a34-c848bebafbd0/test-blob-e227ab83-5969-2d76-2046-44edca0eaf4e?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:48:20 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C9903F1FF18C70"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7e86648d-0f56-4a5d-a3f1-ccd90d878dea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-3c8efddd-22e9-e66b-1a34-c848bebafbd0?restype=container

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
x-ms-request-id: edc1ae31-eb8a-452c-9b3b-889363acf71a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-8fba3189-223e-0c33-695a-f0334edadfe3?restype=container

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
etag: "0x2264D7FFDA7A420"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cc5e5595-b5d5-430f-8572-e3a49d132b7d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-8fba3189-223e-0c33-695a-f0334edadfe3/test-blob-fc0e1c39-8408-f504-ff6e-3e17798cab90

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
h4NGRorfxprqXr8U/wN4LKnZ0vtsuocELMSPz+Qckt2vX6zLlJlZWVZ0EanE8Pb89RFtoLqwJMz7
QRnGUPa1zcviZJ9XrZcPgHik+KjePzzOk9nSrvIj/zvfz1OAkglfvkTd4otWpEh5Xh9BCywjHAHc
+L0d4x/YvmVkd91Ej+1uRDlkAV2wd+6QWFDT4fMOvLJRo5pMQtokBCMl8i1qNc8y0sbyvhukK4DO
jIrPBd1yVbsq8utSIgJeQPw5i4XAJiOBoQ4sHP2WrXcafbVQVP9Gs5xyP0Lj37DEk34faqD6DWZn
TmTORTm9k0VzOKRMDuv989joTubgncFeaIh/d0LXH29P6Qaad21jtKv8cKYMd4SSInfIEr9/hrCi
cN2wPhwCnBk0/SXkYntrhZo75C0bUvEE7FXLDw2w0GJV+AePs3aP+tON13lfrr/7XIwkRKKDhx7s
rFLHN40Lgy3Cj2p029EkrOlZjXp3pD6V0LKAjIvA0nDpowckx8JGglNMnB5Uh4G6AJi4KfmjdQcT
MWfbivehAr35ijjK/+QmEwsnKggfQEgwxovzCKh3Ri4AEJZbavdcqplhW/xJ8ACzkRbtfEr+9PAe
qsRsrfoUgkQJyu9Oy6gUy4BuveVM59WKP3aSicnkARylPcAy7/yfTNi3PyURZcZt2bHKjzYK0sPu
4W6Dgvh6JcjTqI3o4duDz3AMlKewedmwJK8YGnHlmmv8Qw6OG8rgPBlcPrw4hPfVR8DF/T0bPmiU
0l5JYgtX7Q4i7J7M9LOmLFeOUzsdeJ+3QtOxH5wt4QWm+klsl9oOBVCuFZhZCVINH9Hmjeosd1q+
kR84pc5x9QqYJfpqOpV8f03qbmMGXjmAowDLRlMaeYLurQW71WCCPR+NweNYo+U7aQ2cQQj3uDLm
twHNpq+3fqx3e42PwartaDFDeJ1VKAAbkNxFfTd59/TS1B1etJZw1kI34CdXq6djr9nXsz+VkI8B
shbScQB0/YSYvOyMj7Sa06FaHkfYw+Q14s5eokO1PUSOXQGAnmVCwuOjv+671x8lPOCdO3FHKO8x
nY8xFltA4n+o/TKyGTQ8F1tkNQP2eQqvOGViFwHSRzURTwHVEKyHY9xuEtrtciOsYCMW4vLsOyOE
gt313ct91bX9oMozZwev3dEmh2cwwcZCtrbevGVCJRPeUY3PkoUR8D0k8NFYePkcZgUhxbS7VMAW
sycUnxlQunq2VRV530pMFZYqDNH06T69wVVfIWBfIvzMuN9e/FEj0zVXoSLjo4e61K8ekUjvIsno
V97D8ZkaVzMZrCdr7hlEBjicnUgb2R7OpUyxQZC03ZUVdaRzYOKbPUnvyvZgTuaW2YsPUoWBzQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x258112FCFEDC300"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
content-md5: zeHusSMCxtWq3wqyAuDZbA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d538ca9a-6de0-4477-b354-bb605f82e957
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-8fba3189-223e-0c33-695a-f0334edadfe3/test-blob-fc0e1c39-8408-f504-ff6e-3e17798cab90?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:48:20 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22842891A9CDC80"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4587f16-0c3b-46dc-8b66-617350f7cd9e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-8fba3189-223e-0c33-695a-f0334edadfe3?restype=container

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
x-ms-request-id: 11b6a9b9-b474-4abf-82e4-34f112e517b4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-4bf5bf7e-684d-a316-64ce-91567874d1a5?restype=container

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
etag: "0x24486FDB35D2BC0"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 43d73505-5f12-4898-9123-a9fa1bc4b44f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-4bf5bf7e-684d-a316-64ce-91567874d1a5/test-blob-fe600056-0e2c-6e27-5666-1b6804a48a10

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
lKgms2uWTtQzS2Unz/htIgfluVElgqBvl4f1502unsBEgMHQTR46v7KLyuCpAJ9d+PhgHus46xEH
thvkoWeGha2l4043nNTpq/mfmbe/xpfomO5UTX/UC5WvyZYCVR5LBUUzAxxQJVsjd3PxmVFZR/CE
/Al4MTgu0Ni4h9M+51XbVJRyjMJ6l3KSMNUM43JEVYGmfVkV0tMMBDNEmJ6I5ZAdFkS957stCWWX
5gBiIu1ldDJSmGn8xYHAZYePNv7TCktF7s0thm7GeHT0fuzSquJF3iRsNk0nIVDC/IEzndNmw9u1
HTMfOO3Dix/1B0eV7rulSVfaZ9T+Hc18aortk9qhjbsQHYyuJqU2qKotMhkJLQ7FjVR7jFsHt/9m
o85j1fhFU3mLhNEv9iOxo78q0Ouzczx7KAWGJQFgCWWMSILX0tKx596gfag9lpcwyeib3eYUsy+R
563zvy53K3troq2g2tHseOkNE/aUPpJtVVwZxCx/eJVTRuslviiwKFEt0fTpj+8Xr2T9BqA5/Kkb
hWnRXWdO7CkYTZTlx7nAXeqlZ2ydhMZtAhTHgXH1GklBCTm+3srp3uXK0EJbMeirPKm1k5U8fQCj
ZFpShmq3IzNKpL1/AX4gu4iG07ODEtEsHETIP4azBIw5G3lvllh7E6wPEI0qKzsqldgNtqpMH1KJ
Jmkl7+Sslp8xRuYFsCQwC78HdAFEAfEJnaqupk7h7Psm5nDuVSTIYnnu+eRUJeWz3avqRatRRCR4
HFE6/vBQT1rr3smzQrWbPhGIVgcMtXfF+smj9qZP1aJMdTnSjmSInaqKaUYbAJv1TweZyO0ca2ba
dAQnrFizmwgnZ8x7ya+t/7hdgksxqfkuraeftQy0LwnS+BlfYfBS1s0985nOeoVX7Mk0v+kbqMsK
+f6wFOX8czfCqNGWTZ3HC6x+87VgXzMiR8lDf3Agt09OVWjyocHoQYBhDNG0wZ8rbLM8nbUVqpnL
js0cuPTHovGCR/g11WnqlbE1/1NibYYpFxK84xqZOarOJhL0y4iMmmrgMnmm9ZdJUQcD36tGaCBG
8qHhCr7W6A5NZ65X9sooqWTpgjsMgiF7cpITlVn/h77yrdnnqo+rCUlrWY7o8ls92zZGXeblOm9/
Zpcrw1K0TeDwZUjxQP7UPXjxoCmTk3831roiuSrXDHNpZ0P4gEb3tgyu940STJo4cSBt85lG7NMY
9OyXkpO1GFjVh9m63L0y+uod5ZvxJIog6kcKahnZIntw4ItZXyR4+N41PMTBfZViOvmvKQY4JtBi
d6dMq64++2RdSvwy2ZrFpO28vOjFXm2ypy8gKvl1OLq79uh9LEww9kBfZDOYMGFf6YQZe2nnnA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21CE63E881F49C0"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
content-md5: zFbbyPYHEBey6yQdn1FM9Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5d23e17b-3001-4d29-8149-eae834308612
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-4bf5bf7e-684d-a316-64ce-91567874d1a5/test-blob-fe600056-0e2c-6e27-5666-1b6804a48a10

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
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x21CE63E881F49C0"
content-md5: zFbbyPYHEBey6yQdn1FM9Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 70cda4d4-c1a0-4b24-9597-c1a564b58dc5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:20 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-4bf5bf7e-684d-a316-64ce-91567874d1a5/test-blob-fe600056-0e2c-6e27-5666-1b6804a48a10?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x21CE63E881F49C0"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x256B5900F355720"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1098527-2317-4c67-993b-b77d8d67f823
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-4bf5bf7e-684d-a316-64ce-91567874d1a5?restype=container

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
x-ms-request-id: b432e2af-3efb-4ddf-984d-dde33c0e5c6f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-04993918-1e7e-6bd1-e711-4276e2b14878?restype=container

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
etag: "0x1D6FEF33DEACFE0"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f69b0c8a-dffc-459e-9a14-4e828e3f13b5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-04993918-1e7e-6bd1-e711-4276e2b14878/test-blob-a7c58ba1-fa66-193a-76ce-c141755cbd50

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
01nPQ5JHsthv9HwhVrl/raEMeO+kQDYd/3+NsF2Q9otU8qOJ4QTlWdntOHF+GMO8TxOfaOPNrJMi
skQTugJ63v7wzGQW9sucJh4WtgfFnua70GBJ8I2nh0UQZi/A0p/XcllzjkxfpllIA0LFt/WLXRNd
V+mhMe5xSEUeBo+b21N/P0StUhCaXCoHAO1K4s9QhAgbY3u2NUFrAUYGQaDJrSfvRXix3gsDw/q+
mTAAJ2V1zYGGf3jXyQkCQVDKkxuJPlPFWpxXn6X9GJ+A95wRatrgkXMeQi2uF3xvrpy6OC/fNVvc
O8zIHi7ciWbYVtFt8dZ26QKnavwmFkIg6PAIQuBvocFANC8NGHJFQrnG1cGqAb3FRE8tOMpftiSJ
qDY900aGabUQLL2naNGPYSdCYECBdeYzQv6RQmj34X4Kg288CG9yP2wLmtUAHtx9nteiHFbkCDJQ
CZBH9SZMGEo+nORhU1i40CDUddsQMyQiE6ORVMUoJns97P/fKkpFv4GKwYH3G0t+6kw1EJJXP9Vr
JeKDu8SEFnZoJGZZ2KXWjrZZhXKiKvdYE2l58hbo5a0pdAVowgO9BqoLjvfkJBKmX4Hc/rliyfrq
KqdaCyRfgD65L2SfbcuynH/Hl5wAdO5X0pKUDOfzxqsLfphcYvqGqw64KvStB/K2KWE5mzFe6ba4
AziRy3NWxWm5lO8zVjmEQeuNSEn6qcug3uOFuit5rZTio1/C9OCbYWWL9HMCg9IotFlG0KFsvlls
8eyP0Qs9QOZbUbPawkwK8ebkbrVYnVsQXQXRMtzzdeUGVgL0C5BZTrSMpzEfTfINO966iE+jFFOR
f3MGaw0KaNzO02xJFuZWiiABzPYp8Q8SxPb9OOyVYkGuY4wcU+KmgT9VUXqGwyX4ZP4uoUddZ45j
86YWDC/vOHEqmrNZOTc+W0q31J+VjAHRBdPuZ8D6Ufv+uGA7j3UPZRkJXChxnivG8Eb9pZPuzmal
RAdcAdGwL0m3W4DWAsvUqG6GjC/YYGanJ3Z5/KtoD+r5lUpusmNIWCzfukKr7+57KP0kaEE2zeSg
tNpaNjOdTkuV3WyAZvUKPjMD+KUj/DeI/tSuQ6eowsdlzv6J7SL5Qmv3FRKB+sIIGioOM9U+fLij
0jde7wqk7BqkG5f3gVARCrY6LOYkBwQSpSl9mo/yJlJF5hvqmlNgUyn43N8qEZnZ/CkfBE/Sfssz
TEnhJlGKsfRFsZo1Jm9i2tm9LCok55SQo55m0yICc2dQt00KfyzXbSrq5GD+o9a5vCl2FVKgDmS1
UIKzI97RQj0y5W8iWFut5b4AOQM0kgDHrRf4jF4Vr6joVS+pI0lMGaEiy75nl2TOyS+Un9RhgA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2342E72399DE0C0"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
content-md5: 6oxGJy/qVMHwNLj1KHkVLQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5f1a6c52-3a93-4add-bf5b-d4b655339887
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-04993918-1e7e-6bd1-e711-4276e2b14878/test-blob-a7c58ba1-fa66-193a-76ce-c141755cbd50?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
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
etag: "0x239CAA3B1AB9120"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 57411d3b-6135-4eeb-9a81-ffeb8d039335
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-04993918-1e7e-6bd1-e711-4276e2b14878?restype=container

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
x-ms-request-id: 8119b513-9730-4841-b5d4-0fb322dc37ad
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-76eb82bd-d8c6-dfb6-1d35-c639032b03c1?restype=container

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
etag: "0x1ECF551FD5FDA60"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 705a362a-4cd7-4aff-9724-2f111da8adcf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-76eb82bd-d8c6-dfb6-1d35-c639032b03c1/test-blob-6120b474-c611-6041-16b3-2ac32e8110d4

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
h9RxJjjThUDrQq2IoV1gosVtH+uz/2/2QItgE67ysJwl8bIvutyJoC7gds8Zub+4Uof+wGEkIIdl
euatc3KR+JIRY6+rMejp5H6904mf3YfLqMAn9O86ANEqykD23C27Tn08B1UQDCGfFdziZ039xZxe
4cqxagSi12LegWeo8gdQAYULY9Yxu5ufiN8TV5mELASjl/pjCeN5mi/zMou59yLUkWXH8mHFLSYu
EuIkjn/IWlRiBFsM7fehkcimPYgQ5pG9PsY0vDqi3WnUNPcBVQuwKtg3VvLGx6NtJmCZH++dHixQ
Z1C5lJ0ZvybxOLkAnzy99ROw2Y+e9nYixpXZCb56NhXLse2795U6HZbL1I/qbYYk3Cnc7ESdsXDZ
ls4HQLZodwKkNe5OAf59drv40yHnOFgPtC2UnknQLv994WDHMt3gY12MRTiY1torXnaJpN5P8V51
+IuI09m40wbv0SCdtkTeF3DEWvIgdt5TaT/TR4kgLfABUjlSV4+D1HIxqQW6jagyqo1uipZsVIKs
NWqa5Yx9zqMvm2MKjL/gQIZ/7szZmdyWoJz7saNZlf23pSIk6e/ms9thivJEKB7OjUkQ7GW105yO
A0TvghwA1gZmUuacu1eXmTvxdw7pUnh9LSNZSKiXAtKGluaq9jG+YbPr3dU4MdLyeVIqw1uNpLDL
clT4p41dz1AUFiVx7KIKMxZa/nSjRfxRZs9VbD52+PI134Tcxbkmjg6EIxqtgYywIJBEMqY8JyxY
p0C+B2ISnh4yPA0eLW5dNG9lHyHhpOVCpUyuMcVM+LdXgx54Z4escoX8ekV/kfIh5/431ggLdgJb
e2EVZGxY5kNWxqpQ5Mznua2b5SqfwxNajErHFSKuTAwbHOwmlg4ZpJQCKctH0QIxTxxbb5HYvLhN
u9chkNEhp3qdNMfgwSOfgkGWnZpIErpHlsUFU9x7Q2Az2No2+BPD4IFRqpw6UI34vO1QQh4eBakc
2foLG1SdIvFnrelJaIkt07wY9mgeDUU4DJbuKwFBFdMwGh4Zt8Uts4er06Okr1RjIm5hBQ5B/sy0
0w69r/fwJZcVGU5rFBv360Pgcjmik11CigiS4BDE7xtRZeS2bwSQuq0LjpUF+A5TaRnLYYuSET+x
eiTuXkWHUSkyGa82QXw+T7eLlgTHPJL6Pnb3+Y2PvlOlBfTfoVxohD1s095eHSidjBHUBns76T6S
8x/PkFibolpbkTyHX65bIxLGW2mzmyFNWWx8u7jYahu2Ta08mfTl0DCDA4vsFS1jeONodI3U3lj+
gTbrH+eigycg0RIAHooe4Ys5L5iVYUQ+GULUb/WO4m5VPhi9+bBJ4X9kzEMbYlpZSpICmq6/aQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24D4CACCC88F1A0"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
content-md5: YIB7wQ+0qUBhaerERtBmyg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 81fe0dc2-0791-40eb-8b6d-d29e8b296447
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-76eb82bd-d8c6-dfb6-1d35-c639032b03c1/test-blob-6120b474-c611-6041-16b3-2ac32e8110d4?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 05acf11f-cda4-3114-91ef-a3aadf7160e8
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24D4CACCC88F1A0"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-lease-id: 05acf11f-cda4-3114-91ef-a3aadf7160e8
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a8b295b3-fe13-4c08-b741-60ce579bdb62
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-76eb82bd-d8c6-dfb6-1d35-c639032b03c1/test-blob-6120b474-c611-6041-16b3-2ac32e8110d4?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-lease-id: 05acf11f-cda4-3114-91ef-a3aadf7160e8
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F4BC6806A5BE30"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d54a253f-6576-4917-a38c-493541f18032
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-76eb82bd-d8c6-dfb6-1d35-c639032b03c1?restype=container

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
x-ms-request-id: 99b9b49f-0a8d-4834-a354-ed699fe12ef9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

