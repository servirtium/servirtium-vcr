## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-525b7b3f-03c7-2351-57fb-67f7d21f3db6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).UploadPagesAsync_MD5
now: 2026-11-12T00:51:33.8841514+00:00

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
etag: "0x24554A4CF8D0240"
last-modified: Thu, 12 Nov 2026 00:51:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0de40c9-5f13-4a8a-84dd-b610514950d4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-525b7b3f-03c7-2351-57fb-67f7d21f3db6/test-blob-2782c18f-0e6c-73ab-1a8d-0c06dd364e10

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x27797A1844C9880"
last-modified: Thu, 12 Nov 2026 00:51:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5716ece3-5a62-4dca-b784-0a6ca97f674a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-525b7b3f-03c7-2351-57fb-67f7d21f3db6/test-blob-2782c18f-0e6c-73ab-1a8d-0c06dd364e10?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-MD5: 9EoCOQ0U4RFuw5kqKvXJGA==
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
3z5c5en+8Cv7TpdpU+u6JAEUiv/bZHEAWaP/tm4eT+tMkOFW/t4CQIovVnhs6NBrQUP1vpU+23rN
W4xF/zm93P6sHcMKZCUjEUl0rA34lHDTk3UqKJFWDbVmiKJRvUFQcXl5wMoMYd0d0qxMyS5t1Mcb
cWvEk7NtVQ8Oo9uD0lQIJDqTftSlxzKYDFbkCkSG+bTbNUvVjN7GDGq7/r0BmgBYQ6X02Vbydqo5
LIZdiEvLh6knp5wIMpdbzXFq6sh0lnJWi8afkR9e6b+hm2BYaIMe8HYT2vNjUBENmAvkh4vhxJUT
B/2FK/WKyL7dZ5Y3A2XuTPlSYLx/8ju1kfkUemEzv9fKRGGGmMSAiRE0heh61pWm9juRjmPZlBTB
0Jr8dU5cqae/bL4DZ7M10teqSmxSOrpjbYQloTBz8bBMxMcqgxPC19tBumrXoo6HXLyML0mnb5Xf
mAjKNgh2THoNt6LsC07D53KREX9QjMr1nkV05sJmpFUxSusL+KDTym7vyevsm1FuyUfXFl0Wjww+
1ZjCAmW4phJMusFjt+/RvUcRYMLeCQP0BRx6j473G7rezCIIEMcJNyPZn+CQChFXBVkWBS9JX8uV
zvxIPReEVZ4GhOvMyax/BymfBWoiY/sLIoo04RaKlW1XckLKwPkMVUpBiYUmizutlv0GqVphcmoB
PRqMT3SIfO99dVZptUYvk7Af4Np15JdOh0oZg+sT9f/XyIPffwXVuQyWqBblQ+C21xapQZKQjFiD
PscpbvgEan9Wku3DUBSqSibN3juBaURpYqzUabNtRzwrXEE+rEoUkj6WjrDz84cC//drwq0cAdWC
wAxMLwHM6Uqxl/PSa53cuUz96tqTdW8l0mm7AYWODlpsu+s+yGM8yaVmQluTL5NZjwhhHhf67kqd
JlyYEOfFIoiZZrCynfHpwSA0LTMTkaPVYXJ8LPBDccyhoaEGpLm+oB/T+cjjp/EXeF32xsEXiZW4
wq51SfaYVvXjEPxP4hxndo0TQJfb8rqAZLSTTasLiRcMTuIKSVcpOqPT/5b1yJZAjk80A0n93c/0
9ORBBQlJ2IfkQ5M6XC016gX0CPMjipseUr5b14bOD3ASFlRy5zWaiScPEYUCBTIi/hlDCdXc0WpJ
I7JK7gEBFTMiJ0bYwwLQWX/ME3gWHEyMOdhsigWbNkXpKcSCT5olDvtR393rSTsWc69VEL3xMgdl
vrQolIsuhvEB7po9TgnkpgR9xTxvoO+dVRdWRSaH+Pa9HJDm/XpwI1js6lqh2CWlcWm4dG3K9h7F
iz5010HLefajgDF5/qiKDKHkgrWU/HzysNS8zoOJ8iVyIHI7+0sXIHBj/VjzLHPBLmfL5nRoMA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D428B4CD14ECF0"
last-modified: Thu, 12 Nov 2026 00:51:33 GMT
content-md5: 9EoCOQ0U4RFuw5kqKvXJGA==
x-ms-content-crc64: z69Z1c7FoKk=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a91e0a3a-b869-49c5-a95c-234ac8f0553e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-525b7b3f-03c7-2351-57fb-67f7d21f3db6?restype=container

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
x-ms-request-id: 884d93cc-60c8-47ed-a9f7-368b7d5b2349
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

