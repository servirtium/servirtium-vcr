## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7d9388f2-12bc-a745-47c6-4732a1667b93?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetMetadataAsync_AccessConditionsFail
now: 2026-11-12T00:48:23.1850053+00:00

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
etag: "0x20FA6DEB6290BA0"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b456c814-ae40-499d-b2dd-ada1971aabb6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7d9388f2-12bc-a745-47c6-4732a1667b93/test-blob-e740f0be-ddc8-71e1-0e86-daca5817c6cb

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
y2/wPZS5VzE5VNxfjOk8YyfsvsVcZAYUpiJvNTd7Ty//fGcxdj3/BJkOrXMAguQlSnaja1gAbmZp
3JZxSiL5vgWsYBCBC+3p7bksTbaTEyQ+SuvB2OPX/g0AyJmnjbp2Fe9tUyLUoz6JuX6f1CCw1shy
MwA3OOYi1WECgEJTQl//tjjGJb8BaqesNx5lOCrtUPLRNFq6P9wJS37A0SL8NXYenx3n6bAIcMlZ
iwDHvJ03FTBQgg4FRXdcvdlBQZiEsAKoRpgMBWZByMSRYLTbQY7giLzxq7NoGVqmiyzWxy8w1Nr+
H3YEKw/JD7lJc+TCgHtLYLjbkgVOPyw+ZXk6agGVYIzZ3SIY212sKJv5HqZ14wuwi2Z2VEHVr99J
xsWWj6S4tBJY6aNYM4RaL2ppVSGGyIFuid6aHgxKAy1DzhWXFpj3QWmTHfpnV1jhGyXXbFq9w/1D
JwbGHZUGDuZ2FWRvwxjSchS38quHBzGGuQPncpbShQoYVO+SMCPTjQ4U8ULzclgMBfpGBtBRvCDU
P2SSH5tPo49aVm8pP0Hw42Wdcxbvkkaq2m2cjH86xpfPvvC/QW5zxU2ymRzp48W5ViJqtEkK5K0e
50QtshYQH4/XWoFQMKL3Ka3IPfgqwfan4jZdzxJOxdlDoVkpRRI2onmMEYlDaSV/c4qbQae08yZO
hs/gslB9iZSoDI9JzuSbkZp/nq9tZHkQ3lyHsoMyjq0z279CVu8pDoj0m1yWNqSm/7AMNVV24CFV
0NT09dYRdn7hFfMkWTurVo8meMgdeqe34bLTJVlXvPqd7IYbNBiy4yXdtCCxgaZ1Yd/GT2dYOFUs
PRQjPlAliVn5h2y1kCF2dJWjQMWHBl8MXcR5kW2SRLQw7vcEjqTUuCvHuPo5v9G9T9rRtfiQpTe0
F+CLq/fsZkK4hKEqcebwz4eawE1l0p7zvEGSwI+8n0nAT3bESA0z2lK3gDsvk9304OZw9uTpTkRC
mO+2WqWz/OVYaSJvLIZ6ZuX7rlFixChjneCpS6lk1wEygrAdfYCsBIRV1im7hbRf9Y//7aDz39TG
UrzFCbA79JIgParWXOllTqrNDe3+qBcrSlYZZOlhP6LcVyvD5/rUGuGXmkgKiZimmp/2JdLmx6mk
mb9aIo+pv/0H+gW+oWav+fIMZw3PIcC9c8pJahnQ9Y+BHk47efdS7ttKA46T6Pg4Rizf2mCc1Xf+
na/EX1TkNgR2PIIYc3/7uXgyhR4yKYrSESPs8Rsv5EnWPNxIjY+GZcyKHat2INOt5CDnak9ZzHMk
8k4w90XpR1c4QTejsizprB9RpwzfW/BQPwz7R3r5fXBoJJpAVW6HodZTPd+cCjL0/b4wByRnRA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F9D2C5CC52A180"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
content-md5: 4zqtw8a+UrYH+lo0t79jhw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 27320137-db8d-4d65-8612-99629efbe055
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-7d9388f2-12bc-a745-47c6-4732a1667b93/test-blob-e740f0be-ddc8-71e1-0e86-daca5817c6cb?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:48:23 GMT
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
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
x-ms-request-id: 2ad2889d-cea8-4350-907f-32f6ae6739e4
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:23 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-7d9388f2-12bc-a745-47c6-4732a1667b93?restype=container

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
x-ms-request-id: ea780b4e-86c0-4d99-b1a1-15badd4d7c4c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-b8e05d96-ee38-ddff-3ec4-c63a8d91a957?restype=container

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
etag: "0x22397E25524BF80"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4452a7e8-82b4-4c7d-95e5-fe723f66f88f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-b8e05d96-ee38-ddff-3ec4-c63a8d91a957/test-blob-3606cab1-1d8b-b410-35da-0649bcc9754b

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
Ad8E43W1TrLWdv8b1c+kYlRmfzwdMbl5TCuDXee1IHVOejitjcXh+3xUXxQe9d9lNaP1VUo4LtAm
ipZJMvDLIFaKzVqX99WOhIPAydGkW1dLHidDwMoqFUxnhgIvl8mLiD6+kyiFzT7OZtDGeGT+gi8+
/hTIiGCLX7cNL3DTXu26NUGT5ccvxlDpdVr6ZJ3oaQTS8Zm1wgDeMzRweJ7N+gfjDEIja5xoDzjE
3xIFkfsaJcZsAG1TBHJAtbKSvk2xG3pSFldaxP1nauFg8OLt2KE4VlLYYfqZkAfP4rbq1VHqEsSY
snqkv2DIBJaM8hOQUtwQWWf72bl/uYZPiuJHfZSPdt4eVSUnlJbyD11kDZ3zP4/Z2Xzp7zgKGPn0
VDR+gYYB/Hw1cf226cTRCMpcG6voW0tSbaMYpoalFD0rMkBhdI3WYhAgvs6SIvC3GOdurvxNC/jp
LBTj6VX1j13Ai7aEb5Q9hbibyJ18v0qzYY6fN2ZA3SZHd0h483m6Ki5w0Zc5MqhSMShEskNbbGzK
MIjHVlj3gK2QPPdLxJI/4J1uDO6yeS7mTAY9+yvj7AvcrsPx89TWeVHqqfawBm2VBNGm7GB+F7ZZ
4QlRuYSCrE/sbxXPTu3ImJKcyM83NUWZqPdZPQCqXZcMlxHLhMDMZ/ymxJdXxrbk3VTO4U/mIqzD
uBGNKG9PQhF+w7bb/BPSz2DTkHCuQeJAdV+r3HxIJXRlCMyuPz6NV4KF2QP/COFA+xHuE5E7FHYv
TbMQo2aVNp1BdvNGI5AhRTnuKWjfQGx9a+BqWRLjKfNVf/KKfbMb76NlvZHt+tiBzM5XTesOUAxH
kjiGKtyLXkwA8aSel8iG0jnFeYPakHEI6Y1EjNwIRy/lQ+t6lcXG2l9F7Qgz4jUF0HqxSdeJbAHH
fUBPRtFw96l1uFPdCzxz/p4jlaNo1AdYPrthVv5XXNfpsxiEd5ON1PZfviriKMU9PUo4ZdZeX6k5
9wgWDqCrHVt781ck74cKlsCtCBbcdRX2IxizH/cBilRuS4CKdsZVs6DOZjVtGU7DLs8VsVaSXIHz
IOqH9/5kemgDtaMHfx/6V1R2DQ/fiArK8PEo69n93O7/l1bczbyiauzMaWOru66vG1kBHE5xE5jf
vQYNPI6PBdm1COjJHomY06MiEx6nHjRCeNB//L+fjYO+/BC1lS5dPWOJ9rPG5v3QaEirTwB5OJ7S
ysO+DwkZFXpkCiF54z50xdW6HSiAfJHSr5N39D6DRMNx48pqny5ab+A5YdvbVoUKNooqvhp1UU0y
6192oiE84cVdBwBzCSWnYK1IRxu291gObL20WIao/JF9OLPO5My//H8VfU+Eli1kg11tLQkyew==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x248AD72A3B64480"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
content-md5: +VOIUOXMuEVZfDyOA0mIzA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 235a691c-0f0a-43a1-9436-01e110722c2e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-b8e05d96-ee38-ddff-3ec4-c63a8d91a957/test-blob-3606cab1-1d8b-b410-35da-0649bcc9754b?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:48:23 GMT
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
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
x-ms-request-id: 36a87d1a-1930-400a-8c21-0f381f45b141
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:23 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-b8e05d96-ee38-ddff-3ec4-c63a8d91a957?restype=container

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
x-ms-request-id: 63a7783a-a8c6-4b2c-a13a-8518e36d9713
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-366707f4-8863-3f89-b50b-6ef6d172d97c?restype=container

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
etag: "0x2530E67C1EBFC20"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ee285d09-5660-48a0-ac09-c1dbe22e8502
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-366707f4-8863-3f89-b50b-6ef6d172d97c/test-blob-9b4b88e0-79a0-8909-d590-50d5283bce88

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
Sry+x3yWW3P11shDFqBb8anhjKW+ltt6/d5g0zi0Fnk95qsUtBL/SSzXpcqxxXI1NF4rR64pybTh
Q8mdNoc7Qb9OBjD1Rz2X4UJ45vARyTdrKp/ZiM/KFBz3M3BIYhOlnGQKYr5CQOwhlGVssOLDz3qR
MQvoYbjwhPIT/RTMTn8v00qMB2d5KeqyuPRqXmM5M2P2tjAHvDqsGt7ML0LYVEXlPN2XN8gTGAgg
NajDhSWP2cqx1pdOJxYQ4OyIrfqo2mSvhCGFofya454o5oaR6JS4PFV3J32tlhTHh1fcimsOd1tE
FAEDCjjNFvP5JkGPfvdY0HClMLPmAe0NvhmlvlgzGm4rTdSStDIcqhCJtHDTNwlfg7r7aEaoXRIU
9kweKFiaxgzSYzAjxRs9iIaiXE19OYYQRTqeN7Eng+/Bfr7m/oG37u1jAdTYO76eveDABQHElrzG
DuIe/I5bquBAYUZdV4oF621fGjiyNwl8/3rQZ33u/egBIPCemfJfB1fzl9p3QWVWuhmTZXyDFNbY
ofwTi0JjUmReWzeZZlJ7/xLhvqAvBL4Uea1jW5drfgwZxvf1S3wUkEV1GOYuvFPHGGVpolU2qZ0+
/hGU//bM89wqgKBahbSWzC5auevX5b1ZnEMyAdu34xxat0xqf5BOqSUJBDyzbJKx09Um2++xZhlT
O2OzmfEBc5yDAM1nK0ydCxDGzeGApS+wgS0FkActqFAzFkQtmw8zCJCgL2zFSaeJiM/e6pg305U0
AhjD++KUVVd8MxQIcHAAksVQ4HbC6zeGfAg3Tr63/EOu+Zj3cAytC9kUSBaSgBhf3VjT5vIfcRfg
PX7aXAeZxDfRWXbXCSK4otWcrqIh8/vv2HBl5BVRjoiBFjKN06/Se4PfwSaiiNQ1GkMcg8N0v0qD
64SWM+Ahf8rtVvLvK88myTMfQjHVTU+cL8rSNAvFDFfoCucqPEejvUJbtDLhRu9z9rmQVX0YrZ00
+QMVT0q/KEmbByDn+4zre4TveZkdu+nbXj5RNLbaz1xK9kNDjW73nIvoRj7OjPsspNr5KTQEFz4a
OvAMbfOSwDfDnQVJqO0V+N0NNHWrDNJDJJDc4aYoRd4FKVN96i+XVYUGC+714/vs4zBX9uLIbi4e
yUhjtt+RmlgmRH+alw2tdt7vpADjTUGU8P110U77PLolXyHmNJ+mdXGWz598UkwjqYAE2cotO3sG
zsbhG8kJKgfEdDjsx0I+SS+PTH6iF52wUifO92Pw+COl32XZxFmnjaSXuN4UN+I9xY+bne79ZLco
McmhOzOk1HwURufdZYXV57/aCl+/nBtFkDHTVVo1p3qusZKQBlJw8uRh//D6YGAJxbYuI1lXaA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22AE14DA43225C0"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
content-md5: /zqyDSaOkuUZGDQTi1+eoQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 69098680-a071-44dd-a3c3-b51b86a4f9b6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-366707f4-8863-3f89-b50b-6ef6d172d97c/test-blob-9b4b88e0-79a0-8909-d590-50d5283bce88?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
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
x-ms-request-id: 42f0e027-d56f-4479-b019-9e2142c85459
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:23 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-366707f4-8863-3f89-b50b-6ef6d172d97c?restype=container

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
x-ms-request-id: b33234ba-cfe9-4c9e-ada8-34f0e06f6564
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-aa5bae94-d001-227e-df9f-6c2fb4f244e1?restype=container

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
etag: "0x20C1EB8974BDD20"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 014e1d22-d20c-46bd-a956-9eef24a05214
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-aa5bae94-d001-227e-df9f-6c2fb4f244e1/test-blob-7b17696d-9c5e-4b2a-2fd1-ca8fa3068421

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
Vkj+4aunbyJlPyBRjTGsF4DVwbpC3Ar3gxB7MAbvftkaS9hr9GM1xvr1Fh582b39JbMOzkXK3no9
Bl6bLD8bdsFGNkJZQCIdn/q/TMXseqpSfQpT4K+TUGxeLe0Empm72Z9dNaN7pOSQ8S9KCpK0UYu0
SK80yJYRs+XV+xM0GARhBHMmjkUG19klw+6ASUbaqdtiUFLqhhEJTIK9panRW9gq6QUfjsJGrXHV
DgWnkGmf+1E30seydn1iHELCSTEwVGcWVV9AuxsYG6PgFHgLYrsZHqpXmogQeHOHvXKAhGQ/pbqd
kToJXz82Hrck0WEFVrqGqCuG2LneBd3suP6pmJY/oG+9bdCAD75qIXzR7KYRgma4+ds5ucwAvoxd
HaZBjYUg5DDyR+jpBplsHLc9DRg22jaX8J+7Bueiva9EIvEXKJP2sAh1Hzp+zvNCzJwVw7F0J0Jw
qpzmZd5JT4o5pOOnVPMkRl0PwLr8GSKreTlLjPn+0Puvp373EEoqLM+vRCkPmnio8XxTZGeHdJB6
Ouyk/sOQO9To+Kx0LDYS5ZPrTNX4nN7Aopt8qmuUJzLufdVehS4MHglVJ6HLNMRGQH7TnCi7gp4N
41wnFJFpU9F6hq9htGBl3i7Mo3Q89W3XNmnswIoKMvs2UKHS5Qp469PQUa0U5Ywebr35794p0e7u
UN0nfJNGb1O0KmS+kvkjU7ehbKPAwlDdzlHNEEMcDX+z5JQsUG9AiuFZYLsnYNzE1psniGRLLY2M
Sq5BeV8QmBzlC65k9gNIYOHCZmKVtW51CDqn9IQaaLYGoAbA/hGCSceeQlQtX9+Y3ieCiMYr95VA
y3AlaKOXyqP3XVb9h2LQPx2a9nIZR6haDxZdl9/v26lwgDKgXeAkBnexNgKJmlfFskmpkQAiJ4PH
yliNOjPEB4KtjAcvL+I8dfD6aBGm0XW+mOWVRkmpTliu2JKIl8xE7C5/2w5PlYJmbBwPJ79yIfnj
zqJOLsE5Az2ugFdQtN4ktnviJvVmbwJiL9ksmSaZPLaZpMgp9b5tRtfQoBQrFrg963FDkPsDfF6f
6//nDGoXFESgtg8V+sC8dN8dls7tNxgh7q61Vqy7lShpigq/hjltuYvQimCoKPGwhxsb5eaQsbPm
xh28Yr6Y5CDnq2+2/e6lr91CHay4eca8Bc+Qn69B2dhW2MAcsVfNOKY/wHyB+YktdjYJTZQHLkxX
/1zvB0VwptKXYCUuif6GdeQGebhKOwtFYyl5OIxDTqpzxbH63TBgzhqp6Zhk/uw3g9evALSUDMNQ
qaQb9m1FUxF7usRMi5e0paqdoFFz4WQ8QrW0k0713rjuqTOMRdetZJWG6EMo6vc/+1oK9mtx3Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C56343139AD9B0"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
content-md5: xh+qBgUr/egUNxvlQZ1u7Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8d1849b0-9ad7-4b80-b8e0-4d32cb883fb8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-aa5bae94-d001-227e-df9f-6c2fb4f244e1/test-blob-7b17696d-9c5e-4b2a-2fd1-ca8fa3068421

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
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C56343139AD9B0"
content-md5: xh+qBgUr/egUNxvlQZ1u7Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d2cd78d8-1a2c-4fc6-aedb-7b9c9f502a30
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:23 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-aa5bae94-d001-227e-df9f-6c2fb4f244e1/test-blob-7b17696d-9c5e-4b2a-2fd1-ca8fa3068421?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x1C56343139AD9B0"
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
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
x-ms-request-id: 9c9c262d-0a1f-4ceb-ab07-26de16d9c6fa
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:23 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-aa5bae94-d001-227e-df9f-6c2fb4f244e1?restype=container

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
x-ms-request-id: 8058da8b-d5b4-4504-8243-dd5b2c01addb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-b4de3fc8-91b8-c3bf-85dc-0b5ee2632860?restype=container

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
etag: "0x20AE079445D74A0"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0a0d79d0-f322-4955-a2b5-308421616869
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-b4de3fc8-91b8-c3bf-85dc-0b5ee2632860/test-blob-bc3cf0d2-f8ec-1420-57be-7498f3ebe84d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
fMtrTGYj9NLVw2NnHIsU3NL6NwYutfHPHspc+Rwnz5rzvuIW+Nv6r/tp5iiVuPjLqZjF+bPhHsba
my2cxvq2rvPIc12p/uP2/4cKxc/IOmbSkVCDYdXmEqAbO1yuXekAszc1zESaIqq1zvks11j3EmHH
yjWqMkwd4WG9jcKGSKGeCRGXk20hN26lzpLcujpHJCn75pO0VoDqF+vj3JToLoZXjs1HX3/zppLG
BGS6QSYndWmZi2EO6bORrHuCPlvavaAMhCxtAMSpB0AB7VEcMNXEu2crT6IkSaQatrIDcWc27EfE
rb35uXSk74MgDPxhdHymvoLzr2796DqIUkoRpZbZygEKWIMYygLyhl8eAz2nuEE2XbLlQz3YxsSC
cWYqkkntR0H6Vhz4jfOAASgO3uT94JoJ2kjj84fEMZG+lVmbx/QWMbv7rWEkPs+/ZEEUyujfhZDM
IbcBCVO5NiSKOfia5Tk0+KwoATM45Jx4JI5Gr2ep3xDIzqY8FCdoQXY9mgXXJH8H4NE7toRclDwb
ieXEc4a94Vro0haS9+OFwL+8+0qXoAAPPs+VbSiMbDpqIYtCo83wf7iq71JodejttvbEn5nyg+jl
tTW2KHMxXGbcKNZYQh3xzHuR7LCupsnmp7cyx8ygd52iXe2YOVdFeJPsi0wSlXPY0tMdYZY3Ng5s
0IC7/5SZO7E4teUvWZIkS3Mdwhp91BFEWfX4gxYGaybeLGnWinn/Uk+b2uCNqHlA+BUjGnT07/xu
d6WfoLiaMUq/UCwpTcH6Hm/K4fkxtrB7uIoA41Cx6j1taBLTX7GXAKmVzlhMF6tUKPwEKQ0CPMD0
I+gtmk35DWbvvOWuJr6+M+FQm+dYL6HfrLpTrMEwaytS3zzIamVbnMHxXFvFpQI+RvUrsaDZm/NH
Te6SpWCkv1C5XEeB9cl79f8mZtJGGQa4FWbLBLmKeENIgRx3yPZgTZ0KDEm7vVAsr7ygsjQhATTo
2pD62LuXLuMEOHStBCwJxRk1PA29/FgVn1T96sYOJ4Doju5lZnTict1lt4TcfquPlu0b68QmKt04
5ThmmUQd9RHzxXU+pF+kU8kwV0XTOCCpblPY8ju7wWQQLYE7e9mYSMFz6bk1UfKOdpj79tOYZKwY
vSvxRAPVOAMRLXbeadfvlw+EYE9ndB1gSnyiv8uQeMnUI76tpwO+nrG1IyN8sA3BDF7DEwRcsEgO
kPqGMng4gLWtCUUYQfAMxsKesVD55Jpv4bNszWTFeHJ1nxYIN2s4faJtzqfHqMput01Cvv/4FKxg
FlDEzLNQ6JHSo6LZA45WZTOtjBXzpznp/RYXgrpzfYpqqCAadLHvHeYV9AUolbO+61jLSoiWbA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EB6578A07B5FC0"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
content-md5: gYjuUkHFzyA0JxCnlg78iA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8a853800-2785-421c-afe3-abe8823f8af9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-b4de3fc8-91b8-c3bf-85dc-0b5ee2632860/test-blob-bc3cf0d2-f8ec-1420-57be-7498f3ebe84d?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-id: 23fc7f44-d425-dd1c-caa2-807cb69c4bce
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: a06c5e94-1ba2-4c31-8cdf-801e7315f464
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:23 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseNotPresentWithBlobOperation</Code>
  <Message>A lease ID was specified, but the lease for the blob has expired.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 20: DELETE /devstoreaccount1/test-container-b4de3fc8-91b8-c3bf-85dc-0b5ee2632860?restype=container

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
x-ms-request-id: d3f94812-fd05-4de6-abfc-000476030ac5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

