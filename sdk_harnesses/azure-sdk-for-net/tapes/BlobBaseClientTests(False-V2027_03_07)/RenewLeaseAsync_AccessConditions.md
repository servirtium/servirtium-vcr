## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-84fbe732-be78-ad4b-fc03-33c7d2901056?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).RenewLeaseAsync_AccessConditions
now: 2026-11-12T00:47:04.1324515+00:00

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
etag: "0x209F8B7EAF658C0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b736b34c-a15f-4b47-a542-ecb78c7dc449
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-84fbe732-be78-ad4b-fc03-33c7d2901056/test-blob-26efe06f-691f-711b-f5c6-8d519168722d

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
HJ71/RebaLNGZyEXruqi56FzH1PwU9TIzIqOsjD6HJORBaszmxM/1Hc737dIBMILJKWvHUkePMjK
LDGNDLaCTEuOhqg+bkyNNErbtXQcgMfHg46LSv9JcsnjaW7iscjBuJJrun4ZzbVZIuj/QodTratp
xYkn9wJMRBPfWwTdq4KBGvzhscZJrbXYMSgWSi9Bj7zDeew/mcCPH3VqOnKxe3ZlfSiKcfvkHxfT
T8baNfnknctHGjKWQoA8UpFQ33NDJ7axsM0Htx3A3lnUa0r6tel7hpymaWFEzzqnTh9qk0CkkCcP
KIUs3OathzzYwtc1QZyn1FnWnL5VbeGSX2j+VkoZMNsj64xkT6m2+OEkaw1icQ2Cwr/nzfNouruk
mX19rzHxv5L8ElYQQ4WvH6TcMAHUMO1be5OLMWLoujDQwLUsOEiwM6x7Zl+3cn45N65Pi4m60GmP
IjSdZo0wFFclP4PPg+dbLP1VWMmOpAgVUfq0mC+nFvBMnRYTE8weS1IHkTL7abTG81+MZXefAH4s
hxSTe3sofimSg+bQRxgwNg13hxLVGehF7aXPGrB5rJyY54u3is/X3hMJaObO9qxGWy5pKHlsVm4s
TY7VWGN4GdZJOF+MeKw+oKj+zLEBd/b5ib+CEIQiLJAdizxAAYWwkE8PhL1MueKCKojQbYq9KtaY
3M+k9QlSJgzPb+1v/p4iTTth8fI4rM/cAOX7Ub4FYGBmqCS1DJpFvV2xfUr1EivpriBPWznkXzAA
x/UjVtROyQ6MCFZ6bEGgHDSUhy+F5u25EqOetgUngkj0tUSlIWaIY7M7aQnVbkHfrj4ET9gAe+EH
akQxrxIJZIYNhrf8+/rNCyN8SX3j5KNivwjGIjJw8zpjnrciV7OgMgSDyOiJ4rJEN0O0hDFjI4ah
zvAKQkJTnJJ9mF1CqrRw2xd5YBu62NxVguvvvG8IAHoxgYnClu/BLytWDEpVAYyPRKga6cJq5vUU
tMBXZOAidJjiESkqrUQntzDwZMySAIFeYHjG7Ra3x5uTruIvastLM5eyc+9jZJZk8zKSeYEpgrQ+
+ANoW4eBKkqNlv5h90xkpTE04IyR+vvhYvrkJU0Zaiwu8HHI49cQMEml1c2YAvvlLdRQ9KInrf4H
hvmNnQT8dCzSMwbbnMFaJK9D6yQuSV/+//h4yXWJB0NzwFzdgpJEqWGhxc/0CZAS9tDy5MLZ2T2a
j50LhKu2SSvDZ9xlfKEc/kLDjYOPCfVoZdOllyKAmeYeQ/P1OSS26nujMaKzrXkv1eWAFky5CoWo
ox7XEbIIQs31RzmtJ8UdDaIH69hTtLhZdcE8AIOaZDhuTJUG3tnJmu7UvWVAgq0gYgmqsR6tVQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22526185A75CDA0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
content-md5: 0QJ6J1ID0XbGoAB6rV6Yqw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 508f3612-b2a7-4a74-b5f2-1ecd8ead2a03
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-84fbe732-be78-ad4b-fc03-33c7d2901056/test-blob-26efe06f-691f-711b-f5c6-8d519168722d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 9b7e66ee-ccf0-4a42-5be2-003fdb2f162e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22526185A75CDA0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-lease-id: 9b7e66ee-ccf0-4a42-5be2-003fdb2f162e
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a57ec7ba-84e5-40cd-bdee-4e8a2b9dab26
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-84fbe732-be78-ad4b-fc03-33c7d2901056/test-blob-26efe06f-691f-711b-f5c6-8d519168722d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: renew
x-ms-lease-id: 9b7e66ee-ccf0-4a42-5be2-003fdb2f162e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22526185A75CDA0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-lease-id: 9b7e66ee-ccf0-4a42-5be2-003fdb2f162e
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 75d0c9fe-65bb-4602-9255-ae233fe75887
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-84fbe732-be78-ad4b-fc03-33c7d2901056?restype=container

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
x-ms-request-id: 61533ab0-a84f-4534-88a9-78b3d2e098d6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-ea503ec9-f67e-1852-f313-1c9d79f0b21a?restype=container

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
etag: "0x2474CEBCB88A1C0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1a188e7e-b015-4686-84ea-822b2da637b9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-ea503ec9-f67e-1852-f313-1c9d79f0b21a/test-blob-a0a7f7c0-3d5f-ced9-ac89-62834042d2f1

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
TNrgc83D1vcTZajcr6TQai/lfuSIds6LZIE+9JTP2LBBKlGfDz9M/SCvjPqV/B8HuPdTWsTuadUL
VQ5MheJjQ433m4VSMVvwmYDD2OnU9mhiNjuce33sUsF8k7owAHg+S0lsnWCatYecY8FDKpDrNl6m
6U6mx8cQCknD1p2gwJkHhYygaFkIyIG0/xi8qCcxkF1cihYpmISBXJIX1t7p+6InO6UDSs4FniDN
8ceuVGIhkkVARDWC3u0IHwzG8PKiygR2lGyCLUWOV+v1XKa90ggw9kSZqLZtpV24+yvBPq0uKifC
OL/1nmT/se1JjIFGSk0DlvqtCSFNCe8OyjIazRg+xzF++plIOlfgmffIIxjccbDevaiygSEFdS/Q
5tQx5eTVC8VPyFCzu1ujzW8qhOXXMlmCOw9wi0YQeYVpeFSDrrQS8xdSjKlgKgJND7Ox2/BJ+bR7
r6nVZX9/P07LSkMHIB67GJHOhKWvIREMI3ySXp6UH3+fB/8KPI6Y0k1alOC/Re+V9cNfe3QOy42Y
yUID7eCwNirDZxgfsdsCNbFYVY0wTd2N/WnbNKMKkTxxcnNMleVsql61+97WdUTnXEXCtXYAZ3tl
dfB31QKGuNXcrj9ntqDM66svelH+tock89ddSNvGcQr35h/19dVbL0IJ+scFgKal9cnK0ewqZr9o
UuEqKHD5FT00b8+B1/bW00sP9bvAH3MxuFIR+58dzYBfjKPzMQbSD+SJ0BDWIx7T9P6hG3EEpzJu
+HAd5xqdFqJPIkpT4qFFPObWNk5iW5U0PgahfLIOW+VwhDiWtCfK7LpuhgHUgBJcW96LLXDkDJ3a
6akU/JrvQMZl411or4i+DEqU89STYL70RCHUgy10jHibu8t9tvAgf0Y6b52086xVzCEmTxjIR4jq
ILd5G7yZ8FblzfO8QVZadHSOWPEhP1F0frcLTTxf03RCk5Y4p2OJoX5Gzia4mYrLzNukOe6XyeBm
BJ0EjaIahvl/eq2/Ic0QBbdy23EqvOUsQIFhupmFq8m10qLGhBPbK0gsOB/cC6oNkzQ2JO5vO0i3
100huctg+c7kCU8qSYCkl68o/oPGTzTWUydlT4bbRpZaDqzGunJ9zD5Q+AFb40qzkow+Rj3F8YcY
SmWk+6pICMO50DrT3d08qjJEdVcze2/csbz5nP9ZlR0lrm8N2dCUCO8+oRMP4LSvApwLgHww5c71
x0rtTmzDXzodri9tL9FhsG1n9NlczdAHSppjThSg9MmgFxKGprqDe0LY8TGFQdLKqdAOyPD0mfl5
5QPRXxEmfbplzBi/2wmz5HmXhNyfgQjHmaREkSvYrH4YDMC2sRswsXR3IHS6C87GW+R3XBQd2g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23787428325C500"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
content-md5: R3ex2RFA547dBhOsQ88SZw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 27b0fa2a-e368-42f0-b04d-ae584e62b049
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-ea503ec9-f67e-1852-f313-1c9d79f0b21a/test-blob-a0a7f7c0-3d5f-ced9-ac89-62834042d2f1?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: c60afb63-e26d-8eeb-8c20-9aa6ce49fc32
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23787428325C500"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-lease-id: c60afb63-e26d-8eeb-8c20-9aa6ce49fc32
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 67e3bb92-4d02-453d-8b26-bc568e771f38
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-ea503ec9-f67e-1852-f313-1c9d79f0b21a/test-blob-a0a7f7c0-3d5f-ced9-ac89-62834042d2f1?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Modified-Since: Wed, 11 Nov 2026 00:47:04 GMT
x-ms-lease-action: renew
x-ms-lease-id: c60afb63-e26d-8eeb-8c20-9aa6ce49fc32
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23787428325C500"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-lease-id: c60afb63-e26d-8eeb-8c20-9aa6ce49fc32
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a7ca466b-6fa7-4713-ad99-28689a5296b8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 9: DELETE /devstoreaccount1/test-container-ea503ec9-f67e-1852-f313-1c9d79f0b21a?restype=container

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
x-ms-request-id: c0576662-dc8f-4018-a5cd-3a7f5ffe5d01
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-68d2675d-6128-0d93-8dd6-7d3646614f69?restype=container

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
etag: "0x2424A23B30ED840"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e778ce8e-1b26-4b49-826b-0e3b21f40008
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-68d2675d-6128-0d93-8dd6-7d3646614f69/test-blob-ba5c32fb-55a7-cfc3-88e8-93541f64ff7d

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
XrIa9UG1sQJn/DiWZLVHKtEwq5vsQosHowPfP80/7SnXANeUR1koRoBaU6odLWvToGiC77lkkBwm
ElE+1XI0Jw8Pv2Tes+N3CGUaku7h6naXC55kvP5vc2+6bjQI6XAOJSubDm0G9e2FC+ZTSf4tRSja
psrTz2oQn0z0I0Wubx/0C2zDRdwIkRax37EYHClwjCgMLUOmO1bAim4hEtKo15zHXj2Rav9M0RW0
IfC5+IMig5YcokHbTtAWArpt535ECQgUUL3r3iIpv1st8hllB5Lr/o47jDRa6xBse2hE3+qWbxjn
pKfFNqR08uLmrly3sPsogejwCH3TumWtf2O55OBwl4IAfWLqJcfpxplScz2ztcpsHF0BpmebFOpC
GLdBug4BdRbatjOZPlsgBkLkgEYn+cmYTMiDb/AbZWl3pw0QqAuKUf4m2f6X090C4Z8ktpSjGx/u
qG5GfgYlv1HJIZZOEF43WS5IACDLAXnqgY1R9q7V1IzuIgCdRNP3ABqtzbJHs9BB7VxlWhr/Iqf0
W/141Mii9E0KYO5emRVbUf8FHTPHo829DwlRb3lx7v9YqOjWfitRC9hkPFPh41NHCQka+QRzLbgv
u8S/UIXUmXHvBfEthdLTtBJaYmZ62yy1CmZvVvX65XovpsNnkrtTkKPh8t1iGoQ2RkTyGMtStd+Y
CUUfZEJ79CB2/d4PbCFXBtHCmOlOU/DhOA+wCMyv3PHjzol1NCtgZf296xymJtkjmhH5jxz2SbVV
PSwyyutTxyDtLJ6Y4dKmYTLrkGfUOxE1jW26tU3U7YTTIPf/LpsRaiT7uPo7i7k/Uy3pCrhOgQIa
/D1+mRHTGD8ZxMHbpzOX2SZC2IIX+gG0emIf6+LMhZ/05DFdk9ATJ6C7Isb3ZKv5UjGRC6h/AwI7
yR6utC1dTT8i5sICOkZWLrHhW9c6vRa3JZixOnn2deAuIcqyZXNzXtWH1X7o9xjrO9z3nacqAAwI
946UrBLGK3Di0xh7o8k9bv0Cs+eXzi6Axv6c/tc5BCC+qm3k37LCwakNBiP/b5gTuS+pJ00kcClg
E+UUKSyZqM/3vPlcWY9LQPI9iccKgVZmiUWoj9zTmjlEg8vMrpd9dF1TCLKetmCgXedb5uZhVZKP
rqDn8RnzJCK/F9XDf5FawBVpt3mjx9LlBzH0d7NT4y05PAD2lYNEYOSP35+K3N5VACXR954Y6+bO
Aunn/qxubDSniUKRZCuSJVaVFOgzWitTnneOguyPIFEZKJOaXGE3IHJq4lObxJz6PtFHg9f+m6e9
lGA04OpIGGjxeDyX98n1XfN1yHjXt9rbk0MaR5x6G4zr3McBAkCIIsnqqkxfYkYIUibkiNIv5g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x202F3D84DC263C0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
content-md5: cz1D1aLXWdevtCYoboFi3g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 18e753a3-3762-452c-a72c-e1742b4038e2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-68d2675d-6128-0d93-8dd6-7d3646614f69/test-blob-ba5c32fb-55a7-cfc3-88e8-93541f64ff7d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 4c5986dd-2da7-cbd1-775d-afac1b01f45a
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x202F3D84DC263C0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-lease-id: 4c5986dd-2da7-cbd1-775d-afac1b01f45a
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ad95677a-dc12-4368-bb90-061954db6611
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-68d2675d-6128-0d93-8dd6-7d3646614f69/test-blob-ba5c32fb-55a7-cfc3-88e8-93541f64ff7d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Unmodified-Since: Fri, 13 Nov 2026 00:47:04 GMT
x-ms-lease-action: renew
x-ms-lease-id: 4c5986dd-2da7-cbd1-775d-afac1b01f45a
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x202F3D84DC263C0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-lease-id: 4c5986dd-2da7-cbd1-775d-afac1b01f45a
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 666070ac-0f94-4502-a628-5203598257fa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 14: DELETE /devstoreaccount1/test-container-68d2675d-6128-0d93-8dd6-7d3646614f69?restype=container

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
x-ms-request-id: c0fd6957-ae12-4b37-b321-91b6dd9097d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-aea6edb2-0ded-7b8d-31fc-11f4769592ba?restype=container

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
etag: "0x2128547EF618720"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9b3ae111-d73d-4949-9f1c-dfd84328f2e8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-aea6edb2-0ded-7b8d-31fc-11f4769592ba/test-blob-7aeaf6bb-f3a9-f4e1-f81e-32efb0b62b07

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
XswxmyyB+M/43huqHNxV4cr08CUWebG/C7G1ztqey3rRCpaqZPaOOv0agsvXNtgbyVEku8UF8OUb
cY96yyr1WRKg2RFGq3zUZrYo+/bm6NXYmgSIeg+0yxqwj/JmE27TJSi4NlzH1B7UT1QP3fTuNIm6
oTElbN8D7A73lRuKbVNHVdbOLrF4EcXmtCq7pe4lwlporHE8rblItEpOzz4CSuIByIgeIAbYQY9s
P7i1R0Yf0tPBIcHhCqcchXlnKUKG42lIudxmBqFTkGrh0G4BkmwDLv1rQCggH77gApqNcBhN5VtO
bY5qucsxbpBX/zk4G/IMY/tEG6JAJ5oehQQHxh9RlOoSsyXemXQyOdKYyCCEqOaogQ0cCcq4DUXz
SzTGKqhxBWtPJWfNLcqGEeLQqF96mtwdXkUSNYogWqXf6k1AbA4qJsK0NYJ/21NClvfo6GXmebFX
qMxjXtDhLsvC7UJ9RqXTpYGdxWVanoPxz56SN3FA+XCc6MNCx8jx0wa2vO0QxVBSFULjSLNL/QlI
cY4yTvdZgvTR4F7hkN65q/Jeo+KW4QpOQCIvXbC8UOq6+VY5v4QPXTr4PuTycIRkKZ3B7VknspCE
4w3UKiVEFJBzJ5eIgOxtT0aonqIlW9CeyjMS+2OQkkfGtNt3OjIVsylUfknt3KiwU50TfxTtXoc9
NV/xMRkt4pRPwssQ9hQTkup40d2Hse6KYajFfRMz2FZTOgTTI4EQJpy0nRrdoFyI/+wpdIyqtoRx
Zs9wZ2WAHOl1vbwPQG5pZ6pA0hPUrcFLPH0nCWPJqIOAYr2xoL82NIEwaOKgeb99wA3hauNxnLgO
JCrnWRKGqxQ4j96xt8frCZ6So0Xeq8O+qUlW5z6gD8UEo3uUTtpuqrzOZ+ngzAhF9mBF3vlzL3hm
Ka/JL8PWmIAZrBRLV7rDJPmIEETa3t1AEfHeWjDMkXQCLSUrpHr5+M9pxx/0+Z6lgrn/6h40jEvR
iB7R9z1PTRqfSSmVl39+jxh0cBa+TBdTONh2zKdVzqHaWhtcJwCRGXkFVLB1D+o5gVsFwBs0EzwG
fr5l2IBzSXqHuz1kIWgY4lecuPdn3SntPUpMTw6GpUbeVahBLEH5kQo17VSs1V/y7d3El1pFn6GV
d5s2J/lsARX3hcy/1rYVoyfsMvDUQGfqWWIxwQ7smbYHq7SmwmoQyOs/tU+TMxcmrvMzWG2wwTcz
TM6XO0AHCuwWuCoCb+G822kFlYoXViZKChMauEBIVup9cnabeYyrN6pjfXrsJD4Sdn0DqyysG/Wo
TDAs7FKrzWFAhP1qIGLcWV3fs9mrXubUCEHDRKu+0VaB8yxcfkpYuLAYrJ9Bp1UaJ1HOzGcb/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C9642D344C4CA0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
content-md5: v1YdKKfYTthLlRJlfpRPjg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 547d063a-d1c6-4108-b086-77a4fb01b44f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-aea6edb2-0ded-7b8d-31fc-11f4769592ba/test-blob-7aeaf6bb-f3a9-f4e1-f81e-32efb0b62b07

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
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C9642D344C4CA0"
content-md5: v1YdKKfYTthLlRJlfpRPjg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 53e63644-fefe-4ff2-a803-b6b77ed3dd6d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:04 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-aea6edb2-0ded-7b8d-31fc-11f4769592ba/test-blob-7aeaf6bb-f3a9-f4e1-f81e-32efb0b62b07?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: e4584aee-e710-b688-82b3-a6e92d3680db
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C9642D344C4CA0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-lease-id: e4584aee-e710-b688-82b3-a6e92d3680db
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6f8d068c-b467-4015-8c22-c46f779dc317
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-aea6edb2-0ded-7b8d-31fc-11f4769592ba/test-blob-7aeaf6bb-f3a9-f4e1-f81e-32efb0b62b07?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-Match: "0x1C9642D344C4CA0"
x-ms-lease-action: renew
x-ms-lease-id: e4584aee-e710-b688-82b3-a6e92d3680db
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C9642D344C4CA0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-lease-id: e4584aee-e710-b688-82b3-a6e92d3680db
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 037e17e6-65c1-43cd-b38e-ecec90e49e6a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-aea6edb2-0ded-7b8d-31fc-11f4769592ba?restype=container

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
x-ms-request-id: 36f9fa4f-6427-41ef-b561-e080c872202a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-28fb8712-b292-9347-60ec-a91d59ef04ee?restype=container

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
etag: "0x241D987638CBCC0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ed29004a-a546-4dab-ba0d-e45ca77adc38
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-28fb8712-b292-9347-60ec-a91d59ef04ee/test-blob-113df665-6625-d147-2861-29eb9abd28e4

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
p3W7RWzzajwDxYMkPmpdkq+4hDb4brWsPyoAMIhb+KPDxHbjM7+BcowBDmDiI5K9BJc84Tnx7DjA
DwVC8jmzp8zgYHr0eV7vNhKq92BVyRuXQyzwHxZp0tg9IyS5P4BTTWaTAsIYyIs5TKsnR/XXa0Xp
qq4Mw4i1do6ht1Y6NveRVqn6wcdZf3ugt9JrQorjZrjez5TSRord3os0dhE1/xWzlfFL3al+kCsy
bAu2STQEvlCdW2divw8fHOI7JQhqa7i8uKyZmIgOYD5pn9p+J5RXMLjAl6OuUdXhK8DHQmsiyAFT
+ZGHaiXIj/so+SA1ofVO5PVPqdMUDmfXuGzHRx3TRtfZKi0C0MWS+AiohVe1q4rLeF520x4tPusq
sLK5AEjeVbJJXHbHSxQvvLHLbIgPIQ3h/M6+XHK4q+xC1x8T2fe/yjClbE4UAy1KRxdsYtJjG46l
2AN6H/g/kLGJhXP0HOO6C6FXarW+zPmhdBVbTEkZ37yQbgD0Ras3Zdudin25ViozslYwC7HZ5gsJ
2Kvj5ERncKa3Y63ixcX2HwXaIEF86B7qKJny6NMLt4f16m3/VICWNRrWAfJ9UOyROuus/8bJjfCN
+LuqdYfTrKsm7dtY9suEQ+onpeYrbdetYa7oX7jBK118clvE7MCSA1VGVmMROEMgJ7vboucKYYvk
/RTY6kzzZcJ924Rvv1YqlKGQ5BZznChryDf85Yl1cRDQ4O+suRgJU/Ghk12/sGhlsQ1Fen10cGDs
bSIV9n85CGlznt9nftqIh5Al0gnKrBfPlzR7L/eTXG+Ov0z1811yaIrzSxGJ/TIyvPPsTp5XIcEL
Rl5Kvdhy30Fv2L6Ok5Mzs2p+12AFRZkCSHIEpw7QN56K6q3+KKqygGzQGSV0pClguZsz2ElhBQDE
SHRlbjgznqEfA6jlNIu/zFf0NSx0jaRIo+1ynV5UKeStOd81TBIznHqDVKCBeoUQcwzybNDUULrQ
HMpKwQFDytnDOPqriYBEwJmx8TkDxyloYSlRYrwU2OklZS9I6dt5QInGvUKKZemMraw3Il6BzVWg
4V/Y8Wgdrl8QhiRQ/Na9OLCvPAnn3fw/xbQQ3bWLo5jZpwd8oE4hqQ/iet/FO7HVeeqt0ZBMuQNi
mCyzDdGqheKMd1XPQZdijpL6BWMdeokDOmTL3dIHje0DGQgibZw9OPT8OcRbBjdSS0L9UbSgRB6j
r9Js3qgPhOlozCePQCH2vM1uIEDEqDQseJGPCTw4Y9Tpfr3J0VlM7LTb8zkPwgshB5XnMSTd3gee
QGUWgHutL2lSpsFjLOtzIjOM6bT6HLWFbQGmUTGwC6C2K5HzNWw4LcTQvRxKvtuqcw7wUfRSpA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22826C8EFBB1EA0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
content-md5: azeBW7ewZza6Dc7M6s7Yqg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9aa3ac7a-d319-4b76-9759-45c8a2e1f6c1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-28fb8712-b292-9347-60ec-a91d59ef04ee/test-blob-113df665-6625-d147-2861-29eb9abd28e4?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 1291af23-0679-37dd-a29a-21ac01597fec
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22826C8EFBB1EA0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-lease-id: 1291af23-0679-37dd-a29a-21ac01597fec
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6f8bd58c-dad4-464f-a0af-0d126acb7480
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-28fb8712-b292-9347-60ec-a91d59ef04ee/test-blob-113df665-6625-d147-2861-29eb9abd28e4?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
If-None-Match: "garbage"
x-ms-lease-action: renew
x-ms-lease-id: 1291af23-0679-37dd-a29a-21ac01597fec
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22826C8EFBB1EA0"
last-modified: Thu, 12 Nov 2026 00:47:04 GMT
x-ms-lease-id: 1291af23-0679-37dd-a29a-21ac01597fec
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b520b5c7-f7c3-4970-ac82-27535c14e569
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-28fb8712-b292-9347-60ec-a91d59ef04ee?restype=container

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
x-ms-request-id: 4c8e93bf-95b5-44f8-9a4c-89088b7df5c8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

