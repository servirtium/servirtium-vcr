## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c1dcbed9-424f-43bf-2a29-68ffceec3adf?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_Stream_Tags
now: 2026-11-12T00:49:03.1057855+00:00

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
etag: "0x214756DF22FD040"
last-modified: Thu, 12 Nov 2026 00:49:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 510b7a48-2609-4408-8f6c-3439defa5cf1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c1dcbed9-424f-43bf-2a29-68ffceec3adf/test-blob-96d3c830-b02e-d915-0a73-92774e66fc17

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-tags: tagKey0=tagValue0&tagKey1=tagValue1
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
6ULCFrNDbtd36kFh1O6NumtvOyX1GQ0pqAO327BH9MMsURaMKSMs7Vn8H0RutAQb5tcM3irXIs80
mW6vi5MmL/Z9NYPYAJBHQ07L+PrJuvT/nPTZOxWZVC5HV5C1fGHG1e9O8X6BQ+ZGxJvcDCnUat56
sO+fTfPg5OFUkKj/kcfsBCMKe8l1flkOknZ5vEcFcu2yO8tyJ4j7bQydLLI9RjLU7wcGye8UBDKW
kLp9ZieZTh67TVX7et2aDw2811Gn0ExEpc1A/6j9njeZ3JbOfgblBN6Tgfnc2HUqa7riVyzg7sBt
OMBZWU92vq4eYZ1HzJAG19NzE09SZ81YFpPtGkYKuO3WYEVGi6qOHcJKvXfX4p8q24BZbdtwGtHz
AUO7iKRnFKiwcGtKwEso5PWMCKlWgDPzwj7GsEsRZUV0Uoln0pQe46nOJnIz4Bs1MIjl5BInnYEP
yMVloWNdngsm1W7BwBJhbSQAh1rBwOIjkYDCLIAyTbQIWArPuUFFcYdmDQqtc292hHbtJxUmTgfj
QhDjmnKK84i5uGgHkbTjuxbSWrLXdR0QTKcKRCWe4gkC63cxYdcV3BmC9LoHb/LCCmv/VPRVC8zy
003KgK9iGtZfBKY9sVo+vH2YVYFiCdy1Rzm6n40UreCqP46JS1xqH9nkp2pMhVkRwZd2vLZKj8lw
FTh1qHtJSlfFknLMtXEhLjWnfmFyaMHgqd71nfAqYLDEGDYj9Xdem1wThvPmRQsmVY6AohBn/qx2
lP+dU6xmmzLBB5w7/jm+SeMFX+LO+WTSz0hiqr2fXBmKrGB4wUevrOvAJT1v61dUwVktYp/JqJqb
y4RkBPB1IauCsVHYRoebVbL2DdQmYuTxDehjcvl6wATF3fbDS6f6SwOR7DkFe3rSkQ3s05rFdGig
cvYIEa+xCPBMEmmQ2AkL/MLRlHaq65FukeHsju1q/2iOI9ix8jpT4ORIuGkRQbkD4dfX9N/x9Ydl
moDOxHkD4hIAArQxWgmHfbSRYTIoXFAn6a0VkguJnC1RS1i6hRtqRNZWED8E0ofNUHYqX5RUPD0w
ptvM7U8Hd2WG3w6xzfeYJxxc0kwQIhcmSEKUXjyZ/Q8ait9AnlaGTpnZfvJ5G4J/kjh392rxH4PE
pqUNchgo7eL+lkMYWIjF1YOyN6QkrSzAFcwEIQWlKWpcfPixeduAsZEQeoU+ZzqwsiLmPuffn/l4
TV1MJMvcWWzYvNuQFFuoMoYTFDKnga6SU2/jvuqDfN3+OCx+NIzFMyAYZqteH57GPgxhzIrG0cyv
utBb+ZuBVT/+kdsvKf35TeASjhoDMzPRHIDeIbBSOGdgz3q7ajqElhBrYI7DlhQPaH6ps0OxrA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x241FBCFBA8162A0"
last-modified: Thu, 12 Nov 2026 00:49:03 GMT
content-md5: jZRyhTeo4BTCLMmLI8+wgw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3c085162-715e-4e90-a88d-eaff907b35bb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-c1dcbed9-424f-43bf-2a29-68ffceec3adf/test-blob-96d3c830-b02e-d915-0a73-92774e66fc17?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 1e16836d-a90f-47a6-a7d3-1d4b1509e5cb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:03 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-c1dcbed9-424f-43bf-2a29-68ffceec3adf?restype=container

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
x-ms-request-id: 1d126257-5579-4b20-84a8-090eca003995
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

