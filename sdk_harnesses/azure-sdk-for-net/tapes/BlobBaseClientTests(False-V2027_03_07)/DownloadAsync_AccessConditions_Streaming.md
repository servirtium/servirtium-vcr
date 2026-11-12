## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ecb96ea1-1dbc-8f61-b630-371ccb5c1dd6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_AccessConditions_Streaming
now: 2026-11-12T00:46:34.9956826+00:00

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
etag: "0x21BEC88CA5A7CC0"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 49dddbba-917c-4bee-ad80-f6c38629f2e2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ecb96ea1-1dbc-8f61-b630-371ccb5c1dd6/test-blob-e65a23ae-130e-f641-92f6-9fcdf3e537c9

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
jOXuVXmOjdCi+wI2MT/0khRKnSn4pWA8Ti9RlrhHlbrlb1wjG7AJE+HoSsEbKl52O6UHgb703eaE
sgdKPfcYW2VHUMLj0HZkQIpHD1ufICTR2loSPxT88ZF2n2ipv9bq0O9c09mbk2ouo0AzrM6L5ZHj
eGKcBRtQS18xbTENu4G0XT9sQk1KNUfv5JvTyETD6rrXxUZzTcvTC4d6aiU5Iei/f0+PH6JEmUIb
rSB/fYMaboJ3NvU6QA9zmDfFz8shtsOzE0j1NMsXkiwDWKCqVI0EYPyjwerzhD9AG4dqfsl2+fZd
zGk6JTm3X6PIN+huyEOpwW/PffTYv48JtBhErBRjjF6pTIgjyTrC7GJGK01X0VJDwLxap3sChQza
MXAhcrKPZaqJxXu7hvg0DZGSkpNBsePFAOxXCOXip8d7SZjKoXmvt8aizQzWiDrEJZnqb/J4mH+M
W3LGN1zFph20PzxfamwY49rNn+PX7nexk+JL+DfUA7AYPUUH6H9q3SfuIkn9ZLst0owXq/mbtWz6
FKR5ea7l3zyMRywmEPpbY8K86Mwusy4mHiaqvFe3fIfYDdPb8GN4CUINcRyOBsGSvEc338ygy2F1
UluIOiLk1MukTgMmgHNeRN+JIUIRmBdkGAAPgJ26OEFyZZ0I8M4gKJxR6bi9bDzU2JrtF6oeZLpD
IyIi1FQu6hbCsxrVVlQQafimwK5fpqzDO6cCzSCWVADixMyr/VRHI/+h+7gi/oJG3K6yeKQM5H12
X5mtKxz1K18Z85GIZGukXpyuvarzoTwkvPBy5Nxc1uBPNZ27mvfirNBZCAvwvndCDRkHXSbSgr5c
iG8sg0aDvR2xOC/O6MSkyxHampkxM/54L9bCVHi6fbPfXhGItiiJ1kvuP4VIdCRUYpEV9+clK1Rw
s1NvwGik97t77oqzGxXoUMRNQ/R4MLuxbfLnpYXMujO8GAPVGRXjSUjJzYWaoUZ8LKYi1+dg94OY
vVJ2vVI2rjNW9gMREzevavmsr2I1F8yranjeqeNLXCCAPFvDbYz1kx5RQ6tDaxlvc2zus0ggY6aG
ylPZVwRQC5njkdbb6/1tthxD49MgaP9fbzZ2XajYX9m1PKI5HDsaATgRX9lClIdvgP0r3H/TZWJT
eufO2q7wCzH9Ja9bNJrgKeKbDgglHNuuB9yqrIJZ4tY/5aFTSyaJIFSoRG7YE0xjSrOdN1ZaLl0M
H9LSRl+upEPYHE/4jd27Ee20fdds1vOQR2HPu6qA5bdDRixTt9r0+aArAPf8a73W4SVppbCFoEjf
Qv7+3+iYWDaYtEawZ1oTv4M3Qdb8k9uj+dmFFj8GvabjdHXb9hq4kqfAZLZ3JXrLVuUtTl5y4w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2001BF43853BF60"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
content-md5: M5RO0p+TLIOCbrIPshKJsQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d22890c8-04ff-45d6-9d1e-1dc5a5c9c259
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-ecb96ea1-1dbc-8f61-b630-371ccb5c1dd6/test-blob-e65a23ae-130e-f641-92f6-9fcdf3e537c9

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
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:35 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x2001BF43853BF60"
content-md5: M5RO0p+TLIOCbrIPshKJsQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 42c428cf-9ef4-4db7-85ff-ec759d6e84a6
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: M5RO0p+TLIOCbrIPshKJsQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
jOXuVXmOjdCi+wI2MT/0khRKnSn4pWA8Ti9RlrhHlbrlb1wjG7AJE+HoSsEbKl52O6UHgb703eaE
sgdKPfcYW2VHUMLj0HZkQIpHD1ufICTR2loSPxT88ZF2n2ipv9bq0O9c09mbk2ouo0AzrM6L5ZHj
eGKcBRtQS18xbTENu4G0XT9sQk1KNUfv5JvTyETD6rrXxUZzTcvTC4d6aiU5Iei/f0+PH6JEmUIb
rSB/fYMaboJ3NvU6QA9zmDfFz8shtsOzE0j1NMsXkiwDWKCqVI0EYPyjwerzhD9AG4dqfsl2+fZd
zGk6JTm3X6PIN+huyEOpwW/PffTYv48JtBhErBRjjF6pTIgjyTrC7GJGK01X0VJDwLxap3sChQza
MXAhcrKPZaqJxXu7hvg0DZGSkpNBsePFAOxXCOXip8d7SZjKoXmvt8aizQzWiDrEJZnqb/J4mH+M
W3LGN1zFph20PzxfamwY49rNn+PX7nexk+JL+DfUA7AYPUUH6H9q3SfuIkn9ZLst0owXq/mbtWz6
FKR5ea7l3zyMRywmEPpbY8K86Mwusy4mHiaqvFe3fIfYDdPb8GN4CUINcRyOBsGSvEc338ygy2F1
UluIOiLk1MukTgMmgHNeRN+JIUIRmBdkGAAPgJ26OEFyZZ0I8M4gKJxR6bi9bDzU2JrtF6oeZLpD
IyIi1FQu6hbCsxrVVlQQafimwK5fpqzDO6cCzSCWVADixMyr/VRHI/+h+7gi/oJG3K6yeKQM5H12
X5mtKxz1K18Z85GIZGukXpyuvarzoTwkvPBy5Nxc1uBPNZ27mvfirNBZCAvwvndCDRkHXSbSgr5c
iG8sg0aDvR2xOC/O6MSkyxHampkxM/54L9bCVHi6fbPfXhGItiiJ1kvuP4VIdCRUYpEV9+clK1Rw
s1NvwGik97t77oqzGxXoUMRNQ/R4MLuxbfLnpYXMujO8GAPVGRXjSUjJzYWaoUZ8LKYi1+dg94OY
vVJ2vVI2rjNW9gMREzevavmsr2I1F8yranjeqeNLXCCAPFvDbYz1kx5RQ6tDaxlvc2zus0ggY6aG
ylPZVwRQC5njkdbb6/1tthxD49MgaP9fbzZ2XajYX9m1PKI5HDsaATgRX9lClIdvgP0r3H/TZWJT
eufO2q7wCzH9Ja9bNJrgKeKbDgglHNuuB9yqrIJZ4tY/5aFTSyaJIFSoRG7YE0xjSrOdN1ZaLl0M
H9LSRl+upEPYHE/4jd27Ee20fdds1vOQR2HPu6qA5bdDRixTt9r0+aArAPf8a73W4SVppbCFoEjf
Qv7+3+iYWDaYtEawZ1oTv4M3Qdb8k9uj+dmFFj8GvabjdHXb9hq4kqfAZLZ3JXrLVuUtTl5y4w==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-ecb96ea1-1dbc-8f61-b630-371ccb5c1dd6?restype=container

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
x-ms-request-id: 24be8962-fd30-4fb3-8c70-cf4bf94cbab4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-2eaf7e69-2e3b-2c24-d45f-bac05ad86f48?restype=container

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
etag: "0x2215B07CAC13DC0"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7350a7fa-3cef-42c5-9f3f-c33a4543bf78
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-2eaf7e69-2e3b-2c24-d45f-bac05ad86f48/test-blob-45049f78-c87e-5ea6-5633-5b413375234a

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
cZHGuJw0qn5mytLA2FeG5R4cw8+vQ6eA/i4RrlmAnLmHVlthHn4sNdQwyHFbZFN82dShPRSfmS7p
RbptIvsl5i0ZOIH8JMeg7477fno2JZnaldSF3l6k6L0teNjEvxLZCuJDQizSgLQMAU6GpBqzsyAg
k4wmoAfPdVDDzqzu2zB7IXSY8uJtCBUgeNwPHUSjesW4pCuGsmradM3cDrEIHiYeCoKmGsA9sop2
Bigqv1cLIFTnNjcE9W8KvX4VkflkF1m28RPC/F8EevGhD6tBr7V20O1cIOjuGRUSnFxCKCGREu7O
dM1DSSP04rtFY+XDyA7In8ELB/dwx9j+r2ACwlHQD/y9cjvoMobKZz4sqbYvTtNOeYlfhQr3Xaz0
RZrD8iBpdVPoBlXS4Gw6QaC4RB4izmCMtEjIcIryxRSO8+zsBnUdwjNiRkh+fJgcJUNqPhmO0nc5
Nj3XoQTI9kBAQ+1/Tjoqm4Hqv4cYDjivrEtGh4f7ACB1ss83RSEvmU8HPTirnNYIQKOYoxPvISgF
J/W5gW+5RUPNCpxr8lVfuyU4END/BA90PkbjYlwMhpGnMh4sdRfgTvf13pI6nU1OOOjuthBYBiPl
REMo1ePmwIMKw8A3M0UNWMLYCiV8OqD5lSl0Hs+ATyz6RjDUt3gUDx4OL9mNFgWi4V5Nf/v+aQmi
L0C5cqK0iXSUPO0UOKBKw/sHbgvGa34k0T1wMs8w/N0nMYg4W517WqVl+doXjai+A7sA9vr+28PB
lKBlQ1ekY0AQ7QcYEWhejBNmYXKkDUOUsi4ULwXiKFXEdsf8FhZOwJWZB6CgpvJTomrmmHpQHIZc
0JEokDQ7LcSxU5uhYXX9F6DdCwaj9As8wIya+5DbdFlAn0WFJjBgXdnb71NWskH06YDZchGAudyF
68+noTI01t5BYMIwd/Fwfa4tyAS45Q5LpREQAQFIv+Vp/zpguLymphh0FVF+xHKOafVjU/HXzQXB
W/sgI9Xd+KHcx3e3EMTxhiHsQ9C8zOGfgpgL5Wv0kTI1nlzBhoNDlxywov361lgxcc3P64k0BI8a
gKE90RM15zVFgXFnMP+eqayzDCrjpas/2XOeJaaoAJrNpwXhBcUIe7vItFXmykHNMUHdgfhkNtv2
/viglsKOnIHXmYn6vKPnqpBvG/FWWA8y0fNky3+haHAq6wfNaOX4OhfTDzG403We9tZn9Rrpn6Xo
bsXPKdEBNjAYz9CbGUKrduHZgkneev59xtSoOXNVQEti5PofKRBF0tgAnwOkA9yUvH45EB1cCvTH
UWP9Wfy9wo+EOTVHi03Qk7Bw3dr62cP4FH30HDAtBdkGWNitSHjcQ910IMmnTDAxaHxt6ywZzA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x264B23E8D700E60"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
content-md5: bjUCi/t2Uub1Sm8EdIMBcw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 39e90c44-923c-4605-86fb-475c1f8f2a43
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-2eaf7e69-2e3b-2c24-d45f-bac05ad86f48/test-blob-45049f78-c87e-5ea6-5633-5b413375234a

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:46:34 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:35 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x264B23E8D700E60"
content-md5: bjUCi/t2Uub1Sm8EdIMBcw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce010cdb-6f10-46ae-8557-9c524c1b2409
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: bjUCi/t2Uub1Sm8EdIMBcw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
cZHGuJw0qn5mytLA2FeG5R4cw8+vQ6eA/i4RrlmAnLmHVlthHn4sNdQwyHFbZFN82dShPRSfmS7p
RbptIvsl5i0ZOIH8JMeg7477fno2JZnaldSF3l6k6L0teNjEvxLZCuJDQizSgLQMAU6GpBqzsyAg
k4wmoAfPdVDDzqzu2zB7IXSY8uJtCBUgeNwPHUSjesW4pCuGsmradM3cDrEIHiYeCoKmGsA9sop2
Bigqv1cLIFTnNjcE9W8KvX4VkflkF1m28RPC/F8EevGhD6tBr7V20O1cIOjuGRUSnFxCKCGREu7O
dM1DSSP04rtFY+XDyA7In8ELB/dwx9j+r2ACwlHQD/y9cjvoMobKZz4sqbYvTtNOeYlfhQr3Xaz0
RZrD8iBpdVPoBlXS4Gw6QaC4RB4izmCMtEjIcIryxRSO8+zsBnUdwjNiRkh+fJgcJUNqPhmO0nc5
Nj3XoQTI9kBAQ+1/Tjoqm4Hqv4cYDjivrEtGh4f7ACB1ss83RSEvmU8HPTirnNYIQKOYoxPvISgF
J/W5gW+5RUPNCpxr8lVfuyU4END/BA90PkbjYlwMhpGnMh4sdRfgTvf13pI6nU1OOOjuthBYBiPl
REMo1ePmwIMKw8A3M0UNWMLYCiV8OqD5lSl0Hs+ATyz6RjDUt3gUDx4OL9mNFgWi4V5Nf/v+aQmi
L0C5cqK0iXSUPO0UOKBKw/sHbgvGa34k0T1wMs8w/N0nMYg4W517WqVl+doXjai+A7sA9vr+28PB
lKBlQ1ekY0AQ7QcYEWhejBNmYXKkDUOUsi4ULwXiKFXEdsf8FhZOwJWZB6CgpvJTomrmmHpQHIZc
0JEokDQ7LcSxU5uhYXX9F6DdCwaj9As8wIya+5DbdFlAn0WFJjBgXdnb71NWskH06YDZchGAudyF
68+noTI01t5BYMIwd/Fwfa4tyAS45Q5LpREQAQFIv+Vp/zpguLymphh0FVF+xHKOafVjU/HXzQXB
W/sgI9Xd+KHcx3e3EMTxhiHsQ9C8zOGfgpgL5Wv0kTI1nlzBhoNDlxywov361lgxcc3P64k0BI8a
gKE90RM15zVFgXFnMP+eqayzDCrjpas/2XOeJaaoAJrNpwXhBcUIe7vItFXmykHNMUHdgfhkNtv2
/viglsKOnIHXmYn6vKPnqpBvG/FWWA8y0fNky3+haHAq6wfNaOX4OhfTDzG403We9tZn9Rrpn6Xo
bsXPKdEBNjAYz9CbGUKrduHZgkneev59xtSoOXNVQEti5PofKRBF0tgAnwOkA9yUvH45EB1cCvTH
UWP9Wfy9wo+EOTVHi03Qk7Bw3dr62cP4FH30HDAtBdkGWNitSHjcQ910IMmnTDAxaHxt6ywZzA==
```

## Interaction 7: DELETE /devstoreaccount1/test-container-2eaf7e69-2e3b-2c24-d45f-bac05ad86f48?restype=container

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
x-ms-request-id: 97e84bcc-c009-4423-ac90-2f5d424b428c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-fd9a9337-b886-51f9-c74d-c3b3b3c019ac?restype=container

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
etag: "0x201C2A6D91B73A0"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c3d2d88-136c-45d2-894d-89463ba638a5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-fd9a9337-b886-51f9-c74d-c3b3b3c019ac/test-blob-d7abd0ff-2350-d69c-a71f-0a7edf79f419

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
7ItgDUQzXXs2FcmWSwv8u0UxNliSHEW/prN9MQTyq5YZrlWnFRUGAzUfxnHvYwW8UAdtgYnBGtBF
oWeQtSx2Q2kyfJy1VaYwKjIic1XUz0OuweD8hSkMV5SFYXSudk0IqIIHvOZpBvthPVZWn6Z6cdEj
4vRMeb5AJSUHMPMygbTlGcvSzRJcRLvkm0fStrjuCvCiipRZvC7Ex5bBYdUILruicYbbp6S+xp04
Z912bW9sGSYDkPcgi1ycDgZ8m+Pm3G2MMEQyEmNM48P2IFRRTVkmVEevBZ7DguUpP5idQiu5Uotw
6j0rOgfCtqwzKWsIS8GsVUacN9fPyK5fCNPKrqGYPc7I4GMc+xlA7E7xkFl6IPPW8e3kHRu0oSGP
yzIz+AgKm+udP2pekFktXEqI3ThU5eff87y0syCyFD9BjTDnDPRF5vRt3eGJeGGTt8DQK8PpOuZK
UwRMVujL6isqHQIpRU9WQ/ZE5wgGVntbIPxf4uh7WFNJnbnv+ZAMofK2XlteanFxeejNpVLeQ/yJ
8DXsbAhCr8Sv36iWZkplN0YVT/gf/LaK7WgArrMAa1m8ZghaHzTqdK+Wr4rJ2xOeZ20MyfQEafN/
YX+fQQERr3RO2f9BCxcRKttJiU0rwBJVYkZF9KFluP0V2r61SzKthP8VegETXVxV+p4Yut+lU6Fs
St+6zLvS6SECKzBZXN+pmwRNFkURQgXq8PkDTP0eb4ccSQBS8rhEQ5HgEDEr+56+bh/bVz1bWwja
0NvBz5wj5LypPBPfV6hLCNO0MDHTvvRaRN7eQhdKwe74dyLcg3P0vCx0gr6L3xd2j05qpirXBhHn
Zoq+RaGkXnsk5t+GboVfwHQEXzw2z2TGZ7PI4BrEIHEQ9RzoNXeLzyNDZvg48CDJCua106fVsJcm
+N3t3H5hYMZtdXlpdor9eI8Z82hrjneT/9UzDk3KO0SEwj2ZnvOk4QUyynqnX5RcuFoXu70uumpm
WtypLVJ4ozk05bNNY9qbdBFjOMP87KBA11Xzsn+HVQjTM0MX+rSyuiZBc3rgD1V/e0esy4GmaW08
aVX9hPG5rI+reS+WhHlcsH6du3klX8gAczY42oqGLMrW2pFftTU0h8bqNZUl6ffNUBoDCa70FgmM
/RG7gdIEJUxlwKro/fpIaDSyOioz2oo/aopwgiMc4cOH0rgkeQbz5hBIwChM5VIfu6F5QdvfWSKG
fBZIlKIpSd/mYCtCI+4tv1QZ6hli8oU3UMeCop/oqHiVnv3vq1FtH3dIZoUn3ZeyS4KHxW4II4qR
EEPapqY//riyrIXxPhQCrMqiGYsAEHMvz1YcYeIKjXpzXpoNknjQCGjMdTASwQ1uhBmjZQr+kQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21A928AD8449A00"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
content-md5: aBG1v2fjk5EVLLTbS8fG3g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 697b2260-6944-4ffc-abfc-87e82c0b514d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-fd9a9337-b886-51f9-c74d-c3b3b3c019ac/test-blob-d7abd0ff-2350-d69c-a71f-0a7edf79f419

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:46:34 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:35 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x21A928AD8449A00"
content-md5: aBG1v2fjk5EVLLTbS8fG3g==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dd0f0c4d-71f0-4bad-be9e-12aa22bce954
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: aBG1v2fjk5EVLLTbS8fG3g==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
7ItgDUQzXXs2FcmWSwv8u0UxNliSHEW/prN9MQTyq5YZrlWnFRUGAzUfxnHvYwW8UAdtgYnBGtBF
oWeQtSx2Q2kyfJy1VaYwKjIic1XUz0OuweD8hSkMV5SFYXSudk0IqIIHvOZpBvthPVZWn6Z6cdEj
4vRMeb5AJSUHMPMygbTlGcvSzRJcRLvkm0fStrjuCvCiipRZvC7Ex5bBYdUILruicYbbp6S+xp04
Z912bW9sGSYDkPcgi1ycDgZ8m+Pm3G2MMEQyEmNM48P2IFRRTVkmVEevBZ7DguUpP5idQiu5Uotw
6j0rOgfCtqwzKWsIS8GsVUacN9fPyK5fCNPKrqGYPc7I4GMc+xlA7E7xkFl6IPPW8e3kHRu0oSGP
yzIz+AgKm+udP2pekFktXEqI3ThU5eff87y0syCyFD9BjTDnDPRF5vRt3eGJeGGTt8DQK8PpOuZK
UwRMVujL6isqHQIpRU9WQ/ZE5wgGVntbIPxf4uh7WFNJnbnv+ZAMofK2XlteanFxeejNpVLeQ/yJ
8DXsbAhCr8Sv36iWZkplN0YVT/gf/LaK7WgArrMAa1m8ZghaHzTqdK+Wr4rJ2xOeZ20MyfQEafN/
YX+fQQERr3RO2f9BCxcRKttJiU0rwBJVYkZF9KFluP0V2r61SzKthP8VegETXVxV+p4Yut+lU6Fs
St+6zLvS6SECKzBZXN+pmwRNFkURQgXq8PkDTP0eb4ccSQBS8rhEQ5HgEDEr+56+bh/bVz1bWwja
0NvBz5wj5LypPBPfV6hLCNO0MDHTvvRaRN7eQhdKwe74dyLcg3P0vCx0gr6L3xd2j05qpirXBhHn
Zoq+RaGkXnsk5t+GboVfwHQEXzw2z2TGZ7PI4BrEIHEQ9RzoNXeLzyNDZvg48CDJCua106fVsJcm
+N3t3H5hYMZtdXlpdor9eI8Z82hrjneT/9UzDk3KO0SEwj2ZnvOk4QUyynqnX5RcuFoXu70uumpm
WtypLVJ4ozk05bNNY9qbdBFjOMP87KBA11Xzsn+HVQjTM0MX+rSyuiZBc3rgD1V/e0esy4GmaW08
aVX9hPG5rI+reS+WhHlcsH6du3klX8gAczY42oqGLMrW2pFftTU0h8bqNZUl6ffNUBoDCa70FgmM
/RG7gdIEJUxlwKro/fpIaDSyOioz2oo/aopwgiMc4cOH0rgkeQbz5hBIwChM5VIfu6F5QdvfWSKG
fBZIlKIpSd/mYCtCI+4tv1QZ6hli8oU3UMeCop/oqHiVnv3vq1FtH3dIZoUn3ZeyS4KHxW4II4qR
EEPapqY//riyrIXxPhQCrMqiGYsAEHMvz1YcYeIKjXpzXpoNknjQCGjMdTASwQ1uhBmjZQr+kQ==
```

## Interaction 11: DELETE /devstoreaccount1/test-container-fd9a9337-b886-51f9-c74d-c3b3b3c019ac?restype=container

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
x-ms-request-id: a80ce441-2976-4605-8a37-6e784bd5aedd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-2310d252-9b33-1c42-0e48-aedcc8662770?restype=container

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
etag: "0x2431967E4D937E0"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0362aa82-b1a2-4087-9c4d-7b5ac30f0a6d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-2310d252-9b33-1c42-0e48-aedcc8662770/test-blob-cbf5caf5-019f-21da-10b4-ef715f01481c

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
dM2bPeehf+XL9s0RCEIt9Y8AUZP6211kjo7JB3TADUH4mgkS3bcxsVMqVz3OMBTLG7lMyBSTdplv
Nq5Z13dxC+mLGW45GhfYz6BAz4Qgll15/ey7c0UsZCRwo6cI19nbuUtTQhemkgChdPl0U6YUTp9R
39mKtpejXrVKyHdvz/fHZBY4zFRF02vsGf5LuBB9W1QHt/f/UAKzr+NiXMmIMaUBre6Q3IJLCwxu
nZyZWKakzGwiZxj/xxQThBxw43aiZOdZSQsi7X/SvKvrkbNmGlc9vo9dZcmMAuXafFhl2iiWzDm0
Pw6bgd/tUKttFDZgrWnEMyXnRP4dzUclR3AnbeGDVcV5sdtJojywcBUeH+6uec/uoKcDroc7lnLG
dTluxeLJ6b9x5/uOe5DoNtTo/61Zds6gOM05f6Y9PhtpgywCQaoyVDUvPZLUYCUXGnizUpfEbf5r
zY0VkGoZNKngJPdk5fUqtqt4Kjk8zNinImUtiuuDpBUtl3McHMTLFQno9DstsjWCiJvrTEPFLwG1
bm0E66m9XIDiNk6CDZnnrBQwU9icem8wqwFQl1jRaGhyZ65WxipfK5e7SnzmAHsBBJ8vlNwoGPP9
1D+nbcQnEM3mEKXrkOXp0SdA4S/zSauGTpO4otSLSU66WPLqt77TkzqvAO/VFnS6RcO06DfECouU
IR8xb274WsZXMTfz/hlobE71Q0m7sDce/lwR12AX9U1nVpWfoiPMtqYofuU8x0apS3vpz8dB2HHn
EnER54NmPzvqi6iEycoqKY2ikjFS4jcVZ4vlLiaGJX0juI+yus4iwj6pUjueJYKxvqY5n0Y/lDA6
+4D3gBEUY2YqYBE6d26+gM/zqJD8d0IJNG+ATIY35CNfd75OK0Itle7UdMVwdkc3eh52TOyfPoQ+
7kyilBbg8nzt2v+vcFSNxROhJwN8mL0oSNJnwZc3vzk6Dzz2iwDX9IFIgpxHhwnJ6YfY/haBwVaO
eUxEeDHkthrGdWEYlzoSyTOCNBUh4cDIndcQXsEiuE7lZxG0k3tPY8yBgBKosVFMxjTj/41BbZiL
fNta1FhYo7wSMjAoXja4MtBJn2CuH+yFw5eNP7nBpPl5KBef9I9zKN1VlX4hI2f9K8y8+M033Vzv
1BHAy2MDUY42rzYeGD1B1XaDWYltZJ8wjxTtBKwrQUu6sCB9sl15UUTw63Qx3xKOeyJWtITSgnBx
kDtPFk3hCm7rY2cdwyMZCQdFfHgr/7ABXoiK1IzG5y6wDCEiKjv2D+AFRnuqcbj+Pat8jQX3RZGK
TbfFVzbiJHs5bbYB9t7MTm2YJbk1V+3Pi5bgSlopuMaQl92DMbeqIyH/cQMC/EfMsD+XXx/YVQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E351AC0066C780"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
content-md5: hDQwY0f59egJ0waCp9owHQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d697a49d-6ab6-4bc6-91d1-92603804ebe0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-2310d252-9b33-1c42-0e48-aedcc8662770/test-blob-cbf5caf5-019f-21da-10b4-ef715f01481c

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
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1E351AC0066C780"
content-md5: hDQwY0f59egJ0waCp9owHQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 02a213b0-43d4-4124-b25c-6cff6d377e65
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:35 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-2310d252-9b33-1c42-0e48-aedcc8662770/test-blob-cbf5caf5-019f-21da-10b4-ef715f01481c

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x1E351AC0066C780"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:35 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1E351AC0066C780"
content-md5: hDQwY0f59egJ0waCp9owHQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c41766c8-684e-4313-9917-ef39fa103e12
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: hDQwY0f59egJ0waCp9owHQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
dM2bPeehf+XL9s0RCEIt9Y8AUZP6211kjo7JB3TADUH4mgkS3bcxsVMqVz3OMBTLG7lMyBSTdplv
Nq5Z13dxC+mLGW45GhfYz6BAz4Qgll15/ey7c0UsZCRwo6cI19nbuUtTQhemkgChdPl0U6YUTp9R
39mKtpejXrVKyHdvz/fHZBY4zFRF02vsGf5LuBB9W1QHt/f/UAKzr+NiXMmIMaUBre6Q3IJLCwxu
nZyZWKakzGwiZxj/xxQThBxw43aiZOdZSQsi7X/SvKvrkbNmGlc9vo9dZcmMAuXafFhl2iiWzDm0
Pw6bgd/tUKttFDZgrWnEMyXnRP4dzUclR3AnbeGDVcV5sdtJojywcBUeH+6uec/uoKcDroc7lnLG
dTluxeLJ6b9x5/uOe5DoNtTo/61Zds6gOM05f6Y9PhtpgywCQaoyVDUvPZLUYCUXGnizUpfEbf5r
zY0VkGoZNKngJPdk5fUqtqt4Kjk8zNinImUtiuuDpBUtl3McHMTLFQno9DstsjWCiJvrTEPFLwG1
bm0E66m9XIDiNk6CDZnnrBQwU9icem8wqwFQl1jRaGhyZ65WxipfK5e7SnzmAHsBBJ8vlNwoGPP9
1D+nbcQnEM3mEKXrkOXp0SdA4S/zSauGTpO4otSLSU66WPLqt77TkzqvAO/VFnS6RcO06DfECouU
IR8xb274WsZXMTfz/hlobE71Q0m7sDce/lwR12AX9U1nVpWfoiPMtqYofuU8x0apS3vpz8dB2HHn
EnER54NmPzvqi6iEycoqKY2ikjFS4jcVZ4vlLiaGJX0juI+yus4iwj6pUjueJYKxvqY5n0Y/lDA6
+4D3gBEUY2YqYBE6d26+gM/zqJD8d0IJNG+ATIY35CNfd75OK0Itle7UdMVwdkc3eh52TOyfPoQ+
7kyilBbg8nzt2v+vcFSNxROhJwN8mL0oSNJnwZc3vzk6Dzz2iwDX9IFIgpxHhwnJ6YfY/haBwVaO
eUxEeDHkthrGdWEYlzoSyTOCNBUh4cDIndcQXsEiuE7lZxG0k3tPY8yBgBKosVFMxjTj/41BbZiL
fNta1FhYo7wSMjAoXja4MtBJn2CuH+yFw5eNP7nBpPl5KBef9I9zKN1VlX4hI2f9K8y8+M033Vzv
1BHAy2MDUY42rzYeGD1B1XaDWYltZJ8wjxTtBKwrQUu6sCB9sl15UUTw63Qx3xKOeyJWtITSgnBx
kDtPFk3hCm7rY2cdwyMZCQdFfHgr/7ABXoiK1IzG5y6wDCEiKjv2D+AFRnuqcbj+Pat8jQX3RZGK
TbfFVzbiJHs5bbYB9t7MTm2YJbk1V+3Pi5bgSlopuMaQl92DMbeqIyH/cQMC/EfMsD+XXx/YVQ==
```

## Interaction 16: DELETE /devstoreaccount1/test-container-2310d252-9b33-1c42-0e48-aedcc8662770?restype=container

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
x-ms-request-id: 251b973c-e4ba-4034-a40c-cdae8f07d4ad
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-9702eeb5-e636-cde9-8e4f-13991b9159a7?restype=container

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
etag: "0x20D7F3BAD36E0C0"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c804485f-d078-41cf-8eb7-6619d850e7bc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-9702eeb5-e636-cde9-8e4f-13991b9159a7/test-blob-52d92938-e339-9638-945a-b7374d8b4fa5

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
uELnuDzsCyFH3WBPEovny2ci4XAdQB8P4Cc8T+5ABn9aSLgdGpDfyePgUFiFmrsDZ0gx+K/oiXci
19gUr7szBtfh9MnSyrHXQxiNPPDGikZsOeelDg7Pcb5B+kK4yhonrUmBpKXxMJ2WWrWXW02GXE2R
qHbUjffIEoIKkdBuH3j+Zo6mReWhewhKDrRYNxZxup71JiKjUh9SuJIi5p/MKDo9mfW+3xZn8C1u
in5Cb9psmdYyefhVWhNvVIxTfpRofeZ5G54gstuHjTb1NcigD0i3tk3Jmq5C5z/iT4uJFHKZBQyY
yVM8S+b7quzCYCVKzkREm8dGn+M4NzRePmJP/XnEXC+8CEb0e2pmzu/Cf4cZl4FGRXiqUmUpYJEf
3Q2Eq61z/gP1jsb+Tx9c4NH0dbitRabhCbgAGQrJkqi01Z5d4iJCToCDJAm7SPZYTXGUNOrZcphm
oqL0cuX5K/sdSXqB/v2usSc3KSCdJsDBp8uYNV6+2mIG90CATdybivgNnf97109z5YPDokl3yXvh
M8sZYfadX24Xege9LmRKm58nj4nBRs98JE/a+zgZji7FnhoRgikCcD2QZF1HtrYeeAapTzrxIOz7
nDymwmQ2/uvZ+JBJORl2JB5LMOJyNG6ZvIIxbz7z030tFuXsXK7ZWmVxbr0m1D7tMysbpu8KiGfN
DQbhBI6s5SUSHCMzichwctZ8AcaxcudDRDwT2C2OIo19Hk+n91XXxImYE7gbualiqzMYjoahHJof
ncBRmAz3hPqVtWp5yXqBpDw8GF8uKIqTsC35dZMH3AK0iFmVhit8oI6+hgM+6eK5l+pKZAM68HU1
vujf/g9mjtloxEAg6x0QwHjRcKKHVMdLQN2pvHf+epfkX8dDnKJ/WPcp1iWhmKvMOaSLaYDTrmoh
lL0xvNFiakqpPIxWzSPWURiqXX2hqagx3YPSchAXELFdIgfkTZsmx2zb+FsfdmyBtRdnKVHsf+oV
/95Oj/c5kSza+Kob8QN8hJUQxrFMEWcXUb34r+dgcKIczk282Dh1oWYvRH3BZcMU66W727k5ye13
Nj06QOFEeocH/iO1v6tdmyRLHMzpVez55MRCpJTp4wVgRaH6OmGE6sr2uWagXiv5XT+V7qwgjuBR
QVwdAtbzHhoeVXoKY2HDxjIC85yFWIaYSEZUVPVYP7bAqPkEZ+fzAptLggix7vre0id6HptEzOnV
hLmPnsklxRbESrpnvl5KD/AAOdV+51pLdYLN3SEbe9wQL+IuY2TRJrzx7aRAdhTIMA6qQ5ITV51f
RChHV+f1qM7eV458HKuLLxMYjPm1C/9uBK0ScDdJ/NdEzh88ic7V/ETVYR+FTBRjHhR/+sqjqg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x256F39236C25CE0"
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
content-md5: /qOe3MbrqHoHJa+p2+U3kw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b7ce9930-8ff2-48ea-874c-0fb91973894e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-9702eeb5-e636-cde9-8e4f-13991b9159a7/test-blob-52d92938-e339-9638-945a-b7374d8b4fa5

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:35 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x256F39236C25CE0"
content-md5: /qOe3MbrqHoHJa+p2+U3kw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3e07f80b-cb2c-4ee5-be19-d2250a7d32b4
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:35 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: /qOe3MbrqHoHJa+p2+U3kw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
uELnuDzsCyFH3WBPEovny2ci4XAdQB8P4Cc8T+5ABn9aSLgdGpDfyePgUFiFmrsDZ0gx+K/oiXci
19gUr7szBtfh9MnSyrHXQxiNPPDGikZsOeelDg7Pcb5B+kK4yhonrUmBpKXxMJ2WWrWXW02GXE2R
qHbUjffIEoIKkdBuH3j+Zo6mReWhewhKDrRYNxZxup71JiKjUh9SuJIi5p/MKDo9mfW+3xZn8C1u
in5Cb9psmdYyefhVWhNvVIxTfpRofeZ5G54gstuHjTb1NcigD0i3tk3Jmq5C5z/iT4uJFHKZBQyY
yVM8S+b7quzCYCVKzkREm8dGn+M4NzRePmJP/XnEXC+8CEb0e2pmzu/Cf4cZl4FGRXiqUmUpYJEf
3Q2Eq61z/gP1jsb+Tx9c4NH0dbitRabhCbgAGQrJkqi01Z5d4iJCToCDJAm7SPZYTXGUNOrZcphm
oqL0cuX5K/sdSXqB/v2usSc3KSCdJsDBp8uYNV6+2mIG90CATdybivgNnf97109z5YPDokl3yXvh
M8sZYfadX24Xege9LmRKm58nj4nBRs98JE/a+zgZji7FnhoRgikCcD2QZF1HtrYeeAapTzrxIOz7
nDymwmQ2/uvZ+JBJORl2JB5LMOJyNG6ZvIIxbz7z030tFuXsXK7ZWmVxbr0m1D7tMysbpu8KiGfN
DQbhBI6s5SUSHCMzichwctZ8AcaxcudDRDwT2C2OIo19Hk+n91XXxImYE7gbualiqzMYjoahHJof
ncBRmAz3hPqVtWp5yXqBpDw8GF8uKIqTsC35dZMH3AK0iFmVhit8oI6+hgM+6eK5l+pKZAM68HU1
vujf/g9mjtloxEAg6x0QwHjRcKKHVMdLQN2pvHf+epfkX8dDnKJ/WPcp1iWhmKvMOaSLaYDTrmoh
lL0xvNFiakqpPIxWzSPWURiqXX2hqagx3YPSchAXELFdIgfkTZsmx2zb+FsfdmyBtRdnKVHsf+oV
/95Oj/c5kSza+Kob8QN8hJUQxrFMEWcXUb34r+dgcKIczk282Dh1oWYvRH3BZcMU66W727k5ye13
Nj06QOFEeocH/iO1v6tdmyRLHMzpVez55MRCpJTp4wVgRaH6OmGE6sr2uWagXiv5XT+V7qwgjuBR
QVwdAtbzHhoeVXoKY2HDxjIC85yFWIaYSEZUVPVYP7bAqPkEZ+fzAptLggix7vre0id6HptEzOnV
hLmPnsklxRbESrpnvl5KD/AAOdV+51pLdYLN3SEbe9wQL+IuY2TRJrzx7aRAdhTIMA6qQ5ITV51f
RChHV+f1qM7eV458HKuLLxMYjPm1C/9uBK0ScDdJ/NdEzh88ic7V/ETVYR+FTBRjHhR/+sqjqg==
```

## Interaction 20: DELETE /devstoreaccount1/test-container-9702eeb5-e636-cde9-8e4f-13991b9159a7?restype=container

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
x-ms-request-id: baf7b9aa-5ffc-4b29-a7fc-828f80e3c2b4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

