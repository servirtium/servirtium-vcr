## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f581c1fd-5681-030f-4fb0-2a4d4c0ccc2c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetPropertiesAsync_BlobSasWithContentHeaders
now: 2026-11-12T00:48:08.8778260+00:00

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
etag: "0x1E1EDE4E45B3F50"
last-modified: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0df34ba-a62a-4d2c-abd8-09612868b0d7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f581c1fd-5681-030f-4fb0-2a4d4c0ccc2c/test-blob-38597787-aa8d-b7e7-7cb7-597b8a0254bf

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
/W1kFm0C0o7zzdMXcXnPBE8Y4DGh/lhT2sp5yfyUeExba1Dfp7W/haTKRb/X0EUC51UrcSEjHv8U
ETyiiAiRXlSGuwYp8FyaWVqN1riZfAqEduKmaQcrOE1QypV5HP2bOeZqUBQ/2ff5kRjGlkdGe5Uy
HREm6vVNW4O42CXGID1d8pzRLiv1RZ3qrdfuZKIFCk8ARv7rdE7xHPWRhgHRMnDbaaSrdExpPNh0
Oz0dX/bhs83Wxtk+cX1O4BE2ZL6bGXtnE/v9WpYClgkldzgR073+r9Mz+2uWnPcmXJM7M9gZ2CLB
tkz741g30y/QGfpEPA1TN7TrZx0P0HYE1/0Cx2MxC54WTxxxAst6+yg8xoP84SCG5/sjLnAEsubV
9wtbNQzMng1cLu3w4TXocWz10wryB/bde99oDd0tEZ02nAvAHsYbcCd2oLIzlgbGO70EDt7c4vAV
frktY5EvLhxPukUpKFKl2mPifGZDquXYotIgKAO+WrkbqqAN7gyVRnKW49zAnBJqXzR7+WaJ0tPT
VMG/DwUZkF+MDn6xmOxXTDX0rcYJGAW/tcnOQ2BTkdjNOZlK1jdsfFN8NI2UucdIJK0wlSQNyju7
/1k8Skz/OX2l5F5SDHX9hzBzjeR3K/wChh+zIvuzv29djtbdLzIGffoQ7tRo9Rc3Mg30mTxXRNRd
OsMtSxeB8iTv9H2fIFj+bBDpZz0nmZAHfO/uviYyBkoCgPVu2DHjj/uweQCZlxK19iwsbdyXNqAy
Jc8okjP+vO4znaBij5TeBthBdh+QbeTcOMj5BZhtaklUO7Jhu/zIsb0SZvpyU2eYTmcEVr+Aorjr
S1prBbZWxTJWDVPhfErbecVifgfpaeVhYLcwaRSK05n6dm+iXKwGu6DIHEUTt9EcKN36HiSwAeJ0
CaX/JVweyzm65gbbORwYXMJmIUygTajmFEA3kLV0SnWNLlIHBpZEqVALWdHKQe/A4cFiSd+V07z8
GBEb5juERZyQTQvJEVUsInj8lfPXG9JRdq70EgCW91qWCu6EKMIUhxQ0OvPj99BrNidnmT7IJP0/
ynCNjzKb+lWwMgZnp/m15w7fouHebX7eiNzYLl4czebwRV1Sh/fhmD+dM8TJBI4tsrIw6YEcYF3y
rwZWwsz3k2QgdmKcYl8W/QqhQDm5FIROq3ys7ORk1OT/YNjwi9Vzpp9gqY0rkU9SGet3eiAjOJuB
CBdPS6d/vKF+nAKHJXI0LpqaWWr3IhktWdP57FrD3Cc9boK+I1r44O3rrfVMy/N4Q0uGid4wiuX9
IvLThs9HusDaSbfwdQo/onl8DHQk4I3fgagOPVJJDOScwABoJFodpPI1cYE8h81AR+dls35x2Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x271BD66DBED0120"
last-modified: Thu, 12 Nov 2026 00:48:08 GMT
content-md5: 8idPPbU0+EUZzKvjBi5Amg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 675f5de2-f5d8-4157-a812-a446d6da1a9b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-f581c1fd-5681-030f-4fb0-2a4d4c0ccc2c/test-blob-38597787-aa8d-b7e7-7cb7-597b8a0254bf?sv=2027-03-07&st=2026-11-11T23%3A48%3A08Z&se=2026-11-12T01%3A48%3A08Z&sr=b&sp=racwdxyltmei&rscc=%5Ccache+control%3F&rscd=%5Ccontent+disposition%3F&rsce=%5Ccontent+encoding%3F&rscl=%5Ccontent+language%3F&rsct=%5Ccontent+type%3F&sig=xGHsWJRDMLiKnZPvaqJwW9v%2F4T1kIxWhePLxbfU0czQ%3D

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
last-modified: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:08 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: \content type?
etag: "0x271BD66DBED0120"
content-md5: 8idPPbU0+EUZzKvjBi5Amg==
content-encoding: \content encoding?
content-disposition: \content disposition?
content-language: \content language?
cache-control: \cache control?
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 866e27c4-85b9-4e39-9c95-763dd2377be1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:08 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:08 GMT
```
### Response body recorded for playback (200: \content type?):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-f581c1fd-5681-030f-4fb0-2a4d4c0ccc2c?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ef617bc8-d615-454f-9289-c20034f2a519
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

