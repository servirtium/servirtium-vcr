## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-78c495dd-23a7-cef3-e690-608ac8b8746e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).StageBlockFromUriAsync_Lease
now: 2026-11-12T00:50:07.0792316+00:00

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
etag: "0x2255BF77A5B0C40"
last-modified: Thu, 12 Nov 2026 00:50:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 49cfdabe-6e1b-46e9-b6de-183270178a8f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-78c495dd-23a7-cef3-e690-608ac8b8746e/test-blob-4598bc3b-5d7f-9fc3-926c-82b5f3e4cdee

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
DdypeX6ZM8MShk2xzuvqDI3BCMYeXifdiQL7rqYnqlIwbR04g0+1Q2EBZiHWQQD6plP9B7CuT6+0
y/B7noQc6tv6gWHOsYk9DMRkHfcFB0gCAQhTKqOigh1ug7dfOaXd5HtG28CeLPTKv/rsSTK3r8Sn
eZx7ycA4WP5DXy7R3dMehjl8vyyHY9QTiGuotjjrt9TzuL8IYRq7DYPBW8zG+OEnzcP4OvCYIBbI
aEFUkKLGWKhZ3iUTFSUewbKoxggHTJCKgeh18nzkW5ipQPnZZn3h+wMkbBq7E7ie2Xg971kOwBuw
yg+5UWUrdYONatQrRVs1x8sE4992zm0v1xkDpms+m3/dKJtuJ6md+PeWLanjcpMdCCiOCd07Ovyh
inpMJ88XT89UTh2/x58hZ+ro36DES2SF5p1Dr5Kioe2fzJ0vUdAnf97ajiR2XUGIbaLyU1tb3T4V
x0Ey06A8sqwwIPoC8RUawF/C6rxADohbu0Hwr06SRO9eGoqP9aw+ndx3RjxHhXyM2JL7mPOB1Li4
1hheTAJdndwLo9eLisqzhEzgyMhMEzXFY9e7lqv83UXR1h6T31DaGahgPOGlAU3ISBSmoQvwbMPi
mOkrogcxDsaRubSrH6T8Ba4g69dUIGKJ806XVTs54WlbsUZnr3egLi0aE0eZHChvqpxd0IDrjniG
oa65mbmLV9dKT25elFU3f7ypOQwb8NclKKuf3BHpcCPO4Q3I55V0j7tvTsy6EBVGJVDDQVRra7HX
k3EN7HvGYd9KkLNHbpcnNapRq6EKaxeVWLbAJS7OYnZc8VQjZqJAqe3scIBi/re5mwyqGr8PzCha
eJPEBTuxey09631DBM4HEAK0HvuWMlr/B4khJEe2TSQrye4PfKSxO/RSJRM6dpc+owq9Wq4tw0U4
xf6xj1fmhp1YFzvg+JReA+MGQw1HxJHy44E9+fN1/gWo1ram/6ucbJ514V5bXap1X1bLJn838ABs
v6zWqI2p4xk2NyHdtwQ3atZv0eIyl4XWx5qdqdeFcOW2OUD+xsQQy/5EJSaJmKdSk7ypyB8dOigm
AODzDDlBsMc7J37EOKQSXgbk7XFfTC/yShUb3KjGmP8Y2MXjHb/FA3VeTXAojVsYlmoZOUy2x7Ox
AMEjJtQedY5/rGDeL0BHH+r8AP6+yr26A0U+rV6yYRASMh39odyhQNjhqeH6Omcp0Rphuse08jYE
aCKO4McwzEtPy/wjSX0NW8Al3CHbv8neFNtDUKZJXUDm+Di6El8RsdyWqm5qBYidVF8GjhUVKalZ
r8vr7HukBm68PVFEU0hhFCtERRVbdA9TpvxGQs4q0c+PYGOTJcVg8qT/rcg2WAAXpXrq0OSU/g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DDD2DEAEAFA5C0"
last-modified: Thu, 12 Nov 2026 00:50:07 GMT
content-md5: KjmofTknQHs2KR+lgVh/Tg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 70a1bf9b-19d7-476c-baa9-dc041de54554
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-78c495dd-23a7-cef3-e690-608ac8b8746e/test-blob-7053e466-c65b-1d46-4efc-2f9d544000eb

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
DdypeX6ZM8MShk2xzuvqDI3BCMYeXifdiQL7rqYnqlIwbR04g0+1Q2EBZiHWQQD6plP9B7CuT6+0
y/B7noQc6tv6gWHOsYk9DMRkHfcFB0gCAQhTKqOigh1ug7dfOaXd5HtG28CeLPTKv/rsSTK3r8Sn
eZx7ycA4WP5DXy7R3dMehjl8vyyHY9QTiGuotjjrt9TzuL8IYRq7DYPBW8zG+OEnzcP4OvCYIBbI
aEFUkKLGWKhZ3iUTFSUewbKoxggHTJCKgeh18nzkW5ipQPnZZn3h+wMkbBq7E7ie2Xg971kOwBuw
yg+5UWUrdYONatQrRVs1x8sE4992zm0v1xkDpms+m3/dKJtuJ6md+PeWLanjcpMdCCiOCd07Ovyh
inpMJ88XT89UTh2/x58hZ+ro36DES2SF5p1Dr5Kioe2fzJ0vUdAnf97ajiR2XUGIbaLyU1tb3T4V
x0Ey06A8sqwwIPoC8RUawF/C6rxADohbu0Hwr06SRO9eGoqP9aw+ndx3RjxHhXyM2JL7mPOB1Li4
1hheTAJdndwLo9eLisqzhEzgyMhMEzXFY9e7lqv83UXR1h6T31DaGahgPOGlAU3ISBSmoQvwbMPi
mOkrogcxDsaRubSrH6T8Ba4g69dUIGKJ806XVTs54WlbsUZnr3egLi0aE0eZHChvqpxd0IDrjniG
oa65mbmLV9dKT25elFU3f7ypOQwb8NclKKuf3BHpcCPO4Q3I55V0j7tvTsy6EBVGJVDDQVRra7HX
k3EN7HvGYd9KkLNHbpcnNapRq6EKaxeVWLbAJS7OYnZc8VQjZqJAqe3scIBi/re5mwyqGr8PzCha
eJPEBTuxey09631DBM4HEAK0HvuWMlr/B4khJEe2TSQrye4PfKSxO/RSJRM6dpc+owq9Wq4tw0U4
xf6xj1fmhp1YFzvg+JReA+MGQw1HxJHy44E9+fN1/gWo1ram/6ucbJ514V5bXap1X1bLJn838ABs
v6zWqI2p4xk2NyHdtwQ3atZv0eIyl4XWx5qdqdeFcOW2OUD+xsQQy/5EJSaJmKdSk7ypyB8dOigm
AODzDDlBsMc7J37EOKQSXgbk7XFfTC/yShUb3KjGmP8Y2MXjHb/FA3VeTXAojVsYlmoZOUy2x7Ox
AMEjJtQedY5/rGDeL0BHH+r8AP6+yr26A0U+rV6yYRASMh39odyhQNjhqeH6Omcp0Rphuse08jYE
aCKO4McwzEtPy/wjSX0NW8Al3CHbv8neFNtDUKZJXUDm+Di6El8RsdyWqm5qBYidVF8GjhUVKalZ
r8vr7HukBm68PVFEU0hhFCtERRVbdA9TpvxGQs4q0c+PYGOTJcVg8qT/rcg2WAAXpXrq0OSU/g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D19BE2A3BD6E10"
last-modified: Thu, 12 Nov 2026 00:50:07 GMT
content-md5: KjmofTknQHs2KR+lgVh/Tg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d8c01fd0-6233-4a5b-bf80-7be4d0f743a3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-78c495dd-23a7-cef3-e690-608ac8b8746e/test-blob-7053e466-c65b-1d46-4efc-2f9d544000eb?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: d62862fb-7f8d-94e0-e060-1b5cb3a30d32
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D19BE2A3BD6E10"
last-modified: Thu, 12 Nov 2026 00:50:07 GMT
x-ms-lease-id: d62862fb-7f8d-94e0-e060-1b5cb3a30d32
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 26225614-f67f-4fc4-a90c-7d71232683ba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-78c495dd-23a7-cef3-e690-608ac8b8746e/test-blob-7053e466-c65b-1d46-4efc-2f9d544000eb?comp=block&blockid=dGVzdC1ibG9jay1lYjgzOGJkOC0yMzkxLTc0YTMtNzY3Yi1mNzgyMmQyNjRiNTE%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-78c495dd-23a7-cef3-e690-608ac8b8746e/test-blob-4598bc3b-5d7f-9fc3-926c-82b5f3e4cdee?sv=2027-03-07&se=2026-11-12T01%3A50%3A07Z&sr=b&sp=r&sig=ElrAJYDsD5%2Bc8eVXMfqcauJ3m8EB7lSQfCLHHx2OoNw%3D
x-ms-lease-id: d62862fb-7f8d-94e0-e060-1b5cb3a30d32
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
content-md5: KjmofTknQHs2KR+lgVh/Tg==
x-ms-content-crc64: XI8L38nUKDA=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6ee64bb6-e187-4c45-bab0-865337519754
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-78c495dd-23a7-cef3-e690-608ac8b8746e?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: 8736422c-cbcd-4b5c-b44e-887c4cb176c6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

