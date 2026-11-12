## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c2ff1095-5274-1bae-2c71-0f675f4f3690?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).StageBlockFromUriAsync_MD5_Fail
now: 2026-11-12T00:49:45.2110160+00:00

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
etag: "0x1CF31576D5BA370"
last-modified: Thu, 12 Nov 2026 00:49:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 75d2eec1-dc2c-4830-a1f0-a5d540fac784
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c2ff1095-5274-1bae-2c71-0f675f4f3690/test-blob-6a35e09b-8fe6-d146-9de5-a341f3b3d412

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
NXRjNDN8G/671u+7nmKUrjXoYfCGV83Mvl6l1DbV7jYX2xBdQrrxGPQBB55i8nzJ3WAydu5FCd6m
l3bU1kfH5ei4pMJSN2t690j8hVAvacvi3PfWo3dI0dIytqtEHEGtOSK1qk65d6b0t3+lSYSNdy2q
8vpQ8UFxcNPwH4DANtoHTksteb99KGVQ4uz3oodNpD99mSpHXUjhQzl6yVclNIClnvo4X/1uLcmV
/w9Uec1LonpBQp2vv/ECTDaFAl8NK61sUgSNFUVBD2tgsV45jMpsLibc4/Hj9d4JNRPH6Stqh9Nh
6CfJvo01/zMxTg6Tyb9rGNM4MEe8iFwlg98xeiZA9imK2KSjonCYp+S+sqfQdmxTW9BXMVeMpV/K
pDquA4UM8FjkCPAayHZjoIlj/da1VQ1y3R5W6cTS/jNE2P416qNessFO6217OJNa85HOKKeJFU8t
OyVmtgeUEgq91u93LrXlBEsUZmmf96WL/PUyBNWLu8OvB699+Pu5utljvmKj4sXc6CRcdK7ljkSA
2roSYg40MhsrxyYGaAxPW6yPOzhC6BkvVhuwLkYVyXlq/B1Bp1fLL4xHdxue1YAYDBkBVVILPvKh
4gzygwPUFv2tm2vvDrNVxAys+nD9kICbmCItE3QmX74qoMVL2KuJcmEd8TkVKP5mrJFGX0OCo1GL
V+rgpwKJhjysxG7tCexgI4gP4J9Ghm8jxmfi4AB6p/10v4HAqMtelGv9aGSQeKOl5ju7c8OyRNF6
veGbpqY8MhxxeUlrn3q9sEs0SR0Lk03EPfnEvzQ6wnuvRevqwu3EwTZHH/9ZOUbA/sJ3fvuzbymT
12isd3LoNrbOu1qP0u1db4jnxHRNagOzA8FxwkSA+9bBVuuEGEnDXuhIin7rMSvVGQ5yy6q1RWxl
+HSxd3RyTr+DznwC2Fc+JGaLBeCFyNKVnKk1DS8rCxF+Hx/VEed01Ty+aGKv0kC3M6dEKUCM3zCh
HNrLPUCPV8JqhLk3aRJ+Fy+jxl9v5sloftmI5+LR8T/uM/UMqJj7LhCfRE6Hf8qUxRER6RnQMTUR
Yr9nB3DgmZJ5STUdcm+WqJdPz6F64P4O8yLQwAgmHgG/+kbZkyegv6u8DjaUd1KiekCBgGGUloHA
WBRND9mJUiszXXcovRRwrxD2vtLIeXvPLUXHpZ2gK2TEGDsSUq/RMrsKYRrbeb0sENFRndiu996Z
fuKTwq2OkzETZKTYXl1gJIwXvRhg87SImpXLTo2MFSBcedPNPm8OfM3oyBUYU7Jz8HlMlzrGOIot
CycYwkSkhk6EfOSJk+YcCEFKdyueb0fiWF4UQH3mlkFInzJI9rqIREHGlNfO6VySL475e8Bfjw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26736EA795D9FA0"
last-modified: Thu, 12 Nov 2026 00:49:45 GMT
content-md5: FcnIoPZoPeRKu3FmjXv5sA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c5759478-ac7a-4160-a840-2471a3af9457
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c2ff1095-5274-1bae-2c71-0f675f4f3690/test-blob-e933c186-dbd8-146f-6e01-8110eeed1b80?comp=block&blockid=dGVzdC1ibG9jay02Nzk3MTBlOS01MGMwLWI1YTEtZmFmNS1mNmYxMmFhODY4ZGY%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-c2ff1095-5274-1bae-2c71-0f675f4f3690/test-blob-6a35e09b-8fe6-d146-9de5-a341f3b3d412?sv=2027-03-07&se=2026-11-12T01%3A49%3A45Z&sr=b&sp=r&sig=f5pU0c%2F96mIGW1arLK5%2Bm593Ql9wbMuBK5nRslY17is%3D
x-ms-return-client-request-id: true
x-ms-source-content-md5: yOjfiVwsrhZrrQJ/3xUzWw==
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: Md5Mismatch
x-ms-request-id: 9103ce6a-7c65-4f58-bcdb-a0cb79af1578
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:45 GMT
```
### Response body recorded for playback (400: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>Md5Mismatch</Code>
  <Message>The MD5 value specified in the request did not match with the MD5 value calculated by the server.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
  <UserSpecifiedMd5>yOjfiVwsrhZrrQJ/3xUzWw==</UserSpecifiedMd5>
  <ServerCalculatedMd5>FcnIoPZoPeRKu3FmjXv5sA==</ServerCalculatedMd5>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-c2ff1095-5274-1bae-2c71-0f675f4f3690?restype=container

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
x-ms-request-id: b15478a4-ad3b-47d0-a7fe-7f177fb12504
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

