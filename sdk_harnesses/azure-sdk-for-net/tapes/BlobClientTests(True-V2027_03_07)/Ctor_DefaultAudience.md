## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6b74e7ac-fd10-61ad-ba98-a4f5b3485fa5?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).Ctor_DefaultAudience
now: 2026-11-12T00:49:08.8592481+00:00

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
etag: "0x2344D7572381300"
last-modified: Thu, 12 Nov 2026 00:49:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5efc6489-2c12-4048-a266-cf061fb44f54
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6b74e7ac-fd10-61ad-ba98-a4f5b3485fa5/test-blob-c14482ff-55b5-553a-d55b-b3cb2e5502cc

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
bmKkE2Sye1mznvG+/Q+wZrDvk5Sbwn5R/berptpKOVbn2iIyzfGR+mwat3IM72Or5z5Ew7TKCqvk
UxWsBtR+aWWa1iPsfpi+XpkogAsMRA5TAL6cBXWhHNB2TXrc5POXm04McRlAvmmlhWQboomg2A4H
WQYW4mPv+blTdjAd4nmlkOW8/9L1E0FU9oAQhnpG1XVr1IvtgbnrHXhf7Ec4iKLrdRKj49k7EkXE
wevj3nI/DKG7sQ3utw8s0eFalSf5HG7dJRBno/GbMMJGKb/NCD4FIN+mfdaV/L4DdxL34XweyqV9
Bbli12mvH4FLqI5PXsmjVHVHUp6YSChSYyvfpE5GKF4aTwKEo0h1911USlQvtBlJVI0H1ngG5b2Q
EHQ+0HsyBIAwNQ7HHrAt0ltBQ/7TIq8SllDBP1HmE2pE9JLTNybhIUXU/n4KgjXc2QQcxaG/ve3E
LDorccUuSiGkgioeWZo0XyG4/iMwBxQa5GVNyU7JhDalDwvstrB/prRdZv8KvoBp52V/Br7JlCQm
EYxg4IDT2/3zeUmPSKlxOVhv06EUDybk5OLoSX1423vmxaUjHsUziYsBF0U22Z68Dc1lWsCCEQFm
fPye65F/ep3OqIMEThqSO0kWEvjgrQpDKzuwE4C6Y7OjvKLJlZ75gpynaDAbuL6y0h53bP8Ihc7x
Wr9Wz2cdFEXPYJJ3yaarHJBcOUXZKHN8/UBhQva0mzbU1zreo7M0ilPrTFgsOwl4zE9vrEyJGDJM
2dEnu9FOGsVbo/FrzHndJ6/x7tsbT8I26XamRO7qSr8IksnhDc6BnTGS0JcXDP/WkoSclylWMYkP
8NJap9bWcVgyYzqw+xrhcFGqiH4qHtx30LJpTbOVsWA/0hz8J/Vbu18/5anFJpZquyfYq6gK5dH1
49YjbSOknbHZcCn95EhbT8wf6jkzsqob/pGMvAW3NO1LBkMeN047mkf367VtbdbefFzc6/qXwjEs
B26RGOCrITw7sd4FPRd+40/yO8b1rpG7rUCp20jys0QS8jDgqYJnTMl4Mbz42T9FXQeqpYZqN1nd
1mqgAkXzSf2a8kvnnTnNiu/8fHzUwtQAZH1BSA69p7rWA9MYx0mDhei+Xub0XcDN3BqXbrrdCBSV
n57IsgDv3EqQEJpmtcOlePeTFmTtDAa9c2vzJjkA+fq/giiru9Poz4GcZE0lZydX8fXDSfKvqJKY
Cj+U/LUQjxefpzOa+rwkq0fiUae5mAxEmzREPK8ID9qVE7GUU9LLi9Q1hb/0vfc5n52rzFbr33Iy
UGCBzFJnl5hYBeYLj1h0FsXTgxJMUN48Cp0RXUODqjM/YQNySr+Bze0nm7cQLQ9FNrWRF1tf5g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BEC8794A2C7250"
last-modified: Thu, 12 Nov 2026 00:49:08 GMT
content-md5: WTU7bF1MBpvhLntfZr/Img==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b6c9d025-a1de-4cc5-b67b-553154f3e366
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-6b74e7ac-fd10-61ad-ba98-a4f5b3485fa5?restype=container

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
x-ms-request-id: 9768d143-ae64-45ab-83a2-981ecf85bc20
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

