## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5365c504-0c13-276f-c6a1-957f70ea107a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).CommitBlockListAsync_IfTags
now: 2026-11-12T00:50:00.1508432+00:00

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
etag: "0x23C0AC1C1A21B40"
last-modified: Thu, 12 Nov 2026 00:50:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d892d8dc-cef1-4309-968e-6697ecea8e77
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5365c504-0c13-276f-c6a1-957f70ea107a/test-blob-2453d756-4c46-68ff-cc57-c8aa2ab6330c

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
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23D9413F6D1E160"
last-modified: Thu, 12 Nov 2026 00:50:00 GMT
content-md5: kqgtq8+v3SB+pZ1Glq4n/w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 03dd109f-6310-4e0b-8a6d-9a4fdb397346
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5365c504-0c13-276f-c6a1-957f70ea107a/test-blob-2453d756-4c46-68ff-cc57-c8aa2ab6330c?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-request-id: 16e81634-97fe-4b32-b7c4-963b57e3acea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:00 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-5365c504-0c13-276f-c6a1-957f70ea107a/test-blob-2453d756-4c46-68ff-cc57-c8aa2ab6330c?comp=block&blockid=dGVzdC1ibG9jay1lMTY3ZmM4YS1hNjQ2LWRlYzktNDJlZC1lMzc2ZDY4ODM4MjM%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
VvCzSgYsnA6KgDFM5BdvEKL99FIElFO3xv2Hu0PF/Q9tiCh/NsZ0KjpFmcUbsoO157gILMLhB8Kd
+4MJpODLxYMh31vu8NnbicoXv/qNnBN50tSKvdBNi4Fl4jpCa4VZedRC+dMnxvffLKP4ykfID19w
j9IMQAey1FPaiQ6emB5EvUUlS6JAUQvcq5AtVMA6nNLb0tuyTTnMjyV/TTzpQJOFswwBo8O8Lz7G
L5V2hH+Tn+w7w8ZCkXAMWLt9wATO82v9qKC0OPkOHqKd7B2kVgul7K1QrnzNQiKc9EoIP245+Dwq
edze32fzLKUjpaVSaAKw19RWfkXuMGV+F0OuBt4zY/Pgetwuxg1GXIHWqZ18SYxIWGea43n3O0l2
YMcjRCbG8EGxcu4lghHHECHDF4fIAs23Zq52mYB66D6Tt2ZFIxdaD7hbyteeItZW09JXMyPBrl76
a954UFbBN4mvksqqge0KaAfObTf2GEPYH8atIrQa0QgIS7c54r9imZNO75ALrFHlTcsb80EmBFOa
oDCQFBTUlMDBojU10IZIbNOjpymzzHN0yNTp/t3H4Udkn0KP0YV+eVrPSQobr31E04dug1wp5tO8
HEs/6pXi+sDu0TBEuZpNJC7P44JpWBhXpStWWV7rOrhu0rU5P4/E7E9JLd5MABrsIF4tWgNRU8Mz
6EVqjKFiApZ41ublE+WfC/YzICo6CqUQaTj/veC1HX/xBlZKWWCu5ipH1CkzBwx4jk4MHTOY+N2f
WSJoY0W1wrhn8w2OVbGWhDkA8zZ73GIshi6Rqf9MWQ55qv89RYPlkRFxzBP/6jmddZj5mAWnJHy/
PN0WJBm5G5r+FaqxWD+2GmEkChBPLJz19DNmUsAI0oaDfgmmzm34uLF4ANWO6x1ZQn6jghlscA9A
IS/lUsja9UIkLto1EEv0K1Ff1izHZggWDA9CZU9sFg75Za09EmXongqSar1CIzIyr1fHDJnjebsm
z0W5mJDzuBfMPKuethjsdzghNPtL0+ndD7b4pAp0FuvxFkMgLgZ6n7KldueHlPg+25VhwkS/2vtc
3Ija+hMNVyW/rKDVzEgxppVJplwBVXu9ush1ElOmMTtHw1J+oKSelx/Bx+dYaA9MMBuvdjSeWoYM
HD9LmETRGHpkjQj1swbwqg49QI2UZVG5KOI497sHqWnMcYNlU//a769s89sHVnwVvsslYRr4eLfu
knBimSG/XeSeKUKDi1cPY1DeJ3F2sdFmIjnv4UdP0/jLd8GPeFaOrJb3aCw6kjJ0Ff7JGlBGeOCe
/Hbn0HucT1ZJtxSWgOv6UHvafkilK5AGe8xJhbmohf7g8HvfptsbWhnW8doe3ZUSz8nVa/mX+dDl
4VWvUsmdoDEVto9vGqqfviMvzzq16J02NrXv0hoFSfer+cSGbAdQOFCoCCcFo7QfNqzVaCqWL/m3
eBsTrc4XD2yYxCHlGFIc35bpDN92MZMB0JxtMODNFMnLzvTrPIqCkfi6bd+TOR1auYmTrSIaQUaI
Et0yqt+My69XGkleMKILZ3vmvMS0bZd+E3ZXOWemsY2tYymtUOcZLaIvOx/U+4jmiEWnM4WC06RG
s5ZoNZFHsWi8sMx4XhaUzY4ihTJ3qhfucLEh/30IK4+FZ5xQsPgQ54q2F0u8bSkvEmb3X05yzgl/
esTgJrHrs4U88/Z6RByVEZ2owZLLMQKH8uwWEctBE5mT0DU0MMHYymTFf3oztM5KYU2xyQx2s0jC
WDPF1aK6+99d5nTmYeHb0PYuBrKIVD0ezK99kEmMHBzscteOEvXBC4Oa1c5aYwBs1fkWSK2WOgT2
pgjzPGuW0clX+u4KTb0AbPou7X5vxGmuEbpPddRvVjjSl2zszs8YBAQEAmkRYYg8FdyzZ0yGhuKf
RCuwRlv156O2N7VQE50qFeh5asEAnK8yE2D4u+7rTBGKTYqjZ76oDhrFWyrS6wE+iFFkDBsgn6h8
fjL7/Sy0y+ukxsYTh60p0VymOkGFXydeuTOchj/1aa3hJ+mLrRHuEI8+LSQ6KgGjOju/eWRm9x8L
nEP4F0Srr10YMV/EnSNLuCmxRjECI48y+EsENfBIejDJgBDN9vhKk37HIfih350XdME6tbHtCHm0
xh74p3lt0LYv+xwTfcExZrOzOwGWkBmu7MEuDcV/23iXGS/ZUusEWlFCcuOABPb/CU79Os13HTUE
Sru4PsLxsB+ke2OSVxTHruCvVB41LufKLgR2gaGrH/z61AcvTBuPUMHE3ImTbbI6Nozsx8kWzhzU
7g++ei5++Ftnl4IMmGLEIANccVFeN8FRPEsUvlgy5AXrW14M0daTRuMtK9YwLZ0pKKfFuV3KdrZO
bD7jaToDNLN8IT0EuE4tySpuMQvrIA6t6pawbCqoIeWnvmSXr92pKfYitAxgJW9YmO8zW0SrY0sv
NX6jU8iI1ABXXfrplRlNxQcVyGwCTMUmV9Q6dcWg/FoYaHpfBdUumd8LCMh1bgLV5ZY9lZreLOi5
fPvzTV86t2Gf0S2f7r8y5i6N90T8sejRZY8vY2bAOTuRpYnaO0yA0VBn1p3VNvfWCq9rUTWkvMsT
IejPC1T73pfyDkg2WKviDCbzldtK/C6XWVi2VOgF7Om+xhljsMX7bPcG4yivn7IEiUUPsSfvyCS6
OLL8RIqv7CFeeJGRf1tg9yjjRBkG57mlssui9jrCzv71qXgT/ydtV/YGUSchcgnqr7r+DIQKs1H4
V5G/DPbmnKmTnNbiTPgBduwiAJaRhEDBt0aAxMF56vUnGqeWrkoAH7R9jtYzB2LC/ZWX57O6ZtNR
/VSvZtjnGbHguzJQa8ihIuDhFPVqjbDkvscs4gJCbLPURLD2UbnclXQkU0svcZLN9cXS2VLd53Ck
yqcRuzevnk9+eyYXq9AnBX6BRTpktEw0Xuw8b5Jg91xAUYYSytk9dLX7sPZrtkn1q9PTXKE2PxZa
3F1Lci68HoTK11pJFTqlQ9GEaQNWyaeiR8S/jJu6ChJwt+578gKHPpJyoN/vq5aZLhjQsdYSBBK1
qCtp/ZHpD8xH2F1LKVHO/Spw5CjIspstJV6C6Vk7XrLcxUnXHUEBiJESp9M4TQXHAbOsoSDp7faP
PNczZiVzC3qrb2MH9+Dpb1uXtgrI9dhYu+elj7yS8thTR+BpziJrnpxZjd2ivwrSwzLEUjbrx0b/
2qs9zny9GH2KtLD/f6A5LBhubmf6tfvd0syKzaCiZ3+ZafR2LdAgnHRgFwtZ0kOSiyUefVjfBCSw
YPuvMkvd6EwwZRaswv9ITtLzmp7whACJ+EJ6hOomumXPxs3VcGkpgi++KG0s5sgm1S6G62mGv9v7
JToIYmNhCaqw3Pwyc91pyRhuMVuSXBF5VK68oM/7SAbx2UsuICDMXB7CewnM82JQHCFRGI1/aMko
jw21pWnbtZP1QJmSOqn4odU90OAIrGBLa4StqTB5cXGCBZESFra15sZ217PJvuF4WXa4QpfoIOKt
aTrkLgtje84nEDQY5Yoeh+oakdWtgq2iNVC5wS7ameSuZK180Li6E1vkoa2sYHPrmbuszo4N/+aM
Qvm7qbqfTXZPaYDdobcyX356yOD/9dTczidzLctWoWTG742//2mgRFQ2XPbyDvcEem4PkjcGjU0k
39uTLB+r+cgcFrIpcmAV2YOLyZje6cAvb7JdRg4twGJAmyCODRg1i2Mu1vdF2ggO+rmzesO0RfUb
Y7xsTrO57lZP6NdAhsxrVj41sBLI6pSqTktUekWei1Uqc6lcyDyvdOig9fIwzXTtSCOFf5XiUnkn
wv9oZXQQsFyCFRIiDo4BhTwqKPSieoHWZzEiGQzASCEvNAU9Rw9zj0SVrrhhyjmUhPlYtyqFhUh+
kf1C7pdQws3x8tqIwz4ttpivDczIdZz3jZQSZ5D3qq+9v7YRMaGsROzqcNhfDMC7KwGR1Xd7tRtg
SmEDPVo9+UgqygSIG4X3Asjg3gXEmIHTVzuOZdQ4QQmasOY/qQaRrXaPNUG8MhB7mtOum9cWnLLg
L+YfrpN08on67mqet1nCTjCONWI/FyUrEssBiaUygxQzX3ogcf7iG0K4wUSl3OJ67E2miGdPoBfB
9JvIcmjjyGtWa1feotwyrBkfh1bghTXphp1Yi/us5L9iX31iGqja1fjZTnGKm0lwdNtNLxnB4G5l
3uzLijxvqYaYfENfz5FxRbJdBzfDXutT6BcfX7SloX4O/Tu8Dkq7aaTr8h4GEKRJ3OlnY9g3oX8A
eKIlUErR8tvEUNJWtDdnop6S2GzMTNdz1YLLPj2m11u7u5aolhhaGf9DQsDS8yey/8E6pckTNCvK
snvHBrOdHnl3mvmhvwuFOL9siAoXoOFbGD98azKRqIdq3eSckhJLpSRGWlkuED+1tGwKpqshsxGa
bO5zIbJG5fFxNuEn6aWsIOPl0EWHLAf/xrfFhwHcSSrSAiUk14Ry/3VnvNpdjsvGXYXIO+LLEj/m
dFv6gV3wle23VOaAiEhfc9DQIHAtoTjs/ip7Ew1HB+/lPmMod34XdybspjnkRtU9accS+/LPuNIj
DoIzdIHgb032mkrkNvxSuahJQfv+B7dVPqpFNQv9FoWRBWn74wKkCzbr7ayKWDLLv0JJhXbWJAfL
3jXXmjlB+YTEUzGSVtWlpTXEEhkLyuZ4eXXJs5APuuBiMATNzXH8qvQoxgQBOWlspOBAEhLtvxRP
XiDEeEbztZhRMCbQ2NfEx2gk4wThd0AMXQ+vzqjNdHDwfW5QODGuNBBssAhCm8sJfEqpyNwQbefg
txs2ROfwg7u14FppdI42dq/zdcc4ycFDplFdI6yT4BCGcIEWd/ApfCxMjLtwoAi8c1ItHfggp+1Z
852Vkl8PIf9K4gQNH/6/yfma6zwF0gZJobBZZsMXZciTvIRSlOnNPGq7Jr0DrlNTblP/hruwVCCX
S/Gutrs8Mnw7eWN6bDUPza/SSaxIRfJdBvhvGN8M4mhjukj4HoavfvNAyDXw2AEe77kM3gp0TgX+
Ua/DzRmdLpf7FrLsF64pIsq4B329bS72USklAANd72tD+c3X7LHao5me9cFPMdgK4rxAvEeHQeSB
zHvwdy6TnSdGqR3hUjYY3mTkH3dspyBQGh1HHDMku7foVR826StqCleaCIi6KZCFJ93ioyJsFCVb
n10RS4D0Iu1l+PwW4vQ5eRQg0Z6XlvGMwfVVQRiVfED620nOWb/WpuaaVDCUb0XpqSkNS0OGwwlr
hImLn+DV0Hu7HAarax9USiu4/UHA+FKwbJjuiDH9dBg/YtU2SwcFxIS02FI+PT4JuAEXzcXIqos2
2zJI50dKvafubAhKHv8ksji9Cx8Aci5a5M8v5qZSd7dJ/2/Uvd08aRqrT9E1v5kC8huNC55sNmgE
7gN4G9cBnPRRAB6PUPRbgKIEVCJdJCQ1LfSLxWwY3ckH0M/axE5DqbPc5L56cqEmMg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4e5ca1c7-d8a4-4d91-871e-4c005a52e756
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:00 GMT
x-ms-content-crc64: qHaXPhs6JBQ=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-5365c504-0c13-276f-c6a1-957f70ea107a/test-blob-2453d756-4c46-68ff-cc57-c8aa2ab6330c?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/xml
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay1lMTY3ZmM4YS1hNjQ2LWRlYzktNDJlZC1lMzc2ZDY4ODM4MjM=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x217FBF364FC3DA0"
last-modified: Thu, 12 Nov 2026 00:50:00 GMT
content-md5: 43xdDiG85IKLNfQYh9jpMA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 940e61e7-cd96-49d3-80c5-1a4a0a1140b2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-5365c504-0c13-276f-c6a1-957f70ea107a?restype=container

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
x-ms-request-id: 5434bcc2-84cd-4e10-83a4-fdd43bdc9833
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

