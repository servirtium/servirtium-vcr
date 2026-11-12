## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-addedb73-bc0f-2975-c91a-6d02f42d0ee9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_Stream_StorageTransferOptions(4)
now: 2026-11-12T00:49:05.9626541+00:00

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
etag: "0x260DA2384486B00"
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7a501c9b-0fa7-4e25-826c-538b5b3b9591
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-addedb73-bc0f-2975-c91a-6d02f42d0ee9/test-blob-1c45f73a-9943-7913-d24b-1e664189e04c

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
iN9XEhRTDK+/ehKY6k+gqx+SAWKAp3Pax2Taw54P6D85IHoV1fzV5uqWXMmGe4+Dq3NGroh+zOBr
fUqveEkQsJLTXsnUitUjvBt36kqqU0zVVxcryTm3u1SaqVexJW2hhaw3sx3FriCdI/FsBuGWwSr+
2iEx5edYG6N0OuF9cZet1WSecp8uD6j3jaVHSrRyA+cts0pMcKDF3ph5UHQ/H7JavzB990+Lz8t4
OldBENHuAjb5UL1MYWXD2JMHtb40t27z7YqD9QyYoeN/0zZIg87Gi049Rc70DV7LuR+7hBoMRILp
TiJGag0qYK7ZzY4ve1TFQClw9nGf/uAsuDvt3R3Jco6zXjWrgCBBE+QgGkDQmz7K9UPwnE4RSk9C
GbLRPYOQEFr/fB0fGcAJL+KMfuOgXBz9I+fa2NY/ohPlaWZub9Zhjwrl0B8hqtyD521shMtsor2V
1BmctjeDwNkJOq9am78LK+/Zuoz823gKV/Fp0x1Ieceo2Jq8xdjSYg9GGHAsKEytYFnckugwmPmh
kV9GGe27wcDoscIlTmYXBlh9tsMI3i6kvHLEa+beeD+hGzN4jEgiilavQ3eJiBHzxIuQs+E1mbMx
oV1691XZCjmDgzMynnoPWixsWJq2GzRg0adbTsRdbIKAR+vrp5MB1jk+BgTewCYRgFm1yEAZe4Uo
GiWufrt1JRewslePJLOZa4JgeBUwgRCASc5rqKNBZstlwoxtU1d+yeDsLQ3OglylHF2+uANw+JgU
LTXtCX1zb0uLKWEmKxcq4a40Q1MCscZxxYtGg63I9Mn0WCYikb9ieL7CQ1j7fvBFk9dUPLVEEntu
e0TxLeuewzWXMtPxCFDv0cuUQG5udkabAO/Wc7cUr0aqsxV7cEvSI38jY0wcVIuGZGrqr9EMAAX9
Viz8x099goKNRlQ6dGB/wRzvShL6fqxkTw9NKv90nbMQfRoe1lwwpeDJjw02S/AKau20HbXyA9d/
mHdAMFiDGKmhKvZGYevAvqUyMO+fLgQeQsARwH/+HXpCnj7k73WIRnZjlCH5wwgC814QwNLn4Glz
Ie2XcVgpowx8A8Kt3M4wqul5O5niJX63D8wg7V2oW77UcM6H8NUeOvEUfcBGVReQ4BbobqTQkPxu
32GLCLWu1KgD2GsAqLkUWgGnzqe+cLq1kA1Hv+wZA9/RGBBzkzE8ZakYQnyrjzdc1BSjKcJUsG+n
1XinZxS86tSLLpCooMfPamj+pS09CgHW6urXdtodfWehzL25lf6UXFinH2GmtDRN075aVgtBasp3
0Hwq5HP6brEoBtQJFtRpaknVleqfMDa2iqIbwiZcYGLyQsWCaXjkrbGvfa5gQ7zq8OzBbNTg1w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FE4AD590A5B440"
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
content-md5: ZY6VPHU2QfAxz86r4ZQj2A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 29557c2d-7854-4621-9243-acc7e41b4010
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-addedb73-bc0f-2975-c91a-6d02f42d0ee9/test-blob-1c45f73a-9943-7913-d24b-1e664189e04c

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
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:05 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1FE4AD590A5B440"
content-md5: ZY6VPHU2QfAxz86r4ZQj2A==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d61d6b10-a89a-4105-97f2-176eafeb760c
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: ZY6VPHU2QfAxz86r4ZQj2A==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
iN9XEhRTDK+/ehKY6k+gqx+SAWKAp3Pax2Taw54P6D85IHoV1fzV5uqWXMmGe4+Dq3NGroh+zOBr
fUqveEkQsJLTXsnUitUjvBt36kqqU0zVVxcryTm3u1SaqVexJW2hhaw3sx3FriCdI/FsBuGWwSr+
2iEx5edYG6N0OuF9cZet1WSecp8uD6j3jaVHSrRyA+cts0pMcKDF3ph5UHQ/H7JavzB990+Lz8t4
OldBENHuAjb5UL1MYWXD2JMHtb40t27z7YqD9QyYoeN/0zZIg87Gi049Rc70DV7LuR+7hBoMRILp
TiJGag0qYK7ZzY4ve1TFQClw9nGf/uAsuDvt3R3Jco6zXjWrgCBBE+QgGkDQmz7K9UPwnE4RSk9C
GbLRPYOQEFr/fB0fGcAJL+KMfuOgXBz9I+fa2NY/ohPlaWZub9Zhjwrl0B8hqtyD521shMtsor2V
1BmctjeDwNkJOq9am78LK+/Zuoz823gKV/Fp0x1Ieceo2Jq8xdjSYg9GGHAsKEytYFnckugwmPmh
kV9GGe27wcDoscIlTmYXBlh9tsMI3i6kvHLEa+beeD+hGzN4jEgiilavQ3eJiBHzxIuQs+E1mbMx
oV1691XZCjmDgzMynnoPWixsWJq2GzRg0adbTsRdbIKAR+vrp5MB1jk+BgTewCYRgFm1yEAZe4Uo
GiWufrt1JRewslePJLOZa4JgeBUwgRCASc5rqKNBZstlwoxtU1d+yeDsLQ3OglylHF2+uANw+JgU
LTXtCX1zb0uLKWEmKxcq4a40Q1MCscZxxYtGg63I9Mn0WCYikb9ieL7CQ1j7fvBFk9dUPLVEEntu
e0TxLeuewzWXMtPxCFDv0cuUQG5udkabAO/Wc7cUr0aqsxV7cEvSI38jY0wcVIuGZGrqr9EMAAX9
Viz8x099goKNRlQ6dGB/wRzvShL6fqxkTw9NKv90nbMQfRoe1lwwpeDJjw02S/AKau20HbXyA9d/
mHdAMFiDGKmhKvZGYevAvqUyMO+fLgQeQsARwH/+HXpCnj7k73WIRnZjlCH5wwgC814QwNLn4Glz
Ie2XcVgpowx8A8Kt3M4wqul5O5niJX63D8wg7V2oW77UcM6H8NUeOvEUfcBGVReQ4BbobqTQkPxu
32GLCLWu1KgD2GsAqLkUWgGnzqe+cLq1kA1Hv+wZA9/RGBBzkzE8ZakYQnyrjzdc1BSjKcJUsG+n
1XinZxS86tSLLpCooMfPamj+pS09CgHW6urXdtodfWehzL25lf6UXFinH2GmtDRN075aVgtBasp3
0Hwq5HP6brEoBtQJFtRpaknVleqfMDa2iqIbwiZcYGLyQsWCaXjkrbGvfa5gQ7zq8OzBbNTg1w==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-addedb73-bc0f-2975-c91a-6d02f42d0ee9/test-blob-1c45f73a-9943-7913-d24b-1e664189e04c

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
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1FE4AD590A5B440"
content-md5: ZY6VPHU2QfAxz86r4ZQj2A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cda28280-9954-47e2-8c2d-963a62753db9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:06 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:05 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-addedb73-bc0f-2975-c91a-6d02f42d0ee9?restype=container

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
x-ms-request-id: 794a96ba-0487-4deb-88c1-df23541156b4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

