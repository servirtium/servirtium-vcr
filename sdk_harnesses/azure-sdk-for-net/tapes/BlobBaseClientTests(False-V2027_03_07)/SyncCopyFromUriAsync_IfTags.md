## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-fcb39964-09b0-d2bc-5a61-dc9cf9d2cf02?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SyncCopyFromUriAsync_IfTags
now: 2026-11-12T00:47:21.4502085+00:00

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
etag: "0x248D49C8F3CE140"
last-modified: Thu, 12 Nov 2026 00:47:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4554e19e-5e93-44b6-b3c0-ca1bb03ef820
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-fcb39964-09b0-d2bc-5a61-dc9cf9d2cf02/test-blob-3a56f747-7f3f-4d53-1836-f544cc429389

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
ZAciatvtPyHYPxj2dnxyhp2A5+3ltALkRmbkeRR3BRjOUzfysGUnWbc0YQBnXNabxG+nS1ulpLAF
PiN0CcYNYDkAKCNFgNU3WY01sFMBfOqPSLWk0Lq8KK6H7XJBslDxJwDHZzOzVUSab/LNcPRdA8E4
5cARaJB+Q/90vpJj9qY9RIhSORW32/JxCmDH7ri6KemxCc2P4L5vSCMzPpexN3lMkCtrCsmrgQnO
n14wt1RHupSpsezZrWTK4vHxg51bwNPme16MTx4gBYfEwUBfP5DP7IQDCIWNc+LHoCfYuv5rct+L
Sjz2ump1iKxkFOwjaqNgIpYYV7dNWQd7xa72R0uJWE5g1PRU2DIZjX/YKF72ozaEd5dnUxonPfE0
e/W8fkBh2ryew5avC0lj/8o4dDCphCF4ctCzIgQzOJYDH109XQ4+d02hWOCg1WtOBFNQ78nAivbU
Qwxwrri3aov/q+zsJqG8+v3jCCxB2J1kZR2w40nNQpRmaRkBzcmU6e1UoCl/Yd2yk/TL3YLJkmtu
DEiaBodBMmhXhr2Huiw0Th4/7Ddz5ANA/k9UAWUSnNauk8GA+eJmE27AKNsgKtnHl45kiqYz+idF
Wgg47TADRenm2Cdrs1Q72dnJsrwoH9R1jGnWrRIve5iZO57aLSU9vePxOlGyW+M6KLHNaUdrHDs0
wmDGLZfWtl2O0ni2YKuzjPXYN+WCwzCGnIVgYhJQLR9jpmvFdpBMGoP0I4lrg8cFGtxSk+VWsf4v
QJASdlRLPqRZUro/7RVkjBxhjaCnGhi9Wkc1/Zo6DPRsljb/OqQvqeTkEjENxSzH7QbI9CRdiCZ4
VBsMFUAKH0XF01ffZVJ3MuS8wgjnsJQbbhCTcRfQDg0PhuWJI5Oj2vPrR/LV54i0UcJAocUekaOG
8acwdq4t9cRJ0N5s7Q9QGOgU/GiiRYeH3x9VkGxI8fVBAzHscmNFvVIuixepR2Oz74ndCZU75Ksg
qZaO2GRXAd7oKurdY6WEzz4Wc7lw3Zi7oaDja+hgBh+GzMnNtuTt14o4wRx51ozjWDlWJHDxsMv+
0zfEc5X2iCTKV5bctxlaKJwuNxx7QcoT/xKuCuGulBz+zuOsKWP0Qjj4rn/1B6Ef+/vUw3iugpFs
sHODR31CHMN63ug2rf84OfTjg5JLHvhwjg7l2dCjT0xRQHjvcfu7tpK8eyi56U38nImEyv/+IJJ7
E7hvXELy1o6c5G2GSMj4KM0Aj6LQtqXA6T1HH4RMUh/mdF5DS1lQyaWZHQTgdVPAi6Iy/pHvq1wS
rnIEqrYKT5JNoNRqtdxzr8X9Npmg4HPqh5TiGVSO9skBMJ3mTB/uj81yktV/VdbFv0/L8nTCcQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D9FABD65014790"
last-modified: Thu, 12 Nov 2026 00:47:21 GMT
content-md5: j15HbtiR254r+Lil9+89lQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64ab93eb-35ab-4b5b-9998-98f2331b31b0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-fcb39964-09b0-d2bc-5a61-dc9cf9d2cf02/test-blob-221afece-2822-3d35-bfa9-0a68843f8c63

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
pg+nyy5NnmsxvRxaBcMEVD++zugy/MtmlzTTK3TsUYUy6yXizfZDgWCu8GQL2zj7pLYpxXCkMalD
QDT5eXL2RWyWKBmdIYdIe02HgwxmWrz814e+w4sVjrp8n43CSgjtt6v4dbMfXYIv4UojHK2c3OV3
/aHrOILhgZleIYL5hTBFmctgbuUJ3HkEj+FA8XEM38KoS0xmAn8pF/QZwTwANVwZ3oLiPG4AbSEn
5qmgoI8oUUK/UTnk3pdMNlfx8Bs9BFmEJhPuKqJUqN0rPxzViXZk8W/5QOQiNQDrlgUWDn0F6eFP
G3p8OSega6lbuJ56dq3hjf+rRMR1YfETA5ScPplgJVU6hW3857dIWdU6x3xhcB9YNYF+WqUc2rqJ
aTaTAywP+pJIQPFA5KVHY+rvOpp0sZJ0RAkY4suwHauzc36BtVaoK8zqGDAuF1DbNva6LZ8fFLej
Hr4j9xjHmCJFjXEnxa6URw/OiplhRiy4PKvV9vALk17G3ZaXhDO0IoAO6IretHFIJeaPUYodQteS
arts8qEyOfkTYOgX/cLcGWcZU12i2og6jNAJe0LTqJu+BBl4SDDe3K6QylOJMCgkszcjBO5575Az
MWXRKL23QLhMWPioZNE2OnevEg80sVuo5cgKr6SsRBWJRBbLDLPx2IqbPNcve09l7cp3yt2A/n8J
KUL1rJAUnxTjHx+7ai3DvjmEmXWEeGp4pcLaNXo3CEaWwuNx+yv6h5zDTFwwqoKcswyk/GQKhbHY
fAfNOmqZqxbYJKhKUsINihLYwCwNSPpAPYFtkwzijDwymH4kLU0yKaBFV4bZUmFKlnFRMsWEyjQN
jfzoLBgK9phsF7lD6VzFppaLyPB0ZusfI/yakFp3rc1KFp9QSf2HO2HubTqoBq0UjIsu+AJDmSYQ
yQkbb2U99Grr+dK9dFyZBI2Phvixdx1PhQTOSLTLBn14P4Dza8v7sHjPvAzbVxculfR1sxItX1Hs
zOphb6y2H/NURDTcpZjBlNaA4boQcy3tn7O/VlJqSuAuB57hmUDMGZwYhhPiUu9bsx88rX6W21m8
dM/49smh6flUrp764PuVs8ce+O0aCk3DY6IzLZ1imCtFJSRw0yPTd5wZjaRRYdMkp/m2eONroWmC
NZImbbtc8hVztLvWJOCkSoBQAX2pcgLPD4ajqx9H2YO77p6QrAngvJuO3a0YTYIZES1jG5/s2MKQ
V141uUb2K9o3GzVBFJ12b0XiG5RVtsEDiZry5L7jzhXcAFWrqwJUl7LS4TJN2P2P7KtaCr0tO6Cd
MTCsBEYbU0wfZRNIy8RCjYPigtWOtrGdYvgTicRYrsW0DXnSqJNrto3mLXLpRiDnF3w6S7jLDw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E0078B2A50DB50"
last-modified: Thu, 12 Nov 2026 00:47:21 GMT
content-md5: SdO04zEF+yusHbSe6e20CQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 28bc8bae-bf3a-4390-830f-01cc560eb61d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-fcb39964-09b0-d2bc-5a61-dc9cf9d2cf02/test-blob-221afece-2822-3d35-bfa9-0a68843f8c63?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9af50733-f671-482b-a24a-1dcd5f0dac59
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:21 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-fcb39964-09b0-d2bc-5a61-dc9cf9d2cf02/test-blob-221afece-2822-3d35-bfa9-0a68843f8c63

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-fcb39964-09b0-d2bc-5a61-dc9cf9d2cf02/test-blob-3a56f747-7f3f-4d53-1836-f544cc429389?sv=2027-03-07&se=2026-11-12T01%3A47%3A21Z&sr=b&sp=r&sig=JEymJyuqA7YJW6gWoJnWm%2BgsnXA52dRG%2FkdHChwieKM%3D
x-ms-if-tags: "coolTag" = 'true'
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20CEC5A6AB1F6C0"
last-modified: Thu, 12 Nov 2026 00:47:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 73a44612-a7a0-45c2-ac59-3c6b8d3eca7e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:21 GMT
x-ms-copy-id: fce8a384-8d4e-44af-8c3a-7f67b0e3e93b
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-fcb39964-09b0-d2bc-5a61-dc9cf9d2cf02?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 60dec36c-aa47-474d-8005-bfc88f09952f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

