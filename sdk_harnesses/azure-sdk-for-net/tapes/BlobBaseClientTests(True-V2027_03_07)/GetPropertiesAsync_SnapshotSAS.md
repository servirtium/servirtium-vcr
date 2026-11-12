## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-67fc1fbc-6e1f-f93c-0680-193fb03d1bcc?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetPropertiesAsync_SnapshotSAS
now: 2026-11-12T00:48:11.2771814+00:00

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
etag: "0x1D88501ACE25300"
last-modified: Thu, 12 Nov 2026 00:48:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 97af2b79-9c70-4e3d-9658-a08640729b4d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:11 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-67fc1fbc-6e1f-f93c-0680-193fb03d1bcc/test-blob-e2e1724a-cbdb-c40c-124c-6d6b2ff2e20f

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
48Il/FrVbMrqvTB2KHwcyWF4ClJ2N4XxEzdV0wDQyhOdClztFx5ydAYX9x2alZyVMKMKtuiQmKs9
NOkif5nKGvMc2R4fLrJCBpVMX0BnVn2bwKJcxRMqDXGxsOI1T/VsTN0qfbx9dQHxx7BTQzhr1d1r
hr/2blTf8cusbn3PDbaf3xNiPdjAHkqga/5j18k4RdsFycg1dt2ISovw0QeEIbr5s2QlCJgEqmh0
VQNWfBoCcyiiykPuaWg12fJNz0xDHElDaiNlEz1DAB5fwSHaMs5x7l7e4lZ2Ckn77y6lt9scMTi5
EhH3nWDrX8oljqhHWqck2+HuZTryzV/ZaSMOnUhDQ4/oICC8elH+8oKMUXygs5WHgdz5Lcz+x0Sy
HTM83cGC4UoZXzmGZ2GP8HK3ZnviOLaOhhxsSRXD6lnbCVwewRXBCm8xh1RbARl6aT1ZRmDI0OR8
rlakFZc0VXTgql0FcS5d9VsMsLFhM4UC8eDYaqP4Ejl3oRO+HPTY/TLfe1a8dfgO+1AFvB8zG3vQ
oiS3XOrQ55cjjc8bn9lnM7N+gbgvRnznyW9T81YaRIWX7XrQIKBHD5O+mOco81x3nYlrtJrDoVyn
z5N7ffNBCUhJg7JflxMTNnIkcK2Vv9YS21bMro/r1EsdKFANy5GgfI+e3m+pGAZ2WH4nnzGuEhC9
aKKddFq5Xq5mQW7CBWvhg/Md9uBmacNPVlURxDUabxZAT2LuAwg05YDAQ9eYtFISRhs9kRwwVv/e
TR0Fp5p5S9FXgbUI8oDr6BBgpSXst6IC/n0a3d76EPljELXqLz3mR/cFQDKdClOaUagL0LDa8pZ7
AqkcXm7zXHG8pOLKAbnTeV0u53ZwZfMpf4s27z9IiR0fby2UyumIEePA4GVx0FDuOFZTqwsfCpy1
8t/jvW0xdBvEq5KLPq90pdWTr4WOt686R7fp9d0S/2SQ3tcJpVN2jmtJrSS+Y/mm3gY1jFoXJzov
qHa2SH8+sast+mDXagCCHCEZRAqKfOO9QhfX3XMJebed2vzcv0bsC/x4kGiZznMFsm85/eMwpCyS
+AVnZtQ3I4CoOpAEpVzaLDgOEut6JHSj0ioD0HvUbDXPScdBhKQoQG3n8JPiAQ0SXtGqIZJAF9OR
w5SpNFMF1M1bNFuVmaeT5tF+kzTgwdAc8XGqKUqijjLzsMEQfgwZ4hzGhsyyfcUpFjvBwoSfsQLD
jELhWqqCuaUpoenmg2fEZLAYGTsEanOsgBMP4MytVP6+TPHJOIdxQ8wniNzcQ5PT/V3UhpfGvyHP
NdqXc9nZfEzqJzd2+iwoptZu3eKWzzyAO+Ju2c1n+IzQ+gOt2s/zTQyP8RtbXQMxq+DAV+I/OA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2290E8A1EEFD7E0"
last-modified: Thu, 12 Nov 2026 00:48:11 GMT
content-md5: PqTAeBsf6mY7Q/mDdVRzpw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64ba202a-2953-4ea7-81b2-92c7cb590388
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:11 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-67fc1fbc-6e1f-f93c-0680-193fb03d1bcc/test-blob-e2e1724a-cbdb-c40c-124c-6d6b2ff2e20f?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:48:11.3320000Z
etag: "0x2290E8A1EEFD7E0"
last-modified: Thu, 12 Nov 2026 00:48:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7e22bae3-1f4a-49dc-a347-376a76c1b891
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:11 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-67fc1fbc-6e1f-f93c-0680-193fb03d1bcc/test-blob-e2e1724a-cbdb-c40c-124c-6d6b2ff2e20f?snapshot=2026-11-12T00:48:11.3320000Z&sv=2027-03-07&st=2026-11-11T23%3A48%3A11Z&se=2026-11-12T01%3A48%3A11Z&sr=bs&sp=rwdyi&sig=W8sbM%2FEEAFkgB9ySHW0YViqY22D1GPlTHaPVy02VbIE%3D

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
last-modified: Thu, 12 Nov 2026 00:48:11 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:11 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2290E8A1EEFD7E0"
content-md5: PqTAeBsf6mY7Q/mDdVRzpw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b9986d8a-9863-4179-a4c6-b5ebdbc0565e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:11 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:11 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-67fc1fbc-6e1f-f93c-0680-193fb03d1bcc?restype=container

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
x-ms-request-id: 64642621-032e-4b72-ad13-750dda9fdb5e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:11 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

