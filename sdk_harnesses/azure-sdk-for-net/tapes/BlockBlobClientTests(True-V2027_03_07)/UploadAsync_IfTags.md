## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a4e5749c-01a3-c880-e7d6-a0315580828b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).UploadAsync_IfTags
now: 2026-11-12T00:50:12.2937295+00:00

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
etag: "0x27529D1306A5C20"
last-modified: Thu, 12 Nov 2026 00:50:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64c7e0f4-1079-4902-ae96-5aedf8562071
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a4e5749c-01a3-c880-e7d6-a0315580828b/test-blob-9ea248bc-ad80-c60b-4c8a-d41e7cf1bbf2

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
etag: "0x20D1D53BD798B20"
last-modified: Thu, 12 Nov 2026 00:50:12 GMT
content-md5: QkFwsYX+SbcEWv9QvxgD9w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: adc59711-d24f-491d-9cfc-dab121031717
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-a4e5749c-01a3-c880-e7d6-a0315580828b/test-blob-9ea248bc-ad80-c60b-4c8a-d41e7cf1bbf2?comp=tags

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
x-ms-request-id: 3bda9fbd-28d1-4bc5-9253-8cddafe828aa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:12 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-a4e5749c-01a3-c880-e7d6-a0315580828b/test-blob-9ea248bc-ad80-c60b-4c8a-d41e7cf1bbf2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
vtqN7MBfnRCOQ5ooOruHDxYHagzw/YjvaR9XGCxiTPUbrXN785XKXauRED0T4oyQAsUHdIeuAsFR
nYKhCITkLPakDI1ICxuAPAxgX+1K3IaTxhZnWthtbKuxKlUSKVQnreNGbtb+R/aphzd6TqPUBsH8
DkFufNIeN6Dil+HFbhO4ObEJBG2wlH4fvdOg8h0H3SOUFhoSuTARKDc1HLAV4xkkwhXxywJTTHrD
Tr7/fkSC2rm9MVf4pX+B99s2e3fNCtq6ezAIFRIhQMqgT2pyEqnyskL3V7LBKxyVcNMmHNED9UTk
RAIUecSnnPCNWFYVD+UxRMg01rMn+FATc6U++iT5nVomjc2n3jh9T7rBM9PGgGHu9NgIzh6QvEyy
AAYfaKLMlLr87oEXimWPt4b4ZcV8TfNDUAVL8M47ldGB9d0yXecY9Z4YypHg1mpyeRaYl1aGNbMT
2xecgKTswFiwlZWHXVmf4HAnY4JhY3qb2Xa4o/16+78qHoLPe3T6LAk4L0DU6hy9+LfmX9IwsXed
AactNB1aNprWXT7X0GX7LDd5KDM5xu5a+qpGk5vs+mwKMXnNzPjr3fml/o3d5ShS6zKat4hDYzu4
0zlzFKL+6WLSzZ7rLmA+jUs6k8dhfBWC9KhpUkPjxs0+FPm/eMlXphUqCxeJZ73RWyo9Cc9zV1Yj
8CD6lZcf7gfQrBlnfxSC4uyyNnH9+Izql/YYpbz+y7yjm4eoXBF+Ch0QubqjatwVuyfiwSDkJfiT
D/6gBkhL0uFcw+SM2YbbNCtU7T7RRywZAuqVGwmbvnWPFU0T3QTUxefZRqb4ieKgB4z1kDi5wcjR
hwNetbfXwAVu/cQ4yFcnfyhX+ACFIXkI9BN9pi081VOFQVYAdg8vAoWhiYseaD41zRAQYcnHS2WK
VsGjWhrYMShws4YBJwkZKPV75Jju6YzUR9kcLHOJvvXwdh9NjKhryFdjrbS4NKYH9jnTS2fMm2w1
zhJBvAW05vWQELHpy5xNEBtAijzXHBIyFTU6tXKOI9qzF72VKgxSr8a/JyT1HSudhjtLixAwXrL/
DqbPeTCCAuzWNrTfuOUP7tt1F/TuPfcKnS83Q5jJg7kKlRxlgjWVPCU3Hud3vc1VPJ01uka+EdCv
xNwBS75UDbP61CPJqWul39rOtx4Qk99i4Qb6lMhyTIRLtr5ZlPFm4xEzfOiqjJIxj9tr71mxnzH8
nmq4WXjqiIiffvOtTEvpaNMN3Bf2t1V0yQXtBlwqmRaMXfWHromYSfRgCw2fhEKPgoeGpMIaBeYV
Q5Bz/YErdeXcIO9VYrlJdJMilqxH1UXCXYTVpPRTclcOcWr5JUtyNJUowmNTOh/NPDAv9245zW5L
saD9VdHwiK6XRvBOUE9HsGEWHhLhbiJkCGfEJHrp1KP8rnOrdd/ENzm0vPQvfuvg50cNI69baUN9
mE1pLGQ0rnFMUqHbnDqCUefZLbEuNYl84zwz27H0oEUwLdyRWwvVgA6D4ixKBUsMitHHgjuRT2PD
7UgoAdK/WLFbq25e8PbbA62iq1JdMd7wJ1HgLB4Jnt54zW7CrX48w4p67lncrZna7H6O76QRZrtq
N9qA3iuTUgyQ5SOHGFYuZefI4kOEFHm3BUCfe645Z2ezWHaku+Ve55xMTMh2U9MoX4m9SIR45SJg
ydjq89ZdVn2707/giaoCafqmN8ewQbJsdxslfB7iO3NTRPIMc/PF7/VKun8UR9bfut+K0a1bsIgm
fny7ONlf2ZhMjUW39fUG4UjSZoYyWC9FRsE/WGnF+JNq5vV3CrYb6+Hnx7qQJ8Xpg+9liEoB8yVN
dfIYH4AuhpSxTQ//j9aRtnqkSpB0tB78VdR5X29JaPLQKpTEA8tguEAl3tm26vQZ09LPXKmU2MDT
G8mstCclaOUcL2RCzbOvRJJQTtVERmvgYIycegtJO1HT8ecBtAQZAHb0mbqP1gYfIBgWRIrrjtVe
y1ObiO3Z0/QSbtvLrY+ONk5fT6ywUIqFfVryMvbH6GIRo+iwfneIG8XGfWgqU3KJiA48jD4prXvJ
FQuT5qH9S4V4ugmm3rfW1jTm6tMhWirnaanoi1wk6PZt5mhs9TUkyTHisplo4qpWZbUKQsKoqLvg
rHz3FMApVNETOfdPauH/wiGhP6iRfof+kiamGqYzxT6ti0i4LbRxuV3HVamzB/rUCoChBmgTTy31
+IGZgjkr4HS5od6YR5RsMIZKySneS4sr0Q8lkb7VmjsbwzQz1zYjm3Q0+WUbPMPrNdbiyIUEFqz1
brAqBU614wejfYNgOVhQJi60qVImD5VLOlzo8tG1FqyIPWiF+ZUlfxVeeL4/i/x9kqJXT21az14a
3svyzPE17WbX1/vvyiyYjyo8x5bXDK9ga18vXsc+LW0JahvKMrIkKItXaLMAjcd1v8BDHgfIQ9Ic
kmGRBo6fmKmO5mARzlx3F58Lf6T7X96XuZ4H+w9lQSZIraBQkiL8uM8JcadnY/BkywZovMQuIDKD
+kzvmJ2aKKQ6ySC8JoV8DsbU8e42MFauojAJ/IRiGo1tzZjWDCAyb0gCLJrQp6SA7K79WS5ETMn2
QfVskCwf166TTlntpgGmooKlMwO73fqLiBDWZcBeKIDO4Moqxd4c41XrPVlLk0asVresnxjGOmT6
4QgbSHLuNCbYH8U2e92kiFCu0KChQPXKKQ8JsoloB6ZmMOTVAZvi/Qgzc3SAdtrZCBbIGGnDWKET
UR5j5IKcbxcfz0v4zoe1y9KYbs2BSbM0L6pyn+88o9hDwq98fxmFlgNcYKaP4TmPE0yWK+rUkghr
LrTYKtAo4yxytQvXOUu5EtjJJOgNpE5w44yjpXjubzCnEFBkrWszNH15HCsut9oA3BgRCm0fXYpm
Z0dDhD60hEbbMCj7VWRslvBrlIgjQiuyoshf3GTCiLLG/kYk768+xJfkUoeyBYezpXN9tMkBQiUc
keJ1VajhGah1NFceSKZBLM/wPu+kAJxAqzfxRdTpxLsgCF7MyG/vAjnePNEwlVzMPIf6EQQ2d5BF
Nalx8NPUi2+b/kBIdGNgATu1xcPLEBbaJAlM77O36ZDNh5PFfRFlCrBhlJcchMcjmRDIgLLNeiST
lszKh5y85BSveu3PmoMqT7oSaXx/vqBBKFWj72jdAAxvMedFm4MUpbCCbAnaVP+MnTH4uhCnFNgs
iV5HGfSr0XrgYGib5LQ3/sTL/FGWZtRWFlE35UX8xx0PGREkzIy715qP+vSW8bl8wLxM2xiGliOK
8AKjc+w05JhLjMuiEjE3ECW2BmvgwCWYuiSIr+wFiILumtyJGGOuWhZbSmTt2a6LFMvzz4+3qTDd
C7jHrDSsRgRItHhVrvfBCKtVhHXAquB2/ZsgEbjzNvCrqw2q567irwRgpCU1NWbUMcfjYiS7HWDX
UK6YizRLVX6HqQLqFiH9c9RxYAa7Qcc1TODxD9TM8I6s0pYASSPPFU6mrYxj6Rul5u9PSbxaHA/m
Yz9UWUaqu7hzPUOL/CmxoUu3FJM70WLETCjkfKfSUraHGeXke7sH/PLT76vXGunFnqdxogd7q5Ld
jw0exT4RoeuNBOJDzCaPrxehZ+G27TE+Ht7/YK+uC25TB+uu6TezwU7AShYHgtGB4vPv2UOwJqLb
4KZgEkE83vh08MU64Mbg7qaT9qIaN5wMfX68vzErouBJ0gmQUq4MhGwek5ILRgEsD+ucHTAAwKgJ
VJXCfx/GSE3l8Q69T5v3hnE2/KQKADZ9j69Gj4WwSBFgh/4ZSgRMV0pEJlXyb79QpJa+ycQE/lNf
RPBvf7jHNaj8XMic3jxt6aRZxdngiiDw9urv8X9NW4irugUU3deSffGs9RL3s8ZaUeAfqzl5frrQ
f4nO2EMprwE/8SQ2WAvMx0joNJQN+EIklKCeLbBPMTxLQ15Ow6Sug0YRt8GhI/jUUuTwkUolwoZG
qkOjioFQ8MDo6xWtfgOkObBO+0CBgnGnydvMX5/yJoHXBxlgCvjEwMcBuTjjJtTgTFiZ1sZFxSjS
+8Gmg5Eh9sWT1nbqQy63ijp5f8g4xKMG7BJHWE+6kULxjg83HTw24MNzT1Bd9Qkp4UyLzEVfmTYe
n5d+2p112UU0+LQfgGz9Qp8FxXVSqfYJHXYCLsT8kfTYGX2luAYl/XUKKP1UCmDgjYmmWtPBy/ah
dLwmc6uAOGe/RmfuWIqZ38j/SID5tRMVIqA6VTchF06HA0NK/orKivCVlMP58TX/DXoLwoJ1qL6o
EFAKReIvni4ZZ1VGTuA9Nb2QYyBPHDBrO0i9FVXLEVuEoe45v0QOZvaV4IrguL6ZzY3E5UWeWPQg
nwqacojZTVX5wa3yBHV5gvwqujumi4OJI0fIBiwW5kn5GB86c/Rtu5I05vYRp8kXS2NIc524ehSG
EE9BEUcp49tj+etVPw4IvP+ocaWMd3t+sLrIzXKrQJ4Ls2OlLKpLCwIbrq7dwQxVQLaeEAlv+ZjT
wmCMYBZot7hMSouqYpBUXWWiccnNoe6uc427DTCVm7rK0WpKv6rrs/b1kHeAqt0mSrOjzIjOBSBx
3e2JrKqIt67R4JAmCp27tr7T2BB3LcmvlcN88s4x/MxJ2eG9YgZMbNnIr8pM/z8V5xXJ+y0Q+bAk
2RbmC8Xgn+TE3TC8/lS3h2s3r37+Y5aDZwq4ZwCfON8xmYnvZWEU6BDlhyIPWOnBEXPB2EoyJXaA
YqS6JzfjJaRRi2XKyCEKI8duGNtzdA4g91aN3V+V/3MSbgK8WcDYAmJ9vc2E9klSt7WCwwybDO6V
mTDhVkdFvIzxuFkeTckGlRZ49rdBnAAMOiaqEjtnd2EUJ7+Q96waOABAkz7vM2nrfC72IhY3VP0v
1Bshm6pRikD3CiUKdZ5pXb62AAjBHQa8vpUMcVRL3dPBYCKR+Z1W7wn99ylD4QaPjMVXgFP0brcU
ZNwURBjsrC1SSBV82GMhYBD/wyXdedyPfeSO81x/zPJqfJXAQavwEUv88ZnxE7RhNiBC9aqSN+sA
hcc0XbjQ0nsjEVzOYR5lD7LZ4IdDnmkwLbw8PNdH2ESqv7zku7OSKx4dzgJXk9UB3eb4uVdjvedd
BDD8lJWj2zgXI6FigFP/RrRpJc9n2JnnOl/xTx/tRwHUhreDlpeIefLJQG80nlyS+HKi+ZgX9iuW
FVo2sosZKtyfjfmbe7Ad4KvdnZgpspsCXlasSk1pvZCL7IE9UsdnsBWSlBFi9n3ChRjtOliTbGK+
M1M1bOCPNdBpEI8u347jdu2Dlx6KoGfZ6sQ0fIM4938ffh5zMUM0A15A+ebtk6WKCcRqENVENJPs
W4EbW7lNMBgQD2Fvb0SpTpO/SaaB7FceqnK+zeep2kmLh9bBGaik88nO3YNEGpl/wMJBhOrsam8q
/LFHjmIxZjQX4+ht6DTrGlbdsw/T2o/YPw0kZ1Zfnxxmlxz3XWRmnXZOLDexEtiNVQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EDD82E6EACBEE0"
last-modified: Thu, 12 Nov 2026 00:50:12 GMT
content-md5: QkFwsYX+SbcEWv9QvxgD9w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 05fe60d2-f583-42f6-8775-c113dbd4a5ae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-a4e5749c-01a3-c880-e7d6-a0315580828b?restype=container

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
x-ms-request-id: 62cafdaa-9986-4ed8-8563-b6e53d2785d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

