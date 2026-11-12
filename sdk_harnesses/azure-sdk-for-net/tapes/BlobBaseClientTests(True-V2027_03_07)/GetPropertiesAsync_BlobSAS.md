## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-65db30c2-0388-9ad5-4ce6-29c69bf72f00?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetPropertiesAsync_BlobSAS
now: 2026-11-12T00:48:08.6135518+00:00

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
etag: "0x20A3BA303EBB100"
last-modified: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c9cc5abb-ce6f-45e3-935a-6e965890eb44
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-65db30c2-0388-9ad5-4ce6-29c69bf72f00/test-blob-882e84da-5bf0-fb7c-3393-80fd835e7719

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
T+o2yrjfbRfjk4HXNwFblo0nH006ZgdmtN8x9YLYF+5uEHaxwGVI+xcWpFzZpMQyOOpvWz8p3uni
zxbYrniUC3yTaSeKqdUo3yQ2I8KqjQ8b/ryYabuuRTGNzvFPb02fgZngRjudqI4VRnwa87onOEIG
va+7/KLA5CT1/Nrj2W/Xl6IoykbTfVYugyI/lFF2ZpauSLKe44X2H2EXp6uzMWwMQ1sY/m37Mz9Y
jHl/gVDSfpZENZG9OLMcMavlu9aqelG2MlD2XmgpshRyRVcMd54QRSgVb/vaTgqo+8zCFnhprRIn
yU4A2yAtG4J9S/NcELoM1XatlQpV2+NFTmKcZpycCJhE5K5PEGkI51R4XQMXS+sRtUEBvBgH0e1q
uo29kbTm4UJbFysMvMQMpK223H7gLgJ3irBbmkx/PRPB5FbcSlafknzAuzO/Bfl89RdqUPRuiouK
RgYEi0b129oYStduMFpXFkoCH3LPuIS33qQ1FeweUlrKUQRPmwc1y+BYprohDsW9EjqqbGsYu46C
TKyhwMXu+vh9o95VCHtCzVSSdhHKltDfeAKyc+bvsZV2zU5bkwoaaqvCo2rmZwq+Z54XhkV8t7bb
wkfDPIYSjvJJ3zos5zlJdwtmB/Jm+BH38wxH1ypQ+RWYgNDCVy4ksBV3nYfQkoBlzQ45Fq/DdMo2
y0h6yrbH+OUlk2dphiDdQVfd7luJJ2GM4gocF+Nl1QsGi4vlqeVesKWhqv4Y+0fuW9RX5YVuraTn
7uisq+ECv75bYvqV+Jdyfj6253xjc+bCLrsODe+Gl97n/bv9sgXDn+s/vJlMWGM95WZHuMYnhHsB
6X0m87HO1cocrfrcdcw58keRI7ZNddVX0SiIP94Xv3k/+8iInaw5cObOMKtpYHCaDsZ+lmDEtHOn
ziGJRpbsBO2AnHkDsFWbV7LPfkQq7nG37jAYmSkYe0ZU4M6KrypQ4iy96MT2l11x4z6u9DYufeCw
0Vhl02rEZyEyrtCGEKiIf5sYbQaswVbTp7braoYQJmLu2t3S6g7B+ICiw+iN6tKWJXWaFhDaAxAB
kiy02fyaIohtmDXKtZWNV3SFCv1uRrzjVEQRdg9SFNfN0VjiDB+ECKFgIFKdy3DfDb+cVPkSkktv
0YS3iKt4GoNe/eQ8qkpUAQFcDSVqRojUMWlQtb/duj4McjubzH/15wXOPs6MomJ0SFP3toUlBYv7
41dCKGTEgUOlMDcPuDSBZiYgmwi6R44G221r5QO55m2voOgos7+gCbyL5nIqZY8fdU9eBWmDQZvI
O0z3WZs/7ErKXxhLWbNmf5JLLmEc23bdTG+zWuADLF9NX3hyqbAhTPonYAZ30xyc+IbXOBI6rA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x219E8D14F773A00"
last-modified: Thu, 12 Nov 2026 00:48:08 GMT
content-md5: gNkZtXeSCzMFWNAN+o7gfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3859f266-74d9-4e1f-9298-b75313cda6eb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-65db30c2-0388-9ad5-4ce6-29c69bf72f00/test-blob-882e84da-5bf0-fb7c-3393-80fd835e7719?sv=2027-03-07&st=2026-11-11T23%3A48%3A08Z&se=2026-11-12T01%3A48%3A08Z&sr=b&sp=racwd&sig=TXDqxmLPu0PUeouV6EI3%2FixNim1STH42mTR%2FFJ5%2FiV4%3D

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x219E8D14F773A00"
content-md5: gNkZtXeSCzMFWNAN+o7gfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 23b76662-6ef2-466e-9a3c-42a508c7c808
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:08 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:08 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-65db30c2-0388-9ad5-4ce6-29c69bf72f00?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-request-id: 18974c03-4fd1-43bb-81aa-682bf7704521
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

