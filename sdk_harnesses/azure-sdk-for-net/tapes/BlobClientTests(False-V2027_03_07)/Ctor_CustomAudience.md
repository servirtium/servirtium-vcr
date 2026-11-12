## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-178a2445-be6e-3233-8083-362a0824466d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).Ctor_CustomAudience
now: 2026-11-12T00:48:54.4194537+00:00

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
etag: "0x218217B8AECCC20"
last-modified: Thu, 12 Nov 2026 00:48:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b225c8e-a3ef-457b-a507-3e4190596084
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-178a2445-be6e-3233-8083-362a0824466d/test-blob-75d19edb-0824-b55c-6d69-2bd35c772c78

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
AYyG2NJomI8Y/kmUWjS2uVyPjkccLXmD0rxL6ElTCw1w/7acQm5N3Iv7/290nthLzHzNeZX+UNMS
AgYVHa9FxPI8JFp+GnftQbG8IS4JDzPk/xzMhpJ3ca/iiT9oN77ctTt9OHp9zbEE3zfkQi6lCPPS
MR6SeT1fxbKrm5A3hQnz32zzjNe5ZzJqyKZaky6APIFMlQagSTz9HXPH0jEhzVou8GPCsnwbGcnr
KLGXBTKDKl8P6vACUpYw9W9k8ZUBSfpMLKLLvooFMXs8tSGLZRhBQ6fREuJpK57NkbwMtyg06d62
S9iPt2zVCbl0xZ10pY9XI63tLzYY4gAD/izN+HlTB8tC1Bo/sYw7/Ago9GUBWOwstZR6R7qnnWjY
jLg/CBFAIb7RMdB1F3EhsjIu8O6aAqY/oELk2MAQmzeyZiXT+/T259KnLycct50jWZWHea16PokS
AGfOXEn9wJaYw7FMTrY+Nwgb8tJ/I+ilwX4riSKKNyibwPuMJ4uJqW+Qg/Ts1gveSUGlX0u3k9x/
KZvK0jd0DouIsY27sQ98kUhj7p/0uOpzTD/g5Njd4yweDf7wv9c3HHVpZCV9IpcxKM0CVKU9i3Cw
Vob3kyqyq81gnaQRjNJxK9EqilTF9imor7sL2o+H4IKNP2hQQIhKtrhYHIXzH5z6kSjTEwAc62Bc
T+RuptE92bwhhExqIOtI39ObbdmktI8fEEhntM2BcVQH9PCk3BDnGkPI0ZtQkHA9ijMsgH6Ht5tU
T5WI1iTvoBL4Yiz6pALDtFKV3OLzz4DYKSqZVfDVgDxVUI16X0Qf2DGIVy1EQ+YxaMws8du4YIAV
sKz5VkoiIuLvpFN1SVQNdgOwandSk+ZEaO0kqY5gnO8NZK6XJYLnZjVKVJ6Sux93HnvYCPUJwhzG
te5d/nhUjgdkZ+SmdlCAyQRBBz9HsqzNrIsSiJT5BKGS0W+UiWi99sWWLlQ60acqWD/xx7vdfgNB
j1HsQQZzamNCFKTg6z+bgxF5sYNYk9vj6DBVBzzmtFNsUvoX0LW/I8Tw970DSWz/VkOpY8x/6ft1
CVjWHWInW19RdJlFhLNcuo2/Z5se4J/DVbH4PFGG7Wj+ocdc6AVhyZtesdXTutKQTag/v4JgVyi5
EsewLh4Ny4cwRuLrANGIXp4AwC7J8JveaO+oRy3mnkmeotY9sJp8UOZOonPvpE3Xt2HjX5f57yIs
0sYvZYRZSaiYTV37Sq0Dg29Ie00n78Oh0Y/LAj6ypLKzEd7UTeti9FjKV1fv22y04NwnsXPUBOIC
jZP0jUdq5qirRzjOLjaE5of0XZhssvUiFyJhivM+3g370r9XbWYRYHCuRJM05bGmo8rs4KdKlQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DF1945BFEE9480"
last-modified: Thu, 12 Nov 2026 00:48:54 GMT
content-md5: WHMIlRNKYzJF6sG2VGd0Kg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7e592135-e890-48f3-97ec-20186802aa39
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-178a2445-be6e-3233-8083-362a0824466d?restype=container

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
x-ms-request-id: bfd9f62c-7690-4282-a6a7-d8e44095138b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

