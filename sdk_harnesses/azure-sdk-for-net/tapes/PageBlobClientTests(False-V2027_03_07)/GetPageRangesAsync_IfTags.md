## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8732f563-f745-f90a-b59d-eec7a19aa3b3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesAsync_IfTags
now: 2026-11-12T00:51:21.2897737+00:00

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
etag: "0x1CA55BC263E4D60"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9ae35657-1ba1-49af-be6a-f81302f38a77
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8732f563-f745-f90a-b59d-eec7a19aa3b3/test-blob-a3ac5c2b-2332-91ac-07d5-820a8046684e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26BF1E5807197C0"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d6636b28-f15b-4430-ace9-47d09f19bc75
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8732f563-f745-f90a-b59d-eec7a19aa3b3/test-blob-a3ac5c2b-2332-91ac-07d5-820a8046684e?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
VNPrgHqlvCUENRlh0q2uPA93KTUHDeo/SaF/b3QAeW41oHPOriM5hp+Gnv0JS75ZJ0b6CRwyRkbo
rDfYJU2wBLyrKzI6343sPqOWgW7tNf7iJkguBW9RA1ks5QLrYGFR1ZpBXh+MH0e4Dct5m8XY+3Y5
9v8Egv5MWSfYDfqLAN1BRKvUq9feVQYAdfik12iTVOmLsmphTVOb9AX4sxFNLQztOFYaA0+fWqD4
BAwGp4G/RbgQAE5y3/dXOLfR5qH0s0jrtp8ReFGa7FfJaUhGlE2EOG5ZPC2+e1hewsqYzXT+A1DE
G/HhrcxndhP2qXavEaRqTa0zm3cbLDtHs7WGAh/jy2X4gXlbooui8cYZyNHir7EmLn/Hy2fZqe61
mvkW4XT0Et4Qto8rDqohkamwAWRpZQMEX9OfG//+HtiKpQiRixBSJbXz0fgi+yDUpTq+KKeJTDT2
EoGgVPfeEpi2oGihkAWZXtyvdZML4mSzynXFP/UxAFnUm3iPstG+Fb9ga1u3MhU0JcrK2tah6jAd
7ImBGdKihJ8PzfSNCawL8WDUqnYJ+5hgkRorZiaCM7BIcsVHPPzsvea7qGUhpxsev+h2zD+5FPDx
IYi3dx14jJpERJfmw7Rk5+yPTVMyP+n/DKc9DGZwjl7UVhtzNUbJQhvK3WKDN/w0EuVSKsadvuGe
uGp2O4A007U5EmyY8LKmxgo4aGKHe9SrCfmAHWSXN5g51XzbUgealQmsSiWPmyEzrGO8ZVV/Fj2W
yzGGs7VRotvUXho1ynMCndJY2jCvG23XTXEA2tJCub4+RYbVE+JUW6hKujwH/eHvuceCJzwM56/E
rmZEUMcJkqRc9oXsLInwBH+IZGEw0E+PECAKv5KCMl7XEWV7DwrhQSeXqwdcAo0+kSO9hIJOk94W
tUCm/9IS2cQmFRskdfR0piM5mCVIMg2Tyy1vxa3biH2GZFrKO0JUhdFCNe1yGhwuSN1eFPu4zoIy
EjOkoxQWS4ydnRCaqmvh5BNUBfwgIbARQHzPfXSCzpbYmCgOr+G8K+pg1H0MlJ5xfC/nY8iFEfGC
k2OYRs0YG856wRJD0zQxmNoRwEwzBaveXgBEmmvNUoY3ixx+JOQdSLiuktKMLqn6tcvuc1GkTo63
uujN04FjrG+LDEcYs3P19HiUhXPZUS9WSuSf3t40kjyOxmn7T3Q3S+VjACJi4gJX+X7ZEMka3mi4
domcxM6QV3kKiewJ+aUDXDmNdVEN9GfhR+VfWoJzc+gBQ9jrmocX0qipWFgVTQDZ1rOQjWgWq4Ih
u3zpMfz2lxYECLbMF8GydqOpZJwPzPrkhoTO4uZ/65hVyt8KLqGsssBCEUVKDb7x3RbFbUbmEg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CB1E79C2B2D470"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-content-crc64: d0szoGd4cv0=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 61fb9318-5acb-42e7-b031-a71731f184ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-8732f563-f745-f90a-b59d-eec7a19aa3b3/test-blob-a3ac5c2b-2332-91ac-07d5-820a8046684e?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
VNPrgHqlvCUENRlh0q2uPA93KTUHDeo/SaF/b3QAeW41oHPOriM5hp+Gnv0JS75ZJ0b6CRwyRkbo
rDfYJU2wBLyrKzI6343sPqOWgW7tNf7iJkguBW9RA1ks5QLrYGFR1ZpBXh+MH0e4Dct5m8XY+3Y5
9v8Egv5MWSfYDfqLAN1BRKvUq9feVQYAdfik12iTVOmLsmphTVOb9AX4sxFNLQztOFYaA0+fWqD4
BAwGp4G/RbgQAE5y3/dXOLfR5qH0s0jrtp8ReFGa7FfJaUhGlE2EOG5ZPC2+e1hewsqYzXT+A1DE
G/HhrcxndhP2qXavEaRqTa0zm3cbLDtHs7WGAh/jy2X4gXlbooui8cYZyNHir7EmLn/Hy2fZqe61
mvkW4XT0Et4Qto8rDqohkamwAWRpZQMEX9OfG//+HtiKpQiRixBSJbXz0fgi+yDUpTq+KKeJTDT2
EoGgVPfeEpi2oGihkAWZXtyvdZML4mSzynXFP/UxAFnUm3iPstG+Fb9ga1u3MhU0JcrK2tah6jAd
7ImBGdKihJ8PzfSNCawL8WDUqnYJ+5hgkRorZiaCM7BIcsVHPPzsvea7qGUhpxsev+h2zD+5FPDx
IYi3dx14jJpERJfmw7Rk5+yPTVMyP+n/DKc9DGZwjl7UVhtzNUbJQhvK3WKDN/w0EuVSKsadvuGe
uGp2O4A007U5EmyY8LKmxgo4aGKHe9SrCfmAHWSXN5g51XzbUgealQmsSiWPmyEzrGO8ZVV/Fj2W
yzGGs7VRotvUXho1ynMCndJY2jCvG23XTXEA2tJCub4+RYbVE+JUW6hKujwH/eHvuceCJzwM56/E
rmZEUMcJkqRc9oXsLInwBH+IZGEw0E+PECAKv5KCMl7XEWV7DwrhQSeXqwdcAo0+kSO9hIJOk94W
tUCm/9IS2cQmFRskdfR0piM5mCVIMg2Tyy1vxa3biH2GZFrKO0JUhdFCNe1yGhwuSN1eFPu4zoIy
EjOkoxQWS4ydnRCaqmvh5BNUBfwgIbARQHzPfXSCzpbYmCgOr+G8K+pg1H0MlJ5xfC/nY8iFEfGC
k2OYRs0YG856wRJD0zQxmNoRwEwzBaveXgBEmmvNUoY3ixx+JOQdSLiuktKMLqn6tcvuc1GkTo63
uujN04FjrG+LDEcYs3P19HiUhXPZUS9WSuSf3t40kjyOxmn7T3Q3S+VjACJi4gJX+X7ZEMka3mi4
domcxM6QV3kKiewJ+aUDXDmNdVEN9GfhR+VfWoJzc+gBQ9jrmocX0qipWFgVTQDZ1rOQjWgWq4Ih
u3zpMfz2lxYECLbMF8GydqOpZJwPzPrkhoTO4uZ/65hVyt8KLqGsssBCEUVKDb7x3RbFbUbmEg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25ABB64E2E10460"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-content-crc64: d0szoGd4cv0=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eb0c8e83-0de0-4600-9237-bbf0239a5e92
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-8732f563-f745-f90a-b59d-eec7a19aa3b3/test-blob-a3ac5c2b-2332-91ac-07d5-820a8046684e?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0a922428-3989-43da-8767-f61e925087fa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-8732f563-f745-f90a-b59d-eec7a19aa3b3/test-blob-a3ac5c2b-2332-91ac-07d5-820a8046684e?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_6
x-ms-if-tags: "coolTag" = 'true'
x-ms-range: bytes=0-4095
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
etag: "0x25ABB64E2E10460"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5a5721f7-261a-4e56-93f2-0cc8d794570e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 6: DELETE /devstoreaccount1/test-container-8732f563-f745-f90a-b59d-eec7a19aa3b3?restype=container

### Request headers recorded for playback:

```
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 51f4c9f4-2974-4489-ac65-44fc3105287a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

