## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-81e9e4a2-611b-a6c9-ab4d-4650f016da22?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).StartCopyFromUriAsync_Destination_AccessConditions
now: 2026-11-12T00:48:28.2473698+00:00

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
etag: "0x2451D239CD38260"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 074d9667-43aa-4d0a-ba62-357dcd132a66
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-81e9e4a2-611b-a6c9-ab4d-4650f016da22/test-blob-713be215-89c6-7092-973a-11b9071237a2

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
q83CiC0c5sAwEAMp3BdQQBYasCuSwG2JR+o29zw8TdSK3HgDUfeWhf4pUQpen8mT/AU61mauj+tf
OUFD5u6D88MunwCfTe8egyosaW9iKqcgovo3AnZu20yMoxe1U58Ppl1HMADJ9K8VG1M7gSZ8/A6a
I0PzTPFMwMOzEqnXaS+LHcISG/qmVq5KIuYjMlomEKYJGy9bG1lr+m89FeEGPbIjr2RjauEU88yU
qCoKKY1ojQICzk0AMAFppiGKaUHNROQ0/4P2w6bF9CdjxnIvYNDi1IjeA25kI39j+sO/iYqKx2RF
1ioKcspcPdkmnGmOOUVQqJW57kF1z9sEksjiBWqd2P8O6omm2GG9gsWVPocV1cB+buH00dgjzwdO
BeABeTduiMRpf0+7qs80+2x74JFU7r0HZJaJqAYn6xqCV9KAvAiOJrXCrFVxwsMRwNVrp+91+hci
+RWg5d+9QZM0OFP9sz9k7bnbkUFnlaHSd+gxvEQqDF26XcLz7UDVBWrBPYlwFAyVB7o1mmjVu2Rz
zm72i4VPCiv2QlV9cQB5BYvXpVgYYmLcm7WJ9XL05KJefx/S3nnlcjJdetG2GJa6vJTc/hULW2sL
GvDQxRW5AV2zH/HhpiYR8TMluuiRJYIezzjeF+aNUiOzxsSJFawdpHhzA/ik2RZtygzi5aGDevRt
sfbc2ul3JczNLeBiiNyHBxVvHSKKevYicU3Zqm2CMEvQG2O1QcqO/N0r16s1CkEvW92LE13S4zf/
ummcnXtfS/2Ukm150cZL4CBEXqNK7GYLqU+P9hzu/TcstoZh8V5iy4uuoXjUtokWQDI9jYSUtM4C
kfQrz1TgpZQ2TRtA6u/B4ZIXnErtNvLGebbpsW+ylwG4XmBqN/w3zfvknWlu1lZDe6vyfReDFFoB
ZVad9vQkg7UZh4uOV6qW389OCZiJV6JgpjbEwBrpNUkFadKlmdYGvxq0VE/KtCMBW51INArBeA20
PVC+YMKaMFJCie3Y8UX4R0p+1AJTlvESwmV8oAA/Q/HE8VyFSF5YGST9iCs1KGpYT+zAQ6MLYadf
rJ1dHo9RA0X8FADpc//rJrrdVg7F3Jr7JFETfgBNuY+0JpvB+vuVq4XlORRpb9zs1B3oLQuZmdAC
Yfo+PYRFrlpwNExjKiu/SKqJ36KGkbR0JqriZYyEG4zLvpkBV20AoIq5+TqPianyKeRgELktfNBF
yRbZYknO6xi/mGySvvE8iD8YzZd55Z0A8DyoJAvTnkHIvI1XJz1B6g4iz/A9YGryI4d6FK45y+N4
2HIMJscM7PoqyQJj5WEC1uKJVxWtw5DRtQCDWYmSj/Cp3k7KNMRGFeP2EpZojj4meD7Mr3POyw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F4F3E56A7BA6C0"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
content-md5: NokdtVOunLWa+n2OfJqHTQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aac66239-fe19-4666-8613-687aeeefb2ef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-81e9e4a2-611b-a6c9-ab4d-4650f016da22/test-blob-3241421e-b0b6-68f9-26c2-5ce14bc6df7c

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
q83CiC0c5sAwEAMp3BdQQBYasCuSwG2JR+o29zw8TdSK3HgDUfeWhf4pUQpen8mT/AU61mauj+tf
OUFD5u6D88MunwCfTe8egyosaW9iKqcgovo3AnZu20yMoxe1U58Ppl1HMADJ9K8VG1M7gSZ8/A6a
I0PzTPFMwMOzEqnXaS+LHcISG/qmVq5KIuYjMlomEKYJGy9bG1lr+m89FeEGPbIjr2RjauEU88yU
qCoKKY1ojQICzk0AMAFppiGKaUHNROQ0/4P2w6bF9CdjxnIvYNDi1IjeA25kI39j+sO/iYqKx2RF
1ioKcspcPdkmnGmOOUVQqJW57kF1z9sEksjiBWqd2P8O6omm2GG9gsWVPocV1cB+buH00dgjzwdO
BeABeTduiMRpf0+7qs80+2x74JFU7r0HZJaJqAYn6xqCV9KAvAiOJrXCrFVxwsMRwNVrp+91+hci
+RWg5d+9QZM0OFP9sz9k7bnbkUFnlaHSd+gxvEQqDF26XcLz7UDVBWrBPYlwFAyVB7o1mmjVu2Rz
zm72i4VPCiv2QlV9cQB5BYvXpVgYYmLcm7WJ9XL05KJefx/S3nnlcjJdetG2GJa6vJTc/hULW2sL
GvDQxRW5AV2zH/HhpiYR8TMluuiRJYIezzjeF+aNUiOzxsSJFawdpHhzA/ik2RZtygzi5aGDevRt
sfbc2ul3JczNLeBiiNyHBxVvHSKKevYicU3Zqm2CMEvQG2O1QcqO/N0r16s1CkEvW92LE13S4zf/
ummcnXtfS/2Ukm150cZL4CBEXqNK7GYLqU+P9hzu/TcstoZh8V5iy4uuoXjUtokWQDI9jYSUtM4C
kfQrz1TgpZQ2TRtA6u/B4ZIXnErtNvLGebbpsW+ylwG4XmBqN/w3zfvknWlu1lZDe6vyfReDFFoB
ZVad9vQkg7UZh4uOV6qW389OCZiJV6JgpjbEwBrpNUkFadKlmdYGvxq0VE/KtCMBW51INArBeA20
PVC+YMKaMFJCie3Y8UX4R0p+1AJTlvESwmV8oAA/Q/HE8VyFSF5YGST9iCs1KGpYT+zAQ6MLYadf
rJ1dHo9RA0X8FADpc//rJrrdVg7F3Jr7JFETfgBNuY+0JpvB+vuVq4XlORRpb9zs1B3oLQuZmdAC
Yfo+PYRFrlpwNExjKiu/SKqJ36KGkbR0JqriZYyEG4zLvpkBV20AoIq5+TqPianyKeRgELktfNBF
yRbZYknO6xi/mGySvvE8iD8YzZd55Z0A8DyoJAvTnkHIvI1XJz1B6g4iz/A9YGryI4d6FK45y+N4
2HIMJscM7PoqyQJj5WEC1uKJVxWtw5DRtQCDWYmSj/Cp3k7KNMRGFeP2EpZojj4meD7Mr3POyw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22D2CD657E7F1C0"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
content-md5: NokdtVOunLWa+n2OfJqHTQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d5268097-056a-44db-b0ac-5e8916488fa7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-81e9e4a2-611b-a6c9-ab4d-4650f016da22/test-blob-3241421e-b0b6-68f9-26c2-5ce14bc6df7c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-81e9e4a2-611b-a6c9-ab4d-4650f016da22/test-blob-713be215-89c6-7092-973a-11b9071237a2
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x230F300EED1CF60"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7338b5aa-5735-4f92-b8f1-2d691912f893
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-copy-id: 1bd1d196-fec5-45cc-a3ac-d66f9d6208ad
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-81e9e4a2-611b-a6c9-ab4d-4650f016da22?restype=container

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
x-ms-request-id: 7167c9d2-7cb6-4711-a972-d1303fa38aac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-e83813db-52f9-8c7f-5085-7b5c57d43714?restype=container

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
etag: "0x2426AC98238F560"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91f740c6-ff53-4373-b515-dea47af5015b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-e83813db-52f9-8c7f-5085-7b5c57d43714/test-blob-a5554de6-14e2-5aa2-0c36-ced56721be61

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
QJutbTGcFGTo0koELLEl0FqU3vPZTqnLwrXhMDWdEVGKSKCvGXJKP/7UACYIel+eYKoBwvZDOvLy
4ap8uuQvS8H5euQRdrfoSZ71BU6Dw0dVQ9CLm05aRw6tvDjHzoUZpLVkDwB7jeryGXlXTTSkbx5i
JncUo69znjLWY7l/IHsZ22CZHrRH2rXlmILUAvnZCU0ZZKgOBQEF8HHNpSowc/j+PnHTClBqG0vB
Lgosnps5/FlrZbzTC9Zfky1CeTWLtCWK1sSIBf78r0hcTNf22VLVlKjRxQ48KzObdHciJ6IWNnnl
ocjWsPdabrVzdr7+aLnbbOSMuu8XTquR7JGH2oimRRVdEDiJ/+OxdlZYyLR0nAu9Rrq+iXyJzlMc
RcRm0pQszTCooFiBUW0A20OZvoX2HFCFyZPO57yZ1ELlbLkfS6PBK/uDy/uzPPVMvq058BDNJilz
4AkBXuV0D8wVnOW04JCf15KJc1BU0Y2egSkOX+QyF0aPq2qawM0WD7sunZ8QmN0dmRh9Q7PYHw57
Y928Za/o44SeJDQmBRbFc2OVJTTtjuhL8cbLtNOTt4xbHl3vWqkLRrkacXOp95MCuNBPQ/najdT0
cHTpHS+xCm2nyua51hi5id960hx1ovoyyfwCQ3OTgZGI+uo1IimKaWYGASytSOG3lboZX7q4f816
tlMyrsf5FElVMNsuhGa18Gm1b6HNhYAaS625eSLW0Hocu2zVV7qfDO3jVxgGiBFUY25RAxArrDHT
GGMZQJomf2BgEsj64JmuFWO06S1nE8KcZRWzhMxq8A47Aj5XhstTvNi4pXZJWoPVo+2td8IDawSh
fduEc/qT9iG5vt1aVo6XYC1Ur25LUgqS3uHfvHlMN5Y6tgnvz0neJK9Vj5ulekxeFRaVr7yWVSrQ
8ZUYtDmobYdHIKCFqJHjdoq+9sNv7GOVgKditojao2DfHt2zxXB2rSETXlqr2W2EsTkx2F9nYQUx
gzOSRbf/bXw/pYm0MLAZR0mhW44J6aY53QRPqMsBeL3YgUI85GdqFPHdbDTk0IGIF5AVxgV2KJmN
WGeyr8SxPS3L3K5u3GPhNkedLH1yVQ2DxpA67LK3YVmor4v/t2QsKy4GGPPTGjotNI++2fwcGwNZ
L+kzdlF7FHpUxS3X4X7icABPazwar6xVDbci+YhdjJSIpYd7+bTciwR4flQNVlIQ3Gj7zLDGP4A8
3WmZWBry9jmZTjv3ZndLct84oTFXSLdlEh0fYr/jwWYHPhtLQjPphYcbcwcWGXXxr1rQjp1O5JWy
NEX905R5tY3V7yhbAC+sThupPNWvTvioLbJkEzLIuVmGmQ7t7LLyob15QSpNla8rJECBpajAAg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CA9D88873C78B0"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
content-md5: NELbAnJyeFADYq3HdK6l2w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d96a454a-8bc3-4f8b-9e32-ecfcf39208af
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-e83813db-52f9-8c7f-5085-7b5c57d43714/test-blob-179bb669-0c35-5ace-9802-39eef24613b1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
QJutbTGcFGTo0koELLEl0FqU3vPZTqnLwrXhMDWdEVGKSKCvGXJKP/7UACYIel+eYKoBwvZDOvLy
4ap8uuQvS8H5euQRdrfoSZ71BU6Dw0dVQ9CLm05aRw6tvDjHzoUZpLVkDwB7jeryGXlXTTSkbx5i
JncUo69znjLWY7l/IHsZ22CZHrRH2rXlmILUAvnZCU0ZZKgOBQEF8HHNpSowc/j+PnHTClBqG0vB
Lgosnps5/FlrZbzTC9Zfky1CeTWLtCWK1sSIBf78r0hcTNf22VLVlKjRxQ48KzObdHciJ6IWNnnl
ocjWsPdabrVzdr7+aLnbbOSMuu8XTquR7JGH2oimRRVdEDiJ/+OxdlZYyLR0nAu9Rrq+iXyJzlMc
RcRm0pQszTCooFiBUW0A20OZvoX2HFCFyZPO57yZ1ELlbLkfS6PBK/uDy/uzPPVMvq058BDNJilz
4AkBXuV0D8wVnOW04JCf15KJc1BU0Y2egSkOX+QyF0aPq2qawM0WD7sunZ8QmN0dmRh9Q7PYHw57
Y928Za/o44SeJDQmBRbFc2OVJTTtjuhL8cbLtNOTt4xbHl3vWqkLRrkacXOp95MCuNBPQ/najdT0
cHTpHS+xCm2nyua51hi5id960hx1ovoyyfwCQ3OTgZGI+uo1IimKaWYGASytSOG3lboZX7q4f816
tlMyrsf5FElVMNsuhGa18Gm1b6HNhYAaS625eSLW0Hocu2zVV7qfDO3jVxgGiBFUY25RAxArrDHT
GGMZQJomf2BgEsj64JmuFWO06S1nE8KcZRWzhMxq8A47Aj5XhstTvNi4pXZJWoPVo+2td8IDawSh
fduEc/qT9iG5vt1aVo6XYC1Ur25LUgqS3uHfvHlMN5Y6tgnvz0neJK9Vj5ulekxeFRaVr7yWVSrQ
8ZUYtDmobYdHIKCFqJHjdoq+9sNv7GOVgKditojao2DfHt2zxXB2rSETXlqr2W2EsTkx2F9nYQUx
gzOSRbf/bXw/pYm0MLAZR0mhW44J6aY53QRPqMsBeL3YgUI85GdqFPHdbDTk0IGIF5AVxgV2KJmN
WGeyr8SxPS3L3K5u3GPhNkedLH1yVQ2DxpA67LK3YVmor4v/t2QsKy4GGPPTGjotNI++2fwcGwNZ
L+kzdlF7FHpUxS3X4X7icABPazwar6xVDbci+YhdjJSIpYd7+bTciwR4flQNVlIQ3Gj7zLDGP4A8
3WmZWBry9jmZTjv3ZndLct84oTFXSLdlEh0fYr/jwWYHPhtLQjPphYcbcwcWGXXxr1rQjp1O5JWy
NEX905R5tY3V7yhbAC+sThupPNWvTvioLbJkEzLIuVmGmQ7t7LLyob15QSpNla8rJECBpajAAg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2355436AE72D500"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
content-md5: NELbAnJyeFADYq3HdK6l2w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 301876d9-bf29-40f0-803c-d8e1d946a00e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-e83813db-52f9-8c7f-5085-7b5c57d43714/test-blob-179bb669-0c35-5ace-9802-39eef24613b1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Modified-Since: Wed, 11 Nov 2026 00:48:28 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-e83813db-52f9-8c7f-5085-7b5c57d43714/test-blob-a5554de6-14e2-5aa2-0c36-ced56721be61
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x247BA464D4065C0"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c6cd5058-d54d-46ec-93bf-4612ac9baf2b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-copy-id: 7c4f2792-a6db-487b-87b5-33a1a395c449
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 9: DELETE /devstoreaccount1/test-container-e83813db-52f9-8c7f-5085-7b5c57d43714?restype=container

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
x-ms-request-id: 533e0134-230d-4066-bddd-c8aff9aeec54
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-a02796c6-0d97-8c10-1b1f-34f37ec0480a?restype=container

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
etag: "0x21F69448AA018C0"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6e64576b-c331-44f1-8fb5-277501bf133c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-a02796c6-0d97-8c10-1b1f-34f37ec0480a/test-blob-59e7c551-856d-0347-7d14-dcc6dee4f58d

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
Zd4Y7g2ozNp++g3g27NoxiIcD9D5Hspcpg77Ftfb29e5L4gTLiWkHclNIpz/L7Fntm7RYrB4EEcT
vEf+rbYCoh41JqwqVZf8d/IGq/stXHddlF9oCXkmQR5B/3LepXATSn9+yQkEPWHX1Oq+cWVL5l/Q
oRlWmpmkD+SN6VUlHtKB8mB8r5NtWFf+kTSOZ8+59RkSDgRXvbDm2bokd1MLsbYYPH8EzzbMYknB
VwhkFqcV1PM8EhDOKjSwltXYSeED8+B9dipQtCbiRqu6lWWogcMTD6Jgzp6mShJKVDhg8xlovmQo
5p98xCDMWctkE5XOCBUSxDk+oyRB1ywYBmDuglORUtYBf5ojl0uCk3TSQTZ8e0wjTi7fKRtA5g9z
Y72/3td40sC/zYh67i3uvA+vb5X1nIsUyzQksim6wZmLsDONwrWdWW51va3DqF8B8G0MkHd5fccx
qxOjUyCXBAvv7z75YPlaEhUmgN7dUCLUI8G8rjEhETNsWxeh+QZO3rih1LkhB49zsX5hU/3oU1vx
zi9f21Xazd0KjQXiuBgP2KEmPHtosxwxSP2ywL41hAi7sCvW7wJjxgfbFnmKkPhlUntbwhffiBsT
LZJYJw0f1Qn9JgftOOifwnV0jZ2iprcETW1C2sHw2ygQwsFvCp75u0FwjWnweBmSu/+ia/p9cIfb
VNqg3PpHDEvf3HYnL7jWetFbMRhNE9RTsB7BTnAtklI6lLbEWd5GKYEeEZujaoxHy/ApIj9ujUAF
TCzchb7bsUok7ZsBEiHyFQiXLwE4sEWSeoJ/BHASywd1vg2yaqPCQ2BRf33wRbnPNgw2110+zZvm
SQs7W6zaESGUjFMTQKpl1Oyh5zHIoTXJsM5j3PSpNvFxzCCYh+ezd25cXLllu/Zh0AJxneVqHafW
cqvedjQs6lVionOKzU0E7nDCa0V7Y/XYAQvyN5kLB654whQ71AA5L3FjAxmC1wO1ba50p7JiWg62
BnUoOrO8VprFEQs4yBlwiDvTGGDbVSkIPMnrll/8FmgGhc6LEfW+p6x+vcb4faSUBB52j0Gu2rBL
IP3p0L86yfujMkNL5HdGFXCzXZhjD78lVpFBhoYmV6odP/H41NbsQ/PKVUthSR+nMHnR+n0Y5xA+
xHot+UJ0fdqYLqSGTkCZxhmkmLpzxA1ymlYNVFwtBVjguRBcvkqwVthwyBt6IOE4NzRjc09VygBt
u1/sZyh+ayhMpZQwPQfO80LiA/vy93l01B0oyZEJiu8Q7gPrxO+v8l3yLntNB/kslX8Nc8cEe8Tm
eJILVaGXQxqlIE8E4y9SMhCe/8j+Jswj/DQR/BcnC3M+BUtdpJ27Wupgp+eqJ7FQukG2Znv76A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FD2B97C5C322F0"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
content-md5: PmmCfmQjYyfgGdbcQ0mPdA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72b2bfcf-5972-4961-be67-8fcd88593e39
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-a02796c6-0d97-8c10-1b1f-34f37ec0480a/test-blob-dea4e273-7f9d-79e5-d583-c141d571a5f7

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Zd4Y7g2ozNp++g3g27NoxiIcD9D5Hspcpg77Ftfb29e5L4gTLiWkHclNIpz/L7Fntm7RYrB4EEcT
vEf+rbYCoh41JqwqVZf8d/IGq/stXHddlF9oCXkmQR5B/3LepXATSn9+yQkEPWHX1Oq+cWVL5l/Q
oRlWmpmkD+SN6VUlHtKB8mB8r5NtWFf+kTSOZ8+59RkSDgRXvbDm2bokd1MLsbYYPH8EzzbMYknB
VwhkFqcV1PM8EhDOKjSwltXYSeED8+B9dipQtCbiRqu6lWWogcMTD6Jgzp6mShJKVDhg8xlovmQo
5p98xCDMWctkE5XOCBUSxDk+oyRB1ywYBmDuglORUtYBf5ojl0uCk3TSQTZ8e0wjTi7fKRtA5g9z
Y72/3td40sC/zYh67i3uvA+vb5X1nIsUyzQksim6wZmLsDONwrWdWW51va3DqF8B8G0MkHd5fccx
qxOjUyCXBAvv7z75YPlaEhUmgN7dUCLUI8G8rjEhETNsWxeh+QZO3rih1LkhB49zsX5hU/3oU1vx
zi9f21Xazd0KjQXiuBgP2KEmPHtosxwxSP2ywL41hAi7sCvW7wJjxgfbFnmKkPhlUntbwhffiBsT
LZJYJw0f1Qn9JgftOOifwnV0jZ2iprcETW1C2sHw2ygQwsFvCp75u0FwjWnweBmSu/+ia/p9cIfb
VNqg3PpHDEvf3HYnL7jWetFbMRhNE9RTsB7BTnAtklI6lLbEWd5GKYEeEZujaoxHy/ApIj9ujUAF
TCzchb7bsUok7ZsBEiHyFQiXLwE4sEWSeoJ/BHASywd1vg2yaqPCQ2BRf33wRbnPNgw2110+zZvm
SQs7W6zaESGUjFMTQKpl1Oyh5zHIoTXJsM5j3PSpNvFxzCCYh+ezd25cXLllu/Zh0AJxneVqHafW
cqvedjQs6lVionOKzU0E7nDCa0V7Y/XYAQvyN5kLB654whQ71AA5L3FjAxmC1wO1ba50p7JiWg62
BnUoOrO8VprFEQs4yBlwiDvTGGDbVSkIPMnrll/8FmgGhc6LEfW+p6x+vcb4faSUBB52j0Gu2rBL
IP3p0L86yfujMkNL5HdGFXCzXZhjD78lVpFBhoYmV6odP/H41NbsQ/PKVUthSR+nMHnR+n0Y5xA+
xHot+UJ0fdqYLqSGTkCZxhmkmLpzxA1ymlYNVFwtBVjguRBcvkqwVthwyBt6IOE4NzRjc09VygBt
u1/sZyh+ayhMpZQwPQfO80LiA/vy93l01B0oyZEJiu8Q7gPrxO+v8l3yLntNB/kslX8Nc8cEe8Tm
eJILVaGXQxqlIE8E4y9SMhCe/8j+Jswj/DQR/BcnC3M+BUtdpJ27Wupgp+eqJ7FQukG2Znv76A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x278B1F4EE07A600"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
content-md5: PmmCfmQjYyfgGdbcQ0mPdA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7ffea741-a98a-4a85-9b8b-afeee9f6f667
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-a02796c6-0d97-8c10-1b1f-34f37ec0480a/test-blob-dea4e273-7f9d-79e5-d583-c141d571a5f7

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Unmodified-Since: Fri, 13 Nov 2026 00:48:28 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-a02796c6-0d97-8c10-1b1f-34f37ec0480a/test-blob-59e7c551-856d-0347-7d14-dcc6dee4f58d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2384151A6B52280"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 34d16e2e-bc3b-46e3-a7c5-b908a23e8d26
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-copy-id: 47567efa-31d4-4222-9c8f-6d6eb40526f5
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 14: DELETE /devstoreaccount1/test-container-a02796c6-0d97-8c10-1b1f-34f37ec0480a?restype=container

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
x-ms-request-id: 18500d95-5339-4e40-810b-695e67ab0a47
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-97f91c43-43bd-d54e-a35d-2ad2cd61d26c?restype=container

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
etag: "0x231BF02257C19A0"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c51d9ed2-a8f0-4409-ba79-f21fdecf6940
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-97f91c43-43bd-d54e-a35d-2ad2cd61d26c/test-blob-c73f485b-d174-f54c-6bd6-e81e70407bb3

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
xbRDg9YdStLgboTqxAYtDG/kg8HqXdAvlM86QFQSq3OwVXshLSIgJdImt06/YxCdLx1j6d4QgWfj
E+4H4gp+zcMQOW6KDN5NxF3vw6WBbzC+nRA2r8KVn9MTPRozGUPHqOqLrymiEyI/FSSAIb3CYqO9
SET6Rx0Bepqads/EGaoaJxq79sAGHIrt95qdFH4WUdp2ddD+zWHMijSPB51Te/t5ZvmiBmvjtyy6
DE+DY2YchCT0TaTaG1q57myLdxXtmnyeI62Ec0tvk76kRMERSSbNc4J4Xi5Xn0qf6Rf/V0AWzHHT
5EC4mBDYhbnmNdeYp6RFvgOTdDtNRoNj5Io0bzx+jXhPPWTmFdtxoNl0cWlzBkFyuZk8g1c2hp68
VbOGpBV8Z6dfSWo/X6goIdRh2dUZ8N1JwbWjQgogGLfGKcAn6/zD9wnCE73XMlrwE2KD1K3JomXV
PeNf2SWdPzCyeTboADbYneHLV9wgco5bsi6onEMK/YZbUa0YZB7jJNSMJLkjCBIrqzbL/UuItctU
BCb39KLsqHuvjK6IvznD5zIHk03VN6obfPENPgA70pzixF/37DAyn3s9dHtjouz9CBUYgCF9f8x8
23ix32l7dLoSpvrZy/sC1fTRl8Mut9oEDzXqIlF6ZESTehC4gL8Swv/BUfzxIz0aFqstq+gITSOe
rM8zkFFol0K1RlHqSlU0v9TEbWbdEuz40AymTbhciiztGdPv3jGtWLm5O93sL8tW+ewTROC9wJnj
OsBFwkqJWbsk/TCBROCjFhWsI9cPDKBAUFPMSUZML1k5DKRwZ5VuMOIhxzKb1LULby3KEJzC1C0g
BHL3vBB1183WRzc8Mq5/PfP07UVupXuewdkYgh69djh2UGMjd3TSrPBkxIx9zj1+StKozubosV/2
WPo2XFWuGdD/xuFLXMZ+IkFVCeHuIPOcmTdLFKhRjZ4ELB55m0+atau7fQdbM+4MKqykk6h9BzgH
msIeYgQorTlCRy+nBYbxulM2M6LrQGZJP+r8rfr2hiTmcQGNe1Kmk9DOGeu+ZSQlsthUR9SVHFpb
1SMZKwA+TMELwJOEZD4Aj5/SHCd7i9nF1vohoT5QUVWnMaYujGjPj8wqsqWRoU2ZVLg1wv8y4ElK
VFQGHaqCum493TOY0QI3Ao1aUNgzNDWsh02GGo9WdFBc5DgTyXIiqPc2U8MZAYK2/b9y2JBxFh8f
WZVd+6Df5mnjO+3JJDgaOKjg/OBykobL0B3P5Ju/680Z9HDcxKxXV21ZNsaU7NmGV5/okRk/rMYP
kiuCEALNJE8fsDDIPnP7iKVzGFzANuNDSI3811qz2keqzTKA1UdrjBJ2dDypvhks7Ah0y5RpTw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x205183740153F00"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
content-md5: yn+K0MgwRg0avGYY0ABu7w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fd5e3e6b-0ec7-467f-90b7-08497979ec1c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-97f91c43-43bd-d54e-a35d-2ad2cd61d26c/test-blob-4a8c085e-c149-99a7-8a74-cfeb513f0eb3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
xbRDg9YdStLgboTqxAYtDG/kg8HqXdAvlM86QFQSq3OwVXshLSIgJdImt06/YxCdLx1j6d4QgWfj
E+4H4gp+zcMQOW6KDN5NxF3vw6WBbzC+nRA2r8KVn9MTPRozGUPHqOqLrymiEyI/FSSAIb3CYqO9
SET6Rx0Bepqads/EGaoaJxq79sAGHIrt95qdFH4WUdp2ddD+zWHMijSPB51Te/t5ZvmiBmvjtyy6
DE+DY2YchCT0TaTaG1q57myLdxXtmnyeI62Ec0tvk76kRMERSSbNc4J4Xi5Xn0qf6Rf/V0AWzHHT
5EC4mBDYhbnmNdeYp6RFvgOTdDtNRoNj5Io0bzx+jXhPPWTmFdtxoNl0cWlzBkFyuZk8g1c2hp68
VbOGpBV8Z6dfSWo/X6goIdRh2dUZ8N1JwbWjQgogGLfGKcAn6/zD9wnCE73XMlrwE2KD1K3JomXV
PeNf2SWdPzCyeTboADbYneHLV9wgco5bsi6onEMK/YZbUa0YZB7jJNSMJLkjCBIrqzbL/UuItctU
BCb39KLsqHuvjK6IvznD5zIHk03VN6obfPENPgA70pzixF/37DAyn3s9dHtjouz9CBUYgCF9f8x8
23ix32l7dLoSpvrZy/sC1fTRl8Mut9oEDzXqIlF6ZESTehC4gL8Swv/BUfzxIz0aFqstq+gITSOe
rM8zkFFol0K1RlHqSlU0v9TEbWbdEuz40AymTbhciiztGdPv3jGtWLm5O93sL8tW+ewTROC9wJnj
OsBFwkqJWbsk/TCBROCjFhWsI9cPDKBAUFPMSUZML1k5DKRwZ5VuMOIhxzKb1LULby3KEJzC1C0g
BHL3vBB1183WRzc8Mq5/PfP07UVupXuewdkYgh69djh2UGMjd3TSrPBkxIx9zj1+StKozubosV/2
WPo2XFWuGdD/xuFLXMZ+IkFVCeHuIPOcmTdLFKhRjZ4ELB55m0+atau7fQdbM+4MKqykk6h9BzgH
msIeYgQorTlCRy+nBYbxulM2M6LrQGZJP+r8rfr2hiTmcQGNe1Kmk9DOGeu+ZSQlsthUR9SVHFpb
1SMZKwA+TMELwJOEZD4Aj5/SHCd7i9nF1vohoT5QUVWnMaYujGjPj8wqsqWRoU2ZVLg1wv8y4ElK
VFQGHaqCum493TOY0QI3Ao1aUNgzNDWsh02GGo9WdFBc5DgTyXIiqPc2U8MZAYK2/b9y2JBxFh8f
WZVd+6Df5mnjO+3JJDgaOKjg/OBykobL0B3P5Ju/680Z9HDcxKxXV21ZNsaU7NmGV5/okRk/rMYP
kiuCEALNJE8fsDDIPnP7iKVzGFzANuNDSI3811qz2keqzTKA1UdrjBJ2dDypvhks7Ah0y5RpTw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21929DEE87F3100"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
content-md5: yn+K0MgwRg0avGYY0ABu7w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d42097f0-2e0d-4176-a773-2484904151e6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: HEAD /devstoreaccount1/test-container-97f91c43-43bd-d54e-a35d-2ad2cd61d26c/test-blob-4a8c085e-c149-99a7-8a74-cfeb513f0eb3

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
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x21929DEE87F3100"
content-md5: yn+K0MgwRg0avGYY0ABu7w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d46a482-957f-463e-a10e-fefc07d2a262
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:28 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-97f91c43-43bd-d54e-a35d-2ad2cd61d26c/test-blob-4a8c085e-c149-99a7-8a74-cfeb513f0eb3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-Match: "0x21929DEE87F3100"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-97f91c43-43bd-d54e-a35d-2ad2cd61d26c/test-blob-c73f485b-d174-f54c-6bd6-e81e70407bb3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26AA835A805E5C0"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c49f84a7-f967-4c88-b3e0-603097ad6731
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-copy-id: b27e306a-76d2-44fb-bc25-acdd75fe9724
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-97f91c43-43bd-d54e-a35d-2ad2cd61d26c?restype=container

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
x-ms-request-id: f76d367f-7a71-4b69-8f3a-77fe28032172
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-38d77e40-7f95-baf6-c580-0866c1a0a8eb?restype=container

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
etag: "0x268F95A040EF7A0"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b29de472-e4d3-4f9a-99af-346ca200fff2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-38d77e40-7f95-baf6-c580-0866c1a0a8eb/test-blob-9cb2f704-a5d7-4a95-d3d7-4596cc602073

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
cVUWwwceBZqgpT0AAWGkLMc13fJpQh3eEdGFybhA2OnL5Hn7KUqrIXg8l+9C9blk29yei8K1gS43
OLE2mTzhYM1TNBznqAN8irt6LKoumxwYIe3cok0nFmJKxPGZdYg8Wzci7sGcfDPZIQEGO1SECZyV
HXhOBb6AKx66nOQR4xQzPdFzC6xae6S6AoBLIdoOxrtUA1cP7VV5osKj4t9Oxz7s0v2CEf3vOqLU
lAM+NApDq9Yovd+9JFB8+Wnpt5nEaztBXk7di7W+Zcm1O1lSO223XzYJJgpeL66tBheTBYIIDynH
/NW8ZSAgalcWCOn3Kb78Mlhiu0Uw4y+gMISeKl9GrCswij+X+/kW6LuySCfFttxYl9MqpVTjlxmm
HDWbgj/3z1u9x59/ZDZeTNKJfZoH23qnRZOMGwbXTPMl8N/DemZ7u3jLB+492TKczFmCWhl+nkG7
8z2sa7NU5XqrWXRXmtJrDcIhPNOLamth70+tVfHap1GeB4Yoz1DFdiF0kX++RTGGFkxWXGJtMInR
Sntkp5CJ0bIiuZJMQj1yXMWxF9jro6odJj+kg0ruMNf8V4TUYc+R6r/Nm4ufOtMO5P+duxmw5afQ
RoBR5E5nM4i7T+u4nfv1ICwYHQcefuxrlp9KUXS9THHdAxpOQAZxZmgD5OvnVUYEqJvtl8igsseU
5U6vHOIT/gJ625ngpt8lp7eeG5oAhEBYRqnYz7SpPVFSulq4wkqG7+bobHqsIwG8x/AQAZctk2EO
VtY5Oi5O0Z5IjuyEbeRtGCu0GBfFqyKnHAjDmDu5JSb5qWtzTLS3mZvbZJUUN1oMo+hreXtJSKuz
kR4mizhijmjFi8N4+ct3/H586UaNk+Wtt/VTTqursGHAwLuWkQ5iedYsTquWk6kc9Hz8zV5kJf44
eNRDD0C9GttiuDgQ4WpwGXBwYUQ6FyNLN1ouruICW5u9Xhk6H2qVbzPQNNtxCxMSjLTt88S5/mCw
+Nfmjmv4X1ydUoJRNfoG2vIQaeNH2itGHCIuFGjXBF+4iSaSr+DI19R/07mQwFa55xnRqJR9aB2s
n3FJykr0xk4jmKzTcyoRSJEOyAZytlvLdC1PBVvKOyAJ5RBufg2Jig1qbSeq5nPuwF8Dbp8XOugV
fVYdpcDyWF2Lyo4aosmEhD74B0kzIY25YET8x8yA8aooWQC3bOVMdxTKHhzl1B6Vf+lhHjKf4VvI
Y0R89pCRC9jj8UnIzBhYq5A0aQNx1IwmZkjiHtJ4iHel7wih0ICEORJEAeLUzLLRCXKianhYV4+3
VZBIruwFa2nSI90PttsPsDDwLdKqUZmVERVg1R7+TJh56nrvPIomPpZ5AqjVwlOXkrpHZym8DQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EBF9FCAC485F90"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
content-md5: ZujmNZ9rW/Cd2QqKIytmGw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e481a10d-ff50-4387-a548-70b156690869
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-38d77e40-7f95-baf6-c580-0866c1a0a8eb/test-blob-3ceecaa5-4e31-c0f0-4fc2-c84363b7e56e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
cVUWwwceBZqgpT0AAWGkLMc13fJpQh3eEdGFybhA2OnL5Hn7KUqrIXg8l+9C9blk29yei8K1gS43
OLE2mTzhYM1TNBznqAN8irt6LKoumxwYIe3cok0nFmJKxPGZdYg8Wzci7sGcfDPZIQEGO1SECZyV
HXhOBb6AKx66nOQR4xQzPdFzC6xae6S6AoBLIdoOxrtUA1cP7VV5osKj4t9Oxz7s0v2CEf3vOqLU
lAM+NApDq9Yovd+9JFB8+Wnpt5nEaztBXk7di7W+Zcm1O1lSO223XzYJJgpeL66tBheTBYIIDynH
/NW8ZSAgalcWCOn3Kb78Mlhiu0Uw4y+gMISeKl9GrCswij+X+/kW6LuySCfFttxYl9MqpVTjlxmm
HDWbgj/3z1u9x59/ZDZeTNKJfZoH23qnRZOMGwbXTPMl8N/DemZ7u3jLB+492TKczFmCWhl+nkG7
8z2sa7NU5XqrWXRXmtJrDcIhPNOLamth70+tVfHap1GeB4Yoz1DFdiF0kX++RTGGFkxWXGJtMInR
Sntkp5CJ0bIiuZJMQj1yXMWxF9jro6odJj+kg0ruMNf8V4TUYc+R6r/Nm4ufOtMO5P+duxmw5afQ
RoBR5E5nM4i7T+u4nfv1ICwYHQcefuxrlp9KUXS9THHdAxpOQAZxZmgD5OvnVUYEqJvtl8igsseU
5U6vHOIT/gJ625ngpt8lp7eeG5oAhEBYRqnYz7SpPVFSulq4wkqG7+bobHqsIwG8x/AQAZctk2EO
VtY5Oi5O0Z5IjuyEbeRtGCu0GBfFqyKnHAjDmDu5JSb5qWtzTLS3mZvbZJUUN1oMo+hreXtJSKuz
kR4mizhijmjFi8N4+ct3/H586UaNk+Wtt/VTTqursGHAwLuWkQ5iedYsTquWk6kc9Hz8zV5kJf44
eNRDD0C9GttiuDgQ4WpwGXBwYUQ6FyNLN1ouruICW5u9Xhk6H2qVbzPQNNtxCxMSjLTt88S5/mCw
+Nfmjmv4X1ydUoJRNfoG2vIQaeNH2itGHCIuFGjXBF+4iSaSr+DI19R/07mQwFa55xnRqJR9aB2s
n3FJykr0xk4jmKzTcyoRSJEOyAZytlvLdC1PBVvKOyAJ5RBufg2Jig1qbSeq5nPuwF8Dbp8XOugV
fVYdpcDyWF2Lyo4aosmEhD74B0kzIY25YET8x8yA8aooWQC3bOVMdxTKHhzl1B6Vf+lhHjKf4VvI
Y0R89pCRC9jj8UnIzBhYq5A0aQNx1IwmZkjiHtJ4iHel7wih0ICEORJEAeLUzLLRCXKianhYV4+3
VZBIruwFa2nSI90PttsPsDDwLdKqUZmVERVg1R7+TJh56nrvPIomPpZ5AqjVwlOXkrpHZym8DQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E0DEFA2A2C73E0"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
content-md5: ZujmNZ9rW/Cd2QqKIytmGw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4230cf9d-9762-42a7-9557-370c7c03fa4e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-38d77e40-7f95-baf6-c580-0866c1a0a8eb/test-blob-3ceecaa5-4e31-c0f0-4fc2-c84363b7e56e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
If-None-Match: "garbage"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-38d77e40-7f95-baf6-c580-0866c1a0a8eb/test-blob-9cb2f704-a5d7-4a95-d3d7-4596cc602073
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2693AA215BC6980"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 46f3390b-68f5-45ea-b6ec-0ee5c14e8bed
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-copy-id: 928532f1-317c-48f6-992d-c8cd4d502334
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-38d77e40-7f95-baf6-c580-0866c1a0a8eb?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72c0fe58-ce56-47fc-9f95-d965cab295e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-f876dcbc-ed8a-994f-002e-2fd18f2b8637?restype=container

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
etag: "0x24BEA8601A99B20"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 86a78494-75df-40c4-9b90-4f37dd9b1515
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-f876dcbc-ed8a-994f-002e-2fd18f2b8637/test-blob-82694852-b4dc-29c6-1860-3700b59c6d13

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
ckahnTuA27UH8U0V3VLnG/HX2e/qJ+m4e1U7Ax8eMCM7kdAcFUgyOwHA8ZigOruuRhPguFKWTEpd
6SHlRdiW6MAq2UuBygWppJ7uKTZRGECZjLwLPnfRpESFvywmTfUoKgjXdWBwLHwNNxSzqCMUDNHg
TLkciqpIWTQH/ArZglaoxf4ueaLgKV8//gdiHfwhcbNbRQE8DKBdjxwsaDBxNLS+CuIk5ZIvACJZ
3Iuj5Ts45opWfjxVbLld0emGs8AvzslSpBIZ/IwgLEXe4y8Uuanh9IKmG7Z3aJ4oxhSpqUxhKg7B
UUAoHur+NVL3d4mJSBhApL8+iLIT2zx08TV3d4L4fLkhUmhouNaYqOVjf/AVn378aASMI6FbrnUE
tC20hr3P//vPaPWv2OzppeDNsFtLXlG3ew9+a1gXxqTyZASo4yEnlID1RTaITI8Xo33Ajf0auFXb
/QquUJSiuKJRvXToQMK+phvbVhgbLy9/Z8jaVzim2KyuzeYXeUPrU42UNo8bL2K7AefiPmE8wM7a
LunMx2BpquTIOXPcpyzY7wKLhvigYzdlH1ZQxJpKcQ0XPEpaH4wtK4yqU/Xv31m6CU5fsTnVOsqx
ZqcKGeVKfchlxGrifc92Xltr9RBBdkD8lbpL68DTQgF/qbnkIhKnYNUtiRrv2Ix+6FPeakS6b+9n
DoMq/pIHkoJoYtQWkjtIxJU6FOwlDbwuzAJs9Ne8xDnJfBSOfGFDJfeYhnW4aFUXlaWvgFsDQgHG
/DKPm52qq56aTBYnukc09+71jIZHdWStVV4xDUTexjoTyIAvs4pa7trXHhs/8NteeolsDbV6f4bN
4kU+eJ5Zu4bbE/LGBUNjm56sb1dIbWSD05K6cbiEmEj6YdBEG3U7fWKVY9zpl3VFCXIXzQ8uhXXh
u6QLn0nNV3qpzKNzHn8ocPL0swmHmTwcdWhFbcs5y9xaY1/RMN4YxwxiP8rR0erz71wdOtJsWiFo
7inhiOqvcAHHGLsfV0AT2+v8JVlxS6N9Un1uHJEK7gg9aEG1Nz8iss/JCbkv05ccCV7mbzXI9qOG
YzVsQVNwvSmy4e7/XqSs2nKJqEHqTn/mURIzI3/TdXGdLtQJtnB7WUyPfPGpHKu5OZXCPk5imxW2
hu9BPZqp32x8YS/QoiQCDU/1WtGOPDRneenqETcjO5O+Uy+AOhuy5Z2FLLp76ZZwvzD+bUFDKEm6
2cOwv840WSacEU/0gdMzQ3Q0CBB67JBSeVEHJM5ReyvmxWBYASbOUNKU3tdHfD1cyynNDh84QO0z
XUV8LTVYS5YkDbxy2kFNZbg95g24C/0TqlikhGwMrYRyJaTgUiOdO5NBI26B6fDof6hn+1rgeg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26E67D90A912940"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
content-md5: yapMWdW61UCYxW6tU7kVHA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 19b9d991-fbf8-495d-b9ac-a2ed45f2a19a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-f876dcbc-ed8a-994f-002e-2fd18f2b8637/test-blob-79aa9f94-e776-918e-c068-bb05c3a4b22a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
ckahnTuA27UH8U0V3VLnG/HX2e/qJ+m4e1U7Ax8eMCM7kdAcFUgyOwHA8ZigOruuRhPguFKWTEpd
6SHlRdiW6MAq2UuBygWppJ7uKTZRGECZjLwLPnfRpESFvywmTfUoKgjXdWBwLHwNNxSzqCMUDNHg
TLkciqpIWTQH/ArZglaoxf4ueaLgKV8//gdiHfwhcbNbRQE8DKBdjxwsaDBxNLS+CuIk5ZIvACJZ
3Iuj5Ts45opWfjxVbLld0emGs8AvzslSpBIZ/IwgLEXe4y8Uuanh9IKmG7Z3aJ4oxhSpqUxhKg7B
UUAoHur+NVL3d4mJSBhApL8+iLIT2zx08TV3d4L4fLkhUmhouNaYqOVjf/AVn378aASMI6FbrnUE
tC20hr3P//vPaPWv2OzppeDNsFtLXlG3ew9+a1gXxqTyZASo4yEnlID1RTaITI8Xo33Ajf0auFXb
/QquUJSiuKJRvXToQMK+phvbVhgbLy9/Z8jaVzim2KyuzeYXeUPrU42UNo8bL2K7AefiPmE8wM7a
LunMx2BpquTIOXPcpyzY7wKLhvigYzdlH1ZQxJpKcQ0XPEpaH4wtK4yqU/Xv31m6CU5fsTnVOsqx
ZqcKGeVKfchlxGrifc92Xltr9RBBdkD8lbpL68DTQgF/qbnkIhKnYNUtiRrv2Ix+6FPeakS6b+9n
DoMq/pIHkoJoYtQWkjtIxJU6FOwlDbwuzAJs9Ne8xDnJfBSOfGFDJfeYhnW4aFUXlaWvgFsDQgHG
/DKPm52qq56aTBYnukc09+71jIZHdWStVV4xDUTexjoTyIAvs4pa7trXHhs/8NteeolsDbV6f4bN
4kU+eJ5Zu4bbE/LGBUNjm56sb1dIbWSD05K6cbiEmEj6YdBEG3U7fWKVY9zpl3VFCXIXzQ8uhXXh
u6QLn0nNV3qpzKNzHn8ocPL0swmHmTwcdWhFbcs5y9xaY1/RMN4YxwxiP8rR0erz71wdOtJsWiFo
7inhiOqvcAHHGLsfV0AT2+v8JVlxS6N9Un1uHJEK7gg9aEG1Nz8iss/JCbkv05ccCV7mbzXI9qOG
YzVsQVNwvSmy4e7/XqSs2nKJqEHqTn/mURIzI3/TdXGdLtQJtnB7WUyPfPGpHKu5OZXCPk5imxW2
hu9BPZqp32x8YS/QoiQCDU/1WtGOPDRneenqETcjO5O+Uy+AOhuy5Z2FLLp76ZZwvzD+bUFDKEm6
2cOwv840WSacEU/0gdMzQ3Q0CBB67JBSeVEHJM5ReyvmxWBYASbOUNKU3tdHfD1cyynNDh84QO0z
XUV8LTVYS5YkDbxy2kFNZbg95g24C/0TqlikhGwMrYRyJaTgUiOdO5NBI26B6fDof6hn+1rgeg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D214A64ACD6D90"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
content-md5: yapMWdW61UCYxW6tU7kVHA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b68a9a94-ed5f-4e38-bb37-94879fa7dfac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: PUT /devstoreaccount1/test-container-f876dcbc-ed8a-994f-002e-2fd18f2b8637/test-blob-79aa9f94-e776-918e-c068-bb05c3a4b22a?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 9852aa91-a0e8-87c1-cd18-0b0e4ae93a4b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D214A64ACD6D90"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-lease-id: 9852aa91-a0e8-87c1-cd18-0b0e4ae93a4b
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c3c61749-68ce-4183-92bf-c9bdac9a7072
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-f876dcbc-ed8a-994f-002e-2fd18f2b8637/test-blob-79aa9f94-e776-918e-c068-bb05c3a4b22a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-f876dcbc-ed8a-994f-002e-2fd18f2b8637/test-blob-82694852-b4dc-29c6-1860-3700b59c6d13
x-ms-lease-id: 9852aa91-a0e8-87c1-cd18-0b0e4ae93a4b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26D9F1B7029DD00"
last-modified: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 22967bb3-5ce8-4c7c-8a10-e2395a04fd67
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
x-ms-copy-id: 37530af9-1eea-43b2-9809-bde2e1813bf8
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 31: DELETE /devstoreaccount1/test-container-f876dcbc-ed8a-994f-002e-2fd18f2b8637?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a10329b8-4c28-4a2f-8901-14a4d66f704e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

