## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-34f824dd-fd29-bbbc-f08f-28fc9ed2688c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_DoesNotOverwriteDefault_Stream
now: 2026-11-12T00:48:58.2847610+00:00

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
etag: "0x1CD208EE3D74160"
last-modified: Thu, 12 Nov 2026 00:48:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1f5a37c8-5e02-46fb-abf1-172530832766
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-34f824dd-fd29-bbbc-f08f-28fc9ed2688c/test-blob-fa85de72-dfa9-0678-64f5-2e911b365312

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
7YEGsvH4NoN+qqeaAoysPcbdI7rc1Fv9q/HPNM4rn7k8Fg4czLWaeacBfP843QTYSfDLPhKYNhkl
CAb/KQK0UgrtXux9j3EQQqkS2ldcxM7t9+rdX2Gno+D19sOvm1CkTCn0S34YW7p/uvtohVvByUQ4
EjIY1/KpRbsMiJitYadZbo4uZ3hP1JsvXqRmPh2EMy1/dogejHU2SwXDDNIi0VlUDxfNk2HL6T2W
6HhNQwedh1RqLeoeO+IY9xxyjMjJDYxLES8Ft6DLtI1Lh6P86Aj+JYR+t6RuNdM1tJxFWF10zdvs
AjHXl9C0n3hd07M+Gw4Uc2ZESlbo3Ntc0AIEhlww1rrIEObXJ420yhgrEWIg9pmNMOT2MIKEBCZV
e8fNrxgcLfz5dgooPUzYkH8+vMt5O9ppdlV3OaU3QwzAgazG5hr/DuRlJ3+OZfOXHaACRkdb3D/t
ZDjDpPNXwTL+aLugEqllP63mExRa2hFi3xwFNP3EZKVs2YHhPGnwDmVMkPw39wv2nQeZdMgqk4on
YcTXUYw1OQMVMzkogwJE9gWvDUoUKugRDpf2K/DdQkb3utukGbzZF1b5IsTSzhoEVX3De4VAEjbc
xkP1Pw4SOPDyMMgnn9xI1fXzGwgkPz988dVyGcfAt6ikyFN55NdI5unT351R3LageqWQTPYuuIcD
eE04nx4pMnkgg9aJz/EdqzQeUF+iKxUf0Z8hMGqxdQ/LdWuKEEbKqawkMVnfF6uzcqHCD2cnYU04
GM5/BwIObg7GvVmGk5rtVKezfvm7P7rzbr3J72WopBQeUfd4SqGqFcNKGFlSLd4G1LvAc+NTfNkT
i5lERX6oHhlEZ0KjdAkFCWk1cSdhoUDfwxup5zAxytQeZb8IZc9FovpADcWbYl+yu2p5HguxsupZ
ZYJj/zboEp1uhQ9K/aOZ8M4sIZR6Q2C79yzGt6zIbLPUrwBM4aPDV/ooLd1PaL7G4C08hZFW3iEi
pwcKIlvwpRlcdU6jTA4racmZURaDa49t/9d/jOYiftDfKjqbuTWfOIjD8/JwI5MeERzHvIwLnjt4
nCODcRkyOvZ9xCLUkK+U+hmNv3ic/dtEYHrKWsFD1Iv+IhwRG8dvkbj78l9xSYBsM8Jzfd/D3J5I
PxCeZ+A1OfCW1W2Tgt5SHi2/oAt70xf6Xib+0FasO0Z9ydy20SrYxrhv2nQT2LHkIF+xAzyTzGv5
pAm5NmiZ6pknFbgBm0wD5tlSDPii5oV1GrD3+jgK6f1wvS0gH5BP1vDa68P544QSrhxiQb9zVr2D
Qxu4oe9hHSy6kN4f4sdIAjYHyPvCfDcr5Uwbp6c+/Wdwndx0lzQAec6WPlKm8stVGT+JbI3BwQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2745261AACBD1A0"
last-modified: Thu, 12 Nov 2026 00:48:58 GMT
content-md5: 4m9e18XmkO088FecSEXGDQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0ade8b7e-25bb-4410-b258-cc5dadb0097a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-34f824dd-fd29-bbbc-f08f-28fc9ed2688c/test-blob-fa85de72-dfa9-0678-64f5-2e911b365312

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
xuSNvKNFdYR8k3evRerTawEGTywrPuSE8oHGjWi0kNmu2xWQCXhdNFgSwr8vQoVqRdSHZT6VlYgA
CckifugcxwKeAWrVQ2GJqRrUGHskVa/7XEeTLCuaGUWNjwCuOrVw9vq9kUEalQJy/rwkwH0M27Ma
JiKgiZrXA+gkSLNh225lYyKBZ8Ru4cdFIC5vdljIgLNMlBSTz21f5Y1Z9kxOESJNvl1ai3Tvq0Vb
WmhsaI2QW8cAFEda0ZO1IYE3Fep69w4LIrf6bfQ/XejOOHUE833/yJqETfzb8uzJpWnyuJZa4GNZ
YEbWle7SwbdfjJkesC4EN0xP9akSLy/KMciLTKVRc1cRqpI3KTOssYxFfGZSqvU77oBKC+u6RzAW
C2MlR3QRDRhCDQabzQ0Zo0MczLPJd4bTT14kBmhrV2JiIB3PhmoYNG5OEJ3voCFyMWeonXt9TZTd
UvgW7Aev1rWjOazwSRzZBJhEe2fp5K89sdUAw7rn5NOJ8jRxAUdnnjnoS2Z0gudLzpniOdIs825I
2ToyrhL7u1XZZlfoZwJR3NwtAZhIyC/ttfUgBKsAXP7FKSgMNe8m7I8RmxuPYmeXkVz1//LVABAL
RPkd2rep2ApZIj7ZRKftBhQINy0TXVKNiXJOC10L7ykXAPD1CRLYZ8IRNkApvUy1CPjezcnj+Oem
j1BFW82tTTIVwUS29/0BMM9qASYSZMslmANkLSJfNAgIT3nBkgv1ZOgNFPsI/hD73Jz5ePbAlCuF
H8PJSCAPtY08raiEQJ3DdZ09BFDQHZnyaVCGZrsRSLpNPHNIKxvI/V5uzFFodpz+NgNZgo/atQIp
19/QiU7RKmXtNgQqekmBdQfxYVBIivKzhy+4uMUrcodxH1Q8+HQQnKLrej+Y1Lu51w2I6VOx4Uzt
HAEeGXGfwcR8uFv1RXyS4cSuXA+yG7N0/uG3o4kzwD4HTtxy8YIwS7l7Gxtgw5GQ9QiOAoQ9OgBO
qhqQ6B47Sfgd7vagH/BBfRBWNwCXEztPJ62Bpb25yRTbJEZooGOaQNIjQ9Wb8NUXTIVz5wMAtpbf
QMBwuqQ7YyTixPqp2d2su/YtdNBmtDfYaVg4RuIR226viGCjKoYu5+CwuCvabnKoxisM0kHGeYuJ
mFBLAxxC0OmM+lF8CZFw/4zwtfsL/frlkH+3BQks6Q7UGZE14uTDbuhCTnQhK72ZnNO11cSQfZtV
ZnOdi8vgXxBDqPAAOhynLUcTya+GxGTCHWk1dxNKRJz233xxJeMcYu5j3oLNmWG2Dah8fLPrz6IO
2m1iquj8+GRTCVugNgdk9mfAI+bi9YMHf2lqzcfoChDZY0t1urcFZuUeeZAGFdehF4ZLK6y8LA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobAlreadyExists
x-ms-request-id: 1d0082ba-56e4-48d6-bed2-19a6d3d006c2
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:58 GMT
```
### Response body recorded for playback (409: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>BlobAlreadyExists</Code>
  <Message>The specified blob already exists.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-34f824dd-fd29-bbbc-f08f-28fc9ed2688c?restype=container

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
x-ms-request-id: e95ed8d7-b756-4a14-a53a-8df79684f2c9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

