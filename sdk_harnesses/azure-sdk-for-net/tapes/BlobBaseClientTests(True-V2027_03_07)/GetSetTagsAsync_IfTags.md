## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7a64b33b-27b7-d49f-dcaa-c77e37e49400?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetSetTagsAsync_IfTags
now: 2026-11-12T00:48:13.9235426+00:00

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
etag: "0x1DBCBDFC71321D0"
last-modified: Thu, 12 Nov 2026 00:48:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b025a549-4258-4db2-9109-562434a4045c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7a64b33b-27b7-d49f-dcaa-c77e37e49400/test-blob-7c9f6f87-c806-3eda-0773-d117dd09a914

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
ja8xtZLFdyXeR3LYBEKBJfaF2EldLfty2CVyRFaI99MBs/GHst9twfh5nb9WAjrF8qwgWDBftmC0
v9xtUjPPVlCf11BR+XIXFxZQ4487HNbrrVGpZ56iofyQ0/MCAG7EqkZvtirpc/k5CUAaDtPQeaMG
gaXhJe6x/TZUwCV/FBeojDlJzGWrATlYcF5eiJIpv1lP/H7J44RXvrn0lbPTuvQocYKah6w9W4Br
ibWQUnWkKgHLLxiY36i08Q6stmyGhbVqNRYPjzetEqH+XVrPx2tDUGqyB4vbkJLa5ZaekaQT5QP/
Jh1elJvJHh13moFO5CmiaGYB1H0qjqWENamhDoD86nhW0KFN5bvP6ehtZPUQiwBt+yg9EhCF1Jd4
2l/xJxCceq8J9xSIVYOrMeuVvSmvdKmoNBJYv9hn0PsJ1Qpb3sHY0elGBpTs5aalkeAl8BduyGa2
SPP9RLvWoicYfn94UFMpves/aG0UvE5ssi34QeDkmw2kpJXN2o0ub2Rt02YnLEGM+zMrLl/4ooyk
kZGN3mBGM+Nx1Ky+W+JeEfgJp+joRIbsa0WtuW2tqwIIKUn7oZEDJqCDtViVzZ9QzB1n7/qkvEwL
oHIamXp1xCmptjKZY29nBYFHZI8uV52lXexQRrsHY2388AAf6IwlDfAu6xdttmmtAOl4XFe93UnU
dDyNJX5tolLFnXJuRx30IVae/2uGOKaCokXSjgYVPxK3S3NPmOhywUnEpxn2PrjMhDoAHt7dTjyV
CoI4mxNLsF1gt/yppIluLD4iwZCNi2ONBQrMFCA02fw3uo1lOSU2efe7loe8I9+wkvKgu4yrCH4f
q5UIf5s9LN7/cer8CPIY60iZ0fXc0eIrG4ItlB1wjLEORo2QLvlbfmqpvLL0tIn/h9BEEjaJQtqz
3GQZD5fAj+U57sJliL1OPVOLMhQvN2b4LQxNK3l6hQOz3FGVQm7S6CzMusbHmv8S9tTj/g/Fg6X9
IeKLc2Rrv2m+satsuPvkuEroY3ygMZIMOzWllobz7lismCGMR3XIYftdCOlUpj3Z/kXF3SAoXPBP
fzguxijiysNSvyDaWHHUHwGBQiipt5X3y5hBLhA4hDswPcc8mZvTez0lAeYd/6bT8L0fpxnHpsej
N/qPoJyyGjvkqRupmIVlrcfqg7au2svybT1TGNwhaZcAmWKhQ9qhc+eqOFaLKlg3uflS3SIQ9Fwv
nTNfXwFewz+Eqf4jxGntSQ/PBKJ1Z0PkG1/jz4t076UFcaanQRPlS3QWBoFaFPWQZJQSQe+6ujbv
ekSie/S0D7lYHVLDRgf86bktXmDCigZqU2r3Ya22S7dvt8bPQ8+AYvfHAvaizB6MFlg2jVvWLQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27970E76338DEE0"
last-modified: Thu, 12 Nov 2026 00:48:13 GMT
content-md5: I5jz7NsuDzwLipn7V7dbnA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4266394c-aa87-4a03-a44a-e11e7737ad00
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-7a64b33b-27b7-d49f-dcaa-c77e37e49400/test-blob-7c9f6f87-c806-3eda-0773-d117dd09a914?comp=tags

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
x-ms-request-id: 346b1344-c303-4df3-bb23-33b762bb9fe9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:13 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-7a64b33b-27b7-d49f-dcaa-c77e37e49400/test-blob-7c9f6f87-c806-3eda-0773-d117dd09a914?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag><Tag><Key>anotherTag</Key><Value>anotherValue</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1ad25930-812e-4d4b-901a-c73a53155c02
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:14 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-7a64b33b-27b7-d49f-dcaa-c77e37e49400/test-blob-7c9f6f87-c806-3eda-0773-d117dd09a914?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_5
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-request-id: c65a02ba-a823-4b95-b68b-a9f9bbbb1185
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:14 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag><Tag><Key>anotherTag</Key><Value>anotherValue</Value></Tag></TagSet></Tags>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-7a64b33b-27b7-d49f-dcaa-c77e37e49400?restype=container

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
x-ms-request-id: ca8bde14-239d-4204-b7de-63fba5cb5df4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

