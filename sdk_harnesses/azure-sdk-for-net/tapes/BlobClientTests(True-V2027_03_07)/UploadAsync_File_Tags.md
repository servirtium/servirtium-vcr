## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-82d8981a-3680-f0e4-9f00-ccd7b167cf04?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_File_Tags
now: 2026-11-12T00:49:14.7133262+00:00

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
etag: "0x1F892E59EDC6AF0"
last-modified: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6b78c7e7-8e53-4af0-9ce9-87f4f9e0527e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-82d8981a-3680-f0e4-9f00-ccd7b167cf04/test-blob-09722fef-1bd4-b051-b8de-d01c706bcdbf

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-tags: tagKey0=tagValue0&tagKey1=tagValue1
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
XS+1mi3RTnNB9n3lg5hAp+QjlnlQGQf/RyjJombIgDMzDXqBsjTWHeH+x92eay0fnig4TNVTb0Qo
tVMFCKsNeXZKsnYev/WvTXiXUVEpYdz7qQQ9kDNd3541WPzh0RU18U5nU7m2Ad4ziP9cvB3y/lR2
Cl6nz+lC7NLX6Gb5zntiYWADwg0jRKglCgczASOBQ1qnasa3jiFlJGfn3hh4OrmD+Vq87zxHU8a1
gsThD+uuVqULUWS1q9M/nZ2lO2WQrNBOrwfJxFQeXxYAAQxchBV8OIhybOhUzk6GfVGfohhhJNX0
kl/k5ZJR7fFOtanH4hmHKQPdHkDo+uG4QkcCfr3+n9w3aPK2mFP2IX73BRmkv5o4F3kUgwaVDJh9
K6NKTm4zUBXMkHkn0JCw5/zB8fTHFIKsymdE6RvWolxZOG2vq9IQw7UD2C8gEUboZJwJ0xqjthcg
nYQH72f69u4dzZcjADsqsS0/xDxSjLkgXIV+zM5BtYJVjg5OCNROCeFBA0OuxGNh3yLtZPHbzhHL
55Lheykf2xcVzXEt3KhZ8btaEYh1cZchHe2rVFGQesD9giFBbI24IScrmffyNAJ5k3M2gLyIVXX7
wF48dIfGhFKxMFmHF4Quou9hSdefL+jqMsDdWfkDdCyrRqwue62gZRSkQASp8nvuCN7NJwyeW5B2
UULG6StYrbst3NHY/yZBwOTD++7kQT9E7lEbNk0gDeobuCpr2XvpS5NIfBWqFgi4i2Yo2mCikQ8C
gfvaPXdtDM/mvEf81udo2a9am8UqmtdIYqrn+DKKeSYaaVeADw0c2m9Gw1nBvLR+vwGwR/VK2Ocj
kdrMhhSdXEMg4W2P58qhPsBW49d+h6b1aDgx2TIx0JFwXX0zUFRbqWYVoNpH79c2Dgg09PQPpAoz
1h7bbIIR7xHcHopNbu5s+zpwaObMrnhh+sop/NycYbly/3k2fz3kBLDIa9FN6KAayPm6nzwkZyil
enG35/M1P73Q2290NXv9jGM2A0OnExIqDzPj4sJ9TpdRkAXLLB28kysTfA0xpZJ9vBLY7WPl/WZf
jdfAUl37U43XI6R1MV9FeXAYlJYE+WqgZSWvpGA0bJOebJ9G/EDNGCiAWYHtCIuyknPyzGnQWpNt
H+03S68sorcR1sS//30vSntthJ/osl2a/BHsQZ8pzhEM2dxTlcx5U7fK3DHG8pP2w4LtYtbzhGyQ
nU+dQGEY5wiysyag3LSv9DHoHtYr0wl+9n4cPGw7GFRww/d92xJVsvQoEz9tVebOPm6kC2WVZMpF
H0ri+6ucdpvRMBm8MRgekmziA7/KEaCXTv39lgzv2l8tN7zIcrZJjJyjmyTNEQxVhnj5s2ALew==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26397EA6F258CC0"
last-modified: Thu, 12 Nov 2026 00:49:14 GMT
content-md5: UhZgSSGh5MHsPjzfKOGA4g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 36f56073-f8d1-43d2-b3a2-61f63def2068
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-82d8981a-3680-f0e4-9f00-ccd7b167cf04/test-blob-09722fef-1bd4-b051-b8de-d01c706bcdbf?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 0a05f93b-28e5-42fe-8743-b9d28f35c2e3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:14 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-82d8981a-3680-f0e4-9f00-ccd7b167cf04?restype=container

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
x-ms-request-id: bdb2a57d-d398-498e-b55d-9429811dd07d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

