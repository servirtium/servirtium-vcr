## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0112b018-6810-9ecd-c773-cd9cb909ebec?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DeleteAsync_AccessConditions
now: 2026-11-12T00:47:45.6460566+00:00

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
etag: "0x1F0B69688553930"
last-modified: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6b79aef7-1b90-4277-b512-8afb94659ccc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0112b018-6810-9ecd-c773-cd9cb909ebec/test-blob-7745adae-7b5c-bd4d-1d56-81faa92db0c3

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
NkSpVVq8cNR9MrU8nekUemJtGPujyz6dY1XjuebT9JnDCmZ1YJWS8T1x+inFEB80QgaYPBW0H2sF
DPIE2Lbtqj4ceZODnhrM2ia+MtEV11I2r3ffO7iED+v6cFSijhmGg0/rqZeLsKPsy2Hu9eya8DSg
zSk/Dm+Fl2qoiC7GKkwNOK+BKi27qv7T829XlRn/YIAfAsDwRnTfZREt4yh1JqAU4b08GMUH5SIq
bBv/LgJQqSeupiiMHfE6ocQbjcfWXszOQrRcwki6FxydxdpZ4DYP3DoAxn94iMPLAncB61dbVA1O
MexN9Obf9I4L71cX4MGOC7GN1ZdMVrrwkL/QuSvEQXHMCq9KwuhTIdLwbJhrtCG1cuCmzn51Atoy
XGMmDjpjR63mStUSQ0nJObPFW+khhdyeG0ZLHnPyVwjUGGWELRKXjSXrhWlLoy+W3ZXKsKbxENeH
iPP0Fyg69PPMPSvkRAyhLc7ENf9yUncXtEDeJ6Zi4weN/KQfo3b8sZF2fmUEspiIKYPYLdvYFTV7
3WLoXMxNalojVkhngYlXx4Ru/NMSEgKnVf0iirYstedupMUTFFXEKRQK4FxQIaj5gGVWaRhiacpg
QAfOKt+k96Bg+NzEQ7IvqdK+BzKlVzNUKQpQ1UvODDv7s9RN9v80Zui77yjLNTyzJ8BGo2KXuujT
eQDVVCFVkuuhyJDd4bPTiqBJ6mcKifTNnK6LiGnYY/jsenz+XxLHZl09KWys1UUMchnBTtCByPAM
CLdzyQmCyGWX8Wc31CqOgoMJzV+HIMZpfhVQFxQoa7GL8lZaVJxTumAHFeTe1Z7uMsxMd/uRhejx
CUr0MbFQb4a1q+LUNC3mthL+gAvii6l2YuRI2/O2+mxuaUpRX4mvtqVdKCm7Gv6eZsHokgXcDn6h
fc/MB5SS/7F1ZcvjlFaJT8llhGN/ukjmqnQyzWhnkVrLr+G64q8Ryyh4RrQzutFqX0I7d4kbIsKH
5lwfXzFJDdNwF+V1z2waVLk6BnSTs/CjyG4lLBrQsI0eMvxS8Wv2Lzjhw6Ps9I/VISLQ4RtO8zNs
e5fDI+G4n2dXV5xwyGJNQ9c8su9Nt9TfTwr4AM9xzz/J5XbUMwtWKCM7lJzzZVnAgp1EEUBDH8TC
49PXwJ+Y5oddpuLseRDL5YrMESM37OqxN30yLb3+hsWxEU84f2iEo60Vlr921AmMeCy2dg6hi/fp
JYghZbnJXiAcOmjAk2YhSG11IlYqO2N0pbSRRw+3EIZXTlnfYj30SzefWZmhy+XFlS6gLGmhvuok
rcAENxcQZSnhaUQNQuUwgNYei+HK09nPzLLgF+QdtY9uu7V97xQgjvRwv2KguFNJb6uSgzMJWg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EABBBC935B99F0"
last-modified: Thu, 12 Nov 2026 00:47:45 GMT
content-md5: FKD9jQGSQferBnAmKPM9iQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 825f80de-e79e-4ff1-9c99-98548ed58554
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-0112b018-6810-9ecd-c773-cd9cb909ebec/test-blob-7745adae-7b5c-bd4d-1d56-81faa92db0c3

### Request headers recorded for playback:

```
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 937654e9-8614-4c95-9302-8d58fa25de91
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-0112b018-6810-9ecd-c773-cd9cb909ebec?restype=container

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
x-ms-request-id: 176a0e7e-8571-468b-8c11-59da00b9baa0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-6b35e6d9-2f64-444d-c4b3-b49e8630b390?restype=container

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
etag: "0x1CF06E69002EB40"
last-modified: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3b7fce9c-f2f8-481a-852d-9155054974b9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-6b35e6d9-2f64-444d-c4b3-b49e8630b390/test-blob-edfcfec2-1459-2e77-135f-97a7388a325c

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
ZWDblrqou16mK/qv6xrMGLwb0IQ2HADFbwdYBZimCzqAWDklVBzWGUKeRi4ZyEL5kn7qHbmtJUlf
FSeyULXFAB/ALpPhpsSgRLZCmNXSq6bEXnIau+6A0jLvxj71I8mN2EUOWZmvGOy6StkCa41zjWqA
7fFDq0UxP1tg8eCFqiDttMCQw1INFUaGX3AUfmelfDjUdTbYSiwA3Ro+TiYMNaC4FbbM48kXcteq
vEvUHMD0unWnsDXqFGqTj+Y3z8cfeSrQW2iw2JhvvQJeLY3gK8FZSZOxZIVqzgBLOFPj36MQikIh
BMBXROHcOPMyjOfds2Ql3oUzbRWlZY1oZKBEi91eTaNKvycAAQSx1SuSOEIZboXvvgEd3Rwte54z
7+BBl60V1D5Dk/Q8JNyBgZjpEy1KTvUaVc3cQXCGHEOIzRIkcD5+fGMD1dqRspkknFuERGhw6KDq
J0LfOZPOvXextFbKXBFaapbJRnkbiaIzt6QUAdjaF+VxOUn7n0PQNRdj3/5DWj9KKtrRp6Enz52g
rIHuurye1pxxWCPIXstT+BFht6mj8Fxlytf9CHBESmqrW/LB4ntbxAli0gIcgcsPfq6QxRfz/Lwk
ie/koM0rLA64HAPYkRaVBvKgQB5aSEgL7orCtIRSt142nFmLdiM7N6XzY2TIN+yX+r8lU7ueyUCn
2LJDaHiJZmWkofS9Co/OZAl5Z+XjQ7edK7nELWSjmNMY5J5x+M4sav3/JJX32fAwVu6yJWJbxJX6
pT2/xDgBAAghpCXwXWw6TP3n4x8ipVHJlNd18HNwvR8Jd1KRbaXE/iON1jTKP/iBd9hlc+B21//s
9TBhixCUsecG5+Uaqd9YIuX7lM8c/1Te9HibCko/kp9TpXd0Y3IT+CRNxFgTZ874DVD6ekMw0Pbc
gpeX+KadxlRFxwRo479y6Juqzjv8yoyqo/z5RBhcItSBl+DbfAB9sP0DzaDKkCmRh5KnhQG74LgK
7FWqo4E86aQv5kzel2ubLB49+P3s4BLSaLyFtJ3TxrYo0I+q0wx7xuP8mqnds/AmDFjifee6HgxD
1zvEtzQGWyCVtcfc8VkSwTIZ8EVo9bXMXqhF8EjObrGDZ/zQtg6u9T6JR/0pShr/0Lu1oS7G2uGG
+FmMwWvXxkcVWIpcQQsjavoG3663oxONRh+NGc2CvYwaSr61IjTTsYC1E/KQoo+wkTY0v/ozzlRF
/npLSq16kpv9QfZMbkjGMy4tAY8h/aSP3IiWTv2S53xpcCO5iGbTO4BWkmCZZCPubovLBczEIwHW
u24k40Oda1p64v0kDKvIWsYOympD9nhlqOBxxuGvpUwi4sz3rlc9uCcFH4ElymHgA6sGtViWkg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x212DF0BD3F2C740"
last-modified: Thu, 12 Nov 2026 00:47:45 GMT
content-md5: 6coc5asPWLDx7Q7QnwlpWQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3e6807dd-ffb7-4ba0-a996-3f2745af96c8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: DELETE /devstoreaccount1/test-container-6b35e6d9-2f64-444d-c4b3-b49e8630b390/test-blob-edfcfec2-1459-2e77-135f-97a7388a325c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:47:45 GMT
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
x-ms-request-id: 5c25b159-ec3e-49db-8b3c-8703f18fff37
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-6b35e6d9-2f64-444d-c4b3-b49e8630b390?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: 32a1ee39-4248-47c6-beb4-7a8f5e715d54
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-3bbff6c5-2c62-78a4-ca3d-b1012adfd0ab?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2106772962DFDA0"
last-modified: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0eea03c-b747-4d64-9bf5-7602c91cfbbc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-3bbff6c5-2c62-78a4-ca3d-b1012adfd0ab/test-blob-4212d16e-d73d-40f6-de7f-91c336a8eff3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
jE8HAe4c2oyDjVREc8g3ATL/mONGU1Tu/39d45rgQSFNvnTa1869UfeFv7CCscwVSI+QNxALrDn6
GQFvv/bxoksy97VUXSlkQkbswZSka06ySJsKUAoRQRE7377MTZIAkxxkULoXwepmLPTKH+ukVq6z
vHZb51FAIbWkGH1ql/Sz6y13QBqTm4ewpCQWRiImlogQGZEcpazKIy8Fc6hs+5QAFzO9LRaTICDv
qkItKtqSfYH1WX5il0aBrBzrjijeQ6iPFS7vaGlyffhxLPppnfhUc/Und6IWnYDsO4D5qJL3EWeZ
nRSrohUXgtyF8WtMFw8jlhszt8sGeXiuAizoeNRmeRqT0P/jqNDfD/XFkawVoCRx1RF2xFqbkySc
/Z/oLgkHHndQuEcPP+1KU6fWQefLmWIId6LD8LXA9z3bR6sw9uDrvnM0xOfcYZYjLHCyxFE80GM9
4LdmRC7Cj8EKNPhCGl3H64N0l9R6KxUMn8NFDTLrnnZH8hYphHlFcjUm0i2d4RES69nOyDmPw7Wh
WqRqfIKOH5aC+idHnmcJLySfU1job72xMiJZHNY8uC9ghyrU2vaymLOXGubqy01yxZgV729cuerm
uElgNAK/RkH35hY8NFQu7LulUFTXx2bU51c9JsnABM4/7iKsUmOw19Sl8uU3NZFE5wKzt2iVD/Dj
i02rgh94N+JH/UYygppY9HmAMtWBnbHF+D/GDExmqd4xyMcWBVS0LLoC7zdLEmVoW8LuFN0bYe2b
5YrfsiqV4VNnALnSQu8kzAUafq55eubaXbGKd5QAFmfaeh/K1HmPbA3k4xGslhnTyUjXAeI+IWuj
BVV5C2q+Z+pR+MfPWveMihKhlZfULsaYt61MKBSEm1m0Js8kFmGjJXwnWp1RA29RS3bQnYvUzteO
4VS9cj7VzF1tGzMoZ3Sw/m8arNMpRrM9+t2etP3N31f3lTUN5bM+Uo1A5Oc8KOMCIJ8buSIDZZqg
f3dhNxhgoDvbMNI+oxi83FpG6GLLAdH5m5RdsSY19DCabGY73Rt14EOsYPgRw3yHX9zIvHw41H2l
Z5uEAu8VpTuhpDaxgf8+0QceH6HZ59cX1VJJbTezYpfolnV/8N1Ulrq9cB9G1t7diet0GbTczH/E
bCycyzgD7kKeyOuKv+AqyonmHHe40f90a+NMPkjiDMn1u4Sxt8qCuYLcpw3yU8oLSk4r9rAHC5ss
KF9Ut6/5vLwhlANceBO+Y2L12yrygRgZQPP5txUZ7a/phI5qLQHS4utR0b7Gr9E7bZJNEjBwOqdH
O3a7AAWmB6dUc/SEUzZhI/g/oK9ZUpEhvUmDzNt/eEnnI/GKFuLmqskXcjvdtxpb6+43MZn37Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25843C6E5E1E420"
last-modified: Thu, 12 Nov 2026 00:47:45 GMT
content-md5: Kq7oHxWFP059+QqIXHq7CQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1567fa30-97a1-418d-9432-cbb9c6de3e88
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: DELETE /devstoreaccount1/test-container-3bbff6c5-2c62-78a4-ca3d-b1012adfd0ab/test-blob-4212d16e-d73d-40f6-de7f-91c336a8eff3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:47:45 GMT
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
x-ms-request-id: 0aa81b81-d5a1-42ac-b510-f6de3fd03da9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-3bbff6c5-2c62-78a4-ca3d-b1012adfd0ab?restype=container

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
x-ms-request-id: 3cc75dce-16bf-4db7-aed5-ea48abd75a32
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-4299e5e9-22bb-cb3a-d4fa-ab9d2f45d60c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20BF2A73A442160"
last-modified: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 952eb85c-f11d-4f36-b536-c047c0b38091
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-4299e5e9-22bb-cb3a-d4fa-ab9d2f45d60c/test-blob-e6f55916-df42-4455-062f-27e1ec4746af

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
7zYIpXygKoeOTJ1BMRnqFhTiIdijEaoJj1U7jPtZ34yz+634PTGPdS5tV/ZBFBLsRBDMCiZuC96L
/hUnZJ6MNWwRjTZs8dniUqupNrq0yHtCTkjqjdVmRfDPbT4cZxGQ4SGJMIfcgFI36bd6xNUk1jWa
5RZVoaeXqkhFnYSaxuqaGVSYK5fzZc71s6Me64AaqpYJgYL7Oj958YU+luPOnCLM4KuAi6uepn9H
YO4Eeb/HK/LtkUVon94VHjkRtc7qJxeAUQvUmR/ratoDs9pRdXfGd2vw4ArdY0DNa21xjPGwXTjX
gyez85HTAiZqZewEw6jCSz1j+kcMo+7LBy2xed7pUlahefJPEoTZHd3jc/5TyafEr0GzTWPxyuA5
6OtjIYhIgRKWYkq2cji5idxpKDDvdz6F7cqcNQXysK4RFiqYdvxVm/HsvWZdDT0J+cOGh6KwSnCt
3TO+rEsNo7GbpVwNIRPgFI0+ArrXKN+NkztBbCgMYcu56pjIlu+m3xm0wmjh+9iwpnMUcUe21bVU
MRgPyzeJj0OQVDd7F32elyOhI2V3rJhjkMW19++EAxTidGXWlhPiKzMlUKehNY72dtkjFbJP3IV/
rDtx1JdTDFAimKMXxwEQv/cyUVvxwls2v4EWYO5ikpfgV+rXcFeb0URWf5zr3q7YElW6HIspjung
OhQWPativwYLN3AXOU6gln8Wm0O+S+DSPU2Yp3UMtsgA9zZChZSZ9L+W4Kc9wdkHGoULE/OmIu8z
Q/9dyRiQ/4CnFkEYXRHrfaaEJ2o5lXt0kYzvAaPVWdVGDkKUOyqmBuEmlaqX7r10IJZMIvqE+q6D
6TiMoP3d0r1s0U7PVkF73SGJE//R3KLPe+ENiDbawRSTEFLyGmXjScPtKx1upclU0EXZ++avsg2W
vCUc0EmGkg86O0XvicO8psk747GFYdUXuLjxAcYu5F1FXF0/xnl5Z5gNM2qDZUeCHVQcc89cEVtQ
BReRlJFJDFboqS1lfOBQwXwYdy1rlFJwb+NyEXGO6UsC78Fh6NIHwycTm7saHKB0zLFSQ5kt5XHF
ICSt1/vlWcDhYo0f7tmpELMFV/iWVlJD/UW/O6Wy1AlPnMiuWuwsLkH7OLoTVd3YqTPlJ454LsrR
atm1JR0bL42Dz1IQ+rbH2Si2mx2YL6hn55JyzK17123+3PATdgkk4Agtj4aKx658Hk5lwZOsOTox
Tj2LqGPgB/fkEh7Fs2IfkrsUa6Ah3B/j9a5eFhXaUqO24SjLmDelTIiOpbWQtmrrRi/Yl82aD3Ee
qLO0gfHiCsB6D9I6U/qDbh4XkzZqUj5Ecs/mAbrWHNG2rfCD8cuWrJr0FqeXsfI1VCivgnw6sw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2302D860FBC3720"
last-modified: Thu, 12 Nov 2026 00:47:45 GMT
content-md5: O2nPUxJlubvWUSVWRTRi4w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 68cb9216-03aa-4cb9-9621-25afec25b3b4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-4299e5e9-22bb-cb3a-d4fa-ab9d2f45d60c/test-blob-e6f55916-df42-4455-062f-27e1ec4746af

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2302D860FBC3720"
content-md5: O2nPUxJlubvWUSVWRTRi4w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3beab758-0746-4bf0-aded-0bd61bd569d0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:45 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: DELETE /devstoreaccount1/test-container-4299e5e9-22bb-cb3a-d4fa-ab9d2f45d60c/test-blob-e6f55916-df42-4455-062f-27e1ec4746af

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x2302D860FBC3720"
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
x-ms-request-id: 0a281acf-ffdd-495f-bc7a-dc1ab7b6c61a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-4299e5e9-22bb-cb3a-d4fa-ab9d2f45d60c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
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
x-ms-request-id: b6679306-723c-4a19-aae4-5e878a928a28
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-0f707455-fb21-0509-a3f3-0083a60a007d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20B02BE62867180"
last-modified: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8139d3e2-7aa1-44be-a2d1-526127f8c34f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-0f707455-fb21-0509-a3f3-0083a60a007d/test-blob-9be68153-3c76-ac97-c1dc-b1ad92279954

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
fPqaD4G8dLCR7nKzly5MK1SqWwCWnj0Z3MRNREpcc3xZqwasb/D8lww2CofJ5BSSkIVY58uYvt68
gTK9bi9lNXv2WesnoLtjrsT0YJS2T/ivu7TEA4yxwe0o7+2+Pync0NUM04spa+/K9DgGpF5JBjE6
DrN7oDHuRJj9/rDNpW+bF4+/qnxthU/E+g9TqhyP3+m8gzF1YTCjHY7yK20//E7Jao3Pily1zIhj
tqUimpl8bh/HESE+JbVfG4ztelnhhf7Aij+Ov1SMBreoEauKgYL0drxOd+ssikXYb2/PyFIugjCn
YRBZ7a7LOwtqlRMJ1ZoK+AOckg4TkwD6tVDkvT1keY964h9ymogOgzzfwvQxzprVxc9Oku8ilM4Q
Xzhe5n3NBhyEj/J6l116jg/SM9ELyea1D/htFeegWE1RYjtQr52+EbvYrT+nWy1y0wPfUGH8BJZR
qdaFX/A05DalKDUiKt5yEyEVMhumDbTK+0LjwAjsVV2l/gbGOLLLo8kIAjL3UKkkbTxA5tJ6qpsi
umSuUSQuudPYfCzYrNtvSo5SnguB06uYvlLLq26KKlNro31NHVKl2kleH9N8TMFg0JxDKAyQoOe5
FZLRYw1lTVLYbAhdIS08rcTBIrTXHHKRatvRRwJG2wOWlAe/03Y7+dGBpN+4A65vBntIzn0y4vkg
QPgykwZQkZEFx40lfdlNhiniVneS2GcsYUCH/QyFY7IOnpN+CWbLMRJOszshSomh+0hUUIuBjmiQ
BTHFyZOEf2TbFt5FznzCFiVkRCQrChe25QLEMBImjBAr7QQ0Bmh/yTPXRTOrWy3LkTlmHUpDZPoa
D+ORwE5RtYrNGuB4jRC95XrxVMXjConV+J/Zv2/G6IkJGveE7QnkhpCp3kFMUwMoqTjPUhA1NgRa
vMevd/UaBzJXb3MZOPdxDM00OSxIiKWbsBY39pV40+TyKjFBNQ6bjtYO9OSQD3BAXUZCAfzXEjMi
FMfe4xCc35uPJg7FMNe/mKpWOZPACqGm9plPNdHnGxj9HyBHvavGchVIAehhei1ug2hRgdigYQom
OOx2TanJpwv2yBC2eNv/j8Z9dwi4RHts4LJolZk/Xb4WIYS/TyRsflnca7IduAuNUvESIukBbfRw
Cmz3YRFyt2tRoFdWQECiEfiu3NjJTiim20OnLTrUFbOQTkS4dR1HabRHyxe0NhKxcBHwUpAbp7tE
UIXOyooxfYujxvH86ZvbZnIkgoMQ8qUx9r0o48IidKaIcyWYeZ4qFk6MEW8gtIZ2Fese9yU4M13g
ndTMCJnIgFJLc3V2Qu3T+Ww1hOE1EEE2ss7XBHyBUEDHt9vKXQ20w5Ad1UAQ/9L9S/25Aq57qw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x241C2AF0A847320"
last-modified: Thu, 12 Nov 2026 00:47:45 GMT
content-md5: 4Sq5sUVx82cCR9cW1c6Ruw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bc568b98-6b11-49c5-82f0-aed9e67665a9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: DELETE /devstoreaccount1/test-container-0f707455-fb21-0509-a3f3-0083a60a007d/test-blob-9be68153-3c76-ac97-c1dc-b1ad92279954

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
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
x-ms-request-id: f6a231c6-1a6c-45dc-a1b6-0bdb0ee9e41c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-0f707455-fb21-0509-a3f3-0083a60a007d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
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
x-ms-request-id: 8713b58d-9a6f-4386-b19c-558643a4c2fd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-5696928c-f1cb-d57b-c923-35ae8b11089c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x250C621F3A07DE0"
last-modified: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 80cb57d3-bbf7-4350-80f6-286ce4507388
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-5696928c-f1cb-d57b-c923-35ae8b11089c/test-blob-50c1805e-3b17-2601-b2fb-d9b97fc84d91

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
TAxPN8e26dIVSAsc21FH60JgWoLtK5NQkW+jzxfCVgDWo2J+wtHVqJbvO88w5Eths+13Hm7KpCB5
/qZXEhq6UvIKRjfuyClwi7Lr/u/DIKwjQhsqSzeSC/9BBcMqfZV8NOndJZ4TcuvDBpK736Uxtd75
NND+kAe6eDo4rcNmRg0cb8oG5fsOD88wZkSl1ixZEE/kMEnEfaThI6xj28UoXcCEnm/bK8/j6iQA
zirDFKEO3p1zgRXEWPElJMJOqzQKCAiEIDe9fuV/AUUlxK96Hg4LVfwntNyqwEZ9tQYNlD/v9sUh
PvRpUWC483/PnpRCqwazQlU34lMs2WDxP8jecm0GNc3qWN8aogScb8Fc2yGyOwr/WlHptxNx9GSU
eBGX2YESyWjGWFImmaBRmnKS0P4+PgS+3xcbHH65eGN6hSryBZZAShK47OO32MCxmB2h3yRmVTkN
2flp9qzqDN/urBN2XpXcUoXshlIgBgdXaoRgGJg/FC/w5Syc1lNlzd8DyCytOjmHxIyeec/n7NLy
EowoifRGr5fjhnlpP3syh7hyHT3aqS9L2VMMoJpgCPhZqcTGPEPrvBmVybS/HoQRa/IWdc6UGGhd
3bCgOg/8g32BD5a3bEp1hmEkReB6i7vP+zSnSZMqxZFbaV+SS4EKmEY3Pg/uWf+ooe5tcNKI4lH1
0T/aVDnpVkoEWwPq4jvgGq2aQ02r4KE0/6elvFS+04YOnXpBL0MMTefE6f78vb+yjVUl7p4ESfCe
plWRQ5r1Rod83EXBnutqjfZl5/eiOEHo8i/+mOXoClOKo4nteglNz6N2f+F68e5qu2ConmL5+20T
qVBq9q2ilNLxNvphfBPsGBdTK7hgbgFBlN2FP2zxkKcb2tG449n11OsPiLrzCT9MvIVLpc+1szpP
KGLPHVRlAKVSRqJCMzU9XVfMUOVGTYueOIPmpuvYZSaWabp3JreWqYgUocKdCohQDUd46GJVCdvX
MeTQf1m6euB7rMp6xjefNadcMavIAC77lpmkX3zEQWDeoPTSxSouWibhIl6+1UYP2LO6+NcvDjC2
1enAFhpktmpqmyZDzW99LdeF5t7PPcBSlIbJCUmIr5HDG/BAbkQMfWvzUzkgzAtDPcr/qidR5pgo
boGTmqwh4eyUf7F/PL+TeWlz3OmGMsh7hcx+iQRpcTRXGP/CeOK+0nJNi0xawwAKbDG+3gqvoTu5
GBTgoljnKg18KCTA0ACGtQl3Oad7IcHLdBzTq5MqqHbDCV/N3S8ZZWA+3ZvcSpwwNykAOGiUPfdS
FS47FH96Un+t/MegudfaXdRGPEMl7imAonRqKW8OLstoesgB3VDhxIscL07Uj35RJtuTTgCzLQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20BCD1DCAC5DA40"
last-modified: Thu, 12 Nov 2026 00:47:45 GMT
content-md5: kAGjs20NDi7ww0A3CrDhZg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c8920da1-35f1-4712-bcc6-85ce25d49bda
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-5696928c-f1cb-d57b-c923-35ae8b11089c/test-blob-50c1805e-3b17-2601-b2fb-d9b97fc84d91?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 71bb0426-0f0a-0f28-9fcd-fb383e0ed97f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20BCD1DCAC5DA40"
last-modified: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-lease-id: 71bb0426-0f0a-0f28-9fcd-fb383e0ed97f
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d7de03a9-3347-461a-b5dd-db3c5fa1033c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: DELETE /devstoreaccount1/test-container-5696928c-f1cb-d57b-c923-35ae8b11089c/test-blob-50c1805e-3b17-2601-b2fb-d9b97fc84d91

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-lease-id: 71bb0426-0f0a-0f28-9fcd-fb383e0ed97f
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
x-ms-request-id: c698f866-e829-4980-8305-8a0ce458209e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:46 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-5696928c-f1cb-d57b-c923-35ae8b11089c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
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
x-ms-request-id: ee452d76-7a5c-4d9f-89d4-a63e5d788f93
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

