## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4620d45b-80bf-dd62-2c9b-c96500cda2d2?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_Disposal
now: 2026-11-12T00:47:53.0952233+00:00

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
etag: "0x243D03353DDD6A0"
last-modified: Thu, 12 Nov 2026 00:47:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fe447b5b-1242-461a-a54c-b366dd7a0b0e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4620d45b-80bf-dd62-2c9b-c96500cda2d2/test-blob-d775edc8-a6f2-0293-b241-1293fb2d80e5

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
JrFFvClLH9j4W2QY8qOiXRLxtdypaLZffVq9/Ls/SwJdXy/fi18uD7VITmQcSuuI+GxTDhjGKb77
5j/OjiIcuQ9iu5J0w9Kyw6YnYRlRQzJvNQNP6z3pljZw46UfYICSK5VVuY5YEzWaoEtynsekqaIM
X1gfzc3ReCRcBN8tk2IllDWE/ImkFiLOtUrxd/duyzoCEwAoc13Hg0Fq+w5WbQ3oTQqRIKwYaEg2
URiD4AAs7jmkKn9h/CHYvHlIOhsTd0g9CCrt3KqN6au48SJFRKJAPQ3VsUKNhlDouWMz0C4tI9nP
RtjWPxGOFkDUqQv/knjWB/wNPcYFr4HZBCJHWhl8i85Idf7Kaf77R5oCuN1F6SfqXckxH+YSypZW
/TruRrwnVx09thx6C53+EvUsA/aklBv7XPxPS2znNqtndGzEDAHd2mG/CDIKcFErMw3w5segsmge
8+q/1wyxVYBwEpcxOgX0TiiV5Izo8OuqJBhe9k/kx8EDpRkWHQNUDbKymV66+vkH/JieC87cNgL+
FbPzUl4xjEvVLZTs3TAkQNbZNlaN8CkfV/q3RbvzJm8WGAhQYLpTgQ0S5MxkGh9necv3AwCscSSJ
1PtkekeP4gYl1sUn1N8bhbRJegtcujzbT8vw+yNuaafjxoy/7wfGgwHFPkRZQKTr231LY/YZLBm/
iSp7n+bjtmwdQw5SXJatgvcJl3v3gQ4mBCClIwawyply/2XcS+Qb4ojXPPyWmX7nneD/D5Wdxwgc
VJrGPpNmbXl04Fwx0TcS7rTzIEQSkGuhvoUlsLoE1DhcwPZJVKP1cc6CIrgitcyo7SHgqqfDCcQu
JX8NQLy+cAsk1BFByJoQ/q52j26yfwi5fcOZIyqRmLYyGy4k5zARxLGt/eG6ZySGz6v4TXlWe6Z3
U8P5JU3gkjtaD61r7BZ+ZMu8BYEn/hWfElN/mUs825+IrJRtGJ5kzGulYFh2G+OVeuiumXYkT1Wu
WRL5YfnwHTMN4kCCEEssVzgWgp68KPdw6R9ijkIpZFw+v76MamtytUIlaTmiEmmcgUE9Ds228TEb
iXfajY/w5H7jQ1GNoO3No8xbl7++zde1xQ0A61WPiM2NcOHzlyezNIS6v88YD+BUcGoAW1pyXbug
JMeB7/gpU7uD/zAL2QylqGI6Aw0InbYtrHrqjixzGxImU3NgMUWLkWwTlA+vSZdeW7L3N1qumIcR
VEN9PsWOD+Qd5YWZRXYdrnKh9AimfWLjizJ5e+O4d7vrTt0BDVKmhYUrkmQRxRY82onnDKR/a9fg
mrOSFJMBZG3KrfaZG6Af+m6Ceur+0cYcPaFa0GoXa+MGIHOfFHDxKi32Rxcgo7/oyBI1/PDs4g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22DC159941052E0"
last-modified: Thu, 12 Nov 2026 00:47:53 GMT
content-md5: 6PtJB7Ba2hJqOUara0v8qg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1bc96e41-20c1-4a73-8f55-b3f5fb83d1b9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-4620d45b-80bf-dd62-2c9b-c96500cda2d2/test-blob-d775edc8-a6f2-0293-b241-1293fb2d80e5

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
last-modified: Thu, 12 Nov 2026 00:47:53 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:53 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x22DC159941052E0"
content-md5: 6PtJB7Ba2hJqOUara0v8qg==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0bc461b9-9c4a-4b13-8fb8-8717a3bba741
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:53 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 6PtJB7Ba2hJqOUara0v8qg==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
JrFFvClLH9j4W2QY8qOiXRLxtdypaLZffVq9/Ls/SwJdXy/fi18uD7VITmQcSuuI+GxTDhjGKb77
5j/OjiIcuQ9iu5J0w9Kyw6YnYRlRQzJvNQNP6z3pljZw46UfYICSK5VVuY5YEzWaoEtynsekqaIM
X1gfzc3ReCRcBN8tk2IllDWE/ImkFiLOtUrxd/duyzoCEwAoc13Hg0Fq+w5WbQ3oTQqRIKwYaEg2
URiD4AAs7jmkKn9h/CHYvHlIOhsTd0g9CCrt3KqN6au48SJFRKJAPQ3VsUKNhlDouWMz0C4tI9nP
RtjWPxGOFkDUqQv/knjWB/wNPcYFr4HZBCJHWhl8i85Idf7Kaf77R5oCuN1F6SfqXckxH+YSypZW
/TruRrwnVx09thx6C53+EvUsA/aklBv7XPxPS2znNqtndGzEDAHd2mG/CDIKcFErMw3w5segsmge
8+q/1wyxVYBwEpcxOgX0TiiV5Izo8OuqJBhe9k/kx8EDpRkWHQNUDbKymV66+vkH/JieC87cNgL+
FbPzUl4xjEvVLZTs3TAkQNbZNlaN8CkfV/q3RbvzJm8WGAhQYLpTgQ0S5MxkGh9necv3AwCscSSJ
1PtkekeP4gYl1sUn1N8bhbRJegtcujzbT8vw+yNuaafjxoy/7wfGgwHFPkRZQKTr231LY/YZLBm/
iSp7n+bjtmwdQw5SXJatgvcJl3v3gQ4mBCClIwawyply/2XcS+Qb4ojXPPyWmX7nneD/D5Wdxwgc
VJrGPpNmbXl04Fwx0TcS7rTzIEQSkGuhvoUlsLoE1DhcwPZJVKP1cc6CIrgitcyo7SHgqqfDCcQu
JX8NQLy+cAsk1BFByJoQ/q52j26yfwi5fcOZIyqRmLYyGy4k5zARxLGt/eG6ZySGz6v4TXlWe6Z3
U8P5JU3gkjtaD61r7BZ+ZMu8BYEn/hWfElN/mUs825+IrJRtGJ5kzGulYFh2G+OVeuiumXYkT1Wu
WRL5YfnwHTMN4kCCEEssVzgWgp68KPdw6R9ijkIpZFw+v76MamtytUIlaTmiEmmcgUE9Ds228TEb
iXfajY/w5H7jQ1GNoO3No8xbl7++zde1xQ0A61WPiM2NcOHzlyezNIS6v88YD+BUcGoAW1pyXbug
JMeB7/gpU7uD/zAL2QylqGI6Aw0InbYtrHrqjixzGxImU3NgMUWLkWwTlA+vSZdeW7L3N1qumIcR
VEN9PsWOD+Qd5YWZRXYdrnKh9AimfWLjizJ5e+O4d7vrTt0BDVKmhYUrkmQRxRY82onnDKR/a9fg
mrOSFJMBZG3KrfaZG6Af+m6Ceur+0cYcPaFa0GoXa+MGIHOfFHDxKi32Rxcgo7/oyBI1/PDs4g==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-4620d45b-80bf-dd62-2c9b-c96500cda2d2?restype=container

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
x-ms-request-id: ea3f7da5-2679-4c05-b125-855ce815b608
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

