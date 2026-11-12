## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d4bf8602-34b1-d29a-d4c2-7d8203207830?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).StartCopyFromUriAsync_IfTagsFailed
now: 2026-11-12T00:48:30.3465364+00:00

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
etag: "0x22BAD4EFE122EA0"
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b9512560-5848-4d95-b13a-e009f43c43cd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d4bf8602-34b1-d29a-d4c2-7d8203207830/test-blob-bb6005bb-4bdd-ba2b-3bbb-d035593eb806

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
nbRLnnCPgMg5h4jPY5oQeH+PBLOnC6a2WgWY9WRkeZUKd+RP1NrALIWYglbDXFagq1e1yjoEXpEO
lENq9opj1A3yxOu2waOlztctD4lP8/6v+EkNr69bBhlTQD+XVTb6Na1J0Jdq6umzEPti1k8Hv6FF
u/1BVSVdlr3SYoBjDnihM9ncBSJmRA5fWZ6z+DDJS4GeUZo4ud+H6zral4dpTwKCwaN1Krl/3nbu
4fyHqZ6NCRb/xbzeaHn6VRrojK2H9gmcMTeMUyHIHnMjStjjAEGbTI5waYpFpFgpe9Wel1LJZ+ry
6nhmAbX1NqZJux6hF1TYTEAeFox/VozeY9hLKYchWeLt8BXINEvZejPj/Og6iGOBxUoRqlBecpPr
iJ3cqgwfKGE7tCY+EBf1RZtZnFqko9p1ymM8D6+Sj36B3Kyt/dAmxNSH/9Q8QrUzHGS0BNY5R+TD
Zt+o4hixqCWovDNqSEfLM9eFHaQGOIiuCfJK3YqoSJTI6ZfwfeK71VavlIWByNQc6dH+syo/vC1X
+tkmZ8uaAHSeol6w2rX1ykdOV6QCLEAdLfS4qZRqiC1pmYIJlW6LFJQQ4iZ2aw8cCOni8WWJVM2Y
CTnW4lbgNBkwR0Ay7DXZwkMQ8kkZpsHlnKCqh5fH4ES1cIs1tDE9MK4MRSTO6Ry0CS8ieGKDfmJ3
8Ua1Na2CaWf8fXyppA0R0sGbDWCdFrOE9n1npWfiMfEpvcPrh/sBity90WufC2UhEaWg6HEB2tqS
MT8vGsP/GUyLf+ZKJUvGmYKD4ERH5OoXRpTBQUh/J+PoWFa70m8ZvbcfFIt/1uta2U7uffqVS0xU
F9QvPtgDC1cCYcz0C8cTaiKMKNBemG+oZmj5kKrpUw0JZrqb6X/fGwk0fXUeZs6H2xLXCCJ89n9k
htdwCXutGA6+6qQNeICjrQzGKhv6iQCZcrWXEkrrjXA6N2OnbxKOhmRmX3sqeWOSNFsVtctkaf3W
1pbGFQbE010z0kEd+z36OKO2lCmFbvlRBd3u1del1s1m0Jl7x3Bdoowd96cidDgeGnwnrdXTUWid
dBAo1f6Fjvtztyqkf3AzWfGdZ3dRL5Ck0LpbfSn3kn8w3VNgNcyOl2irrrwOepsL9FTjNenwS0R/
gwRDKhDSfCWqc6Id0iQkD9AOpoHUllYfT4nVE1yWQJEP4LHHSm1Y2DGXYwb47iEvvyYZ4qXCq+2u
I9uG/WjIFDMRDvJyXMRitc5PPDNPJ2BnpVQ2fV3sTDXEGSeR0dvJz07T5+AvvWJhtizWc266Xvx7
H1cTkZfVJcG8rkOd0eTyhm3kfD9/OOjy1MYxFdnGCrsqFrKDtT23/sIecg4exOVI5O0B1eK8+w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D0CC9C2E8982C0"
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
content-md5: C8AMklXBftKUlHpZ1x8ysA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d387561b-63c7-40b1-90a2-40578d8c8292
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d4bf8602-34b1-d29a-d4c2-7d8203207830/test-blob-bd216fe6-a3d0-e80f-f5a4-8873ba316fd0

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
Lyx9fWDF2dMQ4ekw68U02G0byxSUgOZasjZ9apZRKhZ0HNGoZD+aIZVNrO+53vwwb68Fn2ZaO69G
IsoqSG88v7fTvM/0i3MtgKp+RtP3oNM5TfrnS4qvGeAhYkF0cNkmEO035iItO+Q71x+73PXcT4H3
8fp0VXMsI6Lu0ikxuRDQWDXlv7qwCxEWq3Nr8z3rRRPAfX/esbt5CsOAP2m7CR4P64O/9o/HRuXp
XqkAwS9kAowVcTyR8qd6bLX3L8ynW6JVXAi6K0+D+DaZ9FIReUiTHDzdpZfiffjbRYrazxYZQQMH
qmUmqdY9kXgF9/1UaPJsYxOPyrUKc94Q3+bEqSgfgLNPCs7jbXJlnxMe3Ib6htyXbWwDiXdN/DeH
FsrveOhQ5ndKBV4jifagKSqh65dXFVgKLTu8G/Y8AQ6XW1eodScrzvUPsIF+dOR1YmBMrBCfMABy
5Uusk8qADgNPiy6f+LMDdh2hSGXWi7hWR7mW71X99ytWNpDcfzsrjqJ+Lui21WqsSTXz/uebm1mS
VUsR6R6tUpMCSMEjJvbhdbnCWF3QoHFO6qYfCvlDu5o2SinvGaWE0dtUs4yoiSI/EYgu2EP8wbXa
w/93jUiav40n7NzN8lsUPoaBe+zkpWGD4PhwFOJXOoh0FValDEOTuvT/gZxGcR8sGpm8ekbI9h2e
9KxQKaqq0LFTWN0FbjJD7cD45SPEPG7YQ/pImsBCrB45BxeXQ5FJVLHr8hlCJ6tneYyF0BD62bc9
d+WwYTXxEay+y2carKovr5Bx2UpVlhxP4SEzvNsOPy1gWcurmPN8+eFshFtDTM3hVSGAiABt5+HJ
YX8UvVXQsIw6ulLehBad9d9o6BLAC5VTUWa6jbYs83Hq4TdzaDyMnNTPCZF6A9EK45IhBP/PCVXq
wGvuFSLVDsfg86LeKY2i3Ew98QID2U6Vr6kkC+9yG9jhiKjQnYax+frKmg8uLLkEfieykRhT5uYd
WGV4sQLYbtfK/KHl0j7GjPcHOD8+ZoPwH4zHwIrAjqHBs0UgOEf48is3ZC8YH6zo6wQgS66n3vHi
iJF2EK1NCm7/JB/5plSvD0YTBwJT2P/g39SFn0LzGdRTPa+2geF96lrBGPuM7kWwcDxnlNfvjrCR
lTHZx2orCwtKpmik+Y1klR2nkr8EU/CO1S4GjIT9Y67/JOuwpCLvlg3wQkfdDHeuA/65R/zxjEJA
SvE7JX+GTUO5pdWhs/H6uPuyFBGosci3V4mFQxuyDZepcFkwtHGNafUEI2eiDE8Nv48AP3gxl5kp
g832AAknB5c9+EOXyQSKJKobo45hFUo5eISMsc4fd9jABzCjl2nr3RzPZBMLdfWLdRvNFfMLxw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27D7D3FD4491340"
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
content-md5: HIHNIZ/kaQlk+vMoZo5AaA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 31836359-ce3e-466d-adf3-ac76ee32ebd9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-d4bf8602-34b1-d29a-d4c2-7d8203207830/test-blob-bd216fe6-a3d0-e80f-f5a4-8873ba316fd0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-d4bf8602-34b1-d29a-d4c2-7d8203207830/test-blob-bb6005bb-4bdd-ba2b-3bbb-d035593eb806
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-request-id: d9b48ebb-1943-469f-b334-abc6991db222
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:30 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-d4bf8602-34b1-d29a-d4c2-7d8203207830?restype=container

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
x-ms-request-id: 632e57e8-57cd-4f01-860d-542c6ebef6a8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

