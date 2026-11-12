## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3fa29c38-2fc6-aa84-65f1-965cf186d629?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ChangeLeaseAsync_AccessConditions
now: 2026-11-12T00:47:38.5770003+00:00

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
etag: "0x2067BFF113DCC80"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64896dc8-cc6c-42c3-a44b-915f0255e5aa
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3fa29c38-2fc6-aa84-65f1-965cf186d629/test-blob-7d98c466-34db-3ec9-ca29-5452e2631fa5

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
3qidXT4QBPbPIjhwFFrF7PB6+lCqYVAD0mN1nNsyxwLS8H5J6XnrVr+irrn7WSpvZGhhaGnO+31Y
mYrammgbnFo2nSPbfAJ3j6OQB7KWCHk5BTdz0F+YBPUB8E/uELtXhxFexLsHk+dl6tjFPfPKwZER
oZQwp8z7nZku2ouziH7nOYCgOEO9MnFPDeWG08YBNi+93W8mJt9FYici2LlcsmFa3QNzKohOU28j
4JrmdcrSLaNc9asPwRKhW9Ucm1m481uDLPXDjgymb4n/A0ZEXu1cT6sV/7y2Shzx0c6zMrgWa+w+
Y0jUD5+XtYUhD73MXP3nv0utovSezeHZ0bw98z3R6ZhZBvukiEAMfkk3lDpeJXXRy3JsaMj4n5Vn
+z3iWcJHTyYkclYCQzcLoCOqZzimeqxHbCfLZYDPYWZlPYwCKiWG70QUObIez4g7YMelTjhdwIGR
m+2afOqlVRHwnQWqCHb+I3jzkkD5KJyfjwS4KhItB30LcY437HJab+ShLjKCkFhRpirAaS5Al3JQ
++3m7Cr+wpWIn5bnxjcFmSJbWPppHP+rZ4PobZ1Oytoc5vGFc4K6o2yd+vDBaeDzutAL5T94597u
OoSmFlT3OdW8y99GgCWgobWNzCEO6v6j9LPNQ+Sbo/8Slzn9E4wYpcEbBJ0ArTmqa0SK6hq830+G
AyGgKvXwISffM+nsoo0odSdg8+Vgokd6ItigEbnlVrfpdhBreHvLKuN2IXlPvsi2YXXzXOxqJmDZ
JQcdUBBu+t0yAit8vP2rlMgC6YHNKmQP6a9E8vnKf0+vkVJ0rdrSByacHbycOaV4R8ckZzzfDPqi
DmZhKgjjZ4LczSuqN+btL+JaMQ2ocq8Ky6syphcSz4VX0Z9zcd0euLY5wGx5zQ/gNjdahdrt+pu2
V15csMBqyf2mUmZHeb4EO3hXb7FDkP6bUnDguEqqatcDvBp/wgf1zvdv03qomLx5VkphlYvpc8Zf
wV5QihGz++iPQ72khXlwYaC607yD8rm0ZmH/SNVLGUhTHwCppUPmu9eSGVT/1dDR8TPqL58J3M6l
nCSvs7ISQyp0UWZ4x7xd0xjl8dlktJGRLlehYeqpSUMyAwkfNwgkf9Yqi4RqWCl3jFuHJOr1QeeS
HYVbceE/ygcjRsOyPpwQwHEDOSkNJ9UuKtWOISRYPMIijBmDyQ706sB8RhJlxE6/d2R58ge+hfav
LUYMsanjywkAkLGCjfZiDk5okODCyGWGzqm/30m7ZAYj05zH6DkWmHsIZDScPepuFuO4VfQV7GTh
heP/I+y/RSyrX7lZmyYVUvdlumMx6ZG/UchmAg8RDeY35mJVFnWPSB8H8d0wFHu9owL8sDIBsA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D1F74501A67F20"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
content-md5: WIMmMbcCfAuwFFTF5PhqgA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c84df255-cfbb-4ee4-8a63-5dc2834947c4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-3fa29c38-2fc6-aa84-65f1-965cf186d629/test-blob-7d98c466-34db-3ec9-ca29-5452e2631fa5?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: d240519b-5923-1d42-9952-d321b4c4bf3b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D1F74501A67F20"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-lease-id: d240519b-5923-1d42-9952-d321b4c4bf3b
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bff523c3-ca82-4528-8d97-d6eb71800b38
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-3fa29c38-2fc6-aa84-65f1-965cf186d629/test-blob-7d98c466-34db-3ec9-ca29-5452e2631fa5?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: change
x-ms-lease-id: d240519b-5923-1d42-9952-d321b4c4bf3b
x-ms-proposed-lease-id: 4471d582-f829-8eb3-3c4d-a95f0c145cb3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D1F74501A67F20"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3ee36d36-5471-4526-b5bb-7c28404d4ca5
x-ms-lease-id: 4471d582-f829-8eb3-3c4d-a95f0c145cb3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-3fa29c38-2fc6-aa84-65f1-965cf186d629?restype=container

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
x-ms-request-id: ca897992-7895-47a0-9908-b2f71ee122ca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-03c63636-a2d6-ef6c-dcea-588b5df2c6f8?restype=container

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
etag: "0x244889E9BF16400"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eacf0320-9ed7-4639-b1a0-883038ee0222
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-03c63636-a2d6-ef6c-dcea-588b5df2c6f8/test-blob-da7ac7e3-bcc1-a386-9eb2-95d6b0e21184

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
9R/rfv27Zd9pgmc/nygwSoawfESagfJ5ryNlIw2VPvnZ05U+B0j7J2KacT9VRwN2gktPAGbM6XQt
cc7aVkLS00NuZcuS8kI+tVTiABCzJGgf76HCRj6TDeohEJZ5INEgyJ375+E4448IEUoR6eljekxl
u2agD40F2ljhceGsxJWDwjdztz2G5gwRujXzgSMAvZZJE2Rqf7gP9gyJVnGtW0y1jSex8MIP39Ra
j1VYEVk04bRLY7AwGUN/Y8Aw/ZCbZF7oPvP8TszTOTSQEPBjt+WyVHW9YvichXTkMo0B3uJEvyr3
cNJlOJLndyl8nwhSG6vbfaga3QJlTLl+GBs/0VpSTFHFbEcSTRzj1erOH+VskRfhJmA6KeEokSMZ
5iB2qKbOKVO3ja9kyDCLNwgXlizTEoYEXav6GCJvnNoj+Gb8bCxDAPaRtARnfV0wrvHYEPr3RdSZ
ckv61BEwR/DVQM/Kj8vb05Y2Ql2Cnd9NymkxlovfLLOSYvrhSSvkYG0TkjyNZh8l/T1kwQN2F9Vs
rAqn/7Bk9RQcNyzR+oprUeHwbgqiwGNKC5lOe2qvHEskdZwhPWG8rp0ocC7yVAOy+W8ihajKyeym
XfMXFnmpbRvgrITuSRSANL9tek81V7eWnIL6jZaiWquvet9tpZgjfgMTEad+w69boVHoXU+dcQU8
gXr3r+CEPlLZP880Eo4nSvtLIkUPF9jTnutFuf1bEgnaMCQeLM8jjtNVpYTgJ47DwRJTUU7ALWmh
IxD0P4RVfSzFWuJpCB4sKJRxunFT83dcgvjqB8C6GQK6fAi/Lk5PACdXGs2sWbj0Jyi6TnP3TTCY
mL2La3VrCkDfr4sWbfpFIbpK/Nipryk/9eCYAMuPwy/XJpWQw5Sy6xCNzKks3roudSy5rVFX7+iU
THWV0wp0UOtcPkZktF0llxDIHON/EhYlaoue1hXdfzet/HcfHRgFGHy90J9zycDOlBZBj9IFFTle
b2l+1XnWfr8Pt7jmBnr3wgNmwUJ2sqDKz0L/nPBkp+Y9wK2uh0MC51HgZBIH6I6bSczPn1T36L3J
swU31+LPqg/RqEXMSTvAY9nwlk2Nw+e0Y1MjlQiSRdjw5dM9yxBvEbkCNj9IzwCRDzt6B1FvO/Ae
g3OOqxUHP2Jt22Nog5jJgYSTi4ynbJNTkYXMFz6GgKriHkec4GWk+vfd2vOcKYyjsYXN27Bkdhff
OxqPOick51u5hWRQLKAf75CVypGftmj5KWa5uaT5fqgwvKVLFL/QufKY46MnUoXkrewgzqyFQISx
lRHAai62vwe8IG/709rQxRGeBtPE0dbg1Au42K/7qnwhmn+uD07E4iOcazIW6doRUAma5zmw7A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D9149FA88BC410"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
content-md5: MWIySFI30rBi2+eLziWuIg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ca26382c-b5c2-4bd0-a6cc-65addcb5153c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-03c63636-a2d6-ef6c-dcea-588b5df2c6f8/test-blob-da7ac7e3-bcc1-a386-9eb2-95d6b0e21184?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 96e03bc3-fe22-57e6-c075-f2da395b21b6
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D9149FA88BC410"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-lease-id: 96e03bc3-fe22-57e6-c075-f2da395b21b6
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8207c1b0-200f-4b0e-9ef0-3691257cb9b5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-03c63636-a2d6-ef6c-dcea-588b5df2c6f8/test-blob-da7ac7e3-bcc1-a386-9eb2-95d6b0e21184?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Modified-Since: Wed, 11 Nov 2026 00:47:38 GMT
x-ms-lease-action: change
x-ms-lease-id: 96e03bc3-fe22-57e6-c075-f2da395b21b6
x-ms-proposed-lease-id: b024d9c3-6628-caa3-eb31-a688a661c343
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D9149FA88BC410"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ff900bd1-75fc-461c-bbec-39bc54755c8b
x-ms-lease-id: b024d9c3-6628-caa3-eb31-a688a661c343
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 9: DELETE /devstoreaccount1/test-container-03c63636-a2d6-ef6c-dcea-588b5df2c6f8?restype=container

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
x-ms-request-id: 3b9f7885-e6ed-4635-9a65-b24b2e80a8a9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-72bbad70-b82e-e4a2-3c44-abbc230fa0b6?restype=container

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
etag: "0x218302A4676C9A0"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a944cc71-bcc8-4dcd-8d8d-edd109be8c73
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-72bbad70-b82e-e4a2-3c44-abbc230fa0b6/test-blob-0dd7532e-0015-5dc4-9715-aaf1575eb15f

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
sq9pjJ+vhwo3P3Pjuuen3JDwWlKJti1v6V3aGQ2xjd6STAlzpRQWfsvM1dWM4KOwbc5gZwNe1fyB
+aJC1G39hrKVUG7dMzZ82duGvOBX4gi6Kqs/UCXaNHYN8atx1Kpez08j94810zqX5I0o1xkbKRaZ
h6nBvTaNuxz30EGLCgUwKOyRNOt5hVdxp2uXsVxd8ciV10wAnBEYljxyPQP4DNqI968sivUrIAJS
UBXK9QnAmt559TK4L4zbeJ6vBkdUeJuRD7qsMGbTardKrkz7TqAysqMkfxaoz8cjURFWexm6/td6
OOZPE2l3pot6boFA3yn9fFSkL/mF6T/yid9UfO6dkLB0gRW64545rNiKLWFG4nHoWf7FFc7d9U+m
XImKIiqd3d3Ry14TQpi2aoIh+rverKZtbCPv2HrhlozGFIcUr4qu7VCDdBcT1BZlD6pLvPqTyLDj
HLUHrQRj8DXRTS4Robv4cg1rWjePWpgMicnQldmRMkvWMZPUp0BLIIThQYfnU23vU0rtKG54U8Id
+iM7k1pbQBrjO3AoJMvMHzmyrRgRJDVc4EKPpArdXd3RtqwcEI0qhgFsBBj8xy5/IAg0xqWpDNXt
37IXzJsQBd2SV24esA+siCcXpCAdXxkUEIMCqJc4J6nXLzHbErlmXP47aW/AYHD4iD19kme10H+Y
A7wXDl1FWi/ER4De0XVusUgh4fapU68TCSBZupVCIV+xQg79Tk6h9g5A/BnvGrbHD+Afk+6J7rAM
BAQ866CZgSUhLI5ncWL5gOvnaVeWI+5pkqq0Io1wKFNe8EpJZQptpnrzzu4oYJ5+JRMDoYVYduAW
0ln15V+XsQM6CIAYsBvgecLdolX/QTEMNvx6bIbOBnppMpKxeMEaXBzr7VgdZXX4IyjCe9SLFpAo
6a9iHUR8bAIGrn2ILgEBwkU4FFPY7tCHgkheDIqm3hsBiY4Stz/XboFWF7f3b/QmwLmOUgI9T/re
25r8HV93YNBhhqVy7woGYKXSgdcZjxJTN0vRGIsZxDmTM9yk21Eh37fmlulPtNCuh/Jcas4jxUuI
qOYTpUhESMJs3rstYYRUsKIgMvkoBIN7IpCZvFlrcG6QGzNrDTluok0n49UUgCVtCLorApJSX6Ni
mIO3q4toAW1NnUZQ6aJpsY+rASGuZqJqK7SfP27bPruQCHS2t/fCv+Fnx+PfHR8XwVECpl6CtDLg
TX/XyMH/cV6KwOAts/qY6UI/Rp6+iw6Uh34d2ZhdDVRC1Wp36/YgZ1WEVFw+6g1War0bQm2UIcFx
QkFD4pjGLbKM696QIP1MHt5IOjayVp1wxm7aQcvmrrOoBqi13YW9viepsv8vxkm/zyOOS+eKvw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x246391C0CD44AE0"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
content-md5: j7qfgzEQbMx4ZifPjzb5mg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 36886033-7740-4d7f-9c0f-c50dd4bf3672
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-72bbad70-b82e-e4a2-3c44-abbc230fa0b6/test-blob-0dd7532e-0015-5dc4-9715-aaf1575eb15f?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 1cd2a4ec-eb29-e7eb-a53d-2be71a559741
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x246391C0CD44AE0"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-lease-id: 1cd2a4ec-eb29-e7eb-a53d-2be71a559741
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ab309dd7-72dd-4b30-bbd1-96f84423ebc7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-72bbad70-b82e-e4a2-3c44-abbc230fa0b6/test-blob-0dd7532e-0015-5dc4-9715-aaf1575eb15f?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Unmodified-Since: Fri, 13 Nov 2026 00:47:38 GMT
x-ms-lease-action: change
x-ms-lease-id: 1cd2a4ec-eb29-e7eb-a53d-2be71a559741
x-ms-proposed-lease-id: 0f7c8b59-a308-419d-ff24-1b71a75762cb
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x246391C0CD44AE0"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2ca08b5b-1189-420d-92e3-0ce33774c5aa
x-ms-lease-id: 0f7c8b59-a308-419d-ff24-1b71a75762cb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 14: DELETE /devstoreaccount1/test-container-72bbad70-b82e-e4a2-3c44-abbc230fa0b6?restype=container

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
x-ms-request-id: 4ea8ae0a-cce8-4f68-badb-075b97eb7a8e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-11bc471d-680b-d293-3bc1-0cc103de2f6a?restype=container

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
etag: "0x2550EDC82B06A20"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: be227df5-6be4-4f36-864f-6bb87e350186
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-11bc471d-680b-d293-3bc1-0cc103de2f6a/test-blob-c035e238-7a6b-48b6-0690-1c04d07a404d

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
2l/J05iGNvD3qdRGlts9IPWwOcUiomCjkHMKekyOAcGBv+ekFVzRsqxEyMGlcLIqU/sPH0B7Kjj/
JkIle7ukaKcTxdf0mQuZ34YY3tme/SDB4CdQf+KABpSvpe4ZrDfwoGAakqraNbrwdkC5YkxeYSki
Y5qUU+jFk75DRfMdfzNPKD55g2p15qpsYAmixqRHUEPE90icW0x3VP7slvDG0vYMaTkO5d2+rHzv
J/PfIswZ+/SwWIjrs83xAS9siFC6po0SlVxrOWtmBUrLrDNYmDEy0pv7FnpuIbZsHOOuUiQsNYFm
zI1vrsKJSVM9HwaZmWn9Ora0v5ATpHOm/h2HuLMmnney8sukwiPYccwnMAGv04N6sBhteHXwUycZ
ybClAZGfF4GP5qadWHiS3E3E63Ry9iuZDAeauCYBwZ+ji/hzM3A7hxh/H+zc3Veg25woLGezp9OE
C/SJBV9bjiQH+c1/HqjdiGRb8tY/vS+v+tyK2JU38OQl7yh7sYK5JJHH1eSJIL3zS6MCWLT8RU7F
2QqC0bWPzwjpWi6AYtfios1FeOdLJtoflo3xNJgvKKratdh3N1PbNwXboMaOc+jMILXmt8xmebMw
YjonnppwujGEpaz/amt6aUDicIYUkSKlJBTiSHHdczskR9QYtJlqauWUCc07zbVKbE6MgwktHNAX
gnmGjnK/pzJx2iOWYrSneAagf4hVaVdel9sjUe8y9ysDADEf49tz1GKbyvKStAqZ5AsDjJxIwhkh
J/eWnFVCPuP4kmGDh5QqLaoluZ5kzOLRimzkL2qOuz0Y/bzk3TgMWYwPmSKoFVx32F/xIwl6vVoU
xBHpXQ94atckaorXRVByGWASVDPAKXQPbFYLnJc0nUBh0BgmI/t8ly9KhKvSn5MOfwqoaGgnU5ud
2vG5bM0/78xJdnU3S/Vklb0DdqTJPMzD/ByNizXXOXx9iUgKwypiC5TeiCkd1zQURNKrJN321J0k
9nCwsWOXcj34usGsWtKSoWsP6rOjpSXoeUdiKxSfh7Wr5cy6sVkxRxbsJBxyZ+n/GYNy5unpgFBK
yDgcNEcoWTIMAXUF2PAR3qKdt4AIdhJeYhKRLaHLwWR8b+ghFBLPw8vqZWV0+kGSYAdGTMnPQVIl
vtI0liyRQEAQiWgH8MqQzfO1HhCs6mjQ/syahXSbrC2W+1ZAmi2eWSUlY3DZi289tn7VGSNBeNRp
Y5df9rvLddw6cPRzTzPGF8Xrhob393NcXc72xpMKVYKC1zaVPmJpWu6Unhp6yWZLDgJeVvFNcWwk
Apns1a5ILxty8Xj8MNljgSyYY1hY4pNoqreRrP+QNGXKcTvIfYU/S2/+CNftTt4o+tTFtQ4Tyw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D11FD730EF68D0"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
content-md5: xaWTvb0c3t/5AtIE1Nwaiw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 819d1b49-9437-474b-abfb-745f1d47b426
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-11bc471d-680b-d293-3bc1-0cc103de2f6a/test-blob-c035e238-7a6b-48b6-0690-1c04d07a404d

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
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1D11FD730EF68D0"
content-md5: xaWTvb0c3t/5AtIE1Nwaiw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4b6b1e66-81f6-4cf1-a9b3-1a2c44b3ddec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:38 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-11bc471d-680b-d293-3bc1-0cc103de2f6a/test-blob-c035e238-7a6b-48b6-0690-1c04d07a404d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 2a840620-b7f7-1c83-e1bc-1332bf9d9a04
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D11FD730EF68D0"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-lease-id: 2a840620-b7f7-1c83-e1bc-1332bf9d9a04
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f9672ee4-f3b0-431b-8b3b-ae2f69a09ea1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-11bc471d-680b-d293-3bc1-0cc103de2f6a/test-blob-c035e238-7a6b-48b6-0690-1c04d07a404d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-Match: "0x1D11FD730EF68D0"
x-ms-lease-action: change
x-ms-lease-id: 2a840620-b7f7-1c83-e1bc-1332bf9d9a04
x-ms-proposed-lease-id: e91758a7-d95a-7abb-5cd9-68b12acb7f57
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D11FD730EF68D0"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0b1feca-9c09-4a97-a538-9c50f9d17ffb
x-ms-lease-id: e91758a7-d95a-7abb-5cd9-68b12acb7f57
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-11bc471d-680b-d293-3bc1-0cc103de2f6a?restype=container

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
x-ms-request-id: f97b8592-4caf-426e-98d6-143b54eb2eae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-c11aa6b6-5af8-9448-ebe2-271bda1b1f8b?restype=container

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
etag: "0x24B4750C4ADE440"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e2677a7a-8677-4b0e-bf61-6592610477e0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-c11aa6b6-5af8-9448-ebe2-271bda1b1f8b/test-blob-5c1ed060-29f6-4771-4a0a-cd1d4ed1f215

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
Pbt7GILZC0wQg/54saCfQLndUVmtImGNNdJ37owqRRnwEt0fnwYIh8XSTHIr+Jaqao1jcYCYaBpa
7uOvYhy/5T7kh5/CgKCz1MqU29buYjw8zIT/xtOZWKnCxLEiWCWoEmczR3H35+rssJ22A41Ea4un
c5WYvx5rSi/1/7vvkHul68huuhvLReWZExY141Qcflgle+WPEFNIyPxBAecu/B8hEBfF1bFw3C2w
/qsHNWfb2IFiyRWWFdt0JvIeiUP9axb2FNI9V6mntZ633xKnQJKVZilmyzMKi/s8UK++UlLqs5KU
ESGUnYDYuxR23jbIzOVfiSMZlp/j7InXAAf56GJMzSx/Ei9wAMipjhAflKzEc4TJXsku0BzzsSSY
vZ153tKxKREKSbm174hbcAiPxFjcEo2CMImZHv0PjGEK2EMrL7A9bWqauirKFG9B0l8UY+3Mu6oP
9q5IFwsU+rxYqhZEMEFXUVbuQldiuBsZWEud+yhzPhyZGzgC9FVehr9tcmlZ/KEdvBGW3nlSrT6S
Lr/Adv+T5Gz6qxUIVV0Bj7yY9UWywFypgD4X3WCiRm36b8aWng+/2Y78XlGLFWa0lU69urj4321j
FvbBfAYMV2SnDeaWavGs2Bu3tWIKHmrYYkcR5Yu1ApBYM4cZ/l2H8Abs4weAHStcEeGcQCkLWPiL
6Bm/+nLZ8gtWPjZpktm9MMVbHjpiV0UctNSqGMFmTduPjRVEyPWUE/H8Kt/0834H3w9jrzq+KJDU
okWdL9lJ7/Fb2gTEeWjQxwpIZi1mKMFVojmxAp2h0WWEcCWv9uQYszrtmBh6Q2Wnk+cvdcJjbXmE
SIyfl+1TugifPwlCINEmL7LzeI+o217UCm61cVuiIQKrK65XeRxNmd4Q2gRcZHMWCEYPcPXq22wu
y4x+nkit/B0Hl/Qjz7aWpd6xmABZd6X7nmkVk7EMwVBBKK2Pz/uVY97mVc1+8zmPeMoWOEJr1FPn
gv/fl2ls+tWk4aYIB9bjGzUiciLYfKsvhRrn9okN1VRap0z8tst0elr42hKSh3DzMxwNSWEwDwVT
rxJOhARMlgxSrV+K5mVqrvjH36KZnP6p88JsAIzyKphGqAa4JfVWq0QFQNkQaEy2opppaC9juhIT
pZFB4JWAYIPHRD5fsYgCcTNek1wlmIp1tV7xiMFp4u30pIBkFMuvheBVSSQOV/ASZvf7BSe27gwG
zCo2jtfCXWFQagwInVxnrg57z09mZl1t3yHJbd3GPbZ0XkihePYJk+zCvuzkCsmbk1YYOh+9n2XM
ya+1+O+EiS1Wkz8TxjYXcjtio6hwidVYLtmGrQOWt77i1K5GVJr8PjS/jXaKh80fAcjjWvy9XA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20C7D603C369B60"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
content-md5: PZYeNaZYaVnSyjldxRG0Sw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce3533a8-b60e-4cd9-8d76-80af4a616608
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-c11aa6b6-5af8-9448-ebe2-271bda1b1f8b/test-blob-5c1ed060-29f6-4771-4a0a-cd1d4ed1f215?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: c95cda40-fe16-2adb-bfdc-8031f287d01e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20C7D603C369B60"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-lease-id: c95cda40-fe16-2adb-bfdc-8031f287d01e
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 777c45c3-cfc6-4c61-95ef-2baff1ed4237
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-c11aa6b6-5af8-9448-ebe2-271bda1b1f8b/test-blob-5c1ed060-29f6-4771-4a0a-cd1d4ed1f215?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
If-None-Match: "garbage"
x-ms-lease-action: change
x-ms-lease-id: c95cda40-fe16-2adb-bfdc-8031f287d01e
x-ms-proposed-lease-id: 736466a0-fbb1-ce5e-a70c-66ac3ab35cc1
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20C7D603C369B60"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1ac9566f-7649-44d9-a0e5-88d241ca030f
x-ms-lease-id: 736466a0-fbb1-ce5e-a70c-66ac3ab35cc1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-c11aa6b6-5af8-9448-ebe2-271bda1b1f8b?restype=container

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
x-ms-request-id: bc0ccc75-b1b6-41e6-b928-4772ab34dd33
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

