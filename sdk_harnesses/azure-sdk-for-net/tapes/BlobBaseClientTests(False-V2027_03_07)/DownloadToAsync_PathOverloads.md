## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2fcc1ba3-110d-bf54-4bc1-37fb9d4958da?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadToAsync_PathOverloads
now: 2026-11-12T00:46:44.8531964+00:00

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
etag: "0x246D2844269C5E0"
last-modified: Thu, 12 Nov 2026 00:46:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0d6e0bb7-8b7f-4533-bac8-eb0271b9fe5f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2fcc1ba3-110d-bf54-4bc1-37fb9d4958da/test-blob-2272fba8-7baa-8e6a-3c58-8fb966817f9a

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
0STFRcPGA82FKlgBLjJ4upnAsFaZkT1ZcrPAKoej2bvenR+32GKL3Bf/quK4U5EZSXxi3ZkBQUDm
a9IPBtlF4VGdI5ETweI2NdQ/meZboB8ip+ALQfwi3Fve0GyQe9Y+ucmRGzD/BYiZK6fEwqhai8qy
7F74OqBUe0Y1NfB2prn9AN8dyoXvIqJYcRVUXRqzg0Sh3Y53RX4oPKDpys+XI4Tux8HIPcFFw8q8
oMiK/x0sgrKr1Mkqhbth9I3kBVjSwU6QZpZY60aDXBnEu6S2nTyCvEcd6067w0EGZ0gzYb5x6d96
+ZmH1JdrKHivZskWqlZRYkgRtdX/1aNUUoP+UPpbU9LFO6Oj+uiwscPWC1x377zx4v91XzQJeiT1
M4ITbdd9VBL3UW+zrWdgYQMSKcpG3WLHDG775vOeu8F/rsdmnETrWLdKgJ5NPjSXFf4w91BZrlYg
TGFpgW0fWJWtM/+f+cS+JtET/FzDes45ZND0bcRxJf9xRlDjgtdJKycJnwo1+Bs5cdB/RrH5XNGS
Lx2cKuvQPA3/LrN026P5ydE1utrDBGy1uvvz8d5Od+l+UFO5rAA8OGP9NsloxZYshX3gxKL3zyqx
52/v3EousbbJ9otQQBzR+IF2xc6iTPVlx2xhbbNHhoAoCMWRTVwZzoQTns4K3EVgD8shgApcDpp5
iRXdzUMCgm8KJzdXP6skXfdJj64nWusnAF7nJgZ2y/oqF8NGOwFBEBxe/7QNCM8g/CISE37sUi4q
tszkG1tplFw9LSjn3SL1B3+RyFs2GfiPxynjY7h7PcSVHIQ0XPXA9WtY0NumOB7/HAv/W4rT85zU
VVMxhTGjwu9jUsGewauK0NLv3kkc6I8L40ate+I6winnYAehj285tA3rQuZdYVtgdIq34xRTt2zE
JqLq9kYNKZCXtmCj6EFjtSo7MaWoroLqTAZXgt4VlKib3WjNT77G3RlWxav6vYxJVC3qF4bGG3cg
AKlAtqaxgiK4CAvYlWZrdVOMUunX7496DS6wKn0i1MLxrU4UhiZypEKJQrWAcb7GfqIyOsmOSBAZ
xah4AFeklTNJ5+gXVu4tGa2mTqza+Zxv6qza8Jr4YmQ++8F9+aPr5K2BN4rWrye0BSAb6PpjP8sM
CRaryqWYUISE2VssryAJu2n/WMISmTqEJut63Xpp2rz1cfCNPxkH6OcFUtXMh1YAES2QY+YJ+nDb
J6O6HnMKGv6fNz0vfHtQ+G/aDEdluJ+VectM2HfV63eAsRh2Tcpz+jfXLE8Y0JWxQGt2Lu0odm8D
JaSovUKHyUvGr8pj2aqlZhIPjYtPfKk1m5cLX7yJVzupciglyz31UGMEUSDKTmfA0cjbGejjsw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2725EF74D4844A0"
last-modified: Thu, 12 Nov 2026 00:46:44 GMT
content-md5: i9IIfZ8BwXr0Jhhwkp8zNA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f6126b6-4d96-472c-bb87-85e7151b221c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-2fcc1ba3-110d-bf54-4bc1-37fb9d4958da/test-blob-2272fba8-7baa-8e6a-3c58-8fb966817f9a

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
x-ms-range: bytes=0-4194303
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:44 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:44 GMT
content-length: 1024
content-type: application/octet-stream
content-range: bytes 0-1023/1024
etag: "0x2725EF74D4844A0"
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f524aa42-6b42-412d-a53d-fe74657b16a1
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:44 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: i9IIfZ8BwXr0Jhhwkp8zNA==
```
### Response body recorded for playback (206: application/octet-stream base64 below):

```
0STFRcPGA82FKlgBLjJ4upnAsFaZkT1ZcrPAKoej2bvenR+32GKL3Bf/quK4U5EZSXxi3ZkBQUDm
a9IPBtlF4VGdI5ETweI2NdQ/meZboB8ip+ALQfwi3Fve0GyQe9Y+ucmRGzD/BYiZK6fEwqhai8qy
7F74OqBUe0Y1NfB2prn9AN8dyoXvIqJYcRVUXRqzg0Sh3Y53RX4oPKDpys+XI4Tux8HIPcFFw8q8
oMiK/x0sgrKr1Mkqhbth9I3kBVjSwU6QZpZY60aDXBnEu6S2nTyCvEcd6067w0EGZ0gzYb5x6d96
+ZmH1JdrKHivZskWqlZRYkgRtdX/1aNUUoP+UPpbU9LFO6Oj+uiwscPWC1x377zx4v91XzQJeiT1
M4ITbdd9VBL3UW+zrWdgYQMSKcpG3WLHDG775vOeu8F/rsdmnETrWLdKgJ5NPjSXFf4w91BZrlYg
TGFpgW0fWJWtM/+f+cS+JtET/FzDes45ZND0bcRxJf9xRlDjgtdJKycJnwo1+Bs5cdB/RrH5XNGS
Lx2cKuvQPA3/LrN026P5ydE1utrDBGy1uvvz8d5Od+l+UFO5rAA8OGP9NsloxZYshX3gxKL3zyqx
52/v3EousbbJ9otQQBzR+IF2xc6iTPVlx2xhbbNHhoAoCMWRTVwZzoQTns4K3EVgD8shgApcDpp5
iRXdzUMCgm8KJzdXP6skXfdJj64nWusnAF7nJgZ2y/oqF8NGOwFBEBxe/7QNCM8g/CISE37sUi4q
tszkG1tplFw9LSjn3SL1B3+RyFs2GfiPxynjY7h7PcSVHIQ0XPXA9WtY0NumOB7/HAv/W4rT85zU
VVMxhTGjwu9jUsGewauK0NLv3kkc6I8L40ate+I6winnYAehj285tA3rQuZdYVtgdIq34xRTt2zE
JqLq9kYNKZCXtmCj6EFjtSo7MaWoroLqTAZXgt4VlKib3WjNT77G3RlWxav6vYxJVC3qF4bGG3cg
AKlAtqaxgiK4CAvYlWZrdVOMUunX7496DS6wKn0i1MLxrU4UhiZypEKJQrWAcb7GfqIyOsmOSBAZ
xah4AFeklTNJ5+gXVu4tGa2mTqza+Zxv6qza8Jr4YmQ++8F9+aPr5K2BN4rWrye0BSAb6PpjP8sM
CRaryqWYUISE2VssryAJu2n/WMISmTqEJut63Xpp2rz1cfCNPxkH6OcFUtXMh1YAES2QY+YJ+nDb
J6O6HnMKGv6fNz0vfHtQ+G/aDEdluJ+VectM2HfV63eAsRh2Tcpz+jfXLE8Y0JWxQGt2Lu0odm8D
JaSovUKHyUvGr8pj2aqlZhIPjYtPfKk1m5cLX7yJVzupciglyz31UGMEUSDKTmfA0cjbGejjsw==
```

## Interaction 3: GET /devstoreaccount1/test-container-2fcc1ba3-110d-bf54-4bc1-37fb9d4958da/test-blob-2272fba8-7baa-8e6a-3c58-8fb966817f9a

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_4
x-ms-range: bytes=0-4194303
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:44 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:44 GMT
content-length: 1024
content-type: application/octet-stream
content-range: bytes 0-1023/1024
etag: "0x2725EF74D4844A0"
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a69214b5-711b-4988-91e8-73574e6343c0
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:44 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: i9IIfZ8BwXr0Jhhwkp8zNA==
```
### Response body recorded for playback (206: application/octet-stream base64 below):

```
0STFRcPGA82FKlgBLjJ4upnAsFaZkT1ZcrPAKoej2bvenR+32GKL3Bf/quK4U5EZSXxi3ZkBQUDm
a9IPBtlF4VGdI5ETweI2NdQ/meZboB8ip+ALQfwi3Fve0GyQe9Y+ucmRGzD/BYiZK6fEwqhai8qy
7F74OqBUe0Y1NfB2prn9AN8dyoXvIqJYcRVUXRqzg0Sh3Y53RX4oPKDpys+XI4Tux8HIPcFFw8q8
oMiK/x0sgrKr1Mkqhbth9I3kBVjSwU6QZpZY60aDXBnEu6S2nTyCvEcd6067w0EGZ0gzYb5x6d96
+ZmH1JdrKHivZskWqlZRYkgRtdX/1aNUUoP+UPpbU9LFO6Oj+uiwscPWC1x377zx4v91XzQJeiT1
M4ITbdd9VBL3UW+zrWdgYQMSKcpG3WLHDG775vOeu8F/rsdmnETrWLdKgJ5NPjSXFf4w91BZrlYg
TGFpgW0fWJWtM/+f+cS+JtET/FzDes45ZND0bcRxJf9xRlDjgtdJKycJnwo1+Bs5cdB/RrH5XNGS
Lx2cKuvQPA3/LrN026P5ydE1utrDBGy1uvvz8d5Od+l+UFO5rAA8OGP9NsloxZYshX3gxKL3zyqx
52/v3EousbbJ9otQQBzR+IF2xc6iTPVlx2xhbbNHhoAoCMWRTVwZzoQTns4K3EVgD8shgApcDpp5
iRXdzUMCgm8KJzdXP6skXfdJj64nWusnAF7nJgZ2y/oqF8NGOwFBEBxe/7QNCM8g/CISE37sUi4q
tszkG1tplFw9LSjn3SL1B3+RyFs2GfiPxynjY7h7PcSVHIQ0XPXA9WtY0NumOB7/HAv/W4rT85zU
VVMxhTGjwu9jUsGewauK0NLv3kkc6I8L40ate+I6winnYAehj285tA3rQuZdYVtgdIq34xRTt2zE
JqLq9kYNKZCXtmCj6EFjtSo7MaWoroLqTAZXgt4VlKib3WjNT77G3RlWxav6vYxJVC3qF4bGG3cg
AKlAtqaxgiK4CAvYlWZrdVOMUunX7496DS6wKn0i1MLxrU4UhiZypEKJQrWAcb7GfqIyOsmOSBAZ
xah4AFeklTNJ5+gXVu4tGa2mTqza+Zxv6qza8Jr4YmQ++8F9+aPr5K2BN4rWrye0BSAb6PpjP8sM
CRaryqWYUISE2VssryAJu2n/WMISmTqEJut63Xpp2rz1cfCNPxkH6OcFUtXMh1YAES2QY+YJ+nDb
J6O6HnMKGv6fNz0vfHtQ+G/aDEdluJ+VectM2HfV63eAsRh2Tcpz+jfXLE8Y0JWxQGt2Lu0odm8D
JaSovUKHyUvGr8pj2aqlZhIPjYtPfKk1m5cLX7yJVzupciglyz31UGMEUSDKTmfA0cjbGejjsw==
```

## Interaction 4: GET /devstoreaccount1/test-container-2fcc1ba3-110d-bf54-4bc1-37fb9d4958da/test-blob-2272fba8-7baa-8e6a-3c58-8fb966817f9a

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_5
x-ms-range: bytes=0-4194303
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:44 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:44 GMT
content-length: 1024
content-type: application/octet-stream
content-range: bytes 0-1023/1024
etag: "0x2725EF74D4844A0"
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a330b303-e1e0-4b1f-b71c-022ea7595fae
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:44 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: i9IIfZ8BwXr0Jhhwkp8zNA==
```
### Response body recorded for playback (206: application/octet-stream base64 below):

```
0STFRcPGA82FKlgBLjJ4upnAsFaZkT1ZcrPAKoej2bvenR+32GKL3Bf/quK4U5EZSXxi3ZkBQUDm
a9IPBtlF4VGdI5ETweI2NdQ/meZboB8ip+ALQfwi3Fve0GyQe9Y+ucmRGzD/BYiZK6fEwqhai8qy
7F74OqBUe0Y1NfB2prn9AN8dyoXvIqJYcRVUXRqzg0Sh3Y53RX4oPKDpys+XI4Tux8HIPcFFw8q8
oMiK/x0sgrKr1Mkqhbth9I3kBVjSwU6QZpZY60aDXBnEu6S2nTyCvEcd6067w0EGZ0gzYb5x6d96
+ZmH1JdrKHivZskWqlZRYkgRtdX/1aNUUoP+UPpbU9LFO6Oj+uiwscPWC1x377zx4v91XzQJeiT1
M4ITbdd9VBL3UW+zrWdgYQMSKcpG3WLHDG775vOeu8F/rsdmnETrWLdKgJ5NPjSXFf4w91BZrlYg
TGFpgW0fWJWtM/+f+cS+JtET/FzDes45ZND0bcRxJf9xRlDjgtdJKycJnwo1+Bs5cdB/RrH5XNGS
Lx2cKuvQPA3/LrN026P5ydE1utrDBGy1uvvz8d5Od+l+UFO5rAA8OGP9NsloxZYshX3gxKL3zyqx
52/v3EousbbJ9otQQBzR+IF2xc6iTPVlx2xhbbNHhoAoCMWRTVwZzoQTns4K3EVgD8shgApcDpp5
iRXdzUMCgm8KJzdXP6skXfdJj64nWusnAF7nJgZ2y/oqF8NGOwFBEBxe/7QNCM8g/CISE37sUi4q
tszkG1tplFw9LSjn3SL1B3+RyFs2GfiPxynjY7h7PcSVHIQ0XPXA9WtY0NumOB7/HAv/W4rT85zU
VVMxhTGjwu9jUsGewauK0NLv3kkc6I8L40ate+I6winnYAehj285tA3rQuZdYVtgdIq34xRTt2zE
JqLq9kYNKZCXtmCj6EFjtSo7MaWoroLqTAZXgt4VlKib3WjNT77G3RlWxav6vYxJVC3qF4bGG3cg
AKlAtqaxgiK4CAvYlWZrdVOMUunX7496DS6wKn0i1MLxrU4UhiZypEKJQrWAcb7GfqIyOsmOSBAZ
xah4AFeklTNJ5+gXVu4tGa2mTqza+Zxv6qza8Jr4YmQ++8F9+aPr5K2BN4rWrye0BSAb6PpjP8sM
CRaryqWYUISE2VssryAJu2n/WMISmTqEJut63Xpp2rz1cfCNPxkH6OcFUtXMh1YAES2QY+YJ+nDb
J6O6HnMKGv6fNz0vfHtQ+G/aDEdluJ+VectM2HfV63eAsRh2Tcpz+jfXLE8Y0JWxQGt2Lu0odm8D
JaSovUKHyUvGr8pj2aqlZhIPjYtPfKk1m5cLX7yJVzupciglyz31UGMEUSDKTmfA0cjbGejjsw==
```

## Interaction 5: DELETE /devstoreaccount1/test-container-2fcc1ba3-110d-bf54-4bc1-37fb9d4958da?restype=container

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
x-ms-request-id: 4278a237-ac15-4cbb-b51a-8cae698a3ebe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

