## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-81fefc31-ca7b-f243-e1fb-7cb80870c8ef?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesDiffAsync_AccessConditionsFail
now: 2026-11-12T00:51:52.7386213+00:00

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
etag: "0x239C7647FB234C0"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 52b6f387-c26f-46d1-90ea-7c8155f35b09
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-81fefc31-ca7b-f243-e1fb-7cb80870c8ef/test-blob-c60a436a-21d8-34a9-1a1e-e3af1ddd6656

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
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
etag: "0x25DAD65F8500000"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9413779e-b7d7-43fe-b4da-fafe9a7a9154
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-81fefc31-ca7b-f243-e1fb-7cb80870c8ef/test-blob-c60a436a-21d8-34a9-1a1e-e3af1ddd6656?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
FUGCXYmZYxLN0T1MmwpUYwtIvIUXKdQPUslnXeaT1QOVJaPG7mpm0N/3+QbjXZgPyYCj1SHgPutt
cwu/MgYrOfw6t3VnjnWg4eulIC/OK/UxV5Rm8P/itOe3WHtfp57Zy78JqaUiqDoKAvM1Ox68n0cV
jdpxxEn8VwKOrzX6QTpNy1RvxIFPDq9ZXO0MrHnJ+7kzSRnEaAZ2DFKjlPkEEMG46G/JTNvFxX8q
F2hc8KuJxbN8xvchiWNN+bcvrHq2VUwrU8QJ/6/dbYSamVCeGhynGc9Fh0nJl18LfFIjlhgEc8Ic
MJ3mf8UDn1lzh+8Tr96biJOrcM0DYrxk/oNcutdrlSWNgep+wJkJQujwVQ9v+M10hw2FWAL1Gc3h
gYFCpuSBB/HJhi30HMj5oi7kEwys9QW26DLJ5j0il2gcnT4Yx5wEbk4dpXKggGpFjLbUEAbANIx8
jL2xtyG0pu7E136J4dqS4KS+jk+TFWjHhFqGTodiW2mxnDveUrcsaf6D26jsu6rcQjBhAqY86HZV
6TPHLlhnYnsV10Wes43tkSVQDzq/28ivqgtWAFnDdLPFiWmDZTumHHkt1+RlPY6idHGB7Ng7lQ1q
F4NMEGEiUmKR2SokaSvpqvPBkgTkSm18s4voQojbifNbGU23WQsXC4WB02NkfgtFl0LlegMJhs0W
0FzWOg/atlA3yE/dMVDnqYZ/Y3YJGDWAoqpG9g7vUpOAoYmvQdF1px0TLba7Z2Xx/dF8iSJXDLcn
VZdlk8BCR3W8XZDHOGi1CrxZ9ut+xTtFVfg9c8lwKZXRh+w5DxNc0eVA/gnUKcVoxn9m/hXMqI9b
Hz7HBNOsTDT79rB8e/qo/CUFPscxcCsz1KxJCSp/BN5c3vDUlMwRk7LV2TMU7EuEvQHwx2rIKq8T
lDAnYkIJfPHSH50K1GdZ86oVXJf3H+dhxUspjj10lLNAwQCb6jBvy11CQcyteemal9PAs80YG3VI
xp334O2zXovpyRJmvQh5pZA6td0as0thjvdqs+HmKKaKUiSTeOtvjuNBw7DXM9nKRg083WWYLhJR
lVL1SaqpA6Bs3Grk5i2lyib52O+biloen23TqUpB8iQSQuKZekU5l8APa1du5mDflxM+nlUitgr3
16o81VpVKulG0qNKDFDhwEEvix8Cr7kN9BE3AlPP74vYoaKb/MJlukBuKBO8lIrDXd4U8irq9Cfw
L+FIHiiVd+IYcmqtRsN+ytHflIelUF+Hc6R0u/1g7a17qszgHJsX2LAwpCIgFhYblShZCl+fS9+C
waqDILvlt4S9MZz2nq01yLzWdKw9Zl2NWSbUBuJN3F/tXlvxk7f1Su2dYuR6JPZ6JEKjyNYzRA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2422E6B29D7EC80"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-content-crc64: dxHmgxo4+eM=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2675b38b-9f9c-4996-a02c-00329ce2a755
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-81fefc31-ca7b-f243-e1fb-7cb80870c8ef/test-blob-c60a436a-21d8-34a9-1a1e-e3af1ddd6656?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:52.7950000Z
etag: "0x2422E6B29D7EC80"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5ee16f7e-276d-4a5a-91b1-fe9c69a84b69
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-81fefc31-ca7b-f243-e1fb-7cb80870c8ef/test-blob-c60a436a-21d8-34a9-1a1e-e3af1ddd6656?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
FUGCXYmZYxLN0T1MmwpUYwtIvIUXKdQPUslnXeaT1QOVJaPG7mpm0N/3+QbjXZgPyYCj1SHgPutt
cwu/MgYrOfw6t3VnjnWg4eulIC/OK/UxV5Rm8P/itOe3WHtfp57Zy78JqaUiqDoKAvM1Ox68n0cV
jdpxxEn8VwKOrzX6QTpNy1RvxIFPDq9ZXO0MrHnJ+7kzSRnEaAZ2DFKjlPkEEMG46G/JTNvFxX8q
F2hc8KuJxbN8xvchiWNN+bcvrHq2VUwrU8QJ/6/dbYSamVCeGhynGc9Fh0nJl18LfFIjlhgEc8Ic
MJ3mf8UDn1lzh+8Tr96biJOrcM0DYrxk/oNcutdrlSWNgep+wJkJQujwVQ9v+M10hw2FWAL1Gc3h
gYFCpuSBB/HJhi30HMj5oi7kEwys9QW26DLJ5j0il2gcnT4Yx5wEbk4dpXKggGpFjLbUEAbANIx8
jL2xtyG0pu7E136J4dqS4KS+jk+TFWjHhFqGTodiW2mxnDveUrcsaf6D26jsu6rcQjBhAqY86HZV
6TPHLlhnYnsV10Wes43tkSVQDzq/28ivqgtWAFnDdLPFiWmDZTumHHkt1+RlPY6idHGB7Ng7lQ1q
F4NMEGEiUmKR2SokaSvpqvPBkgTkSm18s4voQojbifNbGU23WQsXC4WB02NkfgtFl0LlegMJhs0W
0FzWOg/atlA3yE/dMVDnqYZ/Y3YJGDWAoqpG9g7vUpOAoYmvQdF1px0TLba7Z2Xx/dF8iSJXDLcn
VZdlk8BCR3W8XZDHOGi1CrxZ9ut+xTtFVfg9c8lwKZXRh+w5DxNc0eVA/gnUKcVoxn9m/hXMqI9b
Hz7HBNOsTDT79rB8e/qo/CUFPscxcCsz1KxJCSp/BN5c3vDUlMwRk7LV2TMU7EuEvQHwx2rIKq8T
lDAnYkIJfPHSH50K1GdZ86oVXJf3H+dhxUspjj10lLNAwQCb6jBvy11CQcyteemal9PAs80YG3VI
xp334O2zXovpyRJmvQh5pZA6td0as0thjvdqs+HmKKaKUiSTeOtvjuNBw7DXM9nKRg083WWYLhJR
lVL1SaqpA6Bs3Grk5i2lyib52O+biloen23TqUpB8iQSQuKZekU5l8APa1du5mDflxM+nlUitgr3
16o81VpVKulG0qNKDFDhwEEvix8Cr7kN9BE3AlPP74vYoaKb/MJlukBuKBO8lIrDXd4U8irq9Cfw
L+FIHiiVd+IYcmqtRsN+ytHflIelUF+Hc6R0u/1g7a17qszgHJsX2LAwpCIgFhYblShZCl+fS9+C
waqDILvlt4S9MZz2nq01yLzWdKw9Zl2NWSbUBuJN3F/tXlvxk7f1Su2dYuR6JPZ6JEKjyNYzRA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25A858A1F3164C0"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-content-crc64: dxHmgxo4+eM=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dc694fb9-5a21-4849-8aec-819cc919870c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-81fefc31-ca7b-f243-e1fb-7cb80870c8ef/test-blob-c60a436a-21d8-34a9-1a1e-e3af1ddd6656?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A52.7950000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_6
If-Modified-Since: Fri, 13 Nov 2026 00:51:52 GMT
x-ms-range: bytes=0-1023
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
x-ms-request-id: 075e6cfb-bae1-45e3-867e-e84d20682f60
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:52 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 6: DELETE /devstoreaccount1/test-container-81fefc31-ca7b-f243-e1fb-7cb80870c8ef?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
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
x-ms-request-id: 38e57018-3e67-4db1-9479-7a06bc619baa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-c7f54d5a-1195-a1b0-6f55-3d0940524334?restype=container

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
etag: "0x1FD926D14CA3CF0"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b425dab-b17c-4123-9a42-26433b85bb36
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-c7f54d5a-1195-a1b0-6f55-3d0940524334/test-blob-bf2ae105-04a0-1378-352f-59e2a0aa1388

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-None-Match: *
x-ms-blob-content-length: 4096
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
etag: "0x1F248163D59D5F0"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 68a45731-3217-4d19-ab00-becf3047bbc4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-c7f54d5a-1195-a1b0-6f55-3d0940524334/test-blob-bf2ae105-04a0-1378-352f-59e2a0aa1388?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
uhkApJ3wXzk8+/KPPRq2KOENnuasdKRW1OKRZrfOAcVBtE8mUp+XFILwgqQS6dUaeTEBkgwt3EZ0
qs+7XvmCbvksTYnLj9ZBdolku/EAROsNdu2FzW65FNcJsafP27aJbhOq5ZtLT+lavxyCyCFUdGbk
regL/KGLczmxwt0ucprT2k3eVV5PwSYDKw1SNku2tD1B6i7NfXFxH3FhmY0LLEyBr+3TdR8HlevB
B9GTOTzu+w2g7IdsBV3bbDXt7iiZ+P7A0IZd4z4dOlVCDHWg3uY0c56Aaj/FFaqQ9wnqGqbDKA/S
0mi2kBjOg7IyKvnnO45PuHqJGI2/+7vczOs1MyCufuRlzQt9fuKGsueNkuqwqLx7m2ErOg+BE9at
2cMsmFCRg6wVgW2C0TmYA2amMmnQKyMvuZi+gkPU5Lo0z6UeWRmX+w8+mydO+Mknkzeo2+Ft3a2f
/d+30gBoQJ2zTgGUealNDzZakZD84cDOlu8MKwjYxvL4fls63ygO1VuJmqrHkxqNW8yqE0sdoxwe
6TsRWxSV2ocPnPpOEzANS7s0c0YWBgPUf9A8LrOm2ts/G/Xt/HlG9L8juPcfP0ibnciP6C/VB+I4
PdxEWKzUaMEfDvc6IE9B7X+H804LtUCIoJHqFvKsahQTtL+dApsTTk81ADBQYXx5TfqvThSULIeb
vLgb6VHPcqTjJ2uPpOvkdKT+1rQPNz8Uccn3/Bv/fog3AUbi92X9Zo2MbToR6akOy9pwlVbTjIV5
B3eI13aI46jiV6KlAXw/AW8ng8kFAogf6TBBj+kyZHXBafDtdI8WA4mRLpEGacpdMZPmqwi7dATu
aO5FR1S+sPMt5JeMUYzgEH8/c9P3GX9m415VS7hsBfXr/gyh0bw10n6e2YUy0eAHBpuIewAx909u
32P2aGQ6wN6ioFKAPj/DCqBUWD/6MxJ+TkUd44r0uge8MvFYP2kaYxmmkDCNhsdcxXFf3J4PdKtR
dxofHdxUruZLxAxNaso3OvUmU6Ph8Mh9wR4YlN5orL1GB8dP+kY8UuJKQsK7D1qmKKGp6SEHb4dR
oly+OxkI4hdOBmID50Cv6gDBl60FwbLDcWs8vsOcP5g//VjqfhfIQl+qbQj3o0Fh+v8gRdjZS+Cq
+smtyyNTscfKw+nnxGvp+VVNW1Spy84q28TEe/m/ZrF4QIRNGnY7V7tBLeBXeTWTN0uDjPCLAC77
g+9fjzbNCl03b4Tnm97eEQSZaJ7t0mKPMUStPNnB7D9VUpaH3MeEcyKDIAqwq5ttpXrs8piPDbGN
z17yH86DdoJFkklHVjU8FPR8arJX34WoQJdf1PqnxUXl+gxpklRT/6mHaxlSJU5FsN2jE6L/NQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25A28836CF2AAE0"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-content-crc64: mq64nQrDnf8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bcc37ddd-efb2-4618-bb16-875fcd1a55a2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-c7f54d5a-1195-a1b0-6f55-3d0940524334/test-blob-bf2ae105-04a0-1378-352f-59e2a0aa1388?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:52.9170000Z
etag: "0x25A28836CF2AAE0"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2722df83-1c66-4d84-a06a-4ce44c218fd4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-c7f54d5a-1195-a1b0-6f55-3d0940524334/test-blob-bf2ae105-04a0-1378-352f-59e2a0aa1388?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
uhkApJ3wXzk8+/KPPRq2KOENnuasdKRW1OKRZrfOAcVBtE8mUp+XFILwgqQS6dUaeTEBkgwt3EZ0
qs+7XvmCbvksTYnLj9ZBdolku/EAROsNdu2FzW65FNcJsafP27aJbhOq5ZtLT+lavxyCyCFUdGbk
regL/KGLczmxwt0ucprT2k3eVV5PwSYDKw1SNku2tD1B6i7NfXFxH3FhmY0LLEyBr+3TdR8HlevB
B9GTOTzu+w2g7IdsBV3bbDXt7iiZ+P7A0IZd4z4dOlVCDHWg3uY0c56Aaj/FFaqQ9wnqGqbDKA/S
0mi2kBjOg7IyKvnnO45PuHqJGI2/+7vczOs1MyCufuRlzQt9fuKGsueNkuqwqLx7m2ErOg+BE9at
2cMsmFCRg6wVgW2C0TmYA2amMmnQKyMvuZi+gkPU5Lo0z6UeWRmX+w8+mydO+Mknkzeo2+Ft3a2f
/d+30gBoQJ2zTgGUealNDzZakZD84cDOlu8MKwjYxvL4fls63ygO1VuJmqrHkxqNW8yqE0sdoxwe
6TsRWxSV2ocPnPpOEzANS7s0c0YWBgPUf9A8LrOm2ts/G/Xt/HlG9L8juPcfP0ibnciP6C/VB+I4
PdxEWKzUaMEfDvc6IE9B7X+H804LtUCIoJHqFvKsahQTtL+dApsTTk81ADBQYXx5TfqvThSULIeb
vLgb6VHPcqTjJ2uPpOvkdKT+1rQPNz8Uccn3/Bv/fog3AUbi92X9Zo2MbToR6akOy9pwlVbTjIV5
B3eI13aI46jiV6KlAXw/AW8ng8kFAogf6TBBj+kyZHXBafDtdI8WA4mRLpEGacpdMZPmqwi7dATu
aO5FR1S+sPMt5JeMUYzgEH8/c9P3GX9m415VS7hsBfXr/gyh0bw10n6e2YUy0eAHBpuIewAx909u
32P2aGQ6wN6ioFKAPj/DCqBUWD/6MxJ+TkUd44r0uge8MvFYP2kaYxmmkDCNhsdcxXFf3J4PdKtR
dxofHdxUruZLxAxNaso3OvUmU6Ph8Mh9wR4YlN5orL1GB8dP+kY8UuJKQsK7D1qmKKGp6SEHb4dR
oly+OxkI4hdOBmID50Cv6gDBl60FwbLDcWs8vsOcP5g//VjqfhfIQl+qbQj3o0Fh+v8gRdjZS+Cq
+smtyyNTscfKw+nnxGvp+VVNW1Spy84q28TEe/m/ZrF4QIRNGnY7V7tBLeBXeTWTN0uDjPCLAC77
g+9fjzbNCl03b4Tnm97eEQSZaJ7t0mKPMUStPNnB7D9VUpaH3MeEcyKDIAqwq5ttpXrs8piPDbGN
z17yH86DdoJFkklHVjU8FPR8arJX34WoQJdf1PqnxUXl+gxpklRT/6mHaxlSJU5FsN2jE6L/NQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22216BD52368BA0"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-content-crc64: mq64nQrDnf8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dbebf450-9619-4309-8e79-fba5b2733693
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: GET /devstoreaccount1/test-container-c7f54d5a-1195-a1b0-6f55-3d0940524334/test-blob-bf2ae105-04a0-1378-352f-59e2a0aa1388?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A52.9170000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_13
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:52 GMT
x-ms-range: bytes=0-1023
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
x-ms-request-id: c7f2e492-0407-4e3e-a8a5-c2f9d1c4793a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:52 GMT
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

## Interaction 13: DELETE /devstoreaccount1/test-container-c7f54d5a-1195-a1b0-6f55-3d0940524334?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
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
x-ms-request-id: 554fd831-148a-4be0-a6cc-106c64a7da98
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 14: PUT /devstoreaccount1/test-container-de4ad8f0-2436-87a1-9dcc-04625c28d282?restype=container

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
etag: "0x1D041E679B3C490"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2a13b9e7-5a07-41bb-819b-e85bc6560e43
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-de4ad8f0-2436-87a1-9dcc-04625c28d282/test-blob-086a289f-74cf-556b-1b48-19241d03b2a2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: *
x-ms-blob-content-length: 4096
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
etag: "0x24EEB3AFFD1AC40"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: de085ce7-cd86-4564-b43e-e578e9628d67
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-de4ad8f0-2436-87a1-9dcc-04625c28d282/test-blob-086a289f-74cf-556b-1b48-19241d03b2a2?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
5sQckUh1HNsHAM1MTsPyHN1bA+o39mV8bPTD7gp9apkaYXuXDEE5KQuOAM+mHwdXVv1GwQDHau9f
nyRUsi7RiZUzMuxHWhCcIdnfqfWV1k3sa5gNN6iZU/eLOGwc5XfdvXY6cuwbD/vsqp8m6MH6ycnX
Z0aWxFLsmt/0vCKjfzxiAut+W2Nh0VucII0Ic2o2kW+jRX4wRvgkTdgNJ1PZSCpjxObVe21ldpbq
+aPF4yZ0viqzADm+MbvzWg2KU6oIw9hipa+EYBYBPc/nRkxVX2qxmGgpJkfxpZIq4iBf2yLr4jbL
Yz538F0UscNp1utunvuj2btB3p2QcAAcWX71oWKt+2MWifsrOqgLFXSEh86nu0QlvAJmqgSYOvI+
W5beHg9gu9qHWBT/eJ4TNckoC+gxdJ06z+VgR1FffU4J7d8RLfZlJMz0H2MvJkNjU3Q6cC8JDeb4
pE8pAHSJKNrF9ou/AQjSw+ccPVU6Cqmh/fTcJA0f/+D4GYmnOyRXaveIajC4o1FsaKxH7c+Rvpml
iAOArATNpfaqxuh/K4jDxdJdsZ946Fmib7xh2BIQZ1rvAbMh173yu8Q5Dd1p7D0jhCj9Mwz5LJ+p
3T1HbM3kml+NkCnVou0UavbbP9t7OYJ/PVPqEzRO9dQUd/mAq0/3VHN+21wTTuI66MgWHu3DLaO6
yC55+ocqP5pUwSvzk7+n4+tn/V4ma+5xryprONbnUElWxuIgfVnrU5zCv422RlQIbzsCXDBFlFw/
CEpdvwbDbHHinc3chmaRfKrBY6xhumnVYsmb5fQZEDKF4HUPjpOV/lIc1KmHK+jVcN+FhDCw3k3h
h1w9J4d9yIybV6bwgu4WK2VaReXATjbgxnQUk4wC1QInLQY2WNbKnwsc69RC5O7xbljLVZlnIDgm
XGASaDX/mYGkyFTn39OOkKbZo2JhnuKGIyQ0NoBovwzOEPt1uDbWHFJTnhuaCY6EPMXzjXzVxL5+
jEUQy2IAOwhHGc/YGNdvA4cPDQDG7BmVr/q7dTKP+Ew89yvxxVHwU2MSUvC/rCTtg4r1xra9t6As
extnRcXWtyCDmyGrfj41HrqdtJko1gPVzfKnmjKVfz+LxUo1iQ2dO5vPPBEDQQVMwKf7IAMGA6QY
knfSLx3u7RzhH7nz/5Wt/3j+WJrx0oztW9mLmV87hcGlHPeWygx94U71ISFMWMARTiCLCKoKJr/r
5dNDY1S8pZr3TuKeFzRrgHdL/LFqoAIZeUo+sHwXmvY3quU4On36OHuHVArdcjfrH4gyvykOgUTR
KukJfvQd37PsZ2xPMkX6UcQ140z4PAcTU5H05NvMKSigZxCT8LqGaXRW8AvLnOxCOG1l2Z742A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D6E67BDDAAC420"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-content-crc64: 1BCTFz8WiAg=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6926e4a0-7749-42f7-a39b-9b525a93b512
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-de4ad8f0-2436-87a1-9dcc-04625c28d282/test-blob-086a289f-74cf-556b-1b48-19241d03b2a2?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:53.0400000Z
etag: "0x1D6E67BDDAAC420"
last-modified: Thu, 12 Nov 2026 00:51:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 61309fca-fae1-4ad1-b0e1-f28afab3b7e9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-de4ad8f0-2436-87a1-9dcc-04625c28d282/test-blob-086a289f-74cf-556b-1b48-19241d03b2a2?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
5sQckUh1HNsHAM1MTsPyHN1bA+o39mV8bPTD7gp9apkaYXuXDEE5KQuOAM+mHwdXVv1GwQDHau9f
nyRUsi7RiZUzMuxHWhCcIdnfqfWV1k3sa5gNN6iZU/eLOGwc5XfdvXY6cuwbD/vsqp8m6MH6ycnX
Z0aWxFLsmt/0vCKjfzxiAut+W2Nh0VucII0Ic2o2kW+jRX4wRvgkTdgNJ1PZSCpjxObVe21ldpbq
+aPF4yZ0viqzADm+MbvzWg2KU6oIw9hipa+EYBYBPc/nRkxVX2qxmGgpJkfxpZIq4iBf2yLr4jbL
Yz538F0UscNp1utunvuj2btB3p2QcAAcWX71oWKt+2MWifsrOqgLFXSEh86nu0QlvAJmqgSYOvI+
W5beHg9gu9qHWBT/eJ4TNckoC+gxdJ06z+VgR1FffU4J7d8RLfZlJMz0H2MvJkNjU3Q6cC8JDeb4
pE8pAHSJKNrF9ou/AQjSw+ccPVU6Cqmh/fTcJA0f/+D4GYmnOyRXaveIajC4o1FsaKxH7c+Rvpml
iAOArATNpfaqxuh/K4jDxdJdsZ946Fmib7xh2BIQZ1rvAbMh173yu8Q5Dd1p7D0jhCj9Mwz5LJ+p
3T1HbM3kml+NkCnVou0UavbbP9t7OYJ/PVPqEzRO9dQUd/mAq0/3VHN+21wTTuI66MgWHu3DLaO6
yC55+ocqP5pUwSvzk7+n4+tn/V4ma+5xryprONbnUElWxuIgfVnrU5zCv422RlQIbzsCXDBFlFw/
CEpdvwbDbHHinc3chmaRfKrBY6xhumnVYsmb5fQZEDKF4HUPjpOV/lIc1KmHK+jVcN+FhDCw3k3h
h1w9J4d9yIybV6bwgu4WK2VaReXATjbgxnQUk4wC1QInLQY2WNbKnwsc69RC5O7xbljLVZlnIDgm
XGASaDX/mYGkyFTn39OOkKbZo2JhnuKGIyQ0NoBovwzOEPt1uDbWHFJTnhuaCY6EPMXzjXzVxL5+
jEUQy2IAOwhHGc/YGNdvA4cPDQDG7BmVr/q7dTKP+Ew89yvxxVHwU2MSUvC/rCTtg4r1xra9t6As
extnRcXWtyCDmyGrfj41HrqdtJko1gPVzfKnmjKVfz+LxUo1iQ2dO5vPPBEDQQVMwKf7IAMGA6QY
knfSLx3u7RzhH7nz/5Wt/3j+WJrx0oztW9mLmV87hcGlHPeWygx94U71ISFMWMARTiCLCKoKJr/r
5dNDY1S8pZr3TuKeFzRrgHdL/LFqoAIZeUo+sHwXmvY3quU4On36OHuHVArdcjfrH4gyvykOgUTR
KukJfvQd37PsZ2xPMkX6UcQ140z4PAcTU5H05NvMKSigZxCT8LqGaXRW8AvLnOxCOG1l2Z742A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26D645F36118D40"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-content-crc64: 1BCTFz8WiAg=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bb19bf4c-68e1-4eba-b175-92cb35759fe2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-de4ad8f0-2436-87a1-9dcc-04625c28d282/test-blob-086a289f-74cf-556b-1b48-19241d03b2a2?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A53.0400000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_20
If-Match: "garbage"
x-ms-range: bytes=0-1023
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
x-ms-request-id: a691256b-b634-4358-9bea-95d972358395
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:53 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-de4ad8f0-2436-87a1-9dcc-04625c28d282?restype=container

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
x-ms-request-id: b4550bd4-066f-480b-b739-dc002aa43a31
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-2af6e2ee-2963-d8fb-203d-43afcb356660?restype=container

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
etag: "0x1F6FFCB83C93770"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 273e7583-7c46-4e0e-abf2-6722b60f283a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-2af6e2ee-2963-d8fb-203d-43afcb356660/test-blob-d779ae0a-4ba1-48fb-b6a4-b2ac6d66508a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
If-None-Match: *
x-ms-blob-content-length: 4096
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
etag: "0x26E21B035F5CBE0"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bd4c9fe5-6a58-4119-8484-7bfc44292c16
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-2af6e2ee-2963-d8fb-203d-43afcb356660/test-blob-d779ae0a-4ba1-48fb-b6a4-b2ac6d66508a?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
p44isfqPIz95fs/Nh+0hDNEMWiokITai5q50v3dParrtuAc8E7Vme4s5XSN7LcDJgqXaYAslZoZY
f8pMG2PIKhMV4M7l5fkcpt+f6sMTJrjtqjzRdQmux1KB5JPqGmAncTMQZk3y5J2svboshnvCRFgR
XnEn97QJZxh7ZAFlMYx/eHmQAsBr+8WeJbdPgUHWvp872bvu/3l+Bv40dn+bR4surA0CMkKYpmOr
iNH8uuXWpKZiKljQkHj/EfvCNoVGA90sINUz1ItcojNYQ3aogUwYXdHZOR0yXRyVAiFG1W/dZIX0
0JkQo9AaBYcleEwBV4+vqdmzbMnA+cO5ntFqFszDet7xs7GyCLoAvzOVDeTPk6uRliyWKvi8M9fW
VwT/r++6Yf5uEKPe/KAes62VK+ze6Qol2H+gLVDmNYDa3LG1AQ9E26vmYYMIs5qLd3ZKJgfq9236
2dZvGjOuh9siBB/vaLGeUFBB+IiGHSXlFLbZnA547+VDuyg41MB3ONmo5a96nA7Fq9W3qf/kc7ux
igV91OrMqRQ6q6yJZXuPyr+v3jh1aninE/A4wEXmX0hth0q7+WPu2zuaP/BiPEZaKN8/NZSCOx+N
1cH6lOjOVExjG90x09BcwAL82yuHRdeq3pdmpim06kwqLSOi9EdSy+uk/iBoKFQP43WShmD0BZDq
ULVRaK0irzGRB6asusu6qg9A40e2QbZDV8O0IWPrNSeTt6SRAWM9gU7u1iCuYimp19xRtCJIMw7/
DhHqbo3NptF+GAImKaisAmH4x2qWlPSaCkqHmoEFSoSWkfNSUxPAITBOL0omgq4zpLHAUGujaXkc
T2NDRQtQec19kJe0Wq5NOKY5R2Sqc4ecVPXPRPoY8ih6NQOwfdsl/bV8qPIWfkoDchfFaiEUctvc
p/EVgTXSZZ5vOiSqnbvLFEquLsqVhdWrzNHjU4gGZcMo09XpD3yAqUNTp0QlWNVc+VXXZUQRRiEc
arVk7xIWaNVhgsrl4gXNLoSHQd6RhXT8hlkyLv9/Fo2zzaTHG7kwPD5uw9UKdxdPCTe/iQRDiuVA
aGm54zrV4mw8MRRgBhLLVgSfIsGf8Q9B4yTHv4yIcEK/hrNPd1kEmOFozkUC7gMk8zP/pGcjoXda
dwAVDiLftMHSoYBfe96rm4rgNiPJPvQho8tZiMvam+Q79f9Y7oq+iRmDME2DxXhUVAndQ2tUkDgM
9GpWhSz19wWbI4beU6z/IawJRg6mnt5TBDTC/Vh452XGS/ofZwPsjThH56HydgBc3SG/SkoqZVaM
A4H4M/qsIzwgFwex37qoHLjVXrc8YY4zZR83uZwbnOakk2SC9Fo+m8Nl0V74qv5nFi2RVAaeUA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F6DF277B3A2B20"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-content-crc64: pYAiB2sxq3k=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b6e2d26-15da-46d8-842a-0503bcaebc29
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-2af6e2ee-2963-d8fb-203d-43afcb356660/test-blob-d779ae0a-4ba1-48fb-b6a4-b2ac6d66508a?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:51:53.1490000Z
etag: "0x1F6DF277B3A2B20"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b80035f3-1602-4534-89dc-4f48f6b85bcb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: PUT /devstoreaccount1/test-container-2af6e2ee-2963-d8fb-203d-43afcb356660/test-blob-d779ae0a-4ba1-48fb-b6a4-b2ac6d66508a?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
p44isfqPIz95fs/Nh+0hDNEMWiokITai5q50v3dParrtuAc8E7Vme4s5XSN7LcDJgqXaYAslZoZY
f8pMG2PIKhMV4M7l5fkcpt+f6sMTJrjtqjzRdQmux1KB5JPqGmAncTMQZk3y5J2svboshnvCRFgR
XnEn97QJZxh7ZAFlMYx/eHmQAsBr+8WeJbdPgUHWvp872bvu/3l+Bv40dn+bR4surA0CMkKYpmOr
iNH8uuXWpKZiKljQkHj/EfvCNoVGA90sINUz1ItcojNYQ3aogUwYXdHZOR0yXRyVAiFG1W/dZIX0
0JkQo9AaBYcleEwBV4+vqdmzbMnA+cO5ntFqFszDet7xs7GyCLoAvzOVDeTPk6uRliyWKvi8M9fW
VwT/r++6Yf5uEKPe/KAes62VK+ze6Qol2H+gLVDmNYDa3LG1AQ9E26vmYYMIs5qLd3ZKJgfq9236
2dZvGjOuh9siBB/vaLGeUFBB+IiGHSXlFLbZnA547+VDuyg41MB3ONmo5a96nA7Fq9W3qf/kc7ux
igV91OrMqRQ6q6yJZXuPyr+v3jh1aninE/A4wEXmX0hth0q7+WPu2zuaP/BiPEZaKN8/NZSCOx+N
1cH6lOjOVExjG90x09BcwAL82yuHRdeq3pdmpim06kwqLSOi9EdSy+uk/iBoKFQP43WShmD0BZDq
ULVRaK0irzGRB6asusu6qg9A40e2QbZDV8O0IWPrNSeTt6SRAWM9gU7u1iCuYimp19xRtCJIMw7/
DhHqbo3NptF+GAImKaisAmH4x2qWlPSaCkqHmoEFSoSWkfNSUxPAITBOL0omgq4zpLHAUGujaXkc
T2NDRQtQec19kJe0Wq5NOKY5R2Sqc4ecVPXPRPoY8ih6NQOwfdsl/bV8qPIWfkoDchfFaiEUctvc
p/EVgTXSZZ5vOiSqnbvLFEquLsqVhdWrzNHjU4gGZcMo09XpD3yAqUNTp0QlWNVc+VXXZUQRRiEc
arVk7xIWaNVhgsrl4gXNLoSHQd6RhXT8hlkyLv9/Fo2zzaTHG7kwPD5uw9UKdxdPCTe/iQRDiuVA
aGm54zrV4mw8MRRgBhLLVgSfIsGf8Q9B4yTHv4yIcEK/hrNPd1kEmOFozkUC7gMk8zP/pGcjoXda
dwAVDiLftMHSoYBfe96rm4rgNiPJPvQho8tZiMvam+Q79f9Y7oq+iRmDME2DxXhUVAndQ2tUkDgM
9GpWhSz19wWbI4beU6z/IawJRg6mnt5TBDTC/Vh452XGS/ofZwPsjThH56HydgBc3SG/SkoqZVaM
A4H4M/qsIzwgFwex37qoHLjVXrc8YY4zZR83uZwbnOakk2SC9Fo+m8Nl0V74qv5nFi2RVAaeUA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x211576036B15CC0"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-content-crc64: pYAiB2sxq3k=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: efa91a52-af17-4ec5-bbc5-8d30fe722f55
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 26: HEAD /devstoreaccount1/test-container-2af6e2ee-2963-d8fb-203d-43afcb356660/test-blob-d779ae0a-4ba1-48fb-b6a4-b2ac6d66508a

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
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x211576036B15CC0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 79ad0737-2120-4f51-a4f4-3f10e4bd871f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 27: GET /devstoreaccount1/test-container-2af6e2ee-2963-d8fb-203d-43afcb356660/test-blob-d779ae0a-4ba1-48fb-b6a4-b2ac6d66508a?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A53.1490000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_28
If-None-Match: "0x211576036B15CC0"
x-ms-range: bytes=0-1023
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
x-ms-request-id: 7c2c2086-de37-4fb7-adbd-9314c600c952
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:53 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 28: DELETE /devstoreaccount1/test-container-2af6e2ee-2963-d8fb-203d-43afcb356660?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
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
x-ms-request-id: 1f0b5d13-bbea-446d-a86c-90eac5a14150
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 29: PUT /devstoreaccount1/test-container-cdc5f3a1-75db-9f69-057b-210d4c552628?restype=container

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
etag: "0x1E365473C525EF0"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 62fc5327-bd3e-430e-9308-03fa9c6f5d06
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-cdc5f3a1-75db-9f69-057b-210d4c552628/test-blob-f3c3975d-90d7-3a30-ba21-cfa26e8947df

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
If-None-Match: *
x-ms-blob-content-length: 4096
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
etag: "0x1F970DD933C6230"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 12c53fbd-f559-4e20-9727-03b0b34ff931
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-cdc5f3a1-75db-9f69-057b-210d4c552628/test-blob-f3c3975d-90d7-3a30-ba21-cfa26e8947df?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
BULCjy+MYiVaxcvi152xEfAFNLxDq3kRwooTuqXGMHwzQggKkpf50DWdmRHETWIdb76yaVWKnFnJ
scykeah/k5RPrpWUp35YDGOHpRJnTHUn9UrnFMcnqKavQOHLVFeMHgV8dZ7NiMg/WlzyA/ZGYWVW
fYNdl3/NJwbv5WadjbgL+4cM69bWWW2CqLlqNaWvaN97dNfTL4aGrk6Y3qNhoc2k5ghvOnWOgCMW
2+/FYvJgP32HIhjgOMsBhTyIPnvJIAfsxU6dQC1p7PSzvFSWwUtbOJ4l2n60xK48bbQ5BkGnTLrn
2J2jwv9PHjUkLXt3asTwLAbco0aIOAGgYdJ5L+ayC2+Zr+muuHWf1rtJj5YyxAPwSNk7y6l0XqCb
AmEs1e5OciEL3rvaQnSQPc2KP6hqbp3PiOcNdkDGJVFIErUUcgDN+x11J+ZIFQVkqo3b6R/3MZTD
XUwGQPvgRLhpkTC/fMrMvUSK9Ee3hnPhqcuz6jsxUeEgUBSzxroileIt3oPVpC7CDyzabTxNDNfZ
JJcvLVl9OEBOniu2GPaKaF9kiajvDASd8NsPV+Ok00M92qEi8miIsKZChgYCDPY2UAXc6IIu6RiT
kjx+beBdqsroeD5UZ3X33NkCrIX+muPl2QbeyOvADvCJj2ArCkLF5dw7GpS34eiQ5QupLD2TlPdZ
mJPZfuHfJ2lOy9gUy9KXPMeow4BOLfceTuLfF+Kz9vpp0XGu62b6W/MqaRYPexk5EfB16tF3Cmqc
uzD/AA+Hm9Xeqvlg6FBgrWeNJMThDtLIpQXyPQso8scHEjA2+1vjo85BMdAg2SmfFTxq6uamu6xd
NloJlV3JtrgyWdYgKbILqYD1n90BqMzcUifOvgfgYFeD2MUB2g5wd3sY7YBTf+yKXkBmsRvOXI6N
LUI2+/exUfh+nFDtCs9yhCdi6bpMidM7Q1/Geq87tHw3c6zLOnyDZpuH1OObnVRx9Cz0bHLTQaNv
+reY6tdJQ+fTtpYipkqq34IfxbTvoKYKVYWDR0gKYzIJXD/F6nzDPZH7x+e9T03iSYzvtHzuf1oQ
jZRRxvueyVJkGUoK5PQGW4cj89i+TAY4of67Gq+1GtzltV3ncneVXf2VWTUD12SY6Vn0y4uBUUCO
GSX94q6irv5uJC+XHugQjZbbKfPQNMmZIzBWwE9QY2McWVhRmHpO8qo3lbI1AMtw5D31pidNvuVc
ZL99TO6vHcHLe8SQvvUcjDdImZ8WYyJl5twRWr07z5tz9TO60Ka8h3fxaYUG3yZI2BrwBCRGRQCc
GGUSnsIEj6spHcjBYbuRjBInJPmdXwa1yYKiS8t2La8zHrhAqui07drZ3MJdhndeX3cSHiEH/g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x258541E5733C140"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-content-crc64: lhAY7CPTiJo=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8f7e4c8d-76fd-4102-856c-fd1b37602f5b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-cdc5f3a1-75db-9f69-057b-210d4c552628/test-blob-f3c3975d-90d7-3a30-ba21-cfa26e8947df?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:51:53.2810000Z
etag: "0x258541E5733C140"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9bad6fe1-ffc8-4790-b6ea-ae68cf2d66e9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 33: PUT /devstoreaccount1/test-container-cdc5f3a1-75db-9f69-057b-210d4c552628/test-blob-f3c3975d-90d7-3a30-ba21-cfa26e8947df?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_34
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
BULCjy+MYiVaxcvi152xEfAFNLxDq3kRwooTuqXGMHwzQggKkpf50DWdmRHETWIdb76yaVWKnFnJ
scykeah/k5RPrpWUp35YDGOHpRJnTHUn9UrnFMcnqKavQOHLVFeMHgV8dZ7NiMg/WlzyA/ZGYWVW
fYNdl3/NJwbv5WadjbgL+4cM69bWWW2CqLlqNaWvaN97dNfTL4aGrk6Y3qNhoc2k5ghvOnWOgCMW
2+/FYvJgP32HIhjgOMsBhTyIPnvJIAfsxU6dQC1p7PSzvFSWwUtbOJ4l2n60xK48bbQ5BkGnTLrn
2J2jwv9PHjUkLXt3asTwLAbco0aIOAGgYdJ5L+ayC2+Zr+muuHWf1rtJj5YyxAPwSNk7y6l0XqCb
AmEs1e5OciEL3rvaQnSQPc2KP6hqbp3PiOcNdkDGJVFIErUUcgDN+x11J+ZIFQVkqo3b6R/3MZTD
XUwGQPvgRLhpkTC/fMrMvUSK9Ee3hnPhqcuz6jsxUeEgUBSzxroileIt3oPVpC7CDyzabTxNDNfZ
JJcvLVl9OEBOniu2GPaKaF9kiajvDASd8NsPV+Ok00M92qEi8miIsKZChgYCDPY2UAXc6IIu6RiT
kjx+beBdqsroeD5UZ3X33NkCrIX+muPl2QbeyOvADvCJj2ArCkLF5dw7GpS34eiQ5QupLD2TlPdZ
mJPZfuHfJ2lOy9gUy9KXPMeow4BOLfceTuLfF+Kz9vpp0XGu62b6W/MqaRYPexk5EfB16tF3Cmqc
uzD/AA+Hm9Xeqvlg6FBgrWeNJMThDtLIpQXyPQso8scHEjA2+1vjo85BMdAg2SmfFTxq6uamu6xd
NloJlV3JtrgyWdYgKbILqYD1n90BqMzcUifOvgfgYFeD2MUB2g5wd3sY7YBTf+yKXkBmsRvOXI6N
LUI2+/exUfh+nFDtCs9yhCdi6bpMidM7Q1/Geq87tHw3c6zLOnyDZpuH1OObnVRx9Cz0bHLTQaNv
+reY6tdJQ+fTtpYipkqq34IfxbTvoKYKVYWDR0gKYzIJXD/F6nzDPZH7x+e9T03iSYzvtHzuf1oQ
jZRRxvueyVJkGUoK5PQGW4cj89i+TAY4of67Gq+1GtzltV3ncneVXf2VWTUD12SY6Vn0y4uBUUCO
GSX94q6irv5uJC+XHugQjZbbKfPQNMmZIzBWwE9QY2McWVhRmHpO8qo3lbI1AMtw5D31pidNvuVc
ZL99TO6vHcHLe8SQvvUcjDdImZ8WYyJl5twRWr07z5tz9TO60Ka8h3fxaYUG3yZI2BrwBCRGRQCc
GGUSnsIEj6spHcjBYbuRjBInJPmdXwa1yYKiS8t2La8zHrhAqui07drZ3MJdhndeX3cSHiEH/g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FC5AB4F63EC140"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-content-crc64: lhAY7CPTiJo=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eaf8f732-ffa8-404f-859c-c85847c16cb5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 34: PUT /devstoreaccount1/test-container-cdc5f3a1-75db-9f69-057b-210d4c552628/test-blob-f3c3975d-90d7-3a30-ba21-cfa26e8947df?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_35
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: d55c5eb9-6140-e044-b3f0-198e420350e1
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FC5AB4F63EC140"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-lease-id: d55c5eb9-6140-e044-b3f0-198e420350e1
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ac1c90dc-a16c-4c15-a40b-e59a118c6111
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 35: GET /devstoreaccount1/test-container-cdc5f3a1-75db-9f69-057b-210d4c552628/test-blob-f3c3975d-90d7-3a30-ba21-cfa26e8947df?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A53.2810000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_36
x-ms-lease-id: 1fc410dd-1747-5dc3-d4d3-3726c822efac
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseIdMismatchWithBlobOperation
x-ms-request-id: 80e31ddf-6824-4629-b693-b0a7cd0ba837
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:53 GMT
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

## Interaction 36: DELETE /devstoreaccount1/test-container-cdc5f3a1-75db-9f69-057b-210d4c552628?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_37
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
x-ms-request-id: 9368becd-ea33-412c-99ee-7f11a57e9f1d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

