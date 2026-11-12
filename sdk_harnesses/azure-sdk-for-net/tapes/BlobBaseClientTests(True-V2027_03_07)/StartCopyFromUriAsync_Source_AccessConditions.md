## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-fbf19d56-5cf4-0a38-1f60-dab71c10d5d9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).StartCopyFromUriAsync_Source_AccessConditions
now: 2026-11-12T00:48:31.0099091+00:00

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
etag: "0x1F1FCFFB0867D90"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fec19b9f-e83b-4c46-8940-bed6eb1e715f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-fbf19d56-5cf4-0a38-1f60-dab71c10d5d9/test-blob-7d144253-ac99-7064-2780-1aa34db40946

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
NdYp9y7bfZ0JIyC1JdVrasdryJUe+sqpOIDTdEKUvGtWlIFG596qeMR3c3aMr0tRFa/c4ex0KDoL
f76tBwladGa1XpFTJIPowE/Qp4dUHYg1gV6Tt9t+4mtHO2cf/HG7HP4P1lG6/fAs9CCdpIGztmI2
eIaqx7yKNnwlDOkcyMPeFIqIRUY3eoNuZsO64T3qlIUE6YTrEFVBhKDUlPEHECtcv4/2KnEc/v0C
PGD5z1U+O3dkF94/8wM0RsCmYuaSZ1aYXiKu82kT6OqG6NT1SLRKlll5o/hMHMuLweSxdZwXb9QJ
YHEykEcOUC/zuQovP/0LW8yMGcReS0FWIzGFYnJObnn/6+dDGAYSa1LIWWLBXILmpRrQilYQqxUv
3G0ViO29pUuQL1QWx0PFeq1xlvLelMavn71XfuMi7kDSEzyZ/OJlCrQXMCwt0N3XChConxQjUEem
ZukwZSZnbkATQ7QHLH7LC4s9x2Sagc/fgHPTeU4rr8P185b4NaSNsMLrGYwp0N6R3JSJ5YniC+Qa
UOWzk/Tx6JTxETno09bmsBahr2dCtbCVQp26ock5Euex3eS/2R3N+TH4OL6kqQm+ojRzQVx82Js0
HlFXN0bKt/9RNvXxJ9b507U2Sn3y8JmT/P+UxtCKNAVJirvLdsLqLYC+UnITzHpeeW2mRo4eQi24
wzpHNvEvxgLwqJwbLV3zSxz8NJ0mgDCENkxj5O53KkiOE7KHo/ePj4xwIiPeQ0wPs/pxIg6QkUMK
wv+ly+ITeX1UjBmqa6glbKURtl0MpvMAVDDzBQg6/YJvfeD46sOpXKmmibYyZUdSTLVpftrm/RwL
pHeyIHR0Go+XO+7ILYLhaFqzZhw9ze/ooblT0H+niX/E7EVM9zw1MW4nmypZiR8yhxaAMpf/zteI
yX66IUkQ77FvBEE8lHAdfjStFjLFjxeZIEloJ1fnxB1uxC2+ehAlF6x46oXe9vOlY7NjUbikwzpm
IQAAp8dahz8jztBDXwQkiP+GTKSRuypVwsSjhHJkyQHzV1kPJG/kHmJGuigiYgOvP8m5HnaV1WXW
quUDtgPMvwTPUAirFGOPoS5BSwECM2DA9ESpq6uKXYLzOXqK4GdfefsjUxL7BCtlKXxIU4lj1HeF
QsG+IhNZRPKGt9rpBcHG4tEG3t9NxfAZRIEuQgn4kGUCBJ2moFbnyg8fdExQfCO7gXG4XfaXN3zR
pd6SKgLpjSZ05gAjIEJ6HxPQLlGjyMhdcsCYQDNva80h1Pp4VJ8NNuYm3JUjmGEvPT3ixwgrLd0W
NLhBUU3zBXszAktHAspzw/hqfewyOtleaQP1jKPE9acdYiDny+WZMtYa75YW5zpybwQQwa/w4w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2436CA63A886680"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
content-md5: iWVbOAn6QISHqMH2lPCWng==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af25b188-ad26-4a74-9b91-87e48a17447c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-fbf19d56-5cf4-0a38-1f60-dab71c10d5d9/test-blob-e8e2dffa-fd4a-d879-6e0c-a329a0aa8cf7

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-fbf19d56-5cf4-0a38-1f60-dab71c10d5d9/test-blob-7d144253-ac99-7064-2780-1aa34db40946
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x268E280D87F1080"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 94a64ea4-4a0c-4412-ad87-8cd906cc4acd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-copy-id: 24c1e865-e6e9-42ed-9d03-8e74d7b75e99
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-fbf19d56-5cf4-0a38-1f60-dab71c10d5d9?restype=container

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
x-ms-request-id: 8401f401-6f75-4eaf-8915-fd618d442a4f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-154bd113-4a18-4842-81c8-821c9eb433f7?restype=container

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
etag: "0x1DDBA61FB5F1880"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 98640c6a-7619-4cbd-bc00-45a5c6d8f549
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-154bd113-4a18-4842-81c8-821c9eb433f7/test-blob-07267e2c-fde8-344e-5d42-818972bd9ac8

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
4wz98GTay6+cmWaCe1w5utms/CKEhA8Wgha41cm41sMuujmStkOSUbJ3a06WzLkACMawxcB3RF79
5m1OIvXl5MOjVMEjpwOVGatvDRnAf7ZduMwDBxECtnXalM/VRC+8kYaL8nj43WHCGqsVCDdFPGe3
8Gop4tyyoJ1LSBIzwNV7s3uSNYw+ZdtrQO1l7K4+lFhoHlPFk6+q2VLarZROjlrWmlS7sgbaeYuO
vaHvTLTvDLO6yqKBtR/L6Fw6ZLhGHLGSjlJZg+JRjqXHNtUOu4yd6qDglMS4VeQ178qqnxXTSKHw
XL5hlYnRaDz9uX9JvSzPnXkXZoft2jluJJMXpu+Q9O40Hl7OO1QXDiuHu5tk6zKe2wKbvOIZAoKE
83H2usJMbcWRFZ/NAWEk/1dbZR+dCTlgecvt9DcMGhvcSUjjIVRpO07W09WT0Nmgd7yKvZ1i5+o4
lUH2XniNhfqD8bgZQd4D8irRxzVjzajxTHx7gV1+eWFdq4sSc9zVSE7bD94hhzbeh8tzkR+01MeY
BBL7EgOdBXdWu5ZS8H9N/H7niL7K0MRGnfmRC+hCqNbEem7K2TZKPQlnysygi5dMJZWgzUwJzjNN
tXUJDPqPFBK/jnYQgiJInEq0Ygb4phFiROVToduKuqs6fSTBQDEP2La64P0hO6JyWDEBVGstVA5j
p8cUO3I3NdPK1gX+h1sYpIpQPsYUQQhC4EipiGZADSkVXZlq+5xDgqopVmWddNHW6bDg3RZITmW+
0Vspja1ticnc6CnBranuDLsb6uqipGx30561XzATzQ4zqylAGfT9vM2cwYunFDsG8dBaLGR7Gyzu
sroOtyqZyRoajgJ/rfPGHS4dBuPh0L5jr21fuKGquI/9Umc67wSiA/hwjIY5h0Tckw41XRVJDeH7
qwi8ORB5cNVygluLjC4pegLqcEQ4KicpgiWSdVp5s0WFPkT85sro9xywxgToUAfgC+MTXpydw4Hg
krbq5/t7+M4VBk3qLZM4Anknh2MiQDEesWl2ZlSo6HrDG1MT/RAgNM0200q59t5P2lwjdTsdvVGE
zDWSBZJ6bB3TJxFAJARpBlOV7G3mZbuKJ4v3hXI+pV4BjjHaji87vGYt5c7ND7ZYum7oh9Hknmd5
B90GgueqlIGzPpbTjngjWjAHuX/svRfVn8oEVR2NHfDJYIdRNTl+g1FMGtEfhSv2xS2g3eTnjErG
MOMcpj5kJiClCS3w0ST2iDYuoKNGtRqfDZDw7EAL4dQ9iwRWYdwS6PSwenv+BfMIqVSuueynf3rI
fZitczngmSdZs0YgoCZZG7evljueoQid50LrXSjnlgyJjeREZHW6z+BTpFGs6AktVZ019+k/Kg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2558944C6AB0E00"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
content-md5: euHgGap5qs0uH9sEOryZqQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e019d735-d171-4163-8afb-1a3a45552326
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-154bd113-4a18-4842-81c8-821c9eb433f7/test-blob-8c0f90dc-f5f6-ff3c-721d-3a96124214b6

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-154bd113-4a18-4842-81c8-821c9eb433f7/test-blob-07267e2c-fde8-344e-5d42-818972bd9ac8
x-ms-return-client-request-id: true
x-ms-source-if-modified-since: Wed, 11 Nov 2026 00:48:31 GMT
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D2C9CE50F25690"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1ebbabe-2107-4b6b-ba46-6fc109d92100
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-copy-id: 5407d337-505f-46f8-a861-71922c8b6da7
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-154bd113-4a18-4842-81c8-821c9eb433f7?restype=container

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
x-ms-request-id: 6581f5c7-208f-4501-8c0e-350617c63eff
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-5bc6f442-fc4b-f1b6-ff39-bd088ab19e22?restype=container

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
etag: "0x22FDD8EB4CADA60"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a2587033-d201-48d7-a1fb-2d37ca660d4a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-5bc6f442-fc4b-f1b6-ff39-bd088ab19e22/test-blob-b407634a-e854-dac4-a353-32347251f7eb

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
QObzAyLj3uDaHoy9NzR1wH8XS647YGFZMOu398qCfq1B0sejvpv/Z4Un2jZcBqJv3nG0WgVJsN+E
mtI2K+YVV6DefGVs0QHkF+QpE4Yr/ClISBhZzSOn9yHoHiTIyDueEoKVfYo9Ag1vz0MhIJxZWJ2o
7uLNvIp8NoRDhLLdHE6oigEDln+fC0YL6f3ghteFjsWHH9pZ0FX3GEYG+X5akrP0eZWbVcIdCeKc
wtOMnLCsvvXsVfxzT7qrC305mRHIsVZJ6w1C6TkCahb4vQ6Ca3yVWTqIbT23gSnb70lF5G/Q0xB8
Q7GjatS86evle5GsKaAAoz/XP0QZkmrjZvrvvYWnJ+n9BijK8u9lzINS0QWYLsWpREAv+ZTMY7BH
wAPazCxlPlOoriN4NrFQcXLAx8BkSzg0RnhEdy5VMaJ3gzHriwBW7JOy74CiMA6P34ciC5zw4nXL
pYa0IMclU32AAbJ/ZeVyatosslu3khZqtZimMiUGhqC8H+Z6oszMjJwCIi5bD3mhsKHBwzAaExJv
SWoufiBXensSw0X/98cOYCW+tXDnDqUeBIKERMJvoQzTClhhnQ58q6ezSUw0orjas2MKW16iiDvF
EHmd0zW4oiE5K+1urMMXQgnIM8RZ6WLKqZBfZEatMYEcnIyU3tdx+qcq+3fKawaf8xlU2VR3ayYX
0ymlWT3bjPlrURA2gmMyVjkdL+7q/z6Kv3EsWFctpTBlfQutzKFqT299Xhn2aXG2IoMbWjw4LdPr
G5rMrzOiPqzf0AVYhIqYsuB/bKEkk1YAdjXUEUv0LU84wrEGnZ872x9tFphrXp75g6dcuMAyx4dE
yzj9zi1g66O1H8HYkRVAQ5GBtn29lBiX246jmHSPBvsqwtJnPQzyDCv0tT7cIPKSHHQusBAJhjcg
ZvOfvFMuJRnGrs5C2QaFjqlSyd7Zu7qcEXz/YVXqIDyaRtcZU0/YxpAkFnIjT0NuqSJnt71YR6s4
A6vXLsTE242SqJIuazpZegNOtKRHeMI4kbgyg2l/Qv8s4FCkAZfLYDrlkaewQD3nDj26CZIG8Yrp
np0MkVgkEmWTAovqtHlrglRqYucbiFF7S3UsxThtJe/Gu2L6v87hwH5BHD2x/VnDToY9m46jzhVM
kEbj900sJtycJPkWccOFiaFo2WsTyU0baHayL4pgIu1NrS6I/cgxFPZgFNlfrd3DtxLsO/SqOMf4
x4/WevZSOwEMyMOU/YvYN8V0srR0vLqZ7nd3dOf4o3VnjzY5Wpn/DtnXU+QZLrmHEwMvNYUShAvV
PYt+2scaEyVOLW5Vn9wrdaTbnWjVgL++8GDjyW3vVAoqYx0NgDMRvT+/ywFKMXMmBMDhN+ei/w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EB4CFDBD5EB070"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
content-md5: zNMPY8g4r5bRrhEC8lEkvQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d9cfde05-8d4e-46e9-a315-4cf04206b107
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-5bc6f442-fc4b-f1b6-ff39-bd088ab19e22/test-blob-eac0ccbc-3666-b84a-5ed8-632a3bbf1df4

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-5bc6f442-fc4b-f1b6-ff39-bd088ab19e22/test-blob-b407634a-e854-dac4-a353-32347251f7eb
x-ms-return-client-request-id: true
x-ms-source-if-unmodified-since: Fri, 13 Nov 2026 00:48:31 GMT
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CEE4A17F215E00"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c0e9610e-2950-4c10-9c26-94f536f877b4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-copy-id: 149d3b5e-bc9e-482f-91ae-96eeff4d9508
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-5bc6f442-fc4b-f1b6-ff39-bd088ab19e22?restype=container

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
x-ms-request-id: 564a529e-ba8d-4310-9929-a6629964b560
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-28e0c970-b516-73be-beec-bcc4ad0e1c23?restype=container

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
etag: "0x2725A14547608A0"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 90a53fe9-ac66-401a-9d5b-ed81c5005083
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-28e0c970-b516-73be-beec-bcc4ad0e1c23/test-blob-41606488-49c0-86ab-f506-6c28e7073867

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
58twbgZ56QcNTCt5eoUKT7w/otde2zMnHVkzD0iVjLe0Vd3hnq4dDntYNHMeMgxv/Bxsp2VgCAuY
SVCtRtm/eMBzxCSoKLENIpNbBafACOtNwxMrKOVSU0zRSVReb8ihmbuyq23nx9NrX4TRBAJk10Bk
YILGlE/bIHDY1t9dr7PLumzrDV1+Zfs/wMlhgU9JbHET+g9F2wVs14r8D/H0Da/RBkqWecrj5fqH
h9SFeZ8hjmltSbSjhd5nfjXSglYKSrIaj3oEs/OnMBQVvlQw513r2oCHh8T6LYBsL/qUEGOjfTwh
a+okHdt2xRmgjseKNpfX56fWgsPtH2L5mIP4Ex+wcUAXD3xzxr2kEMGrWp+54fhjvCi8zfp5M0yH
KoVYfrL57xyGcicbYyHpMnEBQsTCQLaKlFb39KRFntsw7Js3TJIPsmqDMm/RSFgH0puJd/GHxerP
zelcAft3QNNM63eFsubf8pBZPw1GuUz98CEJvCbpqCaxaH6os7BvC/KbhV3ggSC1qYVhLYbciBSc
XhHZboStYkJR1ElnNj7f6jMbqzPvHG8BVBKgiHug1N9qDFSelZxt7iMaj6zWTXNHgUJSwd3grUGi
2BpxDNnGsABq/CrpQFSWrbwQ1IzCKgafWQc4ThMBil4S/L2C/OFJU9+sa1FJXUDtuxMg0Ni1360T
0rPRjmLsaHLL1kSXE7HbxoGtFr+1VfzHSpIA4LqGXR0Qbioud8V8vwLefob8VqhiRQlXB8juXny2
CkPQ7Ii4RHgmh6SGrU+7MFe81td1y/TpnZuwL1ZVIRCud22BrNN6JjkN1c8D25i6m9dxMoekQT9P
5k7sBxUi0WWU1zXhOoODQbCeaPUk5sID9pN/5O+JCjYuMcaEjh8j6gRqbgNi2GFT7fDXBdhJK/+M
6RCBo+11C83/swi9/rOQe33xune+oR4yK/b/sQRd5AbG+KUOoUcX9WM2YyRZle49RopbV3GHzkfx
T3j2dlnJoc4B9wYOgtk22sQUiD762ZYIwWt5Ao2VPipdHVLPIH4KbMFVV57oL8SxJH2sc0YJ93Xh
7rTuUJ9Ba7jbsWWGZ7lGCRt8pIH3H5Kmx90P6cvkUyXc7TLKHBshE+zmDH5fKr3EZmkqjVL06s4i
R4jCMoLs910/qnqGe+3/W5CVERMUR50fSoNhusbS6ANjp9STXuFp+RUgH4BDPep8KjHCXti7DgDr
o+f+iz2XbcJ3ItQZbPyvKxj+8ycd3A2Z5Y+UEIkqqJnUqLv5a27XiLK9zBoVYr01EjLAvRrYzcba
ZaWtA1w4THo7RMRAtcCpJmt1XxDyg4LRX/1Waut+/Nr0HwXIKYVWhX+g2h759F1yFpavYm626A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x211CE7FD4E0A4A0"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
content-md5: GqbaimYmjxjcaA7EuES5rw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f588b85e-4406-47f9-be5c-b2f477b82b81
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-28e0c970-b516-73be-beec-bcc4ad0e1c23/test-blob-41606488-49c0-86ab-f506-6c28e7073867

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
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x211CE7FD4E0A4A0"
content-md5: GqbaimYmjxjcaA7EuES5rw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1bb35699-cddc-4818-b25e-59f41f9eb554
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:31 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-28e0c970-b516-73be-beec-bcc4ad0e1c23/test-blob-a4db23e2-e15e-8fe2-bc48-ea4b95bbe1fc

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-28e0c970-b516-73be-beec-bcc4ad0e1c23/test-blob-41606488-49c0-86ab-f506-6c28e7073867
x-ms-return-client-request-id: true
x-ms-source-if-match: 0x211CE7FD4E0A4A0
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25C6213C6535F20"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b532549d-ba28-45b7-afeb-fdd4e2177241
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-copy-id: cb916ca5-a6cb-42fa-ba36-5a2bf6a695a8
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-28e0c970-b516-73be-beec-bcc4ad0e1c23?restype=container

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
x-ms-request-id: 2286b126-e8de-4e66-864d-f68ca6fa9326
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-90d91fe6-a851-d864-6aa0-e45354ce996b?restype=container

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
etag: "0x1EAAB6B6083F140"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8f72431b-ba2c-4316-823c-4e2bed6e1cb5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-90d91fe6-a851-d864-6aa0-e45354ce996b/test-blob-a523373e-e14d-a4f7-9c10-1ed50ea8c7b6

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
NJnJQ5Umljm+Azm+/I467a9/DV6YPK4FJzXzQYqOycHYLR66BVXWGKHp5kqnOKcN1TAlj5tpHvjr
xBtfMlWvLzl35c5wgOdaqPW8r1ZkXe6N5mtZaTombw8mz0E5duVMObYRL1PYnVVIy+elrG+hh2Ys
0UzqVsb+UXa/SbCmIDIPcHWgUi2btUgVEZ1TgMKfhEjaDKSZYuPvEt7cGFSkoaq0ljv5ATQ5kRwD
1EUpq9CzIMRozBSNdQ6SsT9Ov5z0cG/ynuqHpYMToXuIlY2dxWcOKPiPO9WWJyAtZlD16tF/D2PW
Ng3lLHpBVCqYBeCA9OvYQJakZTSZXHfKWj4zHrapCIYqx49ZKPt9Teeq/SE/rHFlHKo726ouPdqW
GtI8DjZ07/1ZVi1cfheaJxdN7l5Viq3MzgEMbi3b+4q0ww4pQT+wNg4k5lVECJ6SoLOT4E58QI8k
b0A0Z4DQfluip7sJcebYnLdQMaRYiMVjes55SBo7OIJ+BNH+fM6NU2j6omHiiC7MukOXKw/rzOd7
0O2yVjVAZm84i20U2SDowt08XuZjgPGfrI3WpAxzkzjqg6zh2/0yuTvxqv3BuOEjrmkyrm4BF0/8
EqqnacJixfg0KlVzB+fgCqSqcdbz3fSrs/WjQOTJ6Wxc5MhTilB4j+UFjI2Mr6eBUqTJVqV5CDW1
+7bMvoQTakDpFyIejH9UMuLw7VBmHwNOIe5AAJPH49uTnY+arNBg8SFNo5iEY8UldSPCiBrkTtyz
fp2W02qtIjRGi+/vuoYSkPwuGXxqyb4oGopvBFrArk6y5i0zyh63oIFkPtfWNbudsPgetjVgSLTe
bbjfPR3Zhd2gPdNY3sXed3n6BovnUuXP0VNiovgZUp54VF1l12Jjirj6NfjoRdIyQD68ZUEp9xrT
EGzKd+Pkh+o034poeJ8Wl3vS7B3t54yBL2G5XO1cT11Ckcf2mBPVFa0Ns2VHysiepc3GVwr85ijf
SUeCKyv915AsJefYIP5n/ddv3zMmOWWZGrYflvdSRaueFk/LU+qCENzVG6TgxoXOXloyjAb1uA/i
6BB03UGY2d87OQmvm6nt7c5XUR7AuFQxUDidH7mkqV0/6WraDjObPEHFpY17H8KwRZ84nmfxIjC8
QowJ+7kml5Crb7I/E9+bvBXc+xPGtTF17NoZbAv2Tsc6HsumkUCHng380LAPcTLAnOFRFCYd9Yxb
kw7fDSuFtSHrBfQT9SrUVVwFyuWBZXunWc8ppDmgHCg/S/4yp5HidxqOJGs9rae3fL7KFyqm2i2S
OLNbXBDnS+jM06kroq7LIlLL8kEQaasocSd61gT9mHHRn2/dhxsKptmCcdn9jNoQ/vXY2+frgg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FC67BF9FE67940"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
content-md5: eSEBj4xZlerwemTx4PJoiA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: efb7005c-e792-4d3c-8178-1f8d5c07665a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-90d91fe6-a851-d864-6aa0-e45354ce996b/test-blob-ea3207ce-6de8-e374-ce3b-385a033eee9b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-90d91fe6-a851-d864-6aa0-e45354ce996b/test-blob-a523373e-e14d-a4f7-9c10-1ed50ea8c7b6
x-ms-return-client-request-id: true
x-ms-source-if-none-match: "garbage"
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BF54D39F10DE20"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4e8c88c8-7bdd-4a01-b952-a6b71ef6276d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-copy-id: 61140a57-10e0-42f2-ab59-1f27be32abe6
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-90d91fe6-a851-d864-6aa0-e45354ce996b?restype=container

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
x-ms-request-id: 62d0dedf-87c8-4a21-a0ab-92a6920e0b46
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

