## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6d75136d-a427-fde9-63de-801b03ab46bf?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetPropertiesAsync_AccessConditionsFail
now: 2026-11-12T00:46:53.0127391+00:00

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
etag: "0x2584D908D0D5740"
last-modified: Thu, 12 Nov 2026 00:46:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 98274ad5-57f9-4c4d-bf5c-90a6b1bfdd40
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6d75136d-a427-fde9-63de-801b03ab46bf/test-blob-eb243a3b-442e-fcfa-f2ff-3ae7ff0dc0b2

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
orTuwPbTkv8xGJwIdznF8+CWqkUHgmopGXh7KGkC/lYdzXlOvIXJZ6cluRWn8YS4OUcGaWJ6qiBK
xaZ9WGqVLxpG6qnAdjdazEKd4chVgSf0wu4h/JXzoiJZA/bfTA88kIr6YAba98IQrJwg3clX9UN/
iZV8dDOFU0iGZ3NAe38yYFE9WiEgGcsrEE/40sVZAQ6zX8N6wBtXdQ2+U5BP0DAc7Xx3GZoiXm/K
UGPjjICCLWZkjRu8uKA15uUTYsU620Af3OVJ4udzkAFTr2+4dOiMPCYp6kIUYDTbQjO1Dvyqj3Ui
w7CbOUt/8fwaaAgxfXH8hiaeEfD+Cnywbp+zvYEEqSD6lbA48QLbqvlF+fcrqsTBuYjWC36EJLg0
6sqryzN7Fr/oNufBw5Ujw2b3uBCEhcPb8gT5Lp2idnH4BAc4MN/GyuM3Q3PdAPXys0gXjGynr2UH
0NkvgegiRcB1yL6N65OHMe0tTUFP/fEOBntVi+kFUFWiMF8Glkj7Ff2zZzc2Zci0kFt+emIjt9Ln
IXtszLrWcHhp67ozgJqkMTdEnJW516GyoPqNhtXyfnmNHnXNjkhC3Pe+zXkNgQ/A2Ugq3xs9LUrZ
uiy/SeqidmxBpmIl16PuAcCe+gkopR/rzKyNyJ9dUPEr89QcgpMMHFYMzNqtmwKlO91bnjJAsRQN
1Hw9Fa7N41Zw+uPO0n4skd6zG9lEPjGq6IzBArG+60K/Dq4XzwanP+iEPKEe1mlfLgxTjJY7yZVK
ky0iC+Cksg6hD8PQFcLYC9zwvwKPixIjYtSlal6shEUYzDzZhTMH4IqSfceljxhKe4G5SgmTugcb
/6kM/0ew9Ip+t0mG/4Wo6d94/Q5LfdO7W+/d8jk8hRE1voaK+uBC4og8J9jPw3z7EWEqG7340IHW
UaRY0wJRQTE4UUD/He7+NRuGDlb67Jdy4eDXEmlTPO4FtKk86g6F6+Wml3I7/PNzK+ahcsEq22QM
5fEheS/H5BRS+WlEwUsMACNwVFUlN+XsZOaDssos2thFMAUdZHK23rNd6AKKL2mblXKeuYYP564L
NBRIRDJKJh+Q/pFF7puxunahyE7jYjR86BxYjiBSNUhWEi9dbpqBEsLj+TDYVabW7f8QbR9fKNHg
y1sV8pf+PslI79xsU0zcILWL/2kEpJN2gqEhQscp9+ldfaI+ayAr5Lpnj2XJaZmzM0xp0yho2yfH
n3D23fwBHvfzD9apnbWUYBqvnRQtrBgHbQ57vyPA9aF7d8ywNQe+ZXBt1lrDCZaX1XMOuD4SmfJX
7m/thl/UMhk0LiXo5CsT8Dejv9a+RGN44+qvsjxjaN3ZWEaX0N8RmaNAjttwr/FH+8cHbtkcmQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2340A88C772CBC0"
last-modified: Thu, 12 Nov 2026 00:46:53 GMT
content-md5: sA9N3zynxvgfeJUawPhR5g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ad459025-1d6e-46f8-af18-335647328cb6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-6d75136d-a427-fde9-63de-801b03ab46bf/test-blob-eb243a3b-442e-fcfa-f2ff-3ae7ff0dc0b2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:46:53 GMT
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
x-ms-request-id: 6bc6becb-c20b-482b-916a-0d9d9df87e28
Date: Thu, 12 Nov 2026 00:46:53 GMT
```
### Response body recorded for playback (304: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-6d75136d-a427-fde9-63de-801b03ab46bf?restype=container

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
x-ms-request-id: 89f7d815-41fd-46b8-bf6d-26b2ba36cbff
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-a2750caa-2474-dd80-d1c5-480e8be47b20?restype=container

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
etag: "0x2715EBCA198B2E0"
last-modified: Thu, 12 Nov 2026 00:46:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dc719c4c-de06-4d91-ad0a-7170d5418535
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-a2750caa-2474-dd80-d1c5-480e8be47b20/test-blob-32269257-b57d-0787-34f9-67b7745bfa04

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
vb+ci1o8nHQjY70WKKBmY4Cnr9yy6hz0hG1ue73JaHXKQ1HMSO/FG/WyDhn4cN+TkwQ2zawdUdKi
qAfszSG3WvpHTOROmRqQ4ZTnANwC/BOO2ui4kpvJrPJ+KaDn2U3T+7MesCT6RfnppusYNlH2n6v0
XvM5/shffZ/y0HB6qQhGEwQo40vuk5XuzuywsXagiIn083pZmvzrvzKFCHSIb/3i0SNMzrtgBcpd
SjDcrswpUUfnhrWN7HkIPCQYaYsgZl/vzeBTVLnNk+2w/FDMDxBmXLYsoehHVOSpRJKXSJw+PeTR
7eDr1v2OGfLH3fApOywTsQ3V88R2p3n8qQ8nNUtRcr9s+yIveoa4nof1f3fzgAhlg5aOaEkfWkVn
7yzuZuOndmoxvEAK5DaHHVU8gCgBCCgGwrK0wwl1TKDdx4tZyjikTgkMwsTIW59fB0v04todZucE
56Qx8rJhu3CfLRyrLVMdmDIe9UZkPWcSVbu+gWrGv2GjVOKTcltWqwZTKS2DtNn310mo/nGgn6k9
H533ojoF2W26B9hwiSbWyElAEBQ5jqDixqogHcHwA7Q5VlO9XwjLTVDAyawAh00j0jYnYI+VA5D8
FdyP5buryQQjNzLSGGlBdMLDeMX04T9c/EuLyaIlpFPDwUksPGiVFP+o3FAbUbnM5uzN0YrKCDOc
M+lvIABh/pLfD1cfFDhaLmTFSwTvQKqSvuO2WNPI+LgVjwh+JvT/Rt69PEFirdGzcqImBbwvrfI+
3GEcqqa/FhefCYUv2whvxQUmMQRpMBESA+UwofL75uIWQEmS4ps4/SUqw6NLhJeatz+3CHvt1axQ
CqfAj3UkoyKjGZu/3OJp7jTePm1txn5OluqyQ91mKGqcQtj0d26wBR+BqGv829pdThpHD5Y/40Qp
cviLcV9FPPAwIpoKdHfFLjlN7B0TUrsPVfXDHxnUXF+TywR1JJPAO2t6y7g/UtmjgeBd8vYmFSA9
exxqgR3XXMY7dqlyUAmljbCymIYCzwIbIJ04dmpobbXjN6l3VrpOo2/xBNwvMDHWt2VGdHyaOqsZ
TmB/nuVb0wn0jhhgLjb1Y/UXEMsm7PBsYr8FIfg5Sfz9XQhZzgWJljHTO6EZdokuUBCHging8mFw
EzsmVrEQu0QbYtAunJTwjXqZU7BOUus11tDnssfSHWum6bvJYz+Aw4Bc/RO5/7R8lvSvRp+wIsBP
8H/gKAl9SEVliLPZJyo6GZAw8VXYe9ccaxvSI9bL9cb6eXLAn5p337XOVHcBo2/KdC0PgDBrd3Wo
xLztqiVumZLs3q23enn1uRKgCSdfGsirB6+pvHWWjwH9GNveiTSPX7vkFcTBE/mzGccey21NSA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24CC878F9A30F20"
last-modified: Thu, 12 Nov 2026 00:46:53 GMT
content-md5: 91eTP3Q2pJSIRiSvZp8gew==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d8bbb4b1-ea06-49ed-bbbb-900fbf5d3572
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: HEAD /devstoreaccount1/test-container-a2750caa-2474-dd80-d1c5-480e8be47b20/test-blob-32269257-b57d-0787-34f9-67b7745bfa04

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:46:53 GMT
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
x-ms-request-id: 7c5b5ef0-9b40-47b2-9b32-2c00650f732a
Date: Thu, 12 Nov 2026 00:46:53 GMT
```
### Response body recorded for playback (412: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-a2750caa-2474-dd80-d1c5-480e8be47b20?restype=container

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
x-ms-request-id: 669f27c2-d598-4970-b706-878bbda09782
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-a342f3a9-c576-1ddd-564e-acb9629d172f?restype=container

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
etag: "0x26AE496289E3040"
last-modified: Thu, 12 Nov 2026 00:46:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0f5ce57a-c0d4-4c20-83d0-48fa8ce155c7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-a342f3a9-c576-1ddd-564e-acb9629d172f/test-blob-6caa10dd-057b-e903-f4b5-f5a2ae77c393

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
r88y6keRGZrdx792FVqXFQKXQLvD4c2k8Fiuwc86b96KGAmSayzoTPYQjrRFjdSaHeCgFzcI0M4C
jfnu4ljKo1fh6/xQBKnVrvTEs1MZX2KEFKPvmlingkg7j94y+mmeRepcZKLXSRk2ymhCRB166S6X
as212wn/Omm0FXTKorOKJm1ovPrArMqKuM/vZD0rwKawm4+b6GrhXCo5IzSkaye1tx2vEiwz1r4D
KyI5ENUriFTOGgcj7z0ChmDQh4iW5kynOqwfe655fMTRmL1IqExUDpvg1VAgkcjgrIvMY081bUXV
kdYoCwymVZ5CUlaAut4Te3nttRD7hqjkP88irBl0myt4chZ2KwKOOX+y3j5xYPGtuefWSLc02Qst
RMs9hKmEzbYrB0jHnVB2XnyRSKhpct/ddPMynlN0Q5gLSeY2UbXWLhGIRlip5RyWYOk6o5Biw9Ls
Xw+1Ui9jt8OwvFNpPw3HuhqW4SyGNI7Xmz1pOaAHqIUUSvGlINviJI6U+SnILSHcc+h2zOGlZSuB
3rbx+n4jqBPOVPQcIZk+tL2d8jtkD20cjcW4kdyjbuXGJEIk8CoQcVAW+dkswFJONxckCHPwHM9J
1Gy4ahY2KuUPVf1XGcOSjIDqThWU8M1zaVrEfmVy1gdy2xu9VwY5387zHGpU9h1UknzyBc66tOSf
RQG8cqx/nX/25T6n1TR6sG5GodNiHnI8cOzpf9A5uCc2HRIFfW0ic3/qXhHfrLxId1RfcxMRPCaO
fwG/lh2vvC0WcLcidTMBIy1TeMBhXcQvoQh72UQUJeDrdv1rY91hO6HkyDsFJQIhXVDlvcRlLSI8
j/QVM+PoAkvXNv41lcBQ8jwffZSJKnsFWnvzLmcbhknbLtPoTAi++8bvLe8D7MiQlcuHRq+Ns2V5
D9ln9dPku7C1WWbsZ6Y0YYLOmfyLAm2zY5mblD+ZTXtubzwuVgbyCnI/TpJhoy0lUuQtvhlo7Q1r
s5E5SSdwGwzrfvdqBQp83I+KTLTbUsBsdUFbbI5hBYIuw6J0uMFKzzKGdSQ1u03ZseKK3aFZkGHQ
zdPmFK59iXh1O0JoByPNP3yBVNybNrrzgbus1ijg1TNBpOruZLqDCeusv4AKcaq+vZ0l1zuENZcZ
8pPz0bNQlWYPJmI539vB/kvw73Y66Q8R7RmKu/33vG9T1XInjzg4XCoZ+0pHhd3CY9nwk0Ug3gmD
4uOZxdlpF2rz5glomW4TuJNMIO3EyWg7yFgjBygpMvZppK1Un5dQsOPgU5/TWslr3Nuy1L4bvhh7
XfyBRRBByrMT/vXBvhj8+3AK5HbIZ26OuCpNd144TuWU2UKazmvSn4nrwFvTqR3CtdhOEdqisg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x208659AB39A9BC0"
last-modified: Thu, 12 Nov 2026 00:46:53 GMT
content-md5: gjb/hWa2WRSnWOCnE+p3BQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7c373c4a-cdf3-4a2a-a699-e6b751974346
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: HEAD /devstoreaccount1/test-container-a342f3a9-c576-1ddd-564e-acb9629d172f/test-blob-6caa10dd-057b-e903-f4b5-f5a2ae77c393

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
x-ms-request-id: 6dbfdae3-0547-4abe-b9c1-b3f99dfdd1e2
Date: Thu, 12 Nov 2026 00:46:53 GMT
```
### Response body recorded for playback (412: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-a342f3a9-c576-1ddd-564e-acb9629d172f?restype=container

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
x-ms-request-id: 04f9bcc5-a94a-4181-aba4-2742543fa161
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-8cf38ef5-f4e6-5452-dbb0-0f2ce5d6622c?restype=container

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
etag: "0x1E51DE8625B3B50"
last-modified: Thu, 12 Nov 2026 00:46:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b528d2f1-6309-4f28-8f66-161d91b16f21
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-8cf38ef5-f4e6-5452-dbb0-0f2ce5d6622c/test-blob-ec443704-a7dd-ba12-0e0c-8ac186ea3c0b

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
8iZMC9vf7Ks2luWqw3047FOrSdqVtdVNezh92WmQzvBzBDm/iVZRJUqZtUbCZ/aR1J5t2qBidT1R
/o+iYRNBpsf0N79DeGL9WiSP/P+OixRC7ATLIvRQEY78bYrGrsM3Vw9+zTA3TVs8cIB803g+wnN7
YHUOdoPTpCYwRwvXN6tgWKTvEL7jCp6pj7J00z4VvqsXSk1OKeGMqygKBgZQZDnUHHvTTrK0mFXW
ZObQX9HoGohfv+xeEi7DYmSV2QSYWCp5n7fDQW/5Y7L3d8T6vEtXIut98aVMdgpMEOxNH75RPgy8
Vr8ZJdgYZlw5ZppqyKYZPbYYGmeFLCmtdjGDq0Tzpjm4PmWLPf0SZIpJEg9v4UdGNOEHOCOkNymW
bK6nlLoYRsBhsopAjf+5BrXcOxoZPZXpPXdi7G0WEwY79NFPa9DQMMxPDi+9BabhTjJtx/sPfS8Y
vVdCtVpSS56DBJguapvlCwpNyS9mLDjRgZ07qEsLLHehNq14jnty/cOQOQAOsuOWh7zwwbQAspEf
cDO8FqJTeNghjTTubX2P28tr1vI3w8+6pSGPGmrDoYQbWR1ItuchPcEo7CWvqBo+YebolNyf561k
AXGAw11uXeuw0hNfRiTkSpkwDtaqCvwHULmD2wyne3Fw5LR1oHlkuo45/9YG3xrCA0pDb9jWuvZ1
eXKj6oLeCFeh7mJvb6kfy1RHcAsmAHGewdfCZAyZmSq+ACYHwM8LWvd+ZfC4UpOgJKOEj0nrTnkB
BCmrHKNKCFU3sW6DFwqEOxUUp5qA5m5DIkBoFArg07GtBrymYD5TNF2bgKElHQyY/1M01qfegB26
Z/pj4vNLV9691RFO3tvXwHM95WbNHgQ0zxW2rPwJzoWe6/lD8FFpTynDZ0f6SiB4XRU0oZq37Ej1
LhLelKrhsweLsPLhk9Ah05U9Cra9OYX0Pk/m1S3r5v+wTsE+i7t+4bQ/bpoulslFE80EeeKRN/SN
6VVb+t7aoMnzMUQP4kjavygCfcrrxqiFocJf5mwcHhbMsaFlIufVZc7QOmWENTCFKbq5j7opoiOt
1Vgcerlc1xIuQjGndZxBLRf8GotDAGuR2ryyYo9cog99t02OueoUdGNSVvP/3bQeeGKiLYeYatTs
iqD8qnSC0p8hKb1Os3Mt56Yn8Kp4kvwIk+otuXWH5E14oS5KF8rv0INU3bP2z8TudUXhcHkqdPij
9BaKVBgqmUVw1hFF48/cOCAmI7RJEcQlP0QvpnPTTi01piOzZXtrKkNuhvmyqJJ2BThZA1BEWuNS
ZBXU+vPRnIfkEDysKNOlu/lw2orKc5ayuaE7eUrc8Es/YABlli9QnepxzphVydxktEhW1IBYiA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x257C1359D277BE0"
last-modified: Thu, 12 Nov 2026 00:46:53 GMT
content-md5: CmcFs2lnPbVkf8odkhXo9A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b2d00c1-3d77-4589-9ec6-3c01ba461738
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-8cf38ef5-f4e6-5452-dbb0-0f2ce5d6622c/test-blob-ec443704-a7dd-ba12-0e0c-8ac186ea3c0b

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
last-modified: Thu, 12 Nov 2026 00:46:53 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:53 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x257C1359D277BE0"
content-md5: CmcFs2lnPbVkf8odkhXo9A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 35faf3d0-84d8-45fc-9c26-dfd186031cfd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:53 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:53 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: HEAD /devstoreaccount1/test-container-8cf38ef5-f4e6-5452-dbb0-0f2ce5d6622c/test-blob-ec443704-a7dd-ba12-0e0c-8ac186ea3c0b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x257C1359D277BE0"
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
x-ms-request-id: d811ffde-0f1f-427e-8334-d20ded3958cd
Date: Thu, 12 Nov 2026 00:46:53 GMT
```
### Response body recorded for playback (304: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-8cf38ef5-f4e6-5452-dbb0-0f2ce5d6622c?restype=container

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
x-ms-request-id: 5c1ec6fc-6d87-4dfa-98fd-dd136a08eaf4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-41217ef1-9552-3d22-081f-f16cc7d23f24?restype=container

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
etag: "0x21506ABC4AF1400"
last-modified: Thu, 12 Nov 2026 00:46:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 03bd567c-1341-4d83-b60f-2046163a4806
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-41217ef1-9552-3d22-081f-f16cc7d23f24/test-blob-a03c20ca-a458-5dfe-efc4-d6c502851ccb

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
59gP53Tu/QjHNMV4ZFwUknUjjLRDuC9MgMRRjb5dO4IDJYXvwlev2yI02CTfhvmSsERP3vlohy6p
w2ewnHBJavlDdD7XJc8dc7CRDt8KbfnLv916DVyIm51WRf/w/z+y624qmxG6u4t0MmpI1nlOnlZt
5N2TzlycutiggN/QLHRx3iJx4NHoEANRBdvyQMUkB6apgxthHxwRjuA4GjqrpAX21/dW3b6EhNPZ
QciBqnoTfHg5JqlYD78FYFHxr/bJpmDV+2nNzSroJP5Hh95Uj+NmJZ7BcX1bncc4UH1sk9XcEJpn
rK4RRa5OUQKqEIfhsdBuiopYBzTjeV6ilXyse5Epa3dE7OM0Vd/wcyB7sYw/V5+s/ghLhAllhDJQ
b7AxodVxgaUQncXtOTWqaJMUZ8jSYj7d/32I3eZt3mew5OYuvtFKCS/mLrrZv8TSoBx1URxpfQxy
U6FY6KO/o75ePFRPe6nCyV6Y6zSDBEC4tT3K+I1KRmfZvGow8iCMJ4v7eoJwgiRys4i+0ZLY7k9h
nzJm9KsxE/Xtdr8/kdY9DMOoiIm9SDMYWEQEi3XUAc0bzlLuJTPgymaNggxlMyGxgcTOL2bFo1f/
TpxmLIh/GHTyI8OET+aQyL0iMMUmsiQiUwqxBtJmVSr77teWeZ7eDWmYcg9eLTLdPWapo3OR2Zt3
RNh9zhKijM6YiWAP+U8fQyJbjkAVxCbX08hrvLG3aRU7HzXFYD5X9uVAxqTRzkMXiV9QNUpaYX+y
pftKNs8d4B9L09oZWuPjBJha1f6CBgWEVDNSZjPK4L21ErtDDL8WI+WEhvpp/S98bTGyAIyBMJ/1
xeGcynrsgfIdZEcon/fYRLEY/YALG1YD1fkBF+AwM+IbTkbdeVhrlwUHS5nnVM052rzbaDIf6qqL
mPSA6mkS7DBlDFGw+spZrWV6BM+9G4EsyD0kVcqv/GOcUuBj6q2c9F5ogkd7id/ygbvNpObazX1z
VCIr7pdlthDtFKfp9cO43g9xVJk5sD9eMdMP4ld9wYRj8JaKcAbHA8w3jXQ3CIz4FMXWaXnkOaPj
zbzDVtS5b1IjhQQsLW4JqVDMAiPKJilGF82Rp1cLf7bzp6NJA634fh0iFIOHy+dXzb8oFzeAGaeT
fT8GJ8j6FwZOOYbKv6aj1IMFqBGmvkvmOdqY4md+c478toZu8VZUJ/x8OZJgjA0ZhEKzenCV7b7z
IO3uYjWez8b3zgkgNeMtsIAUKYW5ha3Mf10lyvgdZsjIetBoZsTH3mnLaL4D+E5fhsrvgMM4OptA
IePYeQXO2mdAWLsSxEq8TUsc7RzvyYYOxUQuLeYFj0A1KETh7mRj/Y5WwqCTTcJ/MzJ4HEx/UQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22B2435AF38BD20"
last-modified: Thu, 12 Nov 2026 00:46:53 GMT
content-md5: dAVyvMzPt60ShM/qvyQ2Bg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a6072bde-e032-4114-8b65-23149838cdca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: HEAD /devstoreaccount1/test-container-41217ef1-9552-3d22-081f-f16cc7d23f24/test-blob-a03c20ca-a458-5dfe-efc4-d6c502851ccb

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-id: 00161ba3-f7e6-c855-9e26-56e5802c6d98
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
x-ms-request-id: 7f346283-c758-4b3e-865d-c61ef6d1e5e8
Date: Thu, 12 Nov 2026 00:46:53 GMT
```
### Response body recorded for playback (412: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-41217ef1-9552-3d22-081f-f16cc7d23f24?restype=container

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
x-ms-request-id: 5c27a819-9780-40df-8b03-a1d121c5665a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

