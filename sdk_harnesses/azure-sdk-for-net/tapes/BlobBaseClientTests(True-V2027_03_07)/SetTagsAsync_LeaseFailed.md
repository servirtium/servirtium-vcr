## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-85285fb0-fa1b-74f8-dbb8-65fbc8638826?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetTagsAsync_LeaseFailed
now: 2026-11-12T00:48:25.2416257+00:00

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
etag: "0x25D25EBD76EB480"
last-modified: Thu, 12 Nov 2026 00:48:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 40371f33-23ab-4b96-828e-b184b9c400d7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-85285fb0-fa1b-74f8-dbb8-65fbc8638826/test-blob-afc05a46-55d9-8fbf-4b21-594b3a766ac3

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
N/VgTHWOVJAreHr39YPosmgzFTOqDvZboJg6+qCsOWVOosTSAzyxuAYvg2Hbx5rHOKfjB2A2GCn/
BKvcU1rvfz4VqVK/Fq8rgl0teouVgNn+c8H4yTIEF4qa0v6R1GSrQAMixh5IByL4t4QCCZ6eaYTS
3uCZ9rYLEJHIJEOwmq35gTqHc7q6tmyfABGuAQ3r/Gl6vvaEEklNFrWMf+LeRxzWCYhkFvbJFydz
+vakXQ6D3CjaNtu3dW/xOVwELTaKwLn01/iFh+VysKfOEBhTqbmmCaK6BBBBH5QYct2axOrw6Tk8
r4YW/lVCZ4Y06GRXno+jXiSU0Luos7djbRQI2Ou93SfeFvkykApNd52KDDcvwdRN92bFXBl9lPzO
spFAOo6adwo9eYeWcM4ZRlgeHaeAM6w/uuGE94ANYIL9ZN15DT0O8JQs8kdNt4aYrBbAXnZVTX/l
AH+tFYCJLxgFmAzwnzgbECwSVEFk8gNb7EtqTAELqBZelA29YdoUosIvRx95pwzdpU5JQ/k9gA18
Uik1H+IX+u/2kgorXa9S/bJ+Navj4UQ+jKeywWUdIBT/QQ+x34LfF0wvgxUBskef90VHv0timHDk
9pM7ZDmJ2XL2LBygoB0vnh1es10vPNlfE8kf1WHInaiezOnupLMTpqqiC4Yr/1coFyAuBOQTtbm5
3FBvaQMRLo9zAdMzQPppSg2zjDFTMxRy975AmZjDixYvNcdiozymkdz2t/2D9NclxLnXXymIZag7
/XJF0JT2sHa9BAsyB6bRDPtUXHwX7gPmGtXf7Cvtp88fJqbJYcBIAAeGxvDM870TBVMuMwgsJA9v
XrW/FsNLz1w7E+AAB6s6DFx0kCgSGicXzOfYv3TG8wKXWgMKiOpDO/aTkODdEv2o9Cast5PnXEOO
qErccxDodB/eaa2nL4RxMVUxf4pHOrnpMMpNGTtusP6/fOCfZ8jmqxvA/qlPAMSiOoY9td24Rm2R
8kJFmlvjb7iv6LKk0sqNS9RvhzsPmTAGq961MPohBjZyDnSFoBDA3I/woBcS/mi8sGoISb8xgVgS
P+98Lj6+juF8McNVCKrEr6qsHvkY9K12+YCPGL12QIwbcmAgRK5QMhI2lcykZqe/RJoVhWNf+ktC
BTS9LnYjBfA3OpVJo2r7W+vn4V7g0ZLY0NMiYbspu3gV3j55kwOcEo/cbSwSdaEvGSp3eBnsYTSi
5F6iAaQ1Dn4dNMQsgcjoSs7OBGNmxloy80eQsUJfKXwJ166l+RHrpl+t9UHcApdijy1KHV3QPB4E
cA5cpFw7vQtII6oaQlG8410EuNAYVfCvLiIVFAseOJuPoYkDjgEDcTc2lN/tSEzcjToAzINN6w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DB5CE575FF3890"
last-modified: Thu, 12 Nov 2026 00:48:25 GMT
content-md5: cvIA/bVyDsPKAYMUUojSFQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5c152acc-02c3-469f-b2fe-2e69714d242d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-85285fb0-fa1b-74f8-dbb8-65fbc8638826/test-blob-afc05a46-55d9-8fbf-4b21-594b3a766ac3?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-lease-id: 76ac1d1a-2639-ffa8-29ea-0f8aa1c7b954
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: c09a04e4-1ca5-4038-ac22-615d538646d1
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:25 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-85285fb0-fa1b-74f8-dbb8-65fbc8638826?restype=container

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
x-ms-request-id: dfd7db1c-9604-4608-9b3d-3a8004b31ed3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

