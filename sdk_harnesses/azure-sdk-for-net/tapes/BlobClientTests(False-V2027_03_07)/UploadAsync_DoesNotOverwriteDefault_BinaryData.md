## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d4edc0a1-642e-eaf8-08fc-28b10baac839?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_DoesNotOverwriteDefault_BinaryData
now: 2026-11-12T00:48:57.7260821+00:00

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
etag: "0x1E316EDA828FF80"
last-modified: Thu, 12 Nov 2026 00:48:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a6fdd9a8-d66e-4189-817b-bdbddf2991bf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d4edc0a1-642e-eaf8-08fc-28b10baac839/test-blob-35bbba7c-10e8-2186-de40-ce11246d79fa

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
2gsvbFZxBj/h238PiUSPGhok/5tNfyGQOsv27ZXmxZuCLtb/elviCrR7Uw2Rd5iZsLP3/23erVrq
njKKexmp+hXjjFttkJ++QfTn0SsT/8IzXDzh78UtpIB7FdspWI+a0Vn4reo8KyATOL159tsv1p9v
Vh7cxwtPtuja8XvDlellTADSG1HY9zEczbcHtK2lTD48uQFxvglOqPcCYjmkT6PUFKnbXLpNl1/t
wPpTRwE7NKU8h9vn8472hHNa1pX3d30TM6ADyvCE7iKihP4P+mD1xy2UaMjI7CAb5NhH88DK9Uh8
PxRhN2q0uJi4RW+Q5okSZA9nYg+1S0aA6OUYPPti2I61k7pMlI/C368wD6ewi/5ONY+xYpI4xvTN
4U+EnHudVm3h2lLPxc9/pINghTyf0FzmygdrsHX8fM3GfrNAPkMzkrk6zrCsfm+/Mb0P2EG3LhHy
ndJ0MaX35V2FCUYcP2Y/LPKCZAGrOkuYq3637KSLDlCiTaBwv2ATQulTJnUoo/JXz6xONcoPR2KH
24UnQPi5+vr2efLGz2yRbyEXWBTVbwiMYB33PNmGkgY96ePb7ALxmix6MSn/kQA/vcWo+O5OsWx9
m+Dbwb0hcOfsiOWItoMfJr7oWj3ejM8dt38T3ZkX7zh3XVEiFdhuWcFCEwgatwZCidIwZlYung4R
vgo+DZJN1ZmtEVkx/BDleQF8nHjGAgB40VTH5ojiSb5CEFfOMEwv9D5ubKWtEIzCSuxVsgKWSrsJ
xjw+hu4Qy8ea7+y4F0i0TKg6WJVaysDHBJubjJe7q8acxGoQ8W1PXaHeEyCgCTOkoGVaW/Ilrvt7
doFTdD4w3kQlHFLeo1o66vr0fLefJ/tn9+wxYU/UdhVulHvr/OhjrjTceuzgxfwKH3H3MTJE3E+G
631S/nz0UaY8bw/fTu4RkM2CwqwOhzHvJ0Le3ETjKrgrZRBrELC36ClGpFbtKtCC5aBkwRmjd2RL
Y9Y6FXVhWURXtOnepX8dy9qDyOLbAfxxXPakfmmeiO2sIK3ZfdK05UoRlnbnpD8gRvY/IK+BcGHa
ybl+vdrbuCv7MYXRRE0Hz+KXyWuFiri2gzdyX2g+Kq9M/7MZNSdvNd1L63K6TgKoN1HM6af2VD4B
xzqjaVnCvQfWhUWa7Zm7KJONOp5F/DQ1yicXcUAIVqp1GG3tzMyEiC5q48m9Dkm3EcETaBmgu8sF
bp8xq0zGzS6aJdUszVvGCLJw2xhqd7vdYF9/9O2R1F2h514tUtzhpBaaI+l0i0NmTV9nL9+zmvbj
VEvsR9lBCFB4iuX8mLbVjjcC0FTSadQcGKeOKaR97k1oSv6R9Vw9WRqZ+wBdabSpkqGosMqiEQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26427889A26E860"
last-modified: Thu, 12 Nov 2026 00:48:57 GMT
content-md5: Cgo0Vs/4i4XaxFS2rgM58Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d41b60ea-5e18-4c57-82e1-25a1d525f630
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d4edc0a1-642e-eaf8-08fc-28b10baac839/test-blob-35bbba7c-10e8-2186-de40-ce11246d79fa

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
63bQLjGz36v7m5iUTrhDmNrEdzk5bdO+r/LklgPUPYLGOBIbJS4LpjrtAGXF1WXxTgjO61No2H6i
En8+zkioJ10VzRWlKHOsudD+S2xu+NmN8kj6BVEvXmCUeBOuzNfyRNkHrwhPTCaVIjKCaYwRNBmm
sdsAriEL5m+1EK9g/ez4DAaTZknRPaYhZeMfrfTUg0T5CBv88Za4/MmYmjt2NCVFiVyFfs3P1XM0
3kg+7Dh64YxrZvTR/Bpw2mqAOKNqqjC92SOXTgV2KTOnxxJNeRCQHbivC84wdI1CFaNjT5zQyjQY
gBIV45KH9DzBKTUHImBZ7xrqu59ijGSWVTlhE9qX1/zeNfn9ezomJxeRb0tXOvJCCV+B5Q6UtfOt
fo1ZJuFiKlE4KOxnXHTfxJSI0R0ZPhpGHgl6FfHuSoAFUPytzAA2LkX5HxIG263roSF6DOTWlD9y
EgfX6BRgSt5sYQx3MveTUqLXHx8IQENcj3PQdD6bL7y9Orr5XkYwmdUzmnmgc24p5rpC/3QfatLD
elihj9ag0DJQuvg9mvNbpoZK1KXKuxsEpo2DWS9IndDnNeTtjwn/k8pGULl27EvG51jt1ZUt+b49
nOlIHHYCCBwoVmUPbRZ8SkHbg2phjrlBvXLWWsc6ujwlsPIgtndTQ0icTZbmt3lCcIpUUXVU2w4v
Bl4EK61V7Zwo6rwjXJPKiD8ixUAjWwX4lOk85mjH0NTk8LAYThibR1/6vc28HhP2isg1MhbOC6tZ
DJbDGAczYRnoP2zjsTknhn7gKZ04O3bVRVyfkZ6+FeQFv0KB1y5Yxly01N6nE9iODquX7uININAg
7dKrk9B6KSmH3fL3pq9Ph2JBg2aXLjKEEYPzJycC955xYOlbrTOMOqu0IDXll2f7R2Z/zJxpib+g
JoJMhgICheVUhUXF9NovtUm64g78nnkb99/AgisBCNcpu4awP7OpsppPkREiNlOMUBdSrqaxo4gI
MI8iQQO6Un1umzlTfnWWETBzrQxn+cGMNDIUrlkxeBf+qA4khnCXlT+UtJoaOdGhvJ11PvZ8oTfN
lg3QpaMkPSMhVdZncorA3BjN00UncvpgcvK7uzohgQbXVvBixu+bcHd2+OP7OkoTtWHers3xpiQS
cDOxaIHpANPPkBuaXRUpMWLOsHkXZTinqAXYQtI55a/LT1a86gf1jPcQK6oueFdLtX1rI/Wq+wr6
Cr98Eb0Alqpszg6/bEdb2SSBBjmOeC+tjI1VzcG5IFRLweBHeHs6D5X/wqpJjEg2D0rRKPTQa5GQ
zoQvq8jpsq26c6tmE2CoR/ekj7aFYwBFHr135/hfelZOt6r2CmTMFQ/9jxidz/zpKeD9LNzbCw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobAlreadyExists
x-ms-request-id: 2d197c2b-ad03-4104-9d47-bc8b367fbc6d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:57 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-d4edc0a1-642e-eaf8-08fc-28b10baac839?restype=container

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
x-ms-request-id: 8004552b-64f2-4038-a557-89950db35698
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

