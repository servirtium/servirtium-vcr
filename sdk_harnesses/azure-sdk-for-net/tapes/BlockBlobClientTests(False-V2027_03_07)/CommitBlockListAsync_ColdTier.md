## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8b2e6b6f-33cb-91c5-d160-480eca5ab632?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).CommitBlockListAsync_ColdTier
now: 2026-11-12T00:49:36.6289575+00:00

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
etag: "0x211717A668B7180"
last-modified: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0f5bf10-51a2-4025-acf4-0902fb0062de
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8b2e6b6f-33cb-91c5-d160-480eca5ab632/test-blob-9a861f15-7cd2-bada-3623-6ecf37250432?comp=block&blockid=dGVzdC1ibG9jay0zMDM4MzhhYi0zYTc4LWM3YTctNzlmYi0yZDA4NzZmNDI5ZTQ%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
SCRgrolE+/oSQopm9oDdCTOxBZ6xzlnykHRUqMX2WaxcFsam+Qio0SOLh5Dxc8S2RWSbhR9lgHrK
bR0V71I1G+jeCeC6NxAqCDR6JkbJAByvnmNgWtSM95ZL24vrk+HQVWunE2rk/A1UcXzr6lkzAGwA
ZVHv1cATURJJbluEP3VSqdHbIe2yy6FVC+lXoAw8F9of6i6Q4X+qlMFXmo6x0DEHmUCIWN5/Tpmw
mcnXvLEGDVaBZFVGwchRMI0sWzETpDq4TwfLtL/7oJuU4Ee109cQUYw3MGvcwNd4NidRU/NonfWO
H2ypOlmWhcS5suGBm122Gwmk23PP248wU32Yqk2oK0NRJrRrZhYzoaqnIw719prJmjfpxMGBv0Pd
eefb/tp3EIaeL3WpSrTzcDnJJ7eAOlzizg8Vv2eBz2ZwjewuWKLPMBOHV8YlIFCC9VSIuJiMXD+L
+DDLYVEfHV8OOb3HxRiX+fek+OOVva6/k8kS+RfO4zCto19yBM7BaDlnF+eSujA88L+g52Rc9TuB
C86HDCNIP1WMGiG4JPQp4pCpLqbHLNmZ1ghYLfvMUa0k8PkAOVsVHteRBqAOg8zKdwXTsseVut71
7jYb7xJZv8hzlDP7KKk1kw/ONSY4ilI8jrb2+J/mjzUaC0ol+i7FN0bXmu+Yzk9bnh+3xoW4vGTj
32FbYsYpjQT94R1eEJjgCf3fYe9jo79nm1p/LsiwYU/mQRvMadWArQ3qm+0x/I6G172I2Vp0gDyi
9MdsqV48TX/OeM59E6AoX7PieAjRNZ7L+VcLKIj0ccHfKnQNEwSvrk5uY4TACMMdX3mnkggz0L8p
obAGMST22QYNnukrGkuvMsm6Y9EZC/CU7sgPTN+5q1m15HJTqH0peIl+smna8UQu+F8+eW3tD5W/
ckJb540nVPOPdjbYW4pMkOtIm1iHuf2D4FR/ejHsx9TdlDY6zZD8V152SnoOVZzV8eiBpXQ9OLhF
1wY4p9nBo69i+8dTEcJaTET5EG+CdYu3qYlJaiJfoFt99faKw6+FtKbLq1nVgd8lJ1gwQydJw2F7
gP1PeDmMAlts1hzM0IiUdFzItsoy4iipI0LJL1wzNDGUDkKyNTxtPqn9aavCWFbQnM7LgQyXSZ7V
pVX2wtP/OKLrOMFF4T4fWnghNHl858rs+ZOOZ7Il/MWk3Y/mdnvW/jAJ1yCVirqPqyaUdhQkWL6K
Csk/cNHvxTz7oASuOOT8SzZIcw+qVm7Y/ruMkYWxgIXQXGyylo1fGRLkmem24HJClyvd2+Sv4LNa
ZnIVYjS2SiB/3tx3SrSp6Vr9xr2EIh1ISvla06SgIXu4Vy8bSrfdLk/JNgKWyk12NPKKsRr21kRV
zBg6W3Z73rxgv/KFjp+iH5duu+sasoCr45+yFm9hwoHrxX2fo9LZTVhGNQpb8aZS55KCiBpYOhqX
jnjXychM/v1xmsgiA3vFlG2T03x1UPL4YC7d3zpmk4tiBxRaAoSP+TYN6VfeMOQWvPOtxGaeIj2F
3miabx/DCwc8v/xna5LoBNpFaGeaGS9KxiJGuM4kxOXW1CMb9YkXSt5QoXDnr1FgxL+MWLnW68Q5
T6n9fFI4F/sWkJZvzA9QLh2ISni/YhbQ5vQPmGwrAOle4qXgGs6MGIl10R+78fewPCmcTqBMeeyS
LJZeKH+P65CsEOppbxRP/DLuSZH3FfT8XlxCj7FIEmi4Tu03Le8K5uaPDuANR8wUTFJuXjBbmhah
YsojTFzeY/6BsCEmF85D5GOraAcT7hePLUJf2rM4XbPXlssk5pmJsarijJer7TWDK3rMsDIPjXOz
kx4ZfolKSFNtT4ECHv3KIbdcMWKA5EAN3K85bK2BxwhXcVN7cDIhl0NEPp60gAx8Ao57s1wRM6/e
DKLZENyl64h4q6yqTrCEO5kfPKahWFuivGoeBhSsRj6jnWOPR4ZmnlIVO9Vg0rPd9nfC8vcJPLNH
NlRyh+V0y2RuBrFN9fMTuJ1TjB2GQuq2QA+c6lRHmmCwSBAy9BZsoW9w8csCkAGDrzlZtbCWwPRp
u0fW1+EQJmxQnKzj4MOH5+utFVEftK8OGDoa7uSwGoccyTnOlsmNX8pesfRUoM520c3F6KujSgaY
x7+n9jiHoIIlxheKuVEhH7WGwAO7undrpBwW6zHceX4yNs4J5mmS1hBxLtq37Bh8o8j1HIoD3Q1I
O1IbcbVRSU2YV4KCGDlM8+nySYudtLgEmkho5lz0L1nBwasXdmVbIOWNHpSV+YuPqSmgEJOBqoea
F9Zt6GLwpCgpwVaONH2DlimmEJUjbqG82D0zVB7GQBYjfV6P7jeDnHprbDg0AXSrHHlp25rydqg1
sBAkvE8KY4E/arce9KjyInMatwJoiNbJiDekXGR8MQa1WT4nXt8qYQi39Ze8jCfRd7gm176mzCg5
WzQYZQYcwziwaJpqysOT71X6sZI/DPsP0uWsVVlHD40W7gOqEvsBmjJeDCSNZ6z0kuhprBqV+U85
CJMhcG3faFgNU9zA6dxZ+Bdg4P/Xgmo4t8Jx3mNzgPS0cAlo3yrEf6PLfxPPNKkLD7MDNBhPYoYo
6biqbor1mtPoDHjT8RjsnGFcCwJXaIMZZc+wb0zbZA6DQPZxGhEZ1uVA5ycxOB2aFpi38laD0YA1
kQi6RCqGDadqT7AieoJPQzUdFoFb5yyxFVizI3K3AG91PIgIXpG6utp/xulteJwWZ68gZbr/2anc
CC/R0uk1sk9BrD35RuSkYlyn3CFDRJy8nbvClpq0dmPeLFZh6efwSRSZK8teHCHLfANeV/2ImMSS
FTUtcxy0jDbaGhqOQ3l1tpIMqRjQXYCa9xqXVh5mVpORztOxw9b45Z+VhAIGPTiJ6aFqe++swbe0
knwBHTYXdMSG/HSlw/O7FMR5O9l+k7rhDW19+9qk5Qwc/TBa9sdpfg89gEDE4yaurmYqMobdNv7C
Hw/Imnnp4RdnicXCYR78D73KQBN5HSlHzkx0erKGPscxmNa4oOOWVJ8pXFpg601ILiPJE/XrSALl
gcstdWdk4Ur+kMlHQ2/ZM+x0UMDP5uP+LEuPvCvRRk/U0x4Yad43xXsQYVqEAOqz798Id/hBFpvo
Lkkb1CQfLUp5c3BQwcoOPItFv4WIeith28xLyM9Xkr2DLzuVHPBW8TQPCox5Yi4V+jpt/FcVYLMd
uflX02R7IeGzzZGPeR+a7s1QeG+f53ieNs6U6pVmbc+Hd2L2/x3QlOirxpWchYEa0g6JxedDftKA
uZyV5zdLTF/CBwG8pO6wgOSH9CDjAbFNeRiH3ajnQ/mQdkaAOq2xX3k12n1/Xi4f2EQDvIqxnbfr
SG0fxG+328MIKy2oMEU21pSnrSczzRvqZwRj44du39mOlPI/kZsJfv65djIAd6j/zeb1CfCQuHpR
NVxrVPg8mkxUGZtT90T5nS4oeVbp6fBcZBaheNXo/dt37Vw/nikGfdzmrF0Mq9ai/GzBaD8kaEtr
DvDimiF2axu/3Annuv4FIfx5Az2TT7g//3xpJ5WcU4UQ05A5JOK7b0BBTc/NukJuvEZDqmUO2L83
opulDESFIomD1uZuy/0ZvpP8UQHpckU5+mtPWagfAvvQAYJHFmP8uypGSeNbAPBIKezSEYa9Ti9W
axHYNsngZNTrncl70qcwAJbXoylh3fp7BjC8TfB0ErNS8KpRJIVhZeUPcGImzVdEohHw5qsF9I4X
XS+ZIxbjdooWKOH939wQdj1EUm2YVDnYeKvfhCwHTfscOcZWx0HOK/nXD6V1R8I0329twKIgfwj1
wKtqA/JeD9rl4aUVuq77diZ0wEWTYjHoq6W9mYxZ+7q+YAeWZCcGeQDKkGUdHyTAckp7rL/DYV16
gVhNoXVNjOXqV1qnZRH/bUZFydLLyoyA/CdC3U77+/6pG+LPudiKfAOAMsfKGQw4fD94fpiKr7bM
zKVOC66W71xb/UovMLNuukzPSpjEtuIaCWEPgn1lHmwrAuwzPHFU6UNrbhzCCUyLCsNMu2QeCBbC
MwJNh2zf9t7dBC3GOn7bemFUWEfGWAAUg3i5GGMHDPrWcAhuBmHXjHg95AQfxM9EcUADyq/P/NoC
OQTzJd171fgy8Mp1bHP/fcvOiHT79b6pdKciBEFKBnQua81d42eawg4M7NQFzwXNBE3jAHNmB0NF
SrA2WNG26OpWRwCmoZlkM8Zl7gnqpKWhVQD0ZgYAx2SJF5i2ZGk9VgPprogEJmKzf8ytARg6W6YL
lAPQwYHkVX+bHIkArc9cJ5gFAPUcnS6eQOc5U8ZMT7vyq89mbJSCBVkIaAnYstH8UNl/NFuw7vfU
MoCaqgK5T83NDgL/9rsDg/qcFDQkxY4VPAPszBtgQbzYkTkU6FtXTxk8CqTO/Vkee7FgFNrCr23y
hG3/zIKybcxGJmWB75qeRcQb6LvqRj+pzlBp/yziFuHMIWPuV4OWip3XiNb0nIwWwc8VpseyCD0u
Vf0xSG2gZBCDtM42sO1BhV0dEr1otTLEUj5czG8aGhklvwKGZEIvNyTGcOe+3xDi1CFqlPV/xaDK
bfUvQ5egaZm0EfDruyAb7tuZoUVKBnItevhOsIYkpfphu/dMAPSNJgZOCc4g9xkBT6Ya5iRbgGaC
AsifUbkTkGv2if8ozu3nDHo+/PykDILfTWHgCr/VBjqQyf0r7dVNOnljKW0Z2IC4MtqpHYRq3vVF
wARYM4arIILFmAXvvB6l8MGDQOMUxXXgJ9flLOm2JuoI5S3R9QfztwjrU0B7yHa7BCzC5p4RMPqP
dwuuxvSZD3Ea59bx1Pu5kIjaKXI1ZV9gKSi88z9M9rQyQn38RPEUUUTOYeGgyjAxCFYVNweIWRKs
TpzM3BsyzfAivpF9vUuXxtctZgR+wF/3i+rpNr+tquhrUPZUSHUpnJPwfQues0sKfnEvW/MOLo09
1FAwSZcxdBOpEm1VQn1iBMpwjUJTWdef3rhOfU/0XSJoF3Ql+FP7vgj49KHdtDvzzVconaBK6Xp4
kGrf4/fEtLVL7SsJPAt3dc45W2U2wil8WrD4y7+BHS35rGfoHNsRMz/skscP6ZBLsSjREI0VQs5A
YohGzOj1yc/+EJCjjljzKCclSS9ibXEgrBqXsAyf5GmYp7pTy2dX98j3Edn/pyLP3uhm8Pme3vQW
Jh/OXRnCXismCuadn1zAzlFma1uXIAT3yNEjOfNw+snFPKRIiJqvNLKt2Zw7MT6MpSKnN3OZfwYa
1pVHniU4thAd2GO3eEW3tzap6kdou5aTl5PRyMJWLL2eLbEFZ5WNdSKMHlna1C3d74A88JS/shv+
tAeRZu1OxqymGUqTsk+hG3Qk2509uMNm9NhBGjwo33uWBrKO/A41PVetNLvjST0wm9QgmtZ+wfxD
KnIUDKxvfjnO/KydEh5l751FkIQIgqqbEX5nB0SkGEW2S9GcIDGrPbWBFEyRk4i2ug==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f82b72b6-82cc-4946-a56f-eea7059e76a4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-content-crc64: cLU/7TNXM14=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8b2e6b6f-33cb-91c5-d160-480eca5ab632/test-blob-9a861f15-7cd2-bada-3623-6ecf37250432?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-access-tier: Cold
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay0zMDM4MzhhYi0zYTc4LWM3YTctNzlmYi0yZDA4NzZmNDI5ZTQ=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26A09E86E074180"
last-modified: Thu, 12 Nov 2026 00:49:36 GMT
content-md5: E7pF2QyS/MNpVeOnU6zrcA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96909c98-3d21-45d7-b16c-4f4905b79022
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-8b2e6b6f-33cb-91c5-d160-480eca5ab632/test-blob-9a861f15-7cd2-bada-3623-6ecf37250432

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
last-modified: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x26A09E86E074180"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e10f4aa7-a8e5-45e2-9057-988c1163881b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cold
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-8b2e6b6f-33cb-91c5-d160-480eca5ab632?restype=container

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
x-ms-request-id: 45d7fe2e-73ee-4032-a253-3d53240398aa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

