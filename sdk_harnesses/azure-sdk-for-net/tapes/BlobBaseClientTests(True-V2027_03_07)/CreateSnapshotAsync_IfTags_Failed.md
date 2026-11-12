## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2272cb8d-3712-38ed-770e-3f34a459f5f4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).CreateSnapshotAsync_IfTags_Failed
now: 2026-11-12T00:47:41.7965373+00:00

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
etag: "0x238F9BC44980700"
last-modified: Thu, 12 Nov 2026 00:47:41 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 232ac304-eacf-4c6c-9429-37978d1e9236
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:41 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2272cb8d-3712-38ed-770e-3f34a459f5f4/test-blob-3f383fc7-02a3-2152-7cf4-87f87d6bb377

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
IFkjCCtxP/dWEuykOjJZ2x9C6EDkVfqKeFClHrD0uwxbyBNKNezJVQBB6ZAWruZKm6vYOoNzkste
mY/ayyBGYVfgSHIfDqYyeZJAo2tqc8pqW4MFG4CI6DVH65xc74nf+oc4NmV0KowFpsHwM+9f9CXF
cHCdQUXXV2A91yIK1YkIYKjkMT1l9TD2/3W+l7VG6Pd3l34ZQblBYd4ENlNq+9A359JGe8PnYHo/
p0HQGL+r9u8qkz4L7x/vos9fYL7djASkh6/i/2w0jzcD2pp4cUkeWUBkP2iSLPiyV9nziAC7Yho8
K5EPyPeC9gMGBxSEdjCGQAZ+eU2cElq3MKiTQAc3SHiAO0W3DpBI4UhkiyTjLuCobUf5POjNnxk2
WJhP77X8z7+cBDvqzjF2NpcEOIY20wHH6tO/PguPs5ssgbb3+fKSaLxlRyqlvp4WggZRyGeSAIWW
hwThPJGzDFGfvUx7fjykcc/K0IzXISw1qbsEPuozmoEwYHHtsSsqsTrYBQBRmgPKrFaYyC/5v2XY
rJPWrs5mayPLSh3Kt8Cknx5R/hss4w63OpGUm9JRN6ELFQSXVAJrcprchk/l//WV8ygRp8BKq8mF
HnQ90c9RehN8vqG8DEob5YyBT12+0Tqc/6epP4/hwWo7EjaOLqDKiws8aUFU2efd9cEzyFxrxk05
odIopzqDm/w3gPoUjLfst8NRgWf5RybAzErOrfkNz0vpVYzOouTQuc5EHVjsyWgJRxCYGkXlP1ms
Z9vwte0DKbGvKzcrHhXfgciZtSrN1ALhxGbodbUFBBYzIToJ4ATgQPOmPJ0x3in7uZh9S4kv3pPY
DvCHGrT7qSch9/za1aDDuHQ2JpdlsOU87LsciLiMBEOnMdETWSY/q5J2D+YsIOP4uZIU+Lf7cl4L
Si343yFulfO5M6TPsF9O9nsF7qD+EMvYJM8ldwuLq75yCA/4R8txCHryc+0+KAkzxgE79oS9DDph
H7pSSB3oLYfmXKdPVq+vk+YmC5zemfvG8rEJULU5tfvVlicRH79cCkZlWMxh5G9Si2KelwCdg4a/
i1Zs3tzSrKeser+InnQmyQFVeEAvZA5Bt8RSmx36NxOgUpNp8Cxpk6wktGmvye3ueM3/SApGjydI
KiYYgBCKsUOs50zgvNjV7OWTC7Ckke7XYyNP+u8IWsJsIcYFURObmgImA+KgDbv1KlsksoR2o5g4
QRztOrdTo4yJdJoSz5rS+HGtfo4LNlZnWtCT46g+9X4tzQ/2rl9L0l9VF5gg4lrBUroSySQKLAvF
hd/mwL/kSn8c5AKK20kRYawutR69Rnh10pHuKytZI6AEMSiAZBGfccwZBP1YNnZwAWd423fsBw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D50847A8C44350"
last-modified: Thu, 12 Nov 2026 00:47:41 GMT
content-md5: cAfV1P6HpZGYX9BguvTFqA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3c4214af-f5ee-4313-bfab-044ce350ec35
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:41 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-2272cb8d-3712-38ed-770e-3f34a459f5f4/test-blob-3f383fc7-02a3-2152-7cf4-87f87d6bb377?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 58aa3930-6e72-45a0-92c7-c632b38f4ec1
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:41 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-2272cb8d-3712-38ed-770e-3f34a459f5f4?restype=container

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
x-ms-request-id: 6d6f0fe6-55a4-430e-b9c9-a7b35e277d30
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:41 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

