## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b0160e8d-1f2e-afb6-2753-dfa247f4d528?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).RenewLeaseAsync_IfTagsFailed
now: 2026-11-12T00:47:05.5826891+00:00

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
etag: "0x2049F705C504A80"
last-modified: Thu, 12 Nov 2026 00:47:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a2216bc2-8cd6-498d-aaf6-d1f3e3ea1aa0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b0160e8d-1f2e-afb6-2753-dfa247f4d528/test-blob-8adaaa9f-271b-87ed-3327-a4d2646fecac

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
wvnEb1T+7WNyIcbv2MAusZ4EJCPJfZNmIY58B3vkSrhmMt9OMGbToLx2F/lg/a9z+PIzX0rJ40Vm
Xk7GgubojtcNiabg4IE4MYRmU2WZBSPfCQ6IsOpunU+a59EYDR7VjYgiUnQJkxhx+y7GY4/fzFkq
5njXX97sn+tWRfivICRlkMXdd7Kv1nb2F7S8qDq/uxt47Sal/i6qNbOIsk0fwdsKYNLKAVSnexAC
4UcpMPexl4rdNzL9wJKXMkL+JiMo1lXZsUdn9LnG0XEWohzmgQS71hrCQoqpDaBAM88SqFTs2Qry
UH+vSqLQF2bA5h11sLE+Q08IZpTLMKSnJ8HqtCgdKsgR9DGFC4x48isj6CaCyoIe02QF43N2JyDa
CCLh5mI9o7xUY7yAuDfDkHNpp0d+JF0+zODDGEZVm80QqwNplgvI5UVqLmbGnRstQVIADH/YW+PF
ohqCeYt1/8jvbw00WfloocICFPb3dy7FltbzVY5OOE8fpPTxRWu59C6d1y4N+OhZmGu81kftzirr
veO1gao5oTe+FbQFdltWSB/HWaAAt57tmr0jkWEHMtbJBYiIBHKEZDb3T+MzUyEQZo4nJXWK6wZE
x+ftFhDVtuLeO3DTzUOtQ/RqCGi6uUabEirT4A1hPxmBQz2Ll04mIZgAVRiwPZhKeuGAIOOdiQ6g
UQPlAdbVffxWUYoGIaymQ+bQumQu6tWRiWUr4B825Lkv60VKQCDBK9gcWusOQ1g12dz8zc+pcWct
U3hwqZzcH23Q1zZnXALGDo6LEpDqgkUN9gZCOhbphXneHO2nUII7Pzp+PmshzX3ZNb9BHl/WQ9Ay
Y7KWmeRW5lK9iT8VHr0MUNJWa0TZ6ymIaAVXqGcZB9gcde3PpKVVKFgZZEQ+xBYBNc2Mf9iMWHeJ
DTDf/j3ro4Fn+anQPKssAULswIfkSqTvVnOZjIcAjx11Rpd0dSoaLsDD18psMfghX36VoJfwpcOM
76fKURb5ZmmMWvYUuIsY0ZLGIHPZgiV7eCwJau+FhaHU6IWCUNyqynBh4NYCDKfzfM4FKYRPsm2C
T9np8Px5BtRVQM8FloG1G1YDeKFOeGuFFu0hf1wchDYY/wEDwdlz59oCrczY7eZMTw0tTDnLNNZt
ZNkOWIZ4OLuZ7JeAslp8j5DHS8ufrSgH1DBO7zf8TcsrllwAZI9TinQQPgBPzJ2ysL2oA+gKzrex
B4NWKUiDnZ/MVBz9fCoBdMFXjm4ouAeTmz56U0niIMilTl0L/WAsjaFgg3eBtDOTp48msz9IiU98
w44JCUlW6TRTWC7M9ndhKgHNxzWPEeYL56y5u22IXMUOjjrSIoNXCZlDLVwFxrEYxYg+e8Ea7A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F5AF9317E1E800"
last-modified: Thu, 12 Nov 2026 00:47:05 GMT
content-md5: +rRnfyl4n0V2rYvuSq04ww==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2b054ecb-7d41-4623-aaef-ce643f337fcd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-b0160e8d-1f2e-afb6-2753-dfa247f4d528/test-blob-8adaaa9f-271b-87ed-3327-a4d2646fecac?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 21fea7b1-9d9d-c62d-cbfb-68be673d8f08
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F5AF9317E1E800"
last-modified: Thu, 12 Nov 2026 00:47:05 GMT
x-ms-lease-id: 21fea7b1-9d9d-c62d-cbfb-68be673d8f08
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 566c2051-fdcb-4946-b043-ac8b5e969e93
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-b0160e8d-1f2e-afb6-2753-dfa247f4d528/test-blob-8adaaa9f-271b-87ed-3327-a4d2646fecac?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: renew
x-ms-lease-id: 21fea7b1-9d9d-c62d-cbfb-68be673d8f08
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
x-ms-request-id: ee7ad769-ede1-4b40-8c35-13a9e6d05c9d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:05 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-b0160e8d-1f2e-afb6-2753-dfa247f4d528?restype=container

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
x-ms-request-id: 92fe40af-9003-42ee-8f8d-e26575de731e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

