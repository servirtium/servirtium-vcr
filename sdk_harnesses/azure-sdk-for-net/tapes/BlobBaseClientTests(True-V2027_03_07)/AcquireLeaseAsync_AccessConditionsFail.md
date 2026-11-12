## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c80c7f9a-dac9-682c-aa7d-eef385f58dc7?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).AcquireLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:47:31.8981226+00:00

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
etag: "0x1FF25853BE7F140"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5fc24146-a4ad-48ff-9610-09a741cba5e2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c80c7f9a-dac9-682c-aa7d-eef385f58dc7/test-blob-ffef7c1b-7b3b-9d33-e5ca-bf6ac0f03ac7

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
uKRw28rr9qd9jYsmC9VSEQLML8OD738eS2/i/xrBqLlCJjrghLH9L4ZHgq3wDZIPd65o88B3Q8kl
UpBbCfeMu+XR5OSacYxQzwA8O23RLT3d0odsWbT4y+JxujIhoSWPu8bIHymtdQYhGCTAOghcUyRS
fjdvH2Ex2BkBKbZaLi3arICmCQ4UL12BS0GPOJDaFWYNzyPuIJxllkYPq0tPx+n35o2HtkoVPU7Z
7tQgoaCIJxNPTF8K64zjQHLIBYQRMYRYmFECUl8c+JHUFTHIRPSmh4Q4/3qJ7fsAo3XXTTjKyLxP
yAlOhtS0M1TONdZbG/t+IX3/2TIJzqtWAa7pRKpZCUx0eHzrWACvg8smu7ckpYh5WSu6yu+KRvle
94Qmy+6pdSyJ5qN+ksl9UFZm4xP0MVsmb+t/nj5d6jKDjWB8ibfdfEaKm7/l+sZhPXqZI2LmacUo
/1sCKtbtLPtw+wVpAMeeiGfMaZacQXUkHWHEw8bPnSOaU4lc2lJvnW7DdP/B+Dyz+5r7GQAui77m
3g11KWg0oF7hzq09Qa4UXcso2c12YyQkEcgs1IMia8fLdvxF+nQFjtOg3yqPdbns5rw0BrLxb3ro
UBegCMzavmLlcsuxz2JXI0r51YT5lZsPP+3H7mUU2gaCXKpcZYUGxiDIqQPtOhdZ3eNn95r17rt8
kMjeEtD80JfFL3K4+r3F8g9kMeuXIQXWbhGCreNrjG3u4NS8KLNPy9lrKAqkoeIlogSLkb3P5G/D
B6S/eiO0WaMFyRrpCMpbFGYSK/n6Ms0uXAre4PqwH/tl+SAPj1C1t85nntfHO5o5L3xWvbh1yNXX
kB4Y1XmoVKofhA6pTIQVXHQqk5P1ZyBwpbB9WWJC7zBLN/8ynOFVvkotp7eLj+P3QGBESzVB4Sn9
qDDIKvpH3ZTeXhSF48CS1NRJx79p5RXNhhgC/aT6ClbVNPSxjZNP5coirDHOcVyfsXZg+BlplMMb
+qThRd/w41O+sK/M4UdA+eL1Rjjj/xS8YkwtmRI8a6AwlpLvbaDrMcjeD8Gt09AvIP43dE2LN/uQ
JeOTw0pBgkQPm0u0UYtBChRvBfBSDo57/XkTBPdTpV6XXki9V25+nIx9njiEe85y9Wo4GzIKPhZU
F8XQLX1MvPXsHfNDhLKm8Ghj1XBW94KroQ+MGoosjCAxaUCprm4OMOJCmF7aLnC4kirJp2mm/SBC
JIxuwKFrwJDTEhtx/EL5VKSOFF4k0XKe1IhfY+W3imsgZonioHBA1tjNBxxVRpXnz1LEGOjBHlMZ
0OsZDF2rHIevUZa5F7Q0TT6GVslVSI3yd5OS8nKDXkc1yM+EJ8l7IuqUpfT/Lreej8qpOseKww==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22A97DB865846A0"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
content-md5: n9PE1iigySA8XjmpiELcSg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6fa13b43-2034-4a15-898a-987cb1c9366b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c80c7f9a-dac9-682c-aa7d-eef385f58dc7/test-blob-ffef7c1b-7b3b-9d33-e5ca-bf6ac0f03ac7?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:47:31 GMT
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 95265d87-19c9-1529-2cf3-4e834ee4b026
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
x-ms-request-id: 709e829f-460e-4507-b867-e069a1287d61
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:31 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-c80c7f9a-dac9-682c-aa7d-eef385f58dc7?restype=container

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
x-ms-request-id: 953c5498-ff80-43be-9ad7-2f3a2ec5f8a2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-de340b75-a2c1-f399-48db-f363a7d92380?restype=container

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
etag: "0x26515CDBA0E9140"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cd5baee1-8585-4189-a3d9-e88cedc93756
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-de340b75-a2c1-f399-48db-f363a7d92380/test-blob-274704ab-3400-09b1-c17f-7901b0aa69ba

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
36M0L5OrAuTEMkztJcVtU8/O2EmciCVAWSodQSmXQ55yOYMDpPTsAAJiYs3oxOP7ESYy4dIfHVZ+
9NVojcC7Le+ueuxBaa7b4tdHOSZYWJVHITADZWHLUxsthbAeg3JBpzXeOkn3uad3Vv/62OQwJZtA
IWyQt8iO4ifRFOT9vV5lBZHweh1LUGeIjA5h0Xs3/V8U3WEGsPBtUFciJaXDeZiglNJSP6t99dEE
CCq5LBGsmheE6eD8X1ShgynGKCrCxBJ1wTyo5L60lueQAajFtCNGdouNP5C4pDV9sbuBt82nQkMY
Q2vUA7VZ0FL4bF2s288Gf7KeNISCvR0GKzMCMt4a6L9krXC4cXLWNG89wDfY0dXsezgbCA2+lYZO
ztiBVp103oOdRy1eTQ0/x/8VRf3lLlldFram/9+ypRjqaqOaVN3RyeGzOomojS4r20ENqU+IaKB+
I0Dnzt+k66EVdONppHMiQ3wbMvTPtYmIeyOepPzIYQEDHDGd6vsCD07nkxlLwTfN62XTbTarrm63
XlO7BUelTBLhZohBhFmBGCKl5yJvPbns0LiW9fTLV23C5ouoRwkGQkYHaVqujGYMUlQTBsZMRyGZ
zzSODlcdFQ4af57N2dEZnqXbaNNfPURRiqOfuFGndp5qDnfVdzPv6VRLlAzIPniD+mcgcN5NOpLv
PYS0fV29cwn/YspZQyZy7H9/E6k3iUsqHL7phgXAHNTl5TquO2v2jSADyNuuKbZAroRfzibot7M4
iWGf0+0DP0X1dF7sw7ATiIWINMBwfPIHqdeAYU6t/C2GdrEJV7ozAIiVuLVXVOvTS0WhYIPzyA1u
lyoVg973R3cxZUz/CjDLVDQ42sQ9sFXsrBYJDJypk62kmsCPHn2qnnA9Ju+e1EAU1gxPuu5JMebV
KdbI7jvbh9GeW29wOza3jTtT/4pmTdjV9DaPWtm/W2nZuvWm4bA0Yp4d/3nRpJrWmC2y9TJcbtz9
8/kFSy343/8Gl4FAEKuLH53sSE1eA1CbucGrDWY3fUsZqO62LxZwJSB5yw0ZlYeBJ9WVcCaOnu+p
aZFsTNGZzxk1J2e91O+GfCIs5ThDgSQ5KuaQoQwkign/DcWFA9lP3/vz5G0fxFLlDvMEYrm2Zuds
MiHrCS0NEJ1evccqAXhJ3QU8UJ23GWaUqpMZIChQSKbdGNG3Y9bO5tPPwQaKuw17u4SzehZKtRi7
V16a8/B1DXUhTOimkXkvbWnK51hgCe+FnWWjnM6Qk2O5/Ax3NPLjWrSRaW4k1CkKhAysf83AW01v
FFaK0XGmkLmF7ZVttzl35o2jzqCAYMg7mBjC4xOV+aC+Bx+bWIlD6ti1n+eTnczSNJhAHIyt7w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x240861139B3F0C0"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
content-md5: L7qhiR8Cba6+tAHbJQgfhA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 71aef6b5-6e58-493b-a093-989eeda69d2d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-de340b75-a2c1-f399-48db-f363a7d92380/test-blob-274704ab-3400-09b1-c17f-7901b0aa69ba?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:47:31 GMT
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 384e8db4-e358-a5ad-eff4-f4aeb019db8e
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
x-ms-request-id: 01c2eb1e-65b6-44ec-867e-e8794d02fc28
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:32 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-de340b75-a2c1-f399-48db-f363a7d92380?restype=container

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
x-ms-request-id: dd45702f-fd04-4320-9aee-fd37a318599b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-c7e46003-c1cb-a8e1-fa4c-efaf7b55dc14?restype=container

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
etag: "0x2626D3E6FFD23A0"
last-modified: Thu, 12 Nov 2026 00:47:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b9690860-77e6-420a-99af-da82b56d3b26
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-c7e46003-c1cb-a8e1-fa4c-efaf7b55dc14/test-blob-0e6b1811-500a-06ea-2b0f-aff39fee1cb8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
WAo8u6flI/Kspj0M9P0qmRfgnZeuzYSzdt2cuxLuCQwvN1ZwGSBsK/V4YmMS3RIt5RXbvlGECouG
iEXKSGjgvZ0x3LynuYD2dHGiNWsgoJjLb9b8E0q6qizL6ZDbouKNmKTG4ABVhSuV5Erf4tQfZuis
/9mR5KpSdzGQ3M/vG9KPFJ3HWr+YdemqZi4A2shXq4OoL6MI+7P5c2nPxalbpsh3UM03WAsoFInw
5317UpxpODBMRusvhhnpzedWyLA/TsBmiIn6H1N3gBsZGBM2fiDMZYx5D1/dSMq0Tosk0UvYsJm9
FckTbxjd1MbQFW0Gs07GimMjxj5giT++RdHHU6/PQGh6eGhWufV0nDuZDDNdrps8XkfntepaXIyK
VClHFYEWAdQFizrmb9BtryoDxnwMYZc2i/Rn54t+HxzczGXMLYa6ggpeWCJhVu92eQW/V5UPffKR
EYqMrxlJhmsdCqJroYKjSERyrgh11DUF8G6FvsiGzE9yOhz8LtPxFdG2Q0tMC9iDHA5Rnc/pHDxV
hr6rw8ijlz1T+GZmpxpxgJg3v5DpueWVAaG5NS5/iB7fp6cURlEIEqwN+RJxHXT04B02slyra83Z
FcEm6mEP03BHhgBzXDlHLqzk27/SI+QtxVQRSdbBNDvaOzCP4ihK/iaiKZd0gYPj74OwxpANB/Ld
+SQN/YmZhlLFmSEJt0yDmdyZL/lNuEPRLllSEW2qzDQ+segDPQGcCKNFr+hi2jc3LS20dNf4kEHh
PM8vR3XkG8ztygZkf1zb/SdVCAlbblMiG+RA9VhcRiGnIgExbMAuYJQbdQ8x063Q2Xavoog3hc17
DSyRpCV0kIPlvV1bqZBmJ6d0P/lE8Ug2bxzhrKSYb50ztl+Unbxvp+SLTBZQdTDmSXrhwkXUNxzk
WjQIkuPfTE2/J/Ix0YnrBZgUuKUy5vrs+mMpt6xYX39Cr0OHZhQBq//IkE09tHfx9b2sv353snM5
HJeAtpShZ8hz7iFGY5+DEwylaVasrkbrOMHvq58Ay/3PTUp8gPVrJiiFycVVqpIdKKxy0kgdjW1R
lH7SsrwocyMkdxVVB5IXOkMtJ+SAlY0v0YLzjfm0ssDcK+x2mHRsXVaiMTN8yCEZW5gF72WI0f/w
o+E6NOUpb8RVeNymoKHPwcmO3WNaswhg2jJhr8NaU1nshfSSMihweMJuJ09Fcrv2NS6c+vSblu/Y
2VqzyL8B+iWCuRqsPI+hHWSh7Iy5G2d2a3mUvlllUO8EuljOvLACbCwqwrmgSfmf+9yP+qpjH77z
PFxGbDzLHWgrqIE20mG0n39fjliu1iKA9cN81lZFoZua239TvADwXqVQdaF3aCh721srBJFmRQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20144FD3039D6A0"
last-modified: Thu, 12 Nov 2026 00:47:32 GMT
content-md5: r0kQRv2eSe53P+S3JCoI6Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b7220050-beb4-4969-86f5-1871b9a5546e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-c7e46003-c1cb-a8e1-fa4c-efaf7b55dc14/test-blob-0e6b1811-500a-06ea-2b0f-aff39fee1cb8?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 76c63a66-4f78-1247-e606-e69cf7e160e2
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
x-ms-request-id: 46a89b86-e666-49d3-9231-54a9eafb940d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:32 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-c7e46003-c1cb-a8e1-fa4c-efaf7b55dc14?restype=container

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
x-ms-request-id: fb87d640-db56-4cd5-b735-9535337a974c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-b22f6f7e-615e-0881-8d9b-00fafb199d0a?restype=container

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
etag: "0x1C0B557CFAAE630"
last-modified: Thu, 12 Nov 2026 00:47:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ab254394-1ce3-4847-8b28-b3d856a7fa73
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-b22f6f7e-615e-0881-8d9b-00fafb199d0a/test-blob-18199533-89f6-0f77-5e3d-8f9a91cc3099

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
enislGG05wS5vendTkwWzGnbaGHIR+z19x9TINLmdsBqZ3+DbQiof64UXzifmcESJ8MwtWPO0TOM
t51CYMcy0kcocufMkl5hM+izs+izVV1eQfgPtsBcnJVM97ZrZh/n4YzxdyfZRZRkz4J7Gx1K2GE/
4x/OIxyGy9ZRf5un9szJy9Jcwt42hPtjquY+4YB3Ah9VLIIAGL5vaqtQh8b5vNm1sU9L7hWDCF8j
a3g1R+lV2nx8UspJybIU7Fcy5vw0au0NiDAwLBQJ0SMj3K1FOiPB+q1JfGkPa+idNgK+UCJi7gCL
KL+5JK1oc4GmJuwEz7E0cOtO6+2D/h1Ik/URS4EAwe2tuhJjCNUA4AnoaEX7mGdQid83EwMSBymi
cZC4VycApWT/VxSf0GgVTgrkm5XXTfuNwcGhya3qmrLowZdER4nh6MLg/EBTsLh3IcT4LmyUyiOV
KpZmXty3FL1htw7Q0AaBArLS9lG7OhAIKafo8WxGVPdzrx3ze4nmKeeC8fmpplG+dyu5wdTS2vCF
XTU1ziNRG2MXXSDpjoco7MxpOEkXXoJVKnpAjZIiodUtbR5UsVvEMdWVkkkw1OmkkdQHaKGmbv6y
36SoEI7Q9bxLvCBp1DtxpQZzgcw4JVWRnPu+Gzgzhv8fodG2GyBHxJyN5RjIOryYlcKaMuwxeblO
F3SSEtmDFzUgSTNpuorlLL0vqz89yGE/JYV1mFMT7ScYaAOstbLDCc3jqPGJLto4tAYuAs56EU8S
U+1UDn7hDVsLUVKHOXYLbKFxWSBwtfaqPeNM5OtYnVa0mWLFbvtPAZqVfd2IsXuQI5UtCLcvop32
qdCalChvs7P706AURv2lIliF2jcZIoxovMFWK5WfhfbEzsUqtGxyJcopjd7be92Xh+Vfqchl3YdE
MtdmGYceW02pT3c4em7rErRt75SujEHjvqOwQNsuXvE95YGVDAxCCzGQMStlXgx2c5cT+O3ylqWW
glrkbhtye/CG+pTtVgaoKuRjHVoVfl+WOcxEGmYES0/b/omxXpwVHbY632R4iRyQas4IjnhKgQT6
TTVOLmCKga9FEVh998tITQCk2p77Hq+ws6+X+7zWkXyEthFnx+5WsF20MnjEE3MDwEF4pqdm/i6F
nnux84Xzb4Db+EC64IYRTilAR+w366A7lDt7XurVHrji4ShzpbzYwMP36BozSd+6Zlh9JbZCTrPb
dV9KeBCVBtqH1/5dnaltaIcoPwKFCEpcwPeSV/gBn5N1mC9djUeyYeJAq3HgXMivEL0vGg6wVW0U
7bgZA6/ihjhr5wV5D9o/dt0gRVzZe2Mu40Y60YWExULCSaCPmF4zXSU5dXXDNQHj8KQxkBAROw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FAB8E2E3559A40"
last-modified: Thu, 12 Nov 2026 00:47:32 GMT
content-md5: a6ukutdvJIMkmH1xamla+g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c5567d4b-cc06-47fa-8d63-52a634b32c3f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-b22f6f7e-615e-0881-8d9b-00fafb199d0a/test-blob-18199533-89f6-0f77-5e3d-8f9a91cc3099

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
last-modified: Thu, 12 Nov 2026 00:47:32 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:32 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1FAB8E2E3559A40"
content-md5: a6ukutdvJIMkmH1xamla+g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d57340f5-db37-43db-82c0-e1cffb2814fb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:32 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:32 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-b22f6f7e-615e-0881-8d9b-00fafb199d0a/test-blob-18199533-89f6-0f77-5e3d-8f9a91cc3099?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x1FAB8E2E3559A40"
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 20ea5471-a768-b2b4-e622-c2b6c53aafdd
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
x-ms-request-id: bba0d61d-e4b4-42f4-8a50-c79c34367fbe
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:32 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-b22f6f7e-615e-0881-8d9b-00fafb199d0a?restype=container

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
x-ms-request-id: 66d4044d-5b4b-4152-bf41-d2b8654ba529
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

