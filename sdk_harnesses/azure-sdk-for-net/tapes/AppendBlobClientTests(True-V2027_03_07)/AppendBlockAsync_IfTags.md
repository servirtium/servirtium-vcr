## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4332d666-39c4-7e40-69c3-b0e70c065f0b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).AppendBlockAsync_IfTags
now: 2026-11-12T00:50:44.6018011+00:00

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
etag: "0x213E42F918239C0"
last-modified: Thu, 12 Nov 2026 00:50:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9e4ce36e-0334-4e7f-a52c-6ca0745538f6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4332d666-39c4-7e40-69c3-b0e70c065f0b/test-blob-07e86eb0-6abd-d31e-557d-d4b3a0f15200

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25DBF584821B860"
last-modified: Thu, 12 Nov 2026 00:50:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c3190a29-25b2-4557-976a-5a2fcf05d5b6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-4332d666-39c4-7e40-69c3-b0e70c065f0b/test-blob-07e86eb0-6abd-d31e-557d-d4b3a0f15200?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eb47d3a4-7b60-4dc7-9640-8d0d4b767050
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:44 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-4332d666-39c4-7e40-69c3-b0e70c065f0b/test-blob-07e86eb0-6abd-d31e-557d-d4b3a0f15200?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
PWSnaLA2dl8hU4jkusHGxUaSvyRyzAH8uF/tR2SN3XdwsKqoXvZaefeJ5WrhORiUtg5sDjEtjnBi
q7BRSS/6lHUQcwoXHmdQN0Us6OeXGn5HWZBWIM9GQiE5RbNFCTDIj1D00MUOfJinHNbrAaWJy5Ey
CfCeo3SlyjDo3dizCy4VZFmWokm4Odz3rgT4WkF8sHohEv8/KevcTgaVJZ/A8xCn1pxM8ihHetAU
p/RwrXDvbCxekfgv1TtuulNDIxM8N7vzUISlL75S2pguK4L2bKGVprhyYmEYeABh3TjUBFa81285
fFzsSTxuC7dfAam4eE6yrX1aytVZ29iDQ1KFfdVBcVQSvO9FqFx8A1aquHdWqGXqIlbZYg2a36GE
aAXq6Y7iHo9VpbtebQQg3sZ/ryJhLZvtm1t+aA9HeNxOwD9WkhrHyJrnAQKpi7VRuINGGjB+Ijtq
/E0yY7aADS3eEKzEykyrt+eIeiuYQw+mLa+LAF2sz50E65XMlWTkZvPVy3sIjO43mmNI9qgP0rk+
jDUG9A3PMUAOwN623iKCpBM4wniUnaDBVGX6ZNn09Bncjggv3XHmBpk6+swPgLxBxVGV1w9Aqu6V
RaCn1c1nGczE2lAZU8ahUrvfWaPUsdOpuJ6HXx0Jm+QamZfQPzHL0uD/S6ZsKHKK84RTYVBLwZTN
/Rwv37qvuj9r/rov0BOKE4bC1GYtPZAs/GuYtTmUztgDA0EVnPImUJBmACm4WyJxyU3JiewuoL+M
A+JPFgQF1zDhK83RdXeTm4TVxj1mc6FIJ+zsykTs1GKCiJgQ1zmLYSn41jBVn1TVNe5oWNqCJY9B
Bu8YGQ3s9VZrT+zfg8RKSWQTbZ1x84eXFpRWg3uI/2IJztBJc0cbDODZ6U9o9rIpHQ91brjy0BNn
gQN4lXHb41CJ1bXzANYd+GG8lwk3Lh/iLGZsEpCqF/294vJEo3Zv/gb/3yH8Nhw4WHZXNTgJMFLk
lmkLbtC/3r64Nh7k2FTqTZkDOE/+5fZJM7oaU+HEs7GgYAwNY481QABiRAD+VH8hbOieBvcC5bBy
wjoWpIrc84JsQ3hI3ekKzfdOm6H2S946+Of5Ja26nXpcmqFUH5t2hlB9kRAH2Y/+lDgAs0oOfHZb
26yj483Usqb960JIta5c2BVReLnOMx5X+5F1uekvTR4q+UTv0qKCqd5qCe1Ntt+Jo9s1vQO8jaeN
S+g8Xvi8zZ4jHbxqbQZyzs7bYyoxCkWx7BYO+pAabmucYYa6RkrmrTtPKZgiHzbUwu804Sp9XECi
inLirtMOCa9RzQt/t4eE9bbu4eGsjs3fOTeg5YxBHwVGF7zYA/9oQR/p0VErVQtnsOx0jnpf9g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D41861F143B1D0"
last-modified: Thu, 12 Nov 2026 00:50:44 GMT
x-ms-content-crc64: A4Rb/1wbKU8=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6bd2a4d9-c660-41fc-ae85-6ea8aab0fdc3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:44 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-4332d666-39c4-7e40-69c3-b0e70c065f0b?restype=container

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
x-ms-request-id: d5704fd1-70dc-4d7d-af1c-1b44a40d2275
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

