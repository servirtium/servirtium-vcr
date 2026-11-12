## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8d6d93b0-5f24-4b5c-44b9-21a64a2b6d2a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_File_Overloads
now: 2026-11-12T00:49:00.1374181+00:00

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
etag: "0x22A1F17FCDFFDA0"
last-modified: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f2aa58b5-4b18-4573-b5ba-4b9c3402b7c0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8d6d93b0-5f24-4b5c-44b9-21a64a2b6d2a/test-blob-8920ef10-9806-2a0f-821e-564205721840

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
CMzziC8ea+RojAKQUD0+pxrGj956wFsYg0MLBQgZRdKh4Z5+N+T68oM7IHqVf9lE4K8oP+I5xUdx
2wXsE2bbTkYv726fwG81zJxbP6DgggRqxiVZ8QbvZxxWDFzfDt8dYNE0Zo9qpCA/8nNG3YamkVkA
gUxBgV0/QIdSSbMTVb69Pt7Pqxx0/yIEGf+TqYmWr3sD34yS29509CYIGFtsLJy1iZ+n1+U8i4Iq
PGherJb9vJk4EHYxKmL/W7f2bObGl+1i3SDq7tiVxlMJaJ92FUePClzBNBslg148p3suRh+cY6R7
+852E83AokojKMHDiUVvZmKJBWPRPFrBrUZcZ380bQX6+xp5GPaPAJLRAlqdeR02vt+8El5Bqb90
tWaGYzrL77u8yI4r9k5s+gTQ/zr/IzQoJqmfd1umuVFbBGKQCJ1YBhOf4bCPCseRUBdacKmEdJEy
XTyQK3dgFQ89z/Hs2/JnePknYEKDmRzhDidDTEin1pDRXqtgx9qbP8ugUjrWpXQl8/ewXRNOrsMg
rx1QHMjGlflgGn1GB7EfiyF34kfhC2iyHllR9nh8gq/nPxe8SiID2bxBdYr33uxFkdLy18t8P6S1
nv5vdZ6B5JjNX8eaYkD+cwiLoJXeuj9tC2WmiqrkagBzB6wjk2QdwJHxKX4kqy6R9GPC8Z8O1uO/
AWo42lrt6fTHJluU2uCkbeAE7JHASF83FZVGIXlgZDDIZJH55OU3A0CKXITS/BmDHYO+CulS/rkL
AcXEp8d7ZsIqy3VOq4n6zehQNuvaZRh8wwT2olpHdmbY7uMfc1x5DvbCpzCjNXH5xD0AAcjNMJut
R+PChcRn41UPdb2m2lmM1yf1F77n2I2S/N0cRnSdC71Hcit4tokxWsPak8C0U+njdCqg1xndxW5W
MInmSp3hcmkAXmcuEyCexLz6DETM3an0OdFJ/TSkaq28IoYASg8m+SFWtPSBtWEKARNc47gpiVLf
8hHLl3U1W/S6cfCZnnmt0xMjdim0coNwPvsgSIf0k5gzIFf+W2GsIVgAx0RwcGOZrg+lBhMpK4CN
W1h5FBNtxd5YZn4hrnexdlTQs6s//86Xh5l3T4yFCvTXcAAIMg1FkwFmGArleACX84++WHfVTluK
4o169XVR01uJSj53qURHiiCp2ebEsg6Z31z8xrJ8ASKkflB/y52LFEWuWy3CIEpLd81XK3R0xi9+
4RYZVAypDUgb0ivzyL+DHcShFVfh1r8RsU/kJdWtMLcgAeqHcb84BU7kpk0fV68O0w6w07HYnQpW
CKO9xedybaJz08bV+6wEaA8J/C9x8lmf1lHH/VwGSGTgMGkcekBmcjmrq4ToONhiq2qhzqDa5Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x261FE45E33AC720"
last-modified: Thu, 12 Nov 2026 00:49:00 GMT
content-md5: jNXAkYcin3icRBRJ0gAj+A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3899f6de-3cc9-4e41-b086-e45b1bd7b7cb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-8d6d93b0-5f24-4b5c-44b9-21a64a2b6d2a/test-blob-8920ef10-9806-2a0f-821e-564205721840

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
last-modified: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:00 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x261FE45E33AC720"
content-md5: jNXAkYcin3icRBRJ0gAj+A==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a5751923-2ed5-4cc7-baca-041979af9750
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: jNXAkYcin3icRBRJ0gAj+A==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
CMzziC8ea+RojAKQUD0+pxrGj956wFsYg0MLBQgZRdKh4Z5+N+T68oM7IHqVf9lE4K8oP+I5xUdx
2wXsE2bbTkYv726fwG81zJxbP6DgggRqxiVZ8QbvZxxWDFzfDt8dYNE0Zo9qpCA/8nNG3YamkVkA
gUxBgV0/QIdSSbMTVb69Pt7Pqxx0/yIEGf+TqYmWr3sD34yS29509CYIGFtsLJy1iZ+n1+U8i4Iq
PGherJb9vJk4EHYxKmL/W7f2bObGl+1i3SDq7tiVxlMJaJ92FUePClzBNBslg148p3suRh+cY6R7
+852E83AokojKMHDiUVvZmKJBWPRPFrBrUZcZ380bQX6+xp5GPaPAJLRAlqdeR02vt+8El5Bqb90
tWaGYzrL77u8yI4r9k5s+gTQ/zr/IzQoJqmfd1umuVFbBGKQCJ1YBhOf4bCPCseRUBdacKmEdJEy
XTyQK3dgFQ89z/Hs2/JnePknYEKDmRzhDidDTEin1pDRXqtgx9qbP8ugUjrWpXQl8/ewXRNOrsMg
rx1QHMjGlflgGn1GB7EfiyF34kfhC2iyHllR9nh8gq/nPxe8SiID2bxBdYr33uxFkdLy18t8P6S1
nv5vdZ6B5JjNX8eaYkD+cwiLoJXeuj9tC2WmiqrkagBzB6wjk2QdwJHxKX4kqy6R9GPC8Z8O1uO/
AWo42lrt6fTHJluU2uCkbeAE7JHASF83FZVGIXlgZDDIZJH55OU3A0CKXITS/BmDHYO+CulS/rkL
AcXEp8d7ZsIqy3VOq4n6zehQNuvaZRh8wwT2olpHdmbY7uMfc1x5DvbCpzCjNXH5xD0AAcjNMJut
R+PChcRn41UPdb2m2lmM1yf1F77n2I2S/N0cRnSdC71Hcit4tokxWsPak8C0U+njdCqg1xndxW5W
MInmSp3hcmkAXmcuEyCexLz6DETM3an0OdFJ/TSkaq28IoYASg8m+SFWtPSBtWEKARNc47gpiVLf
8hHLl3U1W/S6cfCZnnmt0xMjdim0coNwPvsgSIf0k5gzIFf+W2GsIVgAx0RwcGOZrg+lBhMpK4CN
W1h5FBNtxd5YZn4hrnexdlTQs6s//86Xh5l3T4yFCvTXcAAIMg1FkwFmGArleACX84++WHfVTluK
4o169XVR01uJSj53qURHiiCp2ebEsg6Z31z8xrJ8ASKkflB/y52LFEWuWy3CIEpLd81XK3R0xi9+
4RYZVAypDUgb0ivzyL+DHcShFVfh1r8RsU/kJdWtMLcgAeqHcb84BU7kpk0fV68O0w6w07HYnQpW
CKO9xedybaJz08bV+6wEaA8J/C9x8lmf1lHH/VwGSGTgMGkcekBmcjmrq4ToONhiq2qhzqDa5Q==
```

## Interaction 3: PUT /devstoreaccount1/test-container-8d6d93b0-5f24-4b5c-44b9-21a64a2b6d2a/test-blob-8920ef10-9806-2a0f-821e-564205721840

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
CMzziC8ea+RojAKQUD0+pxrGj956wFsYg0MLBQgZRdKh4Z5+N+T68oM7IHqVf9lE4K8oP+I5xUdx
2wXsE2bbTkYv726fwG81zJxbP6DgggRqxiVZ8QbvZxxWDFzfDt8dYNE0Zo9qpCA/8nNG3YamkVkA
gUxBgV0/QIdSSbMTVb69Pt7Pqxx0/yIEGf+TqYmWr3sD34yS29509CYIGFtsLJy1iZ+n1+U8i4Iq
PGherJb9vJk4EHYxKmL/W7f2bObGl+1i3SDq7tiVxlMJaJ92FUePClzBNBslg148p3suRh+cY6R7
+852E83AokojKMHDiUVvZmKJBWPRPFrBrUZcZ380bQX6+xp5GPaPAJLRAlqdeR02vt+8El5Bqb90
tWaGYzrL77u8yI4r9k5s+gTQ/zr/IzQoJqmfd1umuVFbBGKQCJ1YBhOf4bCPCseRUBdacKmEdJEy
XTyQK3dgFQ89z/Hs2/JnePknYEKDmRzhDidDTEin1pDRXqtgx9qbP8ugUjrWpXQl8/ewXRNOrsMg
rx1QHMjGlflgGn1GB7EfiyF34kfhC2iyHllR9nh8gq/nPxe8SiID2bxBdYr33uxFkdLy18t8P6S1
nv5vdZ6B5JjNX8eaYkD+cwiLoJXeuj9tC2WmiqrkagBzB6wjk2QdwJHxKX4kqy6R9GPC8Z8O1uO/
AWo42lrt6fTHJluU2uCkbeAE7JHASF83FZVGIXlgZDDIZJH55OU3A0CKXITS/BmDHYO+CulS/rkL
AcXEp8d7ZsIqy3VOq4n6zehQNuvaZRh8wwT2olpHdmbY7uMfc1x5DvbCpzCjNXH5xD0AAcjNMJut
R+PChcRn41UPdb2m2lmM1yf1F77n2I2S/N0cRnSdC71Hcit4tokxWsPak8C0U+njdCqg1xndxW5W
MInmSp3hcmkAXmcuEyCexLz6DETM3an0OdFJ/TSkaq28IoYASg8m+SFWtPSBtWEKARNc47gpiVLf
8hHLl3U1W/S6cfCZnnmt0xMjdim0coNwPvsgSIf0k5gzIFf+W2GsIVgAx0RwcGOZrg+lBhMpK4CN
W1h5FBNtxd5YZn4hrnexdlTQs6s//86Xh5l3T4yFCvTXcAAIMg1FkwFmGArleACX84++WHfVTluK
4o169XVR01uJSj53qURHiiCp2ebEsg6Z31z8xrJ8ASKkflB/y52LFEWuWy3CIEpLd81XK3R0xi9+
4RYZVAypDUgb0ivzyL+DHcShFVfh1r8RsU/kJdWtMLcgAeqHcb84BU7kpk0fV68O0w6w07HYnQpW
CKO9xedybaJz08bV+6wEaA8J/C9x8lmf1lHH/VwGSGTgMGkcekBmcjmrq4ToONhiq2qhzqDa5Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E9150B46F45B10"
last-modified: Thu, 12 Nov 2026 00:49:00 GMT
content-md5: jNXAkYcin3icRBRJ0gAj+A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2fa0e406-8df5-468b-876a-ca79b3a6cbb4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-8d6d93b0-5f24-4b5c-44b9-21a64a2b6d2a/test-blob-8920ef10-9806-2a0f-821e-564205721840

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:00 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1E9150B46F45B10"
content-md5: jNXAkYcin3icRBRJ0gAj+A==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 87517bfb-cc13-4ad3-bb60-d5cbda57232b
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: jNXAkYcin3icRBRJ0gAj+A==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
CMzziC8ea+RojAKQUD0+pxrGj956wFsYg0MLBQgZRdKh4Z5+N+T68oM7IHqVf9lE4K8oP+I5xUdx
2wXsE2bbTkYv726fwG81zJxbP6DgggRqxiVZ8QbvZxxWDFzfDt8dYNE0Zo9qpCA/8nNG3YamkVkA
gUxBgV0/QIdSSbMTVb69Pt7Pqxx0/yIEGf+TqYmWr3sD34yS29509CYIGFtsLJy1iZ+n1+U8i4Iq
PGherJb9vJk4EHYxKmL/W7f2bObGl+1i3SDq7tiVxlMJaJ92FUePClzBNBslg148p3suRh+cY6R7
+852E83AokojKMHDiUVvZmKJBWPRPFrBrUZcZ380bQX6+xp5GPaPAJLRAlqdeR02vt+8El5Bqb90
tWaGYzrL77u8yI4r9k5s+gTQ/zr/IzQoJqmfd1umuVFbBGKQCJ1YBhOf4bCPCseRUBdacKmEdJEy
XTyQK3dgFQ89z/Hs2/JnePknYEKDmRzhDidDTEin1pDRXqtgx9qbP8ugUjrWpXQl8/ewXRNOrsMg
rx1QHMjGlflgGn1GB7EfiyF34kfhC2iyHllR9nh8gq/nPxe8SiID2bxBdYr33uxFkdLy18t8P6S1
nv5vdZ6B5JjNX8eaYkD+cwiLoJXeuj9tC2WmiqrkagBzB6wjk2QdwJHxKX4kqy6R9GPC8Z8O1uO/
AWo42lrt6fTHJluU2uCkbeAE7JHASF83FZVGIXlgZDDIZJH55OU3A0CKXITS/BmDHYO+CulS/rkL
AcXEp8d7ZsIqy3VOq4n6zehQNuvaZRh8wwT2olpHdmbY7uMfc1x5DvbCpzCjNXH5xD0AAcjNMJut
R+PChcRn41UPdb2m2lmM1yf1F77n2I2S/N0cRnSdC71Hcit4tokxWsPak8C0U+njdCqg1xndxW5W
MInmSp3hcmkAXmcuEyCexLz6DETM3an0OdFJ/TSkaq28IoYASg8m+SFWtPSBtWEKARNc47gpiVLf
8hHLl3U1W/S6cfCZnnmt0xMjdim0coNwPvsgSIf0k5gzIFf+W2GsIVgAx0RwcGOZrg+lBhMpK4CN
W1h5FBNtxd5YZn4hrnexdlTQs6s//86Xh5l3T4yFCvTXcAAIMg1FkwFmGArleACX84++WHfVTluK
4o169XVR01uJSj53qURHiiCp2ebEsg6Z31z8xrJ8ASKkflB/y52LFEWuWy3CIEpLd81XK3R0xi9+
4RYZVAypDUgb0ivzyL+DHcShFVfh1r8RsU/kJdWtMLcgAeqHcb84BU7kpk0fV68O0w6w07HYnQpW
CKO9xedybaJz08bV+6wEaA8J/C9x8lmf1lHH/VwGSGTgMGkcekBmcjmrq4ToONhiq2qhzqDa5Q==
```

## Interaction 5: PUT /devstoreaccount1/test-container-8d6d93b0-5f24-4b5c-44b9-21a64a2b6d2a/test-blob-8920ef10-9806-2a0f-821e-564205721840

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
CMzziC8ea+RojAKQUD0+pxrGj956wFsYg0MLBQgZRdKh4Z5+N+T68oM7IHqVf9lE4K8oP+I5xUdx
2wXsE2bbTkYv726fwG81zJxbP6DgggRqxiVZ8QbvZxxWDFzfDt8dYNE0Zo9qpCA/8nNG3YamkVkA
gUxBgV0/QIdSSbMTVb69Pt7Pqxx0/yIEGf+TqYmWr3sD34yS29509CYIGFtsLJy1iZ+n1+U8i4Iq
PGherJb9vJk4EHYxKmL/W7f2bObGl+1i3SDq7tiVxlMJaJ92FUePClzBNBslg148p3suRh+cY6R7
+852E83AokojKMHDiUVvZmKJBWPRPFrBrUZcZ380bQX6+xp5GPaPAJLRAlqdeR02vt+8El5Bqb90
tWaGYzrL77u8yI4r9k5s+gTQ/zr/IzQoJqmfd1umuVFbBGKQCJ1YBhOf4bCPCseRUBdacKmEdJEy
XTyQK3dgFQ89z/Hs2/JnePknYEKDmRzhDidDTEin1pDRXqtgx9qbP8ugUjrWpXQl8/ewXRNOrsMg
rx1QHMjGlflgGn1GB7EfiyF34kfhC2iyHllR9nh8gq/nPxe8SiID2bxBdYr33uxFkdLy18t8P6S1
nv5vdZ6B5JjNX8eaYkD+cwiLoJXeuj9tC2WmiqrkagBzB6wjk2QdwJHxKX4kqy6R9GPC8Z8O1uO/
AWo42lrt6fTHJluU2uCkbeAE7JHASF83FZVGIXlgZDDIZJH55OU3A0CKXITS/BmDHYO+CulS/rkL
AcXEp8d7ZsIqy3VOq4n6zehQNuvaZRh8wwT2olpHdmbY7uMfc1x5DvbCpzCjNXH5xD0AAcjNMJut
R+PChcRn41UPdb2m2lmM1yf1F77n2I2S/N0cRnSdC71Hcit4tokxWsPak8C0U+njdCqg1xndxW5W
MInmSp3hcmkAXmcuEyCexLz6DETM3an0OdFJ/TSkaq28IoYASg8m+SFWtPSBtWEKARNc47gpiVLf
8hHLl3U1W/S6cfCZnnmt0xMjdim0coNwPvsgSIf0k5gzIFf+W2GsIVgAx0RwcGOZrg+lBhMpK4CN
W1h5FBNtxd5YZn4hrnexdlTQs6s//86Xh5l3T4yFCvTXcAAIMg1FkwFmGArleACX84++WHfVTluK
4o169XVR01uJSj53qURHiiCp2ebEsg6Z31z8xrJ8ASKkflB/y52LFEWuWy3CIEpLd81XK3R0xi9+
4RYZVAypDUgb0ivzyL+DHcShFVfh1r8RsU/kJdWtMLcgAeqHcb84BU7kpk0fV68O0w6w07HYnQpW
CKO9xedybaJz08bV+6wEaA8J/C9x8lmf1lHH/VwGSGTgMGkcekBmcjmrq4ToONhiq2qhzqDa5Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20078FDA1D7A6C0"
last-modified: Thu, 12 Nov 2026 00:49:00 GMT
content-md5: jNXAkYcin3icRBRJ0gAj+A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f48e7df-1388-4345-a94e-9fb00ca89892
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-8d6d93b0-5f24-4b5c-44b9-21a64a2b6d2a/test-blob-8920ef10-9806-2a0f-821e-564205721840

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:00 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x20078FDA1D7A6C0"
content-md5: jNXAkYcin3icRBRJ0gAj+A==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0aeae06-ad8f-4750-b220-80d9f35ba6a5
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: jNXAkYcin3icRBRJ0gAj+A==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
CMzziC8ea+RojAKQUD0+pxrGj956wFsYg0MLBQgZRdKh4Z5+N+T68oM7IHqVf9lE4K8oP+I5xUdx
2wXsE2bbTkYv726fwG81zJxbP6DgggRqxiVZ8QbvZxxWDFzfDt8dYNE0Zo9qpCA/8nNG3YamkVkA
gUxBgV0/QIdSSbMTVb69Pt7Pqxx0/yIEGf+TqYmWr3sD34yS29509CYIGFtsLJy1iZ+n1+U8i4Iq
PGherJb9vJk4EHYxKmL/W7f2bObGl+1i3SDq7tiVxlMJaJ92FUePClzBNBslg148p3suRh+cY6R7
+852E83AokojKMHDiUVvZmKJBWPRPFrBrUZcZ380bQX6+xp5GPaPAJLRAlqdeR02vt+8El5Bqb90
tWaGYzrL77u8yI4r9k5s+gTQ/zr/IzQoJqmfd1umuVFbBGKQCJ1YBhOf4bCPCseRUBdacKmEdJEy
XTyQK3dgFQ89z/Hs2/JnePknYEKDmRzhDidDTEin1pDRXqtgx9qbP8ugUjrWpXQl8/ewXRNOrsMg
rx1QHMjGlflgGn1GB7EfiyF34kfhC2iyHllR9nh8gq/nPxe8SiID2bxBdYr33uxFkdLy18t8P6S1
nv5vdZ6B5JjNX8eaYkD+cwiLoJXeuj9tC2WmiqrkagBzB6wjk2QdwJHxKX4kqy6R9GPC8Z8O1uO/
AWo42lrt6fTHJluU2uCkbeAE7JHASF83FZVGIXlgZDDIZJH55OU3A0CKXITS/BmDHYO+CulS/rkL
AcXEp8d7ZsIqy3VOq4n6zehQNuvaZRh8wwT2olpHdmbY7uMfc1x5DvbCpzCjNXH5xD0AAcjNMJut
R+PChcRn41UPdb2m2lmM1yf1F77n2I2S/N0cRnSdC71Hcit4tokxWsPak8C0U+njdCqg1xndxW5W
MInmSp3hcmkAXmcuEyCexLz6DETM3an0OdFJ/TSkaq28IoYASg8m+SFWtPSBtWEKARNc47gpiVLf
8hHLl3U1W/S6cfCZnnmt0xMjdim0coNwPvsgSIf0k5gzIFf+W2GsIVgAx0RwcGOZrg+lBhMpK4CN
W1h5FBNtxd5YZn4hrnexdlTQs6s//86Xh5l3T4yFCvTXcAAIMg1FkwFmGArleACX84++WHfVTluK
4o169XVR01uJSj53qURHiiCp2ebEsg6Z31z8xrJ8ASKkflB/y52LFEWuWy3CIEpLd81XK3R0xi9+
4RYZVAypDUgb0ivzyL+DHcShFVfh1r8RsU/kJdWtMLcgAeqHcb84BU7kpk0fV68O0w6w07HYnQpW
CKO9xedybaJz08bV+6wEaA8J/C9x8lmf1lHH/VwGSGTgMGkcekBmcjmrq4ToONhiq2qhzqDa5Q==
```

## Interaction 7: DELETE /devstoreaccount1/test-container-8d6d93b0-5f24-4b5c-44b9-21a64a2b6d2a?restype=container

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
x-ms-request-id: dd5c307e-0a2e-4b7f-ad4d-6156e230fe48
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

