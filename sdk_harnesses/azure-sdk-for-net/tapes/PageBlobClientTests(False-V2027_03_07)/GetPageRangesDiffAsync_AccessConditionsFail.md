## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4ee98c6c-92d4-2fef-4009-0c24e890b376?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesDiffAsync_AccessConditionsFail
now: 2026-11-12T00:51:22.8309348+00:00

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
etag: "0x1C0DAE508168850"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 13fae4f6-c4f9-469e-9206-296f44c9848c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4ee98c6c-92d4-2fef-4009-0c24e890b376/test-blob-fed20f70-e2b8-6565-4a40-afc6b695a70b

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
etag: "0x23D5E3A3D5310E0"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 35356075-8565-4901-8fa2-067ecbf986d3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-4ee98c6c-92d4-2fef-4009-0c24e890b376/test-blob-fed20f70-e2b8-6565-4a40-afc6b695a70b?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Qw7nu3/4wAxSvzGzFdecpS50/FBKSPuKJoMDlOIoeapiAeHZqPf2d07GrPmwslBypAqYQZlXwPoT
XZX79CwqKUWGUBP1wv02fYUBhJsB2XQzkPDYkDcRC0Dmxkpi+4IinIKzKmI8feEMYcQUVTtfEYQg
yGM8UZkOdUXSDvyy1IIC3ugYTq8R9xMOzC5z/bUFh7TGQTIe5UrppbUdaW/kWo1BEXdTRsPVDtBQ
LYVqmniPzYZI65JP4/idL6j59I6kKXGhMus+sUHx8TJizrfFfgs9jZvonG768S1+tRYa2xpCqwMT
yWeMURxEVvpg7RVA2LGdvGbyvI0Dp0C9v/sr1xUYHyK0srSjsDx/o0VzmgQYPd1lfB6zT+92DyIn
zpEgGX/kR83yjCb8+gwqcxhHjw08pYIexVr3Zc8yPaKSfOGrXonFj1I2JbC3aYISiNzXLoAV6ikO
AlQl7eL9v0+EaX0qfxSPgQC6BX/RZ1vY5NzzWw4hfZG4nFw0oKFwOWVhMwAE5wnIR61/WuWqPJr4
TAgFCmRBYuvrcuK3WuBeSswZcDNb0/zTKxRhoiKsDV/BPFOYai4BINEUGHUmEO3MIBAYkMtnnXkM
Mt9P38DJP2SD9R6Mxt+dF1BiR7qHrBonlIESk3yTWp7ajDhOsUAQS9kQoxvOP1oxenl7BFa+hIXF
KEs+tqvn75p/sjmnTmUQUfvgdgj+WFUm4RgDGFZIGweyiYn10pQuKbSATo0hiSsTarJa3Q59xtD1
GNWS5NZDNpYx9MXcG39nsk1UfgnIBVfs762k7j75NcO4/7q+m0TdPRf275RmN08y8irBKEjGLRJ+
pfQpn0hYOL8BIxvFqBcId0Hx0RbChrhecvsTOAx78tKnP/VPs57PnrfVZBQzbEkTuLAH1Fv8vB88
yixMRACyhjFJHmgiuMOjIjNe7SGkKgWyAH9ccx12qoPVE+lxg1m3It3i6k7g8ADsZLIonc/+mJ8n
mkSAVhIT0nPlTKXaMZ7Zp8pDwUC30Q9/bw9qTQ2013tJSukVNsvLzxfa+6NaEjIUT/YEutdfb8g0
AecCqIRmMXUqkee1xHD+ePEp3NVsJFzdVv4Wrxyj6dog4DXkyCaSdMouMIFKXouFBULlNpPyyN2K
JVKGT4FYhqcNlOM7GrDLlmcLPfPbk/dzkKnavrNHLRhXWaLUDCRI1arZPMmnSuuSGp8r54rpr5Ja
Er/Xfsj0xmfL48AN94pCwmhJAVYty0a+R6QUHEaNbqoQefllcFbi5XZi3GYqhSIU6CUhoK07LEZ4
GTYj36kgPXUW/H2R3FERZhzfy+/flMKB/zQga8391E2z7VcfvgXMQZ/wE4ilgwvTDzmQXGFXmA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24F7451B1749240"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-content-crc64: lNPiDLhjjhI=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 93c63139-c123-4c30-bffe-3c5146ecfb98
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-4ee98c6c-92d4-2fef-4009-0c24e890b376/test-blob-fed20f70-e2b8-6565-4a40-afc6b695a70b?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:22.8840000Z
etag: "0x24F7451B1749240"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e6b5c52a-4a1b-4585-b338-3f473c45e683
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-4ee98c6c-92d4-2fef-4009-0c24e890b376/test-blob-fed20f70-e2b8-6565-4a40-afc6b695a70b?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Qw7nu3/4wAxSvzGzFdecpS50/FBKSPuKJoMDlOIoeapiAeHZqPf2d07GrPmwslBypAqYQZlXwPoT
XZX79CwqKUWGUBP1wv02fYUBhJsB2XQzkPDYkDcRC0Dmxkpi+4IinIKzKmI8feEMYcQUVTtfEYQg
yGM8UZkOdUXSDvyy1IIC3ugYTq8R9xMOzC5z/bUFh7TGQTIe5UrppbUdaW/kWo1BEXdTRsPVDtBQ
LYVqmniPzYZI65JP4/idL6j59I6kKXGhMus+sUHx8TJizrfFfgs9jZvonG768S1+tRYa2xpCqwMT
yWeMURxEVvpg7RVA2LGdvGbyvI0Dp0C9v/sr1xUYHyK0srSjsDx/o0VzmgQYPd1lfB6zT+92DyIn
zpEgGX/kR83yjCb8+gwqcxhHjw08pYIexVr3Zc8yPaKSfOGrXonFj1I2JbC3aYISiNzXLoAV6ikO
AlQl7eL9v0+EaX0qfxSPgQC6BX/RZ1vY5NzzWw4hfZG4nFw0oKFwOWVhMwAE5wnIR61/WuWqPJr4
TAgFCmRBYuvrcuK3WuBeSswZcDNb0/zTKxRhoiKsDV/BPFOYai4BINEUGHUmEO3MIBAYkMtnnXkM
Mt9P38DJP2SD9R6Mxt+dF1BiR7qHrBonlIESk3yTWp7ajDhOsUAQS9kQoxvOP1oxenl7BFa+hIXF
KEs+tqvn75p/sjmnTmUQUfvgdgj+WFUm4RgDGFZIGweyiYn10pQuKbSATo0hiSsTarJa3Q59xtD1
GNWS5NZDNpYx9MXcG39nsk1UfgnIBVfs762k7j75NcO4/7q+m0TdPRf275RmN08y8irBKEjGLRJ+
pfQpn0hYOL8BIxvFqBcId0Hx0RbChrhecvsTOAx78tKnP/VPs57PnrfVZBQzbEkTuLAH1Fv8vB88
yixMRACyhjFJHmgiuMOjIjNe7SGkKgWyAH9ccx12qoPVE+lxg1m3It3i6k7g8ADsZLIonc/+mJ8n
mkSAVhIT0nPlTKXaMZ7Zp8pDwUC30Q9/bw9qTQ2013tJSukVNsvLzxfa+6NaEjIUT/YEutdfb8g0
AecCqIRmMXUqkee1xHD+ePEp3NVsJFzdVv4Wrxyj6dog4DXkyCaSdMouMIFKXouFBULlNpPyyN2K
JVKGT4FYhqcNlOM7GrDLlmcLPfPbk/dzkKnavrNHLRhXWaLUDCRI1arZPMmnSuuSGp8r54rpr5Ja
Er/Xfsj0xmfL48AN94pCwmhJAVYty0a+R6QUHEaNbqoQefllcFbi5XZi3GYqhSIU6CUhoK07LEZ4
GTYj36kgPXUW/H2R3FERZhzfy+/flMKB/zQga8391E2z7VcfvgXMQZ/wE4ilgwvTDzmQXGFXmA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23AA6FAB6755380"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-content-crc64: lNPiDLhjjhI=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ec6e15aa-4bf4-4353-abfe-490b83e23f5d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-4ee98c6c-92d4-2fef-4009-0c24e890b376/test-blob-fed20f70-e2b8-6565-4a40-afc6b695a70b?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A22.8840000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_6
If-Modified-Since: Fri, 13 Nov 2026 00:51:22 GMT
x-ms-range: bytes=0-1023
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
x-ms-request-id: 44a16d27-5a2b-44d2-abf3-853cf3772867
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:22 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 6: DELETE /devstoreaccount1/test-container-4ee98c6c-92d4-2fef-4009-0c24e890b376?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
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
x-ms-request-id: 96dab7ca-25b4-4846-b57a-a39113d4a2be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-e0a27385-ff75-a8d1-1927-2fddeffaf1a8?restype=container

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
etag: "0x1E6A8E12D43AAC0"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af8f72b8-c636-479b-bd38-d113f0bd313c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-e0a27385-ff75-a8d1-1927-2fddeffaf1a8/test-blob-4f891216-80ee-db3a-7c28-4d5b936c78ec

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
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
etag: "0x1EC366277822EC0"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d7fa90a0-0fc0-42a1-b021-ee9aa70dda49
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-e0a27385-ff75-a8d1-1927-2fddeffaf1a8/test-blob-4f891216-80ee-db3a-7c28-4d5b936c78ec?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
W1TRrBwlVkHNSPphdaUb2R2ReknYB6oFOcZjTLJ1FK2vQ4KbKEWM8btHgaWG2GbWDXQ9AvEuE1Sq
zHJVwQmPWDRMsTEjgLDYBYmOkYUEf2FgjD8+NxG7gC8t8FzTNi+xtylxOSY0s43EZfxooILOpk0R
9TTKUSAikTEC9Y9TBM5Z3NlckkU6LNmyedEVUuCtXkoPwkH652YJTqf1Mb79cGEtD8OpchMH1shb
GNdODT5QVJZFREGNXvVzUkSeRPobtAlw50McBOw2COt4n86OukBopd0nuCwfoLDONR/PaJLOQGPO
3Sb7NFCqDjtWFL8m5JgDNZ8d9PvcUUaSTc7MZ59Yql9qwNwabXGMfKrwyIvwqFGHyzPzsExo8Yzf
aOaC3qab/WpguyS86MgukHdR64i7oaV9RJtsZfkSAs5POgSKCp0EVcshkOwsy+NqxCDUFgUEJMZB
BZkKL5dwTbhVbK7Eo4bZTZa8mhG4UHm4AaDZPuvJSxU9SQUE+SUzsEMz1140piGZ+sluR4q1iLUf
Ui33lw7NiyGYhlmB1VNwienOhHgag1p/P0MhWwOLh8FP5Kf4PBk0Zks9nB/HGCV2/b6h5wQ8Bc7S
d1fLqzAdDP+YMfCreEzPmh0s3OY6tyYdq11F6qC8E9/ZJcTBaLsbII8gL+c0yoRx0U3mECjnmMAw
rf/T2CJe2x4R0lOIDTFiEbxWGoc/6eHY0xhT1gO28Y0Ekbq7SEdtwlPJIvcx6cMbhP9rkH448cQe
+gQKCwUbW+HGhHx2psl16Vc0dsbpp+pVN1IES2AOy5/2nU1CYrZOrscWamVGpd419qYmBHv9NVMa
tdOzFxCAt7jdfwh7Moeh5cf/0j2FDpJzzlW66MYk+Gj6KK3im5e3lrKsaSXVusMfhB+z/mIWlaZB
P0i6xc7xuIeggQrZvkkwRzyK2KRsnhORmmOncPkF5JMHoVxO/NDkurCdNTm4RsbVgrcli7wB1KA1
KStrSkiNmpx30h3t4ktsph70zmna2VSd0u5C4FjWBcy7GdOleHBoEJqcQHOp6KBrueWdDQU3Wk/W
zXhZS7pDoMxRMcl4xi2ti77OPZjg9OlN1iZyOPjGg76Dzqv4DsTgWKCnV7bX8/O48IFHaR239dmO
DHSU0GfUiq0K9PiCtX367uT4OZwzduMyukh2fxqhzNnRagJQTIc40s0IzP77NjoETXs4vrw9WpaQ
YRYeXQuTaScfsEt6qaFcwGbPKqnkN4MOcTKfaA4ckw9sv+pxGXXBdWLW3IXviaPZ3P5VbjDsrCmS
EOvZ8wEZAh08Dum366bxDbVHDVv+HuiOxowPxiTffxPB3giJ54Fhvdlos3u5IvBXZGB6pZ7NlA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26498282AF584C0"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-content-crc64: dyzRJCNbLog=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf795fc2-c8db-4265-93d6-885906e67443
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-e0a27385-ff75-a8d1-1927-2fddeffaf1a8/test-blob-4f891216-80ee-db3a-7c28-4d5b936c78ec?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:23.0000000Z
etag: "0x26498282AF584C0"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 092076bc-e0cb-4e4d-9db3-9a3e7cdcb811
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-e0a27385-ff75-a8d1-1927-2fddeffaf1a8/test-blob-4f891216-80ee-db3a-7c28-4d5b936c78ec?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
W1TRrBwlVkHNSPphdaUb2R2ReknYB6oFOcZjTLJ1FK2vQ4KbKEWM8btHgaWG2GbWDXQ9AvEuE1Sq
zHJVwQmPWDRMsTEjgLDYBYmOkYUEf2FgjD8+NxG7gC8t8FzTNi+xtylxOSY0s43EZfxooILOpk0R
9TTKUSAikTEC9Y9TBM5Z3NlckkU6LNmyedEVUuCtXkoPwkH652YJTqf1Mb79cGEtD8OpchMH1shb
GNdODT5QVJZFREGNXvVzUkSeRPobtAlw50McBOw2COt4n86OukBopd0nuCwfoLDONR/PaJLOQGPO
3Sb7NFCqDjtWFL8m5JgDNZ8d9PvcUUaSTc7MZ59Yql9qwNwabXGMfKrwyIvwqFGHyzPzsExo8Yzf
aOaC3qab/WpguyS86MgukHdR64i7oaV9RJtsZfkSAs5POgSKCp0EVcshkOwsy+NqxCDUFgUEJMZB
BZkKL5dwTbhVbK7Eo4bZTZa8mhG4UHm4AaDZPuvJSxU9SQUE+SUzsEMz1140piGZ+sluR4q1iLUf
Ui33lw7NiyGYhlmB1VNwienOhHgag1p/P0MhWwOLh8FP5Kf4PBk0Zks9nB/HGCV2/b6h5wQ8Bc7S
d1fLqzAdDP+YMfCreEzPmh0s3OY6tyYdq11F6qC8E9/ZJcTBaLsbII8gL+c0yoRx0U3mECjnmMAw
rf/T2CJe2x4R0lOIDTFiEbxWGoc/6eHY0xhT1gO28Y0Ekbq7SEdtwlPJIvcx6cMbhP9rkH448cQe
+gQKCwUbW+HGhHx2psl16Vc0dsbpp+pVN1IES2AOy5/2nU1CYrZOrscWamVGpd419qYmBHv9NVMa
tdOzFxCAt7jdfwh7Moeh5cf/0j2FDpJzzlW66MYk+Gj6KK3im5e3lrKsaSXVusMfhB+z/mIWlaZB
P0i6xc7xuIeggQrZvkkwRzyK2KRsnhORmmOncPkF5JMHoVxO/NDkurCdNTm4RsbVgrcli7wB1KA1
KStrSkiNmpx30h3t4ktsph70zmna2VSd0u5C4FjWBcy7GdOleHBoEJqcQHOp6KBrueWdDQU3Wk/W
zXhZS7pDoMxRMcl4xi2ti77OPZjg9OlN1iZyOPjGg76Dzqv4DsTgWKCnV7bX8/O48IFHaR239dmO
DHSU0GfUiq0K9PiCtX367uT4OZwzduMyukh2fxqhzNnRagJQTIc40s0IzP77NjoETXs4vrw9WpaQ
YRYeXQuTaScfsEt6qaFcwGbPKqnkN4MOcTKfaA4ckw9sv+pxGXXBdWLW3IXviaPZ3P5VbjDsrCmS
EOvZ8wEZAh08Dum366bxDbVHDVv+HuiOxowPxiTffxPB3giJ54Fhvdlos3u5IvBXZGB6pZ7NlA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x242715467CF40C0"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-content-crc64: dyzRJCNbLog=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af501600-08ca-433b-87b8-81a3e9962a21
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: GET /devstoreaccount1/test-container-e0a27385-ff75-a8d1-1927-2fddeffaf1a8/test-blob-4f891216-80ee-db3a-7c28-4d5b936c78ec?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A23.0000000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_13
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:22 GMT
x-ms-range: bytes=0-1023
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
x-ms-request-id: 4785ae91-851a-4695-ba4b-75706db15753
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:23 GMT
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

## Interaction 13: DELETE /devstoreaccount1/test-container-e0a27385-ff75-a8d1-1927-2fddeffaf1a8?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
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
x-ms-request-id: d30ed287-3659-440a-9dca-b5a653892fcc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 14: PUT /devstoreaccount1/test-container-2d4a03f1-0975-f83b-5c8e-d6f50c9e6826?restype=container

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
etag: "0x2746FC56B943300"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6102ab22-3b25-4f1d-9dfa-65de3547dcf6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-2d4a03f1-0975-f83b-5c8e-d6f50c9e6826/test-blob-8150e534-6b95-d56d-a49b-b862c464da74

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
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
etag: "0x26E924BD8BC9BE0"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ae93aee7-b09b-42e2-a7fc-fdaebe8ec07c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-2d4a03f1-0975-f83b-5c8e-d6f50c9e6826/test-blob-8150e534-6b95-d56d-a49b-b862c464da74?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
80kWhZxT7LOecFbs4yzjufs6Rr9OS/+GlnWJ2VHYNPi0YQLDh+KJ4Pmd4yUVgPF4t/5miR0bJqdK
kO4nyhJhxjxdOIEpIDIZsWbFsWjZcRWDESJTcaramDtaePb0YhXnOx3pt0hwTpbMTdi3VnU/cB/Y
o7jvDlSRg59Gzqc7JE9Q3XVL8LnNE8KLhiTSI0HGGwjXG79c9y3JVzSoKn/ukCiIZ3n/839lC4/2
ZIcvv19egLKfYwmQ8+VIgZmFJOhCnPX7SbzIxieIcQ8vZpOlmZjUSqrMTiwf+HOTt3Lm4Oams8eR
NHWjlbmLF/L5YYxRougAsNk+dU3I21BINA+1oZEoiLPME2QjMbXwQTc6JpfnQhSJ5S8NaD15yVkk
WmCq1XVg0NjZhI+E3X8kTTQWjbW4YfL7LLxiGx91U0oL/tZURmzB2la/Db2EBAev6BoJYjuka/lu
rqi5/bS4ZDBFed+p0AfHVLNf+VQ0die0sjMFa/EOZ5Lc5pfDCNyhBqmMP4soBhgTQg6IRXKlOTiB
BUuBs/g/NhJMzOlvBEzWvfOqqDaci6sa8SnjhiEgN61fQQORIFKwTAl52zoupD3BsYd++pAC5Xmg
ZsHPXK/wLJQ8EMJJRZ2h+lstIq9x7E3rIdSaoj0cXFyJ8bqQ4O9Zia+l8pR7eGzq3f811cLKLnpz
4zvbVYlXH7Nlv1TiEBlr05kAy/m5cKhor8U95oeav8I/Hf20fjMlTtLgFbgYB83lygEoymOAunKT
cqbEGjkrywCRo/Ict1Rm2n0m2VvvT6j4VxyGcfVfv2OKIQuNYDOZtUq3hmTayRKtwu/lWeAXoyP+
zMIcpVkLMuOPkpZI2XlJjSQQN8lDHo4J2K4FeWWCcn3oj5NxfA/wrFOASjZ8ZOl2m8y8Bmtauq40
EsyrBrl+DSAYYErl2BAUIIt1wtNXjHTFj92YxWsSjdTkPWlCRaWZATwWZAOfkMO7qObf5Pfb3IVY
5Xfc5ki0BdJ1AJum0dvm28CXQChwJv4Z3R2FM6jcCWDk6l8uvRv0Yl8xKY8oFNYK+Qk3Q5xd5794
wgkrL9IpmfY6wud7tx2lo97IP/xv8chGejmfpcbEhgOgtfsSyDONB5CY7lLvj0HrkaC9lafDCdFB
5LSYivQwdjzj2wIiktqrOzhs1gN1V+v3sxMlBvBb3Ksp0eR+9H2caHcVC7M/yf/GEllvVjPOy4zJ
odbgCnBLh/5W+MH1LEe60G2LYEw3t+oUX/OX7IV4WwZXtFOmu10HyoO16dE90OUStIbFQms/kuns
zKt8tJt43Zy7nXf0FBQQg5XJgs4Y1o4NhTj/shiaFyJquu+yixXnPAs0gjJtHqBxtb/VdhAa0w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x224EB5CAF7847C0"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-content-crc64: 1H7ogHxagzs=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 13890c07-7662-4755-862a-fd8d3555af13
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-2d4a03f1-0975-f83b-5c8e-d6f50c9e6826/test-blob-8150e534-6b95-d56d-a49b-b862c464da74?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:23.1270000Z
etag: "0x224EB5CAF7847C0"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ca69f211-988e-46cc-8484-1c6cabda0593
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-2d4a03f1-0975-f83b-5c8e-d6f50c9e6826/test-blob-8150e534-6b95-d56d-a49b-b862c464da74?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
80kWhZxT7LOecFbs4yzjufs6Rr9OS/+GlnWJ2VHYNPi0YQLDh+KJ4Pmd4yUVgPF4t/5miR0bJqdK
kO4nyhJhxjxdOIEpIDIZsWbFsWjZcRWDESJTcaramDtaePb0YhXnOx3pt0hwTpbMTdi3VnU/cB/Y
o7jvDlSRg59Gzqc7JE9Q3XVL8LnNE8KLhiTSI0HGGwjXG79c9y3JVzSoKn/ukCiIZ3n/839lC4/2
ZIcvv19egLKfYwmQ8+VIgZmFJOhCnPX7SbzIxieIcQ8vZpOlmZjUSqrMTiwf+HOTt3Lm4Oams8eR
NHWjlbmLF/L5YYxRougAsNk+dU3I21BINA+1oZEoiLPME2QjMbXwQTc6JpfnQhSJ5S8NaD15yVkk
WmCq1XVg0NjZhI+E3X8kTTQWjbW4YfL7LLxiGx91U0oL/tZURmzB2la/Db2EBAev6BoJYjuka/lu
rqi5/bS4ZDBFed+p0AfHVLNf+VQ0die0sjMFa/EOZ5Lc5pfDCNyhBqmMP4soBhgTQg6IRXKlOTiB
BUuBs/g/NhJMzOlvBEzWvfOqqDaci6sa8SnjhiEgN61fQQORIFKwTAl52zoupD3BsYd++pAC5Xmg
ZsHPXK/wLJQ8EMJJRZ2h+lstIq9x7E3rIdSaoj0cXFyJ8bqQ4O9Zia+l8pR7eGzq3f811cLKLnpz
4zvbVYlXH7Nlv1TiEBlr05kAy/m5cKhor8U95oeav8I/Hf20fjMlTtLgFbgYB83lygEoymOAunKT
cqbEGjkrywCRo/Ict1Rm2n0m2VvvT6j4VxyGcfVfv2OKIQuNYDOZtUq3hmTayRKtwu/lWeAXoyP+
zMIcpVkLMuOPkpZI2XlJjSQQN8lDHo4J2K4FeWWCcn3oj5NxfA/wrFOASjZ8ZOl2m8y8Bmtauq40
EsyrBrl+DSAYYErl2BAUIIt1wtNXjHTFj92YxWsSjdTkPWlCRaWZATwWZAOfkMO7qObf5Pfb3IVY
5Xfc5ki0BdJ1AJum0dvm28CXQChwJv4Z3R2FM6jcCWDk6l8uvRv0Yl8xKY8oFNYK+Qk3Q5xd5794
wgkrL9IpmfY6wud7tx2lo97IP/xv8chGejmfpcbEhgOgtfsSyDONB5CY7lLvj0HrkaC9lafDCdFB
5LSYivQwdjzj2wIiktqrOzhs1gN1V+v3sxMlBvBb3Ksp0eR+9H2caHcVC7M/yf/GEllvVjPOy4zJ
odbgCnBLh/5W+MH1LEe60G2LYEw3t+oUX/OX7IV4WwZXtFOmu10HyoO16dE90OUStIbFQms/kuns
zKt8tJt43Zy7nXf0FBQQg5XJgs4Y1o4NhTj/shiaFyJquu+yixXnPAs0gjJtHqBxtb/VdhAa0w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21BF4B77B3EED60"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-content-crc64: 1H7ogHxagzs=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 17375c51-3acd-41c4-b155-f0ff928e8b52
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-2d4a03f1-0975-f83b-5c8e-d6f50c9e6826/test-blob-8150e534-6b95-d56d-a49b-b862c464da74?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A23.1270000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_20
If-Match: "garbage"
x-ms-range: bytes=0-1023
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
x-ms-request-id: 21157694-a189-4fa2-a4dc-080439f4aeac
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:23 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-2d4a03f1-0975-f83b-5c8e-d6f50c9e6826?restype=container

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
x-ms-request-id: 4751bfcd-1790-400d-ae1c-62b9496a154f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-2f6e1cf5-7963-842a-2085-558959255df8?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x235E0953CB56E80"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e9ddf625-4c57-40c3-9765-3c3b8ce68101
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-2f6e1cf5-7963-842a-2085-558959255df8/test-blob-c245e17f-54e4-9f5c-6697-8dfd59c5a112

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
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
etag: "0x2504A1DB9686C20"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b51161b9-6b63-4124-98d6-b9790d28fb33
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-2f6e1cf5-7963-842a-2085-558959255df8/test-blob-c245e17f-54e4-9f5c-6697-8dfd59c5a112?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
T+b5lhzmhMPgsGKsGJRGTFfGVZTKWO6hwM7Iy+wtKlrkQjpzLMfbmV2C4TTyr4fSUUClk3AMR/b3
WNZNHrjXs4UHyNVZ0yCP6rw3SHa6rhBH9Xmrh5fq1/pDe9Pxjnqkqy2u6uaxeX4gFqiz1f9/PanF
Bik/KyvuHPDaFldMnlxCk51JDMMqlXz7inHuNgL7wz4pLIdRZX8CwM7112Mm03dMcUFiNjHlm3Gs
Q6G6/+Xu31IZInLV8C0dRkv1NL4Z1Lb5osXAmIwNQ5EWpCHdR8HoB/cQDbAFdoATRO/l8Gayk2/r
wFwgLUfFDN/hv0wMQP+KDSzGCMYF9CtErFOcJ1MqYxCx8odkyNqwSwHRJLc0BwTwWuM664uo5cww
24DzKOSLtls7Wk13JURRFr3EM890EKVPq81w8HeFCAy7NOxavCIdRm1c+Ky2eTSe6NXN47H8vMra
pH0XG8bktlFAvPFY91mbp+1hFxj4mDKY0QeityRavnchfxilBiqneEFadbxDRvB7MjzEmqSy4QtK
fkm+Qf8t5f16NnhB9qHCup/XniJ1VYsXJ4ToliTSb50MWofg6DZCLY+/yBB4OjybAd8E20Pp1Cm+
pxp6RE/Yp8faNJsZ4tJplHCStox6nuxHTZVEzZNZI4VeIUAbx+lA5iFJnQahgR8Nm0bTVh6cRAgt
Mve6lNkzgRAVu8CSTc2HUs9rMQHmpst1NzJNhc1mwd037pTxhlJHFhv1i8Zfe054TARPMRIHR4ws
RFyn5ftDrvniWl85lcx8Ixvl8RsEFrzj1DnJF4/LMKYIxUH1oDAgstzMfCDvP7Y30g72IVZwJy6g
wxDCepdqFym4Mc+KhoPrxT4+OJqb9JWCkUSB1A9Ql54TVdwfXjdFYmT2Ng7mrEyKC1wXMu6TBM57
P+hS6EMaZ5kxdzCmy2YG+dU1pL6Gm+T49siyOWWvf1EOox5P8nkh3M90tTUb5ED1EDgZXl8Q9aME
WvF7Zy40gvjfmCdHtwdbFMjvEeav3RKHvSgsliHx/a56SpeIpnSgQDM8O0sYrVgwvUmXIeO9VHzf
86oFB+vX7Zp4zGxv025TTtGycqHGbg/Q+9jXWtzLvfYbqbLJmzhHZU2xn+HrwenbQ9IRC+HaGISb
NQsS/5K+rQ92VCq7irOYaw1TFc4u5Drv/BcJubEUQJAtLmUtNGW78/LRdW2+H7gfeZ/UhgK1bVHR
IwN7tPNeYhSZjVxNajanmCLcXW7NMNxe6UARQLmOeMAUXBFiQD7/cxNYJJFc0g5pLO7g2RDiA/Im
HMqzTCFbCxWbOQ4lRVjj3OlbdAtLAhcxqBTLrZ+wMVgeOyNzTCbx/Rl8wZn/ROaV/Pwmho/m2w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2258CEF0EAE25E0"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-content-crc64: CFSxh/BStlg=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0b3b8951-ec5f-4e3e-abab-7727c26c5622
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-2f6e1cf5-7963-842a-2085-558959255df8/test-blob-c245e17f-54e4-9f5c-6697-8dfd59c5a112?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:51:23.2540000Z
etag: "0x2258CEF0EAE25E0"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4c3c7d5a-0329-4af8-ad5f-5c96f4f1dcd9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: PUT /devstoreaccount1/test-container-2f6e1cf5-7963-842a-2085-558959255df8/test-blob-c245e17f-54e4-9f5c-6697-8dfd59c5a112?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
T+b5lhzmhMPgsGKsGJRGTFfGVZTKWO6hwM7Iy+wtKlrkQjpzLMfbmV2C4TTyr4fSUUClk3AMR/b3
WNZNHrjXs4UHyNVZ0yCP6rw3SHa6rhBH9Xmrh5fq1/pDe9Pxjnqkqy2u6uaxeX4gFqiz1f9/PanF
Bik/KyvuHPDaFldMnlxCk51JDMMqlXz7inHuNgL7wz4pLIdRZX8CwM7112Mm03dMcUFiNjHlm3Gs
Q6G6/+Xu31IZInLV8C0dRkv1NL4Z1Lb5osXAmIwNQ5EWpCHdR8HoB/cQDbAFdoATRO/l8Gayk2/r
wFwgLUfFDN/hv0wMQP+KDSzGCMYF9CtErFOcJ1MqYxCx8odkyNqwSwHRJLc0BwTwWuM664uo5cww
24DzKOSLtls7Wk13JURRFr3EM890EKVPq81w8HeFCAy7NOxavCIdRm1c+Ky2eTSe6NXN47H8vMra
pH0XG8bktlFAvPFY91mbp+1hFxj4mDKY0QeityRavnchfxilBiqneEFadbxDRvB7MjzEmqSy4QtK
fkm+Qf8t5f16NnhB9qHCup/XniJ1VYsXJ4ToliTSb50MWofg6DZCLY+/yBB4OjybAd8E20Pp1Cm+
pxp6RE/Yp8faNJsZ4tJplHCStox6nuxHTZVEzZNZI4VeIUAbx+lA5iFJnQahgR8Nm0bTVh6cRAgt
Mve6lNkzgRAVu8CSTc2HUs9rMQHmpst1NzJNhc1mwd037pTxhlJHFhv1i8Zfe054TARPMRIHR4ws
RFyn5ftDrvniWl85lcx8Ixvl8RsEFrzj1DnJF4/LMKYIxUH1oDAgstzMfCDvP7Y30g72IVZwJy6g
wxDCepdqFym4Mc+KhoPrxT4+OJqb9JWCkUSB1A9Ql54TVdwfXjdFYmT2Ng7mrEyKC1wXMu6TBM57
P+hS6EMaZ5kxdzCmy2YG+dU1pL6Gm+T49siyOWWvf1EOox5P8nkh3M90tTUb5ED1EDgZXl8Q9aME
WvF7Zy40gvjfmCdHtwdbFMjvEeav3RKHvSgsliHx/a56SpeIpnSgQDM8O0sYrVgwvUmXIeO9VHzf
86oFB+vX7Zp4zGxv025TTtGycqHGbg/Q+9jXWtzLvfYbqbLJmzhHZU2xn+HrwenbQ9IRC+HaGISb
NQsS/5K+rQ92VCq7irOYaw1TFc4u5Drv/BcJubEUQJAtLmUtNGW78/LRdW2+H7gfeZ/UhgK1bVHR
IwN7tPNeYhSZjVxNajanmCLcXW7NMNxe6UARQLmOeMAUXBFiQD7/cxNYJJFc0g5pLO7g2RDiA/Im
HMqzTCFbCxWbOQ4lRVjj3OlbdAtLAhcxqBTLrZ+wMVgeOyNzTCbx/Rl8wZn/ROaV/Pwmho/m2w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F038EFBFC4E9F0"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-content-crc64: CFSxh/BStlg=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b9b7192c-face-424d-8584-15448b6ee9f7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 26: HEAD /devstoreaccount1/test-container-2f6e1cf5-7963-842a-2085-558959255df8/test-blob-c245e17f-54e4-9f5c-6697-8dfd59c5a112

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_27
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x1F038EFBFC4E9F0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8fe8a15c-4bdd-4a2e-bbbc-d942b729f336
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 27: GET /devstoreaccount1/test-container-2f6e1cf5-7963-842a-2085-558959255df8/test-blob-c245e17f-54e4-9f5c-6697-8dfd59c5a112?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A23.2540000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_28
If-None-Match: "0x1F038EFBFC4E9F0"
x-ms-range: bytes=0-1023
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
x-ms-request-id: b71954dd-765f-4be4-93a8-706b0431b819
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:23 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 28: DELETE /devstoreaccount1/test-container-2f6e1cf5-7963-842a-2085-558959255df8?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
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
x-ms-request-id: e6c6e856-9af6-43a5-b5c5-6ddee125d03e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 29: PUT /devstoreaccount1/test-container-a381b319-900d-765d-eb07-b6060a346f90?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F0FCC7F4756B50"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e0f35077-fd7f-4d38-93b8-bf16130b4899
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-a381b319-900d-765d-eb07-b6060a346f90/test-blob-f2766ac2-41cf-327e-642d-35b0a289aac9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
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
etag: "0x24F2E243ABF1560"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0f681b5e-85e9-45b9-b463-8fc1a0622e9d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-a381b319-900d-765d-eb07-b6060a346f90/test-blob-f2766ac2-41cf-327e-642d-35b0a289aac9?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
OF8JwMuD4227BdaRST3bYI1rYxwY9AzYNE8/4Fqt02Fc7M6qKq7FP4cIN8lr7OgnUtQjNyaOsENT
MYx7RAMTDjJ1NVxvMTXepSOVD71CbUdmGI6FiZs6zTyKVvkiSfuE9SmW9raLuCCeRJEC+aCGEMNE
FSt1jYSWOmcg5No8vFwoERqUrHeR2mBt50UKN9ScA0Y23TTPDmek/7tPa9NGYog12ueG8mRLszrL
CKY/jAKThOCTBd4nWAKy76y8QW+MJoS81F3sFhDh6ir5BAbBZXK5vOfyslypDYHl0wO4j3HLPuEh
grikpm7Qshq0LVT78Ik5A4WHmnMnEsbbB0INKVu4LsUln+O6FBV5IgBB9eAt6eJ5fozrQ6Ru+W/x
yZ8rwoi/+/+P1lGmfu5wDndy5h3mrR1fk6rPzOsgtqVzyEp2TV93gvnhnhOR0/+dezQs+xNSCxuB
yy/e7y4Tbh+rMrak+cAY+2MjBQ8Jzr+qMlG287qRIb0v9IIwmZPLzS/z5aBJ+YF0FACwLgULeP1v
M73dXHtlGRD4dAU+52HQWDfgFugfYTnPQt+64fO3I3yFwWXV7XC0jsyPUIR8NSyf4NXNK2EUUNKD
DhqcqjgdQVCIuSb7+mrHLIgcjxC0Ug2yGwAd6fgacHCTUt9WGOOTcg8z9HsFo+ZrBv/Z98HCz7sN
6Y83AFdYbki2aKiLcBSkiRwAgV6RrHcasuP5QHmv0IMkSS5TW3G424UzTzo+35XrNG6kwU1dezwY
HU10Xy3PBpclZiflUS2qSKbYXl093NJNDgsKCw81x83xOz4jRHtYY0miGXhuBeNB+XmnhB3f2kB7
JlEhxPuI759Z8xbuhwQqgPoUmsNZ3wgoyRGVjUKwEmD9qB0qNp5OGSnZFBHNUnJ1fAQjy0B9IUdI
+fvp82JdqeC18N7mAElbxYCZgMr2WnefIBA+jEcgf4bW4j2jZSbHfGswGGGTjny6xwW/46F9UZ6D
SdJRHhyZlXFYEB4Lt2BZ0gRexkIVC5GThMVCYJzlWJCfHxtUdV1Ol4LwO35erw+kZhGdHotcbj1B
vZpXVjXUcreNbJdFBVymEC6/JNATNNS1nfqKSDoFQrHdErjD90BNG8jG0UJ4XmC09g5cnEltLYjF
obg7Sip9iCnmZ/Kk4xjtcgkHTGOSPT+Z1lErqKZnb+Uv/laHEtGdSEkYkfZtDxL2bilAZuAlMmN5
oXPZUd+DfvgNdeXBZmA3aQMaeatILMc+NTl9JwkECcvzDXFexPZplRP+X5ktNAjICPzcC7i3MXSr
mhymBlfuCWsazljv2aQMsOSYSc0tEQAwtB4MJ/4SO9z8sirawo+7EFUtE2Ww2S9X0FrUHuinfg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C6FB487C05C030"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-content-crc64: b+WyZ1ZmUUU=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c72c2b4-a000-4961-bcc5-1fa75cf2ffd5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-a381b319-900d-765d-eb07-b6060a346f90/test-blob-f2766ac2-41cf-327e-642d-35b0a289aac9?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:51:23.3870000Z
etag: "0x1C6FB487C05C030"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9db43c41-2635-4ba8-837e-ba41d52ae5ba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 33: PUT /devstoreaccount1/test-container-a381b319-900d-765d-eb07-b6060a346f90/test-blob-f2766ac2-41cf-327e-642d-35b0a289aac9?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_34
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
OF8JwMuD4227BdaRST3bYI1rYxwY9AzYNE8/4Fqt02Fc7M6qKq7FP4cIN8lr7OgnUtQjNyaOsENT
MYx7RAMTDjJ1NVxvMTXepSOVD71CbUdmGI6FiZs6zTyKVvkiSfuE9SmW9raLuCCeRJEC+aCGEMNE
FSt1jYSWOmcg5No8vFwoERqUrHeR2mBt50UKN9ScA0Y23TTPDmek/7tPa9NGYog12ueG8mRLszrL
CKY/jAKThOCTBd4nWAKy76y8QW+MJoS81F3sFhDh6ir5BAbBZXK5vOfyslypDYHl0wO4j3HLPuEh
grikpm7Qshq0LVT78Ik5A4WHmnMnEsbbB0INKVu4LsUln+O6FBV5IgBB9eAt6eJ5fozrQ6Ru+W/x
yZ8rwoi/+/+P1lGmfu5wDndy5h3mrR1fk6rPzOsgtqVzyEp2TV93gvnhnhOR0/+dezQs+xNSCxuB
yy/e7y4Tbh+rMrak+cAY+2MjBQ8Jzr+qMlG287qRIb0v9IIwmZPLzS/z5aBJ+YF0FACwLgULeP1v
M73dXHtlGRD4dAU+52HQWDfgFugfYTnPQt+64fO3I3yFwWXV7XC0jsyPUIR8NSyf4NXNK2EUUNKD
DhqcqjgdQVCIuSb7+mrHLIgcjxC0Ug2yGwAd6fgacHCTUt9WGOOTcg8z9HsFo+ZrBv/Z98HCz7sN
6Y83AFdYbki2aKiLcBSkiRwAgV6RrHcasuP5QHmv0IMkSS5TW3G424UzTzo+35XrNG6kwU1dezwY
HU10Xy3PBpclZiflUS2qSKbYXl093NJNDgsKCw81x83xOz4jRHtYY0miGXhuBeNB+XmnhB3f2kB7
JlEhxPuI759Z8xbuhwQqgPoUmsNZ3wgoyRGVjUKwEmD9qB0qNp5OGSnZFBHNUnJ1fAQjy0B9IUdI
+fvp82JdqeC18N7mAElbxYCZgMr2WnefIBA+jEcgf4bW4j2jZSbHfGswGGGTjny6xwW/46F9UZ6D
SdJRHhyZlXFYEB4Lt2BZ0gRexkIVC5GThMVCYJzlWJCfHxtUdV1Ol4LwO35erw+kZhGdHotcbj1B
vZpXVjXUcreNbJdFBVymEC6/JNATNNS1nfqKSDoFQrHdErjD90BNG8jG0UJ4XmC09g5cnEltLYjF
obg7Sip9iCnmZ/Kk4xjtcgkHTGOSPT+Z1lErqKZnb+Uv/laHEtGdSEkYkfZtDxL2bilAZuAlMmN5
oXPZUd+DfvgNdeXBZmA3aQMaeatILMc+NTl9JwkECcvzDXFexPZplRP+X5ktNAjICPzcC7i3MXSr
mhymBlfuCWsazljv2aQMsOSYSc0tEQAwtB4MJ/4SO9z8sirawo+7EFUtE2Ww2S9X0FrUHuinfg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27391D0655C1AE0"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-content-crc64: b+WyZ1ZmUUU=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0c955916-3937-4010-8d50-a579c24b5bca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 34: PUT /devstoreaccount1/test-container-a381b319-900d-765d-eb07-b6060a346f90/test-blob-f2766ac2-41cf-327e-642d-35b0a289aac9?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_35
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 51751b89-e139-6de2-0793-7bf3277a32ed
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27391D0655C1AE0"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-lease-id: 51751b89-e139-6de2-0793-7bf3277a32ed
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 736c080f-6224-472f-bf5e-3d989d05d58a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 35: GET /devstoreaccount1/test-container-a381b319-900d-765d-eb07-b6060a346f90/test-blob-f2766ac2-41cf-327e-642d-35b0a289aac9?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A23.3870000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_36
x-ms-lease-id: 71ef419f-21bc-84fb-36e1-eb6c5f1d47b4
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseIdMismatchWithBlobOperation
x-ms-request-id: 6b0e45af-d6d6-4710-81ba-514da6e2474d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:23 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseIdMismatchWithBlobOperation</Code>
  <Message>The lease ID specified did not match the lease ID for the blob.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 36: DELETE /devstoreaccount1/test-container-a381b319-900d-765d-eb07-b6060a346f90?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_37
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
x-ms-request-id: 7911703c-9316-4271-8cf1-af233842c9b1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

