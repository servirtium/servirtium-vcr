## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5adfa1c0-04ea-34ad-13ed-57ac896f0120?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_Prefix
now: 2026-11-12T00:44:57.1988205+00:00

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
etag: "0x279776A0AFA7B20"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7a7fa93a-2779-4b53-9160-7ca7c5dc6271
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5adfa1c0-04ea-34ad-13ed-57ac896f0120/foo

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
vtcPsileDLCA3oOEcdu0VoF3GkDsDCkF1uF29n1blTndW+e/+/5IYZQv2QyBKcI3OQErElXBM7Ku
CdtI6BYzJUhJphX09VqCLrirvTIdhK0ePr17MIPkHCc0EPEjAHl++7TEOIKtQ0OmqeOcFXWAkYUu
KapYt/TEZInuv+RoXy4/LcJ9WUsqcfp51YafRwaxs39s9NbOJkO//9P4voRfPUq1XeizAzc5BLiv
3uJtJB2DPAtk/GpXcAZ+vVl4MbJ2Gpg86uoe/rBHM/AeH0dhUdq2dYJ4+kHfXezhNEXewNIGOMRK
MTkzZD1bHMh6OVG/HWt+wrwv/h9WXY39PMpqaXIeF+aCFyCgghBEHd54ZSOaIhbZX/4W1jql89Os
NShz8LJVXCFrPAZL3j+r6+BA3vhqYhqzkQp0CEGs3SNM9Ezo0S0rIggBL+UQjoG+aupZZBXbQtMN
v16o4VTgvl7i/unywhmzFbvvaDI0owKJtp1WUnkOcbF52xHOg0G0IXGGLZCXy6jRpU9Z69mg2Bxc
Hyu2iWvl1Iw3eOYI5ZJ6OkfBrXZy8ur0ha0qtYXY2QL1cWMW/pcFoVkDX1LByMC837GS3yum6ixB
wQS+ux4HX5/kE3MuZDyvvAwdbpOXM7zsbdbURfrXT4c31DyTRuY6/P+z3bVNjnp04iIeiXyZqo5H
0k1IMxqlDMPr948AHHUm4nKT41UHn95bX2LXuMYLnSqtS3SY8cjkDtDxYZfrdMWt+KYJBsY5QDJv
7dO3zVP94FpkU9EAjvGprtWFFT1Hb+ucKcAfAZdkcwtBKAP0LUB89IA9hyD0rGq0YFfwtCr0J37o
GqST3d7D/9/FvmXutIGVCCG9CujKqH1Wa6E/c7/gTQGFDBKb6RaheYdBLu0ExqvVW6sJNx2VHXIn
PHI9g4sf5XFjaKhv+R4LG5BhiXmPUaT1ahgU1hXk7+6fdKyjZPb7IUl8oF0DZmGM/hyMNJT5l+vN
SBlzCw5cf3m50IRyZ7aZZmgvErBH8gO3h9j4V7tZpd3B1RzdhxY7ICDkSZbdGpdl8s0syoU6hlUV
vIM2Yyi9YCqnsJGavN5R9PKPYqht2m1Bk2TtLdtXh0/GyMuSBL34J+lrNWkFyzbv2tWSqiOtp+IW
9dDEzzJPTylC1PQSvu81lzu/AqQDO8gu/lIFxN0rGSDpfA/sNFe3HOVAw/ZC3BzmXRLn7aU9ErkI
ldHfSYpMFrvTKEHgSGPkCOW+w3jR7CE2H2fKRCt7rGpV5J6G19Nb9Kw7brTaBRWvA+W/f09BNqmv
qCojgdKPWHzXimPEXjASY87Lln1tXBlRGkBGuy0bFK701i6pN3LarBY3A3uy66W0rRuAdaAsQg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24448F4EC473C00"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
content-md5: Ndg8Ct/NGO6r03xD0eXJlw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d36030a-9aa1-4c6b-b817-30b150bfff4a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5adfa1c0-04ea-34ad-13ed-57ac896f0120/bar

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
vtcPsileDLCA3oOEcdu0VoF3GkDsDCkF1uF29n1blTndW+e/+/5IYZQv2QyBKcI3OQErElXBM7Ku
CdtI6BYzJUhJphX09VqCLrirvTIdhK0ePr17MIPkHCc0EPEjAHl++7TEOIKtQ0OmqeOcFXWAkYUu
KapYt/TEZInuv+RoXy4/LcJ9WUsqcfp51YafRwaxs39s9NbOJkO//9P4voRfPUq1XeizAzc5BLiv
3uJtJB2DPAtk/GpXcAZ+vVl4MbJ2Gpg86uoe/rBHM/AeH0dhUdq2dYJ4+kHfXezhNEXewNIGOMRK
MTkzZD1bHMh6OVG/HWt+wrwv/h9WXY39PMpqaXIeF+aCFyCgghBEHd54ZSOaIhbZX/4W1jql89Os
NShz8LJVXCFrPAZL3j+r6+BA3vhqYhqzkQp0CEGs3SNM9Ezo0S0rIggBL+UQjoG+aupZZBXbQtMN
v16o4VTgvl7i/unywhmzFbvvaDI0owKJtp1WUnkOcbF52xHOg0G0IXGGLZCXy6jRpU9Z69mg2Bxc
Hyu2iWvl1Iw3eOYI5ZJ6OkfBrXZy8ur0ha0qtYXY2QL1cWMW/pcFoVkDX1LByMC837GS3yum6ixB
wQS+ux4HX5/kE3MuZDyvvAwdbpOXM7zsbdbURfrXT4c31DyTRuY6/P+z3bVNjnp04iIeiXyZqo5H
0k1IMxqlDMPr948AHHUm4nKT41UHn95bX2LXuMYLnSqtS3SY8cjkDtDxYZfrdMWt+KYJBsY5QDJv
7dO3zVP94FpkU9EAjvGprtWFFT1Hb+ucKcAfAZdkcwtBKAP0LUB89IA9hyD0rGq0YFfwtCr0J37o
GqST3d7D/9/FvmXutIGVCCG9CujKqH1Wa6E/c7/gTQGFDBKb6RaheYdBLu0ExqvVW6sJNx2VHXIn
PHI9g4sf5XFjaKhv+R4LG5BhiXmPUaT1ahgU1hXk7+6fdKyjZPb7IUl8oF0DZmGM/hyMNJT5l+vN
SBlzCw5cf3m50IRyZ7aZZmgvErBH8gO3h9j4V7tZpd3B1RzdhxY7ICDkSZbdGpdl8s0syoU6hlUV
vIM2Yyi9YCqnsJGavN5R9PKPYqht2m1Bk2TtLdtXh0/GyMuSBL34J+lrNWkFyzbv2tWSqiOtp+IW
9dDEzzJPTylC1PQSvu81lzu/AqQDO8gu/lIFxN0rGSDpfA/sNFe3HOVAw/ZC3BzmXRLn7aU9ErkI
ldHfSYpMFrvTKEHgSGPkCOW+w3jR7CE2H2fKRCt7rGpV5J6G19Nb9Kw7brTaBRWvA+W/f09BNqmv
qCojgdKPWHzXimPEXjASY87Lln1tXBlRGkBGuy0bFK701i6pN3LarBY3A3uy66W0rRuAdaAsQg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2300313C51DDD20"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
content-md5: Ndg8Ct/NGO6r03xD0eXJlw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 32ab75ac-e8f7-435f-8492-9ee3a31907bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-5adfa1c0-04ea-34ad-13ed-57ac896f0120/baz

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
vtcPsileDLCA3oOEcdu0VoF3GkDsDCkF1uF29n1blTndW+e/+/5IYZQv2QyBKcI3OQErElXBM7Ku
CdtI6BYzJUhJphX09VqCLrirvTIdhK0ePr17MIPkHCc0EPEjAHl++7TEOIKtQ0OmqeOcFXWAkYUu
KapYt/TEZInuv+RoXy4/LcJ9WUsqcfp51YafRwaxs39s9NbOJkO//9P4voRfPUq1XeizAzc5BLiv
3uJtJB2DPAtk/GpXcAZ+vVl4MbJ2Gpg86uoe/rBHM/AeH0dhUdq2dYJ4+kHfXezhNEXewNIGOMRK
MTkzZD1bHMh6OVG/HWt+wrwv/h9WXY39PMpqaXIeF+aCFyCgghBEHd54ZSOaIhbZX/4W1jql89Os
NShz8LJVXCFrPAZL3j+r6+BA3vhqYhqzkQp0CEGs3SNM9Ezo0S0rIggBL+UQjoG+aupZZBXbQtMN
v16o4VTgvl7i/unywhmzFbvvaDI0owKJtp1WUnkOcbF52xHOg0G0IXGGLZCXy6jRpU9Z69mg2Bxc
Hyu2iWvl1Iw3eOYI5ZJ6OkfBrXZy8ur0ha0qtYXY2QL1cWMW/pcFoVkDX1LByMC837GS3yum6ixB
wQS+ux4HX5/kE3MuZDyvvAwdbpOXM7zsbdbURfrXT4c31DyTRuY6/P+z3bVNjnp04iIeiXyZqo5H
0k1IMxqlDMPr948AHHUm4nKT41UHn95bX2LXuMYLnSqtS3SY8cjkDtDxYZfrdMWt+KYJBsY5QDJv
7dO3zVP94FpkU9EAjvGprtWFFT1Hb+ucKcAfAZdkcwtBKAP0LUB89IA9hyD0rGq0YFfwtCr0J37o
GqST3d7D/9/FvmXutIGVCCG9CujKqH1Wa6E/c7/gTQGFDBKb6RaheYdBLu0ExqvVW6sJNx2VHXIn
PHI9g4sf5XFjaKhv+R4LG5BhiXmPUaT1ahgU1hXk7+6fdKyjZPb7IUl8oF0DZmGM/hyMNJT5l+vN
SBlzCw5cf3m50IRyZ7aZZmgvErBH8gO3h9j4V7tZpd3B1RzdhxY7ICDkSZbdGpdl8s0syoU6hlUV
vIM2Yyi9YCqnsJGavN5R9PKPYqht2m1Bk2TtLdtXh0/GyMuSBL34J+lrNWkFyzbv2tWSqiOtp+IW
9dDEzzJPTylC1PQSvu81lzu/AqQDO8gu/lIFxN0rGSDpfA/sNFe3HOVAw/ZC3BzmXRLn7aU9ErkI
ldHfSYpMFrvTKEHgSGPkCOW+w3jR7CE2H2fKRCt7rGpV5J6G19Nb9Kw7brTaBRWvA+W/f09BNqmv
qCojgdKPWHzXimPEXjASY87Lln1tXBlRGkBGuy0bFK701i6pN3LarBY3A3uy66W0rRuAdaAsQg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FDD892D13AA440"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
content-md5: Ndg8Ct/NGO6r03xD0eXJlw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ea49ea8d-1cc3-4f87-9bae-6e7766e8cbb8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-5adfa1c0-04ea-34ad-13ed-57ac896f0120/foo/foo

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
vtcPsileDLCA3oOEcdu0VoF3GkDsDCkF1uF29n1blTndW+e/+/5IYZQv2QyBKcI3OQErElXBM7Ku
CdtI6BYzJUhJphX09VqCLrirvTIdhK0ePr17MIPkHCc0EPEjAHl++7TEOIKtQ0OmqeOcFXWAkYUu
KapYt/TEZInuv+RoXy4/LcJ9WUsqcfp51YafRwaxs39s9NbOJkO//9P4voRfPUq1XeizAzc5BLiv
3uJtJB2DPAtk/GpXcAZ+vVl4MbJ2Gpg86uoe/rBHM/AeH0dhUdq2dYJ4+kHfXezhNEXewNIGOMRK
MTkzZD1bHMh6OVG/HWt+wrwv/h9WXY39PMpqaXIeF+aCFyCgghBEHd54ZSOaIhbZX/4W1jql89Os
NShz8LJVXCFrPAZL3j+r6+BA3vhqYhqzkQp0CEGs3SNM9Ezo0S0rIggBL+UQjoG+aupZZBXbQtMN
v16o4VTgvl7i/unywhmzFbvvaDI0owKJtp1WUnkOcbF52xHOg0G0IXGGLZCXy6jRpU9Z69mg2Bxc
Hyu2iWvl1Iw3eOYI5ZJ6OkfBrXZy8ur0ha0qtYXY2QL1cWMW/pcFoVkDX1LByMC837GS3yum6ixB
wQS+ux4HX5/kE3MuZDyvvAwdbpOXM7zsbdbURfrXT4c31DyTRuY6/P+z3bVNjnp04iIeiXyZqo5H
0k1IMxqlDMPr948AHHUm4nKT41UHn95bX2LXuMYLnSqtS3SY8cjkDtDxYZfrdMWt+KYJBsY5QDJv
7dO3zVP94FpkU9EAjvGprtWFFT1Hb+ucKcAfAZdkcwtBKAP0LUB89IA9hyD0rGq0YFfwtCr0J37o
GqST3d7D/9/FvmXutIGVCCG9CujKqH1Wa6E/c7/gTQGFDBKb6RaheYdBLu0ExqvVW6sJNx2VHXIn
PHI9g4sf5XFjaKhv+R4LG5BhiXmPUaT1ahgU1hXk7+6fdKyjZPb7IUl8oF0DZmGM/hyMNJT5l+vN
SBlzCw5cf3m50IRyZ7aZZmgvErBH8gO3h9j4V7tZpd3B1RzdhxY7ICDkSZbdGpdl8s0syoU6hlUV
vIM2Yyi9YCqnsJGavN5R9PKPYqht2m1Bk2TtLdtXh0/GyMuSBL34J+lrNWkFyzbv2tWSqiOtp+IW
9dDEzzJPTylC1PQSvu81lzu/AqQDO8gu/lIFxN0rGSDpfA/sNFe3HOVAw/ZC3BzmXRLn7aU9ErkI
ldHfSYpMFrvTKEHgSGPkCOW+w3jR7CE2H2fKRCt7rGpV5J6G19Nb9Kw7brTaBRWvA+W/f09BNqmv
qCojgdKPWHzXimPEXjASY87Lln1tXBlRGkBGuy0bFK701i6pN3LarBY3A3uy66W0rRuAdaAsQg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27C886CA032D140"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
content-md5: Ndg8Ct/NGO6r03xD0eXJlw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b96d5845-b08f-4ac8-b635-468688aadb4e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-5adfa1c0-04ea-34ad-13ed-57ac896f0120/foo/bar

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
vtcPsileDLCA3oOEcdu0VoF3GkDsDCkF1uF29n1blTndW+e/+/5IYZQv2QyBKcI3OQErElXBM7Ku
CdtI6BYzJUhJphX09VqCLrirvTIdhK0ePr17MIPkHCc0EPEjAHl++7TEOIKtQ0OmqeOcFXWAkYUu
KapYt/TEZInuv+RoXy4/LcJ9WUsqcfp51YafRwaxs39s9NbOJkO//9P4voRfPUq1XeizAzc5BLiv
3uJtJB2DPAtk/GpXcAZ+vVl4MbJ2Gpg86uoe/rBHM/AeH0dhUdq2dYJ4+kHfXezhNEXewNIGOMRK
MTkzZD1bHMh6OVG/HWt+wrwv/h9WXY39PMpqaXIeF+aCFyCgghBEHd54ZSOaIhbZX/4W1jql89Os
NShz8LJVXCFrPAZL3j+r6+BA3vhqYhqzkQp0CEGs3SNM9Ezo0S0rIggBL+UQjoG+aupZZBXbQtMN
v16o4VTgvl7i/unywhmzFbvvaDI0owKJtp1WUnkOcbF52xHOg0G0IXGGLZCXy6jRpU9Z69mg2Bxc
Hyu2iWvl1Iw3eOYI5ZJ6OkfBrXZy8ur0ha0qtYXY2QL1cWMW/pcFoVkDX1LByMC837GS3yum6ixB
wQS+ux4HX5/kE3MuZDyvvAwdbpOXM7zsbdbURfrXT4c31DyTRuY6/P+z3bVNjnp04iIeiXyZqo5H
0k1IMxqlDMPr948AHHUm4nKT41UHn95bX2LXuMYLnSqtS3SY8cjkDtDxYZfrdMWt+KYJBsY5QDJv
7dO3zVP94FpkU9EAjvGprtWFFT1Hb+ucKcAfAZdkcwtBKAP0LUB89IA9hyD0rGq0YFfwtCr0J37o
GqST3d7D/9/FvmXutIGVCCG9CujKqH1Wa6E/c7/gTQGFDBKb6RaheYdBLu0ExqvVW6sJNx2VHXIn
PHI9g4sf5XFjaKhv+R4LG5BhiXmPUaT1ahgU1hXk7+6fdKyjZPb7IUl8oF0DZmGM/hyMNJT5l+vN
SBlzCw5cf3m50IRyZ7aZZmgvErBH8gO3h9j4V7tZpd3B1RzdhxY7ICDkSZbdGpdl8s0syoU6hlUV
vIM2Yyi9YCqnsJGavN5R9PKPYqht2m1Bk2TtLdtXh0/GyMuSBL34J+lrNWkFyzbv2tWSqiOtp+IW
9dDEzzJPTylC1PQSvu81lzu/AqQDO8gu/lIFxN0rGSDpfA/sNFe3HOVAw/ZC3BzmXRLn7aU9ErkI
ldHfSYpMFrvTKEHgSGPkCOW+w3jR7CE2H2fKRCt7rGpV5J6G19Nb9Kw7brTaBRWvA+W/f09BNqmv
qCojgdKPWHzXimPEXjASY87Lln1tXBlRGkBGuy0bFK701i6pN3LarBY3A3uy66W0rRuAdaAsQg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C160B2723138A0"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
content-md5: Ndg8Ct/NGO6r03xD0eXJlw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: de42d521-4c7e-4f5e-a598-90840ffc6acb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-5adfa1c0-04ea-34ad-13ed-57ac896f0120/baz/foo

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
vtcPsileDLCA3oOEcdu0VoF3GkDsDCkF1uF29n1blTndW+e/+/5IYZQv2QyBKcI3OQErElXBM7Ku
CdtI6BYzJUhJphX09VqCLrirvTIdhK0ePr17MIPkHCc0EPEjAHl++7TEOIKtQ0OmqeOcFXWAkYUu
KapYt/TEZInuv+RoXy4/LcJ9WUsqcfp51YafRwaxs39s9NbOJkO//9P4voRfPUq1XeizAzc5BLiv
3uJtJB2DPAtk/GpXcAZ+vVl4MbJ2Gpg86uoe/rBHM/AeH0dhUdq2dYJ4+kHfXezhNEXewNIGOMRK
MTkzZD1bHMh6OVG/HWt+wrwv/h9WXY39PMpqaXIeF+aCFyCgghBEHd54ZSOaIhbZX/4W1jql89Os
NShz8LJVXCFrPAZL3j+r6+BA3vhqYhqzkQp0CEGs3SNM9Ezo0S0rIggBL+UQjoG+aupZZBXbQtMN
v16o4VTgvl7i/unywhmzFbvvaDI0owKJtp1WUnkOcbF52xHOg0G0IXGGLZCXy6jRpU9Z69mg2Bxc
Hyu2iWvl1Iw3eOYI5ZJ6OkfBrXZy8ur0ha0qtYXY2QL1cWMW/pcFoVkDX1LByMC837GS3yum6ixB
wQS+ux4HX5/kE3MuZDyvvAwdbpOXM7zsbdbURfrXT4c31DyTRuY6/P+z3bVNjnp04iIeiXyZqo5H
0k1IMxqlDMPr948AHHUm4nKT41UHn95bX2LXuMYLnSqtS3SY8cjkDtDxYZfrdMWt+KYJBsY5QDJv
7dO3zVP94FpkU9EAjvGprtWFFT1Hb+ucKcAfAZdkcwtBKAP0LUB89IA9hyD0rGq0YFfwtCr0J37o
GqST3d7D/9/FvmXutIGVCCG9CujKqH1Wa6E/c7/gTQGFDBKb6RaheYdBLu0ExqvVW6sJNx2VHXIn
PHI9g4sf5XFjaKhv+R4LG5BhiXmPUaT1ahgU1hXk7+6fdKyjZPb7IUl8oF0DZmGM/hyMNJT5l+vN
SBlzCw5cf3m50IRyZ7aZZmgvErBH8gO3h9j4V7tZpd3B1RzdhxY7ICDkSZbdGpdl8s0syoU6hlUV
vIM2Yyi9YCqnsJGavN5R9PKPYqht2m1Bk2TtLdtXh0/GyMuSBL34J+lrNWkFyzbv2tWSqiOtp+IW
9dDEzzJPTylC1PQSvu81lzu/AqQDO8gu/lIFxN0rGSDpfA/sNFe3HOVAw/ZC3BzmXRLn7aU9ErkI
ldHfSYpMFrvTKEHgSGPkCOW+w3jR7CE2H2fKRCt7rGpV5J6G19Nb9Kw7brTaBRWvA+W/f09BNqmv
qCojgdKPWHzXimPEXjASY87Lln1tXBlRGkBGuy0bFK701i6pN3LarBY3A3uy66W0rRuAdaAsQg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2647437E7FE4D80"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
content-md5: Ndg8Ct/NGO6r03xD0eXJlw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 315a4c67-dcb5-45e6-ace2-754a771cc0b9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-5adfa1c0-04ea-34ad-13ed-57ac896f0120/baz/foo/bar

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
vtcPsileDLCA3oOEcdu0VoF3GkDsDCkF1uF29n1blTndW+e/+/5IYZQv2QyBKcI3OQErElXBM7Ku
CdtI6BYzJUhJphX09VqCLrirvTIdhK0ePr17MIPkHCc0EPEjAHl++7TEOIKtQ0OmqeOcFXWAkYUu
KapYt/TEZInuv+RoXy4/LcJ9WUsqcfp51YafRwaxs39s9NbOJkO//9P4voRfPUq1XeizAzc5BLiv
3uJtJB2DPAtk/GpXcAZ+vVl4MbJ2Gpg86uoe/rBHM/AeH0dhUdq2dYJ4+kHfXezhNEXewNIGOMRK
MTkzZD1bHMh6OVG/HWt+wrwv/h9WXY39PMpqaXIeF+aCFyCgghBEHd54ZSOaIhbZX/4W1jql89Os
NShz8LJVXCFrPAZL3j+r6+BA3vhqYhqzkQp0CEGs3SNM9Ezo0S0rIggBL+UQjoG+aupZZBXbQtMN
v16o4VTgvl7i/unywhmzFbvvaDI0owKJtp1WUnkOcbF52xHOg0G0IXGGLZCXy6jRpU9Z69mg2Bxc
Hyu2iWvl1Iw3eOYI5ZJ6OkfBrXZy8ur0ha0qtYXY2QL1cWMW/pcFoVkDX1LByMC837GS3yum6ixB
wQS+ux4HX5/kE3MuZDyvvAwdbpOXM7zsbdbURfrXT4c31DyTRuY6/P+z3bVNjnp04iIeiXyZqo5H
0k1IMxqlDMPr948AHHUm4nKT41UHn95bX2LXuMYLnSqtS3SY8cjkDtDxYZfrdMWt+KYJBsY5QDJv
7dO3zVP94FpkU9EAjvGprtWFFT1Hb+ucKcAfAZdkcwtBKAP0LUB89IA9hyD0rGq0YFfwtCr0J37o
GqST3d7D/9/FvmXutIGVCCG9CujKqH1Wa6E/c7/gTQGFDBKb6RaheYdBLu0ExqvVW6sJNx2VHXIn
PHI9g4sf5XFjaKhv+R4LG5BhiXmPUaT1ahgU1hXk7+6fdKyjZPb7IUl8oF0DZmGM/hyMNJT5l+vN
SBlzCw5cf3m50IRyZ7aZZmgvErBH8gO3h9j4V7tZpd3B1RzdhxY7ICDkSZbdGpdl8s0syoU6hlUV
vIM2Yyi9YCqnsJGavN5R9PKPYqht2m1Bk2TtLdtXh0/GyMuSBL34J+lrNWkFyzbv2tWSqiOtp+IW
9dDEzzJPTylC1PQSvu81lzu/AqQDO8gu/lIFxN0rGSDpfA/sNFe3HOVAw/ZC3BzmXRLn7aU9ErkI
ldHfSYpMFrvTKEHgSGPkCOW+w3jR7CE2H2fKRCt7rGpV5J6G19Nb9Kw7brTaBRWvA+W/f09BNqmv
qCojgdKPWHzXimPEXjASY87Lln1tXBlRGkBGuy0bFK701i6pN3LarBY3A3uy66W0rRuAdaAsQg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FEAE5ED542C650"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
content-md5: Ndg8Ct/NGO6r03xD0eXJlw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8e9aaf08-f06c-4aff-a06a-876d45e6ccda
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-5adfa1c0-04ea-34ad-13ed-57ac896f0120/baz/bar/foo

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
vtcPsileDLCA3oOEcdu0VoF3GkDsDCkF1uF29n1blTndW+e/+/5IYZQv2QyBKcI3OQErElXBM7Ku
CdtI6BYzJUhJphX09VqCLrirvTIdhK0ePr17MIPkHCc0EPEjAHl++7TEOIKtQ0OmqeOcFXWAkYUu
KapYt/TEZInuv+RoXy4/LcJ9WUsqcfp51YafRwaxs39s9NbOJkO//9P4voRfPUq1XeizAzc5BLiv
3uJtJB2DPAtk/GpXcAZ+vVl4MbJ2Gpg86uoe/rBHM/AeH0dhUdq2dYJ4+kHfXezhNEXewNIGOMRK
MTkzZD1bHMh6OVG/HWt+wrwv/h9WXY39PMpqaXIeF+aCFyCgghBEHd54ZSOaIhbZX/4W1jql89Os
NShz8LJVXCFrPAZL3j+r6+BA3vhqYhqzkQp0CEGs3SNM9Ezo0S0rIggBL+UQjoG+aupZZBXbQtMN
v16o4VTgvl7i/unywhmzFbvvaDI0owKJtp1WUnkOcbF52xHOg0G0IXGGLZCXy6jRpU9Z69mg2Bxc
Hyu2iWvl1Iw3eOYI5ZJ6OkfBrXZy8ur0ha0qtYXY2QL1cWMW/pcFoVkDX1LByMC837GS3yum6ixB
wQS+ux4HX5/kE3MuZDyvvAwdbpOXM7zsbdbURfrXT4c31DyTRuY6/P+z3bVNjnp04iIeiXyZqo5H
0k1IMxqlDMPr948AHHUm4nKT41UHn95bX2LXuMYLnSqtS3SY8cjkDtDxYZfrdMWt+KYJBsY5QDJv
7dO3zVP94FpkU9EAjvGprtWFFT1Hb+ucKcAfAZdkcwtBKAP0LUB89IA9hyD0rGq0YFfwtCr0J37o
GqST3d7D/9/FvmXutIGVCCG9CujKqH1Wa6E/c7/gTQGFDBKb6RaheYdBLu0ExqvVW6sJNx2VHXIn
PHI9g4sf5XFjaKhv+R4LG5BhiXmPUaT1ahgU1hXk7+6fdKyjZPb7IUl8oF0DZmGM/hyMNJT5l+vN
SBlzCw5cf3m50IRyZ7aZZmgvErBH8gO3h9j4V7tZpd3B1RzdhxY7ICDkSZbdGpdl8s0syoU6hlUV
vIM2Yyi9YCqnsJGavN5R9PKPYqht2m1Bk2TtLdtXh0/GyMuSBL34J+lrNWkFyzbv2tWSqiOtp+IW
9dDEzzJPTylC1PQSvu81lzu/AqQDO8gu/lIFxN0rGSDpfA/sNFe3HOVAw/ZC3BzmXRLn7aU9ErkI
ldHfSYpMFrvTKEHgSGPkCOW+w3jR7CE2H2fKRCt7rGpV5J6G19Nb9Kw7brTaBRWvA+W/f09BNqmv
qCojgdKPWHzXimPEXjASY87Lln1tXBlRGkBGuy0bFK701i6pN3LarBY3A3uy66W0rRuAdaAsQg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D8AC2992186120"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
content-md5: Ndg8Ct/NGO6r03xD0eXJlw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 63b7a058-bb76-4d6f-86ef-d8af8287cc5b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-5adfa1c0-04ea-34ad-13ed-57ac896f0120/foo/foo?comp=metadata

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
etag: "0x207F9E199102C40"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c2b398e5-bdbc-4911-ba8d-26f3be3083ae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-5adfa1c0-04ea-34ad-13ed-57ac896f0120?restype=container&comp=list&prefix=foo

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
x-ms-request-id: ebd24353-4591-4085-9ba3-2b263d52ab7a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-5adfa1c0-04ea-34ad-13ed-57ac896f0120"><Prefix>foo</Prefix><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:57 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:57 GMT</Last-Modified><Etag>0x24448F4EC473C00</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>Ndg8Ct/NGO6r03xD0eXJlw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:57 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:57 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:57 GMT</Last-Modified><Etag>0x1C160B2723138A0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>Ndg8Ct/NGO6r03xD0eXJlw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:57 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:57 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:57 GMT</Last-Modified><Etag>0x207F9E199102C40</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>Ndg8Ct/NGO6r03xD0eXJlw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:57 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-5adfa1c0-04ea-34ad-13ed-57ac896f0120?restype=container

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
x-ms-request-id: d96bb248-f7fd-4633-81d0-d13684830c62
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

