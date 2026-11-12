## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-49d24f6c-4cc5-4792-7fe5-6891361723b3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesPageableAsync_AccessConditions
now: 2026-11-12T00:51:25.3008925+00:00

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
etag: "0x25BC2270C53B7C0"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 245e0cfd-2730-4e96-a16e-103bf5f595db
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-49d24f6c-4cc5-4792-7fe5-6891361723b3/test-blob-1713c4e1-710c-04c7-d648-5f5c0726126c

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
etag: "0x26B862EAE073400"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 50a9bfda-6add-4199-90c6-112109a6f4dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-49d24f6c-4cc5-4792-7fe5-6891361723b3/test-blob-1713c4e1-710c-04c7-d648-5f5c0726126c?comp=page

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
l4hc/J9aSmPmvdLywc19yKCZjALW0bD7iM5zfO02P1jS/PmtuyYUhnmwMU+e1EIIy5e7bpkQlcbX
YHTR5s11r315H8XUzwx5hAWIJqBhXLOLarFWetC/wmYz1lqyQ6CrOoHRJLV9NPuKQuqUh28mdQTA
RnwcHzWtul1eoPmyx0Fl3ewejzj9DTa2yzjmKjr2DWFW8fwjjxpMJGlYHpQC2HqoLqqDB+XLwjhG
ZVT8xpAiZ5KXW9ZEQU3R0mvOpe+itPO+PfuQcwV7ii7E3SrGT17ZNbYBan2kY+1csTR6/R1Io7Bg
PoiUkvSNHNCof2MjC4MN9G84oUp2GdoOM8LQAYwRfDl5ZRDVRaPCdE6s/OOJOaaxbAmtEAJm6iWu
hV8yvBpDlgMpqqVzN6/MdSz7yR32hPkbH5SDY2s3EnrrJ79DkLczaGXgX48APjVa4JrVaiEHuAFl
FpyGwDOY8pcriBDviOV0yGG4FiRqG+FfKYLRYahZ42++3nobragxR2341bUkali0YKK/TqHc+/q7
JpawxpHu0aShMaprWRq4hs63ckUrOr8qHAAGmZXN4eJ/X4YRgYHbCQQRgzitSQeHB8fTJIm1kOzX
hamR6DcO00/I7PqUpgVM3GhBGbaGfdL5fpLN+b1Zys+ZOvzXSiDMArDp5V0N82DChkggc3Y2UQjW
l2qkQdmSbiEq+mwJdZFIdBYGnJd17IsyC3N0OFZYY+n0ALK1KMHWVnY74vj0uRG21/5gL7RwYavf
cTVmHTbL0paDFXTekkxUMEYhOQmSPlJhvmBY+DQ0g58G1raMbzlAcBBicaSd10SxC/9uTiiiTDPj
BF/VctliTpHV17uVyMAM4cj5MM2uxOYbpuw0xjV2ZIqDqGraav02/yMTx/+IHEM+YW1fqBxlNUB5
uczsLodbXnMxEh9VMnbLwjCqmvzmkoqp9WXHF7tuHXMqYbExStGbt2mMVwkj6S72lObru5pDkiZB
QjghlEa3w/WrKtHFmXhfDuOTWTuBhgw20IPVg2HZ586K7weYeiMi1ZMTd75dMfpui6y2rznrwLws
68PC4UCU0kMCO6lwxpTAcIOnbQ5N2J+IZ/e0IjeUny9LbI5fX/NTf6R7WvZR/cQY9j61Q1Kt3hIj
OXpJ37ALbpt5JVkGYBGPU+5q0n6pN2kynCv431vcnY58OyV4CqDzb+xa19drEpYtJe9kQgyUegIR
FkKFEo5AnIfLiSTrF0lOdmKRTl+Rx4qUy7lreFqC58EjZ/NdblxdGTpQn4hyQg6mFsypAiyigE+3
8EfU1CQtSaJjyK9V8AgGMzQlQSgCIomrxWKO2OWUgOekpn0ViEUWIlXlD3pfUCXDos73fT4ntQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20A885B72BE0980"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-content-crc64: vm/QzIDowJA=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 787f7164-8d73-43c1-ade4-00dfcdf95ba3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-49d24f6c-4cc5-4792-7fe5-6891361723b3/test-blob-1713c4e1-710c-04c7-d648-5f5c0726126c?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
l4hc/J9aSmPmvdLywc19yKCZjALW0bD7iM5zfO02P1jS/PmtuyYUhnmwMU+e1EIIy5e7bpkQlcbX
YHTR5s11r315H8XUzwx5hAWIJqBhXLOLarFWetC/wmYz1lqyQ6CrOoHRJLV9NPuKQuqUh28mdQTA
RnwcHzWtul1eoPmyx0Fl3ewejzj9DTa2yzjmKjr2DWFW8fwjjxpMJGlYHpQC2HqoLqqDB+XLwjhG
ZVT8xpAiZ5KXW9ZEQU3R0mvOpe+itPO+PfuQcwV7ii7E3SrGT17ZNbYBan2kY+1csTR6/R1Io7Bg
PoiUkvSNHNCof2MjC4MN9G84oUp2GdoOM8LQAYwRfDl5ZRDVRaPCdE6s/OOJOaaxbAmtEAJm6iWu
hV8yvBpDlgMpqqVzN6/MdSz7yR32hPkbH5SDY2s3EnrrJ79DkLczaGXgX48APjVa4JrVaiEHuAFl
FpyGwDOY8pcriBDviOV0yGG4FiRqG+FfKYLRYahZ42++3nobragxR2341bUkali0YKK/TqHc+/q7
JpawxpHu0aShMaprWRq4hs63ckUrOr8qHAAGmZXN4eJ/X4YRgYHbCQQRgzitSQeHB8fTJIm1kOzX
hamR6DcO00/I7PqUpgVM3GhBGbaGfdL5fpLN+b1Zys+ZOvzXSiDMArDp5V0N82DChkggc3Y2UQjW
l2qkQdmSbiEq+mwJdZFIdBYGnJd17IsyC3N0OFZYY+n0ALK1KMHWVnY74vj0uRG21/5gL7RwYavf
cTVmHTbL0paDFXTekkxUMEYhOQmSPlJhvmBY+DQ0g58G1raMbzlAcBBicaSd10SxC/9uTiiiTDPj
BF/VctliTpHV17uVyMAM4cj5MM2uxOYbpuw0xjV2ZIqDqGraav02/yMTx/+IHEM+YW1fqBxlNUB5
uczsLodbXnMxEh9VMnbLwjCqmvzmkoqp9WXHF7tuHXMqYbExStGbt2mMVwkj6S72lObru5pDkiZB
QjghlEa3w/WrKtHFmXhfDuOTWTuBhgw20IPVg2HZ586K7weYeiMi1ZMTd75dMfpui6y2rznrwLws
68PC4UCU0kMCO6lwxpTAcIOnbQ5N2J+IZ/e0IjeUny9LbI5fX/NTf6R7WvZR/cQY9j61Q1Kt3hIj
OXpJ37ALbpt5JVkGYBGPU+5q0n6pN2kynCv431vcnY58OyV4CqDzb+xa19drEpYtJe9kQgyUegIR
FkKFEo5AnIfLiSTrF0lOdmKRTl+Rx4qUy7lreFqC58EjZ/NdblxdGTpQn4hyQg6mFsypAiyigE+3
8EfU1CQtSaJjyK9V8AgGMzQlQSgCIomrxWKO2OWUgOekpn0ViEUWIlXlD3pfUCXDos73fT4ntQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26B0BC78DB3B620"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-content-crc64: vm/QzIDowJA=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fff835be-b035-4424-9549-7ffe4f2253d8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-49d24f6c-4cc5-4792-7fe5-6891361723b3/test-blob-1713c4e1-710c-04c7-d648-5f5c0726126c?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
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
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
etag: "0x26B0BC78DB3B620"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3366be50-c136-43a4-8ead-943bc1962b72
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-49d24f6c-4cc5-4792-7fe5-6891361723b3?restype=container

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
x-ms-request-id: 64b4b673-ca4d-4ea4-a476-74c1e16b9ab3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-0e29bece-9ec1-bd70-ce47-c7b0498af1aa?restype=container

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
etag: "0x1CFC43B46C6CC00"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1007079a-7e6e-42da-ad8e-b7d395477008
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-0e29bece-9ec1-bd70-ce47-c7b0498af1aa/test-blob-d21e0eef-131c-4b0f-753c-ca36169d03a8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
etag: "0x1CD1382F4590200"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5d6f7eae-f912-4a86-bead-d57432f7cb9f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-0e29bece-9ec1-bd70-ce47-c7b0498af1aa/test-blob-d21e0eef-131c-4b0f-753c-ca36169d03a8?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
ffGvV182VITkKEAyl5/bObEkB24gVJi6rt2ZhNQ6pzBEHjNY25lLuLma7vPS3LTVYJGE8ZaUiClY
9KiBnc+vqYEQ7nhsg14X2E61hWWk59IpxCRDtrWZsJYKAObxyhvq6kRxwu48ad0zbBlH3wPDsw3W
V9irbPLMdj7iYYN3Jg0zy5ogMyXj7VtGEEqbUtGTR0zZG3JCPn5SpUuwWgdau0YLFBRoooDn8mp9
ZVyoMSRtTxo2ngub8Iwczo7ZM5NT7FQEjz69KqXL8SgIxNgiqXMnQwrtIxw6cCOHTNPyDr7XKngH
pKHlryR1a63ikiuz+SUasfCIZsk4yR8aNd7R2eNqMJpfGwXSQZPmeLhuWN3301Kt2FzOT8OvztuB
y3pGo5HKeGKRU94gR29doe4QyXBBImKLJAGGm+HWsEwpUHYZoNUmpOB7Zn90jZDscK3VnwVqQKgX
un+QQ9yBuqOR9vf5RAEY6SWPxrvjF5ZxmiszARBHvxDNAeVWlmEE+azb45aZ8iyrvLXg23nsNKPo
H6mwTbmSSTfmK0IcwlPDiswPBzP/16f+h0RbZ+SW4cxBbXe4U6zzSJlfssfpj/phHFCt3S1v6EcB
ssV1N+FTUEp22lTbCzcgG76aoCXfFPhJ+UuT6QOf0oUwtqHmfhG3DGJ9c7SlhRAZjMFu1UghIZ3N
Kz2Wv2ZG1gjPq1WVOp2t4pPCYqFEpHM7el1BMfw8DpQDGVPUIUz8Np2r1dq6g1IkwfK0X7/8iIbJ
WkQJBKULkpzAkiFK2cFHxisEmM6ZgfcLHW8KiK/VBpDMCscH8jH3oEM9+fEw2ugxbZiT+PC3L9lN
/uc1AQnt6ouQfc76P9P6DPiLXIcF2kKH2RsWQg6gFNvtufRJwZ45Tw5loF0aNy3Emez3K9NSRySl
rSfu1qh98GjyDIXesEpZUgx4nznlbaLuUqkiqOkHm3LQpBR3Snlm6LD0Jyqn5eihntjH2afqv0CF
AIT+Wkd/63ATDgw24giSEbeJ8UZ3RmzAgAoQP8LK5uTT8kr0Z41odTu6lNfca7zQNMjwYM75DboY
Pto9bquuSScnYu++nqopIXsKvbGU5BVOQAv52YUV2eSQ3CmzKwaPDEuwtAjMEpYdxz9T71AIg1rF
7y6gtG+hEokLLcKAdfZ1e7Fm5C8MgS102xFGwuqUh1jP7jvX7lfbDqJ/weTTnVFJ3XSfop8quG0B
K9hdW0+ed6ZqsYe6nYxZitaMjcBJoD7A/OR29OW4pDXO1sJ/frJS4Ek9aevKjz/oRhfJniqtt4qZ
nV9qKILBsQ1R7MfJ2gwkOa12CzdT9W2ljq7N7wULIR435eBT57fHfLjeeKN4HmsLpWR9NqxTRg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F19B16C28EDC50"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-content-crc64: QPwRho2hWdI=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fe3b8794-3428-4678-81c4-1dd73441f2f3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-0e29bece-9ec1-bd70-ce47-c7b0498af1aa/test-blob-d21e0eef-131c-4b0f-753c-ca36169d03a8?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
ffGvV182VITkKEAyl5/bObEkB24gVJi6rt2ZhNQ6pzBEHjNY25lLuLma7vPS3LTVYJGE8ZaUiClY
9KiBnc+vqYEQ7nhsg14X2E61hWWk59IpxCRDtrWZsJYKAObxyhvq6kRxwu48ad0zbBlH3wPDsw3W
V9irbPLMdj7iYYN3Jg0zy5ogMyXj7VtGEEqbUtGTR0zZG3JCPn5SpUuwWgdau0YLFBRoooDn8mp9
ZVyoMSRtTxo2ngub8Iwczo7ZM5NT7FQEjz69KqXL8SgIxNgiqXMnQwrtIxw6cCOHTNPyDr7XKngH
pKHlryR1a63ikiuz+SUasfCIZsk4yR8aNd7R2eNqMJpfGwXSQZPmeLhuWN3301Kt2FzOT8OvztuB
y3pGo5HKeGKRU94gR29doe4QyXBBImKLJAGGm+HWsEwpUHYZoNUmpOB7Zn90jZDscK3VnwVqQKgX
un+QQ9yBuqOR9vf5RAEY6SWPxrvjF5ZxmiszARBHvxDNAeVWlmEE+azb45aZ8iyrvLXg23nsNKPo
H6mwTbmSSTfmK0IcwlPDiswPBzP/16f+h0RbZ+SW4cxBbXe4U6zzSJlfssfpj/phHFCt3S1v6EcB
ssV1N+FTUEp22lTbCzcgG76aoCXfFPhJ+UuT6QOf0oUwtqHmfhG3DGJ9c7SlhRAZjMFu1UghIZ3N
Kz2Wv2ZG1gjPq1WVOp2t4pPCYqFEpHM7el1BMfw8DpQDGVPUIUz8Np2r1dq6g1IkwfK0X7/8iIbJ
WkQJBKULkpzAkiFK2cFHxisEmM6ZgfcLHW8KiK/VBpDMCscH8jH3oEM9+fEw2ugxbZiT+PC3L9lN
/uc1AQnt6ouQfc76P9P6DPiLXIcF2kKH2RsWQg6gFNvtufRJwZ45Tw5loF0aNy3Emez3K9NSRySl
rSfu1qh98GjyDIXesEpZUgx4nznlbaLuUqkiqOkHm3LQpBR3Snlm6LD0Jyqn5eihntjH2afqv0CF
AIT+Wkd/63ATDgw24giSEbeJ8UZ3RmzAgAoQP8LK5uTT8kr0Z41odTu6lNfca7zQNMjwYM75DboY
Pto9bquuSScnYu++nqopIXsKvbGU5BVOQAv52YUV2eSQ3CmzKwaPDEuwtAjMEpYdxz9T71AIg1rF
7y6gtG+hEokLLcKAdfZ1e7Fm5C8MgS102xFGwuqUh1jP7jvX7lfbDqJ/weTTnVFJ3XSfop8quG0B
K9hdW0+ed6ZqsYe6nYxZitaMjcBJoD7A/OR29OW4pDXO1sJ/frJS4Ek9aevKjz/oRhfJniqtt4qZ
nV9qKILBsQ1R7MfJ2gwkOa12CzdT9W2ljq7N7wULIR435eBT57fHfLjeeKN4HmsLpWR9NqxTRg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DEE6B08A552C40"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-content-crc64: QPwRho2hWdI=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5f02fc7-264c-424d-a5ba-7e6c00bd800c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-0e29bece-9ec1-bd70-ce47-c7b0498af1aa/test-blob-d21e0eef-131c-4b0f-753c-ca36169d03a8?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_11
If-Modified-Since: Wed, 11 Nov 2026 00:51:25 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
etag: "0x1DEE6B08A552C40"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c0550378-acdb-496e-97d8-02288ecff5e2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-0e29bece-9ec1-bd70-ce47-c7b0498af1aa?restype=container

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
x-ms-request-id: 61deb291-f49e-4580-aa88-cf7e8143c1bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-9ac5f1a7-f4d3-07c2-46ca-a991f42bd151?restype=container

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
etag: "0x255726F5BFFDE00"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cb7bf7a8-b7ad-41ff-8f86-4db1a57b160e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-9ac5f1a7-f4d3-07c2-46ca-a991f42bd151/test-blob-7f8eaff5-7d74-2dca-6f42-c14aa08dea71

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
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
etag: "0x1D9C829C4567D00"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 01b602b2-0216-4426-b6bc-66ad9b3b96a2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: PUT /devstoreaccount1/test-container-9ac5f1a7-f4d3-07c2-46ca-a991f42bd151/test-blob-7f8eaff5-7d74-2dca-6f42-c14aa08dea71?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
5J84YSId84j21zHYzo134NQTh4ce1NIqJ5grkDJ3ZrjgN6xV8m8v2LsGiZxL8V7hy+F2jQZjUw/N
DTmJ8mJVfnF5+JfgIe1k5K/LF0s13zY6ScVRAdiyfOOdiOQ2peVYsAor0vnGAKn0EqlWmDzDly4D
T6idBHyYxnu0Q5kILT7JcmdACQ08c0gbXe8uW+Sn2fC2M1U8uqyOkgt9Er0Q7ORqjSXVgo4hxtxg
gqaNaWuXDWmoUfrpjLi6snYBv2GLCnELxM6/0lZhlGx53DgFASmg5QRTaJrpgQBtGtAYIAd61Hc1
gaWc2DoSRryOb69/tLFNYNlcOKLWIULNUreGSXRl/wjAz3+DAw3KQCHdWxJQ7WUeyr8uHZzVX19j
z4aDjPxIKXCnvuQxylzLkveB+cYvfGRRZ3+0N+Fs63AfIDSHR7QklTGiqS6B7ABiYoulVGaZM1Ih
MSR9k/KOO9N0EqooREtCXGSVjdM10Hp/UdRWx5cKhuzhZRWQpwE/E25bDNpWOh4/YvcBBKV/7GCp
/kEdOHQ7aYu9Rt41sbViVXpl2cOgKBe2FmSfCIJHYnm056nAIdr5H6NOmfQ/CrBCn64qGRKdCNUq
ZyIPnGAJduNlgMoLojOga7ogUY8jdwuzXWnTHEhmF97Tlbq36YNCRSIQ2YnmNv17iq5YfLdGB+8W
XD/3NVmb/2jsOAx46YE23QxsEp6CzSZrWJKaDpsnjY7LoI1ESw/Jddkg+f7xAqEsIZ+q2fRRlI8Y
i9zHAPHNxap9rUj08pL8o53EYdMnelbxbuz7fLSaeQz+K78yAnToUjRTc1RYOC8MrjVWjDK78BGG
1ZIE0Uj24jM89cbTyaEp3A+e0wYBmDW9785+RO3ZQjqtrCzh44DrXZEhHEJoOeSULbAjHRwKhD1c
R+J6eJ5GYrOLJR10R/iOsnZ14HvzVLXp6RY9tiUeoifvhZydcOXy2rqP3RPGH+a3lGqmlaTBafMs
kY6HCauNbYL2hcJc8EGRggXBY3aiI8kwhSK7dw2DLhupcN9XatEPAW+R0JojW6MoFRKe/wV8im3E
V4OI0vV1clemsn9iOhczsWIGEVMvDCl+kmL65C4VLOZykhNOhi96G11Dfagjxtr7a02jdXkalUpa
CT+Teo4okIWZ76cE5SoyjPX17I+AW8yH/3ngcrdsV/3I9H3w56HOGuwjitYz9oYicOiEJKm72a5z
C3sVSB7OLZiqO/CtQqVUJtGiXdD1VAjyvQHO5zJUDRrOfdsludLOVFw+iLuVdS5DMP7XGHvdfbZz
IoocAEVlVi7V3sXJLm3/1Ah0t8xNXUjTirc0fPSf8P8lspZHsVQW2TGMv5ZpegGQ10RyacXqJQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x271C7362A56DC80"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-content-crc64: /WZ6jJ6i5t8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2ab53d27-ce53-47df-af37-93395486909c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-9ac5f1a7-f4d3-07c2-46ca-a991f42bd151/test-blob-7f8eaff5-7d74-2dca-6f42-c14aa08dea71?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
5J84YSId84j21zHYzo134NQTh4ce1NIqJ5grkDJ3ZrjgN6xV8m8v2LsGiZxL8V7hy+F2jQZjUw/N
DTmJ8mJVfnF5+JfgIe1k5K/LF0s13zY6ScVRAdiyfOOdiOQ2peVYsAor0vnGAKn0EqlWmDzDly4D
T6idBHyYxnu0Q5kILT7JcmdACQ08c0gbXe8uW+Sn2fC2M1U8uqyOkgt9Er0Q7ORqjSXVgo4hxtxg
gqaNaWuXDWmoUfrpjLi6snYBv2GLCnELxM6/0lZhlGx53DgFASmg5QRTaJrpgQBtGtAYIAd61Hc1
gaWc2DoSRryOb69/tLFNYNlcOKLWIULNUreGSXRl/wjAz3+DAw3KQCHdWxJQ7WUeyr8uHZzVX19j
z4aDjPxIKXCnvuQxylzLkveB+cYvfGRRZ3+0N+Fs63AfIDSHR7QklTGiqS6B7ABiYoulVGaZM1Ih
MSR9k/KOO9N0EqooREtCXGSVjdM10Hp/UdRWx5cKhuzhZRWQpwE/E25bDNpWOh4/YvcBBKV/7GCp
/kEdOHQ7aYu9Rt41sbViVXpl2cOgKBe2FmSfCIJHYnm056nAIdr5H6NOmfQ/CrBCn64qGRKdCNUq
ZyIPnGAJduNlgMoLojOga7ogUY8jdwuzXWnTHEhmF97Tlbq36YNCRSIQ2YnmNv17iq5YfLdGB+8W
XD/3NVmb/2jsOAx46YE23QxsEp6CzSZrWJKaDpsnjY7LoI1ESw/Jddkg+f7xAqEsIZ+q2fRRlI8Y
i9zHAPHNxap9rUj08pL8o53EYdMnelbxbuz7fLSaeQz+K78yAnToUjRTc1RYOC8MrjVWjDK78BGG
1ZIE0Uj24jM89cbTyaEp3A+e0wYBmDW9785+RO3ZQjqtrCzh44DrXZEhHEJoOeSULbAjHRwKhD1c
R+J6eJ5GYrOLJR10R/iOsnZ14HvzVLXp6RY9tiUeoifvhZydcOXy2rqP3RPGH+a3lGqmlaTBafMs
kY6HCauNbYL2hcJc8EGRggXBY3aiI8kwhSK7dw2DLhupcN9XatEPAW+R0JojW6MoFRKe/wV8im3E
V4OI0vV1clemsn9iOhczsWIGEVMvDCl+kmL65C4VLOZykhNOhi96G11Dfagjxtr7a02jdXkalUpa
CT+Teo4okIWZ76cE5SoyjPX17I+AW8yH/3ngcrdsV/3I9H3w56HOGuwjitYz9oYicOiEJKm72a5z
C3sVSB7OLZiqO/CtQqVUJtGiXdD1VAjyvQHO5zJUDRrOfdsludLOVFw+iLuVdS5DMP7XGHvdfbZz
IoocAEVlVi7V3sXJLm3/1Ah0t8xNXUjTirc0fPSf8P8lspZHsVQW2TGMv5ZpegGQ10RyacXqJQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x220388CE01CDB60"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-content-crc64: /WZ6jJ6i5t8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 83630f67-75a3-4da6-b3da-bfd440dad9f7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: GET /devstoreaccount1/test-container-9ac5f1a7-f4d3-07c2-46ca-a991f42bd151/test-blob-7f8eaff5-7d74-2dca-6f42-c14aa08dea71?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_17
If-Unmodified-Since: Fri, 13 Nov 2026 00:51:25 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
etag: "0x220388CE01CDB60"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 349198dc-ec58-4862-9a23-d82b502cb80c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 17: DELETE /devstoreaccount1/test-container-9ac5f1a7-f4d3-07c2-46ca-a991f42bd151?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a322d15f-8289-4c2b-9fe9-7b3dd8ef729d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-754942c5-308e-3ad9-36ed-c5a47bd6b822?restype=container

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
etag: "0x1F04FC904344860"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e67c65e7-7d87-4111-8420-28e2b7b329da
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-754942c5-308e-3ad9-36ed-c5a47bd6b822/test-blob-9ade5db4-9ec0-69b1-10b5-a4a4af2c873a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
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
etag: "0x24884A97E08C940"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ec522728-b87e-4de7-bb32-a35464e5d1a9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: PUT /devstoreaccount1/test-container-754942c5-308e-3ad9-36ed-c5a47bd6b822/test-blob-9ade5db4-9ec0-69b1-10b5-a4a4af2c873a?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
OozRBWjfh6lXUoioo9WFuR8ivgvnUGUnkN9k2Ys0iwpmi2nvBbK51dY1Qm4VCcY6L+qFjG18Uuon
qnWIeq4dIsZ9QhhslrRsaOg1sg33EYYZKamhr/6d6Th+yFs9MVsnGB+nl8etzpg2GCOER6DdL5ju
b1AEfHPI4Fjf7s5YLjeNDZruUHq/a1sQapbaGKKYoZjCT8EKI5us37Zuzd/K3ens9joF798eLwP0
8xHc7ci2R0w1lt91g+r+QXHDUJ57Royt7iFnkrK5pCC+FS+Kz/Hut4aTlUcKdnNPB61uW95leK2E
L/+nTrSafPG/t226dHJ/1JgX6LFFo3euGIsFSklCWZ2CBaDxR2nS+RhVSr8FlJM77oZFTZD8P4yI
+TYplTKofV3QOG/RjY0vRe+Y71i3qIP4ylvC/AsNhcUTaU4yqGTmrM1hNVsjaWH4FQigY1A00FCz
MMrW5oBSw7OpviQ//ZyLskKLVXIn1GH6yucDbCF135n9f3iZD8ZMD3Koeqo9uBdrFbENqXrejFxp
3BuZT1aRNN6LQn4k8qJ8Pkb/flq2vRHPl1dwZzYeHvMbLzOqs78bF0XMsXaZRyIPkWo03g0Csx8K
ybj/IM2nbSOLCMJv0YqG5GYU6guaNk80YNXL6UDlGXwToOoHHPZ4JERSDT5goMDgrfqm7cgUb5No
yr/33IPjpe5GWzGgfsdwm8bGSCgR1MAV6ztFPiuz/zBXn1I2gUjBbmdPGUWPPy4zNlICTSdqVvb/
4fBHnmbDklsASd91ORp+BNnAwbp7hqsMEgjZsLEJ7EhbN59XedAAjIfpjvZPvf04hElNqpU7g1tE
O4te6uGp9l2XGQF7JosIvzQzkfe1vVQKoSxou0GyILNDEz5FoqKlQJiZuKT7vF6+ROtgCPJkj302
U0i1QDob5PlNNxNMwx2SjVBfHAWwD+TNqndWUhfB34TADk5Z7wBdfdSrrYVLcYHNzXqhBXJ4hkRk
55XDxJHhjFiOjLTOOJ5QAp4xBGFegjn1iIScH9kRR4gK9QdqmbhCyiEsvOXM/5TcUAPUR4HjBWVc
zTwNRGx+fUQsxEOW5mjl7jo/MsZTKYnvwM/WPAAGJ++iDct8NYW0rj6hoDtRRmqa71hGo9OeCKSy
HYSdp0BDJZxU89idaLm1i4OHsolNnnlkPE2nwIMbAwUmyRcBFwb+XXqe/FKR/YaekRdPF1YbZX8K
OGvynGUZOe/Tdp6itHR9iVUOrqIm0j7HCC5ry+yvC2SY9t6aC8EVhcNjvofo/N2j0o4BDLbd5GUs
K5M2rW0DJGo6Cr2W432U+SnewxS33wxRyPldrf+tuxJ4bd8t3tdWX5ocrvIfDe8QbRKN/iBRdQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26A54FDC4F75E00"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-content-crc64: WxmuRCe22CE=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f02dea5b-f0ef-44b1-b37b-c8f71f4b3a1f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-754942c5-308e-3ad9-36ed-c5a47bd6b822/test-blob-9ade5db4-9ec0-69b1-10b5-a4a4af2c873a?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
OozRBWjfh6lXUoioo9WFuR8ivgvnUGUnkN9k2Ys0iwpmi2nvBbK51dY1Qm4VCcY6L+qFjG18Uuon
qnWIeq4dIsZ9QhhslrRsaOg1sg33EYYZKamhr/6d6Th+yFs9MVsnGB+nl8etzpg2GCOER6DdL5ju
b1AEfHPI4Fjf7s5YLjeNDZruUHq/a1sQapbaGKKYoZjCT8EKI5us37Zuzd/K3ens9joF798eLwP0
8xHc7ci2R0w1lt91g+r+QXHDUJ57Royt7iFnkrK5pCC+FS+Kz/Hut4aTlUcKdnNPB61uW95leK2E
L/+nTrSafPG/t226dHJ/1JgX6LFFo3euGIsFSklCWZ2CBaDxR2nS+RhVSr8FlJM77oZFTZD8P4yI
+TYplTKofV3QOG/RjY0vRe+Y71i3qIP4ylvC/AsNhcUTaU4yqGTmrM1hNVsjaWH4FQigY1A00FCz
MMrW5oBSw7OpviQ//ZyLskKLVXIn1GH6yucDbCF135n9f3iZD8ZMD3Koeqo9uBdrFbENqXrejFxp
3BuZT1aRNN6LQn4k8qJ8Pkb/flq2vRHPl1dwZzYeHvMbLzOqs78bF0XMsXaZRyIPkWo03g0Csx8K
ybj/IM2nbSOLCMJv0YqG5GYU6guaNk80YNXL6UDlGXwToOoHHPZ4JERSDT5goMDgrfqm7cgUb5No
yr/33IPjpe5GWzGgfsdwm8bGSCgR1MAV6ztFPiuz/zBXn1I2gUjBbmdPGUWPPy4zNlICTSdqVvb/
4fBHnmbDklsASd91ORp+BNnAwbp7hqsMEgjZsLEJ7EhbN59XedAAjIfpjvZPvf04hElNqpU7g1tE
O4te6uGp9l2XGQF7JosIvzQzkfe1vVQKoSxou0GyILNDEz5FoqKlQJiZuKT7vF6+ROtgCPJkj302
U0i1QDob5PlNNxNMwx2SjVBfHAWwD+TNqndWUhfB34TADk5Z7wBdfdSrrYVLcYHNzXqhBXJ4hkRk
55XDxJHhjFiOjLTOOJ5QAp4xBGFegjn1iIScH9kRR4gK9QdqmbhCyiEsvOXM/5TcUAPUR4HjBWVc
zTwNRGx+fUQsxEOW5mjl7jo/MsZTKYnvwM/WPAAGJ++iDct8NYW0rj6hoDtRRmqa71hGo9OeCKSy
HYSdp0BDJZxU89idaLm1i4OHsolNnnlkPE2nwIMbAwUmyRcBFwb+XXqe/FKR/YaekRdPF1YbZX8K
OGvynGUZOe/Tdp6itHR9iVUOrqIm0j7HCC5ry+yvC2SY9t6aC8EVhcNjvofo/N2j0o4BDLbd5GUs
K5M2rW0DJGo6Cr2W432U+SnewxS33wxRyPldrf+tuxJ4bd8t3tdWX5ocrvIfDe8QbRKN/iBRdQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x243091C05CB8CA0"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-content-crc64: WxmuRCe22CE=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 880c6d1a-3575-4b2d-900d-c9a305aca4cc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: HEAD /devstoreaccount1/test-container-754942c5-308e-3ad9-36ed-c5a47bd6b822/test-blob-9ade5db4-9ec0-69b1-10b5-a4a4af2c873a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x243091C05CB8CA0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 29a3e59f-d3bc-4b6f-bb7c-7c30a19f1969
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 23: GET /devstoreaccount1/test-container-754942c5-308e-3ad9-36ed-c5a47bd6b822/test-blob-9ade5db4-9ec0-69b1-10b5-a4a4af2c873a?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_24
If-Match: "0x243091C05CB8CA0"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
etag: "0x243091C05CB8CA0"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e0329228-fa40-4a2f-98b1-3c2791050a14
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 24: DELETE /devstoreaccount1/test-container-754942c5-308e-3ad9-36ed-c5a47bd6b822?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0e0309da-6b1a-4fbf-99d4-c98161c021b5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 25: PUT /devstoreaccount1/test-container-e5e5874c-a573-6b76-8c4f-ab1d759d661b?restype=container

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
etag: "0x1F7C2016AD8D350"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 20e7491e-058f-4559-b1a5-3be90f0dc3fb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-e5e5874c-a573-6b76-8c4f-ab1d759d661b/test-blob-79648851-309a-3119-ba0a-4d40ec20bcf1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_27
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
etag: "0x21F2E8733175C80"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 11926814-9453-40dc-b9b9-0a1f68a5223e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-e5e5874c-a573-6b76-8c4f-ab1d759d661b/test-blob-79648851-309a-3119-ba0a-4d40ec20bcf1?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
JviTpfny4rkksSGidO95cwb3O3W82NobbrMqaFg1fmuSuvd9CsEhXqWqVekPd73Kkdk69ORHNU4d
dzdFx3lg7jK2ELr4+2hE1d3PEYLxDPf2YNd++4qGS4SoYJKK3JYsSWe2WGYD0pVx9h4HdyPMK2pA
T2ei4vOoL8Q1T5vVuflGo8gbO7OQ841CDQVsf9Rh3DQnSo0vimd0DimizYL5mzwkwdNasPC3r1vZ
X9TtPLDw03NnrW5sFhlhpy2K7iULSHHIR70ABytEcJoxVSqShtJ4sfoOku7NuKq6+QnDLME2zhZj
JfTz78tHIzzTO8HuziBaETwq/LaD+48SRg0igETZ+oYTL2HdhcIux2+x+XzpyyvoaBqFDNFg4Cll
4Km+JaL4+kE625+/fYx6+zVH0QESKXriORgpU+61s083eKQYcKHMuP47rvCMKOuOCxCcGQ4oUrcv
2+yJz6dShShPiAXnYYuTehkC13qKVhAtmkfeGJlBDyXs6ZS1Q+hX6CjIPKDlpqqECJ70JXs9pIXb
XDRfdG2ODnjf+3f23jcwq+5RwRpvR/SdWRD7TOqqr0QP2ea093O7Oi0nBqsyjilnxHmM6+NqbBRA
wRtdk8KONUsz5wVQfLN7lYftR0FIa8vmlIhxHsNhpG3RczZYXqZqmdFf/qckFkfFEFZbfSTT+FVP
dv86HReI0kKYfgh9Ijbggq5w6G0kwX1Aqw1tBSdI/nvgCOinMHu51yxkjJc/R+4fevp1Yw/oK7SB
+XEKG8waT4CNnRpOOFIythFAvzXlAWMeTYot05pr99wzJjYKr7tgSj0XsarT0EKoQ63+qGx/m/gO
681B7XzmIaU9GxIbKAZV33X4zk+4Sn1IhY/sbU9ws4o++8TuHl3BMI8FlrQvjBqnqcj3h82oVaBQ
+Wjs+bRVzGiH3SxBZ8EXNp6/s7TJGPh0RcOHeSy9laYkniX01DfasMlMqK/uZUEH31Av6KHrhuBv
d7PwzlM7ykeFHcmbImFn5APqfXBJhuCCf5rbjqwEOBdFhV2D6uF2EN1naEh4bLzuxwOeAAlwJvHT
bk64YDybgOSxVZ0E4/ohdGyS4R2YCRPe7caoZjcN1V9sr3uTvbChzOdjxxYe6eMJfYyc3UTTOmU6
2nJ18hqspIA+mDR/jba88RU1NEH9vwPin+ircPgamHQVWOI9K9nMtyKV4FGvie/V3+svnQYjPRpu
k1IyATOIIwC/aTTTf8U7aH0eZ9+yMhX41ZAM6/pu8RvHzpiGmrXvDbxR8B+7AWAm8zSIBNU7vGA9
OSuifDcFUHcZC7AstM7IL1oiYUL2PdMw5fjF5u1GjBE4SWCJTJCFS5+nofWv+T5mv9V6GVseRg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x204A79E47B69C00"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-content-crc64: Olms2rYxvp0=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2e1894b3-7c25-4cc6-a77a-66317c1721f7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-e5e5874c-a573-6b76-8c4f-ab1d759d661b/test-blob-79648851-309a-3119-ba0a-4d40ec20bcf1?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
JviTpfny4rkksSGidO95cwb3O3W82NobbrMqaFg1fmuSuvd9CsEhXqWqVekPd73Kkdk69ORHNU4d
dzdFx3lg7jK2ELr4+2hE1d3PEYLxDPf2YNd++4qGS4SoYJKK3JYsSWe2WGYD0pVx9h4HdyPMK2pA
T2ei4vOoL8Q1T5vVuflGo8gbO7OQ841CDQVsf9Rh3DQnSo0vimd0DimizYL5mzwkwdNasPC3r1vZ
X9TtPLDw03NnrW5sFhlhpy2K7iULSHHIR70ABytEcJoxVSqShtJ4sfoOku7NuKq6+QnDLME2zhZj
JfTz78tHIzzTO8HuziBaETwq/LaD+48SRg0igETZ+oYTL2HdhcIux2+x+XzpyyvoaBqFDNFg4Cll
4Km+JaL4+kE625+/fYx6+zVH0QESKXriORgpU+61s083eKQYcKHMuP47rvCMKOuOCxCcGQ4oUrcv
2+yJz6dShShPiAXnYYuTehkC13qKVhAtmkfeGJlBDyXs6ZS1Q+hX6CjIPKDlpqqECJ70JXs9pIXb
XDRfdG2ODnjf+3f23jcwq+5RwRpvR/SdWRD7TOqqr0QP2ea093O7Oi0nBqsyjilnxHmM6+NqbBRA
wRtdk8KONUsz5wVQfLN7lYftR0FIa8vmlIhxHsNhpG3RczZYXqZqmdFf/qckFkfFEFZbfSTT+FVP
dv86HReI0kKYfgh9Ijbggq5w6G0kwX1Aqw1tBSdI/nvgCOinMHu51yxkjJc/R+4fevp1Yw/oK7SB
+XEKG8waT4CNnRpOOFIythFAvzXlAWMeTYot05pr99wzJjYKr7tgSj0XsarT0EKoQ63+qGx/m/gO
681B7XzmIaU9GxIbKAZV33X4zk+4Sn1IhY/sbU9ws4o++8TuHl3BMI8FlrQvjBqnqcj3h82oVaBQ
+Wjs+bRVzGiH3SxBZ8EXNp6/s7TJGPh0RcOHeSy9laYkniX01DfasMlMqK/uZUEH31Av6KHrhuBv
d7PwzlM7ykeFHcmbImFn5APqfXBJhuCCf5rbjqwEOBdFhV2D6uF2EN1naEh4bLzuxwOeAAlwJvHT
bk64YDybgOSxVZ0E4/ohdGyS4R2YCRPe7caoZjcN1V9sr3uTvbChzOdjxxYe6eMJfYyc3UTTOmU6
2nJ18hqspIA+mDR/jba88RU1NEH9vwPin+ircPgamHQVWOI9K9nMtyKV4FGvie/V3+svnQYjPRpu
k1IyATOIIwC/aTTTf8U7aH0eZ9+yMhX41ZAM6/pu8RvHzpiGmrXvDbxR8B+7AWAm8zSIBNU7vGA9
OSuifDcFUHcZC7AstM7IL1oiYUL2PdMw5fjF5u1GjBE4SWCJTJCFS5+nofWv+T5mv9V6GVseRg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FB90550A716900"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-content-crc64: Olms2rYxvp0=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4b2af66e-2e29-4714-b667-f7edcfb0ee9e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: GET /devstoreaccount1/test-container-e5e5874c-a573-6b76-8c4f-ab1d759d661b/test-blob-79648851-309a-3119-ba0a-4d40ec20bcf1?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_30
If-None-Match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
etag: "0x1FB90550A716900"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3c7d37e6-4f58-41ff-a81a-f977feeef5d7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 30: DELETE /devstoreaccount1/test-container-e5e5874c-a573-6b76-8c4f-ab1d759d661b?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
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
x-ms-request-id: 6cce97dd-749b-44a1-933f-683f83a4ec89
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-967258fc-403f-8a6a-d37f-9ef46a6d3ee2?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x233AF29814957E0"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a3ade6ff-b1a6-4558-8218-2906e641bbdf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-967258fc-403f-8a6a-d37f-9ef46a6d3ee2/test-blob-a2159dc9-9b4e-80dd-ebb9-5e2617cb73b6

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
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
etag: "0x243D6BF0A969BC0"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 844f73f6-844b-4ec7-b32e-6c02ea4c87f9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 33: PUT /devstoreaccount1/test-container-967258fc-403f-8a6a-d37f-9ef46a6d3ee2/test-blob-a2159dc9-9b4e-80dd-ebb9-5e2617cb73b6?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_34
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
GgJkMdr6Rgs1Hc52EQXU+YHysHxFe/hgevKqheFDcwcM6NpnCAwIz1YKbTHMZ2/m5WWkJBr3cZ8K
A7bnT8Ap8qnGaikqbPB06uAlOw3HlBODw6B8nk7tFHc7XQRVIICW4HuHBf1FvHl0MDo50jWRQm+j
ZIsgrVNb2VWy7w7sHspgjlqSQI4VPQcnB24Ts0JBqhqVsrv0djInKyynk8xqiBFw2EPb/gLgjSeD
+KblRyUScEX0VmwOaxgoahRibqk7vH9co9r/ZqsXtCSUcH2MQuMGlSOHdjGkYW0qspPufh99SDwm
iKNKEwqZ3KJIefubmygwW9iGs0ZNuEFt1LMXKTUEFydBZbk/vIEY7pqPXOhyjxZrviNH95X12dBi
3D5XgbNsQ2LTWTZu8J9WbsWsvVxZ+0ScrGsSvR+SS4zp3d9DwGznIxiFnjXg/M2E8IjQSRtzCOH6
u9RIWoZCQA6qhBLAE61YxZpE1FwOu7Cdjc2XwgJwdtX9SQWXn8iRQl4nNXe6xNzbd4SALzOE6/8k
qsy5q34MOg49wsqowSbRspH+54U44snwu0p970aheV0FcvT82JbfG/tpfQERMrZernyihQN57MgC
yO8zjkrHm0hso04x1dr6H8uKzmTH3omUH0DK//Nai4Ys+hCnq42xoeK5pY9oLNmip2Y37x1jOulm
n24J/ZxUEhfHBdvKU3M+2CyCDjn5LPNnJ1eNIpxoyL8mQAwep6RGZJJ4oCf+2FPz+Rbx4SuvbXN7
otVEx/B6XzwboxNmHzCHO6qngYvMaU8DmSmFd+eTdtOZowXPAZyi/UDq4jRAjNnlaaWBCOvnrjmF
QC7G9OhUiCxAzXwruDkNBINL4YYbwwxQoA1BEW7nsfTLScBu2wlXllkHAL5durBrdANonM2yan0h
dlTaEna+WByHX254nil680ssE8JN8uZd1pxrfhUmGd9DTWW0fYPjSaei1VpC8tXa7qiChVa704Nu
fTzZUtkGYEaONVHExXbHScoaqh2LGuPHkZBtpJOJiHnhRf9GCfbNnHUUs72EFigyujuLoChm42JZ
EsFJmbyyBa3Y4oB2gUDTTA6od2cmQntnOulY/uhQemKc7fY0hAO5Ya4PqzOouzn7t1Mavmv7M89G
4l7SWgbFh2gd2pNKn8gK7hW5FpdHv3+vXEaUNbz2obom7qKk5genSiPLiuGmsBiKD89WQhw4/iLf
I/3AMFKrJznZI7AmZQgNEctzfDSdCastCSXsn1+d7e9/xcIJ5xrRH2OozI1nZKrGSDBRxYLuQRpR
kiYsv4faPDXBp6BGAyqxoV3R9TwexqV7JVcuSyhskIOouFTzpV/bzpBXpr0JgEQGnyMlHEzdMw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22BE18C362366E0"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-content-crc64: xTN4HxONU+U=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0a673b79-bb4f-4a38-b30d-998c665aebcc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 34: PUT /devstoreaccount1/test-container-967258fc-403f-8a6a-d37f-9ef46a6d3ee2/test-blob-a2159dc9-9b4e-80dd-ebb9-5e2617cb73b6?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_35
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
GgJkMdr6Rgs1Hc52EQXU+YHysHxFe/hgevKqheFDcwcM6NpnCAwIz1YKbTHMZ2/m5WWkJBr3cZ8K
A7bnT8Ap8qnGaikqbPB06uAlOw3HlBODw6B8nk7tFHc7XQRVIICW4HuHBf1FvHl0MDo50jWRQm+j
ZIsgrVNb2VWy7w7sHspgjlqSQI4VPQcnB24Ts0JBqhqVsrv0djInKyynk8xqiBFw2EPb/gLgjSeD
+KblRyUScEX0VmwOaxgoahRibqk7vH9co9r/ZqsXtCSUcH2MQuMGlSOHdjGkYW0qspPufh99SDwm
iKNKEwqZ3KJIefubmygwW9iGs0ZNuEFt1LMXKTUEFydBZbk/vIEY7pqPXOhyjxZrviNH95X12dBi
3D5XgbNsQ2LTWTZu8J9WbsWsvVxZ+0ScrGsSvR+SS4zp3d9DwGznIxiFnjXg/M2E8IjQSRtzCOH6
u9RIWoZCQA6qhBLAE61YxZpE1FwOu7Cdjc2XwgJwdtX9SQWXn8iRQl4nNXe6xNzbd4SALzOE6/8k
qsy5q34MOg49wsqowSbRspH+54U44snwu0p970aheV0FcvT82JbfG/tpfQERMrZernyihQN57MgC
yO8zjkrHm0hso04x1dr6H8uKzmTH3omUH0DK//Nai4Ys+hCnq42xoeK5pY9oLNmip2Y37x1jOulm
n24J/ZxUEhfHBdvKU3M+2CyCDjn5LPNnJ1eNIpxoyL8mQAwep6RGZJJ4oCf+2FPz+Rbx4SuvbXN7
otVEx/B6XzwboxNmHzCHO6qngYvMaU8DmSmFd+eTdtOZowXPAZyi/UDq4jRAjNnlaaWBCOvnrjmF
QC7G9OhUiCxAzXwruDkNBINL4YYbwwxQoA1BEW7nsfTLScBu2wlXllkHAL5durBrdANonM2yan0h
dlTaEna+WByHX254nil680ssE8JN8uZd1pxrfhUmGd9DTWW0fYPjSaei1VpC8tXa7qiChVa704Nu
fTzZUtkGYEaONVHExXbHScoaqh2LGuPHkZBtpJOJiHnhRf9GCfbNnHUUs72EFigyujuLoChm42JZ
EsFJmbyyBa3Y4oB2gUDTTA6od2cmQntnOulY/uhQemKc7fY0hAO5Ya4PqzOouzn7t1Mavmv7M89G
4l7SWgbFh2gd2pNKn8gK7hW5FpdHv3+vXEaUNbz2obom7qKk5genSiPLiuGmsBiKD89WQhw4/iLf
I/3AMFKrJznZI7AmZQgNEctzfDSdCastCSXsn1+d7e9/xcIJ5xrRH2OozI1nZKrGSDBRxYLuQRpR
kiYsv4faPDXBp6BGAyqxoV3R9TwexqV7JVcuSyhskIOouFTzpV/bzpBXpr0JgEQGnyMlHEzdMw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E5B8F8614ED920"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-content-crc64: xTN4HxONU+U=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 01d9fee3-2ebd-411b-b048-7f5a94286545
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 35: PUT /devstoreaccount1/test-container-967258fc-403f-8a6a-d37f-9ef46a6d3ee2/test-blob-a2159dc9-9b4e-80dd-ebb9-5e2617cb73b6?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_36
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 99b081cc-ab30-0df0-5416-1c9d4bd5befc
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E5B8F8614ED920"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-lease-id: 99b081cc-ab30-0df0-5416-1c9d4bd5befc
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fea6ed5c-b994-4dc0-959a-d32ad00afc2a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 36: GET /devstoreaccount1/test-container-967258fc-403f-8a6a-d37f-9ef46a6d3ee2/test-blob-a2159dc9-9b4e-80dd-ebb9-5e2617cb73b6?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_37
x-ms-lease-id: 99b081cc-ab30-0df0-5416-1c9d4bd5befc
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
etag: "0x1E5B8F8614ED920"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d6768e13-8d6e-4145-8774-65d2e6297b61
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 37: DELETE /devstoreaccount1/test-container-967258fc-403f-8a6a-d37f-9ef46a6d3ee2?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_38
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
x-ms-request-id: 741f99ba-a322-4e36-8117-5ba1b72ae116
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

