## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5f2b41a9-4b00-02f6-d4ec-bd1d894b5d09?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).ChangeLeaseAsync_IfTags
now: 2026-11-12T00:46:23.8403713+00:00

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
etag: "0x1BEBD09FC4F3B30"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f52595a-9b6f-430c-8c2c-204ca57aebb9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5f2b41a9-4b00-02f6-d4ec-bd1d894b5d09/test-blob-c924bd5d-37cb-3a90-a2cf-2bbc1e2ac740

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
dQH40sFVVxajP6OnaPWrQeNDm7spDL1ysPC9MSA55KkkfKeIUotICGUOJYyT6NKtJOrY2o4MFmhD
hSHQmCb2alr5g+xNIu5Y+5NVG+Yx38geEA01YQobGGU+RMxpd28/GLsymWXlXwH8gN/7tvuCEqZZ
sogYwAhQ3muGD94h7oMjFgMq/kZjOLEMOeAqH2FpvDEmEMXnJlez4br5Xk8i2pFc15/4VxNf9XnX
DIcnJb4JHFKs+t69PO+rdxyLadlh6V5PzkjCcWUdxhpLEBrQi7z78EH9duCznpuwTN/21IyfdSMo
2FZ2R6vtjjPDcivV2+xgj3mXZHN9mzCsESWFJvKOrJr2p7JlhaiWD+es8Cxv2nDzlkQTBxGwqjwm
yTWFZ2dBNcWR3jM5+grQAVSL0asEPTe0kpCueqSIRvx2P7tyEKd/a7pm3vs9uZs6Qga9JNmQIYz+
0dXXkrohCJc2w7tOXfCsC2Xxnl87d9j0czieyyIj5R0vdD/SqNgARNVjBvbg7OQVEBhzn4Mswln8
4h6Bgzx1E96dHuix2mOM8VmJ2HHiE4dTiLsJr0WaArLl1cW5fsGY7vMYQ837ZDW1564po+roGs+X
LfuBa2OYAhs2ywWd0nKY8Ol+ytC6WCOGVMiXcV/I/Lr2IlDFF4KPf0GyxZgvFxQ7kLIAalD+3NXX
+xaaAZC7bs9Lp68i0thn7kqOB5OLVjy0W+Gtx5Fq90Z67hxr9H6w9lbJ5HBkGL3ZmXwFb9RCS6TZ
5qWvDqY94a9pqOS8+/nM3hE8wnLMT0Ik1C4VZIdxN6J4kQ3YAeiwiwLB+3DZHZ2COZHDBokyDZdj
izl4KHwn+HBBRGnr890oizZvC1TRSreQkyr2rTEYRYR2dXauOGOGmQIAl9g0lkW0mnpSwwJCkUCC
55RRMUs+KP7kdX5nelPT6XFR0LLeW/3lQRK2xoKBM+M1K1DONGi3wm/aTyDHTSAnf9qR8MCNpIuX
bO84iGJ8Y0GaMU4CBLUJmg5DAwzcHfTyj0ao8EMip4fEN8d4fzoNXuzfLBvRJHokh1aySqB/u077
Rvgb03L+d4nHPc3tkRvUNqUf/PHYIGrLg2nscF3mRXx4fDhB8Yp64bSRCuatNvY63hT6X75dIiWN
UFAJEQcs4PhQdRTikkQbpRs8RhaDHUxyspJJ6+W9G1kTs6A6cc+tZSnuXMHhWEvP37qiIdwPCjID
ll914vQSk1q6z9+j4TRLj+DslcGKkVlGegwrGvp9BKluNttwOII028lnJolsK/2GV5L7InRxeAUF
Lmjo53hgPcs1NatZ2lZet7n3I2rQ2k4OpMNngeE1/b3WawkZTPNRB+m+NvVSLXw7nWq6eVWaNA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x210C13418883240"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
content-md5: se45i994bzWaCX71+CfCqQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a749671d-86fa-48c3-977e-dde8073910c3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5f2b41a9-4b00-02f6-d4ec-bd1d894b5d09/test-blob-c924bd5d-37cb-3a90-a2cf-2bbc1e2ac740?comp=tags

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
x-ms-request-id: 3ad2d247-e63d-4958-bdbe-ba3fb450cc7f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-5f2b41a9-4b00-02f6-d4ec-bd1d894b5d09/test-blob-c924bd5d-37cb-3a90-a2cf-2bbc1e2ac740?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 42d91a54-f8b4-e9bb-0038-ed836f4d446b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x210C13418883240"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-lease-id: 42d91a54-f8b4-e9bb-0038-ed836f4d446b
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1ce2b52f-7c7c-4108-ab6e-fdd5aba83912
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-5f2b41a9-4b00-02f6-d4ec-bd1d894b5d09/test-blob-c924bd5d-37cb-3a90-a2cf-2bbc1e2ac740?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: change
x-ms-lease-id: 42d91a54-f8b4-e9bb-0038-ed836f4d446b
x-ms-proposed-lease-id: 811ba6c6-a312-bc58-7747-2ce4777a8367
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x210C13418883240"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 49d9049d-a673-423e-8c48-162fe38786fe
x-ms-lease-id: 811ba6c6-a312-bc58-7747-2ce4777a8367
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-5f2b41a9-4b00-02f6-d4ec-bd1d894b5d09?restype=container

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
x-ms-request-id: 75396f40-acb2-4484-96fc-37b2c4430491
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

