## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5e236a80-ed15-1a0f-951b-4d932ded25fa?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_DefaultsToApacheArrow
now: 2026-11-12T00:43:54.5867345+00:00

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
etag: "0x22EF4276BF91F40"
last-modified: Thu, 12 Nov 2026 00:43:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2bfd5581-5f12-4e7c-8051-89a84fd854ce
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5e236a80-ed15-1a0f-951b-4d932ded25fa/foo

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
eXx6+xbvOevBLzCg4i3r9H35jrQgi9UoA1FtFzwHkxA6Aok79FvukDE4nOa8bjdnL1gWNF9w2e6m
UffEgiGvupsgZd+kr/8iCv6D6O7va5QaBefj8F+xySmblaJjKQ4PiOJLnAlXw4BY9Clg7fD/t+Zi
qnw6y8k7b5u2CRpcvuHvdGALo8+LwkFmivw2UNw4m928AH+R1bwZDyxtobpm/DVIcXmQ9BMW1+g6
00HMBR+/fm08oL5iXZ6j8pSiHSGHAI7G7t5jp6fKpSiWVwJ7TAkNriJMKlt35RPa7QF/dLrGs9Ky
BhdAW9bGcfqVywacJ6aKlG7+OtUyTwjKibmlSzFu0KMvyEbyzVNMhrhg4RoNPcZb9N9LyHn8f7YP
ddIcISbJJvpibV5gmMcbsbQd0W3tvUvzSlZSIwgqMkmP4liAMGWSl7sfqtBn+1sXLxbE361JIbeG
KNbPdgPyODoV0LVvmoFPijqyzRN7i077OvPyZVKbRsGg+QeOwiG4LXKVUiqlqJWUdVRzl1OkC52H
1DwPANLoeor0zqF6wcgZ+qCh5TkkVZFeXvD9J69t/O5qBu7kqC2frdigsdrzGbSMWp2zAyZjY36q
saHi6lLahtKzELrZNFFyAThhg6S3akQ7cMwSufjHBqJwOvaLvMKFxSoHQAn5siZLQQHtAt/Z8kdd
p3mFyM3Z6woXaflb50R12756ryk7Qb2mx3j22QPDl0evLRVJ//xdLlX/4Uks71m9eCchXkMdImW7
3wFU4xEGVNGyq7kuLNzBHYHTO190etceOWHcojgDkQuwjSD7CEpE+I14eUSgjkxLX0DBSeYFR2Uq
NamwKrKYrhmtfp67xRQ2j0PS+wCTfqsVkUL4QkgkqkW70dOhlM7a38sq8g+tj5kri7mjMktkl7f+
mplwoGzRidNZAPRBlft0+Bw0aIubaAKozLaOgXf6Vjoco/k1aT5fWWk7VI6l6va+LjovLy4rYjKW
x9S1QgdbXqq6JPIBP47d1Q8hXxNzA+HA0FI9yyYL8EDGnqFqqRZh4PXj68UEvO6rUVoeCgIeIsTy
9XK1HpODrjSxO6Hsciz5v38ekBgcvBNjkXnM7OY+p3vdeLOjrMFhXzyRUoFNvt4tJUqCAJKs1jle
UYwZt8FOcpMmD/p4VRO+vDDbimmSFtKbnsebu6foMKF6RFs0SKh7Q9/tJ6/jtNA3xENi0EvPzDu6
fhn6srfrPd5Z/RC4iXSIYEeJpO8juOn3ZPZkhV9Vq3gfesmPgJAoAunQira/fzvO2nADRidMl8Yv
A03Bhrh+A1KXmA6q+OC3YaIFUi0zN+W7lqrvUmVR0+MDX31CZ3sxUYZjJ+csI+GQTOSERkSY/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x219734A9AB93060"
last-modified: Thu, 12 Nov 2026 00:43:54 GMT
content-md5: KTGb2kSW/5C9q/LGi6oGcQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fc211b25-f2fc-45ad-8926-941eafd16b5f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5e236a80-ed15-1a0f-951b-4d932ded25fa/bar

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
eXx6+xbvOevBLzCg4i3r9H35jrQgi9UoA1FtFzwHkxA6Aok79FvukDE4nOa8bjdnL1gWNF9w2e6m
UffEgiGvupsgZd+kr/8iCv6D6O7va5QaBefj8F+xySmblaJjKQ4PiOJLnAlXw4BY9Clg7fD/t+Zi
qnw6y8k7b5u2CRpcvuHvdGALo8+LwkFmivw2UNw4m928AH+R1bwZDyxtobpm/DVIcXmQ9BMW1+g6
00HMBR+/fm08oL5iXZ6j8pSiHSGHAI7G7t5jp6fKpSiWVwJ7TAkNriJMKlt35RPa7QF/dLrGs9Ky
BhdAW9bGcfqVywacJ6aKlG7+OtUyTwjKibmlSzFu0KMvyEbyzVNMhrhg4RoNPcZb9N9LyHn8f7YP
ddIcISbJJvpibV5gmMcbsbQd0W3tvUvzSlZSIwgqMkmP4liAMGWSl7sfqtBn+1sXLxbE361JIbeG
KNbPdgPyODoV0LVvmoFPijqyzRN7i077OvPyZVKbRsGg+QeOwiG4LXKVUiqlqJWUdVRzl1OkC52H
1DwPANLoeor0zqF6wcgZ+qCh5TkkVZFeXvD9J69t/O5qBu7kqC2frdigsdrzGbSMWp2zAyZjY36q
saHi6lLahtKzELrZNFFyAThhg6S3akQ7cMwSufjHBqJwOvaLvMKFxSoHQAn5siZLQQHtAt/Z8kdd
p3mFyM3Z6woXaflb50R12756ryk7Qb2mx3j22QPDl0evLRVJ//xdLlX/4Uks71m9eCchXkMdImW7
3wFU4xEGVNGyq7kuLNzBHYHTO190etceOWHcojgDkQuwjSD7CEpE+I14eUSgjkxLX0DBSeYFR2Uq
NamwKrKYrhmtfp67xRQ2j0PS+wCTfqsVkUL4QkgkqkW70dOhlM7a38sq8g+tj5kri7mjMktkl7f+
mplwoGzRidNZAPRBlft0+Bw0aIubaAKozLaOgXf6Vjoco/k1aT5fWWk7VI6l6va+LjovLy4rYjKW
x9S1QgdbXqq6JPIBP47d1Q8hXxNzA+HA0FI9yyYL8EDGnqFqqRZh4PXj68UEvO6rUVoeCgIeIsTy
9XK1HpODrjSxO6Hsciz5v38ekBgcvBNjkXnM7OY+p3vdeLOjrMFhXzyRUoFNvt4tJUqCAJKs1jle
UYwZt8FOcpMmD/p4VRO+vDDbimmSFtKbnsebu6foMKF6RFs0SKh7Q9/tJ6/jtNA3xENi0EvPzDu6
fhn6srfrPd5Z/RC4iXSIYEeJpO8juOn3ZPZkhV9Vq3gfesmPgJAoAunQira/fzvO2nADRidMl8Yv
A03Bhrh+A1KXmA6q+OC3YaIFUi0zN+W7lqrvUmVR0+MDX31CZ3sxUYZjJ+csI+GQTOSERkSY/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EC7E29ADBE5F70"
last-modified: Thu, 12 Nov 2026 00:43:54 GMT
content-md5: KTGb2kSW/5C9q/LGi6oGcQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3b174f84-af29-4335-9fbc-649d0b0740ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-5e236a80-ed15-1a0f-951b-4d932ded25fa/baz

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
eXx6+xbvOevBLzCg4i3r9H35jrQgi9UoA1FtFzwHkxA6Aok79FvukDE4nOa8bjdnL1gWNF9w2e6m
UffEgiGvupsgZd+kr/8iCv6D6O7va5QaBefj8F+xySmblaJjKQ4PiOJLnAlXw4BY9Clg7fD/t+Zi
qnw6y8k7b5u2CRpcvuHvdGALo8+LwkFmivw2UNw4m928AH+R1bwZDyxtobpm/DVIcXmQ9BMW1+g6
00HMBR+/fm08oL5iXZ6j8pSiHSGHAI7G7t5jp6fKpSiWVwJ7TAkNriJMKlt35RPa7QF/dLrGs9Ky
BhdAW9bGcfqVywacJ6aKlG7+OtUyTwjKibmlSzFu0KMvyEbyzVNMhrhg4RoNPcZb9N9LyHn8f7YP
ddIcISbJJvpibV5gmMcbsbQd0W3tvUvzSlZSIwgqMkmP4liAMGWSl7sfqtBn+1sXLxbE361JIbeG
KNbPdgPyODoV0LVvmoFPijqyzRN7i077OvPyZVKbRsGg+QeOwiG4LXKVUiqlqJWUdVRzl1OkC52H
1DwPANLoeor0zqF6wcgZ+qCh5TkkVZFeXvD9J69t/O5qBu7kqC2frdigsdrzGbSMWp2zAyZjY36q
saHi6lLahtKzELrZNFFyAThhg6S3akQ7cMwSufjHBqJwOvaLvMKFxSoHQAn5siZLQQHtAt/Z8kdd
p3mFyM3Z6woXaflb50R12756ryk7Qb2mx3j22QPDl0evLRVJ//xdLlX/4Uks71m9eCchXkMdImW7
3wFU4xEGVNGyq7kuLNzBHYHTO190etceOWHcojgDkQuwjSD7CEpE+I14eUSgjkxLX0DBSeYFR2Uq
NamwKrKYrhmtfp67xRQ2j0PS+wCTfqsVkUL4QkgkqkW70dOhlM7a38sq8g+tj5kri7mjMktkl7f+
mplwoGzRidNZAPRBlft0+Bw0aIubaAKozLaOgXf6Vjoco/k1aT5fWWk7VI6l6va+LjovLy4rYjKW
x9S1QgdbXqq6JPIBP47d1Q8hXxNzA+HA0FI9yyYL8EDGnqFqqRZh4PXj68UEvO6rUVoeCgIeIsTy
9XK1HpODrjSxO6Hsciz5v38ekBgcvBNjkXnM7OY+p3vdeLOjrMFhXzyRUoFNvt4tJUqCAJKs1jle
UYwZt8FOcpMmD/p4VRO+vDDbimmSFtKbnsebu6foMKF6RFs0SKh7Q9/tJ6/jtNA3xENi0EvPzDu6
fhn6srfrPd5Z/RC4iXSIYEeJpO8juOn3ZPZkhV9Vq3gfesmPgJAoAunQira/fzvO2nADRidMl8Yv
A03Bhrh+A1KXmA6q+OC3YaIFUi0zN+W7lqrvUmVR0+MDX31CZ3sxUYZjJ+csI+GQTOSERkSY/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23EC1F99B0076C0"
last-modified: Thu, 12 Nov 2026 00:43:54 GMT
content-md5: KTGb2kSW/5C9q/LGi6oGcQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fec5beba-9107-41c7-9647-63bb2480ac82
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-5e236a80-ed15-1a0f-951b-4d932ded25fa/foo/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
eXx6+xbvOevBLzCg4i3r9H35jrQgi9UoA1FtFzwHkxA6Aok79FvukDE4nOa8bjdnL1gWNF9w2e6m
UffEgiGvupsgZd+kr/8iCv6D6O7va5QaBefj8F+xySmblaJjKQ4PiOJLnAlXw4BY9Clg7fD/t+Zi
qnw6y8k7b5u2CRpcvuHvdGALo8+LwkFmivw2UNw4m928AH+R1bwZDyxtobpm/DVIcXmQ9BMW1+g6
00HMBR+/fm08oL5iXZ6j8pSiHSGHAI7G7t5jp6fKpSiWVwJ7TAkNriJMKlt35RPa7QF/dLrGs9Ky
BhdAW9bGcfqVywacJ6aKlG7+OtUyTwjKibmlSzFu0KMvyEbyzVNMhrhg4RoNPcZb9N9LyHn8f7YP
ddIcISbJJvpibV5gmMcbsbQd0W3tvUvzSlZSIwgqMkmP4liAMGWSl7sfqtBn+1sXLxbE361JIbeG
KNbPdgPyODoV0LVvmoFPijqyzRN7i077OvPyZVKbRsGg+QeOwiG4LXKVUiqlqJWUdVRzl1OkC52H
1DwPANLoeor0zqF6wcgZ+qCh5TkkVZFeXvD9J69t/O5qBu7kqC2frdigsdrzGbSMWp2zAyZjY36q
saHi6lLahtKzELrZNFFyAThhg6S3akQ7cMwSufjHBqJwOvaLvMKFxSoHQAn5siZLQQHtAt/Z8kdd
p3mFyM3Z6woXaflb50R12756ryk7Qb2mx3j22QPDl0evLRVJ//xdLlX/4Uks71m9eCchXkMdImW7
3wFU4xEGVNGyq7kuLNzBHYHTO190etceOWHcojgDkQuwjSD7CEpE+I14eUSgjkxLX0DBSeYFR2Uq
NamwKrKYrhmtfp67xRQ2j0PS+wCTfqsVkUL4QkgkqkW70dOhlM7a38sq8g+tj5kri7mjMktkl7f+
mplwoGzRidNZAPRBlft0+Bw0aIubaAKozLaOgXf6Vjoco/k1aT5fWWk7VI6l6va+LjovLy4rYjKW
x9S1QgdbXqq6JPIBP47d1Q8hXxNzA+HA0FI9yyYL8EDGnqFqqRZh4PXj68UEvO6rUVoeCgIeIsTy
9XK1HpODrjSxO6Hsciz5v38ekBgcvBNjkXnM7OY+p3vdeLOjrMFhXzyRUoFNvt4tJUqCAJKs1jle
UYwZt8FOcpMmD/p4VRO+vDDbimmSFtKbnsebu6foMKF6RFs0SKh7Q9/tJ6/jtNA3xENi0EvPzDu6
fhn6srfrPd5Z/RC4iXSIYEeJpO8juOn3ZPZkhV9Vq3gfesmPgJAoAunQira/fzvO2nADRidMl8Yv
A03Bhrh+A1KXmA6q+OC3YaIFUi0zN+W7lqrvUmVR0+MDX31CZ3sxUYZjJ+csI+GQTOSERkSY/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2604F6375B20A20"
last-modified: Thu, 12 Nov 2026 00:43:54 GMT
content-md5: KTGb2kSW/5C9q/LGi6oGcQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6eaccba6-de01-4f76-b9d9-bd96254ce231
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-5e236a80-ed15-1a0f-951b-4d932ded25fa/foo/bar

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
eXx6+xbvOevBLzCg4i3r9H35jrQgi9UoA1FtFzwHkxA6Aok79FvukDE4nOa8bjdnL1gWNF9w2e6m
UffEgiGvupsgZd+kr/8iCv6D6O7va5QaBefj8F+xySmblaJjKQ4PiOJLnAlXw4BY9Clg7fD/t+Zi
qnw6y8k7b5u2CRpcvuHvdGALo8+LwkFmivw2UNw4m928AH+R1bwZDyxtobpm/DVIcXmQ9BMW1+g6
00HMBR+/fm08oL5iXZ6j8pSiHSGHAI7G7t5jp6fKpSiWVwJ7TAkNriJMKlt35RPa7QF/dLrGs9Ky
BhdAW9bGcfqVywacJ6aKlG7+OtUyTwjKibmlSzFu0KMvyEbyzVNMhrhg4RoNPcZb9N9LyHn8f7YP
ddIcISbJJvpibV5gmMcbsbQd0W3tvUvzSlZSIwgqMkmP4liAMGWSl7sfqtBn+1sXLxbE361JIbeG
KNbPdgPyODoV0LVvmoFPijqyzRN7i077OvPyZVKbRsGg+QeOwiG4LXKVUiqlqJWUdVRzl1OkC52H
1DwPANLoeor0zqF6wcgZ+qCh5TkkVZFeXvD9J69t/O5qBu7kqC2frdigsdrzGbSMWp2zAyZjY36q
saHi6lLahtKzELrZNFFyAThhg6S3akQ7cMwSufjHBqJwOvaLvMKFxSoHQAn5siZLQQHtAt/Z8kdd
p3mFyM3Z6woXaflb50R12756ryk7Qb2mx3j22QPDl0evLRVJ//xdLlX/4Uks71m9eCchXkMdImW7
3wFU4xEGVNGyq7kuLNzBHYHTO190etceOWHcojgDkQuwjSD7CEpE+I14eUSgjkxLX0DBSeYFR2Uq
NamwKrKYrhmtfp67xRQ2j0PS+wCTfqsVkUL4QkgkqkW70dOhlM7a38sq8g+tj5kri7mjMktkl7f+
mplwoGzRidNZAPRBlft0+Bw0aIubaAKozLaOgXf6Vjoco/k1aT5fWWk7VI6l6va+LjovLy4rYjKW
x9S1QgdbXqq6JPIBP47d1Q8hXxNzA+HA0FI9yyYL8EDGnqFqqRZh4PXj68UEvO6rUVoeCgIeIsTy
9XK1HpODrjSxO6Hsciz5v38ekBgcvBNjkXnM7OY+p3vdeLOjrMFhXzyRUoFNvt4tJUqCAJKs1jle
UYwZt8FOcpMmD/p4VRO+vDDbimmSFtKbnsebu6foMKF6RFs0SKh7Q9/tJ6/jtNA3xENi0EvPzDu6
fhn6srfrPd5Z/RC4iXSIYEeJpO8juOn3ZPZkhV9Vq3gfesmPgJAoAunQira/fzvO2nADRidMl8Yv
A03Bhrh+A1KXmA6q+OC3YaIFUi0zN+W7lqrvUmVR0+MDX31CZ3sxUYZjJ+csI+GQTOSERkSY/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2609590EE09BA20"
last-modified: Thu, 12 Nov 2026 00:43:54 GMT
content-md5: KTGb2kSW/5C9q/LGi6oGcQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1c60371e-f2fd-44f5-8e1d-f7b6a023dbd3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-5e236a80-ed15-1a0f-951b-4d932ded25fa/baz/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
eXx6+xbvOevBLzCg4i3r9H35jrQgi9UoA1FtFzwHkxA6Aok79FvukDE4nOa8bjdnL1gWNF9w2e6m
UffEgiGvupsgZd+kr/8iCv6D6O7va5QaBefj8F+xySmblaJjKQ4PiOJLnAlXw4BY9Clg7fD/t+Zi
qnw6y8k7b5u2CRpcvuHvdGALo8+LwkFmivw2UNw4m928AH+R1bwZDyxtobpm/DVIcXmQ9BMW1+g6
00HMBR+/fm08oL5iXZ6j8pSiHSGHAI7G7t5jp6fKpSiWVwJ7TAkNriJMKlt35RPa7QF/dLrGs9Ky
BhdAW9bGcfqVywacJ6aKlG7+OtUyTwjKibmlSzFu0KMvyEbyzVNMhrhg4RoNPcZb9N9LyHn8f7YP
ddIcISbJJvpibV5gmMcbsbQd0W3tvUvzSlZSIwgqMkmP4liAMGWSl7sfqtBn+1sXLxbE361JIbeG
KNbPdgPyODoV0LVvmoFPijqyzRN7i077OvPyZVKbRsGg+QeOwiG4LXKVUiqlqJWUdVRzl1OkC52H
1DwPANLoeor0zqF6wcgZ+qCh5TkkVZFeXvD9J69t/O5qBu7kqC2frdigsdrzGbSMWp2zAyZjY36q
saHi6lLahtKzELrZNFFyAThhg6S3akQ7cMwSufjHBqJwOvaLvMKFxSoHQAn5siZLQQHtAt/Z8kdd
p3mFyM3Z6woXaflb50R12756ryk7Qb2mx3j22QPDl0evLRVJ//xdLlX/4Uks71m9eCchXkMdImW7
3wFU4xEGVNGyq7kuLNzBHYHTO190etceOWHcojgDkQuwjSD7CEpE+I14eUSgjkxLX0DBSeYFR2Uq
NamwKrKYrhmtfp67xRQ2j0PS+wCTfqsVkUL4QkgkqkW70dOhlM7a38sq8g+tj5kri7mjMktkl7f+
mplwoGzRidNZAPRBlft0+Bw0aIubaAKozLaOgXf6Vjoco/k1aT5fWWk7VI6l6va+LjovLy4rYjKW
x9S1QgdbXqq6JPIBP47d1Q8hXxNzA+HA0FI9yyYL8EDGnqFqqRZh4PXj68UEvO6rUVoeCgIeIsTy
9XK1HpODrjSxO6Hsciz5v38ekBgcvBNjkXnM7OY+p3vdeLOjrMFhXzyRUoFNvt4tJUqCAJKs1jle
UYwZt8FOcpMmD/p4VRO+vDDbimmSFtKbnsebu6foMKF6RFs0SKh7Q9/tJ6/jtNA3xENi0EvPzDu6
fhn6srfrPd5Z/RC4iXSIYEeJpO8juOn3ZPZkhV9Vq3gfesmPgJAoAunQira/fzvO2nADRidMl8Yv
A03Bhrh+A1KXmA6q+OC3YaIFUi0zN+W7lqrvUmVR0+MDX31CZ3sxUYZjJ+csI+GQTOSERkSY/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C08AE568AB8E40"
last-modified: Thu, 12 Nov 2026 00:43:54 GMT
content-md5: KTGb2kSW/5C9q/LGi6oGcQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d87a6d7a-66b9-467d-8acc-7b8b0346e371
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-5e236a80-ed15-1a0f-951b-4d932ded25fa/baz/foo/bar

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
eXx6+xbvOevBLzCg4i3r9H35jrQgi9UoA1FtFzwHkxA6Aok79FvukDE4nOa8bjdnL1gWNF9w2e6m
UffEgiGvupsgZd+kr/8iCv6D6O7va5QaBefj8F+xySmblaJjKQ4PiOJLnAlXw4BY9Clg7fD/t+Zi
qnw6y8k7b5u2CRpcvuHvdGALo8+LwkFmivw2UNw4m928AH+R1bwZDyxtobpm/DVIcXmQ9BMW1+g6
00HMBR+/fm08oL5iXZ6j8pSiHSGHAI7G7t5jp6fKpSiWVwJ7TAkNriJMKlt35RPa7QF/dLrGs9Ky
BhdAW9bGcfqVywacJ6aKlG7+OtUyTwjKibmlSzFu0KMvyEbyzVNMhrhg4RoNPcZb9N9LyHn8f7YP
ddIcISbJJvpibV5gmMcbsbQd0W3tvUvzSlZSIwgqMkmP4liAMGWSl7sfqtBn+1sXLxbE361JIbeG
KNbPdgPyODoV0LVvmoFPijqyzRN7i077OvPyZVKbRsGg+QeOwiG4LXKVUiqlqJWUdVRzl1OkC52H
1DwPANLoeor0zqF6wcgZ+qCh5TkkVZFeXvD9J69t/O5qBu7kqC2frdigsdrzGbSMWp2zAyZjY36q
saHi6lLahtKzELrZNFFyAThhg6S3akQ7cMwSufjHBqJwOvaLvMKFxSoHQAn5siZLQQHtAt/Z8kdd
p3mFyM3Z6woXaflb50R12756ryk7Qb2mx3j22QPDl0evLRVJ//xdLlX/4Uks71m9eCchXkMdImW7
3wFU4xEGVNGyq7kuLNzBHYHTO190etceOWHcojgDkQuwjSD7CEpE+I14eUSgjkxLX0DBSeYFR2Uq
NamwKrKYrhmtfp67xRQ2j0PS+wCTfqsVkUL4QkgkqkW70dOhlM7a38sq8g+tj5kri7mjMktkl7f+
mplwoGzRidNZAPRBlft0+Bw0aIubaAKozLaOgXf6Vjoco/k1aT5fWWk7VI6l6va+LjovLy4rYjKW
x9S1QgdbXqq6JPIBP47d1Q8hXxNzA+HA0FI9yyYL8EDGnqFqqRZh4PXj68UEvO6rUVoeCgIeIsTy
9XK1HpODrjSxO6Hsciz5v38ekBgcvBNjkXnM7OY+p3vdeLOjrMFhXzyRUoFNvt4tJUqCAJKs1jle
UYwZt8FOcpMmD/p4VRO+vDDbimmSFtKbnsebu6foMKF6RFs0SKh7Q9/tJ6/jtNA3xENi0EvPzDu6
fhn6srfrPd5Z/RC4iXSIYEeJpO8juOn3ZPZkhV9Vq3gfesmPgJAoAunQira/fzvO2nADRidMl8Yv
A03Bhrh+A1KXmA6q+OC3YaIFUi0zN+W7lqrvUmVR0+MDX31CZ3sxUYZjJ+csI+GQTOSERkSY/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22DA737E6613F40"
last-modified: Thu, 12 Nov 2026 00:43:54 GMT
content-md5: KTGb2kSW/5C9q/LGi6oGcQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dc20c50e-dc95-410f-853c-7292698cdff2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-5e236a80-ed15-1a0f-951b-4d932ded25fa/baz/bar/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
eXx6+xbvOevBLzCg4i3r9H35jrQgi9UoA1FtFzwHkxA6Aok79FvukDE4nOa8bjdnL1gWNF9w2e6m
UffEgiGvupsgZd+kr/8iCv6D6O7va5QaBefj8F+xySmblaJjKQ4PiOJLnAlXw4BY9Clg7fD/t+Zi
qnw6y8k7b5u2CRpcvuHvdGALo8+LwkFmivw2UNw4m928AH+R1bwZDyxtobpm/DVIcXmQ9BMW1+g6
00HMBR+/fm08oL5iXZ6j8pSiHSGHAI7G7t5jp6fKpSiWVwJ7TAkNriJMKlt35RPa7QF/dLrGs9Ky
BhdAW9bGcfqVywacJ6aKlG7+OtUyTwjKibmlSzFu0KMvyEbyzVNMhrhg4RoNPcZb9N9LyHn8f7YP
ddIcISbJJvpibV5gmMcbsbQd0W3tvUvzSlZSIwgqMkmP4liAMGWSl7sfqtBn+1sXLxbE361JIbeG
KNbPdgPyODoV0LVvmoFPijqyzRN7i077OvPyZVKbRsGg+QeOwiG4LXKVUiqlqJWUdVRzl1OkC52H
1DwPANLoeor0zqF6wcgZ+qCh5TkkVZFeXvD9J69t/O5qBu7kqC2frdigsdrzGbSMWp2zAyZjY36q
saHi6lLahtKzELrZNFFyAThhg6S3akQ7cMwSufjHBqJwOvaLvMKFxSoHQAn5siZLQQHtAt/Z8kdd
p3mFyM3Z6woXaflb50R12756ryk7Qb2mx3j22QPDl0evLRVJ//xdLlX/4Uks71m9eCchXkMdImW7
3wFU4xEGVNGyq7kuLNzBHYHTO190etceOWHcojgDkQuwjSD7CEpE+I14eUSgjkxLX0DBSeYFR2Uq
NamwKrKYrhmtfp67xRQ2j0PS+wCTfqsVkUL4QkgkqkW70dOhlM7a38sq8g+tj5kri7mjMktkl7f+
mplwoGzRidNZAPRBlft0+Bw0aIubaAKozLaOgXf6Vjoco/k1aT5fWWk7VI6l6va+LjovLy4rYjKW
x9S1QgdbXqq6JPIBP47d1Q8hXxNzA+HA0FI9yyYL8EDGnqFqqRZh4PXj68UEvO6rUVoeCgIeIsTy
9XK1HpODrjSxO6Hsciz5v38ekBgcvBNjkXnM7OY+p3vdeLOjrMFhXzyRUoFNvt4tJUqCAJKs1jle
UYwZt8FOcpMmD/p4VRO+vDDbimmSFtKbnsebu6foMKF6RFs0SKh7Q9/tJ6/jtNA3xENi0EvPzDu6
fhn6srfrPd5Z/RC4iXSIYEeJpO8juOn3ZPZkhV9Vq3gfesmPgJAoAunQira/fzvO2nADRidMl8Yv
A03Bhrh+A1KXmA6q+OC3YaIFUi0zN+W7lqrvUmVR0+MDX31CZ3sxUYZjJ+csI+GQTOSERkSY/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26FB4C257C85940"
last-modified: Thu, 12 Nov 2026 00:43:54 GMT
content-md5: KTGb2kSW/5C9q/LGi6oGcQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 31de9094-bd46-429a-8b97-dcdca71fa29c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-5e236a80-ed15-1a0f-951b-4d932ded25fa/foo/foo?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F38CD410087630"
last-modified: Thu, 12 Nov 2026 00:43:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e2654f84-2c37-464c-85cb-fb60ebe43b36
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-5e236a80-ed15-1a0f-951b-4d932ded25fa?restype=container&comp=list&delimiter=%2F

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
Authorization: SharedKey AUTHORIZATION_11
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: da9ef997-9d2f-4e0c-bfa3-92a405a6ba95
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:54 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-5e236a80-ed15-1a0f-951b-4d932ded25fa"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>baz/</Name></BlobPrefix><BlobPrefix><Name>foo/</Name></BlobPrefix><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:54 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:54 GMT</Last-Modified><Etag>0x1EC7E29ADBE5F70</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>KTGb2kSW/5C9q/LGi6oGcQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:54 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:54 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:54 GMT</Last-Modified><Etag>0x23EC1F99B0076C0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>KTGb2kSW/5C9q/LGi6oGcQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:54 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:54 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:54 GMT</Last-Modified><Etag>0x219734A9AB93060</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>KTGb2kSW/5C9q/LGi6oGcQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:54 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-5e236a80-ed15-1a0f-951b-4d932ded25fa?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
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
x-ms-request-id: fa9d511e-7ee3-4966-9aae-62dbbca3e494
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

