## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a181ec2c-db27-8f9a-d1fc-faf18a67c308?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SyncCopyFromUriAsync_IfTagsFailed
now: 2026-11-12T00:48:35.6945910+00:00

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
etag: "0x2019D1FAC00E740"
last-modified: Thu, 12 Nov 2026 00:48:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a00d41ea-853a-48a3-97ef-489e4d5d5db7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a181ec2c-db27-8f9a-d1fc-faf18a67c308/test-blob-0d357cc0-6b36-fcbf-ee69-dfe296275766

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
Vw+ni2bKskpOb/xyOBR83ZvXQhSyuzDALISyvvy3+KmklJl6vzii9crqv8ZvTMPa7AFHv+RCtJze
5l7hF/RNlnZSzqR6Ah1iNUxKx/xpUd/B2NH7cDnFYeD9m9nawd7WnChQHH4eYOrk5ImY+OygdJR+
Hz8jUiY9jWzEfGZDiHNudCrTGTVhonjmFouvLGnzXSZFW6GfskoBEo4SWuOEoFsVKYTCzFteHX3G
PDyajWAD0B8//izSzsHg0QanT0eUYnUvmQLkMZDL5z4j2HYOZoUtDorDRKIvQ1vD4ftUt801MdrG
a/RdHp6OdBbur/VK0mqBeUC90B3TAFanIVCVdi9w7aabR/uQz/DrNNCLQJRleA+Q0z2NeGC98mqe
tv1O+f3nfcFOr4pv8KlQ0ptNR7/CQalABKPy43VG3lWQ8hnznDvTpMPSFsiEIeKTPabEcKur23RT
DfRZ9JpLCNA13v2QXTVgeaL87yvgvOPBXqXPgW6p5Rakn45Gea8phw73T0LkA+BwZPYJruxJc1ER
l5b0fIdii/nm672nGgDy02cc6Gyg3FrFXxx4oDYqWyw8NOEZNAuGlcNJ/RciyUr2FtuFLIrlcbs8
Lxxq6uvCvJCRauUe2Z9cllOpVt5CopXSgolbpS6hV8Mm3QXuHKvXh0GHkV9k2D08KJY3Oxrc+YyH
l2hiZxdi7xIi9/yZbXmn0c+duxE2bqpMHnyXahuoSuR4Z4RDdR8pJaFMQeBAorocj2pLPj16UCm+
FUibyoX2ea0YIQb1ZFuvdJZw6izJC3zBetuxXQum/hZbhWDXjVocVccyKIG0JyoOm8qnCmb89AnL
2k+pRRyicSLvmd/72OY7VJRkluP6DFOxosFA//SwX5BWC7MLchCrkLdexI1KE8Pka7XRl10m0M38
+KNaYnIuPjpPpMwyL+GEuQYsnEfFZo/+XJM+3sczMDrmD3psUC5EL4ZS+272sTvUTd5W+jSFNpIU
XAXe8GBzG3SSTCBnF2nY52zBcmogCKpXaZHp3DUFYNjnWPMoZj8m39/5Y2UbbTV0fhPHxMQn81Rb
hobOij8/jOxIf751sIAtm5KKJqRFPPxbdF0iPpwTwGWfzN+4V1Wgutd40u12/86SmigxnMyvFkqK
chbhHE5QNb9Z1eOhdUM96mvNzGoO5HSPj6Rz4SOY77aVLeQ+vp6IKJ0uHSnr8CTk87Jg4krfe42h
Uoyq3FObwOUtDEdf/izNRKPN4MdKpJ9/ju5xNw1stbJWnWsR3ktKklxDvuTchfSGk56mEpvGVq7t
Kk5kKonYwVaVCGHAvGVXg01rB+a7ogn56qRvxaIXkEa9I7P95WfTa/2NR32Txdc4T49NW0/IMg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C78AE43ED5B000"
last-modified: Thu, 12 Nov 2026 00:48:35 GMT
content-md5: TmBg45S9jz58dCY/Wc3hTA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 39f2bab9-ec75-4aa7-8c72-26e03f1e9bc8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-a181ec2c-db27-8f9a-d1fc-faf18a67c308/test-blob-3f6b4588-69e4-b3fb-7e77-1b0298b15a9d

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
5Zeb6S1bi2UlzTZ2E8k19vXxK7d5KO4BAdnIBXjDPob08WfDs98ELLkFGhczhaC0QiQNpoaiJL2p
mudUkobtYY6vgSJhckMW7P7+cw3Xzns4FMNUtZcAUs2qGRn3sJoyF7iIgwN+U8/g97qHo7Cv0sts
G37Dmaz2ry9Vt1kpHjxky1xUTkt3usD0c77deK4c+kdOi5Qbb34MkdPUKZt2t9h9I9hUW4OA9GC9
zybtGTaAOLwR25OnSVzdR7x3o5ElfbzlX1XWyJ/DzZczXaBYH3idU/DeZNtF1dl8dhPHCVDPmFFq
B7nhqnAdTg38dOu7hShD2k+gRhjgoIp7WlGL+8RGZMVP7Re/u6mAwRbOSGHuwPHrgy8BLlE4imYv
ZlAeklJItRAlbJcQgx6mIIUCEVcojJlgn3eVRTVzFmOwkFVZYS7EhZJRyVRZ2wAQWg7MNngPBtm2
vvPas3DasVUzX/PJTb5XPozE1sNFBsR3heomp+DroYl8oqM76dIidhf+JXsMRw1QdffsSjAVcLcu
Yi6GtAp1SL5pTKobHFS6ol+sR+FIaz3c1jHo/1dZZjLrDIejm8IMid29ovpjNFmjMafQaSnW5ffw
qt3YjElmEOZ4MA/NFgedn70Di8hDeaHYRc2vifwIFCaQs/HlNP2TVpIT6wRJ1RugMspr01ourTE7
AEZ7t4fpbxvpPWMWt2vAbzU2L42dj3CxD1YynEHLYQW/qTO2F58KKXvoX5i4inpeq2Ml+H2jnnHW
yqcwt9LaHdtdVg43CViVKwURtC/X+YXb0/HepmmIHAvC4E332nKpDkK8WjNsJ6ELj8x3kupB/tAi
VePh/Hdy1DkDdCkKnlGTaKbtGp9RbqxQ0xadEIohgeJ91ISPyBHKSoX5abJ4APF65ClDVOMx0eY2
kClg1cSv4fNHjMnMA5+UIs8ZVwX62NIlIixg3Sz+TAOeWDfoanXBSoe+MHMoruCJrzITF3rhO7hX
O7KXTwTHSUDGLaporLdaVwx9PKde/XNL1i756jSIvR1/kS/CKfqC9+czYYA1IQJ6ucBtY/8Q+D0/
THjWzV4MPXCN6BqIly4R+kS/K5vzFrUrfzB0Glkdbpjxg92CrCmIJiMPqDjn8iGRW2i6Uc2iTDbD
q04umCMWb3qClhRQj04aNgR44218Q4wO4r7wYh3LTzanvwDbWo4A+Di+ZVsNQcwaoBrIKWnIRmjB
H7VkJg1dtkfdqdBNP9x2d+o1vt0wAaHy1sICAiXN33iYGTrYnNIqYK4UMJf7zWA+UrJ/koiKkR4U
cVBKWrQhD8pYtCahndsXCl0uHNAJ9ghixK9zTkzwDYgcxCqC4Ab68yDNoxg6nLXWZ4cqXHRNCg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DA8234382004D0"
last-modified: Thu, 12 Nov 2026 00:48:35 GMT
content-md5: HMz3dvWf60MbDuiHprn+RQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ed4ce0d0-8625-488a-9994-5ea588563a72
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-a181ec2c-db27-8f9a-d1fc-faf18a67c308/test-blob-3f6b4588-69e4-b3fb-7e77-1b0298b15a9d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-a181ec2c-db27-8f9a-d1fc-faf18a67c308/test-blob-0d357cc0-6b36-fcbf-ee69-dfe296275766?sv=2027-03-07&se=2026-11-12T01%3A48%3A35Z&sr=b&sp=r&sig=d4hgj0NPVGMfL7nU2r2dYib1kCO4LJyup5Bk2xt%2F%2Bn0%3D
x-ms-if-tags: "coolTag" = 'true'
x-ms-requires-sync: true
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
x-ms-request-id: aaff1cc6-5dce-456a-a26b-8dd2446cdf68
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:35 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-a181ec2c-db27-8f9a-d1fc-faf18a67c308?restype=container

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
x-ms-request-id: 228f7c9a-51d0-42bf-8a04-0ecaea746fc4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

