## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-187fbd5a-a1e8-ef36-04e3-593045b0b4fd?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_StartFrom
now: 2026-11-12T00:44:53.9425751+00:00

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
etag: "0x271310776FB9AA0"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1f1fa0a1-df65-4d4d-b841-8a2474087be8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-187fbd5a-a1e8-ef36-04e3-593045b0b4fd/foo

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
tCn1TNVNiKDyjNJb0+qTcoV3MhKCsmiv7//mysFnrH1cQyyBXhl1DDTeJlvO2hsZUOarzX2hewHA
Rl3WZr3eit9V/o++ERRrASXdo4wN4BTjzXravN//u8gqwBe8n6V3AJt7eduLWz7SP8tXxNd0s2VJ
8plCA84AVUPHk1H8r2J/ZqPxkWc4WHE7CH0Up/bxtgyxcq0MNPzNeyOYxMft1pBp2F4zgiH+EZon
B/tR7K1N1d1ESjy0czGnJBZDoJOqTjLsqs+YvjPrs2ET5C0AfI52Su7qqYtUtGQsi10LunEGfbjJ
ZEHdtBepWZbboY4DpqiHzVWkwKWmmPZqbDLV3/nwDGd1NxdNmJbXQE/0eBPVKOS1g+wbYrwSIsxK
ckjk03md65Qnjm+QOjW+zH9VsR/jlUNNIFsM1KqqYhRLAiVO8m3WV41+rpp1JEm2XJU9vHGsZ90E
l7MdkBbpfSxaRTcQcNoSf1mSZOep2PsRVncVbaWin5pHSVu5uMZ3lDBtGt8Spuy7Kj0XGgL2W763
DDqf1BCGuKacySd+WMeTGs+2O70c/6+LWkJoi4SYUO2dAqyL18Ag52I5dd3EPNF1hP8yQCABmgyL
E3rNHSwhBHg54VYbB0MPllRb44nSxh1w8gaFZRDNm2efAMNFUsk1F3Fkilt7Wny8I6nMpbeCuE1d
XCsmm59obEXuewZ/ykSKJcsYbjvB9ZiJyUJmAfawHUh26PWeD3zR+x4WjN92PFhlQYDrakkSm2eS
nNJdAWtPPl6+COFO7BZPRnIdq2m5E4zpAL91xLP+ZE2OC3OqdPqzxk2AtzN3F1VqnCPX9O/92YhF
dAGr2Xmrv6SUwOCipNJ4auQbOFxYculqCyiPJm9dkDHrZAD5B+3U1feP4lZ0x/dRX4oL4qEr7QEX
QM1RG5g1Ny+vt0DRf2L3R2JkyY+S9kQwPsfkUq2Pv3f+4ccfgrleWqonxA+3f+AoE5s+xyNyhEqJ
IN3RUOWBIPjI052b2MSpBW7lazI0eb7nvD4SUPdTjF18lWHcjQnFpaQX76xCjDvWlcK0jBkXVace
6ZOmb88AdEZAHkJizHdlIMaNHIkSpC8DO7o1nv9EZEC5vqN2HjbVF3plAm75dMlKT2xTijgdC0Rj
ozMUytVH/LkCqQ7U7gGPuAUPrKLBCsfx60+S8NoHm7JeEnoCwEylHgW09sq6dmFqw9EzDl+ioplr
It+GtAvf+w1cddyHjPe5ao2dDRP8NnXuKC0I041SvHDglp1sHmr61fu9XgCE4zbZeqTRBJWGb+xq
mIzd1ieACbhsp/ZaTEsjojcYPtd0aUT3LlnogbfaWSexAoXeHP/TPVVHFztAfy1YrmFdbjAU9Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27B36979C8AF8E0"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
content-md5: ayLgy+svCGP47YYYwV8BYw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf3d312b-1271-4c9e-b2b4-ce7ba653b0cb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-187fbd5a-a1e8-ef36-04e3-593045b0b4fd/bar

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
tCn1TNVNiKDyjNJb0+qTcoV3MhKCsmiv7//mysFnrH1cQyyBXhl1DDTeJlvO2hsZUOarzX2hewHA
Rl3WZr3eit9V/o++ERRrASXdo4wN4BTjzXravN//u8gqwBe8n6V3AJt7eduLWz7SP8tXxNd0s2VJ
8plCA84AVUPHk1H8r2J/ZqPxkWc4WHE7CH0Up/bxtgyxcq0MNPzNeyOYxMft1pBp2F4zgiH+EZon
B/tR7K1N1d1ESjy0czGnJBZDoJOqTjLsqs+YvjPrs2ET5C0AfI52Su7qqYtUtGQsi10LunEGfbjJ
ZEHdtBepWZbboY4DpqiHzVWkwKWmmPZqbDLV3/nwDGd1NxdNmJbXQE/0eBPVKOS1g+wbYrwSIsxK
ckjk03md65Qnjm+QOjW+zH9VsR/jlUNNIFsM1KqqYhRLAiVO8m3WV41+rpp1JEm2XJU9vHGsZ90E
l7MdkBbpfSxaRTcQcNoSf1mSZOep2PsRVncVbaWin5pHSVu5uMZ3lDBtGt8Spuy7Kj0XGgL2W763
DDqf1BCGuKacySd+WMeTGs+2O70c/6+LWkJoi4SYUO2dAqyL18Ag52I5dd3EPNF1hP8yQCABmgyL
E3rNHSwhBHg54VYbB0MPllRb44nSxh1w8gaFZRDNm2efAMNFUsk1F3Fkilt7Wny8I6nMpbeCuE1d
XCsmm59obEXuewZ/ykSKJcsYbjvB9ZiJyUJmAfawHUh26PWeD3zR+x4WjN92PFhlQYDrakkSm2eS
nNJdAWtPPl6+COFO7BZPRnIdq2m5E4zpAL91xLP+ZE2OC3OqdPqzxk2AtzN3F1VqnCPX9O/92YhF
dAGr2Xmrv6SUwOCipNJ4auQbOFxYculqCyiPJm9dkDHrZAD5B+3U1feP4lZ0x/dRX4oL4qEr7QEX
QM1RG5g1Ny+vt0DRf2L3R2JkyY+S9kQwPsfkUq2Pv3f+4ccfgrleWqonxA+3f+AoE5s+xyNyhEqJ
IN3RUOWBIPjI052b2MSpBW7lazI0eb7nvD4SUPdTjF18lWHcjQnFpaQX76xCjDvWlcK0jBkXVace
6ZOmb88AdEZAHkJizHdlIMaNHIkSpC8DO7o1nv9EZEC5vqN2HjbVF3plAm75dMlKT2xTijgdC0Rj
ozMUytVH/LkCqQ7U7gGPuAUPrKLBCsfx60+S8NoHm7JeEnoCwEylHgW09sq6dmFqw9EzDl+ioplr
It+GtAvf+w1cddyHjPe5ao2dDRP8NnXuKC0I041SvHDglp1sHmr61fu9XgCE4zbZeqTRBJWGb+xq
mIzd1ieACbhsp/ZaTEsjojcYPtd0aUT3LlnogbfaWSexAoXeHP/TPVVHFztAfy1YrmFdbjAU9Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22DE1F9F6556600"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
content-md5: ayLgy+svCGP47YYYwV8BYw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fc3c363e-95d7-42a8-9078-a9b874abb36a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-187fbd5a-a1e8-ef36-04e3-593045b0b4fd/baz

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
tCn1TNVNiKDyjNJb0+qTcoV3MhKCsmiv7//mysFnrH1cQyyBXhl1DDTeJlvO2hsZUOarzX2hewHA
Rl3WZr3eit9V/o++ERRrASXdo4wN4BTjzXravN//u8gqwBe8n6V3AJt7eduLWz7SP8tXxNd0s2VJ
8plCA84AVUPHk1H8r2J/ZqPxkWc4WHE7CH0Up/bxtgyxcq0MNPzNeyOYxMft1pBp2F4zgiH+EZon
B/tR7K1N1d1ESjy0czGnJBZDoJOqTjLsqs+YvjPrs2ET5C0AfI52Su7qqYtUtGQsi10LunEGfbjJ
ZEHdtBepWZbboY4DpqiHzVWkwKWmmPZqbDLV3/nwDGd1NxdNmJbXQE/0eBPVKOS1g+wbYrwSIsxK
ckjk03md65Qnjm+QOjW+zH9VsR/jlUNNIFsM1KqqYhRLAiVO8m3WV41+rpp1JEm2XJU9vHGsZ90E
l7MdkBbpfSxaRTcQcNoSf1mSZOep2PsRVncVbaWin5pHSVu5uMZ3lDBtGt8Spuy7Kj0XGgL2W763
DDqf1BCGuKacySd+WMeTGs+2O70c/6+LWkJoi4SYUO2dAqyL18Ag52I5dd3EPNF1hP8yQCABmgyL
E3rNHSwhBHg54VYbB0MPllRb44nSxh1w8gaFZRDNm2efAMNFUsk1F3Fkilt7Wny8I6nMpbeCuE1d
XCsmm59obEXuewZ/ykSKJcsYbjvB9ZiJyUJmAfawHUh26PWeD3zR+x4WjN92PFhlQYDrakkSm2eS
nNJdAWtPPl6+COFO7BZPRnIdq2m5E4zpAL91xLP+ZE2OC3OqdPqzxk2AtzN3F1VqnCPX9O/92YhF
dAGr2Xmrv6SUwOCipNJ4auQbOFxYculqCyiPJm9dkDHrZAD5B+3U1feP4lZ0x/dRX4oL4qEr7QEX
QM1RG5g1Ny+vt0DRf2L3R2JkyY+S9kQwPsfkUq2Pv3f+4ccfgrleWqonxA+3f+AoE5s+xyNyhEqJ
IN3RUOWBIPjI052b2MSpBW7lazI0eb7nvD4SUPdTjF18lWHcjQnFpaQX76xCjDvWlcK0jBkXVace
6ZOmb88AdEZAHkJizHdlIMaNHIkSpC8DO7o1nv9EZEC5vqN2HjbVF3plAm75dMlKT2xTijgdC0Rj
ozMUytVH/LkCqQ7U7gGPuAUPrKLBCsfx60+S8NoHm7JeEnoCwEylHgW09sq6dmFqw9EzDl+ioplr
It+GtAvf+w1cddyHjPe5ao2dDRP8NnXuKC0I041SvHDglp1sHmr61fu9XgCE4zbZeqTRBJWGb+xq
mIzd1ieACbhsp/ZaTEsjojcYPtd0aUT3LlnogbfaWSexAoXeHP/TPVVHFztAfy1YrmFdbjAU9Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D0C954E812AAB0"
last-modified: Thu, 12 Nov 2026 00:44:54 GMT
content-md5: ayLgy+svCGP47YYYwV8BYw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d7570fc-40ca-4969-900f-ba343a0ebaf2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-187fbd5a-a1e8-ef36-04e3-593045b0b4fd/foo/foo

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
tCn1TNVNiKDyjNJb0+qTcoV3MhKCsmiv7//mysFnrH1cQyyBXhl1DDTeJlvO2hsZUOarzX2hewHA
Rl3WZr3eit9V/o++ERRrASXdo4wN4BTjzXravN//u8gqwBe8n6V3AJt7eduLWz7SP8tXxNd0s2VJ
8plCA84AVUPHk1H8r2J/ZqPxkWc4WHE7CH0Up/bxtgyxcq0MNPzNeyOYxMft1pBp2F4zgiH+EZon
B/tR7K1N1d1ESjy0czGnJBZDoJOqTjLsqs+YvjPrs2ET5C0AfI52Su7qqYtUtGQsi10LunEGfbjJ
ZEHdtBepWZbboY4DpqiHzVWkwKWmmPZqbDLV3/nwDGd1NxdNmJbXQE/0eBPVKOS1g+wbYrwSIsxK
ckjk03md65Qnjm+QOjW+zH9VsR/jlUNNIFsM1KqqYhRLAiVO8m3WV41+rpp1JEm2XJU9vHGsZ90E
l7MdkBbpfSxaRTcQcNoSf1mSZOep2PsRVncVbaWin5pHSVu5uMZ3lDBtGt8Spuy7Kj0XGgL2W763
DDqf1BCGuKacySd+WMeTGs+2O70c/6+LWkJoi4SYUO2dAqyL18Ag52I5dd3EPNF1hP8yQCABmgyL
E3rNHSwhBHg54VYbB0MPllRb44nSxh1w8gaFZRDNm2efAMNFUsk1F3Fkilt7Wny8I6nMpbeCuE1d
XCsmm59obEXuewZ/ykSKJcsYbjvB9ZiJyUJmAfawHUh26PWeD3zR+x4WjN92PFhlQYDrakkSm2eS
nNJdAWtPPl6+COFO7BZPRnIdq2m5E4zpAL91xLP+ZE2OC3OqdPqzxk2AtzN3F1VqnCPX9O/92YhF
dAGr2Xmrv6SUwOCipNJ4auQbOFxYculqCyiPJm9dkDHrZAD5B+3U1feP4lZ0x/dRX4oL4qEr7QEX
QM1RG5g1Ny+vt0DRf2L3R2JkyY+S9kQwPsfkUq2Pv3f+4ccfgrleWqonxA+3f+AoE5s+xyNyhEqJ
IN3RUOWBIPjI052b2MSpBW7lazI0eb7nvD4SUPdTjF18lWHcjQnFpaQX76xCjDvWlcK0jBkXVace
6ZOmb88AdEZAHkJizHdlIMaNHIkSpC8DO7o1nv9EZEC5vqN2HjbVF3plAm75dMlKT2xTijgdC0Rj
ozMUytVH/LkCqQ7U7gGPuAUPrKLBCsfx60+S8NoHm7JeEnoCwEylHgW09sq6dmFqw9EzDl+ioplr
It+GtAvf+w1cddyHjPe5ao2dDRP8NnXuKC0I041SvHDglp1sHmr61fu9XgCE4zbZeqTRBJWGb+xq
mIzd1ieACbhsp/ZaTEsjojcYPtd0aUT3LlnogbfaWSexAoXeHP/TPVVHFztAfy1YrmFdbjAU9Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E4B8B692B2A3D0"
last-modified: Thu, 12 Nov 2026 00:44:54 GMT
content-md5: ayLgy+svCGP47YYYwV8BYw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0d903199-0baa-435b-bbf0-c22dced70ef7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-187fbd5a-a1e8-ef36-04e3-593045b0b4fd/foo/bar

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
tCn1TNVNiKDyjNJb0+qTcoV3MhKCsmiv7//mysFnrH1cQyyBXhl1DDTeJlvO2hsZUOarzX2hewHA
Rl3WZr3eit9V/o++ERRrASXdo4wN4BTjzXravN//u8gqwBe8n6V3AJt7eduLWz7SP8tXxNd0s2VJ
8plCA84AVUPHk1H8r2J/ZqPxkWc4WHE7CH0Up/bxtgyxcq0MNPzNeyOYxMft1pBp2F4zgiH+EZon
B/tR7K1N1d1ESjy0czGnJBZDoJOqTjLsqs+YvjPrs2ET5C0AfI52Su7qqYtUtGQsi10LunEGfbjJ
ZEHdtBepWZbboY4DpqiHzVWkwKWmmPZqbDLV3/nwDGd1NxdNmJbXQE/0eBPVKOS1g+wbYrwSIsxK
ckjk03md65Qnjm+QOjW+zH9VsR/jlUNNIFsM1KqqYhRLAiVO8m3WV41+rpp1JEm2XJU9vHGsZ90E
l7MdkBbpfSxaRTcQcNoSf1mSZOep2PsRVncVbaWin5pHSVu5uMZ3lDBtGt8Spuy7Kj0XGgL2W763
DDqf1BCGuKacySd+WMeTGs+2O70c/6+LWkJoi4SYUO2dAqyL18Ag52I5dd3EPNF1hP8yQCABmgyL
E3rNHSwhBHg54VYbB0MPllRb44nSxh1w8gaFZRDNm2efAMNFUsk1F3Fkilt7Wny8I6nMpbeCuE1d
XCsmm59obEXuewZ/ykSKJcsYbjvB9ZiJyUJmAfawHUh26PWeD3zR+x4WjN92PFhlQYDrakkSm2eS
nNJdAWtPPl6+COFO7BZPRnIdq2m5E4zpAL91xLP+ZE2OC3OqdPqzxk2AtzN3F1VqnCPX9O/92YhF
dAGr2Xmrv6SUwOCipNJ4auQbOFxYculqCyiPJm9dkDHrZAD5B+3U1feP4lZ0x/dRX4oL4qEr7QEX
QM1RG5g1Ny+vt0DRf2L3R2JkyY+S9kQwPsfkUq2Pv3f+4ccfgrleWqonxA+3f+AoE5s+xyNyhEqJ
IN3RUOWBIPjI052b2MSpBW7lazI0eb7nvD4SUPdTjF18lWHcjQnFpaQX76xCjDvWlcK0jBkXVace
6ZOmb88AdEZAHkJizHdlIMaNHIkSpC8DO7o1nv9EZEC5vqN2HjbVF3plAm75dMlKT2xTijgdC0Rj
ozMUytVH/LkCqQ7U7gGPuAUPrKLBCsfx60+S8NoHm7JeEnoCwEylHgW09sq6dmFqw9EzDl+ioplr
It+GtAvf+w1cddyHjPe5ao2dDRP8NnXuKC0I041SvHDglp1sHmr61fu9XgCE4zbZeqTRBJWGb+xq
mIzd1ieACbhsp/ZaTEsjojcYPtd0aUT3LlnogbfaWSexAoXeHP/TPVVHFztAfy1YrmFdbjAU9Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2195E145A11E720"
last-modified: Thu, 12 Nov 2026 00:44:54 GMT
content-md5: ayLgy+svCGP47YYYwV8BYw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3161d275-ea1d-4bb1-bbe3-71810b5c47a9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-187fbd5a-a1e8-ef36-04e3-593045b0b4fd/baz/foo

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
tCn1TNVNiKDyjNJb0+qTcoV3MhKCsmiv7//mysFnrH1cQyyBXhl1DDTeJlvO2hsZUOarzX2hewHA
Rl3WZr3eit9V/o++ERRrASXdo4wN4BTjzXravN//u8gqwBe8n6V3AJt7eduLWz7SP8tXxNd0s2VJ
8plCA84AVUPHk1H8r2J/ZqPxkWc4WHE7CH0Up/bxtgyxcq0MNPzNeyOYxMft1pBp2F4zgiH+EZon
B/tR7K1N1d1ESjy0czGnJBZDoJOqTjLsqs+YvjPrs2ET5C0AfI52Su7qqYtUtGQsi10LunEGfbjJ
ZEHdtBepWZbboY4DpqiHzVWkwKWmmPZqbDLV3/nwDGd1NxdNmJbXQE/0eBPVKOS1g+wbYrwSIsxK
ckjk03md65Qnjm+QOjW+zH9VsR/jlUNNIFsM1KqqYhRLAiVO8m3WV41+rpp1JEm2XJU9vHGsZ90E
l7MdkBbpfSxaRTcQcNoSf1mSZOep2PsRVncVbaWin5pHSVu5uMZ3lDBtGt8Spuy7Kj0XGgL2W763
DDqf1BCGuKacySd+WMeTGs+2O70c/6+LWkJoi4SYUO2dAqyL18Ag52I5dd3EPNF1hP8yQCABmgyL
E3rNHSwhBHg54VYbB0MPllRb44nSxh1w8gaFZRDNm2efAMNFUsk1F3Fkilt7Wny8I6nMpbeCuE1d
XCsmm59obEXuewZ/ykSKJcsYbjvB9ZiJyUJmAfawHUh26PWeD3zR+x4WjN92PFhlQYDrakkSm2eS
nNJdAWtPPl6+COFO7BZPRnIdq2m5E4zpAL91xLP+ZE2OC3OqdPqzxk2AtzN3F1VqnCPX9O/92YhF
dAGr2Xmrv6SUwOCipNJ4auQbOFxYculqCyiPJm9dkDHrZAD5B+3U1feP4lZ0x/dRX4oL4qEr7QEX
QM1RG5g1Ny+vt0DRf2L3R2JkyY+S9kQwPsfkUq2Pv3f+4ccfgrleWqonxA+3f+AoE5s+xyNyhEqJ
IN3RUOWBIPjI052b2MSpBW7lazI0eb7nvD4SUPdTjF18lWHcjQnFpaQX76xCjDvWlcK0jBkXVace
6ZOmb88AdEZAHkJizHdlIMaNHIkSpC8DO7o1nv9EZEC5vqN2HjbVF3plAm75dMlKT2xTijgdC0Rj
ozMUytVH/LkCqQ7U7gGPuAUPrKLBCsfx60+S8NoHm7JeEnoCwEylHgW09sq6dmFqw9EzDl+ioplr
It+GtAvf+w1cddyHjPe5ao2dDRP8NnXuKC0I041SvHDglp1sHmr61fu9XgCE4zbZeqTRBJWGb+xq
mIzd1ieACbhsp/ZaTEsjojcYPtd0aUT3LlnogbfaWSexAoXeHP/TPVVHFztAfy1YrmFdbjAU9Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25039C34B004820"
last-modified: Thu, 12 Nov 2026 00:44:54 GMT
content-md5: ayLgy+svCGP47YYYwV8BYw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 25bfa3e0-9ef6-4636-9279-64b3ac2315ef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-187fbd5a-a1e8-ef36-04e3-593045b0b4fd/baz/foo/bar

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
tCn1TNVNiKDyjNJb0+qTcoV3MhKCsmiv7//mysFnrH1cQyyBXhl1DDTeJlvO2hsZUOarzX2hewHA
Rl3WZr3eit9V/o++ERRrASXdo4wN4BTjzXravN//u8gqwBe8n6V3AJt7eduLWz7SP8tXxNd0s2VJ
8plCA84AVUPHk1H8r2J/ZqPxkWc4WHE7CH0Up/bxtgyxcq0MNPzNeyOYxMft1pBp2F4zgiH+EZon
B/tR7K1N1d1ESjy0czGnJBZDoJOqTjLsqs+YvjPrs2ET5C0AfI52Su7qqYtUtGQsi10LunEGfbjJ
ZEHdtBepWZbboY4DpqiHzVWkwKWmmPZqbDLV3/nwDGd1NxdNmJbXQE/0eBPVKOS1g+wbYrwSIsxK
ckjk03md65Qnjm+QOjW+zH9VsR/jlUNNIFsM1KqqYhRLAiVO8m3WV41+rpp1JEm2XJU9vHGsZ90E
l7MdkBbpfSxaRTcQcNoSf1mSZOep2PsRVncVbaWin5pHSVu5uMZ3lDBtGt8Spuy7Kj0XGgL2W763
DDqf1BCGuKacySd+WMeTGs+2O70c/6+LWkJoi4SYUO2dAqyL18Ag52I5dd3EPNF1hP8yQCABmgyL
E3rNHSwhBHg54VYbB0MPllRb44nSxh1w8gaFZRDNm2efAMNFUsk1F3Fkilt7Wny8I6nMpbeCuE1d
XCsmm59obEXuewZ/ykSKJcsYbjvB9ZiJyUJmAfawHUh26PWeD3zR+x4WjN92PFhlQYDrakkSm2eS
nNJdAWtPPl6+COFO7BZPRnIdq2m5E4zpAL91xLP+ZE2OC3OqdPqzxk2AtzN3F1VqnCPX9O/92YhF
dAGr2Xmrv6SUwOCipNJ4auQbOFxYculqCyiPJm9dkDHrZAD5B+3U1feP4lZ0x/dRX4oL4qEr7QEX
QM1RG5g1Ny+vt0DRf2L3R2JkyY+S9kQwPsfkUq2Pv3f+4ccfgrleWqonxA+3f+AoE5s+xyNyhEqJ
IN3RUOWBIPjI052b2MSpBW7lazI0eb7nvD4SUPdTjF18lWHcjQnFpaQX76xCjDvWlcK0jBkXVace
6ZOmb88AdEZAHkJizHdlIMaNHIkSpC8DO7o1nv9EZEC5vqN2HjbVF3plAm75dMlKT2xTijgdC0Rj
ozMUytVH/LkCqQ7U7gGPuAUPrKLBCsfx60+S8NoHm7JeEnoCwEylHgW09sq6dmFqw9EzDl+ioplr
It+GtAvf+w1cddyHjPe5ao2dDRP8NnXuKC0I041SvHDglp1sHmr61fu9XgCE4zbZeqTRBJWGb+xq
mIzd1ieACbhsp/ZaTEsjojcYPtd0aUT3LlnogbfaWSexAoXeHP/TPVVHFztAfy1YrmFdbjAU9Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27CE3D171A1A2A0"
last-modified: Thu, 12 Nov 2026 00:44:54 GMT
content-md5: ayLgy+svCGP47YYYwV8BYw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d6a21827-6502-47b4-a24a-c6ce7807faed
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-187fbd5a-a1e8-ef36-04e3-593045b0b4fd/baz/bar/foo

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
tCn1TNVNiKDyjNJb0+qTcoV3MhKCsmiv7//mysFnrH1cQyyBXhl1DDTeJlvO2hsZUOarzX2hewHA
Rl3WZr3eit9V/o++ERRrASXdo4wN4BTjzXravN//u8gqwBe8n6V3AJt7eduLWz7SP8tXxNd0s2VJ
8plCA84AVUPHk1H8r2J/ZqPxkWc4WHE7CH0Up/bxtgyxcq0MNPzNeyOYxMft1pBp2F4zgiH+EZon
B/tR7K1N1d1ESjy0czGnJBZDoJOqTjLsqs+YvjPrs2ET5C0AfI52Su7qqYtUtGQsi10LunEGfbjJ
ZEHdtBepWZbboY4DpqiHzVWkwKWmmPZqbDLV3/nwDGd1NxdNmJbXQE/0eBPVKOS1g+wbYrwSIsxK
ckjk03md65Qnjm+QOjW+zH9VsR/jlUNNIFsM1KqqYhRLAiVO8m3WV41+rpp1JEm2XJU9vHGsZ90E
l7MdkBbpfSxaRTcQcNoSf1mSZOep2PsRVncVbaWin5pHSVu5uMZ3lDBtGt8Spuy7Kj0XGgL2W763
DDqf1BCGuKacySd+WMeTGs+2O70c/6+LWkJoi4SYUO2dAqyL18Ag52I5dd3EPNF1hP8yQCABmgyL
E3rNHSwhBHg54VYbB0MPllRb44nSxh1w8gaFZRDNm2efAMNFUsk1F3Fkilt7Wny8I6nMpbeCuE1d
XCsmm59obEXuewZ/ykSKJcsYbjvB9ZiJyUJmAfawHUh26PWeD3zR+x4WjN92PFhlQYDrakkSm2eS
nNJdAWtPPl6+COFO7BZPRnIdq2m5E4zpAL91xLP+ZE2OC3OqdPqzxk2AtzN3F1VqnCPX9O/92YhF
dAGr2Xmrv6SUwOCipNJ4auQbOFxYculqCyiPJm9dkDHrZAD5B+3U1feP4lZ0x/dRX4oL4qEr7QEX
QM1RG5g1Ny+vt0DRf2L3R2JkyY+S9kQwPsfkUq2Pv3f+4ccfgrleWqonxA+3f+AoE5s+xyNyhEqJ
IN3RUOWBIPjI052b2MSpBW7lazI0eb7nvD4SUPdTjF18lWHcjQnFpaQX76xCjDvWlcK0jBkXVace
6ZOmb88AdEZAHkJizHdlIMaNHIkSpC8DO7o1nv9EZEC5vqN2HjbVF3plAm75dMlKT2xTijgdC0Rj
ozMUytVH/LkCqQ7U7gGPuAUPrKLBCsfx60+S8NoHm7JeEnoCwEylHgW09sq6dmFqw9EzDl+ioplr
It+GtAvf+w1cddyHjPe5ao2dDRP8NnXuKC0I041SvHDglp1sHmr61fu9XgCE4zbZeqTRBJWGb+xq
mIzd1ieACbhsp/ZaTEsjojcYPtd0aUT3LlnogbfaWSexAoXeHP/TPVVHFztAfy1YrmFdbjAU9Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22C0BF319ED0560"
last-modified: Thu, 12 Nov 2026 00:44:54 GMT
content-md5: ayLgy+svCGP47YYYwV8BYw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a87ea0e7-ee3a-49a9-a074-5c15588c67f2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-187fbd5a-a1e8-ef36-04e3-593045b0b4fd/foo/foo?comp=metadata

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
etag: "0x235409CA43D09E0"
last-modified: Thu, 12 Nov 2026 00:44:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3abce0b7-5483-44f6-b4b9-b503d4a5d61d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-187fbd5a-a1e8-ef36-04e3-593045b0b4fd?restype=container&comp=list&startFrom=foo

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: c6e6af05-c56a-4b17-a071-f73f6dd26cc5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:54 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-187fbd5a-a1e8-ef36-04e3-593045b0b4fd"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:53 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:53 GMT</Last-Modified><Etag>0x27B36979C8AF8E0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>ayLgy+svCGP47YYYwV8BYw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:53 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:54 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:54 GMT</Last-Modified><Etag>0x2195E145A11E720</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>ayLgy+svCGP47YYYwV8BYw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:54 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:54 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:54 GMT</Last-Modified><Etag>0x235409CA43D09E0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>ayLgy+svCGP47YYYwV8BYw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:54 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-187fbd5a-a1e8-ef36-04e3-593045b0b4fd?restype=container

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
x-ms-request-id: 323abecc-c9d7-4a75-a2c4-6436c45645b0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

