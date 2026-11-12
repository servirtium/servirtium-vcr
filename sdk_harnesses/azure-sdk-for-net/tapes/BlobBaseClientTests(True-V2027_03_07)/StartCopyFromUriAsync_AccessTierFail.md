## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-58decfca-8695-f820-9094-e6375ef6c910?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).StartCopyFromUriAsync_AccessTierFail
now: 2026-11-12T00:48:27.9803872+00:00

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
etag: "0x234D1A689F50BC0"
last-modified: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 826ebfa3-4da1-4820-98f7-c3c46b2b8490
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:27 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-58decfca-8695-f820-9094-e6375ef6c910/test-blob-8d6de14c-27ba-6d94-52b9-3cacb6da7b83

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
YumcTB9Yu7A0WTRxidX95v7TjXqzCpSjOnAG20pzQrYYY9R1WX3w9Ca8WWHzI+N8u1Wu4kwBz1hV
+RGuUd9mwBZ+WCYBiIyA4plU9rAyrxeMih/0xWBpF5N7IGBsQaJGVplKdcu9ezPILv+zrNmoIkn5
Ise/cfu2FECShWgsE6D2DqAX6DpMzg7sLJZgtWu60/0Wch/bhuSdlGCKK/XLmxpevZ44kDoPrVO4
00VkVl/V2LJqFqGBGoe8eVPZwaMZIZB8AfjMgkLDBsXMI7OfOT0BtVJCYIV53aIXfBfmNeyvn7G0
6FRmCFVwpg/btPfTHEAV2AxQ1sALAiNVtQUq3NHZHYMB61Dpm6z90rl1nSirQ1/X0F3fXsnxqOUw
EFNQRso+Apdz0jHvLD1fUwQGlWX7qnKlUgx0+b66D0JruIpZrIvvN5qQN3Eu6KQfgArF6xKANWbh
qvO9ygnZuMLug3SyBqZ4Fl7KanIAdmpoVHm09SQv6oMkeAKYMW2Rt3+uP2QwbHljTdS0tsvz4DOI
VXWQJcOdv5nwjo6k3+TxObLzUjcFOOf/UKhQezS4MJfOD9z3AJK7EIDLP97rv23vwnwYAI38gx2O
kNQbTURkOF721c8I+jggOEG2OvgJFJE6Ybi3nzAJ0oy+aXC+n8M8ZgZ/9Ome5shE98hMRUkkhHxC
4eyLrZgt7ANDSpHIYph9etPyiR+om3rvc6dovYxDmeTze77XsLltUgjmWpw3e5Uvz8p2MvtdmkVx
mznwxC92ALCt1efZpcoZhDcWwUDduPcSOO7BzGfoluB4ZRR/fI3Yb1rriqauVikAXK3ERtgEk+NC
3oxBtDNJxD4GYD+2mQipPlLm8i5QY+LEwXC5JE8HdNIxPZ0Bl7onocZnqPXpSsOlGgiGHqG08Xup
fPPDkJ/v/+xthVxqp6aXv1Bo6Lvs23etFAlHgFUwfEsiVxrHYxEmeKgIe8VmOnNh719RTAjAvKF8
FnyVqH6XPQkQSFCLz1s+QXAS41+yRtmW5ZH13y9CYZp5S02VkNApcT68VvIj1R8EEguYrdhBys+i
/8LtoV7Zzea1EoQNqbCf6HIh9e/mcw9x8cwkqbTBN4F98pENO9Df4ogLbsKb92la+MRmINTgu4uz
fK+RtSMy89sCj7YfkayhQRNn2gVM1fpjybHvWxatnTcFWr8hTixk2XrnmWezOmYXxd7AeOCGZqa1
LuxyQpjEVfF/GTftgPPmAgGKZTySsI5K15U47CVWf/QYayBA8ZbiIkN2NCAvKkXr2XXf+wFqIn1d
KGsCjGjMKJpC1BTSphFqp0L4HHttGq1QTBKvdoPzrUmi48gr4JXaqQuG7VUwGTNkdFS+cgYB7w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E37595A1084510"
last-modified: Thu, 12 Nov 2026 00:48:27 GMT
content-md5: wt75QBK7nxl3AgUbezvD7w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 57a0602d-dc09-4bc7-bb50-75d1418c897e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-58decfca-8695-f820-9094-e6375ef6c910/test-blob-40b2bd0e-1c56-17b1-4f26-cb2fc2483fc7

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: P20
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-58decfca-8695-f820-9094-e6375ef6c910/test-blob-8d6de14c-27ba-6d94-52b9-3cacb6da7b83
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: InvalidHeaderValue
x-ms-request-id: 187e9672-2804-4098-9a42-7d1e93a8b2c8
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:28 GMT
```
### Response body recorded for playback (400: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>InvalidHeaderValue</Code>
  <Message>The value for one of the HTTP headers is not in the correct format.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
  <HeaderName>x-ms-access-tier</HeaderName>
  <HeaderValue>P20</HeaderValue>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-58decfca-8695-f820-9094-e6375ef6c910?restype=container

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
x-ms-request-id: 9d7f874c-9c70-4057-86bf-92feda80ffed
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

