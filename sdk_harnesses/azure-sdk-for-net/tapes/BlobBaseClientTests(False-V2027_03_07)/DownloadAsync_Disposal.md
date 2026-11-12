## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4598ee0c-f110-aa62-2d39-8cfaf4758e10?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_Disposal
now: 2026-11-12T00:46:37.7077782+00:00

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
etag: "0x22D3EC7E9433240"
last-modified: Thu, 12 Nov 2026 00:46:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 434062a6-0965-465f-9775-d5eeec87813b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:37 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4598ee0c-f110-aa62-2d39-8cfaf4758e10/test-blob-7cd861ee-f1b6-1567-d2fa-3d8b1ce4e57b

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
MpskHiVmU7uEJHjHgEnEXS2mBNIWUy/Q4Mz3sLzH5kmtqMc66JlspZvdwex4minjdC7NTXG7+t5r
VD1ZbqP/vT4vGdiBinWTOl43OZJDV0WiFDuN+ZjY8q7pzpNbEzb33gStSYBRYeq5ORMTg8BMKP34
t1pnccOlVycqmLvhOCcnP1uNlQ3EULJR08CFxG7tnKaWY1vckGxBCPJZJ8kv1wHs7ERlvpLvM2ao
Fp4CH5K5PfsUS9TLS6/uTIwaaynoIfu/mNgqh90Upy/1M3rOP+hgn+nOGowsIaGUdnIF1Mg8v/Si
Qoe5j7UdAKSk1Rc0IAykuss/Ggdvk3Y3lRBrDtJnuXSFLPxhphA0sBnoh0yJYFVlYRr8/KTtMq8Q
gvqksvHSPBuir/QQQhO7C2nthgsqrTW7Ba23a73PmPlNUCQVj/4oFksx57BhVR4HQPA7AKuj5tXF
6axEGtFd0xb7wvLvpXtqxXDA+caEWa+OryvMlJhNqmpPUKZR4/t50xOaZpMsGJp00Do74+0OQY/9
tmulkT9+rReHoFXVGeF1RiWy6fMbYZeRV8RdEsd8QA8WVC2Q1ELUG7h7pHdEn7dZxZzHXFeb4VTT
FDl6IZpQC19FvsSz5HLj3c46n7wfTLgNA0wqtOO4enPZvL8JWfoeKpkX/+DypeEq5H6IYUGXs8iA
bR1NJlZ7jUNR2iez2YTTHHUiB03XGl1rANBlLxkxQQn2iOvd0ARDnHGdocu5dgr6tEXMdax7qVO/
4SaFFl0qH5kevFGY9ktw3mvbOnmSsonFa3rUZMxde96YHe/dvoUUcoExmrq5Yb75W5ZAoG/aLC+d
wKrjVbvMwUFz/9lckiDmx8f3YBfODAm82gg2HNtvvvC/QP7aMB3GZdl5RmLlncl1Wtio4ssXzrOg
JnqylqRmA0HonFIiC5aqMfs+Vcan1z0/wMICx9slqHFKOQqiE840EkIg/AF3U09C/bHP2Xnt+U89
ctXiZDxmwvTg2NGMCB0tCUKEh9o7yG1zv8kqVc74XUC6ZKH4Uq4FujoNlnp+tvWTos82aHJ1Aqlo
b6RzO20l53qQ0aR8NLeUfsygLjHy9AnTl7L/wvTORWH3kOMKkn7M568A7eRRF24Xoeml1dN4dXqa
n6S7JiSFwYxChKTUiuxN00eC8gckgn9D5yAKKXCOfxppb/LaEcGKeitYD5LKQxf8VwGM9YNydh0k
dz4DepgbswWJaxr6c8KF93fbzHLteaMJDdJvAYmW9vnVtpqCh/+TPVuMQNj8AuQ/Bv4Ll6qqNv2b
+m3GrLF88nQhJbwnA3B4SI4XYDjLDAvtL/uKil5PK3+c54ySzJCpEE5j290nFwKOk08bktXEzw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D53FC3D1433AD0"
last-modified: Thu, 12 Nov 2026 00:46:37 GMT
content-md5: 1nzjLxRuyu4TBRbD8kNrxQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 355c7c67-dfa1-4f73-9f6c-ea29df58544f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:37 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-4598ee0c-f110-aa62-2d39-8cfaf4758e10/test-blob-7cd861ee-f1b6-1567-d2fa-3d8b1ce4e57b

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
last-modified: Thu, 12 Nov 2026 00:46:37 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:37 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1D53FC3D1433AD0"
content-md5: 1nzjLxRuyu4TBRbD8kNrxQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8fd7a44d-a650-44ba-aba3-14d0411217e7
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:37 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 1nzjLxRuyu4TBRbD8kNrxQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
MpskHiVmU7uEJHjHgEnEXS2mBNIWUy/Q4Mz3sLzH5kmtqMc66JlspZvdwex4minjdC7NTXG7+t5r
VD1ZbqP/vT4vGdiBinWTOl43OZJDV0WiFDuN+ZjY8q7pzpNbEzb33gStSYBRYeq5ORMTg8BMKP34
t1pnccOlVycqmLvhOCcnP1uNlQ3EULJR08CFxG7tnKaWY1vckGxBCPJZJ8kv1wHs7ERlvpLvM2ao
Fp4CH5K5PfsUS9TLS6/uTIwaaynoIfu/mNgqh90Upy/1M3rOP+hgn+nOGowsIaGUdnIF1Mg8v/Si
Qoe5j7UdAKSk1Rc0IAykuss/Ggdvk3Y3lRBrDtJnuXSFLPxhphA0sBnoh0yJYFVlYRr8/KTtMq8Q
gvqksvHSPBuir/QQQhO7C2nthgsqrTW7Ba23a73PmPlNUCQVj/4oFksx57BhVR4HQPA7AKuj5tXF
6axEGtFd0xb7wvLvpXtqxXDA+caEWa+OryvMlJhNqmpPUKZR4/t50xOaZpMsGJp00Do74+0OQY/9
tmulkT9+rReHoFXVGeF1RiWy6fMbYZeRV8RdEsd8QA8WVC2Q1ELUG7h7pHdEn7dZxZzHXFeb4VTT
FDl6IZpQC19FvsSz5HLj3c46n7wfTLgNA0wqtOO4enPZvL8JWfoeKpkX/+DypeEq5H6IYUGXs8iA
bR1NJlZ7jUNR2iez2YTTHHUiB03XGl1rANBlLxkxQQn2iOvd0ARDnHGdocu5dgr6tEXMdax7qVO/
4SaFFl0qH5kevFGY9ktw3mvbOnmSsonFa3rUZMxde96YHe/dvoUUcoExmrq5Yb75W5ZAoG/aLC+d
wKrjVbvMwUFz/9lckiDmx8f3YBfODAm82gg2HNtvvvC/QP7aMB3GZdl5RmLlncl1Wtio4ssXzrOg
JnqylqRmA0HonFIiC5aqMfs+Vcan1z0/wMICx9slqHFKOQqiE840EkIg/AF3U09C/bHP2Xnt+U89
ctXiZDxmwvTg2NGMCB0tCUKEh9o7yG1zv8kqVc74XUC6ZKH4Uq4FujoNlnp+tvWTos82aHJ1Aqlo
b6RzO20l53qQ0aR8NLeUfsygLjHy9AnTl7L/wvTORWH3kOMKkn7M568A7eRRF24Xoeml1dN4dXqa
n6S7JiSFwYxChKTUiuxN00eC8gckgn9D5yAKKXCOfxppb/LaEcGKeitYD5LKQxf8VwGM9YNydh0k
dz4DepgbswWJaxr6c8KF93fbzHLteaMJDdJvAYmW9vnVtpqCh/+TPVuMQNj8AuQ/Bv4Ll6qqNv2b
+m3GrLF88nQhJbwnA3B4SI4XYDjLDAvtL/uKil5PK3+c54ySzJCpEE5j290nFwKOk08bktXEzw==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-4598ee0c-f110-aa62-2d39-8cfaf4758e10?restype=container

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
x-ms-request-id: e3574a71-afd6-4365-b284-34a68ddb8b30
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

