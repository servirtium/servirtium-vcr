## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-19a91618-9512-df0b-671d-199cf7b9e73c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).CommitBlockListAsync_AccessConditionsFail
now: 2026-11-12T00:49:35.2257131+00:00

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
etag: "0x1EBD6163B1FCCA0"
last-modified: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e99d4c0b-6ea3-4eec-a14e-8cb7b789ecc7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-19a91618-9512-df0b-671d-199cf7b9e73c/test-blob-14170358-067b-a1fd-199b-6537d0162033

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
etag: "0x1E2994396B98FB0"
last-modified: Thu, 12 Nov 2026 00:49:35 GMT
content-md5: jNoSVB5xdc1K0YqNFBb7zg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ca38b11f-0a5f-4186-a032-abcb71d8811f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-19a91618-9512-df0b-671d-199cf7b9e73c/test-blob-14170358-067b-a1fd-199b-6537d0162033?comp=block&blockid=dGVzdC1ibG9jay0yMDAyMzE4My04NmQ4LTQxMTQtNGIyNy01MGU5NjIzNzY2NDA%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 76e84934-c728-4088-94e4-34a0f672d567
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-content-crc64: xf/ZA/YLXWs=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-19a91618-9512-df0b-671d-199cf7b9e73c/test-blob-14170358-067b-a1fd-199b-6537d0162033?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
If-Modified-Since: Fri, 13 Nov 2026 00:49:35 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay0yMDAyMzE4My04NmQ4LTQxMTQtNGIyNy01MGU5NjIzNzY2NDA=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 58c35370-ce8a-4c5c-a59f-37c10de26e84
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:35 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-19a91618-9512-df0b-671d-199cf7b9e73c?restype=container

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
x-ms-request-id: f0f543aa-df31-4bfc-97d4-e3ba72d9b12b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-c82f88b2-f0fe-3a70-2a26-a953fef99030?restype=container

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
etag: "0x1E6B78F7AF0DC30"
last-modified: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3d0da23a-1a37-4c72-936d-e2ba387dd419
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-c82f88b2-f0fe-3a70-2a26-a953fef99030/test-blob-a2e495b8-5096-9a8e-0153-7b55f04476ba

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
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23C0FA6A4D6C780"
last-modified: Thu, 12 Nov 2026 00:49:35 GMT
content-md5: 9TRbixela/FJYzOGnWRXOg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2e318ddd-e25d-4fdc-936a-e6a988bf5b42
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-c82f88b2-f0fe-3a70-2a26-a953fef99030/test-blob-a2e495b8-5096-9a8e-0153-7b55f04476ba?comp=block&blockid=dGVzdC1ibG9jay0xYjFhOWZlYi1iMzVmLTY2MTAtZDAzOC0zNTVkZDg0NDRmY2I%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/octet-stream
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 317b4659-43f2-470d-8d27-9a3b24b85f3e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-content-crc64: peAtKlai+NI=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-c82f88b2-f0fe-3a70-2a26-a953fef99030/test-blob-a2e495b8-5096-9a8e-0153-7b55f04476ba?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/xml
If-Unmodified-Since: Wed, 11 Nov 2026 00:49:35 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay0xYjFhOWZlYi1iMzVmLTY2MTAtZDAzOC0zNTVkZDg0NDRmY2I=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 2bcdde1c-b690-4710-bf29-1a4a0c6eb2b6
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:35 GMT
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

## Interaction 9: DELETE /devstoreaccount1/test-container-c82f88b2-f0fe-3a70-2a26-a953fef99030?restype=container

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
x-ms-request-id: 822af922-64bb-4d11-ab2f-b0df8b8ffbe9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-bb1e9af8-5250-ac92-7fa2-aa3d9f7c4bbc?restype=container

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
etag: "0x27872503644C320"
last-modified: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 095f3451-842c-46c9-b276-d98d74d35437
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-bb1e9af8-5250-ac92-7fa2-aa3d9f7c4bbc/test-blob-01fbd5b4-4d60-7afd-3fec-d5040981ee94

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
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F74454A889F740"
last-modified: Thu, 12 Nov 2026 00:49:35 GMT
content-md5: s+vVELaLLE7S78hQ/SbGhQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4945528f-f078-4288-abf6-6518c72995e1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-bb1e9af8-5250-ac92-7fa2-aa3d9f7c4bbc/test-blob-01fbd5b4-4d60-7afd-3fec-d5040981ee94?comp=block&blockid=dGVzdC1ibG9jay00OGE5NGEwNy0yZWIwLWY3ZjEtYTQ1Yy05MDE3YWU0OWIzZjE%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Y1mmopt9H5gNbpy8CdLHU+15qQJITmqqnaR7ZHyOo/6zFtpG1qggN7Zj9PKwQHBsJIIWj9frSxXu
+wX3AbscfsqeCPL4gXxFWHFM5Vp4+lwzDj/5dxMmyMrEV9qiKTX6RnUoETd9dKMF0Tdln2a7dgCo
xPN7Iga2eEAoMymioi48UZ7kT+gltZqc9KbbwChkCeHZ+WVCfyRucZn2VUB5Yy4JKU3H1iYYgw5Y
3y5g2rgXxCpHyKnI+tJ6dt5PL19aIpB40pbbnDO7wXZW6Z/2Dpfg3pEVMpuFQC57TGBIyFOv/r2d
5wghPCf2jAYycREyhGdGblDORPD18pFoYFDTc/gjp+viWCaPv6FqH6aVU88dSMj4AVoC4LnMp/R2
udzWIxgND8omTytAt6+vZCVJYJ/CSheI2nKeIMYxFbExGAbFk/uNh0ME9/ict0mrU3yUgkZUtG7E
Tkimbu4D9Dp6Dp+o6dApvNhcvVMf6yIo88xJnJJq3GSXAUSy5xhVAAK+IqiqAmmra8Zt+PYapWIm
fnshulenDzE7EOiMdtXAB7xQYMl5ffFinTHM/ORtfVzijGidM0aqFxJ3b/GBH/TxrfE6yUSZrACK
vhwm2hNNzZOMqulsItN1pkm2Ag7/4X082k7yM7MXSOBoE3QqhDz/KaFd9XUKhYsdxCP64qnyit2e
6QDEW5rgdGEJBA9fSyINt9lsouwIMVXD1G+QHWY2dYmXi5o8O80HfYAUAYB8vngB7SrQhufxlriq
AYcrUFb6046GyL+H0XwMZCVr8zDURxX2jjA7Zu6hpfXikTpG3C0qGi3x9fa4eRuuxCHChaKH1rlx
NMEmvm2g5CLKpUBCxYj4QdkC4lEfPhUUjaLM3h9SWrqA1KdrA1vAURHT7tPbbP6ZykTJhPNoUvar
EjHK0wYCd0uFwfHgjD1+QpBAS1BBOCCkMxPbidbHGIKxv/Ep9X4K0XaIVqoMuD4HS0JiJwamadkQ
Jp/yJ+10valvL8xMVEwSNXrZueF2l3rV0z6TZPB8C1UXGM/eGKmIE5gAnYlxuvb1UPKLzLD3mo8l
HVOv4Fm58iR2NDt9Mx3QUKVJdfnxYxhHnhP98D6lH34/ufpW2TI/R6pk+4a7eBzVunwKriWVM7o6
Z0JFuwLm0RW9PXoiendyCi1PjGiSjCX3KDXCmnBYqoVAG3Hw+Yyofipx/jqhskAFl6T3RadRp9sc
TpLMJDakZJL14V4FghChpg09IY3rVXX1vALMYWTe7nSW06v521rzzJmnrNDhABWTVp6ZFIVNMfgd
1mcz1wMuF/Pqbq9lp8uySVTzQ6mkFLztOArFRNruSKGy3AXzwPSWeZTd9pFlLq7T5soxWe5PeMKq
Rp/4aNIY/CYOs8vGv4lgXckUxh0rhwpb8l0Qve6yYmNDSXpVnRHBxfprV3viDSdA0PwlO7Gkf76V
nXV1Bz43W1Bog3YPCr+3UgEjwDCPeOQ20OzyjSexnsm7vwCbTL27NPsqeoqxMMY8beiwgb+OBiSR
PzdSRM4ot+SsU0q+GwVEZ4s0ZP5ahJ8mtR8+AB0KLbncCg2FaO8tAcOmBN17flHjbBkzWqEmN7qY
LI+v6rbGoiaR4hH4vv6cB2M6s4DCqjfNW5QE19MXtdNT7TxffhcN32K26ZtA664allM+64M61YFY
4Y4hwspTeiw+pNDCPYhLLdQdC8GbjXDm6UCA2MpPGRe6B5yI6xyXY29uAUbdV1nK872vHMrAvFQe
OtiK0qFi7ou4CDXsw0K3hadRLYspCJLntuUNoPxN+UtHabBEDZDODBK7JU8j3S9795Yib4/I9TFG
ohy7VE6Oaw7qpFqRc3gWgyB4buNCxNi2kahmKoq8f3R+/WpzErfELLlBODjV6oQeC+xuUIZOA95E
BcOlKEGDLiXlEnUOo3BotEIqAYuf4KckSB6eTS7tMPqLLwz0HgN4vQoT79cOD2h7BZtEIwFTpCUb
geAi5eD29+F7gnNkdJU+sUSBjPHPFTi1IkeTqQz4OIrn2J0jVdcpHPf1k430F5EFBXK90hc0S2uo
bcKYY07UgknpfJv4G1xtWHD52oKqwAu2jaSaO2Zys40ye+gUkLmpIBFDC5r2DeoWUHqnOnHp/ay3
4tWpOkfjdskNxqBzWMe2T7lwZ7Vxv4C6hOvsy3gbSH08Xa3j/+bJX5XQ6EdKovey8Oq4eJb2RiJV
77Vc96tQ8n0iNvsZ01DSpgcfoNc4b+HzOtqOYtDnRReLjRAxbWjqf/XJJ2z8mB2a5tGO16VLHH/T
aLzRwo+sOvDjjkVAoTmeNSHhb0h19qG883z/WG5xQHGQXQWrGbxmHex7GAnYWkSY8KGEaa03XXEb
FM4TreKCck7Ur0M08hxke1Fb+t6X5Jk3ZmjM7dbDWACTkATuU28K+Ka7BKoBZP6FIO5b3GKTgzA1
20Z5tYV4EFdDoGEXdijiUAI33ODuNgJqR8znaHyd/wzUuHcokEMhQvNTvcOcbarGeItgXKdQRqVE
D224kKjapaFVQ72wusC/Fpnsm3g/ztkiIe/xPaNlg3HS5IHVabJLeBghRynsFb7LoUUNY6ssBUGT
lW+56Wj+779L3tY+6a3noSJgHYevNQswJpxdVx/Gpd4/QdNCkY+vI1dqoDfojLeYJsKIzOi6419k
icLMoJefhTn3/qjZpQ+SsPkvRZXTR5nkxTFdPdj2hV1z3QjM44K/yhv+8Y0PvoCz9Rzuip7KkEEo
59tmQkdgAHlKZccGxs13cHt51VYM1Qawqke8CPq/qUzHo/unWYfTnvATxFm5rC9OdxoiULvrHBLV
tpgAo/h+i7x6PyLRzxfzpjdl+BCs9/4YbZHgnViR3Ifp0aLv0/r3lTmdPm0MfacDLqqEhSMBKL6Z
5zVnnu1j6WOb6P50BNI9bWPXD7iRC/Dp3W6tDFZk6KjjVevEkPdLOVQJcZWpjyrXRxe/KhkGCNxE
fcF/ttwMN/9VkK7neN1si9Vjh5lbQE5E1cU+pL6P3UwPfxI2zIN4/DqVU/578M46U55DooFC6Dxz
OuAWzZJBxbJh1/jKNr9S64pexuxPyOX3BFAfTDrLzJbWw5GjYS6nU45MGRnWcBzf8Lf35CJQI3L7
H8lBInl3lgth9HMtr4pbtnNeAq7LIJQ0QFuD0+h0hp8fqEFlZjEU1IMOdHypskEsmy2u8SDDL/81
DeIe9MIi7W7UDQdI9lBCSi4rvawXio4ZVji6xpR+XHhCL1hO9uDA64cN1aQ65KXcbKbyl3FSHYNU
BJ2KaCbZVbGOBsb481ROa9IlCbXp33KS3Vnui8UH7xHV+vFDNYNgNH/zrN7e5HhSpCufLRPNaiUq
94rN68rrhxa0I/hjCzVPxNU19jKUs/nhm+eZaML+B5DLGD75k0m1ByTHKsF/75n2UGg+mHPylkOQ
60/iUh9Uthxol/L3VTGLgO8NzIk4YaxNoxdZv24d2IH6aKf50rUFc3OkF1em/vo3sheD5Mm6WIqj
lK4H+vetSr5x/O2Jkq46CFkWk0lUp6QdIQxXmfS3QBAdVj0G/nh798yYNAEMriBoSdxwo8RATu0K
6dnqVbHKubzdbDxxNAngmpx9u3KiEHPs7lAXR5xL3QdP+xWfkaEbzXtFL0Lk9xTTkAgowpJ6Z9hl
/WZgs3Ifko40ITj0QAn6Ye33XeExCPc7RLaTIhp01ZQ8OZM6uhoJJZ2zr9Xc30//LmGkgwr3NPVv
JW+7jG90wEyktwZ1v6fT7jdDflghXmRnlPO5z1KJRQWdy5WrTZktP++JOCdJim660ZTTs7adTcYK
VPh7u/D6GnEB1/QRKKCeFT5pmCY9HQmF//29tpJPAH7PoPihsoT+jh22SLJ6qKnzNJ13NLSfzTbu
9rvyPWTfsdd1Qoen/WO6agkIhtVXClZUyYH018zJL9PCsrvIC1G41pbbBGYhSzc6vMmqlkZgl+tl
nXPi69kKqxK05Uqn8l64ULA/ewXvM31KuRsCH5iMYRvQYm3d1eu80FhTbGbtkslq8kaWIRvmdWr2
mDG+B4x6KIQu15Dw2nrFgqqsnMcWXSdRlyxR9kD/6uwD5z25/sjM2ETivrs5ehjM0J5xOdmj3zsK
bHBgKDFDLu2j7fM8C4Th4MOCNJ5rGB0UhCWhjrATYAcBr5JYa68Tno/OlYwlj8UZj1gVIKucnlNS
TKQLoaA8kIzrO1zyiXQTb5YPnYOQ7/Vgh/9Y/T9cZRA+Bh8LB/zukQUAOVRpJwbjArEVjQHQwVyv
qxmh5JJMj9VLs4JVB2iZIAt+kLag92D4dPuOR9gObkTCXFvjTa1ys6l+HXSDjvpIe2z2UjGmDrS5
qHCXvUj9PUU+kqsMttJdC9wMIdnsdeUBRctrFxwTG06nKaU92/VggeAuRPxPPMWZmUZUmu3azTKK
lXd9kiUpK3ZdZIwtIDDnq6D5vTDpsgkF0X7VvoFgzVxyskV94+67BRmF8tg5bHgWbO5M4A8BoeNu
d8CmU2z0/JYvu23qacexPrcXY78xzGUGv1GSE+1McBFhDmwtFLKskPVBCbELKwMmm6JX6T4jPatb
oJMbYuip40pciFpbgykFa9LJ78K0+5NObHhK9IbTPtHB0nQekS4NlyZmrqOoyxd5Un5rWk3op6QA
zPVvXu7DiUqJmrG05tqjvFecTUzwpqBh0aIIZ+OD2CvPHsQ4nTk3oyVYHjBlxGukyJ32S1lYDyZU
Do1MuiFmBcGG5MgVah4eZakml4dw+w02Y55FjY3Rdw6e5I+r6+gD8hlu3+Cjj11/1+avMXie5BKA
FVeCIHg0tG26doaPcnrBI6RuARwsk9RBxrWnIkWVAP98K9WRgNGhOipy6RjX72Vs7g7TMOL1U4KC
QVnCjZInJHaGEkekL6LTzcfyuqq7addQOjM2wdAchthSDj533qyYS8SiUNwdx79rAGIbA5nYx9iC
cVJf8GKlaoxvUiBjW+4aWm/lGBj6MnN0y8FtAYM/eUdm9WxaOFph/OZQrnWeB6R0AKkp866/hz7e
6iWhOGkIMNjZ/WaBwCEVgxwyqoT+1sMc+ADZFYaYpm0te040wMN9R36cxAo+80CIFG+Sjd264BRi
hEBoLxpSQFb4U0TS4MJYtWIFYhG43gW/UAAWBhmPc5s50TyDFBhjSYSzRZ/7tTStOtd7tX4DqqY6
qN4aPDk9aeCpmQ+G1KBKoRiMBZhlxJvMaMxCFL0dNSeVSWs5SQ1Kdty/URwkJ2U2MBNldqUN1ORD
TtNt+1UijGPn8Is1EFgKQo68pnJ/p0FmC+Oqt7+Ch3SG9vs63HuGnMW4PDbaASC7WjQWUS5yxKaR
Bu9yeNWkZWgWrhpd0GUTNQmtxmoLjArD712LbDZGFDJUqdaLFCTwFNfOw1IFXYnOAhskxP08hXnl
r4h4GPky0JnoCSePhyHlvbKTPcm3vZHTvGkaIlA0FyNcpmWbePvdm/K4HFRiP3r6Pg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91ab7c6c-4a9c-48fc-8d43-9aa0de47c4de
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-content-crc64: 7QR5EnfyC7M=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-bb1e9af8-5250-ac92-7fa2-aa3d9f7c4bbc/test-blob-01fbd5b4-4d60-7afd-3fec-d5040981ee94?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
Content-Type: application/xml
If-Match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay00OGE5NGEwNy0yZWIwLWY3ZjEtYTQ1Yy05MDE3YWU0OWIzZjE=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 5e499f96-4c96-4104-a621-12e4117927c7
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:35 GMT
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

## Interaction 14: DELETE /devstoreaccount1/test-container-bb1e9af8-5250-ac92-7fa2-aa3d9f7c4bbc?restype=container

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
x-ms-request-id: aa773dc3-4c78-48fe-8e80-37d905d2caed
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-bce13204-4549-b5b7-a1d6-fea13c707dee?restype=container

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
etag: "0x1C6637F23443DC0"
last-modified: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7ced1eb8-b6da-48cb-9a3c-a3d3f6b7b91c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-bce13204-4549-b5b7-a1d6-fea13c707dee/test-blob-ea48e31f-da6e-77ac-73a4-d39f4d83446f

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
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1ED58E13CFB30E0"
last-modified: Thu, 12 Nov 2026 00:49:35 GMT
content-md5: kLyxKXOmkwwosnLarhESSQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 42467a02-8437-42f7-97c9-f3e3e7d2af90
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-bce13204-4549-b5b7-a1d6-fea13c707dee/test-blob-ea48e31f-da6e-77ac-73a4-d39f4d83446f?comp=block&blockid=dGVzdC1ibG9jay1hZjUxZDgxNy0yODMzLTIzMDYtZWUxMy1mY2U4OWQyYTI0ZDE%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
Content-Type: application/octet-stream
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 20235d91-6963-4e60-a040-4b7d75782fa8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-content-crc64: MLFabYqlmVY=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: HEAD /devstoreaccount1/test-container-bce13204-4549-b5b7-a1d6-fea13c707dee/test-blob-ea48e31f-da6e-77ac-73a4-d39f4d83446f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x1ED58E13CFB30E0"
content-md5: kLyxKXOmkwwosnLarhESSQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: abb926fe-d0d1-431c-8e2a-b90a96856271
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:35 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:35 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-bce13204-4549-b5b7-a1d6-fea13c707dee/test-blob-ea48e31f-da6e-77ac-73a4-d39f4d83446f?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
Content-Type: application/xml
If-None-Match: "0x1ED58E13CFB30E0"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay1hZjUxZDgxNy0yODMzLTIzMDYtZWUxMy1mY2U4OWQyYTI0ZDE=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 24c88a8f-cb67-46a1-ba23-1d7c6e470334
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:35 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-bce13204-4549-b5b7-a1d6-fea13c707dee?restype=container

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
x-ms-request-id: b5e65f92-74c7-4340-81d1-4f4c059d2d02
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

