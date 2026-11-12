## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0bdba941-8356-6869-3e0a-9b6b44aa9364?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).UploadAsync_AccessConditionsFail
now: 2026-11-12T00:51:31.9371978+00:00

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
etag: "0x21E818856E1F020"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 79390740-79ee-4ac9-80bf-9242ac0a1aaa
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0bdba941-8356-6869-3e0a-9b6b44aa9364/test-blob-e2bac6e0-ccc1-a9dd-edb4-c69c059ec213

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x2777BE2D7B51160"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0707fbba-12b1-4e39-81dd-ace1640b1334
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-0bdba941-8356-6869-3e0a-9b6b44aa9364/test-blob-e2bac6e0-ccc1-a9dd-edb4-c69c059ec213?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
If-Modified-Since: Fri, 13 Nov 2026 00:51:31 GMT
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
iAMt8Bxp60zg8BN6ToVwNURz3lbSevR1yzEdobzNYqBHh+NAfKNId9ptAdC5Y1toRJFXkr9rQA0P
uCTrS0mPE45zMsaiL7igK2d7ZXgkvGjVtV0qddDg3EfVMcR/XCyR3e5CRjCVxhTZt2ZX8NuU6vu8
FZXsZZ69klZ/zP7zIc476oeK4XY3QO9JUL5piOtrQEbIw0eWpXhPhLPaFfkW5pWYHAVTCgmFhNSm
ohTgVAlqE4u3Kl6HpEQPOlzCXSv2Mmoo0WzmGDY9Qz5y7wJkbzCqbwFtXrw3EXfAQ8+swyapsHCp
t4OdhPtVeeYfFLRCq8ssGO4piNOu8L/0JdRmkYAXyT+SuretDOoGGOXVGPzCfpgEf6o4gCic+8bD
qV8m7uhmB0t1sPATfwsDInDu2NjDMaY8YhHV30kX9r7w6WOL4Cn8bhCxTc6n8ACeNV23rSLuAHe4
6YzWkCgBXboyIpWod0FG8mnIEePYlXERN6rrX0ibAunr0/adJd7or+8Udc5q9b0bcbu4Ju6T31Qa
xVl+Fv5xlh+svaRKqcyL32L0xCCjp0Hs0O6N49z6V/SigmCEaZnxot6uvTgZ0MjuLUaMnxo0dh4X
kUYQ5LNDsWWwqCZsB3bIAiJB9ekI0/8lnrWWbrfZbgxBbNhT4b4ragvTaSiigibPw53484E0D75G
6kb9rEOt1joZKpqddSBkFYrdNWrXgxuPxqoa4XuKDV0ZDPd3Lr3IJZLuiFeLMk18lN32VtpUb2Yq
beaZkvW/jh08hGkp7OfMFQ/X6PvEBJRcnk2dlLaDxZyQTcHXLpKcLvk5Tq3kU6f2KUDLfIZrZmlR
PPSoIfpnub7MmJ8m9eZ8OroBirXmeEulpmp1t0kWJeZXhfKe9A3+0pXvGLoI0DRaT0HMady0a8Sp
AnqP8gJ1tnO4zm/03kasA7cf91+QndY1G2gHSbwKoxot9PKSbuCTeWFHTwLFZXH7H2YklHNkGWSk
WtaZbWy2ripUxulTGpTXjH3+SU7Ub7X3DClV5g6nydqN7RQJ+Qz0kKHXcZ6HpwXSTAf1ZtAW0Ooh
oWBDYcccrf0Pxix/zpNxCbis/P4WcGUkg5oHsWMKdx0q51ersS/Zu8OheOHYUn10g1wXadPrCjH7
H90tFPuaBE4PVeY7xliJ0kE6dfiESzAcky0G8w1JPt0msJJRrKbIB3OSyP2WOL0EjZaSsJU5d9Ot
EIHNkxBBxhYJFRXFOCaacm2E8YIzhlpvAWZ2t45I7Tm/pJwl+nRjUALmjSOoPlRw9z0ntIVQeYkm
XZGqyg+IwSjcBpSJdXj5IaCATPk3x8MSBr9QIDizbioS/pziuYbzXsz6yze/54HFLpPk0C2Q7w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 8922d3ab-dda1-4d72-a71b-db8558ab5ea0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:31 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-0bdba941-8356-6869-3e0a-9b6b44aa9364?restype=container

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
x-ms-request-id: 303bc476-ca80-42b0-a007-dcdc21d021f3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-c498ce96-384f-f0a0-2898-6a7676dc1667?restype=container

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
etag: "0x1D8EBD6A5AD02F0"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7ec84775-5d91-4702-8d05-12a5cc49ba0e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-c498ce96-384f-f0a0-2898-6a7676dc1667/test-blob-2dee8c1a-fc3c-528b-1e3e-8bf1a4cf9efd

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x23CC672DF55A200"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 51a28957-ebbd-4f10-9376-b16b398fe59f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-c498ce96-384f-f0a0-2898-6a7676dc1667/test-blob-2dee8c1a-fc3c-528b-1e3e-8bf1a4cf9efd?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:31 GMT
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
gQ8GFCHBpCUrCqOfVXAL6BcryUM+Y7KZQkWlEa2uS1n5bPVm1gJGWejIATFZ6/yuMqLaeAVavh5d
bNHbG5J4fL9Jpuh7pBIV5HBadWGAQFdJ994K1NJTnq7WCWkwaz1VUIVyD0UTM46QxJSU/0i83St6
kSS0bajs9gc6pJqo5HkyBSXcDTESNsNPeg8+v55lGiw9ttoZoeLdhhk92Y/z598aYfoj38/6Z1tg
ZPOYrjZp1Yluai6fGWND/4cY1Fw0XJMwI12jQTpcQ05+uTzuRdji1AMFhXyxe0iW4OBI4pL+Kwhg
aIrZxZNOESffIF8nVLqvNQBYL9YWfqcUDGFaFGG7gI00jt1NCA5wtnNV0lvob4slmaySpfwxSeni
xLgx9PzGI6DS8sXdYS3x6HhiwaxMK53VNHu0KdqRAkXzakRWPsJ3j666Fn3GSDd/oL2Dz4g9lpgb
W7+BEfrGQPCA6fbpm6m26zL+kRQfD+tDNYgcDTO9ttSrO+IC9X6z9NaNRl5BlgUUzONVPwSD+0zU
PttxqTK8wjMhPmDGtPW0Spw+ksmMAZ+DCEFPZ3fPJz+WLreiQkuj0IMrH1ilTRjtofRnRWmCRzw8
7aDxbFu8URYgL4Y+EQhRm8FGYeFH3rsoYsWCaOHWE+Z7ZlSrsmMnb85BhB6Rr5DsFqqnPOVa9A/k
yAqVOek1Shufwqu0peleHvITBlqdl7I1llE3L9cBIHFExulZkjXkDDoC8ezkN3HBSR7zRu61RzFY
YKKY/RtEnqE6b9//BYy8L/ogm6XFUF7gduW5DdqCj363ADGSTA4evVNKqsiSwUSRNhf0lKyMkg9D
uIc1i5HHt99gSARaKuLrAd1Re6aWTrWhJ9bCjfrSKm4hTpSH6THCg/LoMXg/Nww1CZPPOxdprWnR
k2S6BSrljh6WOdtOYxirj/izrhw8Ye/KjYRnAu9Wt6EqtVXNCH3HA6Naqf0x5qV7I6sftf5NlTF0
73emfYsuP4E5I67C3od666t54bjxmKbe699ENwKj3SAjWBgFIYUYK2p898P3uUUjpclS1LN5glfR
x5Gs6gh/lkaOnoVvdMolYbZNdaHj5zKZIJI4UAlsqdbANFrza0Fi/WF8aBrAtDD/LXP9LA227t9f
Esp1RkU9IfSurj9vMvV063c/Zn4Y2WthOCOWb33JCkZ6lFl27LYbP0clEQXwkPp9iECVdodgRjle
FA4ip7J25aP59Z2b/v7BIyY38shmcKgoGOY9M5S+GU0gGNeo+ZiUrith95pc4YpB1FJhKVRx+KRm
+Y7LObIPO9tQe+UnGSqOo0OcBHkNzDZc+19BXPD5rx8zQf8JyHV5Uru/DGakGroo04YQ1PQrWA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 8bc57f3d-24e0-4f1d-ad10-b82449a84721
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:32 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-c498ce96-384f-f0a0-2898-6a7676dc1667?restype=container

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
x-ms-request-id: a9c26e76-5b5f-4020-9f82-8f1bbe5931c9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-3e6f582d-ce52-eade-57cc-c5f4d72a84da?restype=container

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
etag: "0x1E18D9E2AD1F3B0"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 08575873-5a34-4be6-b433-4bf29faeb608
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-3e6f582d-ce52-eade-57cc-c5f4d72a84da/test-blob-bdb122ce-bf4e-b7d0-e0a5-18896ae8da2b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x1F5F0E00B614DB0"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1ac96dd4-7b90-4ec0-b10e-01dfd2b4a8dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-3e6f582d-ce52-eade-57cc-c5f4d72a84da/test-blob-bdb122ce-bf4e-b7d0-e0a5-18896ae8da2b?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
Content-Type: application/octet-stream
If-Match: "garbage"
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
B+nRsVg2J4Tc1LSZ3ibj/U6rQbFCbQpth7hdrbVVgG7ymuzuWNOBmPst4HkKN9m6wRo7vqco6Zne
ZCmg2XnOh1RGp0Q69aR6Kqm1FI2RY1Dfo+uaGcHGybBSD/Sq4L6CXlklxI+UgMx1wJT9c9QMTQHY
wTaONG2Sf96T5+Ww0EnqM7Yza57BSiMfJFgsyFXbRsHz0h6I8yrrkkSxAJjmxfBLEz8e2eJiF3cT
bxAUZraIt6EkvP0qYj+MR9laD0mKOF5o4bUWvW3fkbundYQa1yyOKUj3wgnyILH/kZEICActiDax
rIQAcfo0RCtCg+y6cnCsy+YBknZVdcEEFivb1omzeuxOaCqnjbdOw33dsJ3ERR8gWzwhK/XAWzfD
/FvOWG2hjgj/bAlFBT4uss/4d8QkP9EMuntNkk72jQzz5JBcgGoPOyGUxdgV2lb98ngmyORyn7yK
wZ3yVPy5CN/8UiCu0jJl6Dujj3r49t8kT5/V0MUogUXT0r7MHeYk27z5GYg1TyBGwd+ozhBCkcu+
zQVd4zgZ09Hb2gB0mMtUf7O+/91X7gB/jw/lgLI1kUDyDk/hx/eD30W2WnQf0SgUU09cg5HuZt8E
3VMoNFMepUm/gol8c7e8Oh+XoJOLX77m0Sxj2Q2vBKhv3OqkW6vymLUrYE+el+CYoElxVsVLeX2V
QWImu8w7EH3hDJbNGN90pQjeYP9vSDlMyznDPa3iJGNsDhlJy9zo71DRvYtKyohq/bC9bRl9Jfko
2fCTd9LQ/+gzYAnGKtkr9XCvnYquAgCxWT/8JLdK7ukfIPHsVXd9Ab2jFml+o9PXkXeozYdvetfw
4h6T09sx6XEfpgrnP6D4MpzNCuuWMrVsJZI/oSBhsKUa+3JZ6S7ici34X/3I71LWr5vroW/rWbBo
J61I8UdQvvZkzUMtn0hu6pi9ntO4ozZAafGFdQ41LqLC8cKAmYHmp6AGYyEOqRBSfbbXLrvdr4R3
CIhWy0jnL5+ha62G7VAX1/Yysj8UMcDgM/hXXgDm5UI+CZH5j9xXHjSCbT1iy49mv1bEqvxEYtbH
dZhQkNGeuoVrSOS/Hkca25MLkcSCfWdo8Z6pIjpF+aa6MRpEBo5j47K494KrpqEOqs9pONESRfgw
6J4z9ZhKJk89Be0t1tQFqK0RyYbkvEv8mnhr3MDVp+siEx7vL+4abdEzbqG04dP6ZJAjAHtxSytT
Nlog30qOaF0BC8K1FXi/91y0sU6qSLmkcHcwsqdvsMjynPmU+o6HpQVDstURRE8YYwgfvJrdqe6g
e27SXrW1klv6w3h/K/3OLQxIZpXjkisoF06eUPMtFfIL834gtEZQjSB6F4HWmTgLUY6NlENYvQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: e7a2ac32-e1d6-489b-9e68-0dc8ab67fb57
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:32 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-3e6f582d-ce52-eade-57cc-c5f4d72a84da?restype=container

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
x-ms-request-id: 5b8f2882-e314-49bb-bbe6-36d76094d312
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-46a942e9-1767-6742-ccad-8573377ead79?restype=container

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
etag: "0x206F80C6B8D0400"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 202ae11d-cde1-48d8-ac21-b7aacaca78ec
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-46a942e9-1767-6742-ccad-8573377ead79/test-blob-75d8f8c5-7b68-52aa-7e15-92fe64a081af

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x25BEC960B179DC0"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cc0f60c3-674c-418b-84c6-634eac64c296
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-46a942e9-1767-6742-ccad-8573377ead79/test-blob-75d8f8c5-7b68-52aa-7e15-92fe64a081af

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
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x25BEC960B179DC0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b968bca5-a80a-493a-9113-ba2506874f01
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-46a942e9-1767-6742-ccad-8573377ead79/test-blob-75d8f8c5-7b68-52aa-7e15-92fe64a081af?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
Content-Type: application/octet-stream
If-None-Match: "0x25BEC960B179DC0"
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
sjaV3QsA6HbeE0rUUCUBjKMVyJtq4lRtl1fHUYRDAiws1sAB6c9txQ9il1Uw1QJZFAVbTtjlRNDi
KEWzOJbxmhAeqHpk/6PTpwKMCEr+PMJVbT1+57RURpHwH8GJuox4cPxFEi2H9RRiiKfVWTyG4+uD
XspZcrNcymHoc+DhSe11E5hNuSqUzXgpHF8Mfu1VajvVBVvCH/1J6EfMnoEzgD65X0WkOCnB75FS
L1ZTT0tzkwmkDEOSs/OaBNDiyC729ZshUx+osDESFBbJb/Cn9Zn7WAt4j3T6JqtRCTRY3idjXDm6
Mvssy+LXkvctyEQD8g435m8jfmYnJi1zVqf9uTXuZhO27MKdz4woofx8zV1nThYmIfi3P93SkwzO
uXU72dnCPmIwTAVLmhfj+9xqq1jPCwiQ15c8NyY15Fm2zhYW7McjuY/7NwEQ2ofh1EQBaOe0/61t
qwJBhQc8+mislcsBzA4VRvHJ1NQGf/wQW2LhNHtxAs9oqUHE4jOHvjyZZEW84Ac26yH26ivZZywF
MCmkWsbsOpL7mCPNUGS9QRWYbRq3VHtbq0laexejj0IVv7EJ42R1rCqywEfkaJq9OKgWQPkRTtuu
Sa99kr57VwnhuJGys16wIsDwBJQzdkKunEJujU5IA3DWW5m0+BlrN2g+A7AJC4VKZR45IUpHetJs
zvZ8DMq6mLQg3FjF+ymnhMws9XOSpZG9JCgwD+ImjuHHRyoj7yqehGr76C8thGn0kpx9G4Vf2ihk
vuihiYnS+U13/rT/g5WijnEJl71ikJ++PH1FqHNbZ20BvjBC/PrgKO7itYa19A4H240UVUNrAi5I
400MjVHZG5ZG/cRkX5F2KG7Of9oYCUduPc3mRxIplrsC+Rit05udCJrwbvdKo3v7nS3UnYJTMNoF
nk+D8tOEHGcIYmZ4yVTTMHc/KJpQJJpR66rkVPg5rsk+pzVLGRbHbFGPQUAVgtTYAWwLFAg/tXq1
MgYon8huz7OdOiEfiBdgd7tIwONZPGnWDFOMLZrB//K7lecQns2JIXGNd0iyuXhVq5xM9vSXXPad
UpJ04qIZ3DovY/IvUNjuv59xzMQhI1PaNoH+dAj+JDnxc0w6FT/Pc5sNg1WGJVvDXjdUJZAxey8/
masgG2cyMD+5PtyMs6lgolgoE5/9VBAmOhbRqv6pv/cd+nuTrlg02lMVzOd+NquN84I3CWePQkSa
+uBRYYZAEH/lb7guzPQA9DlM54gppwNqQ7Z8cbWPjrg3+bR34nnM1bxomMfyXyeONxUuQlq8cFLc
5h3QxJ7JVuD/99I/iBG/gBLLwQ88eOSO7TqgYEteeolimvxb/BAenkHm82hUTq8EbsJH8K5CoA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 62640e61-ecda-434d-a82e-4c61c058ee40
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:32 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-46a942e9-1767-6742-ccad-8573377ead79?restype=container

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
x-ms-request-id: 3ca3c68c-f35d-47c8-bc5c-7bac50b38a09
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-d741396e-2863-94f6-a17c-49dded146484?restype=container

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
etag: "0x1C1BA7C05181E20"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8223efea-ceb7-4394-bfe1-9d93d49a4c64
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-d741396e-2863-94f6-a17c-49dded146484/test-blob-cd22ad01-8455-3a7c-9e8b-9cf1891689da

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x200CC3C5D177560"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3d5e7b5b-65ef-49b1-bd53-c0bd408bea8e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-d741396e-2863-94f6-a17c-49dded146484/test-blob-cd22ad01-8455-3a7c-9e8b-9cf1891689da?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 228dfa1f-39ba-76ba-4b51-51eb0a71c1ef
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x200CC3C5D177560"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-lease-id: 228dfa1f-39ba-76ba-4b51-51eb0a71c1ef
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2df6e443-fb4e-479e-96a4-2e8b28326e50
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: PUT /devstoreaccount1/test-container-d741396e-2863-94f6-a17c-49dded146484/test-blob-cd22ad01-8455-3a7c-9e8b-9cf1891689da?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
Content-Type: application/octet-stream
x-ms-lease-id: 51594ad0-e984-b4f1-dfd8-d8bf1c8c5db6
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Cj1GQ4x1S+m9BzjYiwQLi/JvvvOHQsnI8qyCAzKQLy3JreZL0EZNqq+kZLIA4epGRsb4mrLOZ8h0
fVDf8ke2LNcLD94ev7qsIRRE490XyBHBO7xsl5R6+0Ue11P1bbdn7Tja9NIMKIcMTHieioTrXLQ/
HreLSpVDkBSYAOdntrRd3PWlPNM+tRM1YEob3HDAMnqetk8A3KKil2S+cyifpJXEQK2PRiDhAGij
VepKJ7Oj181syQBkXQBSAqRvgEHrlbu1V5vDMexavLXmXIa4WHCwGpxbMtqUYOOsPER7cYAnuMAu
ldAX4KbgEgxLfQF6mqk0vmWlj2LgIPa4FvWo3ks1v6PFicOgmDr1eiDOSeLiMqGaR7MagihdTnTZ
X8mwODTBFr5dtBHllCUrrxVCEtYU1eRTDZaXGzx6ZztOxjlxRUHrDDMjhH2PtbON7tMTGzudxIrl
XSueKfuC40zWls3sumrUVwWj8VBmw1fjCixpZ0z/sQKvi+cVTeM3oaEwuR7loDRoPsQ1+tM5fpnT
uh7OGHwA1uXLPS6Cvgkia0+vNgo5/Wn3ACiIybYudQ1OQpLEaYgkMOI5GmMG5oC6E46DikiOmry1
1hhUdw0unMcgM3x2XQLHigUn/+MG8RmnzrUoq+vFv6fWD5Jw0LjVCn2c5bMEQ7WLvABCZ5rZr+X+
rKlXBvHbW3PUoE5wV7lNUvVmaQtmo4r/nO7rglgM/V+tciQOfgSLwIo/L6JnG2VG9RWlckXZlwgf
V2kC8NgbyKPuw+SUPtPx2qmBJ3TomIGJpI1DZ4oa09ob7yaaiM+yJGb+eFiAsbdBs5ecWG+UN7/o
eUtK12EZ1O8JeU6tV1LZzgMN6R8pCfPWArPyfntrhrhnsg+EZ0wF5aRodjhplFxFwolsh02fvm9Y
dNWtJlV0nvKVRaRCVWe2BwN7wJO6bW1Wrbvy/v9ryPOgK/N3V75O9NdG0063Am0htYBKJP7cngdn
V3magqDzKn2xoil0P69ELMy8dJkenqpO0Eh+IKT1w43rDwBFtHI3U6nRBl9ErXbQBfcxICpuSbjP
S7FXdAnZvN6biDCv/3dahCDvTJhKCSLSrRusw6NjfcZIdWjA396g+EmBqSVGIQV/15sJf/wfhEKP
hcbuLPk6NwtpZokPmaVCTlROyWD8i4sVLOsIWv7JKPEmMFoXssxQRnEa3Lt7cD31xjCo0Lvhkvk6
2AANMdwMnz2Y6GlLKpyH/oLv4q/QmbutE5TNIVg2RZ5h3NnLQhSUDTx944jUqpuTINI48q9Jaj5E
YB5IPn7lYqPL6U7CvLtuWtVyU7Yz2Wj4OgGF/VLuF3Kbh+L1TM6+l4DkCcBN0WQXypja1haIEA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseIdMismatchWithBlobOperation
x-ms-request-id: 6a325441-a4fc-4f51-ac13-376bb6dfad87
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:32 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseIdMismatchWithBlobOperation</Code>
  <Message>The lease ID specified did not match the lease ID for the blob.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 21: DELETE /devstoreaccount1/test-container-d741396e-2863-94f6-a17c-49dded146484?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 814132fe-80c7-4b11-baec-e1dae754430d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-0450b686-607c-5064-dcd2-dc2734d8780d?restype=container

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
etag: "0x1ED5C26F156AB70"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1fe16d24-05ce-4920-b249-d1ac79ba0247
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-0450b686-607c-5064-dcd2-dc2734d8780d/test-blob-35bbb406-cf4f-aaa7-699d-6e33ba13405b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x1DAF61733325460"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 494d45c2-da43-4567-b6f0-db98ab017aba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-0450b686-607c-5064-dcd2-dc2734d8780d/test-blob-35bbb406-cf4f-aaa7-699d-6e33ba13405b?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
Content-Type: application/octet-stream
x-ms-if-sequence-number-lt: -1
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
E3ZbP/zJQTcclCzucakvPlGK0yJbUsG2DqWb3/ExlcmRgBS+fDgRPXODGbujuTm/bjDhMD8e/8C1
pTFWLmJG6v5jXPCVcMEYeZav1zkGE1Rr23HBT2WJc4BTCNcHug4RPS68P11IKv1uyLapbiiHr5Hd
61LwhJqY2uhwQWjpEb6InpoKSdT2I7FzUoau3wRYzFlGKc+7ILiTJGR12OiVhbf4IdCOfGW85sih
fDIU6frjF3QOo+fvzH3hdiRvgUrI3s3Ptr40yk/ziUIGGaOGfzpqkcB0huLPCFRSrAZATWV92Z1l
RDI8r00kGhml6LLaW/bqBe+JVFfrAK5p4R1JszzdiUAFITsHLeFzT2zIKh+ieFEQVkh19IVGeUOE
0s4v22fdx19x1Dq64tcNFgTrItaOx2nMOVzzaJW7v6f4g1sTRHMF6mLAMKMWVXRxZ92AWlds9gtl
YqIK6V/KthWTwl97+tGR5TdzzpbFtuPoggC3OmRQi4xQruHR+gED9XqOg5IU9W0M73Qf+Cd0n6y+
ImdeE3uwQjfSK0vvv+s2cNgcNzJQ042TqkvvMJJl2w41EtiZpOL+3UBbQckhHC+J6IhPWGh5bU7Z
y2gvwBKlbVA8uq0TnMz1HVrx9ZHEcY4cZkgJFYKmu6WJwNh6zhwuttR45GKBdku7WToNiHi8FVnZ
E1rJm1fNlv4Iidzze049wj+9S40smvD9TrtImDMszap+oLvBZRt8q05jeexuyN7r0MU5/srMrXhq
y02chf3K27wxdNqTe10kQaA+yCEDjoXdXMhu887gsvNDV5nN4CVRmJ4vPVMDWFRnFb0qjeRXZj3H
vik0XOfuUcLnTyTDVmF67S+D01Ey2QR0Bt4QtiQO7PBcBiH8HTu2QeuQHAgvo75cr6C105PrlOUk
wFYJ3Zue2WM0Z08/ftDzzJJlobz7RGIftAaEWRhdcHE711zlrWNQ8kOl+zxvHDHQwQcBhfIoKXv0
6SmUGoBL1/beA6ZzDh8uFa95VkklsJfVtJcRW+p+E67h8MM5vNjDWSRFkRiKXLLn0nBDrtIyzjmS
vmboOXsLX/D4kR1c9FjXtvwk4B9+S1fkKYh6O2TbryKKp/1y2iCoOTEokcqVi94XbPfWDe4ZE3MO
AxDykSOLHeL70UxbZdzce6btVrmMT56qY89sBaEzcJSKY9YQtqgNnHTombmRvAYb+ZJHK7y5grRx
SC5UHxdBx2G40AEFzMX+37pFpLblGKbIUQsP7ETX0eEinm15uX1cptFY2esEFi3MSEwCdN3+jC+H
i80MMdsc4f4g4i1XhCY96P3kjD+7wzreQqP41F0DJBI98i2vUHX2PPfs5DP/dMMmxYvgGf/wzA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: SequenceNumberConditionNotMet
x-ms-request-id: 7e2eedc6-29ae-4253-bc4e-7f585f32ee89
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:32 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>SequenceNumberConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 25: DELETE /devstoreaccount1/test-container-0450b686-607c-5064-dcd2-dc2734d8780d?restype=container

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
x-ms-request-id: 3592249f-662c-4db5-b547-acae2badabbb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-ef2d92c8-2337-a10c-1dbe-1b1992f88d97?restype=container

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
etag: "0x27D69AE71CF4380"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 98e130a7-8c86-4e8e-9593-b4e5679d6bf0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-ef2d92c8-2337-a10c-1dbe-1b1992f88d97/test-blob-4750ed88-dfce-df07-cde0-d20fd1220a12

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x1C4616988E17DA0"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5593dc0-43cd-4215-957c-6e00c28ad853
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-ef2d92c8-2337-a10c-1dbe-1b1992f88d97/test-blob-4750ed88-dfce-df07-cde0-d20fd1220a12?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
Content-Type: application/octet-stream
x-ms-if-sequence-number-le: -1
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
TSZlHCOFvxjrS8Z041sxLTfzVyyuqP7oi00hVlH8z/qzCcxsknF0Ai04XIIZk/xyr6TY3sveY6Uo
fJHVZGjH7nvLwdqPxZrFflX+dkt7z/hRrqesJPEv1aUmQxbgn53FcG4GTdIh4+kJEl913+1ZrK2Y
g7bAG8mKm+s1aIGE5d+3OQbcdIEmL8q9ohKRuvW3zZdoRxvmBFWle7Lm7HtohS2AvabnfDgrclPs
Ani3+eH1fZvqHJ3D0TWwN/jPP0NPVR3lEfxP0FBePNTI+gHc7oLQ8G/ffmiPvOxwNkU/XDMQnK1b
0ujlpqxLi9/J+9Y000h2/k/Ub9a0VVQP35kKH+Cht11TgRyZ60rClPOJxsEWPGL8yF7kPC3Xp3yU
1sYSQGv/J0N44FIs3BMEEdviKo+T+KI3DVaBvXswe9qfBRWDr1OIiZ99nlsP0OxL3ypS9XztAd0k
2zMUfWrHR2V4jNb9gWGHWqHwFVpHJz1qNt5Q3oZdsgQ4X9Qgcww0tlb2l0MVTV7Iyprb/eyC3LP2
qkaLdmjeGtrRxSGNZ+aUu14EUZD5VOl/iBTrgrQYtYIgKsjFqT/tF3xoRIc8O2O0RkKNfosj/FZd
C+5U85cmuBCfbT0ezxEfFjkUkQ9hQ0yxNzxyizb2/S1xZ51QmSTkQot3nM4llXcwbWdSD2tG/Mii
o7tbtC3ZqG8PrGd0zn0UME6E6qd+i6HFQR3PpO3CKmvVrvVoiI5enfNeFugPu5/qPd8cwhEgIxgZ
lnIPCgSCTIH7nyCHrKfAJkyzH3S5tYV+5GcOpmhZtIrdT/IbTpPv3MlmExx+YpE3W5vFbQSjYODs
kCWdc6YZoeuVqVy0pNe4xEOrUqJp/4HV10rMlEeGOu4SLr5tUWkjTXEx6bg0g7fEDKjA+A4+g5Ck
x5tbTA2jD29toXUZS3PZhwQwOBbIoVSSCIeexUHg1KstyYnNxwFkjdpJxuFCq8E15nAJDkt62yZH
yEOFBUkujc3K64HpDMACy6o8f9pyUF3Gad7R1sZfs+1ihf693oeQGjkTd78/TNqvBkKgPlxM1Hjm
v5xqXbYHajiUhobCRewjq2SgX9idhhwEIc+Ev3SRFrCG1x/rJr2CDA2Gq8VT7cFVfZP3q3WfSDh/
ZTzng6rDAnDWPG7NN4SnHVLLFtpXsTMNLkHhmmo6547mbMCBm4liw6hVfbFTiEYOT40j0zFdKLQI
2VRp4WgGm1Tf5srDJoLJaFMyAjSCuqX700rcFxNciEQMeMI0+eFAT+FcdKF7SikLWmvdKyWAhh6v
bQ4eKYNBgl6Gt62/lG9y8bJSJUYDgIgh0L2nf1wei/KjhYvSIiVdGvFD9JJ7TMb8azpzLmDYqw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: SequenceNumberConditionNotMet
x-ms-request-id: eff131f7-5292-4970-b404-070257704463
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:32 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>SequenceNumberConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 29: DELETE /devstoreaccount1/test-container-ef2d92c8-2337-a10c-1dbe-1b1992f88d97?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
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
x-ms-request-id: 6ea73422-5bc8-49f9-b5d4-b0e31c72600b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-59fc85ed-9ac6-0103-682c-bb1b0ee3a0cf?restype=container

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
etag: "0x25955FA8DC32C80"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aa9e7955-e8d4-48ea-8b77-7d0750b72d4f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-59fc85ed-9ac6-0103-682c-bb1b0ee3a0cf/test-blob-540af48d-8bc0-a5f6-84f7-ab1322ab5d91

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x213373183F7CE00"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 209546af-e856-4300-94c1-aa81ece340e8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-59fc85ed-9ac6-0103-682c-bb1b0ee3a0cf/test-blob-540af48d-8bc0-a5f6-84f7-ab1322ab5d91?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
Content-Type: application/octet-stream
x-ms-if-sequence-number-eq: 100
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
y9qeTCXMl4DuQoxmwDC3Gctq5TlWg+tij1bUz+7v3rzOKVAzRFOpwVyJZn3+j+VTP5JIt8YkO0fv
PLzO98iS/mPQmJbgg9R3wCPczB1tYwBxgI9cpyb2qu4IRAiW28qU92gZLvdOc7y90PeiR28qgdi8
XXY5NVc92e2o1z/M4eVZSNS0UzUJIg3TntYvVGJ+3sIv2n5TW8ER3FQJpZx88O8RSP+adS2iszpp
ZpeBDYSLKvl8nQdnBu0So3fgAHxwVq3mHQxj42iUjCZD6vQqkM/PfnujAFPoqkISiNK2wbK9+BDp
mvB4J0aQ5xDgIxz46BOoEIIBzVVa/nLKUVuV3sp0hvHkQfXfV1Y1EhlDCIcmGZ+/DrAwvCu6j5x9
rtXq+glFbJ0qE6Ydybkry7o8FvXroze71tAZQ8nGKrJZYaiBSxcP/Zzp+wb5oUX3BfFwfnimkQqd
LiQ4KyjTZOn0xGcQqX+iLBlZAqgxwjWKIj7YVas5stCe5B3z19FzFpcdBN3e5ltxzlFeTY9ibGvv
rgnq+g89uhGWcsVirlVH5usRE75XrDviZ4da2mVAPHexBCjIiBuI4EnLR3OVDh/8F2ejUVislwHN
CJOH49+sVTZNsaosf13QiTN0i2XHTFhoXcP+nesfBG0n+oCHAPxpH/E9SF10z5cJ0sckOAucBbs6
H4UcrrhLLqw9BYTcSYg2C2xzigT7844r9Moj+sxhivXFTOB3TXE58hmwN8oTLYk+7SyeKHu3Piz3
8LntKDTg23qPF/yov737OpjrS7vEGMdB5Ayfw2J6Dg6zgF23S8nl0FxPgxWNli5vo+7iy/NwMtfy
rEQnQBgYFQnu9D9gQ+7OBntfdJWxtE3eMB9zl0IaQ02FxZ+FvY9EN20MnqHuD18AFMV4Eb5CQff2
SRD4pH7H07Hy2n5OSEjrGjwnpRWs7yG/c4J8ojGOQ4Onj3N/S5LvRMrv/DThsct9jPaBG5ziSVru
ODH7SzGAY5f6prnVa8+qN2BKvPLs3sG3/xU6DCfnxUUZkBJh8/mZb5md5goSpyAn1+M8l41oAlpv
REscRVZvE+FzvNu8SERmsUxZT/i3pFf0EzVEqy63sI648q+ufSpCLdIpnutFa46f1eZBDrJhuKD0
JzIhKmeyuwtMBFaUuDMhFiEljQVrrqempdVIdqHbVjkPuVX4IQJrduPg+Wc4Ch2yH/iQPCqaiHiK
eoWRakRpca0chf7dKfQeuhYii7VAbpu3llepShkPdDHdbad92Qyed4e5G4Qf1PUEcoITd/3DSQvq
2tTtwCaTDRDNALtNoeAKhBQth1MWmMFhpdiX+/wzGiSbk/84sLdhJQ1zUtM5ttGhCfPolcG40w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: SequenceNumberConditionNotMet
x-ms-request-id: cb8e587a-906f-4439-9975-641af2c828ff
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:32 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>SequenceNumberConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 33: DELETE /devstoreaccount1/test-container-59fc85ed-9ac6-0103-682c-bb1b0ee3a0cf?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_34
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
x-ms-request-id: 6bf586f9-076a-4972-8a00-1aa0fe0d7d30
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

