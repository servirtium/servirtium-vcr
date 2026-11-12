## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1003feb3-d17a-5a28-184f-bceff52180ae?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetSetTagsAsync_InvalidBlobSas
now: 2026-11-12T00:46:59.8376189+00:00

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
etag: "0x249ADABB7992DE0"
last-modified: Thu, 12 Nov 2026 00:46:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e953336a-690a-4401-860c-72d80fa2cb9e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1003feb3-d17a-5a28-184f-bceff52180ae/test-blob-d1f77334-2f75-3d7e-e0e1-8349cc3a32d7

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
ZgtZgpXPVeLgH3GgosE8sj2wjuPN4oiEf8UvmE3fjt4d5Inpx/4ZZB4V8FW93psfpdELG6tPCYOC
1QLPoLyUAZGTg744Uuo+lyrEuPIzxqEqEPN803IyzdoFZvL8ScRigO7EKlrc5lPmzYSBi1GQTw9g
pZDJFy4eYLbkMuv4Qk5lYTgEbptHTSmflQXusUKJdBbjm6M0mWi/pcqk+LRo7os2GykZjOFzGVhm
KYEoMK9zW73UFaaqMcjPRMjRo1R0N6d6t5UYb+g1b4JLzXDml3UbMJ32k9nki+lhSUgYonYD8fLa
rXgZW+vVnqUkX2RY6KxTtnO2fqTNliyrtyWfHcwLSNt9DOn8AdWyIfQzvyyFCWGbxOwCTHNODBdM
baPFNYHYGBaI2tzCVrSeBFyvmdb/Jq7EA1jgCPtnL//SsJQx7etyWqYV/C6F2W04ZEcXnnJATEf0
ADIo+A8aIKrc76YgbBdxPD4w6Sl/PyrrqKSzUJGMkmNMPOy5SmKW+tuEqOnHGPgwpmEzD2IddcEI
PVBrZ9AZT1xC0y8quPLcme9N+5dAJJCrgqovWYIBLscrsA0SKpMLaliMhETJBu5vV3Zz0HkqxxjA
wOQl6vbZQKRn/gflym5bQZA+s59L4ny8wAEMjl5OAej0Umqv5oBhs0OgYQfmio0HF4/o6xR5dd5n
aCr1zbJGGf0e8HgEq1oQ3ABbqoB01jZ0BHbPZRXUetyMSH1WbOWQWkcKyJkUA2w02A8UHspd85Lz
gMg8drTnSnabeGPdunAayk85aQ2cXwEJmo0GwFwSL1TrYuwdVOOTI30ieYoIVx6e+VN6I4mEViDG
M9sn4IoZiEkO8VeD/HZspUaQeuV2AENuZ8YJlwvLZgvLVyAHbELzCfBB+mXGG/zcDn5D9Nw6TzKX
uHjDEPE+QotMuKVVZDgDnHD1NQbeqEzJLIiMiHIukAfub7TKL/n/A7fZemJXh6pFP1dsRRoruQ8r
+eNosboZHSidZvSEOWx39TFPBS7qcqXeR0gawkrtwraknjYVl1L9wFw5uSC2wQbr9FDp3LThQYc+
imlx/1resKQ935o2Yl3eUkTRsLiFJ4ZCL875A+YCw12u1g3oi8EBWwl8eOFrtJHyCopvEJDPuWLj
Ls+M5Ky9Ohw9iItQ9saDz1WuCK+k1no8B/lbk7PM3h2rBFzxdXdcvj7FLisFoRTE7EA7ILCyPlhV
UN2zYqdpcKpupfFpkVrdUkpw36dONmXll6Zykb1s+MUEnCWZqVuWW76Bl/wiWlrmXc5lQl+wBhl4
zcsA99/sAa0rZfU0Q6nv2oPpzZ9owjxMizPvB7ZmU5ULIduQlmTelZVP9/RksRkldmfbxjl5Dw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2773DD81ACE01C0"
last-modified: Thu, 12 Nov 2026 00:46:59 GMT
content-md5: J6TGN7RcHwU4akrFZkajxg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a90f4782-b778-4fbd-b44c-a4f8fac14548
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-1003feb3-d17a-5a28-184f-bceff52180ae/test-blob-d1f77334-2f75-3d7e-e0e1-8349cc3a32d7?sv=2027-03-07&st=2026-11-11T23%3A46%3A59Z&se=2026-11-12T01%3A46%3A59Z&sr=b&sp=r&sig=nTPMqH9sayNv1eAtxmTwmJPMU15kuQhWw1YqFkJ3Wr4%3D&comp=tags

### Request headers recorded for playback:

```
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
x-ms-error-code: AuthorizationPermissionMismatch
x-ms-request-id: c052aea9-f961-4a32-af50-975c25c44ce6
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:59 GMT
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>AuthorizationPermissionMismatch</Code>
  <Message>This request is not authorized to perform this operation using this permission.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-1003feb3-d17a-5a28-184f-bceff52180ae?restype=container

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
x-ms-request-id: a843ee24-853e-40ef-bb19-5d6d3a1c7504
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

