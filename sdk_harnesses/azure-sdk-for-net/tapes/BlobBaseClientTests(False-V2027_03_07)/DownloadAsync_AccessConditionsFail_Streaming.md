## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-00a13f85-7bb1-eaf0-a688-58ad4e5f4629?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_AccessConditionsFail_Streaming
now: 2026-11-12T00:46:36.6696888+00:00

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
etag: "0x27D14C9E05040E0"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ebc6d610-4572-4124-a110-9420f47552a9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-00a13f85-7bb1-eaf0-a688-58ad4e5f4629/test-blob-7fc1def5-9350-64bf-19c6-559c13bde5b0

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
YvCacEEjUExrDYx20QYf9Go67/s1IXmgpxRF0txDrzcS7Jeu/W2hYe5UlaPuehmfaWNDFG9L9EB2
+ckt3n5wJ15VZORucPf9mI0M4IvWsSz7pWh4AJrIx/hXNwOjdINw5G1FmRY0MfhsRnvhPhO0oEec
MjkV+CfDjZ3rFzn0WSQKm/sekBgWxnRwC7kf5ojlope7B0FJW+xGggx4SBm/eOxX16IYlg8vhWvF
pexto6cUBnWhOFLiwEAP2A4LnX5asJPNyA7lzQuIi4HWhLYA2N5lZEGkHj+adBZiCL4AI+fsavRY
oNuYLjlpGazQCzyJDv8wpjk8tpJUMlP4g8RNh2eZ6RnBpzgCzTYIOgSSyWjZ2Pm+0H2usLRiBG2I
oKp0HJJENiEjyGfHLdkDNHuNwWjqHqrKjrbq6zllXqPKei2Lkx5yTZJGthCS96Kkq3w41UIEnYH/
qo3bWkvovWnD/bOseKBdG3PVpGeaOJcURkC9LIlhxd2ri+mQlvNHXvimz/ru9zPb27nPLvgZZXL1
xxQLKpHgYTfWAOy2zIWAjkVu9GidJU4N4VHPkpfkkSZ3ms7ePDNnxm3CGPZGJA40TqCyqnAJWKLG
/kg/EM+g8m/GPzK2oVISBy762g1XxrxDm0P2Mea1bUIsGD3qJ7WeIiWHf+Xbfa1NoKNBD32UbjeL
/HWMqcGIEdLwiYgUJ+B5XLfnz0fXZx2VqZBDc17EmKoGXipAEXlk/20T6/QlOHnDyLLGrJ/vtJRX
9/8wRZ1zK/HeDsi1OEo+g9DaxHwpb3AXgKqr/usKF6qV6Bp5M7nPn78CRyqwDZBohyjOFe8YLoeP
GcXzyC0G0/YeH08wxFAWCiW8JihFZ3IaQ3bCPAG6fbqT6Rr03NaR/HM0ku5AOMPYtwrKWwdeSrJS
2YW3Q5f0Y6KUnNo2Ii1OKiq1EdSE2Quz6YT38CGyNJ9ooQNR2rjcPy9Mq5voopXcfDDdqTndzgB5
BFoT/XKA4mg7zoAq/FBx2dGlNy1wy0fuGnTw1ItmitID2NZeyEG8y8kyrdQUsX/gbNBnN5fSCTkS
JOP+jw3c1EOuJyR6ExCQ6GtjPR5y2Wj0EGi7/1M7MM6dS6Rdvju8VtiRZopbZVjA1k4rb8waoEp7
CX+kIdXwc/dW3chsMiowpuZF4XPemaoP+ygED8ABgqtZ4rW8GDQCoPKSBYiQU6Mk+8jl1b7WnXDU
lCas7GM2VFscElB0c46xQkGBS5Mif6eF3xT4G63tgkRF54MOVrSPW7AsdEFSsIc5M5J8VVHcsRV+
Jw1OPjiuL5AML4sKo+yM8fDj9gtmMi6NvucacCzyaTZujy6nQB14fkSwRoD7LpCl8GRh+bsKGA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DC1D782B864D70"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
content-md5: wFtiGEMt9QXZoSAp0eFIzQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6210ccfa-9257-48f4-9729-4860ce2ff60a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-00a13f85-7bb1-eaf0-a688-58ad4e5f4629/test-blob-7fc1def5-9350-64bf-19c6-559c13bde5b0

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:46:36 GMT
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
x-ms-request-id: 7e31e0c3-921d-4183-ac35-03daccfd0b1f
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:36 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-00a13f85-7bb1-eaf0-a688-58ad4e5f4629?restype=container

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
x-ms-request-id: cfdb1319-254e-4db4-994f-a85bdf85dc9c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-c6776ad2-ebb5-91ad-9057-747fc7916f7b?restype=container

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
etag: "0x234F24846FB17C0"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0dedfb47-44f0-444f-98ef-59f5bf0408a9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-c6776ad2-ebb5-91ad-9057-747fc7916f7b/test-blob-3fb0121d-2950-6d60-a7fa-3e1e1ac84eba

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
ZHY5yH+dJ+qFTC26ppJ86Auzjo5DQ2MJMC/v+R4/nIhW2jidgxwxNUONQWm+8+v92ox0FALhNyAT
MJhPrS7MRbClZMtZ32TugVlKtgL6Sz1E8R6RyoeGdKIXiVOD4YcVwPy4GY4fpPsohpKpl4EeGeVb
C7wPOnooHu8pQlURaqDRNfUFQTKuJE0iaUT03d0h+XBtKNbLBYaBkPqf9mGlFhvy12GLGNizrOZu
7NA1M0ESB0jlo0LJBS9uhLE3Dy7rfVIpAgV7leCXunvvXRm1TFy4jO4Zv3LZKNIyHZQne523gm9+
CzE8lnFoTunG2agWuTdUf4JA0r3fUNkzSXhMcD/eONqpN0Aqe/Z8sHGJEk8pG2Rc0vsad7CxnrtX
CE35HN2p6KHNbIH3KQOMwyFLVj2KCS0U755Dw8Aq95mE03Oog5SU3yqtXK/iZaj3jrOOZUd9zf8f
5Cw/ZiXgonTnclaQ40CMt3YT3Kx+MYr1TDQMnJFRBwZziJ5oVHkFzbo6+vJSZ6pzAa3RafBSobOi
Shrw0wbilmpQHVqiJGP8Dg/yQzaXo+WJmZrjgJ0VIOfrxgpfFfmzV2SHAUlQ0d1K1FvgYF18Cqc0
Zjps/hXNOvxzt15ZnfkWPuzSEKGbOce8matCNcCJbrtjKq6/R1hOusZN3Bp/8TdiyiFxqvkFmSxy
r2VpigU76kii9XJKVveUg1XaTV2tPah032qfF8TBXZCCTJfy5S/BEfLS3PvEGHMq3SajKkzOxXK9
9KubnNKD4JjhxwpfoZ4mGTtr2mCssMf3dTqdHTJEs4clNfCEJXUgTvti4lBpyjyIfREQY+oREETj
pCeX5cNlnRSDOmuuovPFS4xkSc53jar+FaAhM0+cEyWroIFOiGg4/UQ75pDQ2todShherMZ2bBZ8
mdAiRGnF5iZGAgJyd8IjLEyJO6caLTrFA+k2PmZeNTRr0u6YFbjbdgBpitjYq9NWOoB67DBvYWyW
XUCAjqe/6MzNB6TUixaTrsWnsaJi7FgW4ATl5EkD+3GBAbh4W+hYqaILC6Quga5q5j5rx6/JM3Dn
aq2j2QODygszUoldGlLdTgcAVuG0515Ve/0KmDPBuM5HkfE6tc+eiECZ+i8lDMvrjnmoydyPM4JP
Tl4FeDHXcpq7Folhopk4Yc6gG+0uL24yHgq6GO7xuF1v62ZwmQ8PwoeVafZBiuvfb2gN7hiUIB7w
01omHFmryV4s8rczx8i/kVhlmcV38ZQe26iG48lF2stIgMW16KUt6qCYFZc0rKigTl2/L4ZYeOLF
B0GwJeWV5hjr6kYCCqizN68l39v86i4A5ZVrhqpE8Ajj7+BkfcS6Ay5/SMFinUS0DPfXMpkGyA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D4185DB406CAB0"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
content-md5: vYbtCwCEMNsOrI2qc3zUXg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a667ce25-38ed-46a2-b04c-9254d7e39ac7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-c6776ad2-ebb5-91ad-9057-747fc7916f7b/test-blob-3fb0121d-2950-6d60-a7fa-3e1e1ac84eba

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:46:36 GMT
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
x-ms-request-id: a4da981a-0746-4178-895d-967ac1a252a6
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:36 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-c6776ad2-ebb5-91ad-9057-747fc7916f7b?restype=container

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
x-ms-request-id: 69b31182-506a-44c1-8805-9d358b32df99
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-addb6aea-a17c-9d6c-4851-b67ab36dbd6f?restype=container

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
etag: "0x24A7668D3AE60E0"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ac32484c-7ea5-4937-bec3-819efd91074b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-addb6aea-a17c-9d6c-4851-b67ab36dbd6f/test-blob-a4ed7534-8895-5488-e876-5027510053ba

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
3SbCUsyEatnNEqHHJH8p7L097Mi9WEx8pRL3/nLmujk9zkDzBfztZQAB4Gr/pXnIJ8q8dYD1sYXa
Rqy5jWxn51hnilU+NebAT4bHu3jhfP+YLtaoKUS5Rxy7GL9PNNiTmvgSlxskivLk+yb5LfYM+cqs
IF6Vvr0UrkI4gx0ncRuuMyB/z+TkdKTkwy0dwBomrh/0ohN5/ts7/unZ6wbVvIoLS/nVjSrlyKy6
sPqP9u4nEtT9Ms4INDVFRND7C4idDwajEnQhUSH1D9pmv03gqwf7sdky14q7AxbEkEhZ6b0jHKHz
7OR5BsGzByP0oXTnZJnJAFmvazd85w9eXcDYnCUdQqKs7L4jgqsYfs9nx2Gh3Cuvj+ljdLFpdwXV
GqkA22v91l7RO3fapX6tl+xoFB+tvIGVKAw7uc7xQnW5TmcCF6NjavACz6Cz1OprtdzEAGLlJ14n
a7JfwRyP4PgCIVcWq39IBKouquzg4VMi0ATyLEES0yYJ2qzxBKjUc++nsbOSVApce/y3tnxxR4le
PfEYnbO38E4wDdDTVwACWjf9OTCgj3v6lbBFWhyql5Mikse3u9U88MFlYUc5iST8tVxEdA1Zvq12
HQgCcZUxhnY9sMU5S55iwUluOy0zwQuMSaTAZSKFydQZQJ3NOX4rM9vR+9lfw2q94rPE6oOAQlz8
dijwcSBTuOfxHwoBlIfKQwdSYsUyLYY6AoJvwN5Qmf5B0cNVOsG6fUPybqNfvE4r+qd7Ld+Xykii
tm+e4/gIoIYLwMLEdAhGl+WCP7/i2kY0RMU31Wsfqgd6s4RSHJlL6c0dVPyLZoWeNZb6FIqJv9sp
ap8y0coa7BW7SsCE83pLN1bxxYZJqN0/mKDUJZV98PSoKbL6GRgDAmfm0BzFGkEbrt0zmPlV38HC
8jgqRseAPlnM28nIUB4+7cMeY9jAen5euHa4SVj7U0rwOCbf2byfZpHD+D54U16+9ao1NnzpAXe5
y41Rx/QA0Yd/1xj3XhQHf/xG/II/5mUX+VOuxR3NBzavJQ0vTp6dwye3+HxGx5eVLrd/ogT1euUn
Oc6gUgxpsc/hSDgH2DBeqTlaiO3o0TK8GJdmTmQyuqsnBxTP/HAbTUesZX9fjlWGIPnKmvL4P2ib
5Dl0A2Nqro2M39Ecj63IPzqlPGyzXIpB4C1rZyC5LsisNBc3pknjQrbx0q6DapFLAVq3UgL76Iiu
MiM1/0dt0rAJb1qWkZnwwvq2woncvXacH2XFAtzFsEyPiXMmrUNugwD9evo2tXDBxpAIRSX+0XWt
md/hqNDURL8OBgclyhS2Rz6J3kN7ZWr0BDtLvGsmkLf+eBRjjNsvKTY6J65om/x7Uf7ndPMxMQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F7F7D78E055BE0"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
content-md5: QlUgoPLKkA7CW7hvWsdprw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 24da55cb-695e-4def-aa6f-5c2333288da9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-addb6aea-a17c-9d6c-4851-b67ab36dbd6f/test-blob-a4ed7534-8895-5488-e876-5027510053ba

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
x-ms-request-id: fe746cdf-baf4-4f25-af6a-0b5d2a29acd3
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:36 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-addb6aea-a17c-9d6c-4851-b67ab36dbd6f?restype=container

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
x-ms-request-id: dfd8d3d2-cd4d-4b3d-822c-3465ae30cf05
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-0cb55a63-3d41-8cbb-683e-d06a6d3e1cc4?restype=container

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
etag: "0x25560753E22F6C0"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2fa6a1ce-66d7-40dd-ae7a-8fa6f5b9ff21
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-0cb55a63-3d41-8cbb-683e-d06a6d3e1cc4/test-blob-700ebf34-6e8a-1352-fbc7-5bf30a22dfe8

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
zEff7p83maCu5j84GHSqe/5Dgxk9JPD2uWE8Vrgd56lZjFoKIGQaLMEUXlr+gnPzlFVrKbsChqdX
6TQ++0LokP+V3owaoFqaKFdYKMaV+DftSMJjsr3uVwWysjcv3DF+LM1baKPn2fP60QFjqV3hwfH9
UbJ/hd5Cp4eGZ+0jakwm2fz4Oo+TBW/PaOC8i62n0fFGMYp+/qfvGcEcYXIF12a0PNBh6YdhakxD
sBz9hRza3pb83TjBp9pUCCHOd6P8ypF5B07dRehq5Mc+O06L8ZOkQYLcCPou8pX1DeBlkvOoRuaL
g37O/Zmtkvhwg2yMyRaNKjUhIMGXSxS45zgIBFLUlvRoAG4U1kTpLnYBvW8oaEPJ12i+hiUk8zhp
FRVgpY2mnOx4JMmoeVPwN/JKlY6kkH/0PizpFg/OQww2q8AviYjoWyCCsER6IF4UzU4y2V2pxYSV
a2ZhvIbdqeG9cs2SwK5qYjptIeA7eh3N1UjAm2mujOU7mR0hh56ZpQZjva6RgQ2gyHcjPKOkWvBI
k+c+HA13DuXoVyeRSNqb03zZ171vPFM7INPxi1BClz4t2PO3W4j5667IqSrlD4Cch2gnyoIy2VeT
A/w6hYOVpb/oZHDn5Hjz4OwPppMpVRFTVAPoG827+v+bJFiMvmUqMwNr/asQtaPwM+mWIzLEaq3q
5jCArYnyLGlwS8AfZiGG5HOPvVdmQ59f9+fjJdbM17mqodc0qoZ5eNFBn2nj0MzHDz6/NKxWhKOR
ILWiDwaSpHQGdcRJUTrtFkWFJaM1fCcaGxWYDaMMVB00o4rQ12nKrvr13FoIfb4E0h5n0F//W6ON
h/Px+pfR+SGnFa6vHD7bunapQJ/MEp1XkzqFpYO9NEfmQ1B22bRjJOM5YGgPVLXfixXpVhsEwHRV
mWZcTFSe6eFmydnuZeHCRRy8k7I1Rz6FpRlt1N0s4YLbID9NB9iOm3aGqIvc8CY0JhH+SC3CH1Io
16Y6MBUEOedXE0ShdT5DLfc8r56zqLXzOK7MLZlUGQHtJS8yVGphgm6jhd3ik7HSuxo1hnCzdC7x
R/dnOAxNAvpDs08OEdmN2i0vDyPXEKX8+XJ/HpOROrABQAxz+kliVYLjn99hw6lBqKtCg2QLGTZR
aj6ZzuNmsnifDdDMGeDjzbmg9HHFmjXJPnbnTrdL9SfWIY8LyYeffOxnwrXYdI7KX7aqayXEjM8I
0JBtf2PBUxip9vhQ1wMyAXiEXtiA8MnnHO4BoIoCEZXAAvj3Mv2JpW6dLn6WeoeyeGqsPy32iODG
hWJ1v7KOp+RikNULO896+7hq4sFLUaJmTyggVdFnyXoYMKyaE+a7D4eZM+mypj2bMkN0jKYeew==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D0E9FAAF6C8460"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
content-md5: 8xjRmNTgKTaGUB1yNicb0w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ad7a96f5-f202-4fd1-a161-5b3d09c9f69a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-0cb55a63-3d41-8cbb-683e-d06a6d3e1cc4/test-blob-700ebf34-6e8a-1352-fbc7-5bf30a22dfe8

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
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1D0E9FAAF6C8460"
content-md5: 8xjRmNTgKTaGUB1yNicb0w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d2e70410-f213-4016-b243-fbcab884865d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:36 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-0cb55a63-3d41-8cbb-683e-d06a6d3e1cc4/test-blob-700ebf34-6e8a-1352-fbc7-5bf30a22dfe8

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x1D0E9FAAF6C8460"
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
x-ms-request-id: cfebcff8-0911-4829-908a-218363706b7b
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:36 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-0cb55a63-3d41-8cbb-683e-d06a6d3e1cc4?restype=container

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
x-ms-request-id: baddd735-ff52-47e9-adf2-5b336e760ab7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-3ad3aed2-1db1-b4b9-a8eb-84238df23dd3?restype=container

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
etag: "0x1D9E58533E6DBE0"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ffe3fd4e-9a55-43f7-86b8-3bf6ad9994c9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-3ad3aed2-1db1-b4b9-a8eb-84238df23dd3/test-blob-76155710-7a6a-f7ee-0b59-5ca3ca6e5628

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
+rV42wV1MaE0hjgiV7MyeFJbot3T48kWBlrIn+kvhQiKh/hVqQTiXX0xBSvlllz0uAzQMVBfABbr
YtSqrZG4BQEvl9C63M5NeEVfod6eMHD90+bcXlO3KobiakcwOK/sef8ptf6MOtw9g7kL/184TDFk
rdmr26eteG1K2HKHHECVcyfedHpxcZkKntuarComqh0VzIrWQJ5YfD2RQWFptmZ4dYw4Wti38jxA
oTzME8tCJC5VcVC2vzKJhfg83y83oeh0Ijae7lBFXtlOlZ9hi2hyTh0zE0UWwrZZrtTfehIMCQBU
V/GUpDXeEBN2ZyqTKPmPypASA42iXl9/RD97ZePGQoufDDR33arnVQMxn1qMxYbaULCB+gZysfmR
FF/2YqsvsCWe9BvFF+zmKq2KcL8F8365oRQyREeELFs65shK8fNXAu817tFrFDjDm9BZ6EA6jCHg
PcCW/GvdGci/izEjmzm5Mm7QzwStTY3cb6l3K0QaAFmnarMywQWDV9QIq4kGnwCWn7XRabwcMu8z
uY3CZu2DpYrYfDGFhnBpTHgwpKID1c+p4IyOSJacijfE/wd3wfDnhAX+LiPPERhEaB1E7I1ML+S+
GYVg9Vz0O/L5wIdp8ouHSR+cBaas2c50SuB5WJ6peM8iuahqho+pCvMw1VGQ23aRvKNtryo+Ej+3
7Kp8euNUUEi3RjjjHMOQ8/qzewR9429p55v6O8il5KZos5nkLI8Q3IUI2ZQ9rqDf3bwvi5c6OQg7
EpNIWRR/EmGSemgpq8Zqo55/dAraLDj6G10MdlkPLnqQqRn8yINwiMYzqzQ3tjL1xOf4u8T+YeZa
TT62c5sHgkzumQKtbtobDutDp4EEw2QqFrFxF3K2kkcyonpEuhUrKyjnSR0wR1YM3K3YurplVYrZ
i1zplmvZOAa6estg1lPWGHxYHHlH+s5bZDrF3deNzUzway64QZW8DREWds2KrAZZAaI+DDkQkZGN
jjExFFovLa1/b2slHtfmnA5nMYQB0bgza9w1T8AS4NmdKrNkivm35kggCj2bNOPKV3AqqGANjLx5
/ql++d7sbI+RiPQkghEVsEo74Md6mDf5avdQ6Dd5kJ3264xPOe1qNJ2tCazuptReFfcV0av1/mVy
hY/mnIRYF/dWLZeFxXdd0KwpzI6KCsMj8tM/Y77xAewn3bRdhJcZVfK0mHk82E+AuAH/yzHW53rL
wqqxGLM5ZCurXujD/0sUEHec1nJK5hmDv6u88ja7UPY5ksLtZz0+ejNNkXpnvLi16ru6OhAIgNuQ
LVkIfXL17w7xim2JJ6g6Xlw+/FWeHALzBgh6ARblMBHmXDrjNv3BWKFsdTJLLMMSgNu0yYSG8Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21E261D9A5C1DC0"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
content-md5: p9+AxoV6JfiKjmSH6O0Whg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af8e529a-87a0-4f09-8389-ac71b52c2cb4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-3ad3aed2-1db1-b4b9-a8eb-84238df23dd3/test-blob-76155710-7a6a-f7ee-0b59-5ca3ca6e5628

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-id: ebfe971b-345b-fdf1-9658-16fa9e97dde3
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
x-ms-request-id: 90ee0491-6f33-422a-bf94-9e1ab60884de
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:37 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-3ad3aed2-1db1-b4b9-a8eb-84238df23dd3?restype=container

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
x-ms-request-id: b582af51-e03b-4308-bc91-b14effdb8efb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

