## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ad4157e6-a2e2-ad68-8438-270fcf8d2438?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesDiffAsyncIfTags
now: 2026-11-12T00:51:23.8740824+00:00

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
etag: "0x2619DFEC9F4A680"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 75d5cd2f-f9e4-4710-a76b-501213677845
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ad4157e6-a2e2-ad68-8438-270fcf8d2438/test-blob-5f0e1a5d-a7c2-c4f0-6cd3-ed307b9bbd57

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
etag: "0x27A3E8ECC350520"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d3b351d-c486-4d05-9d7c-c8a6e878f4eb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ad4157e6-a2e2-ad68-8438-270fcf8d2438/test-blob-5f0e1a5d-a7c2-c4f0-6cd3-ed307b9bbd57?comp=page

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
V1Qa2tZyrcEM22V+vtCkd29xGeChx7U+Z3xBD7U4Mul6z7h6cklh6mxMUuZCcQabL3XBCYHdtpCf
3HJaMZ4M1Kl7BO4YKQQlDy9zVHTO+/Z2puA/dihnnBkn25bXB7jOQH49x20XggVxm/lSaWEc0OB8
44u9zF2AE2fV8U1uTgh2pRT2kTSJXiPaztovFTO3Cgu2WyQtEHMgvbMFQpG3A03x28RNJj6r8oRn
4/6CUf40HeZCt/LkSJSg1dOBgxySI8uNPTpuauTMCmifxi11nWy10SSqdUtaDZIvrFBrKm5o1b8z
9RPDxbMBda2KRIJnKzdny7L4561/MjCnP72UYeD5N/FtQqdY8QtwqQCe0MgPyIEYA168b+0Ss8Pj
HIb2bRPMkA2R+emPDtqmhz6t4WFnl3c7e12BPccDW47kddWFeTzs0UC6fs6YiPWDFeevZNJie4QP
u/G1SlJGjp5aq5kFIA4CwA8grBmpovJo/SffU/a8gflQdr5KNobtdPAvPtxcfvTZraPCQc5rZhj+
TUwqZjqnnSmftKpPt4qIMjgoeWQVDH8yBqZT+kAq5BCmS+k6ww61iKCzvMlKivUZOg+WQuyz6UDN
+F+UVKPpdNCaqGygTm8qcvHDYlC16HywOcAxlKIj82KpbMquITP9yUj5r+GJeeufbM/774bwFw/j
4xrjuOAtdrUK9uGke1G9xpgHuziaJ8DUkSjSKAPbuVS7yj0ZGhFnyzksfoIK+vB+PSnt6FvWSLxZ
Dia3W02xLj2M6bATpKyHoPD/bqg+ypc4U+va7tD55IKBvwvrsHDre1BEfRE/a5l9Zkhr19oUG0SP
fwdi10BskwQukuSgm+9/FPNY+U2F+OhSXIeIjQ2nbKPHXDBpiKMP1+kMENi03MtY7MPnuyL3CYce
EHq55Ab3hyVB2T+/FotPSCFjeegPnoC8MKBJv7CB0FOpSngpVvPiFYizcwOLmNU4mHIAk5CeDnH6
/bRlrcd0vwnsFssSJfIugGRfXCt8MJfKESc9gD3DCjsGL1g+fWfBPrP6n4IKJXKA0hIrP7JGfcwd
mpygNj/LKQuQC/aa7wP8nh53gZEUwOu1va4ql8uJv7GMIeLLIQd0LnV3ehl75uIPL6GUz/w7Cdmw
6nmQoZJABktFDc4gMX0WA1MbnUbSOdfLG2cp9fC1UBgJGjaO443jNnPNNtgU7v0kfcuoIGuT3rGh
xYYqFhFbj721FxZGiCDGN2bTBAL/tixpBXclDDCsdjyF7R0HuCBicqcbX9fn3fWr4ugFv9muoQ5Z
wBCZNYOMCaHZwZoCvn5FcJFb5FdVgiiCeilIprZi1ksPrfgPyTwjjlU1DRxaqCNpwE5HUr23Aw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25802839CA8A6A0"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-content-crc64: mXuCDIcEJAQ=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 73778865-5528-4ba0-8eee-ae483521f8f8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-ad4157e6-a2e2-ad68-8438-270fcf8d2438/test-blob-5f0e1a5d-a7c2-c4f0-6cd3-ed307b9bbd57?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:23.9480000Z
etag: "0x25802839CA8A6A0"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 537a4b28-2e73-4706-8a7f-1ea55686a475
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-ad4157e6-a2e2-ad68-8438-270fcf8d2438/test-blob-5f0e1a5d-a7c2-c4f0-6cd3-ed307b9bbd57?comp=page

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
V1Qa2tZyrcEM22V+vtCkd29xGeChx7U+Z3xBD7U4Mul6z7h6cklh6mxMUuZCcQabL3XBCYHdtpCf
3HJaMZ4M1Kl7BO4YKQQlDy9zVHTO+/Z2puA/dihnnBkn25bXB7jOQH49x20XggVxm/lSaWEc0OB8
44u9zF2AE2fV8U1uTgh2pRT2kTSJXiPaztovFTO3Cgu2WyQtEHMgvbMFQpG3A03x28RNJj6r8oRn
4/6CUf40HeZCt/LkSJSg1dOBgxySI8uNPTpuauTMCmifxi11nWy10SSqdUtaDZIvrFBrKm5o1b8z
9RPDxbMBda2KRIJnKzdny7L4561/MjCnP72UYeD5N/FtQqdY8QtwqQCe0MgPyIEYA168b+0Ss8Pj
HIb2bRPMkA2R+emPDtqmhz6t4WFnl3c7e12BPccDW47kddWFeTzs0UC6fs6YiPWDFeevZNJie4QP
u/G1SlJGjp5aq5kFIA4CwA8grBmpovJo/SffU/a8gflQdr5KNobtdPAvPtxcfvTZraPCQc5rZhj+
TUwqZjqnnSmftKpPt4qIMjgoeWQVDH8yBqZT+kAq5BCmS+k6ww61iKCzvMlKivUZOg+WQuyz6UDN
+F+UVKPpdNCaqGygTm8qcvHDYlC16HywOcAxlKIj82KpbMquITP9yUj5r+GJeeufbM/774bwFw/j
4xrjuOAtdrUK9uGke1G9xpgHuziaJ8DUkSjSKAPbuVS7yj0ZGhFnyzksfoIK+vB+PSnt6FvWSLxZ
Dia3W02xLj2M6bATpKyHoPD/bqg+ypc4U+va7tD55IKBvwvrsHDre1BEfRE/a5l9Zkhr19oUG0SP
fwdi10BskwQukuSgm+9/FPNY+U2F+OhSXIeIjQ2nbKPHXDBpiKMP1+kMENi03MtY7MPnuyL3CYce
EHq55Ab3hyVB2T+/FotPSCFjeegPnoC8MKBJv7CB0FOpSngpVvPiFYizcwOLmNU4mHIAk5CeDnH6
/bRlrcd0vwnsFssSJfIugGRfXCt8MJfKESc9gD3DCjsGL1g+fWfBPrP6n4IKJXKA0hIrP7JGfcwd
mpygNj/LKQuQC/aa7wP8nh53gZEUwOu1va4ql8uJv7GMIeLLIQd0LnV3ehl75uIPL6GUz/w7Cdmw
6nmQoZJABktFDc4gMX0WA1MbnUbSOdfLG2cp9fC1UBgJGjaO443jNnPNNtgU7v0kfcuoIGuT3rGh
xYYqFhFbj721FxZGiCDGN2bTBAL/tixpBXclDDCsdjyF7R0HuCBicqcbX9fn3fWr4ugFv9muoQ5Z
wBCZNYOMCaHZwZoCvn5FcJFb5FdVgiiCeilIprZi1ksPrfgPyTwjjlU1DRxaqCNpwE5HUr23Aw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D9592F3933BDD0"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-content-crc64: mXuCDIcEJAQ=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 70c8d18c-7a59-4cf3-88e4-4454f11d56e9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-ad4157e6-a2e2-ad68-8438-270fcf8d2438/test-blob-5f0e1a5d-a7c2-c4f0-6cd3-ed307b9bbd57?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: d250547c-a2dd-45a0-b641-d6dcb1a8096d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-ad4157e6-a2e2-ad68-8438-270fcf8d2438/test-blob-5f0e1a5d-a7c2-c4f0-6cd3-ed307b9bbd57?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:24.0520000Z
etag: "0x1D9592F3933BDD0"
last-modified: Thu, 12 Nov 2026 00:51:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 50ca81db-9f6b-44df-8499-c26bc670e2d8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: GET /devstoreaccount1/test-container-ad4157e6-a2e2-ad68-8438-270fcf8d2438/test-blob-5f0e1a5d-a7c2-c4f0-6cd3-ed307b9bbd57?comp=pagelist&snapshot=2026-11-12T00%3A51%3A24.0520000Z&prevsnapshot=2026-11-12T00%3A51%3A23.9480000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_8
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
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
etag: "0x1D9592F3933BDD0"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d3a5ca79-c740-4f1b-afb0-6542604918f7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 8: DELETE /devstoreaccount1/test-container-ad4157e6-a2e2-ad68-8438-270fcf8d2438?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d2fcd2f8-4fca-4136-b7e6-f69d4a88f840
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

