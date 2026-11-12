## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d71d46c3-4116-364e-5375-e2ca3d0942bb?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesDiffPageableAsync_IfTagsFailed
now: 2026-11-12T00:51:54.6454034+00:00

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
etag: "0x255EE78ECC29FE0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 395fd0f5-04ab-4181-8e2e-63bc9e3efba3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d71d46c3-4116-364e-5375-e2ca3d0942bb/test-blob-7b957b8f-05a0-554e-385f-61358c83de29

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
etag: "0x2015F1EF04391E0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 389f16f1-d20d-45ea-ae22-9e5fc9295cad
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d71d46c3-4116-364e-5375-e2ca3d0942bb/test-blob-7b957b8f-05a0-554e-385f-61358c83de29?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-4095
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
etag: "0x1F6AC8FA81E6ED0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-content-crc64: krwANv91Xf4=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d0ddd616-a8e9-494d-9517-6949048796ce
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-d71d46c3-4116-364e-5375-e2ca3d0942bb/test-blob-7b957b8f-05a0-554e-385f-61358c83de29?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:54.7070000Z
etag: "0x1F6AC8FA81E6ED0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 80f8dfa4-1c34-4444-9939-ddcab2760842
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-d71d46c3-4116-364e-5375-e2ca3d0942bb/test-blob-7b957b8f-05a0-554e-385f-61358c83de29?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
eJgRzicnG4Ew2ojSRE7gdsi6Q1XLUp1cKUj6k5moY7c2FlkBoryEKbGi2uI/R8jOrsPyrVfIByX7
tKTfLIjoiHbRmy3039QMNRmjKXi6HeJ/LOTVtbVgbg80Be4XpPwpuVJrbaua2c/v5ng9JN6tQJbC
XwCjEtLBcC0dwNnl9JAcem8lT6825VIV5s89IkoxhsVXVUT8haaAqv1+fRn2CfHnIaluiPHni3qt
jiwChE7i7DkTjp9LH/XIpKWyuGg4Ht3eVQChwv7TcMnKTvZ6fSWum5Dg4npRnAKzpuNMNNMSdXBP
JC9NQSk6Px3VgdD/TSd/BBzXWDxijLj+7Rwbhzz2t9mFK1n2YFpnpqJdfBoxs1i7zDC2Oxw07Zd2
T1QNHrfh3sr2eSLNiKPBb7GZBQ+dzTnDX7sLQHu9UT3CgBEGWofqe51QOjo27kOM9MtqmuiH2IIa
Sb781p5OOSfkCgiSuxUqrolyTJL/jXF3fkuvUrdVOqeO6xHJ7qX+AgASUeM7+jm2QOxeFYvvG7tN
hVdTnudwjtBhA9AEYcDkc0qR7DyNO4QR+BHK9yUbns9Ve2hNq2MZocIT2vZpst8seaFAXi5/wEnS
QabWppeqRWUAruVXl8jneEt5eWGOqEYynn6D2kCh1boee2m8QvsraJSQaQP51OLZWeXjBkfnQ5hf
pAcYJ2skXtkqOBtfKjVQThDN/T9COMqcqoFbvs9zNzjQXJ7zEkEpbAopzpvGei6vkrc2GkVZHWs9
fH3pyaAKtwHjjs2WXTzPpJE1GGku1TBTqysXPBzydz8ztpXEP6JpHxeZ4+tgGDV7Z3W0IwUCDqdN
lh5083rk8ReOY6anC2Tuy/lRlPFE8pL2nNWmPVM6Maftd6mE9CydtfLU0rWO01wRxVcLsHm1CKOL
flakPbPDUzL+uZO7adfMtN//byDdaMh5lXf7LoAuOG4F+XbV+Hc+EH6CjxrIVlyAP/uZtZiDrhaO
K6g7yCWx0IEltXBg97towV+iWtitsT8beu+ElYLVgktgRs3PA0dY0b+ZoqHrIEdAMfQ54FM94Hlp
H001LDv/TzIkALDtmb0XSYkYFA6dMFqnRGONnKL4ImVTZeP5IqSEmlNuxh+WUpc2IZfJJMxry+/z
jujXcbKQLN1KmTPaHSbllHq6L2k6EfHLVnsLLv2Z6JrzBpS7rCig3ppCTLlkXANw5JBRsJyGuXz3
Cxs3hf7fsbGY5xeRKedRGlDP+MU4Z/p3mkltRzf+bU0XxKENaFmbYpoHy3Xs3rqo/5ZLt8G3vqQh
wOq0cWl6mnrJemVGRLH2M5UqMZuFiryPxUehsrWMXwX87Khv5vAxjTH6ImRUYbrkVIMrjY0Imw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22E5784423B8F80"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-content-crc64: bIod9un5dOI=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c2e8ba1f-59c6-45bc-add4-952a7036c47f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-d71d46c3-4116-364e-5375-e2ca3d0942bb/test-blob-7b957b8f-05a0-554e-385f-61358c83de29?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
eJgRzicnG4Ew2ojSRE7gdsi6Q1XLUp1cKUj6k5moY7c2FlkBoryEKbGi2uI/R8jOrsPyrVfIByX7
tKTfLIjoiHbRmy3039QMNRmjKXi6HeJ/LOTVtbVgbg80Be4XpPwpuVJrbaua2c/v5ng9JN6tQJbC
XwCjEtLBcC0dwNnl9JAcem8lT6825VIV5s89IkoxhsVXVUT8haaAqv1+fRn2CfHnIaluiPHni3qt
jiwChE7i7DkTjp9LH/XIpKWyuGg4Ht3eVQChwv7TcMnKTvZ6fSWum5Dg4npRnAKzpuNMNNMSdXBP
JC9NQSk6Px3VgdD/TSd/BBzXWDxijLj+7Rwbhzz2t9mFK1n2YFpnpqJdfBoxs1i7zDC2Oxw07Zd2
T1QNHrfh3sr2eSLNiKPBb7GZBQ+dzTnDX7sLQHu9UT3CgBEGWofqe51QOjo27kOM9MtqmuiH2IIa
Sb781p5OOSfkCgiSuxUqrolyTJL/jXF3fkuvUrdVOqeO6xHJ7qX+AgASUeM7+jm2QOxeFYvvG7tN
hVdTnudwjtBhA9AEYcDkc0qR7DyNO4QR+BHK9yUbns9Ve2hNq2MZocIT2vZpst8seaFAXi5/wEnS
QabWppeqRWUAruVXl8jneEt5eWGOqEYynn6D2kCh1boee2m8QvsraJSQaQP51OLZWeXjBkfnQ5hf
pAcYJ2skXtkqOBtfKjVQThDN/T9COMqcqoFbvs9zNzjQXJ7zEkEpbAopzpvGei6vkrc2GkVZHWs9
fH3pyaAKtwHjjs2WXTzPpJE1GGku1TBTqysXPBzydz8ztpXEP6JpHxeZ4+tgGDV7Z3W0IwUCDqdN
lh5083rk8ReOY6anC2Tuy/lRlPFE8pL2nNWmPVM6Maftd6mE9CydtfLU0rWO01wRxVcLsHm1CKOL
flakPbPDUzL+uZO7adfMtN//byDdaMh5lXf7LoAuOG4F+XbV+Hc+EH6CjxrIVlyAP/uZtZiDrhaO
K6g7yCWx0IEltXBg97towV+iWtitsT8beu+ElYLVgktgRs3PA0dY0b+ZoqHrIEdAMfQ54FM94Hlp
H001LDv/TzIkALDtmb0XSYkYFA6dMFqnRGONnKL4ImVTZeP5IqSEmlNuxh+WUpc2IZfJJMxry+/z
jujXcbKQLN1KmTPaHSbllHq6L2k6EfHLVnsLLv2Z6JrzBpS7rCig3ppCTLlkXANw5JBRsJyGuXz3
Cxs3hf7fsbGY5xeRKedRGlDP+MU4Z/p3mkltRzf+bU0XxKENaFmbYpoHy3Xs3rqo/5ZLt8G3vqQh
wOq0cWl6mnrJemVGRLH2M5UqMZuFiryPxUehsrWMXwX87Khv5vAxjTH6ImRUYbrkVIMrjY0Imw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20082CBB5966D80"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-content-crc64: bIod9un5dOI=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fe821779-b82d-4067-b903-948433ec64ae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-d71d46c3-4116-364e-5375-e2ca3d0942bb/test-blob-7b957b8f-05a0-554e-385f-61358c83de29?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-page-write: clear
x-ms-range: bytes=1024-2047
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FDE74ACE8CB620"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4319d2ae-2c73-461f-a927-d59088218103
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-d71d46c3-4116-364e-5375-e2ca3d0942bb/test-blob-7b957b8f-05a0-554e-385f-61358c83de29?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-page-write: clear
x-ms-range: bytes=3072-4095
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2334D3DFF1CB7E0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ad968224-844c-47d1-a916-0f700aa0cc25
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-d71d46c3-4116-364e-5375-e2ca3d0942bb/test-blob-7b957b8f-05a0-554e-385f-61358c83de29?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:54.8210000Z
etag: "0x2334D3DFF1CB7E0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0756061a-7966-4f52-b3e7-b41ef4f557c5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: GET /devstoreaccount1/test-container-d71d46c3-4116-364e-5375-e2ca3d0942bb/test-blob-7b957b8f-05a0-554e-385f-61358c83de29?comp=pagelist&snapshot=2026-11-12T00%3A51%3A54.8210000Z&prevsnapshot=2026-11-12T00%3A51%3A54.7070000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_10
x-ms-if-tags: "coolTag" = 'true'
x-ms-range: bytes=0-4095
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
x-ms-request-id: 8b33beb0-9839-4794-a884-a3a2238aed20
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:54 GMT
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

## Interaction 10: DELETE /devstoreaccount1/test-container-d71d46c3-4116-364e-5375-e2ca3d0942bb?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b47ad07e-308c-493a-863d-d633ccf59063
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

