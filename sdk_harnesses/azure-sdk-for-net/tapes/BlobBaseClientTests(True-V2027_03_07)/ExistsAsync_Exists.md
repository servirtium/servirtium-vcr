## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8521aee2-5e5c-a934-f8aa-fd8f7497dce8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ExistsAsync_Exists
now: 2026-11-12T00:48:01.2294176+00:00

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
etag: "0x21F33688BC3C6E0"
last-modified: Thu, 12 Nov 2026 00:48:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 846595c7-8c4d-453d-b323-76ab174bee24
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8521aee2-5e5c-a934-f8aa-fd8f7497dce8/test-blob-85c92018-39ff-f4ef-3280-3b14488bdd56

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
c8pOPp6X/Cz2bFSUnrL4C2d/11XGBr+ovi1S3CMfYWzMpxuqSJ5KgCOdjpLkW1WAhy+syLSIj2wK
pYBwRCAI1gvnx/eWTsLJNVcxKXgsw2PX0lXzcpi4Qxeun6Id2TsDlLiH/JNe6Ths45NdV2b03uEd
mXLKFWRyL4Pf564fq1sbLpTApcfPeekcho8FW+yxusHBAEDJOH9UFM0PfwGJTTc3QSjSNDgaTSCI
ro7UbdOXLS3tXqsbUvUUa5H5v/rnkjlXzhrE34WJprMgQIrxf6f5eFHUnO6MHO8yvcimIY0moRtU
fJ+50k6oZLj3+hFrIuzq/0aoE/ZLy7EqkSG94oQl+p9unAIIQKUDKzg1lCHdx5rcvCFHfY4kCbHt
j0Es6oI00gBy/IXp4r+gpee+FjaQTMqH4CVi3nwRSZNRGrFk1kG2AcIga8oU8tpiptemZvJ6XUJ3
pQpc0fSDYbLxl8cOPM6mCBV0b+H/cu5L/zelauOh171u7DE2WS/NnAoXIloSVGkIAF7dBe1hdzIb
ENG83vbPUMAJn0+db67lptLW6E+TOKvOnGqEw9HQDXX+G0heEb4TSNGaCLUaa5Cv+F8bio/jiNcm
7kKMSo3uOZLanlRlhpUUw6B9+DD2tDDZ1cpytYLmG5NxOCN7hv1Eq84iP8w8SnHKBsbuZY+nLzkR
snXCfIQP84LB9E5xmT2iOU1h03RjnYpZp66797YDyQjpadOHgS5JEkxKe1UjWG2JSyxBRVzFrRXq
adXWU/vMvSpGiC9pGrceF8AnGSI0Nk9AMqyKwYOrI7y+nRhZc79Qfr0q3NA+IDB0Iy6cnZTztjOF
lSFPQfunmmRzqn2fxaQB15tkCVl/AhJ7FZ5VD4Yny+bk096dADzCg0JrynWz1V2Kmsb4jqzaBpIP
1CtcUYreS9+WuvHFY9ZeoYYXFDedyEBAy3W/Lzw6Cs1LjiwQZTG3jH+VHBpsxDbvme0mw/FacQzr
G4YVHhyiXK8jetWqTjtUX4e4B6sl1Ac+z5VPFEfb8BwfJUqroW1j8r9qSUphRUux0mNqompgxUd/
10+GU0hoR4m5iinxqL0ZVBTruou83YpJnUHjcU2xv18DLMoe3J93AgHAqLsiwCmlUU5WdQq7wvnE
PbUGhNY7B8vJ7nzy+nd1dLiK/DXPJt0YPiD/W0lUR2nQWp/pcX0rhKDvWNKts1bW4AFSMcXE9RbY
7ka2PKuBdaYSIaDYiwI6X3eU380LaorJKHtIAhWjDGWIEYI3dEf1buMrmpG1/lT+F9JOLxVIzIO7
7BQwOHOQbxU7T3p/A+own3Hq4ND5FComSupDVdxPQET/e4gzxDVwmit7eq7afhToHZCjXuyzwQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22C7FD6D0F91580"
last-modified: Thu, 12 Nov 2026 00:48:01 GMT
content-md5: MLYtGXZ9KKzfpS45+h764A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8449c738-7193-4b0b-88e2-f4bce5a4dde2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-8521aee2-5e5c-a934-f8aa-fd8f7497dce8/test-blob-85c92018-39ff-f4ef-3280-3b14488bdd56

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
last-modified: Thu, 12 Nov 2026 00:48:01 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:01 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x22C7FD6D0F91580"
content-md5: MLYtGXZ9KKzfpS45+h764A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2c975744-3d02-42eb-be3f-db6204438fd4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:01 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:01 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-8521aee2-5e5c-a934-f8aa-fd8f7497dce8?restype=container

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
x-ms-request-id: 2538bdfb-0095-44b1-a5ad-905fa3d66c75
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

