## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-deb0f503-68a6-3978-67f5-83b48c94e999?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_OverwritesDeliberately_BinaryData
now: 2026-11-12T00:49:15.3364601+00:00

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
etag: "0x2605AD731AFEFE0"
last-modified: Thu, 12 Nov 2026 00:49:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cccfddf7-3824-40d8-a87f-03102bcbb9bb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-deb0f503-68a6-3978-67f5-83b48c94e999/test-blob-e778f0ba-f501-03d7-248e-bc9cc50e7ccc

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Cfh0J7ktNB94oiMwXJUE66iHZ9WW2jUOHq25F6vbc1h5t6qUIMLfjbxZbl/Rp6ePidH0PaemNS7C
ZggMcxxznS7LtqTqcMvlqNkYPWzVPHcGKo3a5zWx0oF70bm50xmf5dEwBvACpBkFDpXNjfjC7CqR
BkiOmbX5GeMibp4RLNS/eVeapDWGA4V01Nmg5ESJueSPKMzQEEwcN+0N3zZ78+LADRShKEj0CgLD
GsTcWTSembW5gQQH7mgKfm1IeSRP+OD239Yw6JGcmx3KDfaIP964bkaAwXLeuR6slqnarJHecyHj
5XpdbrEkHObmPeFygj6OjwrdzzZuGCW4g1Hnwu6L65rUpVpkWgCUXKWL93s9OhRrTByGAKTrdMxU
petgPVr3W1FGnd3jKTUKSXKR4yGqekg8e3XSBOv26TCNELQVNB5Kk5wq95w3hyLmfLcxWZGrqiqi
I8HkJVZlULSsVhmA9RRURk+Ef4OrBfRT64g0xI+f4WaJchFdZm5GxKbnizEJZoei3RJBJiqn9h3N
kTnNMYslDHSy9oIC9uDgPrvdxHrCSYUBked8Xbs84nzzkNQ1eJMawn69Vm8EoOYyYehvyTKjCki0
y6CkqK+5dhQFDmYMq8YnwgH8BfMW/PEBSvvTzBhKUIWMgazzdhrOBN9a/5GAJrYhRwcwpwRUnc+u
o16z5ar7u77gfyoZNEvnLQETu/1fgCNFsYURGaiBN+PdRNO8Gh41X0PTn6aMBxK7SXkCQOLRTyI6
bTQk6qIVX0dGPPB3KxLj3ly6jOF9ualyVdAufvYBC/Sxga3pEHWgvUBeRcshRB1nH2KFF8JAvLSK
sZTS5uFRRDD8xqll+c3nGc6hHnTdURGyx16Ue/QxcMX4Xl7gztZfDQCaJX10ASaUnv3zn55ArWCD
IB+CvMk8ylXkbJpuB0v4QhBzQyyTPcY4/933PdEmuLH+XK233FA3Xlooj5SLJpey+12NzGk08OJZ
Sb3sRYyDvbPocKqdQGXAO+TRaq0xrdlFREF0mexHyWvLXpKTSxnNpdLgorbsFLv3zZCFY4U0J5zk
pgBKDyTHoKY+0uHSLPDLA8XbUAojWTCGfcxbwmbmljb2r6QZg5atGQEPrULZJKCgul/AWdeRwU3P
xJFYbN4/WDuq3H1LsoAvLTcJE6vtrFgruwgGJT1fZO1XSb4EVa0j0FUGL0ciVAffkSugiK2i4Rc5
LLDVODL9S3eP9GjBKtiK5UNW530QCGYAJ5QSv9xAtWemyyj8TZciCeTQk2CeHWZSFqJqTPqaKCRK
1BGe64ubTz4BGl+vjZirM92ZQHUGYQkuv6k51WhsDKIEsniGgx1YNEMhnQIGoogKvhgcAOeuQw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F37600AF1B68E0"
last-modified: Thu, 12 Nov 2026 00:49:15 GMT
content-md5: 7cAlXChWFMHQM9Eb4Xu66A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: da9df01a-12e0-46a2-9b63-df215e73f9bd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-deb0f503-68a6-3978-67f5-83b48c94e999/test-blob-e778f0ba-f501-03d7-248e-bc9cc50e7ccc

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
cwdwK+JhedaUDbyr2x8lsMBBDDHkxAYnHSAvF1BPDLtVbgV/E/F10spLCPRJ96zrmWhcv9t9Xq4A
SQ7CMmKFRAEBVW0ZpZzOyzlnmbsR3SZzRH3o80zf2A9Xfsrjs6BnxcTzR6E/0fPLjfShFcXz7mvo
Tu7lnVG1In1dwifS6xeZ/9P3HpWENHKJHWVYPsJKY5Be+mWygihyPSUk4Q/M+KLcBxbx/M/WYxp7
W4DrXOO6E16XdPCy532qhOFvYFJjvSTDezasWGfAiJZLNieoh+BCas6wNYSxKiCYR3fuZgPHF51b
J+GtDbv31+tZZrBVAf0ALfWDs4ifElEWExDv0SGTgx+JTWD/lVwSuV6YV8NvQ0V67jkNRGQVuxWP
lvmqBwXJxuORzLSdAJiZcPkqB7qNptDLdePohT+6c5FKb/5jaLFYzpHg3XaQ3e2hdNNq67RaAfAo
35Ei4UCk11kiUpCZNQhI0TgprchaOpf1RxFsT4jd8G4NOokfNu1QOwYcbYtcBz/KIhl7MVMnzqT5
LZovOIjRRWIijPp/KJtL2HLCPcwMmEDSoSxuYb4a5mzkJglTIQN+SygpOntES/p9MFnhZZDX7ZRa
XZZbYuSjCKWNmgKS97ZuQ/Gk417EjVYx8DFkOIDcDTh0+cRtIulEhTHVtrD46ziicyGeMwk1lc8/
KnGyPs8lsY3JHf7yACEIYF4s79amOQX4wsVePdkvP2T0Lfh3kUZirwUiL805sHIAltKrCKX4mfFs
unwJxnOzmt6a/dMpkM8Xyj/Rgwk4vhFTXqcGgza+/JQHC9bKWOmRb5Xun7Kf1wUDlD5lJhXnM/tq
tmfMrBao2wE+IoX4TXJWQBR0SR9ftIeiA+/4WdV+H9faX6KBxcJ+RcOxYLV/C0fLD+YBcuncCwLg
KaknsIIsvwKtHe3P1HpR9QRbrVPSIveoLEnufKzt/lOgoZsYV5VBhKCy0e5Z/DtrsHzlgF2uDgey
f4M4PUJVvx6aLzPfOJ5uGimyH1AJTjAOgswwCH718ZOUZtgRCEddXRLPv8wHjHfed2U0++62qDBT
Kbp2JbegpD2fS9HGXBLhVMI+Oo9jBvZVUZEYwPWl3b2nvt6M5zhaLhqOaEGlGBpTU6creG6h8CLD
IdMmiORI+m0UHp4zVG2K4wt11J61rzl2xG1OeWVOBs28yMZkNKU1Rm3Tkfl8IP46oZRjKxuEDnGZ
sMR2+YEIxRjQdoymJa9lP40w4h5A+aNvFNfQ69qyN7pUy4Thvkzsysvhq6lyk3zl/eyNUytTWbYg
B+WqONk9Hj/RUlorhIBARBhSX076/IBa6+7uJOSOAHLNwLdnQZHyo41qoEEhuXhrTA8TAflnJg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2268EC928208C00"
last-modified: Thu, 12 Nov 2026 00:49:15 GMT
content-md5: wttfk5NmmnUv04Qg0+4IlQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 801a468e-6d0f-4263-a9b3-151fc8aa9396
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-deb0f503-68a6-3978-67f5-83b48c94e999?restype=container

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
x-ms-request-id: 615e0c4a-a050-47ec-bebe-af43bffedcab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

