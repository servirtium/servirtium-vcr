## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c5cc59e1-d688-cd7b-1bae-e224b3ddf86a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_Tags
now: 2026-11-12T00:46:41.8939841+00:00

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
etag: "0x238188265706DE0"
last-modified: Thu, 12 Nov 2026 00:46:41 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b06f48e1-f1ea-4a8f-a21d-5e750be4a622
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:41 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c5cc59e1-d688-cd7b-1bae-e224b3ddf86a/test-blob-9ac05a68-dd7a-2e80-b516-ec1ec079af50

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
mxryCa/+DsE1ehDBShd4+tRGoTgzlZ1hXtAjU8O8E0mrl6qW2p/440sKjw7FuoIENudPbTzANgZ8
kKre2rv+eWbHFrNs4SA0Tb7tKQWPm6ROHxzcbKYM62CkGUn0GQiPDBWn/qPPl1TGGx9+0gwA7fUG
kLueIQ3AuitSyMfXPzS1XR3v6JwAfofIFVGHjhhUpCxT7olM8eoI5kR4fc+M79vqyHXvEARZBRE0
1gy8OSsT/iSbg1GraGwz5wFXiAG4OyZ1nMWjZJMn+ul3GBreS60YZX6q8WyKP2AIuygDAX0QfJvl
Rpxlb5mQc4hnNFBRVZxTPyOCDUm661xlmqlqJPlsZpx/+AQQsvXlGX7jIgsQtmaMr8JZjW5RK1tA
/9XwJk6P+82z0lyXQowtnfPL18lRVeNC3nU3EtgtLcyp0LIg9fMvUyY9XOQJ9Ww1LPB6hlSR7qrx
rUfZWOn0haSQ7XLZDaj/m4OiE/n/OOkIAeXosqd4GOEIL0erVvs9SNY/eQf6XB9Ie+vQ7tux8XRe
0FYDDNL9F9WQ0N5gU0SIZcoiwL/iDqTGoDe7qCkGVz3STYWkOjwEQWIxaotA5yemSIkQjjC1fMKx
PGuaQm+siXigjga+4yuNHn9dsKMYhrkQFV+g9sgMHNDD8v3Qaf/yheAToFgg52VdgnCxWMwembay
iiwPC5Owk3E1+/AtvbV/aivCBeVg7y36QnNYW8QEpFlHHd7S43lNYgzn6ut0MMW7Me6gXJPQUpr/
FckfVzitMVeX5p/WrYexdKLZeQRBhhKunSrWY0jGdstE0s2vLgvUObmU3Ekl5INn7ufw99iVvo+3
cboO180P0W/Tktq5AUaXBD9LrKnIiLimbnVg1X/yrhQ++L1QxmLshAvaUVKpreygWPKZShHl7ugC
Z2hYrvvv4ePGewmJRj7cXyie7TZl/MGIwH2NWWQCWAnUTl76k9YQ6nBv4jLjFxKzverpRwGxnWqn
0O5+Yoh+wyL/tPjf4stSjQPF9RqOpKhr2Zt5GRAIIrHzU8PnkYjo8B8P5GIa09ofl7n97KdQGCtF
E4jsBKkR9pFG7I4Havx73QX7fsBGUQXBWoJXCjYKojuYon7//Ot1/u3R0+dMFyy9gg6hVZlq/8KD
K6onuutaPElTb8h9e+EZhYDTdH0edENVmYgoaE2hLaK8fNFBTkMBdped+adkQAYth9AYl4pEZLZm
0SFjMtP8sUIlwP8Q2Dc90f7mgHuc8FmB+uB9iZUYeBca23winUPDoUdlP38HHa+Y28WLXuQ7yeDI
4jfyfyisDEjo9f26GjS6It8zN7HZet0x5K7PjBky3xGcWrsL0SEfuDI3Hiey3cCR0DwEB5Iv7g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x237ACCB7CDEC260"
last-modified: Thu, 12 Nov 2026 00:46:41 GMT
content-md5: 6eFmsgfClOqAUKCE4ckImw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 07ddc180-fc54-4b4f-913a-91edb9397252
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:41 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c5cc59e1-d688-cd7b-1bae-e224b3ddf86a/test-blob-9ac05a68-dd7a-2e80-b516-ec1ec079af50?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 88b43fec-121c-462c-a1b2-4781d81ea605
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:41 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-c5cc59e1-d688-cd7b-1bae-e224b3ddf86a/test-blob-9ac05a68-dd7a-2e80-b516-ec1ec079af50

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:46:41 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:41 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x237ACCB7CDEC260"
content-md5: 6eFmsgfClOqAUKCE4ckImw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1ccfebb4-c429-4165-8e6c-3eb88131f96c
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:42 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 6eFmsgfClOqAUKCE4ckImw==
x-ms-tag-count: 2
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
mxryCa/+DsE1ehDBShd4+tRGoTgzlZ1hXtAjU8O8E0mrl6qW2p/440sKjw7FuoIENudPbTzANgZ8
kKre2rv+eWbHFrNs4SA0Tb7tKQWPm6ROHxzcbKYM62CkGUn0GQiPDBWn/qPPl1TGGx9+0gwA7fUG
kLueIQ3AuitSyMfXPzS1XR3v6JwAfofIFVGHjhhUpCxT7olM8eoI5kR4fc+M79vqyHXvEARZBRE0
1gy8OSsT/iSbg1GraGwz5wFXiAG4OyZ1nMWjZJMn+ul3GBreS60YZX6q8WyKP2AIuygDAX0QfJvl
Rpxlb5mQc4hnNFBRVZxTPyOCDUm661xlmqlqJPlsZpx/+AQQsvXlGX7jIgsQtmaMr8JZjW5RK1tA
/9XwJk6P+82z0lyXQowtnfPL18lRVeNC3nU3EtgtLcyp0LIg9fMvUyY9XOQJ9Ww1LPB6hlSR7qrx
rUfZWOn0haSQ7XLZDaj/m4OiE/n/OOkIAeXosqd4GOEIL0erVvs9SNY/eQf6XB9Ie+vQ7tux8XRe
0FYDDNL9F9WQ0N5gU0SIZcoiwL/iDqTGoDe7qCkGVz3STYWkOjwEQWIxaotA5yemSIkQjjC1fMKx
PGuaQm+siXigjga+4yuNHn9dsKMYhrkQFV+g9sgMHNDD8v3Qaf/yheAToFgg52VdgnCxWMwembay
iiwPC5Owk3E1+/AtvbV/aivCBeVg7y36QnNYW8QEpFlHHd7S43lNYgzn6ut0MMW7Me6gXJPQUpr/
FckfVzitMVeX5p/WrYexdKLZeQRBhhKunSrWY0jGdstE0s2vLgvUObmU3Ekl5INn7ufw99iVvo+3
cboO180P0W/Tktq5AUaXBD9LrKnIiLimbnVg1X/yrhQ++L1QxmLshAvaUVKpreygWPKZShHl7ugC
Z2hYrvvv4ePGewmJRj7cXyie7TZl/MGIwH2NWWQCWAnUTl76k9YQ6nBv4jLjFxKzverpRwGxnWqn
0O5+Yoh+wyL/tPjf4stSjQPF9RqOpKhr2Zt5GRAIIrHzU8PnkYjo8B8P5GIa09ofl7n97KdQGCtF
E4jsBKkR9pFG7I4Havx73QX7fsBGUQXBWoJXCjYKojuYon7//Ot1/u3R0+dMFyy9gg6hVZlq/8KD
K6onuutaPElTb8h9e+EZhYDTdH0edENVmYgoaE2hLaK8fNFBTkMBdped+adkQAYth9AYl4pEZLZm
0SFjMtP8sUIlwP8Q2Dc90f7mgHuc8FmB+uB9iZUYeBca23winUPDoUdlP38HHa+Y28WLXuQ7yeDI
4jfyfyisDEjo9f26GjS6It8zN7HZet0x5K7PjBky3xGcWrsL0SEfuDI3Hiey3cCR0DwEB5Iv7g==
```

## Interaction 4: DELETE /devstoreaccount1/test-container-c5cc59e1-d688-cd7b-1bae-e224b3ddf86a?restype=container

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
x-ms-request-id: ad718472-9dcd-4980-8182-e0e9728a28f6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:42 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

