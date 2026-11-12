## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-99fec72b-0645-f7ac-fef5-3b947e5013af?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesPageableAsync
now: 2026-11-12T00:51:54.8542283+00:00

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
etag: "0x1E54033907E14C0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 513a2e2f-6d9a-49a9-b03c-5855348a8d54
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-99fec72b-0645-f7ac-fef5-3b947e5013af/test-blob-30020081-edbf-bb5a-f4d2-e921c4e91036

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
etag: "0x1C11A8BD2DC67B0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d38c2884-65f3-4a3e-994e-d6ba2d5a5cd3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-99fec72b-0645-f7ac-fef5-3b947e5013af/test-blob-30020081-edbf-bb5a-f4d2-e921c4e91036?comp=page

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
Vj9TOfq86F9SDlKAOAZfYLLEKlHRnts+bEKlchyKMxTlBT4//dm1xRij3bGb2oPuc4lu/7++Zbdj
Fcy4FnZCx9o9mzLHIGPYDmQ5LcEpo5K/t/+THDNVJqCG2+cN/a6iYRXWXT9QJlIllfBahDf1OnI5
+F92rqun53SSQUV7yxG1l8yrUkVTbpCsboZC+qJokaF10wRPK7JqL3XKveUNqsrfpexqSecs5orO
yUAkZe3RKa+jBvcNZmwZQSPPiLCrn8S8Y1W1/Ue5SOx5gGFyRsmI+ZQ1aaPS0T6AUQjDXF7ZIyp8
ZwKXHCtn6b0Kk+UKpvtZR48cdTYg6pEWNKw/9eyOoF039t7H8NxozX/mxz1ZdqoMahXOvK3zW31w
ged/KPPRe/OI068dklaytKe2OSJUvb4BM4vWwOOvQ5tgVm/06KWLFEtK0aL779e+GwgFPSJbHMQp
ffRo+rsP2JAUvDvnvssCKyTWCesbBkO0GKTbqQZ4BTqry2uwIxqQOvgS5jKc1108AxH9hBLYDXax
s+IWNC6Jm7cBPPJgUQcKRs/zCSARGEFHnqb0e4An0r70/283eQbJiEp7m5pq27EK8j5D5ANWoJuh
z5WIlSA32Wk0bFKX08zJKYDVlXym3cL06YhB5O26nV/TlapwQfMqQ8EwNW9fch9xeruDgAoe+/LT
k6uX9fV7es7yxD0iWOeNq1K7dadTlXdpz2kyNxxVtJq3na5Hkk7MtLqgbK7hTyHU9dW4Y4VKf/0z
LiWLSUOynQ+jars4RhgE78DssinJh4BHXkFGnVEUbR2xE2QoQGt37s+ePuRmm6+9s3TFXc3Uaqal
Q+sBawC9j/2dhzKz265VdcRaKkmc4cKSiencTw9Q3Km9gv1/dYPO4a7myBN8CdjGb+gIej9dCGIo
b+EW4D/uTauJ9Viw1QBBi0matRivFYARFt8mR2JpYHqbVgahuABv93pn8xN/FZnnx+/2wlJJeFlh
BcpfxwZJIJXeFX/6n9JIK72eSCJskgBGP39ycp4nUd6sQLI2Dy9zHtJ+oAAa7SccrZaUqzA29HPJ
GYiH1q32t8OgTV8gEhuNKilP7vEAK1FXVsQHkqatdUs/bPWn7Eclh+g9eZ/H/Jp7B4AG5waBye03
L4Dp7yUc89cU4KYl5j3iKmYJwrGyj1opjIsmpo5EvqMIcLzHPJjDIIbHsxv0VSBCJLygeAY8hJ8l
v2Ka9k1J0CIDHXaBGu7NRaIr6tw+NTdq44HSo0WczOsdoXw2KSo4fuP58TepwQnO0zJkEJrD54kr
LxLLdizcZlGLY3lxlhx382v5RUMAwSF4BNATN7tQWrrzC/oYbQe2HIvlHl2QXDwW7R0uyaFFKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23BB5E676E91AC0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-content-crc64: 9LNtPd0KC7c=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9141d0a8-4a20-469d-8ef4-a4ec78073197
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-99fec72b-0645-f7ac-fef5-3b947e5013af/test-blob-30020081-edbf-bb5a-f4d2-e921c4e91036?comp=page

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
Vj9TOfq86F9SDlKAOAZfYLLEKlHRnts+bEKlchyKMxTlBT4//dm1xRij3bGb2oPuc4lu/7++Zbdj
Fcy4FnZCx9o9mzLHIGPYDmQ5LcEpo5K/t/+THDNVJqCG2+cN/a6iYRXWXT9QJlIllfBahDf1OnI5
+F92rqun53SSQUV7yxG1l8yrUkVTbpCsboZC+qJokaF10wRPK7JqL3XKveUNqsrfpexqSecs5orO
yUAkZe3RKa+jBvcNZmwZQSPPiLCrn8S8Y1W1/Ue5SOx5gGFyRsmI+ZQ1aaPS0T6AUQjDXF7ZIyp8
ZwKXHCtn6b0Kk+UKpvtZR48cdTYg6pEWNKw/9eyOoF039t7H8NxozX/mxz1ZdqoMahXOvK3zW31w
ged/KPPRe/OI068dklaytKe2OSJUvb4BM4vWwOOvQ5tgVm/06KWLFEtK0aL779e+GwgFPSJbHMQp
ffRo+rsP2JAUvDvnvssCKyTWCesbBkO0GKTbqQZ4BTqry2uwIxqQOvgS5jKc1108AxH9hBLYDXax
s+IWNC6Jm7cBPPJgUQcKRs/zCSARGEFHnqb0e4An0r70/283eQbJiEp7m5pq27EK8j5D5ANWoJuh
z5WIlSA32Wk0bFKX08zJKYDVlXym3cL06YhB5O26nV/TlapwQfMqQ8EwNW9fch9xeruDgAoe+/LT
k6uX9fV7es7yxD0iWOeNq1K7dadTlXdpz2kyNxxVtJq3na5Hkk7MtLqgbK7hTyHU9dW4Y4VKf/0z
LiWLSUOynQ+jars4RhgE78DssinJh4BHXkFGnVEUbR2xE2QoQGt37s+ePuRmm6+9s3TFXc3Uaqal
Q+sBawC9j/2dhzKz265VdcRaKkmc4cKSiencTw9Q3Km9gv1/dYPO4a7myBN8CdjGb+gIej9dCGIo
b+EW4D/uTauJ9Viw1QBBi0matRivFYARFt8mR2JpYHqbVgahuABv93pn8xN/FZnnx+/2wlJJeFlh
BcpfxwZJIJXeFX/6n9JIK72eSCJskgBGP39ycp4nUd6sQLI2Dy9zHtJ+oAAa7SccrZaUqzA29HPJ
GYiH1q32t8OgTV8gEhuNKilP7vEAK1FXVsQHkqatdUs/bPWn7Eclh+g9eZ/H/Jp7B4AG5waBye03
L4Dp7yUc89cU4KYl5j3iKmYJwrGyj1opjIsmpo5EvqMIcLzHPJjDIIbHsxv0VSBCJLygeAY8hJ8l
v2Ka9k1J0CIDHXaBGu7NRaIr6tw+NTdq44HSo0WczOsdoXw2KSo4fuP58TepwQnO0zJkEJrD54kr
LxLLdizcZlGLY3lxlhx382v5RUMAwSF4BNATN7tQWrrzC/oYbQe2HIvlHl2QXDwW7R0uyaFFKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2092CBC3F395DA0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-content-crc64: 9LNtPd0KC7c=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aa67c618-45ca-4749-967e-5576ba322534
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-99fec72b-0645-f7ac-fef5-3b947e5013af/test-blob-30020081-edbf-bb5a-f4d2-e921c4e91036?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
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
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
etag: "0x2092CBC3F395DA0"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c65fcf83-7e9b-4ca8-9dcf-4a774e39a748
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-99fec72b-0645-f7ac-fef5-3b947e5013af?restype=container

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
x-ms-request-id: 7b474902-2b71-42c4-9c3b-ab7902e2b27b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

