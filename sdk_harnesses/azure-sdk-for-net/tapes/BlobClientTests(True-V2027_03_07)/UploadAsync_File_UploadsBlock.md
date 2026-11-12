## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3a3f6616-8a6d-42c3-9a41-747492e090a1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_File_UploadsBlock
now: 2026-11-12T00:49:14.9179629+00:00

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
etag: "0x219093BC8548D20"
last-modified: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5b203b11-8357-4102-9429-8b445129779a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3a3f6616-8a6d-42c3-9a41-747492e090a1/test-blob-ab8e721a-9e20-c4aa-4745-66e3cc790c29

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
6sU1EznDHcOmN1nrrwGPoLr4WxeeySd4vHvyKCPfdiE1S4rMqn1oV1TKBOlFvhVGtcYp1B31iiCe
vVa+0PWfxsE4tmR3w/U9kATC1MQ9Mv5lrHNdtqEDQMBpLuwmqoZfKj4oDQexz/LQ7EQYMrZbYYtX
WCSCQhAfNHajDZQIFuV+Y6mGFCX3tN2AjMpd6g4JDs1hzlJi3eguCdiRDcFdx9Vems4N1UxmYKNH
AbVFwUlnmv/Hp0eTG4bAWAtMZacbI8T0/lA//DmA+m6uG9wz6EePKXLClSCNy35ITHxAGfv8K93w
UMP5KJ7GRqzZ5ACqjXDEvTs0WI6kZzPR9q+8QOBysu/+QpeElQHU/E5zs+Z+nr8MfFy/x9JPTOmP
JzHvCQbMZzIQq0vYQCc6X1w/MbNNUljwsMSEs+odr/Wt9G3P5fJHp0y0bvJzMzw1hGd2Dxs2QtXZ
/llCR7NH8/xVK0u5a3pp+IlmmeNlfH2ITi+Cpp/ad7GY9eaZBV+ZbHv2HgjwexjtDBeRz6nxdILc
uvmExExce7OZIXaU0PIqzSxobl10mNIWlZqISKcIpoBjvUtmFKgvmaNUVlqiWTwkZgF9iQUkZyIm
bS+x1DIMkXr1MBKnxLiDONW6IEF4dDxeY+Gmixx7P1YoP6Z5fcRxR8TfrCgpfaJI+VAwaUbgrvny
U3BQZQVeevG8foQSCrsQSdl8mMcTNOY/XZLLStUQSJGthilTIOG/gTI3bf4dNu6UHyBtYxUy3h+K
EAhzki8crDbzZYSSvCj3vReU3MfoISakNiu0ouR8eqcKyRDZTO8DGsHHKtFqAmP4dqX+ngJXoe7h
zlsEZwlRd+rciPIYHXEnkcEGIPdVOjTIvCw+fdylsich932T/7O4dbPmjXpw31g01g1AUYD3jJQn
O6vcEvkONtbK9ib0lJEOTqpEbqy6V9zUCqfPZWCnKmrobMMH22O62FakpegyQEJ7MQPVsh7obOTO
CAhRPtF1I8y7CyfOB3JHipVVFbL0ocplUzRc0XdM///fOdNaaJmFLoEcdzQarSqRjiiIklYy2mY9
7OucGFJVbgwn782f7SH80Ocw1yqWSqYKy0JOw22prF9sHHyu6BUvxggo875c8qEHjMJvAQI7p6FE
kk0PBqqefkJuMtCkTefRAREibVfordmhRzerOatcMHXbaVbIH79diXV87b/QYj7anQDwGTlKXOR0
bb9z80SXEQFbyeSRCeFRxOTha78Z0OT40Zyqaxc7kAxxVLEA6ZUw5dy+dZhaSJMen1VVaPEkWp3a
eyKo7KbqIDjXH7UwUdpOsYbjW1pLnYgIi8zC5SgbTfkUJW5zh/g201Vggyje7k16B7dqQP5Cjg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F3AF1FBC3F4340"
last-modified: Thu, 12 Nov 2026 00:49:14 GMT
content-md5: qHAWhHTCV2K09Vd4jfCHgA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8c641a9f-68f0-4ab3-a424-66b9fb120f6b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-3a3f6616-8a6d-42c3-9a41-747492e090a1/test-blob-ab8e721a-9e20-c4aa-4745-66e3cc790c29

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
last-modified: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1F3AF1FBC3F4340"
content-md5: qHAWhHTCV2K09Vd4jfCHgA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d71a5c36-85f1-45c1-807a-83eff66061e8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:14 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:14 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-3a3f6616-8a6d-42c3-9a41-747492e090a1?restype=container

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
x-ms-request-id: 38eda913-0b27-48ac-b995-13037c244fef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

