## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a19b4665-6cdc-1ccc-feb4-2f98c1e5cf7d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_Stream_AccessTier_Cold
now: 2026-11-12T00:49:16.3529500+00:00

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
etag: "0x255F0174516E7C0"
last-modified: Thu, 12 Nov 2026 00:49:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 463e6c85-e6fb-4e2b-ac9f-a4b0ab3e4c4d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a19b4665-6cdc-1ccc-feb4-2f98c1e5cf7d/test-blob-4fe667dd-acc3-dc7d-5963-6a36a9f2d90e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-access-tier: Cold
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
j9kDq8Mzth2ypF7Evfq5zIBXhVYBBDG4yb5IeQKVcgzaIAjn4SS5qbHJnR5NuB5eqZ21UmyDDYuo
S+EE6zwbHDJS6Z3x0etcndulN2YTahGf6c9l4CCfVxN9P5VCtL50roDs+86BbdexWbSR3dUkleDQ
ZQJstjsSspKKdJJVGekdMInlJm9CHXv3s4drDnk9WKq1ck+7B/dF2Ug89/hFW0DLc61LP25wjkeG
dAK0p6QYTBzooKaZYiiSoE0nBiaDsldHn5vM8hk8ROQHNZP1kDKjI6vcXLuZMRGEuZ4gSYghA8Gq
bQcJTFkCrFvCkSyVnBAag+J6placrW2JRzl7G/tc5jHRSiIrmtdS2rBg1p/k7xyNBsWlpl1rDr+Z
fwQgh5FfZqr6xFLt7+kLKMylPNbNpVgc7RQ1tkDUZTtjkRrSMVIfAHD16SrKoBfcmn2QxtLozNqs
BJl8Kq9qJl4Wil7OOPd5hjtm2LstUk39WRzCQ59pesRAJi25otbAisPLsxW4DWGGF0CWgvMefrJM
f9GTp+K/rQ+ZjhLJwONlpU34Yp43REu6PCxe0vfRIad7bCMFLePhCwUGH39OvFdcMd2lJhsTFTqF
2Gu1YdsYyG1qTlO/YHdqFlaYMSTLbH/UAaEaK/qLZ1fof1V3K6oq7VcS424DndBlOxDFeuQVumzs
4V86/Z1y3+b81uEi8uurbkPNuYgR0GTQte/qxu1z0sXoi0pL8PC5nwSHB8bvQkgkGQygSADj2hD6
aUitiBj5iQMcOWagYH5TFBmEicmd4XKnxazh0orEBbE5UIanDBfrjn3D0gjig7mNTTTnX1FHXYjW
BsJsF7d4WDS1Zw/3rAcBmPpL2g5pxEHyU4RW3KZf8vP+0AZVf3bGSnrULByqlqEs5sdW+4N5bEGB
ecMyInuNVnQb+dsBrBiDhY+TlZgkSL3jKvbfCPdwhGTE1AazlCj+RtanjpzGKjqu0nbz5dapXDAG
TviFrk19q3V2PNcR0PBnlE/BfLkhHf+8MDaAfJ6NG3jWrEUweZeJKuMnT+1inQGFjFCH59925DH4
yX4W/C/W6CFfOyOrNxu3OFLW+s0RWZI0+/BNBjSYX8gUN68Yci2zUGbMAmLd2lQ1z6+MoOpj52/s
4gE+iOLsxttblwBrnsUkIqlnRFcvViCbGDaEC7/dsFBALJArdMiE3zuGgkNUyTDpZ31B/KIYvIvg
o3CsaLocfuavK3I0+K3h4mQbqdTdRk4FmqNCnLStJ3AFS9FX2HeAagNcpJ6+tW/PXxk9/BO2A1wh
ps0X2eExAgMCL63ciQrtmz7QgKGwRuU0cjybbypdTkd0NjGqaZAiK6KavIXB89YOUGHU5oK7cA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x246F189B75A4E80"
last-modified: Thu, 12 Nov 2026 00:49:16 GMT
content-md5: E2VSDWGajMxeYkgA1xfRJA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b6e19b9c-6fbf-4d4a-8758-42d27db2dfd3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-a19b4665-6cdc-1ccc-feb4-2f98c1e5cf7d/test-blob-4fe667dd-acc3-dc7d-5963-6a36a9f2d90e

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
last-modified: Thu, 12 Nov 2026 00:49:16 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:16 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x246F189B75A4E80"
content-md5: E2VSDWGajMxeYkgA1xfRJA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ac083730-18f3-405f-9530-b4ca52145f4d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:16 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cold
x-ms-access-tier-inferred: false
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:16 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a19b4665-6cdc-1ccc-feb4-2f98c1e5cf7d?restype=container

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
x-ms-request-id: 7051ee7c-b047-4404-bfb1-daa08e2eeffe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

