## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f2a16e0d-4fe1-e44e-ef77-168f46cc2452?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).AppendBlockAsync_NonZeroStreamPosition
now: 2026-11-12T00:50:31.3036730+00:00

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
etag: "0x1BFC8B580716990"
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aef2edbf-2e2a-45da-b939-3214341424a1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f2a16e0d-4fe1-e44e-ef77-168f46cc2452/test-blob-632e5b8b-5388-d03a-beed-0307f9f7df6c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CC26DCCC059180"
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7a82d928-b7a1-4eeb-924f-da1fe3f4f910
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f2a16e0d-4fe1-e44e-ef77-168f46cc2452/test-blob-632e5b8b-5388-d03a-beed-0307f9f7df6c?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
xvTxYNTmxFb5oFcEMfKcsMxnY3PrzA0JunLabWNizx/Ds91gzkAfBaxcgZVd7esIgNge4wht7/nm
56ZhC1bzl9E4QH0UO+GLSF3Gj0t3rMyG0u2LROsXVsTjeeaavflWaerEJK1u80T2kpqqpmCubzrZ
2zlpaFPlIeq4McH68IpjcCVhs4cfGN6plLFRbK9kNQqrwOLA7QGW3gPCtcKC+6EQRzU6TbuzusJb
wNOhlLQ6VPu2TjCoo4MkytSDXGIbJpgQQCV6KehP+AYfZC0t9UpPh2DHzKxxZ6OxFoLmL11fP5k7
kVOPwCsTZ1YpiT5W99SKNNUCVFnrntmByBNlaMmovyST8WT3wMc1s2RWR95lWh+uXPuIXetAUPJ5
DfcYrf+MgckZwwVwknQNzKD1lFf7HG3ztwvOH2E5U6FxfbPPHQVkycYUS5caPcmHepFKSrubfvCK
JPb0vmFn4HBj/xXAPq+akcqR5tHW2XpBRqXQ7gjl1v7CRfgPcApkrWomtj60xjzhsLnxCpges0p8
s3e8lvJnfikW/vm2iyG/LDlnryM8jIBo7z5P9Mtmo5GukrySqBZ3vjgUncdCKiSYMd5etwMmQCb3
U6e0GIldsFpnCPhkLYQj7/DrJ++5JcQZt8PtCOyNh1KWm1Ruw6aut+1s2yIsMwRaO8gSOxk3Pi0=
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x233AD86948155E0"
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-content-crc64: MOmbF6R7hm0=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e758cbff-e668-41a2-bf69-0c702607f7b8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-f2a16e0d-4fe1-e44e-ef77-168f46cc2452/test-blob-632e5b8b-5388-d03a-beed-0307f9f7df6c

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:31 GMT
content-length: 512
content-type: application/octet-stream
etag: "0x233AD86948155E0"
content-md5: jinMWcfRIY5WEYLQCp8yTQ==
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e5d847a0-193c-45ec-bec4-2575381d0a51
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-blob-committed-block-count: 1
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
xvTxYNTmxFb5oFcEMfKcsMxnY3PrzA0JunLabWNizx/Ds91gzkAfBaxcgZVd7esIgNge4wht7/nm
56ZhC1bzl9E4QH0UO+GLSF3Gj0t3rMyG0u2LROsXVsTjeeaavflWaerEJK1u80T2kpqqpmCubzrZ
2zlpaFPlIeq4McH68IpjcCVhs4cfGN6plLFRbK9kNQqrwOLA7QGW3gPCtcKC+6EQRzU6TbuzusJb
wNOhlLQ6VPu2TjCoo4MkytSDXGIbJpgQQCV6KehP+AYfZC0t9UpPh2DHzKxxZ6OxFoLmL11fP5k7
kVOPwCsTZ1YpiT5W99SKNNUCVFnrntmByBNlaMmovyST8WT3wMc1s2RWR95lWh+uXPuIXetAUPJ5
DfcYrf+MgckZwwVwknQNzKD1lFf7HG3ztwvOH2E5U6FxfbPPHQVkycYUS5caPcmHepFKSrubfvCK
JPb0vmFn4HBj/xXAPq+akcqR5tHW2XpBRqXQ7gjl1v7CRfgPcApkrWomtj60xjzhsLnxCpges0p8
s3e8lvJnfikW/vm2iyG/LDlnryM8jIBo7z5P9Mtmo5GukrySqBZ3vjgUncdCKiSYMd5etwMmQCb3
U6e0GIldsFpnCPhkLYQj7/DrJ++5JcQZt8PtCOyNh1KWm1Ruw6aut+1s2yIsMwRaO8gSOxk3Pi0=
```

## Interaction 4: DELETE /devstoreaccount1/test-container-f2a16e0d-4fe1-e44e-ef77-168f46cc2452?restype=container

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
x-ms-request-id: 4913c59d-40c7-48e2-ac48-eee807997172
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

