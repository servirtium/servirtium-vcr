## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e959980c-8d76-982c-f641-9dd87f08798b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).AppendBlockAsync
now: 2026-11-12T00:50:42.4994510+00:00

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
etag: "0x1C8BDB91325FB30"
last-modified: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 28f0b0d0-de1f-4945-ae2b-9468d8ccaa99
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e959980c-8d76-982c-f641-9dd87f08798b/test-blob-c268b9ac-770d-16ed-bbe0-f1f595da1c12

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D87CDB46D9F730"
last-modified: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 503bb7cd-28e9-4d5f-be14-8cb0e6eb829c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-e959980c-8d76-982c-f641-9dd87f08798b/test-blob-c268b9ac-770d-16ed-bbe0-f1f595da1c12?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
IKqPlVmETXMDeXxWKW9ggPjpnvTGsBCVq0MulZw2AhskirjVeeQxJ2v1v5T6lu1LgHD9qzwnS2+Z
+eoWVbfWzHZhMZ63igcTuHaI0fB8mxRW4xUrOVbf/T9IO3/6GtK0HvMdmGVOk/Vp6fPFnnl+HF7V
wHKiq5IggjRfb06HGZ2k1LP9XgKvB08fwlBjGV7FyR8hJFpfEXNg/RYw7iSm4s9VIMrGgb5bJrgi
gulCvGjWmqUvZfRDRMNAnGHrfhkreN+ADfmU/0dhxf6hPY6KHkCuWlR/dnzbEtsGhuVcb6if9woJ
wa9uQZtdzp/2oQc0tX0hPSTErAFjpfodjXhiBFVWAkaEgV2QPxi5Iajc5HHU0tBnOjKD2ksIpRu0
UbQi+8pJoJ7BrzQgkP0LC4pZhsCJSbuo+skj0if6fNtB3O1klyXek0TSEiKbR6o0eM/Arh9bKwj5
eQAAJs13xjNZ3rQQp3Rke/N8tjaZDbMf7llYOs675rDlah0l3Wx2W0zuQWj1JNBbWzIs3nTSYGxN
4DdzHoxlnvgDKjxWP52GBVvqqstKKcqJ/d+bjgc8Egqw1/00AjzAiaNw8fmUBBuUpdkZ6LWhA7Zt
6iGsyQ/xxxgxpWigUgIeKSAn2jfQ9PjDB+kuIipUD9NGxhcbE8CTfyrhYl6z81PW+76VeSl+nfUp
6cEmwqXt3JaUWovqAxZglFsN7pKZEBOVVydrv5aqxyki8in+bbyE84XIHpnI6/inNOXOcK5jj9mt
kWt+gR0A6pJhyBHtYSafifoN0fF6zGwuxIqw3FZ6v2JQUdxRBnJoyDQHZiLnutO+LuezVr7nM8T+
T72STw075wmunBBKToKIpAm8cmZJRwm38q1vxmikaB0XUra01ngny38ZOB3Dc+BkK7G0KsBetQez
211fzCCgCTPyM/vM1M6QlafmMA7r837MCpu37z5cuZyuAPsbx/5feC7q0EDkmFbjJJQZd4X5yOfe
k8KE6Rr1lXlfHdPSdc6oh7ffASI+53FE08upQ0IXtTgTPDQ82o4U9DrGhXuDEK7GcO/NGcbEoKtR
QBZOTFI3SGebvjiZbK0oyg3nd2L1wcId4tJSSZxxTpuJ65p4xqfojz0T51F1LARBpE643SlJW35T
MWmA5P7LKW+dEIATsARl/+ck4tpwp7bNEKRNuXFyQJAbJZU9aKo+SL7h2BuDLvRKU91CJHik4omz
stNafXD+K9Dw94pvKJc85pkcj86aSeKvA2WUMBsXd0MLirXX5MtN461KkzZq2ypFBT3fh1O7GWjx
qnkKafq02X9HY57iZQLOzqshT7arRSg7TirdOPDwUHBM5jlRQ3qylrm3IneMY6A7ELmnmcmyRQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x208520970EF8F80"
last-modified: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-content-crc64: viNTMc6RclQ=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 355cd11e-40b7-4a01-a377-841499c79692
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-e959980c-8d76-982c-f641-9dd87f08798b/test-blob-c268b9ac-770d-16ed-bbe0-f1f595da1c12

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_4
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:42 GMT
content-length: 1024
content-type: application/octet-stream
content-range: bytes 0-1023/1024
etag: "0x208520970EF8F80"
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 87cb1309-eba5-4746-8b7a-7d33c3ac7014
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-blob-committed-block-count: 1
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (206: application/octet-stream base64 below):

```
IKqPlVmETXMDeXxWKW9ggPjpnvTGsBCVq0MulZw2AhskirjVeeQxJ2v1v5T6lu1LgHD9qzwnS2+Z
+eoWVbfWzHZhMZ63igcTuHaI0fB8mxRW4xUrOVbf/T9IO3/6GtK0HvMdmGVOk/Vp6fPFnnl+HF7V
wHKiq5IggjRfb06HGZ2k1LP9XgKvB08fwlBjGV7FyR8hJFpfEXNg/RYw7iSm4s9VIMrGgb5bJrgi
gulCvGjWmqUvZfRDRMNAnGHrfhkreN+ADfmU/0dhxf6hPY6KHkCuWlR/dnzbEtsGhuVcb6if9woJ
wa9uQZtdzp/2oQc0tX0hPSTErAFjpfodjXhiBFVWAkaEgV2QPxi5Iajc5HHU0tBnOjKD2ksIpRu0
UbQi+8pJoJ7BrzQgkP0LC4pZhsCJSbuo+skj0if6fNtB3O1klyXek0TSEiKbR6o0eM/Arh9bKwj5
eQAAJs13xjNZ3rQQp3Rke/N8tjaZDbMf7llYOs675rDlah0l3Wx2W0zuQWj1JNBbWzIs3nTSYGxN
4DdzHoxlnvgDKjxWP52GBVvqqstKKcqJ/d+bjgc8Egqw1/00AjzAiaNw8fmUBBuUpdkZ6LWhA7Zt
6iGsyQ/xxxgxpWigUgIeKSAn2jfQ9PjDB+kuIipUD9NGxhcbE8CTfyrhYl6z81PW+76VeSl+nfUp
6cEmwqXt3JaUWovqAxZglFsN7pKZEBOVVydrv5aqxyki8in+bbyE84XIHpnI6/inNOXOcK5jj9mt
kWt+gR0A6pJhyBHtYSafifoN0fF6zGwuxIqw3FZ6v2JQUdxRBnJoyDQHZiLnutO+LuezVr7nM8T+
T72STw075wmunBBKToKIpAm8cmZJRwm38q1vxmikaB0XUra01ngny38ZOB3Dc+BkK7G0KsBetQez
211fzCCgCTPyM/vM1M6QlafmMA7r837MCpu37z5cuZyuAPsbx/5feC7q0EDkmFbjJJQZd4X5yOfe
k8KE6Rr1lXlfHdPSdc6oh7ffASI+53FE08upQ0IXtTgTPDQ82o4U9DrGhXuDEK7GcO/NGcbEoKtR
QBZOTFI3SGebvjiZbK0oyg3nd2L1wcId4tJSSZxxTpuJ65p4xqfojz0T51F1LARBpE643SlJW35T
MWmA5P7LKW+dEIATsARl/+ck4tpwp7bNEKRNuXFyQJAbJZU9aKo+SL7h2BuDLvRKU91CJHik4omz
stNafXD+K9Dw94pvKJc85pkcj86aSeKvA2WUMBsXd0MLirXX5MtN461KkzZq2ypFBT3fh1O7GWjx
qnkKafq02X9HY57iZQLOzqshT7arRSg7TirdOPDwUHBM5jlRQ3qylrm3IneMY6A7ELmnmcmyRQ==
```

## Interaction 4: DELETE /devstoreaccount1/test-container-e959980c-8d76-982c-f641-9dd87f08798b?restype=container

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
x-ms-request-id: ffce7fe5-bc2f-46ea-836d-7da16070a421
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:42 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

