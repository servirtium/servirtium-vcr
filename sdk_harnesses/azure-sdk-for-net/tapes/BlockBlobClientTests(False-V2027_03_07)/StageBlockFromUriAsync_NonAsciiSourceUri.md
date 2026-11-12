## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0989615e-1a4e-25e3-ae5f-c7e858b1d5bd?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).StageBlockFromUriAsync_NonAsciiSourceUri
now: 2026-11-12T00:49:45.7667090+00:00

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
etag: "0x20D518CE2A06540"
last-modified: Thu, 12 Nov 2026 00:49:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 228a50dc-a09a-452b-bcfe-07c45cdc4874
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0989615e-1a4e-25e3-ae5f-c7e858b1d5bd/test-%CE%B2%C2%A3%C2%A9%C3%BE%E2%80%BD%253A-5e7bc20c-f6ed-eeeb-5b9b-49cbad9665c2

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
39RUb1aL/LyhOtvXT+Z/JsPrIDIUdnIjPzQpf632RokMdX0Buv010mXNaBM+C9XI36ElbJGjqWli
MC8iYXwOqvRSy9lofmvFtU3MRg5e5TReYJ8M0dn4acwUn4nOEnDovr0f7ED7X2A1YLZD1mJbA0v7
wwHdAtgaWmINVN/i96Pc5IhQPvn0YwE+1nEitJJquJs+0k9vC7zlBJLd7QuBU2gTZ/LaC8RSB1//
nitn96XQo5tEpCRUbNjLazlmFnX2vYMID0yfkK3W68vvcG2RfQ3sDUpvPa5Ev/sZDqCK6/HpCeGn
XuhYMBLubbhYZfxrOe0seggrhoDVxE9RhoENSwDaBWaL6h4lk904gM/261r/rdSyXnDovoJh0ZqY
B6qR4SK4fl+V30/OBuYq8waw39j1UtisWu2P8UbjKhiEjYwzpp+tPWz6ac6F5FeKvst8sPLBo7XR
5IY1KY0ZsbQ2Snla90xmA6Fs+ugKJnaVBTJ6Z3olwunWYcEYdxTf4bcZTpndL8d/FqxRVajMx70Q
nyRan0o6EYeQhJWKTYuNjRkx8NfcuNZr+lHN1G1BCpkDCNjwhEFt3j0STasx9MggxMiPm9flM+dO
7qT5bDwaTnn8hkSznQjXwxKaymoqOgWIrBCksm7CHtXwoZadc3EB9/4xNW6DbCbAt9fES2l9I7Se
cL8sdZwKOWhvw/tyOlCgmNJr+QSXBUDp5PqX/dJsc37h/gKy1IJiJvwFE6krTnyHJLKWESmwBmt/
Q5ChczuWA098kDtN7sRQCdMIkfGWvZZ+D9kf1WJVMfeXMpDxwLLAbw9Zr71AOTXuRgdWp3V56Yb5
I2Nhdy7tJ15EtrszXkggRyLhPA7YPdajMI9a/4mCHUkK951OXvjhbIhe/IN6uue/NWBSmKx4IeWN
vkaekyfVwZhyKWeq0ugq/9CFeUBSKXaomsopL4Wckta3waCyQ9hgiTvrB5GAFGN3KJjc8qelO5TP
9vhdq5ET1peQ8xFIeLz3JfAEZyLlKIZnsQfswJ8vEYUM4kzgAt2p1zD67yFRL7Dc5M22oNRx6s5y
9vmKJxX3YeGLPJVvFyISWo/x6zhkFYJWD9vSeHCxmvh+bgzjH7AbAo5AxvIabM2qpEZEgP+VDeF2
Mxc5JOhw2aKd8KgWLjvf1uipJE6QPKMOKNQqbRn46GAqbeyZ4d6mz+1QfHskk3UKZaoW7OiT5vZ0
K/wURWyIpAdH68FORvUJA1RgP78n6ZReHwdv4fx4l4b1JLXikYqBx9d03Ki0vB+0DOiTMqY3TEFn
tiVkGMILz1Q7WSE/J3LK33fosw3sqWPoutUU5GXfvth0ettkHK8UaA1TeWL+deR2yVIvT5k0ew==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21CC0B6C5938AC0"
last-modified: Thu, 12 Nov 2026 00:49:45 GMT
content-md5: LXTcieoFJNRKygmgOkgJ8A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 631dc2d9-8bc9-4ebd-860f-9b9e6fbf37d8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-0989615e-1a4e-25e3-ae5f-c7e858b1d5bd/test-blob-004ad3c8-3098-ea01-45f0-9e1a12b06f3e?comp=block&blockid=dGVzdC1ibG9jay1hMmNlZmU0MC01MWExLTcxMjYtMjE2NC0xZGM3YjVhOTM3ZGY%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-0989615e-1a4e-25e3-ae5f-c7e858b1d5bd/test-%CE%B2%C2%A3%C2%A9%C3%BE%E2%80%BD%253A-5e7bc20c-f6ed-eeeb-5b9b-49cbad9665c2?sv=2027-03-07&se=2026-11-12T01%3A49%3A45Z&sr=b&sp=r&sig=K8UUophHJHCJMHBJj%2FZTGRGIyr219DXULhkkIpNkQS4%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: LXTcieoFJNRKygmgOkgJ8A==
x-ms-content-crc64: eOCmPtSizWQ=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 10992d5f-e8bc-4617-8227-3e1287711a5d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-0989615e-1a4e-25e3-ae5f-c7e858b1d5bd?restype=container

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
x-ms-request-id: a5dbd3d0-1605-4cc5-851a-830b4266f445
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

