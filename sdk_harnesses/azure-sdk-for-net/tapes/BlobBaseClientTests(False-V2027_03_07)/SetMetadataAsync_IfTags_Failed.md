## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-13d4a2d4-4ccd-2c02-72b5-273bf5c953f6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetMetadataAsync_IfTags_Failed
now: 2026-11-12T00:47:10.1829183+00:00

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
etag: "0x1F9AB9935B800E0"
last-modified: Thu, 12 Nov 2026 00:47:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f68887c1-075a-4cd1-a328-6fa69abe7397
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-13d4a2d4-4ccd-2c02-72b5-273bf5c953f6/test-blob-983d9174-65bf-66cd-0494-f1a215c503bd

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
9aJxr/F3WeHciqpZ5bCFwi0MR076vs5v1G4OOFtgF62xakVTV6ME/TdbuzW6dIBUDy50CH21wjfU
AduDaCGGfHL9qHtqMmqJB0oWnwKZtWDtuiks6w4v/KcOflXIgJQW1T/CvcwE6d3E6wEzniM0Okx6
lq33WpFkzavUXLMUwYa1AMnD1/iU6NFMZ/8N/F2E2UMJTermH3qtXe8gMIwpryp6fZ5ZcWNU5q3c
q/KRVtBOT4NvC3Ocz+BPFXkIdLhEIrjVk3+/K2jgtGc9CnOIHAce0uEJuaO33q29CVvqS3L1mIk6
vMNRjiMaj1cLXsVtx/ly6aHWOmgVHbXRAiEN9mn1SHHqTV9EzUO97ypMq3/oT0JheGHQHl4gJJ4O
f4wBDZnuFRZTg3maLhxdGEs+yXE16LLfq30HJSkTySnBNU63vOGQXZZplczJx0pFcgUT4lss2Jba
ImEb5vDtQLlQ2PjNplxprWvbzFPlFeQzwbIjAOfNlFy33Zl/dXale1USee5Rd8upqTTwUAxD9A19
5yQ+yT/SgkSbFsnD6Tj0NlD+0pz14krmelaz3URQdOmMAY1RZ7EVQPaqtmEC5b/8+xm8RSFwhwXa
V0/oH6UAS6HfN+iqos+e6JGlSyvo45SXt+EqlC/HG3qHdw9iLCFRqmu/I67XUVlKHVyPyjzZ8XO7
UWfD1bdyGBtuIiu/PLtwVKHAKcDlv2aI4HbSOFE9roWcptu5jdS0TAqTaS4uiuChH3WbGciy1pEB
O/VAoN/JMHSlI5bgtsfMDNy1UVY3WlWVMRjbopS96c9Jt1Lec6wqyTi5iGZKwGiuzg3s/IU6yuGg
qm7H7o7g6DnGlv507pgviocdftHuS3CvLNOH0e1KDu1xPsk+Y9uq2Z8tgypqOeB0vHH9HUsPsV/9
F8G6WBdMfIcQA6/P8SescqUywcdGRfLzExR7TfGiYY1pQEwZ8ICI4QeiWTYwpctKUKql3fCXt9HO
xkUC0C+VbqEiZbHak4IkqeDApOy8wm1JMPxH/ISc0Yl6Sio7hRDYDOuUDkAZb70ngDMQ1xLlEgTX
uZ8yTnEchZMnYEhY6STQ55cAJ7MtL8E+H3xRjPp2lDcmY8xwpb55d4is8g91z5cPP/B65OpQqore
8y71y/mZscsQMoZYYEHZh7ArgD2xyVDkQUwJ+69N1rhBkbKQg6uPE0BDZJ0Qt9+uoV06JClMLCnd
EIqsj7Ubw1zNFs6PSQMEm238bWWy1IpsW1pSErGP9WSIsnMh44OKKKFBQ6ERHlhZNom7T77EKzz/
PzNbybCqPSBqB5eQ4rfpckXEcZDpWz0C+Nwn06Wlw4Y2IqNPL17wlgWAphbAyVPR0d15/7msFg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D32D5AD64BF980"
last-modified: Thu, 12 Nov 2026 00:47:10 GMT
content-md5: BT/ibWsVNtDuV3tGZ8kcCQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5daa2b7f-8bb0-4e51-ad37-dfd3837dab57
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:10 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-13d4a2d4-4ccd-2c02-72b5-273bf5c953f6/test-blob-983d9174-65bf-66cd-0494-f1a215c503bd?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-if-tags: "coolTag" = 'true'
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
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
x-ms-request-id: 9942b76c-c4c8-4ea3-83af-46e4b54cb24f
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:10 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-13d4a2d4-4ccd-2c02-72b5-273bf5c953f6?restype=container

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
x-ms-request-id: f950da30-40a5-44da-912e-6c2699af7c2e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

