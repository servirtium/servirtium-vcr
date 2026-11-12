## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4356f5fd-e632-7a12-6cd7-6dbfbad8c6f0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetSetTagsAsync_Version
now: 2026-11-12T00:48:15.2103346+00:00

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
etag: "0x1FDC8447C5F8D50"
last-modified: Thu, 12 Nov 2026 00:48:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c8b04aa8-0b43-4b40-88e9-66fb0acff7ec
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4356f5fd-e632-7a12-6cd7-6dbfbad8c6f0/test-blob-d7db70de-9593-a99d-9a96-dc9e02db3293

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
QlWWfnM8v7BDYqJsLFQqjeToN5p3tbxnV62pnAl0d5Cl2nxkQUd8obErlDDyMHxGa0+6GaSYHI2Z
LybGkyKmzuoRx1LXxUucbJXoSyCLdCYxYjC6uV7sDb3vyhIgtQ6OhcVG4WkpbqUDHqwOsNBsDrr/
lDDy6xWMJLqU6Ps4e7aHWcZbRZO9B/OKt5ux3l3tgrxYISHdnJmwuryvlYaqyqL1hlYJEckmQo08
ZzR52kZcp2U+4FqVqrwtqorXDXJt3+z5u1cG5HDyMt6ToDRkNt91Uu4ga+pHYNya3GY+TjQaz4dI
gB7vVsL1TK58AQmHyHSrYbuETHQCsVt6bAgJtOOpedCtHLXAhvwrKx88y17TEhPyk+15lYMTRc/D
dOq665jK0og42qu+6tu+WSBUxuX9p1r0FyD2L+NNmdbl/RIScD+HcfnWmjdoM6gRujxivn/qxcyP
xtR31KOk60DU2OzJrOjhzVXsJwwii+N45HSn6ttX+zdFgqpqD5xWMa/2k1q7SA5TgfAq/Z6/bTrw
//Au/AFlfd21gyo+dr24lvVdLPiJvJtmVGjqLP2ZhRRvehCsJzWukBZ9BsXjFAszcWepYkFCZ0NU
x6eYe1DfHP0Wz/ytDG6/r5vhC7XWg0Bdt7qW7yPTLBLNV1+NFRXFnurHzUQPhWX46bOlYFuNfURn
O8SWSCzZQqLp37QOMpmGHG3LDrb7TjFVnQVwLcy2P9kbJdpQL1W97YqiJaWw6rcZH0Tuwm+ObO2T
QKsmaRXWMp/b8wy+NewXDSArWSiLpbNOVg2HyH1qjbntve6ql4R1y/IF1faqWulX1rVOYhPEB5v3
2BIHTmoicGZT0Xj+bXacto01hc+8o/sjL/HIHCqmKbVSsr5xbnyH42SQV4lxWWk/sqyFjoLLOjQW
4x95WlM7rKfDq7q3KkcQraFqLEtxstaHiWp+IJoyhniJWotdDokQVavhrq2vh4dkdOHgYQ7ppDBI
8dHpvYsNkCVCLc+8sp8YWtegkAQp2AHiGay5UiVpoLVaFRy4J5cf1B6IbVq3qMJByAY3SBQsHxnQ
BqPfVD3/2IwZYp2CYDI/gbvloGumKnHqd4oeMlihLfUD6CD0P3/giJTNnkYkv2jU+MZYRn6uKdwy
9d2z4KYzeDSnf3cSS0I8BRfW2IwrxbgiSjqSSOZ3VL5EwUmiLajumiURfT/wwayEHEFn11BPBzAl
kZZsoTBNMCu4zon4mthv6D5mGUh4MYiNDSulEHxt9LoYfZsRgfj1xEwUN/Mji4Jo9+8S6O3orF8N
35MFpyCuS9rO3x08XWZGcVX7ZPqVaYKpPBiNWwvNMNA8A6Jk8BwsZuwZVatkLJmIzHeX7UdkeA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x274988E268BFE80"
last-modified: Thu, 12 Nov 2026 00:48:15 GMT
content-md5: wIvjIcxYEzR2UWEFne57+A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3338d564-0260-4202-a602-9edb383a451d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-4356f5fd-e632-7a12-6cd7-6dbfbad8c6f0/test-blob-d7db70de-9593-a99d-9a96-dc9e02db3293?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
etag: "0x211907B0F26AC00"
last-modified: Thu, 12 Nov 2026 00:48:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ea9d5161-5785-49dc-bd92-6521d22e7a6a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-4356f5fd-e632-7a12-6cd7-6dbfbad8c6f0/test-blob-d7db70de-9593-a99d-9a96-dc9e02db3293?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: db428913-d994-41c1-a6df-9ae68c08b5ee
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:15 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-4356f5fd-e632-7a12-6cd7-6dbfbad8c6f0/test-blob-d7db70de-9593-a99d-9a96-dc9e02db3293?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 7f84479f-7d30-42bb-a51c-1f70928c04ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:15 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-4356f5fd-e632-7a12-6cd7-6dbfbad8c6f0?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 60a49b80-c2d5-4211-96c7-ddcb6fe153ef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

