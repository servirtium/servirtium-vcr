## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-aac30641-f1dd-a3a3-0c36-e431065cc430?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).CreateSnapshotAsync
now: 2026-11-12T00:46:24.3292485+00:00

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
etag: "0x27C148EBB449620"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 41d18bc9-4f9b-4b5f-8067-59425a8ed563
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-aac30641-f1dd-a3a3-0c36-e431065cc430/test-blob-b27d58f2-58b9-f1a9-5ec5-1fb3cc7d7f09

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
GuZbI6Iy3RExlF5d5WwAaOWR3hgKEKXoXdFMGNHw14622xcgAKGNv3trgCT6TAvxxLbOO59n/gpA
c8bQ5sRAQbzPpgpV4GhDAx+dn5CA7RHGW1QbIpzvT9wM343bvNm3Kz5oKqUBm+ROijeAyV95v4W1
CotvJB8g4FYtSADaaEZF5nNRGMJrxMBvzJdkb4Z9kh8HJbJORwYfR0pP01LjcyHxOuPrKKfDSkXK
AFiHvHHQsLbg00KT955tMtF4G/FtjFh1cjSikWp4RNtsg0eul4vZfyOcAqDfXUNEfvbWSy5UXXP/
Ekk8LR5LaI9nJ3NXvppGnpzN0Ym4lhXxXhN0ovmtGCbTr4VBnVIFUJoReDbP7L9cj6yRh4vqRns0
Ss8K18WVuQ9NhA8UBAFKyIDupx7fInFTFxJMG5Ca6GgKDFKD+nnVe74mgWivR4qqR74K/J9cVShd
tr+ySZ5+spunCvivx80HGStguKAJo9CHodPSkOzIrbYqJUO5IjIgqM7MCDyS+4DxAuNz/J2HUxLv
K6fKrCKv311BhKGJTvb5Pw/SPZuT9aZT4I0JVLAZo9EwyveLVvusHCnfUHfeZ7Tser2NtBZ3WzUB
d8uVpoqtKOHPWYP/bukTJiBytKQudHnYHdryi+67uW/Bit8wFnWfMiiWDw4x7AzUeY71BaeR0gJS
vImvupzyFJ8UPuQK4w+r04F7mGVrpzDOHhJfxbTIMLfc3lrs73eMo/puHK4nypZ/SjElFTmd5hRY
4ZuJk0/rTA0sLQW0vuQK7/Vr/YuCplR74HuCoht9PvdGkw3bAhCqg9Ch+5yRyotNGyZEMumJ1jpH
DbLUaKnyru4NbivWLuzlwHm64au36hXvNIf1OQwOvL3SlPRd1honr0ythFtgd+w6XnJvzvWPjyOc
5DQh/HXi/rJuBJn3h+pfkzJfCma6j72bu9qZnu3HQgTRwPHmBbLWyoWp8XNSQteIDzvCMIW84lV2
hkGaSF/EpsGUJcb4eY2AiD/hEJ1KSHgDEY6yBRJ/Fd6cb39wPIIl5UuyvR0Qj5atQqhG2tG3LD3J
lzbQEaGuFQ/oXAoND0y8vCpSmIpb84L4BMJqOToM5ENBpqRLVNOqA6gNJzKMoDJbiR6mZZSzbqS0
2A3eQ9vV23fGzGincWdXqJThTctPbGSPDrAcZX+vjjgAlnzGy7/MOEy7xdTJtBe2T73/0SDZZWuo
TzUruHX4Fz0wp9rrkNzVFRR+lKeQxVqYZRbCr7wXJjEQHXyKoH/Wwq2WmQw8y7/gKrwLWtDEGInb
klNfNmeAGICo23JgSnSVqNH5+ixNXJpX4YUAC8thSwXzrg4rdoxFFYGMlO9Mf99HdrL/yx5djQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C8FEFCD5894980"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
content-md5: wfE4zuJMFW6qNsmAHTNfNA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 59cc71e4-61d4-4327-95c9-5ee7f3af6e5e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-aac30641-f1dd-a3a3-0c36-e431065cc430/test-blob-b27d58f2-58b9-f1a9-5ec5-1fb3cc7d7f09?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:46:24.4010000Z
etag: "0x1C8FEFCD5894980"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a160adfc-9e88-4c0c-a79d-770f881aff95
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-aac30641-f1dd-a3a3-0c36-e431065cc430?restype=container

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
x-ms-request-id: 7593ccee-bb96-4aea-9545-ecedba1c3f49
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

