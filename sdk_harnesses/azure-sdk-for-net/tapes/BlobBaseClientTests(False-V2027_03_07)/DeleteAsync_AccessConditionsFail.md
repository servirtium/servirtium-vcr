## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3d333579-8ad6-488e-f7af-1e50eeaeba4c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DeleteAsync_AccessConditionsFail
now: 2026-11-12T00:46:30.7085902+00:00

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
etag: "0x1D3F1325C4BFB10"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f9780a5f-d90d-4609-8116-9dc50a4484a9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3d333579-8ad6-488e-f7af-1e50eeaeba4c/test-blob-70dc5182-4e22-a3d1-58c1-9ea8ddcdb445

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
WMwIx0tHMppzSEP1cqBH4ca2iHIRoOkqZJDlFezlayr72PcipvMAOh9C/dkL2zC3ebziJkVCNLji
3mK7YhyujtwZ+pmoJTvTtk1Sz6MPH4hfLZsvAkXkuKQ/P8iQRdgDk2/88uGWD1SAD3D48GUV077a
WzSBfouXNEL1aeVzQnB0TzszEy2nyR5GrvPV7Mc/KWwJtumjgRTjZb2eoaVvDMz/g6Ep4b+RMpIW
Os+Xwkd6tT94aoyH0c0mUK1vCCh416Im1WkmFUisd4NXjUdES6J2JOtm9qJAeLLTA5ESIipqnWMt
cezdU6D3zPIIMEOG4QQL+OQ8EuD/5V23UhG3mlRZ7O/jF9q1mNBLbiqvN0duTSKNBylFLYuCLYuP
JgGOQDGer0NUosoqVWAT8aO2UK0VSQXvKZMrE79kYelOJnHPvC74EYgEGatYY7LJMTznzN3ded37
nhaecpyE8EDg2y7uRDR1vT8lEC9Zl8bhYeGCfJQMcKyU0x4XWp7sgClqd4eD2u0IcQ+duGitogdP
vBG6AXOs1GuBWXEWXWKhOZAF7h8/XYb0egqFbrhD5zEWyJ2MMX62vqMbAYF78RSs/H7Yp7PnEF+K
xodoJmWzPnJA/5XEFAgSTzB8I1wFeIj22HI5az99Lrc+Amr2Tpc+aMMPO/F+5+d1xViCa+wChU7+
cU7yedIywtHdhhKdGwCZPbuZ9jyWePCLw6Xn+8LLPHwc99xJS+7w3HkgoGHV2KlX6S0waY8RZ/ld
Z7YsS8cOEkqVgCMkUPHNqRnCdtePtev8jxGUmtLtCo/j6+Q3w5CyEY4XP1eFM5k8Yr91TvEhzbHL
MLy1end3qHWTQGQNleWIEGVJeHWTdlx4WDcSd7yewR0zbJLU/ZcWn5fh8fI1L8za7D6M2FU7N7pg
PSFAZDC59X9G2SlTtBPNMtjesYRpQylqOIt9EejI9zXYdL911jtnJ/xz7lWjhjgrvqZ9XYU19vr4
1SulPOOWfuLzej9TWFycdoqI9VTUxrJSUVNCS5qvo37FfAAQwesY3HBzrwz52GVJ4Ob7rAClJA55
U+qQVDNHQ9fBjdtbjLSebxnkYRelWHnt+Gu0tPZ9H1jylm4AiIg9K2s0OEqK7VMxXDznwcP30/px
olvIk4/gQ22DafVGneeQpzWrcSAuYwsXgle5lV6V+sN0j+UtdZjcVPTdBoRd679VVxmNTGLZQj9Q
sBA3Jq4P7m8x0Q0BYzKdzhwsUVyGuZeYZD5EB65hmk2m3MSHpS1FzhgULBmxU/Tn8H1FrfDiyfZ5
n8JwyubA0DbAWoZtFinv5oNEcY195hBJXRYxG+1cxBPNDgVr1QMxVFvi8fhuedpUVsZtnldp+w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x266AF7091479460"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
content-md5: LMEtnCaMfhE6RBTg3n1ryA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 16693d92-df97-4149-87ef-0c95258c951f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-3d333579-8ad6-488e-f7af-1e50eeaeba4c/test-blob-70dc5182-4e22-a3d1-58c1-9ea8ddcdb445

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:46:30 GMT
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
x-ms-request-id: 5969c29f-8e81-4f54-b2b5-753f24315d23
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:30 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-3d333579-8ad6-488e-f7af-1e50eeaeba4c?restype=container

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
x-ms-request-id: 32d65e6c-55b3-44e4-94af-d0766b436edc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-6d26b1b9-8fcf-49b4-6396-72a007238310?restype=container

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
etag: "0x1C571F16D304F70"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cc4c2436-3f99-4d28-9ba1-d3a5c73f9c7f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-6d26b1b9-8fcf-49b4-6396-72a007238310/test-blob-321d127f-f49b-db17-e33c-dcc526ef25bc

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
ZBJMua+WYcWmmY5i+9nSMNK27Ys5N2DEmkqKk7LvI3Rxtjz018ph6bBYiwJltd8JaqzycAGZgiyy
hx9kDM4St3Ua8EWd3VkIVATb4axeXuRqgCgF/bNy1zMPQk+q/NzhRdSMS8SabIxT6Rv8vqCAVCk6
+YumDLnBpxkRjpsKXVcn+ZzY0RMg0BSbshOYdhiTju0mcAJROzgayqSqiN7xSYvD1MQEqIMVGSl3
ClqmKTABfv+t4+1U1r5jvgZvdUg2qmmI1KJTjuZqEFfZ2THedKBzqQreRGWebv0Goep8pqPgQWDw
HVWOre8ZQ9OVe/2NhEll/Mw+V2YD6WWkTe377mmz+JfR7lZL5PwaxQCRCPMAeR2gFqrXour67DPw
6l8BHVVq4oJmu5XzGhfPI5FlcuFxpNTQW9e/21at1gEiW/qcGKirJyVxmb2HrPyTB39YlXpSfkWL
McF9qwcsueWU0b8dMgrpuUq7AAoWSK7bLNPXVEGGz9y0EefmLnweRODY89s8ddR0b9svl307dOgT
on4zVWSjDQHiaSEjAorOnLwpPlXSnrb+YuRlVzdeeJz+04v96+97NeXaWgyzUG1QYfvBETaTQATI
NPKAPbbJg/CFJS//0LDMrQlw+ESpSxF2FfY8nWdlapKHNbf8+/cvENYcLis+UZBK9GQtI0jAHujg
Cii/jeaJH7qcd5v50LIRQOdtjR3mOMNm8agCOEdJxxbOG/HPb4Pvkw5xodr0USSxHOJhUpHL+tFk
WZs+hudyU7CFKrTBQdBjfvkOdZfpcp+DUBxl53WEAyEfahbosQwn/k0qbidw8NoR/tOXvIU6e+f7
ujXLDWw6ACeTode6es3s53ZJvwN4E2BBU+ih7Uab5O4v7PbXXPDh727/3E4DV4QGqtUP8bzjgqfV
ibqDmRPg97zoi43WFYqFZ8+VeDYRPftkmkJxjPMxS2pPAtI2XVVbH+WRG8z2MJVKiYnsTgpww0u/
H/7Qb2vJtj8jhxO4Twl5OllRfyIubWqtJwNqRPxf3j6Hdj5Xi7B5yGWN06mCkjl/cxSwH0MokLGU
IkdnXnFCw6jUMNjKIq+o17e9oZrAK5TJ6tHor7/6XuaNwmhoEmnzSg8ArWFhtFBlB0eMa+8W0/az
nnSfWhTo2dLyPWBGQMVNyVeLv34zaDaBgqd4bfP3du5ytXP1VO/7GNSPbnfwH8eCP6GXixN4gDY9
HthscGvf+8Zx04tRV3Voj6epo/m/kGPg9S5SX+va+jQ9tzUXjqdpsHOwf0s7MOgrL/trztw8fo10
jHo9jJvalthWFJ8/UAEAQPOFDhEXpMVGJjDvbyxYADmoogEsKyPY1ely5RxI6976a43ptnB8XQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x241E00DE2918B60"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
content-md5: YBIHv0eOcaNkMiqtXEKu1w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1857491e-64f8-4c30-a228-f8640f0c6f34
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: DELETE /devstoreaccount1/test-container-6d26b1b9-8fcf-49b4-6396-72a007238310/test-blob-321d127f-f49b-db17-e33c-dcc526ef25bc

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:46:30 GMT
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
x-ms-request-id: b6520f4f-8c20-46cc-a56a-f614d888beff
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:30 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-6d26b1b9-8fcf-49b4-6396-72a007238310?restype=container

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
x-ms-request-id: 78ba2f10-5564-4bb6-bfa2-2a2847dae354
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-66f6b5e8-eb6b-ac27-fe13-6697aeffd414?restype=container

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
etag: "0x1FFC8B842218020"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d12e2dc5-a58f-4e39-99c9-76e470eb22df
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-66f6b5e8-eb6b-ac27-fe13-6697aeffd414/test-blob-2838adcf-bea4-fda8-3a51-f4039e6f49c8

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
LEUZdjW8bOrBxucJ4VQw+5d5GQk3VLgpDPgrGfYjDo/JnWto5l3fE0BNZt7XnxzmIflsJFVAkNiN
72k8kVP0nrdYQETpxxU6mQbI6u3ZUm3cRff8t+k5iAyT2/bzooHtWcgnf1/Y/FnkMotPd6bqs538
X0tb9+bNHrc3VuweRvaE25AlstMOBEidGIVe6RBmqChZ90M2kWLhWWCnoKZtxuuUy5wWxQDJ7VsC
vd5gbzWm0a3ExE+zTUotQ1lyZmOhMFKayh50T+MnjwnnM9ODgOorAM/5qQGb4H1R6IKmV4f3YI2M
xqQWMoHJnDRGyxl2qcJvR2aTqIZQ/umhImZhgTiC79NG97pFFM5OLw3MVRRj2j+/Nw8gZLgGPMi7
dQ8baBv8xNxGMLIHKTKYRXh5g6jVPUgnoUkoYYsaP7rxip++Msby0JE4HamMuA7diB4/jLgf5jfH
88fR02JQK/H3FZ+S2RKxh7MXnCCemuk7S9hs2rIC0qNo9j7+IPwu5/G4lKJuSq8LjQUFCEkWKVje
loeK41A+9UP7KuLUsma26bQv5QZGzAEpYUyt/cpaUc3lIIl1owOgeZ9eciDMN9ueTh+U50NSl8mG
YYIEkfd4odgV7pLdQUWxjmtn6FnhXSlxDq+rxWmJk4i/70KBnOin5dFHtklIwQ3Z41jX669vpANY
koJIzdtui1oJHVICL/KDvwKImabgKUyh0eIRsqfZUEo+KAplXhj22CruPqS617NmVCus5wpdeGg1
p/z4XdmzMM0HwwfoHWHqkcB78euo5vkuql18LGg/4a+hL7cc/XtROw3XsxSsfTbKwlVJ4YZ9jcAC
yrJ7NgRkyOJXR+6qzpRFKrbd0TPlgS0nsmkS9f8pI6L3GjLI1QQJc+syVTZIIPTBBLfQoLyMHEiF
VISbUdLiLiNLsrRhfFWx1F5Isyz235J1UfFHWIPmav3qQ4CAbiEYTycS/G1AX4diH8teRGgcjnXy
Jf/gmtWgZUi2dznUMWY8L2ME4+IkNPJp5Ti3hyaUzbQLjUghN7RRcpYkiudNju5lIRQEF6uSzfEN
d7Wc6N4hIaqFyaMeGveus3FMAKoKHFdKUmYSj7UJeL9WFMD/tIq4A2g9yMVKRwccVWQ6Rc1GAltd
UpZ3D5H0fFDjxwU2r/7mlPxCzVOS/wpf9TlRzzPyDxJloWLzQPTWSEx0Z38B5aZlU7HQBDUHy1KL
GBlXo60d8bfz0Q2c81MIa4QHHZiLXQ+T63yBIQvdXtYQZyfafqWfV3XIDhSZyV9dyJmw/665ALsK
xLgwm8+sFnI3i4ssLezfaMUjw0/6+iEcI1lxLF4nVmds0LrsbrymG/eiYT7TMZqs0Zbolj1rDw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E9D3FB66CE73C0"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
content-md5: ugyYlvP4AsYI1SJ1CHg3YA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4c6f81db-e509-4639-a6bc-1cce2a57982a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: DELETE /devstoreaccount1/test-container-66f6b5e8-eb6b-ac27-fe13-6697aeffd414/test-blob-2838adcf-bea4-fda8-3a51-f4039e6f49c8

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
x-ms-request-id: 610dadc6-634d-485b-8d7f-4f9d2c81d536
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:30 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-66f6b5e8-eb6b-ac27-fe13-6697aeffd414?restype=container

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
x-ms-request-id: b1f74ea1-7a07-494c-a397-2ed6d68da328
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-781497ca-3a76-13e9-0f34-24bf5d32f2fa?restype=container

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
etag: "0x1E8E270C2708DC0"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d8e6d74e-1acd-4dc7-a03d-c1704e1e098a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-781497ca-3a76-13e9-0f34-24bf5d32f2fa/test-blob-57a77c09-9858-48e3-f1be-c55ac73fc02a

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
AMHvVVlEL+ENjlIJr3E9et+c3xmVE7cytMuGuHWPS9B0+b+cQpygxEzGSslG2piAgEp7K1+nlO0J
vaGNvndsfkKBlLWyoThC+xrMz8nt7NozBjgqEyBxzWXSkoX7EgbVWsuGxEXizd4SOTBE2sUjHNHH
Wrg/QWoiEMdQ4A+yRugT93X+ZieUUDhZGNrvLPOfrnW0NLhOlRhgZLN9ke3OX/JHMeJQJbWpMgp/
5SmQMuTUsTGZ/hIwxGFcnQJzFr5Li7joqPoQT4m/CgGtz7Dv0DHPqeC7NGHfF2yB84ezNRtMNFpw
p4rpxGKn2fMRg/Wxbc3QpG3dj1ZXCZGOj1sCDNXmYZpVfyin5eV+FFptzpN2z4a645CtbqUEGZ35
WzUGpc0eKiJaXO6kKb+IX3v76Tv9F7/VRylEOPL1UGWKromweG6NT6NxG3OYFrnRJQ8qCS9i+0R1
MF2k2fIvZQuIGXs12OYMbZmYi/tMPDFvchLiy0c1KLJFOkcR6HawQrZoEPw+m00oHZuWym9JKfMr
NWbfTJrDUvDI8J2f+4Uj50lE4yw0MNfFuq2sn15C+xFT5bMP0PUcpL0MdquwiSIWcuImBEXG9gSP
GpLsF7KShfSMTBbRFBdUKD9vKLorFTGLli17HPfLjO6vf7ViL40KefC2IzwLRF3L0dsGV85JYwVh
YICFFmn8wL8nIpRh8fixZK/KdfH0f1HPsEocxTUgZRyvAc8MhWKHuWJ95CLJaeDiVPIef+0UbOEv
tWYe4PuKB7x3se8ppN9MQruOdpsuBkZqOXBCAeUum5Xu3c/7aNln89xlUbjwubAS0jwyhvVFAK8g
tKaLRwbWSRVaO8cPUNriJ4O/yLWOeYDAMC+p/BWfqNwg27Qy3KzWjweiln3oA4FiT15yhjf6kTol
yhfXLUwAupLq7nQlsErX6Tmt6+MD1y2tRq22LSKlJkp5DBGU/mG6otvq/hQMPJ8Umpz9TKZXIvPq
KeefSY1wRcgqrKM5QurY8kkIGNkYoQkNopKFp9mjIukeqtV5G1hNerhM4ZD72liyJVpcTwoZ0Yfd
kqf76p3uhom5G5cUXtbxup0gzMB4Esc604J+R9LfBNlOnImxUpAaXVoGQr/AncaDa5Rt+ATHZH/f
wRYbbz+22ha9xsJNQGgMBW9lcs8IeTW7+tw9cgvVhjcJ0ZF6/+4aT2ioA9cDNSosYPOUYfKw10jg
X3RjeWcK5z+LRG7XkgaASiJnX3ZeuMSxEREYQCVEWPpJmZ95t9YAnhuXePG8Vc7sFBbQSHjRgqev
sWdW8qcaRut0jvlmBpNLZsFbx0DT9btDKywPcxCBdxb4ygZuqqt0fTEFR8fUhg2DheG2drtn2w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2224AF08CFDCFA0"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
content-md5: 95Xi5SVIDJMg4Mo9wEWPAA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c56cc7db-9ab0-42a8-aa61-f99e362a719a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-781497ca-3a76-13e9-0f34-24bf5d32f2fa/test-blob-57a77c09-9858-48e3-f1be-c55ac73fc02a

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
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2224AF08CFDCFA0"
content-md5: 95Xi5SVIDJMg4Mo9wEWPAA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 751dbd7a-55f2-4036-8bc7-f3f548648db5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:30 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: DELETE /devstoreaccount1/test-container-781497ca-3a76-13e9-0f34-24bf5d32f2fa/test-blob-57a77c09-9858-48e3-f1be-c55ac73fc02a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x2224AF08CFDCFA0"
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
x-ms-request-id: e07c8398-262e-44b6-a1b8-7d3b18d3e466
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:30 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-781497ca-3a76-13e9-0f34-24bf5d32f2fa?restype=container

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
x-ms-request-id: c060de10-9871-4eff-91dd-b4e92f763aa3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-c612acbc-0a7a-dbd2-f216-e26e3c8cdcbc?restype=container

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
etag: "0x1C4E5967D1FFF50"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1c4d249-90cc-49d9-bc4a-254da2cf1eda
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-c612acbc-0a7a-dbd2-f216-e26e3c8cdcbc/test-blob-0e49e615-adce-6ff3-a51f-8bee2eca005b

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
ke5Jwpjl+XJeKVSw8RjQ9qkloY9xWAwPuKMhWn7krScWh9xNQxokMO3XsKVYQ32MT5VFCClw6Tji
Ogn0w5/zeXstmWo7grKPAXCimqdntnUmlAvpnqX+pp2jawkQL2xN4zYqK6kSUczitga4zU+ReoOT
zi+UCtvVLvPMlxepftEEVbdxPIvME0M+BuieRdhOEvCGfGE9udlbVPy1Rrm1OTg1tHiYHz73x7vr
VQPyN+kafoUmIwFwxpzdFeiPF82KicywaZFgtvKyjrWmUmPVaB0Tmsc0jhY2xe7bugpVaLDtYcs3
Qs5YusiSc5RMynM4CKzKfHwFVfq2eaSihPvoXCUFuPCYniZPuuD/oRqB6vp6o7Fdiuwz6AvQgMgp
tTXMqhZvRhGDoGqFe8GbBbTfNI+pKOFKitE50c/kxx1eJQWrM/cEEqPp9gNG1w8rmOJX8Ew5gIxU
giBENnVBntlNJ1a78NK92yLsvzHdA7LCDTnsjdbQJaR4V7HXv9stp1gq+a+5b6cQmRUqTMBadn5t
gig8VRACfAKxQpkh5hxGvhjZswkCCZ6R3PPBptjjHuAyaTyz8VJHJ3ytBy0O77P4446ogcN0a3iK
qngdQdYqzSS57n3fkszGkYuNVQJwg+xAyMJJO5wcvf7EKEfZKuamgjkIVAE2GFDC4u845xV2GSaM
3HgT4ZKInDB+G2mF7Gel59PIaC7rCrBxhlms5NboTQ8gTU1tkqCngLjQt/znPfWIkwBCrrD3oNLI
oVo427hals5aZJ8ZOFQyIOh2GlKziklkJFHWpZ9eKKx7pPFGb6T/diEujNhWblqrEI3IgIV/FRYR
1LZng/Av+zvynpNi67FDd6QxhP5wDrb2KpQRlacn+4/bNZrumPIw/5CcY9DHSCTbhQnhTpAYoMYA
cVlcHWaTy6IDh7YWVd+xAYVt1KrmLuFvNRCeRq3/wpXU7SaZ0+IqCJgtw8FuxTApL0wKqswbGkJ3
7OdV9YX0BMUhQWe4Fy2jQssSuGsgAXDgdBZg9BfIudPkIuf61RMTOL/8TIPIcRgfZ2gBCWHWVup3
dYBukw+tWIiU0/RFqW23/3+sJLTtFwP9QY2vx7BxDsv9gl+TpKSvT/P6NJ0j2b77SQniKjI1il18
cFKC/ZDYIsUpSCYNI1ra/dXA8uNl2mjPtH6mj+OZx/gCFjNSLVFiIhHY+pGX7SWvBy1ddJd6Fpbq
skkSMZPhkIAuCw0nh8+DXtDSjeDWN8ZY94e2PFNghwCcaHoIUPB99moRaeIYh39d2RbHp4i2E3uC
ujoLK1MtzYMMih9Vew3fVJd2xc3kP28HWWM8mOB35lT/hZW2csoW45xeC/xgB10I6FPwQE2tng==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27D1B50F35E7760"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
content-md5: 26b9LjkXYZkpgMSzoMQY6g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 558d4ed6-6801-44d3-a74d-00a06a692567
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: DELETE /devstoreaccount1/test-container-c612acbc-0a7a-dbd2-f216-e26e3c8cdcbc/test-blob-0e49e615-adce-6ff3-a51f-8bee2eca005b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-id: 3b910224-91a5-36f0-9080-020ac4ee110b
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
x-ms-request-id: 6e87c4a0-ccd3-494e-9017-93fe162c2dd0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:31 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-c612acbc-0a7a-dbd2-f216-e26e3c8cdcbc?restype=container

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
x-ms-request-id: 070dbbdf-73b3-45d0-88ca-1e9da0e5661b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

