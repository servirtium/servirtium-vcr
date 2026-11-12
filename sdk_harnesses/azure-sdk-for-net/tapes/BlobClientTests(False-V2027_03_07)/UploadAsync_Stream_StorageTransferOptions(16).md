## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c330ffaa-6e0c-f7df-5e70-7efe6d7f4bfb?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_Stream_StorageTransferOptions(16)
now: 2026-11-12T00:48:52.0089560+00:00

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
etag: "0x275B2E6AF58B8A0"
last-modified: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 04dcbff9-527c-495b-bf54-aa3bb53137bf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c330ffaa-6e0c-f7df-5e70-7efe6d7f4bfb/test-blob-a7cd004b-e492-b248-1f71-76199e0a2e16

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
5e4dx3xwO2/Q3zS3WiDrqKFViWQRp8LFt32kmvfFWVNCZxh+YYN+2sRe17OwkFj+hs54SYHKBT0r
WBD/zKB3CobgdfIHbEYd1q6fs9APFSYlpRQoTQ/Sd2LbUglzfw4j5swszxpl9xmHW3LTK1JtHELp
2SeMTr12Dv2PKxo9qVege8wD4kULv637oPGc/0wQbjbGiabnl5cPtcEd1sv/SrEbMq+FaTn93Rl5
ka7L2g+xf73jdyCxueQ19CyD7uni+1ZAgcydigX8yauNbQXpQ9uya1cNG9ORannLUHQMee8vlpVX
ilhCFPS45q10I0veS7FR0IKS1OCDrxdS0TmQ8E+8XddwkbiDb1diVTQlHUYt7QXDu6hsncG109tB
70K7J/Zet8Z0bbn4zWEqMH+rXpHQJeQ0zTSnUL8Vur3cQYAVpi0+xmV/uX9Lyu1HQW1CCnVKcMpe
h1nBt2cHXrP7G4zgFYlRbJcsUWtk6QNHXw5S07BIktG1tx/TfA/+eFrMT65hZizk8J3dHR9f+Z5W
eldYtIsCs4m6K15pfvCHLtgQmJlV5fjhbuMTanSxVr2BfQK4pcPPypwlpjvOenKtVu9HTmEEAZRf
d0ao70gUCdWg6ADtz4gUQc79Lz+9E/NwZhSFagdcfHxtWC58J9tTEJxlLpFxv4ZmMg2TBtFUoWNT
N4gzjp/ORGuEf3ZamBrzqh+iWOVh/6aOHjj5yHaqGbfKKe9SH4H9l+km7D8PDJrzoFyyskl+8Tfi
pXBn1Hv12ma/kG4qoIqdpMD7OxNnfhKdBigZ+GZtTDi3b3oRlsNuMRLYUHwryf/SFA2IgrUkeiZe
yc5T2+H/UUM2cjEQjA79jQoAjy6Wcj0pR+NZ5MqCkvVTs831G1Uw2P449VbOwYj/i/WrJOv4yFeQ
KZT9pmx5s987vdhACHG0z7YwXXzmWoVaWlnU1m4KWut2ZPHAMzKRv0F2kgSvvoKD9lQ0x2raqs8P
okwTpN1xMWLtyqSA9JyEnp46cMeAqpvWUd8a1ZOAnLoisJDlfRpkBWGiwvTeAgK3ryjMnzkHj/ew
PFL9VlvPbS3qXkQMniCD1mpm3uim907dYiVqs/yAGiGYNUHHZ64F01TG9KS+qxAHSMnPobEOCkQD
H/M1ZLkxakMic2nfu267YAqU3wOqH7cUYmsysHlwiSr8xEe7z26blYpgmzenKI1aE0CmeipBWf88
IQJO/rnJsuo+4/cmAJCc+Up5SYSAbTrd2J05yQ4AumpIfq5rTJbRlulMaESVMxKvCYHfyA97vLPI
cCYbkOjbPimM3oLhMKy0qLObMwX2R6SKicCNIfJbzcL7o9twtQYAcSkbCVWQzdnUKyBc34it0g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x207B55A61273E40"
last-modified: Thu, 12 Nov 2026 00:48:52 GMT
content-md5: RAC09MR2qsEFGqzhZlgp+g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 106ed6d6-1d8b-4940-b28e-434abefc549c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-c330ffaa-6e0c-f7df-5e70-7efe6d7f4bfb/test-blob-a7cd004b-e492-b248-1f71-76199e0a2e16

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:52 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x207B55A61273E40"
content-md5: RAC09MR2qsEFGqzhZlgp+g==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e379fef4-32a3-4f9c-a804-59d750960863
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: RAC09MR2qsEFGqzhZlgp+g==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
5e4dx3xwO2/Q3zS3WiDrqKFViWQRp8LFt32kmvfFWVNCZxh+YYN+2sRe17OwkFj+hs54SYHKBT0r
WBD/zKB3CobgdfIHbEYd1q6fs9APFSYlpRQoTQ/Sd2LbUglzfw4j5swszxpl9xmHW3LTK1JtHELp
2SeMTr12Dv2PKxo9qVege8wD4kULv637oPGc/0wQbjbGiabnl5cPtcEd1sv/SrEbMq+FaTn93Rl5
ka7L2g+xf73jdyCxueQ19CyD7uni+1ZAgcydigX8yauNbQXpQ9uya1cNG9ORannLUHQMee8vlpVX
ilhCFPS45q10I0veS7FR0IKS1OCDrxdS0TmQ8E+8XddwkbiDb1diVTQlHUYt7QXDu6hsncG109tB
70K7J/Zet8Z0bbn4zWEqMH+rXpHQJeQ0zTSnUL8Vur3cQYAVpi0+xmV/uX9Lyu1HQW1CCnVKcMpe
h1nBt2cHXrP7G4zgFYlRbJcsUWtk6QNHXw5S07BIktG1tx/TfA/+eFrMT65hZizk8J3dHR9f+Z5W
eldYtIsCs4m6K15pfvCHLtgQmJlV5fjhbuMTanSxVr2BfQK4pcPPypwlpjvOenKtVu9HTmEEAZRf
d0ao70gUCdWg6ADtz4gUQc79Lz+9E/NwZhSFagdcfHxtWC58J9tTEJxlLpFxv4ZmMg2TBtFUoWNT
N4gzjp/ORGuEf3ZamBrzqh+iWOVh/6aOHjj5yHaqGbfKKe9SH4H9l+km7D8PDJrzoFyyskl+8Tfi
pXBn1Hv12ma/kG4qoIqdpMD7OxNnfhKdBigZ+GZtTDi3b3oRlsNuMRLYUHwryf/SFA2IgrUkeiZe
yc5T2+H/UUM2cjEQjA79jQoAjy6Wcj0pR+NZ5MqCkvVTs831G1Uw2P449VbOwYj/i/WrJOv4yFeQ
KZT9pmx5s987vdhACHG0z7YwXXzmWoVaWlnU1m4KWut2ZPHAMzKRv0F2kgSvvoKD9lQ0x2raqs8P
okwTpN1xMWLtyqSA9JyEnp46cMeAqpvWUd8a1ZOAnLoisJDlfRpkBWGiwvTeAgK3ryjMnzkHj/ew
PFL9VlvPbS3qXkQMniCD1mpm3uim907dYiVqs/yAGiGYNUHHZ64F01TG9KS+qxAHSMnPobEOCkQD
H/M1ZLkxakMic2nfu267YAqU3wOqH7cUYmsysHlwiSr8xEe7z26blYpgmzenKI1aE0CmeipBWf88
IQJO/rnJsuo+4/cmAJCc+Up5SYSAbTrd2J05yQ4AumpIfq5rTJbRlulMaESVMxKvCYHfyA97vLPI
cCYbkOjbPimM3oLhMKy0qLObMwX2R6SKicCNIfJbzcL7o9twtQYAcSkbCVWQzdnUKyBc34it0g==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-c330ffaa-6e0c-f7df-5e70-7efe6d7f4bfb/test-blob-a7cd004b-e492-b248-1f71-76199e0a2e16

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
last-modified: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x207B55A61273E40"
content-md5: RAC09MR2qsEFGqzhZlgp+g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0dcd49f-bcd2-4841-bce3-c8698766b5c9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:52 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:52 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-c330ffaa-6e0c-f7df-5e70-7efe6d7f4bfb?restype=container

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
x-ms-request-id: 404f2052-90f7-4180-b1cb-3e51f3ad34b0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

