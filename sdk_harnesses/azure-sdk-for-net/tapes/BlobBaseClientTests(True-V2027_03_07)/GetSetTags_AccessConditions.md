## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3c3594c3-d36c-1a96-2eaa-ebe7049f5df5?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetSetTags_AccessConditions
now: 2026-11-12T00:48:12.0243071+00:00

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
etag: "0x213B194C0B75F40"
last-modified: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5de342b8-518d-41f6-92ea-510588c32adc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3c3594c3-d36c-1a96-2eaa-ebe7049f5df5/test-blob-0850213e-4e39-6981-a4fb-0e0c7db6d1cf

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
Nqw+yfgqypHDmZh7SVhK5/PYVLcJ6WZ1E8uYcMSJnHfYHLBYYJT9E1e+RJ+1BSBLsScYpWIaxU1G
ybYtkVnMOf0goiyn8oZf20BgSqTHvw2qTL+dcfYUvlZiEZfdz4L98guilGP0pL6guMoiuXupfwmp
gkSaLsgGDOTVRODvggu+YliZJCqqtqgA/bgs8gTbuZKONEw9YsNCnIh+Hl/esTa+ZFciD1re/syc
mjEP2Rrg+opNYU2+gP+UVoiiK5dIIUuBbY2suKk4rzWAociRM8JuniTUkU/pAONXjrnRO9M1U3jl
jWuMM0HhFLEXPt83AyPGNI1zc5D7mG2qVSrwZ3NiS01Qq6VW4Wri83ye0cEDIIqWCgdFwd/n6fX+
4t4X8K0+tfKS51d9cFMjkH8UXcerpjWfWVxsHIltaMKwV/6MygLOYBvPcTkzGJq0IjFg04wtUzyp
d5ZR0ZhpJH6VzRhUlsV8Rf2r3DT7bEHBt/pYDZQ1ggTC41JrfI6DZU26nUuCYItr442OgnYIrQtV
kBqeERbqX0oTkrNyEMlvJ3fmQc71P1dv7CoHp/+OuTVHFuxz5VM20D4Bbs7X+NLEHlr/IWw8YFDC
LyTs4rdKhdh+K/rc+0Ijr3CQ9NCJl/NXQoikjpjJCrWbsLYuSe2Gtun1Wc3X6CIY3HH7rGyAOZcx
lKAupfdAtCBFQEuM9GaDCT3nkz4mgFpmjLEmzl5JG3ce/bRNVxHytaSskqfXjOgLd6IvmaZZChRF
yBlFGebC/CXUbfaxNbIr9N2Zee6yjgDJGla7GYHQxfOgCI74rJu+6ZaCAx7xWkHvA6TIwJAmkjoZ
e/+PB+KjA6gDEC0kM0hB2o9XMIrh178UyxbcBwRieXVU3zGcL+K03wB27kkUy89chuYBzmKvN6Q/
ezvLxvujoZa40FQXpauto1GKauh1AP9HgIEeYKsSpKeMXLOn6BgE002zW/t6ReE6UyoRJM27yXo7
hEZ6hEDrpSutikn3Bro4hpabwqQDzDqf5AyAAX/Z0ZI5a2TRik4Nx7bQzbuYQ01w2J42HwbVN7cM
2qAza6Sr1Li2vppWZ/xHjvvuM/9+B6C/ECjhorGLYzOsxK+u2VwRJPgD4YWzGXCi7pEL5wS4jdL/
dFp7yjEGKlpnqaNMmbSf3Q8GeyYbDPa3P7MggHwu9DfcrmUBlVrH/LYqS3DNVVXcbAn1shGs5Ghk
xIp+5areOLVrcOtPnUe1P39v8cCF6epeRBNyOUElL8r9nNHPSBYLTBK7YeVpjM7CP3OSPfOn3tqg
IKGXa/5zRkAgUgB25vZoY6SuyogF9LdEsPrOkvLXVb33Lih1dOATRxukSTrNTFl8KtlO+RRSmw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BF3C5847D4F710"
last-modified: Thu, 12 Nov 2026 00:48:12 GMT
content-md5: lhH0eS246i1i4E/64Ew5uA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0e7d5138-2493-4a81-b81b-3fa341431b6b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-3c3594c3-d36c-1a96-2eaa-ebe7049f5df5/test-blob-0850213e-4e39-6981-a4fb-0e0c7db6d1cf?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 19ddddf1-b09e-492c-bfce-94376ac1e068
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-3c3594c3-d36c-1a96-2eaa-ebe7049f5df5/test-blob-0850213e-4e39-6981-a4fb-0e0c7db6d1cf?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: b7d15678-9ab2-4169-8992-334ea5735c8f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-3c3594c3-d36c-1a96-2eaa-ebe7049f5df5?restype=container

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
x-ms-request-id: f63bf028-01b8-4a13-82db-fd4a2354782f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-bb52e92b-a404-4db4-49fd-437eb8cef3ef?restype=container

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
etag: "0x253DDAC53559D60"
last-modified: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 40ea5168-2b3e-4b03-9938-7d0bfcec6adb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-bb52e92b-a404-4db4-49fd-437eb8cef3ef/test-blob-6d829ac4-ab60-767d-63a0-516818885ca9

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
pZL8iyEkDqNmVv89is2hrjfqiV6S5DuAa9tYZFNLNMGgmdkl0WfNoIzfBgmsQOyW/qMxLv79F8BW
ex9GzKpPGiE9nPDze9zPHenSst4x1CvvwWWvGgbCooIZzlVHhtThj+vnbqT7ooPGYRAVK2ThJaf0
VgpEoAAbe/lt2qyGiJYV8CPzSWaG8x7i6Ln1rHceN6muUi/JnO7qzPKqjcjWP9h6ADtA7ttAbWLr
YrdHJc6CT6ID2DVmS1M0CHxz3GZVC6nge6w83UnObeTN3jo3o6cjJz4m02ejE7XnDOVezZH8lVcO
ZqoiRnFYNGpQmWwZ/WTVT7QoLzhBPWf2VNFkcKBT0EjjKTz9AeHMzp78UnpIzQ+AiH3c02YezClC
K/Gf9MTK/cgkNtMn2E7TW2GZRevtrofC4+cidvzhxFwTutXvLdnaMlSxJJY7WLAvCXgFhYc+VH1q
3BDdp4bMQnJ3FB144y6HvxKWPInwh4o38m2E3D/V1GZXhVDI/YrO5eEkw0SStiZJfsV0pxj0elWG
prQYR2YyoT+3IV7evsKHyFeny8NFpDxHOl55YSxOYwv7QlfWtZ178SIE25XIa78D7N/BTK6RQAF4
0QwHuUASab1S43xrsRK5LNmhQcimf8+edXRNjBdcaQFVXeORczji8nLYdYdDmDvMByDV8P850lI9
aUPMxdyl9nl6FVQvKLihv09VzQpHWt04gIT3h3kBG4qRVAn0FSyWMn4OyYLnnd9nMzCw4wRI9Q9m
k0VXrm8AePrJntSurKkivpuLOZFaUeKlj1NIUTeGSV76joLmP4QPDVCIHf8LuYeHjSRpvLt+DEJi
sR4ctyfCQ1V1sx4nO38XfCtA0jPimdbLwcQSHIyje4I/hI1l81YpxdqqlgVpX1GlUkCQPTkOfxhI
UPVjrybI0jic57fxsYnVFwxYOAPQYmFybcpMEz1IMAR1HKJgxha04sPNzHeZs6C2uiYttkcUd+2U
8EJcfL/6VLazfJTmdFD2pFY/A5Xp2LkplVgXGnq8YaW0zNXTV2UE03jB5jcM0EbWNxHx1HRXqheI
M+dm4jk79xvvMah6IkzwOi8dKPKCHMURQONpy4wwXSK9SyR+nfA/he4cHJ6eWxTFAJlFOoElBhYh
VaJV0iyOv9SFvNcocp0/3aMDZf8nc+XOo8ry6yKgmEQNXEhO6bLCjV3JGJ49nY78BVzdIaAW+uG8
hi9hm9Sy5CSSGhVU8PPxQdiiXltGkAY89uXGw3ak92JnkWODYfKJFjN6q4J5qBVo7ODIdJyGdfUo
JaXv7CGt7SKy7V+Qbt/lGUcnzOWDwk7QXdaW24LG4BttWjxNmioSzL1fxru12H0A4ltUX6gQpA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24C99266D1C3E60"
last-modified: Thu, 12 Nov 2026 00:48:12 GMT
content-md5: lk33IYBs4NayB70xyRTIug==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 87fad1b9-9dd2-46cf-a42c-df1692fa279d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-bb52e92b-a404-4db4-49fd-437eb8cef3ef/test-blob-6d829ac4-ab60-767d-63a0-516818885ca9?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/xml
x-ms-blob-if-modified-since: Wed, 11 Nov 2026 00:48:12 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 79771145-b644-41e0-932a-a4612238769c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 8: GET /devstoreaccount1/test-container-bb52e92b-a404-4db4-49fd-437eb8cef3ef/test-blob-6d829ac4-ab60-767d-63a0-516818885ca9?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_9
x-ms-blob-if-modified-since: Wed, 11 Nov 2026 00:48:12 GMT
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
x-ms-request-id: b490c97d-c885-4a8f-88ed-c91f9f321e8f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 9: DELETE /devstoreaccount1/test-container-bb52e92b-a404-4db4-49fd-437eb8cef3ef?restype=container

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
x-ms-request-id: e88c6be3-3d13-48fe-a7bc-22b733692a70
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-8f1f5662-174a-a012-ec0c-432313a3987e?restype=container

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
etag: "0x25617411C045440"
last-modified: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f19e9348-bd6e-4f5d-901b-87d56d9eaf42
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-8f1f5662-174a-a012-ec0c-432313a3987e/test-blob-2700151d-fc23-1a93-8558-95f927718173

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
XLba9nqbx7Wrv9qucrRqXUncN0mo6IBlwwQJ8YEYeHqK0MZdyKIEgU5LfGQi5KfQ7jevSzo3ynM1
dDJ1kdUzkkdfJKLuDJSn2LX7XWwcQ99dOQNJaS1AUgVSJ1RwjvB4F+kdwsAF4uGjCHKEO20HGTBT
GFjS6SkZH9Gcm+VAN0nFg0aD/oEeV1chpmG6vBeYSw0jHHWYpi3AA6PvaEb8YtEovrgngxqvNMAA
sELHXmK6BFDXHBrULdwYwvveL+8QJUOQkf1eccfzdOi0l/Xq+KVANGT2JEa2VJHcDsEf0QTR8Iv+
N8xlW5KI5KcxH5bmLclVnfuKGgD92T1sgmIG06Pk46Zq68HY29jRbUCehTX69eD3yTMJR9WLAV2P
+NkwghAETTzvfEEHfcIiuKzAXlQIcYyBDgpv2pzR3+pkSOL/oeovmjf4C3if70tx544oyqMJh4ZM
rnMGlHKgHp1XozTfIhfCkcMcD2YU4h6+/vMNqBRGW8FbsvN2KAXFWOzaR0wXksR2Zjnf7HcgOMtV
SJZ/knWJEEdzg3AkS2i9V7Z5OZvSp2sulkHbZm5JO3onId9vRsZ2UTYEow5UUhvQIpXApv4wgqEq
UPs0rqnZKUj1/CmIThDwAuhkzQNd2kQlCkTYiJR79p8+RPXKQqOMKnrGXlXyR9OF0KQWy7SezXW3
DqNkAaCzeQWKSgobJcBE16KIlnvuM8NxU7jwZSrqn3aAEzQAJynZE+VQaPzJaark0fQSFjf6yNrg
863owhTan6uTmhKLRLB4roOWnsvGqOkNDJM22Ik/hktZIDR88VDQdchRNc6YWI1DmWezYyoPGUvE
2raApMchVBTHMiR8/L0yxSkCdHIadbQG8z8iiyIgSQbptxeaUNEBMOC60SVpx5yqgZ0BDaXYqWQC
erCH/8nypukdkkWll3VYAESRYKSOnCujdwmEHzxhEA2ymNUgeTEXxyo8SzRWBOkoqQxgRknAc92F
5Ie/bYasvII38/+fN4cTeZh5UVH2THIgXHYwAMrE8ST3mpWpWFmjkI+yHxHqiHGFTcywRiGMjpgU
nxEQfLu3cwHaqJ3yaSE+1cHCQy1hNdMFq7L+E6sDawv8lLlIkxPT+6sPD+DUkuOqcnFfyktqsmk9
C9EJuWBW1z2R9dVn9kGu7kiBUSbzMBjOU6E5o6DAkuFQC4hCyUJLuTiiQ50OQ3wvsdsC6WFCSdq5
OmW/HDSc0GLzF+u5bCUFNpjuUe16vxAkCvHEvamADcGtiI/cjJwDBnI6GyuRdUW2/LLIVPjsPnpV
mhJC1xK5cgkpC+OWKar76kt7P6Tkk5SrDsD2t7nJwEoUh/GKwC5ggKghZ2liINMIzWmtcf/WcA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x226FC20993CCE80"
last-modified: Thu, 12 Nov 2026 00:48:12 GMT
content-md5: QQST80JlQsGndz1Xdcarfw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 523810d6-2bc1-4b3d-a876-7eee13176bc2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-8f1f5662-174a-a012-ec0c-432313a3987e/test-blob-2700151d-fc23-1a93-8558-95f927718173?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
Content-Type: application/xml
x-ms-blob-if-unmodified-since: Fri, 13 Nov 2026 00:48:12 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 27561319-ca1d-4416-a067-4d6e72b18134
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 13: GET /devstoreaccount1/test-container-8f1f5662-174a-a012-ec0c-432313a3987e/test-blob-2700151d-fc23-1a93-8558-95f927718173?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_14
x-ms-blob-if-unmodified-since: Fri, 13 Nov 2026 00:48:12 GMT
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
x-ms-request-id: 8bc6d2f4-ce36-4801-b4b1-999759e85798
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 14: DELETE /devstoreaccount1/test-container-8f1f5662-174a-a012-ec0c-432313a3987e?restype=container

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
x-ms-request-id: 15c5a024-99db-4720-8ed2-8ed1e9e9eaf3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-c9967e06-c351-50bb-604a-9981a1b87129?restype=container

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
etag: "0x1C69473CE19DC00"
last-modified: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5aab213d-ad9a-4bb8-82fd-41f248686db7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-c9967e06-c351-50bb-604a-9981a1b87129/test-blob-fbbe1b1c-2cc2-492a-eeed-edea4f1b4f4a

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
PRbrCylkDr3t0QceyZ4yUFs/kFZA2q7aU03bZNbQAUT7TkOKzGUAuAwBDvElC4BPup2OD4v4CmNo
EbfciarnHc/CI3pbp4P1P9hKP8y8tEjMjKk5QfG5AkTgIruuIy9iGvEhYugF9BMZmNCyrsuWq1xv
EP0ArtvdCCA2eoTHRxyo5yTbmlJfxpeWH6ghBlR5SXZfPhMyYWwVRFnIz3mOUVCzCsamuxEKD0ll
ao4yvAHLvTENaAkIdoa4xVb4l/ceB81XbfyN0o5lVC/KzPfd44hX/BFIgOhHq5NA7fW6EXdSR2LA
2k4FPeqiqBTZPqmO2uLOoJvl1YbkEMJoTeSYq0K3d4WUHAg6Ur4npdjUbWzqsRMT7HHcbHHc28qL
nPAFCvzRIsYj+r3alE3cvS+tEKJWfpzRhL/R2gsTuEA9rrbOIZvcA0ulxrZVOVcj/65CLssoNR1U
NIU9/0e7D0J8nOWXDpyU0QxWsLjle0tnrdtc0Yl1FHmYee0VngME6rZ02Jxyi/ESrVy+0oVlb7g6
1lFsXj65B4ds/5SvfzMJUsUCcKKv9SHpSiMstkLzMwo02sexl4t4u9EUBYxcYy4ptX+/Yv4Vi+Ew
ghQajFFFeMuKeqRrV7o6irXRmu+Vjef1AgDCNNALHk/mgRV2XS5/z4zB0uiJvl7FhdhJQ/HxmvUt
JIlQgkT6fltVhNWlwyyGUcpj07v+bESi/a73wdpe9eYfSTmkL01IxlOMMzmIH8Ksw/InjsY6LrhF
roSVAr2A94/uhXny4SJ8Gw1ncjgKGd3sS/7oNmYf5RqBX4DIssOWCzyqmZlIueLPqnO50rx/O5Wn
qbe+mMAozqBfcYKhs2hK0Wb8YH9Do5EcGIzzZhJdASPrIQkL13N7gcv56EdfLfYKbgBWg9sWZAUl
on8zNWiOAXBetpJePvrygN60SrpJvOqW6PgRB35I1b0E5TT0R0xjaufXAHdjrC8GYwL8YRlK3OaU
nUxwfPryFuHVWlnG/jiSUd/TcrtzMjzIC6R7THOjuglOX6r/8u7t5eqVjVHWP2TKaRA5dmkqIWsQ
p3BVdspuMqBPeJ+Okl7x5ozQ3aTq8ctAsOJiaUOgIz4+70t9l24gJ1uxh8fEO9eySJDdWkPGJbal
FcbnC8hcr1RhT6ITdE4er7ZIOWkDe3QKsCGzw8j7d8qU2IKoOBuTVNhyY+w0n9NBvqqMfetMoZlR
3FumqeyLZtfYfpzMdXaateWRkBiI1hFNcgQebvneRzboV1vA7Kvr5/0UWyA3dEkz8cgGuhCByAZJ
WTbobffd+TZl4x4a2cg5pqkadHrxFf2663wx2I0mZ45Vd5N0A3kFNmLp0pEqGBcAzBRmZlSLWA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FCE3C832FBE460"
last-modified: Thu, 12 Nov 2026 00:48:12 GMT
content-md5: bJcZ8jzbHe0X0uAox+pJzg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 363789cd-be8c-4226-a078-6210773198c2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-c9967e06-c351-50bb-604a-9981a1b87129/test-blob-fbbe1b1c-2cc2-492a-eeed-edea4f1b4f4a

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
last-modified: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1FCE3C832FBE460"
content-md5: bJcZ8jzbHe0X0uAox+pJzg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5a4ce64e-e4b9-4eb9-adab-261b3608f8a0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:12 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-c9967e06-c351-50bb-604a-9981a1b87129/test-blob-fbbe1b1c-2cc2-492a-eeed-edea4f1b4f4a?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
Content-Type: application/xml
x-ms-blob-if-match: 0x1FCE3C832FBE460
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f7b7d04e-0978-404d-9a7c-af5eaf20ce57
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-c9967e06-c351-50bb-604a-9981a1b87129/test-blob-fbbe1b1c-2cc2-492a-eeed-edea4f1b4f4a?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_20
x-ms-blob-if-match: 0x1FCE3C832FBE460
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
x-ms-request-id: 311c87be-9446-4f8b-a93a-09417a6f9fb0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 20: DELETE /devstoreaccount1/test-container-c9967e06-c351-50bb-604a-9981a1b87129?restype=container

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
x-ms-request-id: be72f360-dab5-41f7-9f84-b0f5933feca2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-822d3943-ac7b-a921-3e7c-90c56234c5a2?restype=container

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
etag: "0x250762A3E42B360"
last-modified: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9795cde6-c68e-4426-9a7f-2730b0f3f70a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-822d3943-ac7b-a921-3e7c-90c56234c5a2/test-blob-183d1530-4307-8f6c-d264-300b78c00039

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
yR5QO9X3iYpBQJQUmlK0ywdxNlEXc1AAzZ2vFnsVMH18VvtE44nMOIuz18euV/V/r2QEB4qvIlbN
UG44SHMOKw8WmENXcOh9pf3FZJuJUXWoL2cXESnzzTSld5MblPAYpKu4mL6xKD98hmKN6b66RP/4
kBgM9xrmI8sPsflUYRAMrL/v0bm39gcnmorHZuN26jKUIwPYDK2R0XXzonZFJyRRgDz+ynNFQJkR
5FyPHrznmMfGwD4MNKARXv9Ew1SQ4XJmduamdx+/TuJqxihQArO4Cwmvf2fmREuc7WxzAXxEgALq
KajWQSGnBnFbom13wFtMi7hL4WILfzGaCoqzTE1lJUYmZtkK4srnB3j1i6HdJCwQJ3XE+Z+f36l3
OzaX87ok9XwnUVqCQantZNnpFfSPvOVdoiTYoSynhocvk6aTUBO+0JUlttPRjuXL1pXFtsm1535R
OVGWTFRQgMvTUq4DWhPFK0RfagYSjBM+DcqX4dC9eqsnQRbCJ4RA1TUH/Ts3x3yBAIqEVnx3P609
Vz6JuJ/7FdgC3Bj9AwPAHpXRCo7YB0VOFuFFOSQvrwJphNBFtxyWDOhjNOtjhP2GxDfnpjUeZU/5
O6K+tduz0ywVk34zemd4O/2mdNNa6pLjvnXsRwnMSx+ATHt611YMr2C+TvB+U0rQbms3ePB8n1EP
2vZmx4sjSEhesi3r/mOmmsRym5yhZWsrG9mdldIuA60qav1gpejVmwWoIKAc5W8IkN0rCgS0bXWL
OquyhbN1MK+AwZRlRvTcnf+X+UXKDzZplQT1AviodfyI1Ws9IxVRM+/xmyTboknpT20EHXQwwCt0
SO+ugC2210uX3HGJnnrqRcZV2XMSjvO7DLOLpFiHWBU/ydolorPCOsPYRMXYX7DzGteu2ua4Yrr8
83N5KjPzD4RcStWfxKITkp6vOUkt4qwCmImA2X0uh2cgKK8/SQ+Q5TRBexXaVFU0m0hHCChwzxDH
dpKqcjUGLcJufpvz00iOH1QV62eXKEMzSz405n4+sFmed9J95nL+O01Sa9W6Qcf/uOnUWuOpME5P
dif30UZDMM1BVVx2ETnhFrAZRLxueQp2NS6ValV29EeELm9LBmkGDjsHeOtriaev8kQyj+yS4Pwd
gZwYrsV4y2AU8uPJlg9HEzWAZgEeC6uG5XcRQ2Rb8k1zLYXN7WB1j6yKVpfD5lw163y2EXn7/nbw
kchOZof8uf+WVWiJeSXUCtdUlLQUw/8a3FjnpODTeC8P3FuYJygkjp2XLZD0q3FX4geipmrC3M7I
M4ovFBUfwt05epzJO+OuLwUXfJZuJjHmkMLZMNLFTQCNz/Od9XqIeGqzuzDVjqYj83Zkql84Wg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x206B8625EE24A20"
last-modified: Thu, 12 Nov 2026 00:48:12 GMT
content-md5: qXgR2HYgB8MvtNcLW0Yszw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3abe7167-9a7f-497b-8975-6d27ffa4be91
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-822d3943-ac7b-a921-3e7c-90c56234c5a2/test-blob-183d1530-4307-8f6c-d264-300b78c00039?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
Content-Type: application/xml
x-ms-blob-if-none-match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d1f67f8b-57aa-4a57-a9e0-384d2128fa19
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 24: GET /devstoreaccount1/test-container-822d3943-ac7b-a921-3e7c-90c56234c5a2/test-blob-183d1530-4307-8f6c-d264-300b78c00039?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_25
x-ms-blob-if-none-match: "garbage"
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
x-ms-request-id: 3fa5f29f-99c7-48d5-a1a3-a42a6b9ec1a4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 25: DELETE /devstoreaccount1/test-container-822d3943-ac7b-a921-3e7c-90c56234c5a2?restype=container

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
x-ms-request-id: 4aa75763-d349-4a1c-a0d2-e1e782268dbc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-8448590d-4653-0b92-732d-9c3b6cf0113a?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_27
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26CDCE4AB2C9DE0"
last-modified: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 76266d5d-4085-43fe-8e09-36cebae8ecd5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-8448590d-4653-0b92-732d-9c3b6cf0113a/test-blob-2b048f8b-6bbb-1101-011b-b53d5b60a2a1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
VXXmRKz1NTLYp0cCOFI6M+I72BtaDJ6hWDeCN5BUrxOL+ub2CcyOlVnSUxMk/tiv4YJaIIeGRkjX
ROt0c/2hg/g0dj5sQykVrULBh7mKfVle01YN+o+LBbOdH8XgGSJcMM8b74iaQ51YRHJFxL+PTMaS
FqCnk4hpqXGKziNkNZQgZVbpb43RxI+4tbYcRkH0DtP+TgOCtJ1GsUYWD3R59A/eJF5optw5wFEQ
7t7STGMwlcBQZeaRnbC5or1HurUbPsCmPiHijGf2xY2xcsa+dGXj5nm0KY8oTIeurgMf8Qac9bAd
Kw5CTQlYWp9Z3yrq+y5YY9M7ZhUxfvGZNN5k19OHFX0VoEhWoZlwXM/vz21cw7LVxo4yYY6b7K0c
qBkq9ILL0cqt1FrmAcI6ygpFQa6EPHArjhBFVLTuerSaOvh/RWdMJP2ir+5Y78TL+JaEVar/mGyp
/2VxhX0VvlqlS8fJuoSi+R2w4Y2B059MelweaiQKm6KM1kYC2p6AjPGUsqP8AT0R4VyMTrbeJyvF
JQsh91M1m7AlPeQ+oB5+MFSc7SH8T3geDInIfUzrra4bPLWSX5WdXhfz1sRY00E9Dh5hQjoKydWT
AuvKbR1jOY82I2No69C//o8JCXizxjlIim8uimp0EHPf/12q0vD5j500IrDd1CJNokOqAMBc3zyx
guOtNa8kwhLwiOxzFSyeEHnbfqOJarVN4OgnyRCygx8g+FANS1rtEF+d7Es12owXC/BGgGGYJxct
YFTH/fkCPgXMUhzckcQf7m5E7H5pFwVbD70fbAK+iNE44OsFJRJmm65GaYhvO3orJ5LyVDuYw0hO
a+074tECDclLo7HZGshb3VDPI65969RC9ERwzDSVnxyitrklKrncQ1u+JJjJUgzJl3bqyaCa0YAZ
+e6MkUGVtQOUNmMONrOX899Svsc7eaE4pzS+q9Z7B+Q5CzHLT7IZKW+UNBupumDCU9XBRxO53YBM
VOoM1wosGS9/1SqCzKMtOZRXpkSGj+zU+1cBucDRgC2xfvrHDFJkaBvsKeU1QIYxlA5+YTY8xcX9
ONuyK19urVT90U2pZSxC8z4omWUHnrrQzyWxUx/2dbk0ydR2sjy8fXyQOG85iC7hPG34Eytg9poh
4Vs5vVo0BluUdJtYy0EBbBzodmVKl0f2zxax/mGN09M5VdDhgsAhWzITpBOTiXAs9qYPeH8010oU
Qu1Dgwf6B6DHHnZwIOpbxhozNvIzY0amhAe6fVtUBX2FzT/T3dgqGZ1yy2r6vNa8s7FkAKBX4N+m
nf7/P4lEcxn461OqiOhCCRxVwJjbq8gx/cmq7wTdLuxgLUDZKtoTLVdRAtGCEivIIveDAh9Gyg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EF26BD9CDFA400"
last-modified: Thu, 12 Nov 2026 00:48:12 GMT
content-md5: wBNfv38MCDbd8AvT0OoErw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 33e31886-ac33-46c6-a3e4-855fc38a5115
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-8448590d-4653-0b92-732d-9c3b6cf0113a/test-blob-2b048f8b-6bbb-1101-011b-b53d5b60a2a1?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 41ce35f2-9ac0-1483-1bbc-664a5ba868de
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EF26BD9CDFA400"
last-modified: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-lease-id: 41ce35f2-9ac0-1483-1bbc-664a5ba868de
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d8ba0e5a-831f-43c7-8204-aed1efc8afef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: PUT /devstoreaccount1/test-container-8448590d-4653-0b92-732d-9c3b6cf0113a/test-blob-2b048f8b-6bbb-1101-011b-b53d5b60a2a1?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
Content-Type: application/xml
x-ms-lease-id: 41ce35f2-9ac0-1483-1bbc-664a5ba868de
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 50f24c38-4013-415b-8548-82b35e26e132
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 30: GET /devstoreaccount1/test-container-8448590d-4653-0b92-732d-9c3b6cf0113a/test-blob-2b048f8b-6bbb-1101-011b-b53d5b60a2a1?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_31
x-ms-lease-id: 41ce35f2-9ac0-1483-1bbc-664a5ba868de
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
x-ms-request-id: 8cb3bf52-632b-4d7d-be28-32ee902a8201
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 31: DELETE /devstoreaccount1/test-container-8448590d-4653-0b92-732d-9c3b6cf0113a?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6001afa6-4239-4e0e-9620-0fb842b364d1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

