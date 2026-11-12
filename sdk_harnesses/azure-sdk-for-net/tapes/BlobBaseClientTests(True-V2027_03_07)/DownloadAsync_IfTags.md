## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-26dd1301-bb3f-5bf9-377c-12a674b35755?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_IfTags
now: 2026-11-12T00:47:54.1632539+00:00

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
etag: "0x250F8B9FAFBEAE0"
last-modified: Thu, 12 Nov 2026 00:47:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8b899a5d-44b9-4953-bf1e-63a36f440c94
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-26dd1301-bb3f-5bf9-377c-12a674b35755/test-blob-21fe2a34-7307-4d62-93e0-14af70017db5

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
cWk4FepC9bD6m/nS5j4s6Q4BsPRp311YC/LTeBxA0nV7Usgwl38tvh4sK6TCJnX4UCiYcwJj7JIM
4Ar4bnyUuciEV5N2/FKO1PHWPLO5leV82yjzqF9zGGY2I7d1NVChmHLbPs7iglPVCZ8Qja/eUkok
e5NUoBBpET8tP9ibGJ+hNKRA3VcWmljUHZ+/You2WNFsUbm8TfdicSyPtEJ7OvAAblgLnXTyDeA6
f4Jxqa6zd+cHLsfl5Oes3msqhuYVWeOuv/MyqrpcekPZgc118cd+2z1acwwoGolxXr4Ix4f6JCWf
wuq7gcwtqrSEC2IZN+2krKqou+bXhqRpwUz7U7K83lyn1S7dw1pwLchXpA8mVybRZBvcUWk/yDxF
Ub+AMVcCyC0FcWK+xulPOI0df+KVQmolKu6X34zzZw3ymHGb7/txVdvhIOXEEp4xjBnbIkharw5U
WwZoauigEglUzC13tEiSqykGtCGFYBhQZVNzF0XFmOljRpT0CeryQQ7bcEVxutfQSXceU/vsz/vu
GAWVLfvEjzNEFG20naI+FHITqe/S3qt7os3OpkXtdnaZBvHlXBQSFuESLaZpHKzV4D+I2SULGzlZ
Goot9unuVp32GpexWLdeAJMOwLEFEYUh+MYGZZ1Rjuq3jEKJ5B/3I9cIcgIUJIeHKdiS/FuIVAgF
DP0j6PD/pYys+cx11RxzFpza/J6DDNQ/fjvFv5KPLzg5g9gi1DvmCc11Zyq6ElS7HuW+rVdqggAp
42m1Oeb6HcqUO1FEUUJg9PPRDaSqhGzmCaCs0IHhzgHY+fDRMM/me0pgJdYCd82jXrljmXVbfl/9
zi9GTU1Is2xQbFdRj8Mk6pFaSl6V45LSCXHIfTWMfHqR1GKfoC78F3Jpsgt1Uc72Pq/jATQAaOqd
c0PbgDU3w+/dv7thhUljXTLsLDGHXLej0j6GqHtFkWt3ASzqIJc9Mu8bmJITlLllgKMCEzu5FhaL
OK72sRp0ly1P6YMdeDybr/pBa8Qljz2FISjYQ30wvusVX+joRoHUpwBkxKs1RwhmZmRBd6pSZqlx
cI/ynFSwHyuYBxlUsmh5bcPEwMqRUNkgcd0Y7kZAw/g+d9Xx4QustKV/nEDuErP8yAnmjaXe3yC2
0ip2lzDlWEMgFTuSh4y4FwskErOYMV8pHCU8WTVSYJi0Og7gNR11mkT8zvx4aUB9LnWZuc1tHaHL
TXoKqP4NzbWj3Ux91+Lur3dunGNisLPlvyu/uKbKRx1tFeeiavFG7gBG1YvzAFaTqwlV/oE+aJzH
JenTTRQP2JYvD8H6S0WFKK1iHNsn8b7ULA2cdUicL61L20QIcqHrN/31xPCUmWDEz9bU20zBnw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x238DC5C1865FA60"
last-modified: Thu, 12 Nov 2026 00:47:54 GMT
content-md5: rlJHYNCwMEVhvpCsZ86MlQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 265dedd5-daa9-4a1a-b35b-849dbb050a21
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-26dd1301-bb3f-5bf9-377c-12a674b35755/test-blob-21fe2a34-7307-4d62-93e0-14af70017db5?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-request-id: 04d195e4-5949-49c6-a702-7d9ca665a826
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:54 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-26dd1301-bb3f-5bf9-377c-12a674b35755/test-blob-21fe2a34-7307-4d62-93e0-14af70017db5

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_4
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:54 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:54 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x238DC5C1865FA60"
content-md5: rlJHYNCwMEVhvpCsZ86MlQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2ec4e7d7-ce67-48ad-bf39-96b69628797d
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:54 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: rlJHYNCwMEVhvpCsZ86MlQ==
x-ms-tag-count: 1
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
cWk4FepC9bD6m/nS5j4s6Q4BsPRp311YC/LTeBxA0nV7Usgwl38tvh4sK6TCJnX4UCiYcwJj7JIM
4Ar4bnyUuciEV5N2/FKO1PHWPLO5leV82yjzqF9zGGY2I7d1NVChmHLbPs7iglPVCZ8Qja/eUkok
e5NUoBBpET8tP9ibGJ+hNKRA3VcWmljUHZ+/You2WNFsUbm8TfdicSyPtEJ7OvAAblgLnXTyDeA6
f4Jxqa6zd+cHLsfl5Oes3msqhuYVWeOuv/MyqrpcekPZgc118cd+2z1acwwoGolxXr4Ix4f6JCWf
wuq7gcwtqrSEC2IZN+2krKqou+bXhqRpwUz7U7K83lyn1S7dw1pwLchXpA8mVybRZBvcUWk/yDxF
Ub+AMVcCyC0FcWK+xulPOI0df+KVQmolKu6X34zzZw3ymHGb7/txVdvhIOXEEp4xjBnbIkharw5U
WwZoauigEglUzC13tEiSqykGtCGFYBhQZVNzF0XFmOljRpT0CeryQQ7bcEVxutfQSXceU/vsz/vu
GAWVLfvEjzNEFG20naI+FHITqe/S3qt7os3OpkXtdnaZBvHlXBQSFuESLaZpHKzV4D+I2SULGzlZ
Goot9unuVp32GpexWLdeAJMOwLEFEYUh+MYGZZ1Rjuq3jEKJ5B/3I9cIcgIUJIeHKdiS/FuIVAgF
DP0j6PD/pYys+cx11RxzFpza/J6DDNQ/fjvFv5KPLzg5g9gi1DvmCc11Zyq6ElS7HuW+rVdqggAp
42m1Oeb6HcqUO1FEUUJg9PPRDaSqhGzmCaCs0IHhzgHY+fDRMM/me0pgJdYCd82jXrljmXVbfl/9
zi9GTU1Is2xQbFdRj8Mk6pFaSl6V45LSCXHIfTWMfHqR1GKfoC78F3Jpsgt1Uc72Pq/jATQAaOqd
c0PbgDU3w+/dv7thhUljXTLsLDGHXLej0j6GqHtFkWt3ASzqIJc9Mu8bmJITlLllgKMCEzu5FhaL
OK72sRp0ly1P6YMdeDybr/pBa8Qljz2FISjYQ30wvusVX+joRoHUpwBkxKs1RwhmZmRBd6pSZqlx
cI/ynFSwHyuYBxlUsmh5bcPEwMqRUNkgcd0Y7kZAw/g+d9Xx4QustKV/nEDuErP8yAnmjaXe3yC2
0ip2lzDlWEMgFTuSh4y4FwskErOYMV8pHCU8WTVSYJi0Og7gNR11mkT8zvx4aUB9LnWZuc1tHaHL
TXoKqP4NzbWj3Ux91+Lur3dunGNisLPlvyu/uKbKRx1tFeeiavFG7gBG1YvzAFaTqwlV/oE+aJzH
JenTTRQP2JYvD8H6S0WFKK1iHNsn8b7ULA2cdUicL61L20QIcqHrN/31xPCUmWDEz9bU20zBnw==
```

## Interaction 4: GET /devstoreaccount1/test-container-26dd1301-bb3f-5bf9-377c-12a674b35755/test-blob-21fe2a34-7307-4d62-93e0-14af70017db5

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_5
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:54 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:54 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x238DC5C1865FA60"
content-md5: rlJHYNCwMEVhvpCsZ86MlQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5227a47c-d575-4005-bf74-ee39b77b5a3d
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:54 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: rlJHYNCwMEVhvpCsZ86MlQ==
x-ms-tag-count: 1
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
cWk4FepC9bD6m/nS5j4s6Q4BsPRp311YC/LTeBxA0nV7Usgwl38tvh4sK6TCJnX4UCiYcwJj7JIM
4Ar4bnyUuciEV5N2/FKO1PHWPLO5leV82yjzqF9zGGY2I7d1NVChmHLbPs7iglPVCZ8Qja/eUkok
e5NUoBBpET8tP9ibGJ+hNKRA3VcWmljUHZ+/You2WNFsUbm8TfdicSyPtEJ7OvAAblgLnXTyDeA6
f4Jxqa6zd+cHLsfl5Oes3msqhuYVWeOuv/MyqrpcekPZgc118cd+2z1acwwoGolxXr4Ix4f6JCWf
wuq7gcwtqrSEC2IZN+2krKqou+bXhqRpwUz7U7K83lyn1S7dw1pwLchXpA8mVybRZBvcUWk/yDxF
Ub+AMVcCyC0FcWK+xulPOI0df+KVQmolKu6X34zzZw3ymHGb7/txVdvhIOXEEp4xjBnbIkharw5U
WwZoauigEglUzC13tEiSqykGtCGFYBhQZVNzF0XFmOljRpT0CeryQQ7bcEVxutfQSXceU/vsz/vu
GAWVLfvEjzNEFG20naI+FHITqe/S3qt7os3OpkXtdnaZBvHlXBQSFuESLaZpHKzV4D+I2SULGzlZ
Goot9unuVp32GpexWLdeAJMOwLEFEYUh+MYGZZ1Rjuq3jEKJ5B/3I9cIcgIUJIeHKdiS/FuIVAgF
DP0j6PD/pYys+cx11RxzFpza/J6DDNQ/fjvFv5KPLzg5g9gi1DvmCc11Zyq6ElS7HuW+rVdqggAp
42m1Oeb6HcqUO1FEUUJg9PPRDaSqhGzmCaCs0IHhzgHY+fDRMM/me0pgJdYCd82jXrljmXVbfl/9
zi9GTU1Is2xQbFdRj8Mk6pFaSl6V45LSCXHIfTWMfHqR1GKfoC78F3Jpsgt1Uc72Pq/jATQAaOqd
c0PbgDU3w+/dv7thhUljXTLsLDGHXLej0j6GqHtFkWt3ASzqIJc9Mu8bmJITlLllgKMCEzu5FhaL
OK72sRp0ly1P6YMdeDybr/pBa8Qljz2FISjYQ30wvusVX+joRoHUpwBkxKs1RwhmZmRBd6pSZqlx
cI/ynFSwHyuYBxlUsmh5bcPEwMqRUNkgcd0Y7kZAw/g+d9Xx4QustKV/nEDuErP8yAnmjaXe3yC2
0ip2lzDlWEMgFTuSh4y4FwskErOYMV8pHCU8WTVSYJi0Og7gNR11mkT8zvx4aUB9LnWZuc1tHaHL
TXoKqP4NzbWj3Ux91+Lur3dunGNisLPlvyu/uKbKRx1tFeeiavFG7gBG1YvzAFaTqwlV/oE+aJzH
JenTTRQP2JYvD8H6S0WFKK1iHNsn8b7ULA2cdUicL61L20QIcqHrN/31xPCUmWDEz9bU20zBnw==
```

## Interaction 5: GET /devstoreaccount1/test-container-26dd1301-bb3f-5bf9-377c-12a674b35755/test-blob-21fe2a34-7307-4d62-93e0-14af70017db5

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_6
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:54 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:54 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x238DC5C1865FA60"
content-md5: rlJHYNCwMEVhvpCsZ86MlQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bac889a9-de60-4e31-8802-9473fcf7fa61
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:54 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: rlJHYNCwMEVhvpCsZ86MlQ==
x-ms-tag-count: 1
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
cWk4FepC9bD6m/nS5j4s6Q4BsPRp311YC/LTeBxA0nV7Usgwl38tvh4sK6TCJnX4UCiYcwJj7JIM
4Ar4bnyUuciEV5N2/FKO1PHWPLO5leV82yjzqF9zGGY2I7d1NVChmHLbPs7iglPVCZ8Qja/eUkok
e5NUoBBpET8tP9ibGJ+hNKRA3VcWmljUHZ+/You2WNFsUbm8TfdicSyPtEJ7OvAAblgLnXTyDeA6
f4Jxqa6zd+cHLsfl5Oes3msqhuYVWeOuv/MyqrpcekPZgc118cd+2z1acwwoGolxXr4Ix4f6JCWf
wuq7gcwtqrSEC2IZN+2krKqou+bXhqRpwUz7U7K83lyn1S7dw1pwLchXpA8mVybRZBvcUWk/yDxF
Ub+AMVcCyC0FcWK+xulPOI0df+KVQmolKu6X34zzZw3ymHGb7/txVdvhIOXEEp4xjBnbIkharw5U
WwZoauigEglUzC13tEiSqykGtCGFYBhQZVNzF0XFmOljRpT0CeryQQ7bcEVxutfQSXceU/vsz/vu
GAWVLfvEjzNEFG20naI+FHITqe/S3qt7os3OpkXtdnaZBvHlXBQSFuESLaZpHKzV4D+I2SULGzlZ
Goot9unuVp32GpexWLdeAJMOwLEFEYUh+MYGZZ1Rjuq3jEKJ5B/3I9cIcgIUJIeHKdiS/FuIVAgF
DP0j6PD/pYys+cx11RxzFpza/J6DDNQ/fjvFv5KPLzg5g9gi1DvmCc11Zyq6ElS7HuW+rVdqggAp
42m1Oeb6HcqUO1FEUUJg9PPRDaSqhGzmCaCs0IHhzgHY+fDRMM/me0pgJdYCd82jXrljmXVbfl/9
zi9GTU1Is2xQbFdRj8Mk6pFaSl6V45LSCXHIfTWMfHqR1GKfoC78F3Jpsgt1Uc72Pq/jATQAaOqd
c0PbgDU3w+/dv7thhUljXTLsLDGHXLej0j6GqHtFkWt3ASzqIJc9Mu8bmJITlLllgKMCEzu5FhaL
OK72sRp0ly1P6YMdeDybr/pBa8Qljz2FISjYQ30wvusVX+joRoHUpwBkxKs1RwhmZmRBd6pSZqlx
cI/ynFSwHyuYBxlUsmh5bcPEwMqRUNkgcd0Y7kZAw/g+d9Xx4QustKV/nEDuErP8yAnmjaXe3yC2
0ip2lzDlWEMgFTuSh4y4FwskErOYMV8pHCU8WTVSYJi0Og7gNR11mkT8zvx4aUB9LnWZuc1tHaHL
TXoKqP4NzbWj3Ux91+Lur3dunGNisLPlvyu/uKbKRx1tFeeiavFG7gBG1YvzAFaTqwlV/oE+aJzH
JenTTRQP2JYvD8H6S0WFKK1iHNsn8b7ULA2cdUicL61L20QIcqHrN/31xPCUmWDEz9bU20zBnw==
```

## Interaction 6: DELETE /devstoreaccount1/test-container-26dd1301-bb3f-5bf9-377c-12a674b35755?restype=container

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
x-ms-request-id: d61e023f-ac20-40c5-8113-4ea20a99d3e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

