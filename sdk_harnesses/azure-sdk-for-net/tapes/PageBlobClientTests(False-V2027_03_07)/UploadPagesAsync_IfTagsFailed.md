## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-68f26912-635d-5846-25df-3cbed2f964c8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).UploadPagesAsync_IfTagsFailed
now: 2026-11-12T00:51:33.3832461+00:00

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
etag: "0x1C8F6D8FBCBB870"
last-modified: Thu, 12 Nov 2026 00:51:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 56480cdb-46a8-4246-8e3d-a21bcca275e3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-68f26912-635d-5846-25df-3cbed2f964c8/test-blob-b6a217c8-f7b4-249a-40fa-e749e85cd69a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
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
etag: "0x1C9F08CA5509AE0"
last-modified: Thu, 12 Nov 2026 00:51:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5312f044-9b49-41fb-aac1-0e47bf821e45
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-68f26912-635d-5846-25df-3cbed2f964c8/test-blob-b6a217c8-f7b4-249a-40fa-e749e85cd69a?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-if-tags: "coolTag" = 'true'
x-ms-page-write: update
x-ms-range: bytes=1024-2047
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
vUvF64WKKy2SEhZ27mGoN8KHgl4fnY0bzs0nY3z9cMkJogGHNHhCPux1JKLgJDXfUbCGYNp3eyC9
qR23YsexlKFNbExfIANJRENxqnjrO6qYSBHLdg/ukSfhyYpbi9wlw5AAkrfpfzGtPRyXBdCn0m5y
Hxq15R2RX9olfld47rhmTObn6qjyrsjgHjnzV4xWOfcb6GzCb95ybjPdxAHZNE5jMLnqv+jFgHBR
1cfjngdOzkRgXAZMpN0IdHt1FOnHBunrjyfSbHkOVmf7cJoWj9Arjva8eddIF4vb4UpsUGuGis7e
+A7ge2HKUQaeUDNC8eWqSYXzCowRonib9osuogX7debLOJbBSxOU8SjRqcdYme9lwQflkn9BzFWW
RYTWnK4BottMdrlP6f1yXxlkQPmwQl2byeD+FeJnimtAKgaOvVV5zwbsCyI1FdgJczJl3Yxc5gIm
O9LOAoz45OxNDr7346LE6nDyxDc7ZbQI9aKvAq3f5EQDZ4GDq8168yY16AcZEY+QofIbaiHK6tUe
xg3qSeI+bSl59HwgQD+jeNEQBn2s7uMTH2C6xHkjOHysZeS/j6lE9nrdnx0Tb2CzePJQuuRYcdgq
1yqBhKmvVrv/dNta4+gnzA8Czk7G/68AB0uH0n6YU/MMlbh/wnLRLUliFPqFWZQKKe3VVqOJY9d6
gX1dKIM8ZiDoTU4vpwqcMaAFZOu0e623famRwv1QgzHhBUH1cwXFJa3anAxF2oHjOCUChP/rxQXP
pqvaq6Qjl8odTqLJp72bPz4+2t6hcaInrorYTv4x9j87Jc1a63kJtgVCKIzfGZBnZkTBrOonLjQI
sv0aS0nL61hijoLvQVTFNSTZXkkWSJT5cOe5cElUE/aZUTl77mu7djwzfYsOdyXw+3fGTs/r8Wlp
INphEXsODXqLVu8bSUa4HegM4soI6vnCyXTRjcUmrWDPEs6RWmTBJG8QgyE11LIwDjHn3w6eYDXh
n0gGPX+1ZKiOTDZ4J8ODSr1b92fXjPTBoX+TP85SMLGYsLocuufwWx54poh8uOZuZJRQQ2jOCRJT
RZv/IiXaPBuE33YIZo/Va5xJX+ZrReiYJdo5AexIyqeoyXVM8Dn5nmlt99hwZv4EetjMhaks5wCz
ZvxKoDsuOxXPX50aiXtjT8F8/k0QKL/cNIYUfEX9e+F1mYk8rv0uPrvCoAZg6vFdaDXnsOiyoj49
bmu0Gr/Q0eS7pfDxJ6DETcCSTYi5e0qVtxQPFcv5w/ZL/kCReST88s4ipUQAa0CUI2IoH1W1hPIg
H2KqwbsYwuL6pihgMtSblVu5l9UGlUvTevJp0KOhlXpOcFrBUTESCeNhBsQYNPGOjIn5/O0cGg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 265b6b85-2594-4095-a8c4-060062026a9d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:33 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-68f26912-635d-5846-25df-3cbed2f964c8?restype=container

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
x-ms-request-id: edcc18b7-42b9-4599-befb-f93710729633
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

