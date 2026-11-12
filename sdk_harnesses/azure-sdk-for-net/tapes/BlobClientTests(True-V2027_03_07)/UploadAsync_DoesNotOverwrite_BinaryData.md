## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ee704898-979c-1229-328a-33858b3cbf65?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_DoesNotOverwrite_BinaryData
now: 2026-11-12T00:49:11.0659128+00:00

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
etag: "0x27A5A4A597C82C0"
last-modified: Thu, 12 Nov 2026 00:49:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1b9bcdfc-124e-491d-8675-4e926c87bde8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:11 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ee704898-979c-1229-328a-33858b3cbf65/test-blob-13494c85-0f6b-5a08-0f6e-2cc47a695992

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
QeMvDCSlshoOBLb6MWO2vx2F5h/rLfaIQBbfLWpll8gwoUOoDLNA4JovBGZYDSmruG2n9YI5phTt
pssOxYWvqW3uyo8fDbJpRQaFvCiPMDLsNHT9vaJF9vsvu2bnMRoVf1v5akOZi6q7PbB8s+rrXXaZ
IpEQsuvKqNOU8FJLghPrcDzMlsXvU6jJQYDyyUIQQ13wTQ+JBcxwLsJvBJpYb7uckEOtH8awqs/o
RnFr2N6Qg6z0WzQEYWtwXGgCf04OcdHFVTj/YySXP6NAob5bBVXj34DuYxSGmC7YPcJdriuA2tSf
pYKmkSCIXRuQw8CsFFcSH5/OIA68Pr0JJiZiOZF4v8fpu1/TPU5gZQX59dRuLChrS46LsrnG4mfF
nGr5JiOJGAT5wlj4P+FRbboIw0jom/r+9+4C7A0NI9n4DaDjZj/ib93QdWnPcgytOUT/vR8e3AFw
+y81hyv2655/ADFAbgd7JlRrGCWQLoTiVbLJDWa62TCfcmoQrOex2YnKT3LabMs8hJbKssTb4M2r
UzF4Ld04xSYBofudanlsuT6cxd4RB+nnjInP7yZrw5KdZFm2OayskopM2crPnxkdXviGPxrumktI
kaFUaNb/ld5p/wUgtoCS8DJUxC4eF+xvspEt5YN3rsoObacLVyq0TEPsZZ8T/ad39E/omtUcKXm0
5LVE0a9a8lE6EUjZhpgIn3jqMrFMXLXptfE0jhP18UMtVnN0b3qUkXJO2Otfnm234PpdMffHZ4gA
Wxu+JmM+RSAFqzAkkzD9VqA+/oPKiheDfK4YmL9LZe7rdBRe1msPD5PLWvM9kk3KX9tXiWkENtEE
Oqm1JaxguUVBOR4bnoA1L+7v/i8kRulhTjjk9NyF5j5DWpvBWurmaqGt+1kursFbIVl6FDeh4PPA
U9dze8Rou1Lg2ETkc9UECJSOdkuPM593idODC9EGonqoAQYSc+/dRD8HTtZ8dq2DdgujEmmoMCA4
/PLw5bCA2TbKO3LP8ZWlsTILiOXI+xIl/5XFY48Q/9Dm2nb87F6PhnSgsjo6tIR1/mA2nac7bwHg
y+YbunWmuTyi6BcfqMXTewFwKEjX6koQUGUv2WIoq2t1HCF4c8z++vn+mMttVlWbYyGmyka4COCc
C2oQdt/ZeT2rqYykWwg1cS5P2FF+o/kPlHZBguAkvRNA22hh7oMZJR+Owa3J9gcZcVkYaDCOHWhx
AOJomPZdh+t5Y3+f04KqNbMy8OFLRp1vJxGHC1Tisb4A8O6gsYwoMDnBT5OHeZ3WbTN9XC2GJrlF
+HDl1nuXlrHBn+OUCoQmCb+nifYJ6K5zsJ4hZVWQeck1WrgcQlq9Krnhxdm5QmOuV1Jt35zCOw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D943F580F67D60"
last-modified: Thu, 12 Nov 2026 00:49:11 GMT
content-md5: 4k/8BbIsGSC/Y2LqGAbpvw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3930d535-3b0e-4b9e-8b8c-127b90465876
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:11 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ee704898-979c-1229-328a-33858b3cbf65/test-blob-13494c85-0f6b-5a08-0f6e-2cc47a695992

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
EMJxJd12MFwxJRlfr8wKxmXpXj0oItS6bjpyDgMjmi1yH6dZ0TTgtImFlLSf4rTiTIsI9T2FE+3t
t7ajAyJZDovs7I8ksPUwCaqzo44gGouGkMF3GqXv7Qy5bBl9PLFnLIYos/YkvZyW1+uT0W9fzZ0r
HHJg4fPm/f6DakTcssz4THcH92aVYdMk4UK5WxycWZ57Uh8+BkqTQrb4oFJYuSQfmoT3WNU3lruf
OwCwLaHi5hClYGCsukUtdLWwnMGAzCcdmcCXpQHJRLxkn8tJ4hUUFblBsljEcuA/yuMghvn5Hm/Z
kpPhS0EP3ByjSBp645KgnIcHPhnOWSfgWNoeqb3Da4BccE+BM8p3MtY8ICrGxOZRgOpx8d9VCjlr
APNn8DNe4NyZHnNCHmi8jwxDkjj9GpPzzCjTUXmgBmUWFjLXEEGj3UBNLKZzD2GBtGLTEngAbuZf
cyQKi49j+RcOKwg25X/KoLT3sO3tgL3HUpwWzfTsFadLd5wdmFKx6TOOZeNZSs/iCHLDCb74cfNm
QznyTCsjIRVg623irQdiRsa6XxvabQfNNMSCKAzpUgapt1UZvpwHa0PN+V9hAFtqYcL3PhLYi9Yx
JRhmoPgJd5hnOfaxSIgqs/TXDHOoazRpF8dK8RTz0St/55iDoMpLxILG+sZluBg6zYoeAH9iibrk
/Igxv4WEc2jKMmDvphIpi0jx4nFtBF6uDySJ1dCsHF7en6RBGgX8QYZemoa3Syd49HQ2cKdJd/cq
gq9g+p6XHRUCEAZu6HFC9KDqDmrY9sT9EeFbday3lSisF5dVm0box3xwtTogCQsD9HsGXmiNUYzq
Y+m8O6hpSnvewdDa7FhZAkftaECK3QfVWIEwsTa/HsYLazhdK4vUBmu+QUc7KAcjrFwhoOlLYIbh
5+MnOZlEH6MKz4Eg+9a8GWHVy5u/mi95DQTann7cvwqyfESnrc3SeiGkMFmFArGGZYeIdpXqIUyz
rSyVaYEkLQ93bn+RFGyUA1F6G2rW9ApTVDj3VEl1x1v48/+gPRCggAJKDpQx9FAb83JDcAbi3bkh
QRVILdnGAaYjmSBs88ZA2ZpnjOV2IV/o3GDWMVdVFRZGf/v6V1MpgwztDVsvrgCsA5ZrelHTqyC1
X1B479BOzoMKJXTKRoFHPgjZiBMDuS1gKS7B6pvEc9PaRPgCsZQ7nz/YJImM4rwUIzxJ+iIMsqYi
GMWijeToRrGg7wGJRIxznenUK5Sj00dxrMZeenmwzpJR35nOmRJa8N3Y7PK7i96v1lw5N4YSf0R+
MeEdicw47yFuOGXzpAPXeTu2y+dVtiDorqQcd5YLPmBUUGgwPWYRoPzQTFN5uzFZYr5LW7NdKA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobAlreadyExists
x-ms-request-id: 71a12fe2-4b05-4329-8f54-eb64a4629a8d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:11 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-ee704898-979c-1229-328a-33858b3cbf65?restype=container

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
x-ms-request-id: 6d7a6d1e-1f2c-47f0-94b7-c862f2369480
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:11 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

