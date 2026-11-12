## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-412b2e85-dfd0-1510-fb59-63691c5e619c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_AccessConditionsFail_BinaryData
now: 2026-11-12T00:47:51.5877231+00:00

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
etag: "0x1E285AC24663140"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1a7681b7-42a5-4285-8fb1-3c0df29a5611
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-412b2e85-dfd0-1510-fb59-63691c5e619c/test-blob-c4067f7b-5d99-c26b-7b64-39a23d2e5b22

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
o+4olMv8F0gJA6cCwOmdGcOCWkt4RMjoDTMNdHUmVJea/LI28IdAiRbjN8w3DVQRu0mmmQMWJF4l
QIaX76PS464QaMQ3Zyg7QdE0lQz7sADe+7ksf7qUg9hTELAAqJpzEFQeJ6WQ2VMgalcy4Y9SKo+G
uPPppmTzfOTr41Z4Opk2wYS43IlaTiFlCxRjYqJJAeYgeu+niWrvK6rApfX9qDC++yAKmU0GK2rR
hJtQkBpCouJwV8CpjzcaybHemakraGLkpGaBPmeZGk6F1QXOn5qQfgITjVFvFWvo79CbJ5HBpRs5
a+yzwGN61jxyI7kxTCkWThumGNsRdI76mU6X/fK8wy/qlTOu3L6fmLYU/fGxt6Omhdl2Go1AJ/Zd
uScU49lKtV+KR7b2Z3FcB38k/HecSOGr8HgZRamiqW08USOWirTdykeRJ2/tsB1nGRMNGyt/wXBF
afNgMG+2551IuhZNxnzKRzIwCiByvUBbsSyVlY1CvZCzUSHBfJnX20DRpPYGGVOXQtT4TrZP06uy
BX5DIVIPBvyGmnRbCcqYWC/goBlKVJfY/lK5SW7ZY351D3YalLntwZ35gH/fOzkJYPWGbjKRaLHn
ayL/VryNrDf25flUfcR18t57UNQY+cIZsOl4U/RM46bFMymX7mvga9NH6VU/teIxEHxTFhfdznFf
5qXTFFlCqQJTjkmb3gRzmuUB0RBs2foHR0J4+M2P6GW3NwfFDVZ5BD9T7CaYljJ34Hsy2/1h8g2q
y80WyrE0w6bk46b9rY2Oh8zQGezUbrEQARhSXQxoVUT6G0GJYjqNHyiAtLKLeTPto1QxkNkg1lwc
BsmY4maZe45iApJLBSSSQvnEU7r+hIflZLm3N8Rr2kTkbFtw9DzC5zgkKXagop4wnk3fW4OiHYJC
s32t4UTJ9yhNZpjIIU29AWyC2lsQRMIah5h2i37BQk7ZLkG/FAXzWjFOUzsFZ33/IloWH0MmMm+7
k1msUmuqjCRK7vIM/e1mj4ApwfGHFCAadmgkqiMLs/zRA4GrRwfGpMYXu3iL8yRsr5DD/HB+NH45
kdsCheIBPjv2O/pru0h4Yx0qb1inj4NEt/qSSLaMU84DcbUrwx7jFX08lLcqAfRISplSU8QmkQJY
vs7obvaFaegraEmSTKD/RlnbavrLGrYFSv4cOf8K3N+y0wRQ+6eHtyrP/piqtf35UwxqSiYHjKQY
4iT4aC/oIYtp4HmbrkuyVLPP+xsdW5QAI+byn5K4qkdgOBiCjk76590NQNWEXaTBuPZzOJCJ+4eQ
90VJ9oH5sDUyO3YzL8Vk1BQ9Dxq+fMVCMeebRXK21j2R8pcJsfFcFI+gUiItjogxDmN7S+tt0Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D390E971DFFC20"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
content-md5: v3wr/xb+Nei/J6VSaO5J6g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f4fa993-8089-4f86-b59b-c90688a22649
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-412b2e85-dfd0-1510-fb59-63691c5e619c/test-blob-c4067f7b-5d99-c26b-7b64-39a23d2e5b22

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:47:51 GMT
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
x-ms-request-id: 2b9a1807-dc61-4a1d-8da6-b66c5baed336
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:51 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-412b2e85-dfd0-1510-fb59-63691c5e619c?restype=container

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
x-ms-request-id: bf763f7d-8890-422a-a97c-9be995872423
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-8afbe123-2a1e-14a2-a35f-6a370f3b8b51?restype=container

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
etag: "0x1E5ED2E3B022BE0"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8b1c0439-da4f-430e-9636-03f9201d70dd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-8afbe123-2a1e-14a2-a35f-6a370f3b8b51/test-blob-abda18fe-f3d9-2bf0-af30-7027ba2c1e55

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
JCEbiaoswrYk3da98+tKArJAWGrv4rJR3PEhOvI0s0DZ534cEtF49x9EZkFT5SG3FGeEz+IhYkFu
yqy4C4jD8CqW5AttLu/hyGBKqntx/vfQaSWLr+RduIU8rUglv+yWgXYWvAAVSeZ3owaC1rfF/cu0
6KFiOEBGOSuFMYGnuwh0sykFWkH3uyA/Ewzd2+LOdrB9cNdLNEg10IPVjxdk0Of9DSKNwKKKvS2A
IyUzaV1Jt7vQKksxKX/hz4q9ISsI2kIl382/QLYO8rKpyhEiAmcli9hclKacy+SirPAXzJsBeEjj
DomQiXYFwjeYiF5uvs0jl5ZSq0abiRPoHZTF9iYXp1HIP/TdlQJhV9FvA0OFNO4i8zQFrswCR4R1
p2ziP8sRgOANpn7ZRgKT8VR0LIXQYuilowPxEfmExvdvZ+2WfxgFXoJjeI5vSa0xcb14jRv/pUWD
PJvIH2/niN+Gat4V/XI8bs4CbOpaNlpVv6A7DDncb8GoEkJ8PT4TfPCu6N/OHHNLPB5M/TlaKAZB
c2DOq3umqvocbesvwDGP7vD6rE16hqMs79AakHKITeo7OsneRdB0Bz7ksq+IHHzsvA5JYHy4x+y9
obyrixmIlB8A84VnsakfhaQPltTzpNNULtNjP+1ug3PdIaMUyXskXB2Phyj2hQtlKdrXqTAYyf3o
Vl1GJFUyknASipAFC7wo6jm2ZByrXqjH/RUSltpCxFilK3Id3TfIXfS34/p7YB0err73YWXgPfi0
fic/H/yW0MU3X99JCg0B7gYo83quTJ339OgbS2PyxO55aV8QiD34IRM0QwA+1KOx9XJeuEl9BjKJ
RysTeoViRZvxz6Gt8WXIL9JneQmduR9EalbwlAuk/GIshkER5KaN0v5lTAQBAwMNlYl2Fo0p7I0M
zxAvcbCPTdM/gWoktkos2aYKOG0aQmdS4/6CLebVA5q0BRWVXmBN1f8xwoKZ6N4+SjzmHrQf8oyo
3I6yDB/taX3QcLE1lntFvWJu6X/lufofQ+Op7+XmlBOJ7YLSm8ngQ1gEyHgtCbPAoGBSsQkMwyOT
ksg7Q3qY6tuerKn5cyKYjqUm4PCB8jkw6E6ElOIKfClePwgApP/ea96djl0Kxy0+uSNj5eIzEZ+P
C1orFFX4lC+AmjQZmOmlSHQR5GPcJiEhRdu/ppZGKy1ocZmksleIpPouiS34JCA5vp1tISw8suU5
Cs56Oe6YOW4GsSdPAJYdiEBprZzzKCC6hej52AoALL60a6iIDmoMlVC+8nP46r0GUJnr0wVJRuGt
wLMFnmFkBYRpm5XtlHrVXBhLNDatwZsq8ohwFFm5aiTG2k22BvbuWuzuj04nGLseFnbs/RGrAA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26BAD5515E3DB00"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
content-md5: v16Zax8FhIH0LDS+CROYpQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0e63ecec-c448-4e1d-be47-2cd9b4b1a516
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-8afbe123-2a1e-14a2-a35f-6a370f3b8b51/test-blob-abda18fe-f3d9-2bf0-af30-7027ba2c1e55

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:47:51 GMT
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
x-ms-request-id: 097fae01-5787-4e63-85d3-6f793d2b4f14
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:51 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-8afbe123-2a1e-14a2-a35f-6a370f3b8b51?restype=container

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
x-ms-request-id: e1c9c9fd-f998-4964-93fe-048cc2901b31
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-49da5c21-31bf-034d-d9cc-52fee2cc6d12?restype=container

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
etag: "0x25BF99F98577E60"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5cf0acb7-89a8-4cdd-9403-ff961fa31518
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-49da5c21-31bf-034d-d9cc-52fee2cc6d12/test-blob-882eb4e7-7bf4-efe4-85fe-35a8dc4df51b

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
G9pPnitKFWb8wt8dtvEB8fcgyqA3YUDMy9fSDKHxSePDXQvf3YAp10dzTfxSL0zoymAHwQLN27mZ
gtNUeAjFCnn8WljlIRR29vNZxBREepuK6UFA6ofg9YJSRlqt1V4+rkKDVdX0AqlMkcoPdBelVQg3
yY7HhCDyG2TWk9u5ySGUGxXRwSTFlueY9Fi80YFrrPFSdQzQdikikDlxHm7OksipelkB1JTjcTKn
LpDHNUniaufpZ1MUxKTsrjDrVHh5ymGQElcoadhdbgPZKUiZW1vwjrOH5Ct0lLa1FSVj+B25LmQu
NiPyugAOjPhPOppbUlPV+sbF8eU2HH2gc1Sz+XbmH/rjayQ3/dSyeFgzJVobWcPRjv1X9Dx+9xql
UkasW5OBaRqgeOYvnf3xEnmNA/YjhBqR4Wp5jiu+ZHMJkquNBRzFsbs/e+HcovEAZeHC8fQjgc0s
G3ooCNrv4RNzJQpRZAxcyFE65Ag5tT94eClJ/HN+5RDeYOqinKjhT5rNaHznrgDUZSij6J3E82U7
r4+xpeWg9D/5cwQiuSyoWZVua0zCkcoodJZK2/xzGWyEZ+wZMKm1LXQ97Tr8sqv8+o8IVogZeR7F
iTFOVRhChlqXnVI/jynruT7YhKSQK8HqTeFta8Pka+7OVKZ4Ztdb+mfgZBVZvWpmHJxKQfR5NF1v
ZAg31RqWszJjcDuCc1JmfIk9sMaskJB2B04mmSr5VB9JCAHPIyVMSbHj9Uwv46lK48RqPISXw9R4
wc7LcBkIaRscOWpRl1hj8GcVyZpDRyOl3LZljxiaskUtVmJXgdiX24wwEqk++ExrBkwdgfo5NHqq
JpRjotoDgYclJED2DG+Ofe0OEzR5Z+Np+YjMfTBK8yHorVpENDixLJEiGNQLdfrcjwQMKiFFML+w
+ahSNwRX2jAeDV8USUi1XeajV04OXoSN7+4rPsgAonybkzqQXvWNyj6k7GebyEW7V807otlwopsk
xUcVK5xnHmvieLYNJf7wFowQanEc8Seob+b6xACiKvGfa5mtd5+hPM78uE+PrjLOS4xNYDcpB9Mg
bLy1bFpqP03EbbllQp7tbi2jIDjXGcG0LHl0Vcq5dmTGjQri689zkXkCykB5aQjtYPIJheeaSFP6
AUDg9umDCvdUn7SUCoJeL46/1U6BO8JwhvXXr/F9K0W26OqOk5uPfsBIJMpTWFVvq1VY2nIEecZ+
b2/0q1sG13Nv3SKYz5zyMFeOOBf4HC6gZwSbJFHTsm4kECMrm9JlQkxX5Hoz19u5ZaobdkCvhlJB
VERWarMhnCuzc795x5SEKfbKoDizbI8o4r6mtzsudYrQ6keODteZNUhOf2QcP54VlkxK5OUajg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24049AEFADF3C80"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
content-md5: IewEiYCa9bETFxlMQnezew==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d2c4445d-de6d-46a8-b8e8-f4972a63ca54
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-49da5c21-31bf-034d-d9cc-52fee2cc6d12/test-blob-882eb4e7-7bf4-efe4-85fe-35a8dc4df51b

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
x-ms-request-id: 11c41e9e-e507-4240-b02c-37c8db02bcff
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:51 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-49da5c21-31bf-034d-d9cc-52fee2cc6d12?restype=container

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
x-ms-request-id: ef410a4d-ec42-4b86-9f40-c7f7ba015360
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-f06b311e-ed64-0b2b-a220-9020efe490a4?restype=container

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
etag: "0x20B7EC76C66C4A0"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9edd1321-9c06-4733-9a83-caf93c33e08e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-f06b311e-ed64-0b2b-a220-9020efe490a4/test-blob-1ea4eb54-408e-5da5-ea4f-baf72cfd9a49

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
tlxf2d9PpbpjX/pl55fBx6ExK7N6Kin5iSLl1OrDAKBukPKA7hs7zouxjAXzxSQLXsh/vbjcKYsy
ZVC9atDPn15Z91alQdmF9l0nyZ0kBsP92nUhREPokWdmTojLfmS64eynmc3OZh3u+sdbtWDuDl+N
v5BbrVsacWbvPvJRunf5bOexfW31LnRYMkl8jNwGeEApPb/TXzOQjChn3ycqnUBPYkh4PZDxl5Ac
AnsRnuSK6MayKHy4JQy0IPBEjk9MLpUJLSqTjTuvN6Yut124fu5E3fdhd3TDlj07xB2grQlBz9Pl
CHG69lqLA/HVim2v+6ECALBX6rYhRpbsWMkeD4md7eeJ0nZ8ieac1nSD7gzPjMl7na1Y6eQcxMHa
zZ6RbfRnOJyFJSgqhXbKuxRCnliKHMsAonHcRAQDbA60orxHCmmAG7VwSmagURg3ji3Q2iZpULDT
kcqDi/SXgrgadeO5grCrwYKiGtJlX1BYpLbWMpLnSlELdHme/Y/B2Meuhts1fQt9JBijxzbebTF5
Kuc9wU8mMiqRrg43DMTz4UIKttl1IyarWQ15RIMbLQZHJNOngxZ4h1OxpM/9RRhUr+X007dYBAfA
kmdBre2ndYEH7+jxS14rki+FxH5XrhP1JJSdJ1lP7x/L5/CvNtplCi5O9VYvY2OHyEGH0kCIaORT
S4hZCU0nuP/IJWRte1tUH7pQCbi9xsEwFl4Yxx3fQ34MXOpRDADhJj1WZj3/Gk3lM7KGOF8rloXH
KPPuDvDi6eHmYR9wAhO5buJ7Zl+DMfwRM5RrWAse4MVliuQN8hhNdH1cGbgudDCfzcl9sC8mRPf2
3dtcd5HWx4BZC3gvq3zKLvLiJxhD479jy4tCoC+WP0bsFhQ88P3rhVE31Gm4byFNs4I9Qx3fs/oc
+KsGlCZQw8syQpVnjT319qHGCw5Wq1xp9e2tWfsoDWMaIPhR5fEr5xGdhi2M5SZESE17GKjrxk1P
nJ85o2nQCTQxTGxEoxCwmiT9uCQu3A/GaBGtrfS6L1qrAkhR8USnzX34Wpm5AKQ9y36E7Q0oIMCP
cjpYIls/dx0SmaDHXqngVuunNoJ2DGhscOF2NkFMg+KIwX4JTqohuON7p2cEdWzUpJcigOo9GWbR
7LJ5yUDcxRW9Ppwq1gdAhX2e+mUBZ/p1oZKpKgL4SqgYOGL4p++in+FRRjbQqs2Q4vpsnx4Az4W3
BCeuMpsSxfT0EZ2lR96N/FuDsCDDpPfEGUgIi6uJGGndQKPI9GxGPoFC25gw6poc36LDfB9k9F8v
6RlSCjpIa/k0yAY7xQjuPXGfgMhflC6t66wIxZtJeExDmApT8zNG+XCe+yKU4Rma1T+txHOW0A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C514EC12DE4E60"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
content-md5: OC0FdFUB9P692PFfLrUDOw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0dad5c19-1aad-4372-8a65-73d64996b869
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-f06b311e-ed64-0b2b-a220-9020efe490a4/test-blob-1ea4eb54-408e-5da5-ea4f-baf72cfd9a49

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
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C514EC12DE4E60"
content-md5: OC0FdFUB9P692PFfLrUDOw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d3c63be3-8a6c-4a23-9817-f26710527534
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:51 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-f06b311e-ed64-0b2b-a220-9020efe490a4/test-blob-1ea4eb54-408e-5da5-ea4f-baf72cfd9a49

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x1C514EC12DE4E60"
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
x-ms-request-id: 1b3eef46-c7fa-4937-87b2-0631da24eeda
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:51 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-f06b311e-ed64-0b2b-a220-9020efe490a4?restype=container

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
x-ms-request-id: 654ab9b2-d02f-40e7-a13b-df87f4e83d36
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-5886593e-99c0-190b-0a92-6df05c9cb4d8?restype=container

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
etag: "0x2349F0DF141B180"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 99f810d6-24b8-4b35-a061-493921880acd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-5886593e-99c0-190b-0a92-6df05c9cb4d8/test-blob-f53d8b19-13b4-13e0-aeee-e235898bbfe8

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
rMi1aE4UuLnLQBDS2ensnTr1b2vsPg+734sU+9K1AU6a4UtkRzL6KaDNjICIOT8gpdC1Zi1J6224
+YnDAL3nFj/CN/ieiFUH+kbKH7KPM6ZL81UC/5ohUfXdq02pNyjj5XZAxgFHgh16rmvmfsu7Kcbi
eAxn5BekoOYCwNwHXsMd5zk7TmykA3A4h1AuOtMqIoKHxr4bfAFenCUaRcJBclCoyZaRf9pZPnSb
Ll3GdWYT2J5ZgJcEAWs43bJHib6u9xUAhnA8mKKoLYhKgE2kmCa+B20j5/K4o8cqWKInEbS17TZH
xe711j/7sFIOuoEelESMiIJRig8iSOOpET8AgRvUlJIWXNM3yTEtJzefqehGDMRdm4kxZGImJXwL
TMQA+y82OiXuBzhxVL9QJGLYgp76YgV7ouWSojAw7zZWLHxtLCsHaW/DVwSL7EfJ4UD/TqLeEOm/
hVlKo5f1vhcBGyhD4/c20RkvNwoA77WeycHwMKGUeBuSrafSvcXXzpntidEfhv1IyHyJrtnevpWj
q9rWBY12baIMsDVPZBNTWGlxE2Xkf0PDp2gkC8lCs+8SLhHrAMkLdhwuEtXI+GRoNVVvbasvvyyW
E10lUWHZyfxGPTYCZ1egZZxJtmxt+64Eu9Vz0kZD4m/kVe1r5iW7VUnYgbotZs7+zwcO5gjAKBeu
IZWLZfe2AlvGHRJqNH93jmEjlHn01lUHdQI+NftmJCzVvcSPL/BRIn9fZ0m8k5uIl1innJSeuktA
hO/0eM1fX/jllXe66F9x0XL6lG4MS+Jntp6jv4eYNwJ5TqoAXaqy/wdQ1v4jza/5NsshpCXcNDgM
jMEvvKBwTV10QZm0cHPIR5Vnu3XkQ+juqom8dpPcnRpx9NHog0Nn34igr4wVRMVXWVyQdXnDKEnZ
QBIWtNfKmKR+Qnyi38RR/9vsQ5Rc2WXDZBw2SyehrcuID0MxUCuw1RbolwFJtXqXP3Wd1uS0fGes
U0+6lEx83ZSwGtCBIK+vPG59dEFjeq6ingyyA9fm05LbhP3c9kHKa7ltmJupFh/G7pp2NwglSdig
GPU/ydm9yUY9pZux00UtsgiI9uET+Ijt6xU8cJyKtjskO95Li6Hgr85UbHCDFRpUSYQAnVP3jB9s
Ut7EgFmqs+5fjJhn4SdmqEYSv4wXadb76CcXihnoLa6+3jnDGy51qbmBI4iC7GdcmfQM5M2TVegH
yJgykijVd17qqQLuoowXnRXSlUVOefu/uvAk20ngK4lQvFOVQheQrKwqmENlbvZo9Ea3wL+iuU+d
c9c3sJsVCX14neY4glr+QemZI+G3WUz5u+cCKWrKrgMD+M8/WfsQFI7F7NEQL3LsuX7VCJVu5Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x222A99AA99858E0"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
content-md5: 9DG50ii8I893N6CyqvzeEw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1aff90b2-a63e-46f8-8920-7a153879a525
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-5886593e-99c0-190b-0a92-6df05c9cb4d8/test-blob-f53d8b19-13b4-13e0-aeee-e235898bbfe8

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-id: 08481ec8-d8ce-708f-f5fc-995524191c0b
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
x-ms-request-id: f313e411-dde4-4723-beaf-db3cbd0cb7d6
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:51 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-5886593e-99c0-190b-0a92-6df05c9cb4d8?restype=container

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
x-ms-request-id: 4a1eb79a-d01c-47e5-a738-0f82ce5aa3b5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

