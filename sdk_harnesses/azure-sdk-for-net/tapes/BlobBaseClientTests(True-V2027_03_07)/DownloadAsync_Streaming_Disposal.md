## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b123e5ec-55a4-e36b-41d5-a97268a76071?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_Streaming_Disposal
now: 2026-11-12T00:47:56.8312093+00:00

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
etag: "0x224AEF5E37993A0"
last-modified: Thu, 12 Nov 2026 00:47:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3f1a42fc-05cf-47da-8a51-d2499158a568
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b123e5ec-55a4-e36b-41d5-a97268a76071/test-blob-f469f1fd-8a48-c5c8-f3ff-52582ec86c08

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
jNIuJfbqzdMjddSyh8eyw52oRnxbrmAg2MwWFLqRVy2w3GK+de8aAhdQji+BuFt6I+bUv2DkFd5x
DUwp1LgYkh6nAqtk806tjURkCiAxnx9xm/HUvJfMzMaETWej8C5eN/sQ2ravFi+YJjEcfwq+QG4s
uDjHRNWH2jbk4KbmCpwWBdMkIMRpwYTBPJZlr0y7xQz5djj1l/Imif+AyzaJsRyVBXk3mh+pw/ez
BQg/ISrpKBqZ7JRkIW7g/pfE6PVOOIp50KrThCvtT7JAQZHq5mjUlqIb8MWIMOQLV5yI5doCZc1+
xVCAFaTvq5zhJN/c9Rcv71JSMkfE8Z/FyC2PZWrYPtzDbCAXU4D+LEQopgwELmGEWPWIrzKGudOx
u012YEYyCeUDGYn2GJvRVAUDnEqTwJnMCgx0T4+pPbJMZpgzh8z99p0mARXXjkBZt1osgh2JHfq0
qlU6vblWWtvXqbIDncw5BaatbL+E9HvLG5c0fLuUw0idftx2wzjj0KY6/+WOVRmN831327E7L7ba
bqEiId0gQuVpZR7wwkJtyZsYSvSWPMV9pok9HeiWYU8mnFSWwa/JGb3/JfD6nTA6CRIVI+XBQzLc
pHpU4iT90gPPySbt1gfsTzA3lhfVgwlYAhPVgT5pZFgiuh00dDeYAlLsKtQKTTIKKdS1iqwaBiBx
/N8RJ1HFZmTNyxzqt9v5npTF6Vg1TbXhy1dqtNqsB7P8w3dXh9sAJsRvPYEWIHH5u+sYVR3IPK4p
L1v5W7KJIMRp7fNjoRe5xMKTxRA0yqvlcPjvk7GVNIfILld/BssS5Ry8rDJ+lRrUXpFbNHae9WSw
FOq5mo0T07lsmnO/Ob33gd/zdx54Z9reGjQfOv8QKjnyzvLgWEuPqdl5EfunFCXUY7OWqn1GOKwP
239Y85i6W285zGvKFiiUZM5E/lXfNgUPS9ZLeX+7q5ZG0X3LN7ZBv7aLbUi5CU2KAkavAjpWMKR5
SKfBbuHwfiHVhEWrySwXAz6fU8m9VkGJwXc4DKlc76DYUe8Of1HUm+8n5IUI3jgal//7ttzbvPJl
OKxpt3F3eJSk0ng9CYPty7jalnG8gOI/HnWqYTnD/ZT8qUakauN9r2vxYwvA3I17DeskACWAqbfK
Kpn7zRdb4NXjQGA9SGDUXOcFyh3Wf0LnLlNNn/xvfP+P2kBKguFTloM23JstPsSKUKQ+et6a86tW
FJ7EDUHYc8RgrW4gitoFsTSZn6KmufCOwk9XMQEh9OeV825Cj4lBXWnXzZBWasbKOMmqAFMJr1qu
NUrygULDPrmHi5ZswyKrWEI5z+xgN1iJjfk4dvOTi0MTlFk+T9wmE47Xz98vXnSm/6gR0OBuTQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x209E866E7F0E440"
last-modified: Thu, 12 Nov 2026 00:47:56 GMT
content-md5: AnvYYS9WcvhpnL64/T+M9g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6f6361ff-a415-4f48-bf89-3b62fcfe3ca5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-b123e5ec-55a4-e36b-41d5-a97268a76071/test-blob-f469f1fd-8a48-c5c8-f3ff-52582ec86c08

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:47:56 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:56 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x209E866E7F0E440"
content-md5: AnvYYS9WcvhpnL64/T+M9g==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0a0586af-4b91-4239-8a97-d9c2dac6fc3d
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:56 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: AnvYYS9WcvhpnL64/T+M9g==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
jNIuJfbqzdMjddSyh8eyw52oRnxbrmAg2MwWFLqRVy2w3GK+de8aAhdQji+BuFt6I+bUv2DkFd5x
DUwp1LgYkh6nAqtk806tjURkCiAxnx9xm/HUvJfMzMaETWej8C5eN/sQ2ravFi+YJjEcfwq+QG4s
uDjHRNWH2jbk4KbmCpwWBdMkIMRpwYTBPJZlr0y7xQz5djj1l/Imif+AyzaJsRyVBXk3mh+pw/ez
BQg/ISrpKBqZ7JRkIW7g/pfE6PVOOIp50KrThCvtT7JAQZHq5mjUlqIb8MWIMOQLV5yI5doCZc1+
xVCAFaTvq5zhJN/c9Rcv71JSMkfE8Z/FyC2PZWrYPtzDbCAXU4D+LEQopgwELmGEWPWIrzKGudOx
u012YEYyCeUDGYn2GJvRVAUDnEqTwJnMCgx0T4+pPbJMZpgzh8z99p0mARXXjkBZt1osgh2JHfq0
qlU6vblWWtvXqbIDncw5BaatbL+E9HvLG5c0fLuUw0idftx2wzjj0KY6/+WOVRmN831327E7L7ba
bqEiId0gQuVpZR7wwkJtyZsYSvSWPMV9pok9HeiWYU8mnFSWwa/JGb3/JfD6nTA6CRIVI+XBQzLc
pHpU4iT90gPPySbt1gfsTzA3lhfVgwlYAhPVgT5pZFgiuh00dDeYAlLsKtQKTTIKKdS1iqwaBiBx
/N8RJ1HFZmTNyxzqt9v5npTF6Vg1TbXhy1dqtNqsB7P8w3dXh9sAJsRvPYEWIHH5u+sYVR3IPK4p
L1v5W7KJIMRp7fNjoRe5xMKTxRA0yqvlcPjvk7GVNIfILld/BssS5Ry8rDJ+lRrUXpFbNHae9WSw
FOq5mo0T07lsmnO/Ob33gd/zdx54Z9reGjQfOv8QKjnyzvLgWEuPqdl5EfunFCXUY7OWqn1GOKwP
239Y85i6W285zGvKFiiUZM5E/lXfNgUPS9ZLeX+7q5ZG0X3LN7ZBv7aLbUi5CU2KAkavAjpWMKR5
SKfBbuHwfiHVhEWrySwXAz6fU8m9VkGJwXc4DKlc76DYUe8Of1HUm+8n5IUI3jgal//7ttzbvPJl
OKxpt3F3eJSk0ng9CYPty7jalnG8gOI/HnWqYTnD/ZT8qUakauN9r2vxYwvA3I17DeskACWAqbfK
Kpn7zRdb4NXjQGA9SGDUXOcFyh3Wf0LnLlNNn/xvfP+P2kBKguFTloM23JstPsSKUKQ+et6a86tW
FJ7EDUHYc8RgrW4gitoFsTSZn6KmufCOwk9XMQEh9OeV825Cj4lBXWnXzZBWasbKOMmqAFMJr1qu
NUrygULDPrmHi5ZswyKrWEI5z+xgN1iJjfk4dvOTi0MTlFk+T9wmE47Xz98vXnSm/6gR0OBuTQ==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-b123e5ec-55a4-e36b-41d5-a97268a76071?restype=container

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
x-ms-request-id: 9c22012a-3ece-430b-b834-7a66b772162b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

