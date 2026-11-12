## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b9c96534-9d9d-be03-400f-67f2d17e3d2f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetMetadataAsync_AccessConditions
now: 2026-11-12T00:48:22.7030300+00:00

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
etag: "0x1E378D923A37290"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 35aefc71-00f0-4c44-8ebe-301b221139c3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b9c96534-9d9d-be03-400f-67f2d17e3d2f/test-blob-72cbe681-132c-7c42-2e51-cd05a6529299

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
CxlRTO7Cr1jJw/IwtgY7kqL1tZQaqpQgI0yLTM/+GO58zua3LfFBvjdyqGghEcUnFTpisJ3+f2GF
MCmhN2OIy6sEs+gfhGWxs/ZcpwEr/hGGYzaUm2dRfk6FMvzIoIfU6d29HV7dB5HVsf2modhfWTIX
GtQs8zBDszWZmlJp6BNuiL0kbeGyqVulv+lqqt12JdjKsIWzp/WtemopQ20+a8jpOBkaO+xQZXF4
hzRG2AhYI3R6nziOu+DHd/N2iWbtZlMggXLDXOrreUsTOiDBZqJh0B/4xMyQWnw4UsT52dsLiiHg
JVaWlMeKjiXteoHABhBQFblG9aGHkCb1iwkl8p9wCK/+4EFLyjxYbTamo+D7d0yzqMQixJV/WZUv
oQi9ZZuGfHHRwSXPBUp87Ydr4OxG+hS9cUnbTkMZf4erGyk0mwiaICZuKbUm5KN6pdcOE3mp6Kb0
//NRqy4ut0KeI+kgSFF+0b/F2NBelo2mYKhsC2wOAjKCQJsVSHX4QHFziMC6WV2FkEG54xDWlWhl
q0qFwazVkCG2nQe2aIlKzZhf6g7M7AdL5nsqVB4irKoyr50rcn7FnvifBLtVzye4bxZ4d6pamb9C
OtsxqjsCk/Fdg7jsH1sZmUwVLedL9RdUcuUIqjX/1xbd6Deik/O9nHDK+EtuzFC6Xt1dRWvX90XE
3ThW+um8XayiDjYjdgZZWJB3gf3L5aaUTUtXoZKqBvDy3ra6ZqKHDZqfzL0Zl+fWBOzaYHVI+PeS
waydZLsZ9whGMZhPn/Hu8HNiLBnoe7ZkgZ2lz6Z7qea+KKX26anfhdS102ZPh2T77G8B5cveqkX1
OeMdcydhyoexkXdM+AbKg6dEMqhQFPo4quM2ecQa4H1fAK/GwRGtUwjenfXtrvNpN2IkmXedpSTp
5MlEK1HDlrD57fhWBMGVl96gcXcES/zvzUJi9kYFwlqL3NxIaCe2GwZF9MH7EjKgjgGY/DOt5ZnN
VF4PYKBp8yqeyyflTC636VZwv1Y69LoPwWdFbcUm3fdCexTJp7pm2wCWXEYLukHS4RPdPCVCkmCj
AJ84JIZld+0wotEa7UKbCuRWpJd0BAclcouySKHR/+mzJaYbLbZ6MeVZ2hhwt/TQQjJB7O3IL/yX
E7L7si9MXqLoZsebf9wt23KyGynutbqX4gZujxP76/aqgxoDf3+1DHx1iFEsNMJVExF7FhTSqV34
Y9Ap3c6P7HvR8PzCKlzz/A6seCxpaq1DGXsBgNTi2Nq8CxuujC+u5pvVWkTGk+m0hxkFJTAwj/gj
5cRSjWum7xghBR5BRG/f/pKRkxBpfYWSTfm73LKpi3wii6ZqW1gvLmsrpI7Kc0KpJSedn/voug==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2583D408035ACC0"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
content-md5: 9GwLuqAzL2eC0J/9iaE2UA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7bbde772-a627-44e8-abda-cf80793b6624
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-b9c96534-9d9d-be03-400f-67f2d17e3d2f/test-blob-72cbe681-132c-7c42-2e51-cd05a6529299?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
etag: "0x1F80689B838BC00"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7e5e84e2-68c0-47da-82af-a844b90d9708
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-b9c96534-9d9d-be03-400f-67f2d17e3d2f?restype=container

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
x-ms-request-id: b3b5eefc-8246-49ee-8030-e80419adca24
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-40c03f68-eb72-6612-7779-a21eb9c975a2?restype=container

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
etag: "0x235CCFBE36E88E0"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c35693fd-2575-482f-8958-41cbe28e0a47
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-40c03f68-eb72-6612-7779-a21eb9c975a2/test-blob-a4656139-d83d-c7f7-d9b6-11b68a0beb80

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
OdE+K5sYvUNYxCwUKFSJ4LCEZD6WQ3yQR/lmu9lc22uNIuToikkHIaMiTHir4p+ELTAFBqes6vZU
ruOisQFp/OnAhgVwoFZnfEKac/cD5GVZ4Y6pVtXE4Dfuk9xlZXCiuVCP6luZFI3anollEnb+UMl+
SM9zwKUT/KXOgQx5ARfS+LqmdPoJwM0BzrhLX87A70IT5x2gL/mrfO61y5OAYZxykxm8WNzPdIcC
cvHsx53WDZHJZhn6McnB+/cLU/U6gGwb2cu1BJdmQ3KVnr0HvrRQ370BtvuDd2FQ+lzkwyGSyPGE
0e7RIQj5YyKnZJIMuj1Du3Q3OMpxmGFqZQo7gYBRA9bLgu3Ffr20B1LY2xPPQ0AfoQitWo8mEziM
Z7z+vuKiVmG7QDhPfTy2gjB4mbxOmiHKHOB4pKhHpW+0ORcBtkhvNYWyEwMHzyPL9tderXl7Psya
NKICKrG4dJrJm0QktcznCGM2nIcdwky8rK3R6Pf1OPtKZoKmbQvT+Z9oPjTepkALdqUVRaFFfXFV
RX0E54yj02JJ2U9JQZpYYqLotYMY3gZtxXFS3/NZBegQUSiNzxISxWvRlczwwTUKveL/XcfuPGd3
liEaUfRu79RmOfByy5OQ1e8YR0g5fQM8RyIRWaggIhTBFTnw+HR3Yqb4iYhFmPJPb4jY1fUePhke
3gnRXZUsRRbbsbVZn917oeSiQfN69q8vwuofSEweotcg0hlqpQUQy0Ryaec99c+rXDQRfPwmo+da
opurDPzJvA7dOc3DEPzeknWvCI3I8swadOsYDSXa+i4xEANqZL9HqKzYX7sC50w4M+qHdptakq/O
kZcRsa/oAz+ekQD4dC22Z1/g75MRF42f39o7U4OS135UnNMnNvf971x8Y1ZLP7690A48eaIbvXkK
cdHVra+8C7mCpNhZjjFo4/83lLM3U6AbfoJ0Vl3bON5aHcQlJ0KswFecyZrmY0Ld05aj4yjF0x0x
ui8tSLVcp2z5/3BtQ7y9i9Rbm4oFNBtAl4PHN1S2lEqn820Sf3eiPyIu7WPRb5Da5VhTajiTLIUU
7bEylG8XQ2slxk9OqgtcuVtn10e3bify7VL7YioSE8fo/pLGcKuzFqr3q6lAizpN97HcLFU9XH6J
P6ccHOBBE7KIZqx5lUivs8CdwMJ9smEXrmt5NedyqqETPDEElvrJtpj2tyWO02FoLXiUoJy8DI1F
BW11yN3LFrwKZVgXqx3G0wophvo8iNoJEAhu3QkFVjCjvpGMVO26K6Fog20IUYFbzs2Sk4aSCHyS
a7fVXDmyBA8oc+yLOX8cbltZ1AVsAb+GEw48c8OqEbYU+eg25c5ntX9e392Uz5VNdSQqOTR3Jg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F0FE667AC06A00"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
content-md5: uUZ86wpcdPkz7FhvwjhNmg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b4fc107f-af12-4933-8470-70a1111ddde3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-40c03f68-eb72-6612-7779-a21eb9c975a2/test-blob-a4656139-d83d-c7f7-d9b6-11b68a0beb80?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:48:22 GMT
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
etag: "0x227339E11827B00"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 86278c29-1d42-4f1a-abfa-4bd08be09021
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-40c03f68-eb72-6612-7779-a21eb9c975a2?restype=container

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
x-ms-request-id: 3764f13c-d85b-4dcd-9784-f63f0310b333
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-494ef76a-762a-4b91-7e62-36763f97e589?restype=container

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
etag: "0x278273BA81002C0"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 87a48061-31e4-4a74-abf5-75b8c7f53dcf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-494ef76a-762a-4b91-7e62-36763f97e589/test-blob-861ef18c-210d-f1e2-4379-eefd9f7fd782

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
ndN9PpeFPT/tE2F7XlhVto+bnkgW8RhJFVwFsIiTq/6Ks9lrGafxB7PemPq/ZpLqJDduBOCPbKu7
Myg6f4y2Wmdi8Kt/6ZzoqZeUN1kdiq7JG4xRJace+kctsOZ+t4gmKD2SXHXnazqahVpJ+zRSnal5
cWMAZTW/RPZjUTm2afIPbQ8biy054bBRtp9N1P8S2hI8BEYkJsII0hh/hBkA4xtoOo4lNxJ8QI+z
rq+Vcm/3UHYnemWr6kdMErgUuV2WUdKD5Jpw7KMAwMS2cHcScl+oiDOi2Wm2vE9H2SRZZ4YyHV3c
EY7VhmTTJ7qg9XrPOaBYbDEp83hpzSdKKRN/plg9hFMZNmHR0gHPz7KvFcfVd5+EAPtVCCnlc0Rm
i1xQVIBhY3AntQM/h5kvWSTGubdgdbJ0+qVd53spNMIcakekf3oxTbFXrsGbRXlhJa4EH7mMBhaq
21nbBHv0/YFAIhxRi9qqlGwGCcbw2LUs+8LNJBUJkGQx+qMgVkg1YrBAWiJcEJrUWopMhv1PugKk
rgm5J9hsN5K4IJA3iT4j0KYWr36S0Osn+cqKvAln4j+gfKc/fDvX1CKQpPAJnNFMKbZWOAqEEd4e
kS4O4XuIUD1QlwyW5FNqPttbAiv7Hlz4PpJTEKk1G2vJIeoNyfKnCFOyuAXEtUVi6/ovKQ6yInPR
FaPoNUCUG3uhzcJpXXXotPrYSWVXM4lN8CSuBvJcFv52O7NPvtITHZ2JI+eC+Y6FRnUU2dkOeuIa
mkQb5RWJRLbD8iLCmfUnxSvIzRChyveWKb99Rz0kaMDRNSSO9zeIAN4wvwdrwq2A7RSuRa3ReM9M
hLtVC/x5nolh8GTQmM3zQMwxcAvvK2YS/VoodiIT/7xUQXJ7MvTityB+CdJJr1RGugXgoAfEXVlU
Qg6iUChmTvGnfFdaeA3XT7nrcSGUyU0G4rwdMl61kOQZJu/mP2b4F7vgoTL960L4CVFO2Os4wHnA
m21rSRyS8utyQVEd8Q9S81pltCcaCfd6JCkNZ7f54GZ2JaT4jM6fTa9Hiqnw2hdC++WR0gxSpZJ2
8STzhYs0eWDqp8xqWWaMxmZ3035NiUoRymvSaA5aJH8Rgpupq8gkEhFJBTJL16F+BQum2tIUKWfa
4bsfYRFSkINMWNfL4hqdUsBsBIMXxfLJVGICtEmt/Vgzz8oNBbEA93Wv/37JsiLwCIgRpyTjwhzI
VQ2uT9s6n1p/lxNQkE0PbA0OaMZzAKFAEqzBm1YzUAytRK+kUqeadV8kShsPoHc6AToX1VpVVFVs
bT0veAMES0YGokudaxplc/JmT7WFMHE0hpobHHuyWPBaN+Rqa/xcH//UCf0rnZYgsmFn7wSf5g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CD4AFD22F1F380"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
content-md5: GuTEdBTHy+Qnvqr+03b7XA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 56c53e8b-5050-4b8a-8c76-412403c0abe4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-494ef76a-762a-4b91-7e62-36763f97e589/test-blob-861ef18c-210d-f1e2-4379-eefd9f7fd782?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:48:22 GMT
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
etag: "0x2115A9FC05914A0"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e53fd2e8-2df4-4444-b65b-3deee2db692f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-494ef76a-762a-4b91-7e62-36763f97e589?restype=container

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
x-ms-request-id: dc9440f7-a5ce-42f2-9f0c-ae206a9d52d0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-f2facb3d-e869-cb2f-534a-5b423335fa08?restype=container

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
etag: "0x1EFE0CB30908D70"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6ef43ef9-6248-4913-9378-347a5e99da41
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-f2facb3d-e869-cb2f-534a-5b423335fa08/test-blob-b62f0af6-27b1-0874-e903-fb69194b68eb

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
u1Gnn3AK8jfPCLWz0Fpj6rdYceTU6TUVVvEJZezFsgjhcIfhjluY6xf45qhxwTiOoBCywNmEFtEc
kUh+AY1KClat0WDTgVtcwIbN3AKMo5W5esXcE/EuXVm1xf0SGemKrdxRxO/Yuh60VgBTtjnPj+2z
xYbHbvdlfnMGHbxeSaecQy8lO96l4L+nJ7zx26cf5jYPX1Njwz7l7EZ70Z1iVgxYt3MJqVMODeTG
IEc6dKLM5jeFT+pTOIDxP0+XKQ8iRNGvmCMzFjziAFFunKL3q3ekrupm3AciBX7yGGoEd+PVpNt2
itx+mND6o06Y5Jvd+ZTX83oku2fJjJOkQf3S3YlumfjHgSCbJRUZazi4iiDjFR7VLINosOhzrP5I
2lfTKMXFKkujFnh0PM5kClAvEQJzwSve/LEGBegQU9UiUku+RkNy82DUQP+mYfC0A6WYRJr71Rgs
9CsUviRiksKjUemDpsQMvB2inoEsOJvAUQFDeA46Jn0ykVEXXjQ7ca08Ag8GMVzhi4h9WTeW/7yQ
U20jHxqzaStsUBVy9F7oZizU8DaLuR+kYeyGvMxFnJGVhwrHGFGTiJnkmuFHbpcqlPMKwg+FBZlN
fr0tLaxeJrSD3G1TIU7bQWedpx8+XPJVXCjZO9qBD4JweZmUZVrshXQtxJIp1nOlL4Gn6F16DyHK
2NCEheraAczr46i0RtsMsCKrEZhgK4W1NAxY2Sck9Wp4yYyKaP+JUsLFPvPK8eilmjg7z/2Iaq1L
zlHegSelxu0+O31OgkciIb7WmuyS6kIksz7v6CZs717fP5mtq9GaIHcGjLVqVhjwGa0/ss/AuOQO
uc3ott7H0Useb0OtdHbsO3p0jF2Nulwm/s94LT2PH4a1n/EDsWqZPrtpS+fUQqQ3UnZUSyyGgP9x
wbcOTqQOj0+9+NWE6YoQ202iJG50UrwrQdrHOtNZLx7yku+yivAWW7uXFkrPsmnrRHDe5FyQ/G/7
4w3JRlR8Y8m2klaaXlBdjMmy3DtyW45x2/Zie0rBYZWAt6biTBRnG7OAGB8SUeYfgVeT3R8ziIh+
WGtdGuh+9DHAGqaqej+1S8GI8UNvXooQQvnzLoN2TC4eY/SpCgDKAiPtUTc/dQYY3pJdq5ZED/nh
TNfui8atSs13ixdLC0DAve8fgQ1S0c3y2k/xGKCY2VT7x70p3HddQAZpx+nvzdJRnO6nJY3sjnoJ
/LB2vDIt37LCUESDl+F4wkEG6AnjAw19n3ux8LTHDjlCIODG5oPUPOg3LXyOzgUNL2JM5aVxJfii
+By3e+/9+0EKQHYBsdu9MqwhrNaQ79F1pMBReymT0frnJO1nHcD5OTI7g46ODH6HjrP5T3kiEQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x219EDB6FEF96A80"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
content-md5: h+wN3shqL3KZsfuaeVNCEg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 19df4e7e-916d-4d8f-9730-08ee20044e7b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-f2facb3d-e869-cb2f-534a-5b423335fa08/test-blob-b62f0af6-27b1-0874-e903-fb69194b68eb

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
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x219EDB6FEF96A80"
content-md5: h+wN3shqL3KZsfuaeVNCEg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bb0d5132-5dbf-4ff4-a41e-36a8bf081f85
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:22 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-f2facb3d-e869-cb2f-534a-5b423335fa08/test-blob-b62f0af6-27b1-0874-e903-fb69194b68eb?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x219EDB6FEF96A80"
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
etag: "0x26F096B45F05080"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eaf9ab13-b6f7-471f-8f9a-de3b80256b97
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-f2facb3d-e869-cb2f-534a-5b423335fa08?restype=container

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
x-ms-request-id: ac32d112-726a-4f63-bea9-92b3fb2051bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-d7414b09-ac2e-1880-776e-7c198cee5614?restype=container

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
etag: "0x2774C8A3C6CF960"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 01dfc5d2-0d2a-4aaa-b4ab-1907ba574652
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-d7414b09-ac2e-1880-776e-7c198cee5614/test-blob-a47228eb-6b55-e743-9742-caec759a8180

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
xRLjHNvpy42xIwwfEvLxmDieDScHfryeCFo/6+GTotzs+1R6Cjo5AV3k8jJfI9SlUTGz14xaeUZW
RROBqt+sHoAvMhaed47+ZQzKIouKPuSFmpqv4MtPkoINJMQmt1Z9ONSxL/G+BtmjtXGAj1a6zAcv
/BBF/D6136CUkFPJ2K21Teq32Q/zxpPADCpZzwIrUle99rtGODyV+09RKnaG2dzDy0JsA/L3PDV9
hO8TWxCdaD37DOHybhStId2/opwcOTNOlQPAvk9lxbqFyLNMgp8+tME4i8360VwtvuEVOJqZYUu8
xMYN3KntlkYnbKZhYZ8+gO7a461mU8SmkgBuUI0f7GdnkL3ZMdcXSvWG02S2zF1B1resvn2dVnEB
Zkqpf0a5CIA++tDhZU8Ww5m434Bg8MaiLHnVcy7qyTpM2MqMbcuvzMrjd9GNYHFolfvk5XbxoHaD
BlLM5JRSVDCVlYyEiVXNCRO1fHn0FcwHbN4yBuTEWjdTCWd44ug2kSKh98vk4wulFtxiOyT9j/GG
xHe2H05L0TpVMIDuVCYrf+tWUh4BI4jTje8IYR4TVnp18h1wgHHUViaQjrKKt8G1N7w4pzzThaHu
45JeQ28bQtoGeGIIu/56gfz3cJTWSNUtUipi2q89om18gZzfdRO2dUzYhD9frXy9viU/2xUMGJq9
MPBFuWcqyNX0izlimwvpQfpI/cSVzqWupByK/sdXb2gCIUUicbzkrbtqaiFCWyMZVpoaxBvWJ2JL
lhRLoMoNnBvRYHnGxs89Y08IK2ODa0j5cKctPatNK/ri19qnmQ3wXM0FcPupUpDK3WDLzfv+xyvL
UTAj4F9whDR+5O71lcpCGM6WfvpNTx0WY19LgV3+4xCv20fdzXxtlOzHK26i1EeVibUtaEgwfgIS
DHwAJQPWfwDdRbmDZUtSKOkOhiSvdI4Ytfeo0XrHf11EysD/bW/p8KttxI6NESRq2kBfIfjeY5fu
528LLa2GFsZcPpqKUrp5JJV4QbD/i6PTPvY6aF1kZmcpEYb/3sL9567IMNOJ34iG5f1jZSHm7lzM
OO+3S65p+NgzYEE0ekbTeloCN1rQSV5utIJgAQBFQiIpM6XTRpsAXjf6Vn9HUWu2j+rH5LcB++6Q
SJcrCffX7R4eCkag/zS+Atgi1fPfJ2IWqXEVfl5rKDe3Qv4D1FVAImhhKEclFZC2CeLe3ib7sCA1
FV+Gwm/As+IP6bw2ui2C4rKKfv8b8ZPhXnV7jEkRu5Ldzr/1uWD5oHRkFizTgE60XPxzcDIhGiTM
pWP6RCeZ/S0qWOxujChRkd2KtttmDt4mxzBNnktfu7OaKRT9/1xNyxj/qChhRc/TId9Ul2RJZQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D2CEB3950AC280"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
content-md5: qgWwpgoe0Bn7dMGZwloAYg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d9ca1a7f-aafc-4101-9c92-97695608ca89
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-d7414b09-ac2e-1880-776e-7c198cee5614/test-blob-a47228eb-6b55-e743-9742-caec759a8180?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
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
etag: "0x22C6418A176BBC0"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b36435af-21bd-4b22-a838-436c48a4c176
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-d7414b09-ac2e-1880-776e-7c198cee5614?restype=container

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
x-ms-request-id: f290ad1a-a6fc-4db2-b6b6-d6c9d966330b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-7cd38497-4cf7-e25f-ca9c-39d363135491?restype=container

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
etag: "0x24B9C2F66FCB020"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf06fe7c-0297-4db4-a269-1a6e9f7a87da
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-7cd38497-4cf7-e25f-ca9c-39d363135491/test-blob-c2ea3d80-6567-c4b6-8161-797c6b0b244f

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
UcR9eCvfVX+5HN2LKHJrv81O01l5hv0xzg77ltLidr946oGelttmoedrCUuHKpwP9bmvHTfK1cvH
TKkc5L+s1qUeEz7wzCnx5zJyDn2yqaNy7KEYMlmIrRS210kxSbwovjKlaRddHiiPvjUEWMZNFKIF
qvcek6NMlWUpOvXfv551SVBKDT+MFM14iXQkg1ROaMOnK5/FCiqPWNOyNOQyr/6Wjg51AwdieZUp
pQouKBIR2tEyOJT/sD8murRr2eDpRdl2jfRF2GS7RLEKm2QfYTDBoVkTAHdpl93OT0lT9qC0QF8x
t5odywJsdvTi9RXaB1mDqjiH1kViDPYXdokbZ00RVVoF7amWo9VXpoqCh6HI9Ejv0ExnLWoZz6uk
BlR4UA6n0J+61Rmw7AZiLzC734VUToJBLJcAqifw6x3+8p2B3lV727YCDR8uPuNFBP05XvAlT7fR
NyR3piZ4yen7svpp4FHaQATPUkBjEu20u6Upto0t2KLlsKYwBDSPiUQ1Mozp3COsXx7rVv12bSU2
w+uBThJcztpYhDCrqTvPP8j8Ld9hyt6BfVduQYGkbkKB+kBJDTsx2WSxkVjzAbXiHBY1ej9F1fgM
ANC77YxYsxXuKa/6hjGNy1R6rzmGjnyiiyVqb/QCOyRIPA1qduvYWd1CBNcF55XlqK7ryiW+hXFU
GGJm7UMh6+2LskkkIlVoolZbRImlnaOPhcdFFnD+irebFl2JcmuaIBnpejVMwIVYgyjPYkHor3u+
1mh729R8jCeSiAv43y/qwSRwuyJtQ8RB7ZNILyh1s2fiypsDHkREbO4Oujh5YKP45aAdePNYUZOj
Oe5BNF3+HNWkFRWU56PfK080X4iMyIzvT0mHWDpziXkHX+RWAzeQD55i1EqOZP79PU2kI/ELF3Fi
UeUTd8ObMYycjIe+iSgXo1DqKfNBYetLihrtz2WH/Ehy87JSfZjbx6O+8td2PrQkjX+hIO5+IO/5
yOyorWImFJA/TJV2xCa3D2FPgm4T1ExmyELm5ttZ9NLCWLSrMhpBmN5HN/IfrshZ6RGMLp2A5vOg
QuQgQC205VfCs2xxC9xHDuqQzJ1aRhl5jf3KzcY1QXLBC/A1IVewklGaXPpb5901RB+y8BlWRfvK
prMw6heRjXL5sADsEuyT4DlLv+ofHaUflIimglFYasX0anukf6g5Cc+HYTbdSDIyHw/gC4YRq4gN
EFWP6gshoUY696dx72CQEbYal7xvQkxWc2JBeF8/477ylm5Tqh7DZsDwolGKwTCuT/nP9hTMns4J
OXeo4Cnm+hTpfljyPWeYVjH7fp/7y7Ixkyhlb+2qJvegSXGmGoaXCag8oULXvBGSN5/i0CAuDg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2310D1DA69C5660"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
content-md5: m4bqnI0LjBnJ9AeJxORmDw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 143fe7c8-75c8-46bd-8f69-74bea7adc016
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-7cd38497-4cf7-e25f-ca9c-39d363135491/test-blob-c2ea3d80-6567-c4b6-8161-797c6b0b244f?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 4c77c56e-8000-278b-3e58-6051f4f6f13b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2310D1DA69C5660"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-lease-id: 4c77c56e-8000-278b-3e58-6051f4f6f13b
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5572e2d0-1801-4f38-960b-204958637203
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-7cd38497-4cf7-e25f-ca9c-39d363135491/test-blob-c2ea3d80-6567-c4b6-8161-797c6b0b244f?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-lease-id: 4c77c56e-8000-278b-3e58-6051f4f6f13b
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
etag: "0x2163B22082997C0"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3fe3fe89-4f53-49ee-9c7e-f3e98ce8d17a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-7cd38497-4cf7-e25f-ca9c-39d363135491?restype=container

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
x-ms-request-id: 96301605-9c58-4489-8817-4f27a18c677f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

