## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9b5ef421-6be7-b4f0-9f1e-1e3c104ced70?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadTo_Initial304
now: 2026-11-12T00:46:43.8831700+00:00

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
etag: "0x271A9CF4C079CE0"
last-modified: Thu, 12 Nov 2026 00:46:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e7a8a52b-1ded-494f-9ca0-50e91771d215
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9b5ef421-6be7-b4f0-9f1e-1e3c104ced70/test-blob-12361d72-8b93-aac4-6ad7-64a3c91301fb

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
y5bJ35nJECce7LKJZ7QZpk0XwQKB80fZ4E5YV2zFyAe/3sG0M9KJWOQ2fPu5Z03rBHfu+Yvq7tdP
7/9KcLi7WSOqyojzZXJ6jmgeS3dLIHkBbVP018981PDpZUPTPucreiLXDp3F958EdGoiy6JgA8+G
SANlxoJULvWXCv8upk+A8tBUdBHcPHW08GJkWQhNiGF0TfXkxrSggt+nLe2f1c0botnSC4+9qQyN
sdYf8NXsSoGeullZmywcs/EyNA6IFBqVSbcve33RtqPpVxXdgZIKu+NrARpzwQattViei3X9BJy8
iacdvM4EzAS2cEMWPjJeKHkrHBL/IYewgsUlMyot61N4Iffr7P4UZzUWvVHClnclQGP80ueJvGcf
bTkJ35nZiIXwnR06cjt6FrTd6WQ17uxO//LHMRlr72SPy3/EC4ibPTTM0flZ680ngrsyrNMD6n5N
ut+mEVdrha65qqa8tQssQawvaRzz9RQln69dOEKQjOEAd1Cp9SvdYExKn0Ama8yvBmon04BiWsXL
gXKoDk1rKR7FvD66g0yAUgjPqFXU/jTirjHYaLlgnRyL3XO5NVL/3nYhYa+O9IMdpoF4krFv94I9
xV8bk8BlZB4hL6XYxx220Mnfsp2FVLmtu8E46AtqG+bxe2/y40u1vPyQbMTeRN9jwcHoj0XluHGm
bdj/LXwTtxS/50ytw+19KvWh9Oj0z3bi1CZJgouhDML+THVzto+AfbSwHl2Stv7UamVPQ8SIsZ5h
HFlVyjSIHtqJr3d3CnRmIHYzQ7AZUB4odBgmUcj+dZrXEpk2KrOAJwCCCQaGXV/x6CJNVW3tSMw6
LVUcYswSijrdoPjaMPbDsxyvl0YXoRe4NWmlsR8s6crN+/xdY8U0b37Mqb1nFrgsiqJRPbCFI4w+
ZC1jbdkasLYtDTT6ZVBXeyfIS/daUB6weSd926sZR9hwH/6X0QKlsfkGOgmEMSRR+sKJvdeU5BQO
svOynNULFMVcikVRv6klI5r+UxYVLEcCK+DpkIoA3DvqiR4O8xQj+yVEJ6ffADsYZJo9lZD++Yar
r3H0IYQ6XK4KZzaLFjCF21jw0ASgIyul0Cvww0aq64+XYkOjLtmgCcv51JgEjU1qt7o3DSiCC4xF
T1FYSphnX3um87Ps4qx/T8Y4p06ToEPehguMc95mFVe2Xd+ISL8yknQcXZmafdUNuL1iSWQ+sq4N
esON2uydQN5cNoTN9wcHBhXadkKqRAk2frsgBMvzeKswes38pLeHfh26PUZQQMC1WkNOYzxrYja6
V1sxfTwTaL7ZnHw6C2FdUvcl8AbC5T76aqmIpBRvxBiXQU1bVgDgp9SHd6REe0/i8RFERnIw9w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x218160C6015CC00"
last-modified: Thu, 12 Nov 2026 00:46:43 GMT
content-md5: H6zwju67iVf/OEl1ZfzXXg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 69bd5fc1-1994-4478-b8a8-2174ec49b4d5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-9b5ef421-6be7-b4f0-9f1e-1e3c104ced70/test-blob-12361d72-8b93-aac4-6ad7-64a3c91301fb

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Thu, 12 Nov 2026 00:46:43 GMT
x-ms-range: bytes=0-4194303
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
x-ms-request-id: 6d9caa1b-f202-428d-9ce5-ca93206a7348
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:43 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-9b5ef421-6be7-b4f0-9f1e-1e3c104ced70?restype=container

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
x-ms-request-id: 01cc2086-4b8b-4449-8f84-1d287d2ae51a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

