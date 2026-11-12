## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1110c199-590e-e0c5-b7db-b8f36501b193?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).StageBlockFromUriAsync_SourceAccessConditions
now: 2026-11-12T00:50:08.4916263+00:00

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
etag: "0x1DDCC5780064950"
last-modified: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fa287469-610e-4bd8-9e9d-8927c0318f1f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1110c199-590e-e0c5-b7db-b8f36501b193/test-blob-8fdd9c27-ff80-2714-b5e0-c3694fdb75fe

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
RwTYZfEELtHlLwyCRABbbMK7NbfRMTMKYe41z+LNlJT+oXTA1Kz2lZM/K99MQpy3gEwwqsz6wRbQ
zgQCzl7uF5t4g6KMm5cVxJ8jkgVUvR5Sfk+WnOnHBN9e7wWo88c1UBRE0775K+S0G+Yt1i4QfBDl
sFAOWHqxsX/DLauSbdHY7kLwEOpgWFJq4oEDmi2wTXL0w0N2JveZkiI+Nv05Ia0UVefsIGwmhFf9
o3b5rhZSEuA5naqNYcdKV33HISJVMcDU7kVFxC0Gzj7reIKBoOML7CMd/4QChvMfocjuXmM1qHG1
JL/RDE6yMs9soulFybaavDX/ODE80WdSJSJkF2/attARzHskOuDUas20luQJ2tgRVKIuNXA/eVNY
f+YrThpfkewZNPw7dYJVKs1khzuDSEpKUsPNrIBf0VMoy7r5qByyVQT48Kbb1t4g2Qui2/EX1Teb
4PtXkeRruWKpE6rHW4GxsTI3ilekb3zlrdN1vfVhEPaDXcggW8MfjDZDMcM0WH2J8Sm+4Erf93F/
ceMR9vxtRwKzQ/65kFZvF/0hYD65sFVV68zMozCspGZWoenfDpY61unAgBV/0GDTTshMvpczxsCO
uwswoKTRB5+XYu9sjwln5olU+DA/1hpr+VRnX+bOI9ooUFKLCjZF7nl2521wZr+/5dcN3s6QT+Xw
xKdPaqe4yT4UQz6229tTDwm2ye+t+pOVqHoOwUUMmAFtm0WP9oTSvR4uXCKACAr7us/E2oX2QsoU
ucItqgf5CKs9SUCVxBiE4wzQfp5wFaBwEgZ2R718d1h7ezzCpRMWNVN2Q77JZva2QPZ5JcQro6Mh
vZcBg8DuwNLnGUjcwj75ukhK+dLhpqwQvwfGA1KTUNeYoOh7FbKSiILs4kyt2n23gGt84KnRQBfr
8MO5J71/U8lxQyFWfaSVuHFQ9MNgYuWJDoPmF28tx1/RjyTv2WHEbI6CPJdbYQLG5ig4gUxTio3d
Lxg6mTxZQ3vChe1/pt4Pi4c13SZOLq2AIDFH9EYTfQSXEalIitNRKPgbmdsURj9JKPXEHa1mjwFq
uXgLEk41rgfo6JU0xgG047UuM5TSbNnx/ctQT2BXMIGo3tBbRhWp5erTK12qFGL0Dzr3OFxsmE2e
GhWC5V+nkbgTi+gxWZ2fhE2p/kB8R+hpXD8lX/clPEWCvCwAJgCLLJqlloh5w7adWLMOwpoMItIs
GIkfgTHA7k+irp1wnl1NHdGm1rBf8JmIiAdDF3qrdplZ1A52bKpp5Kg51hQZLLpWwKTIZksizSjw
lvgqfNfU9zcDF8pP1rEnPfIIJRqEb1xN7VbV4xBNNwblhtWxP2fRZN7dFRXvBunyoChYGacObA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21FE20BDA18F480"
last-modified: Thu, 12 Nov 2026 00:50:08 GMT
content-md5: YG1quNFtMUCkgCJg01zv9Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 18e22b9d-fae7-4efc-9bea-be8ec0af1827
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-1110c199-590e-e0c5-b7db-b8f36501b193/test-blob-3bc1378b-59a6-5d47-e76c-e342e7f41d5f?comp=block&blockid=dGVzdC1ibG9jay0xNGFlMWFkNy1kNzYyLTY1NTAtY2FiNS02MDM1MmM5YzlhMTc%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-1110c199-590e-e0c5-b7db-b8f36501b193/test-blob-8fdd9c27-ff80-2714-b5e0-c3694fdb75fe?sv=2027-03-07&se=2026-11-12T01%3A50%3A08Z&sr=b&sp=r&sig=dNzJoJVons4TC%2FwAWCFZQUNXa9hgI5ru2qdfhIepTMM%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: YG1quNFtMUCkgCJg01zv9Q==
x-ms-content-crc64: m1PmfkOKCeo=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 46f4ef47-f28a-409c-8012-46c687d729b6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-1110c199-590e-e0c5-b7db-b8f36501b193?restype=container

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
x-ms-request-id: 79a53ce5-32a5-4b19-9645-e09b0c42c1ab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-e2cd2a2a-d2e6-cec5-557f-a8141bd23fc1?restype=container

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
etag: "0x1E00C737FC5A690"
last-modified: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0cb1205f-2571-4bef-bc80-3e67d2681060
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-e2cd2a2a-d2e6-cec5-557f-a8141bd23fc1/test-blob-8d3449ae-6928-f374-661b-174b74f689b0

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
wmOSNC1hm7PnW3Dx+RIxStLMF7wnO3kEVeC/4i88Sfh1nnLICmXpyY4Z+4ph1NRDTl5BT7qDmofq
jd9MobmEqxF4e1qfaT9t4k0tDUDvooELe5TR+vo98gTr3n2FnSjVlVB46Vl6o+Ue1G1tVYxH+upd
QSUksrAXO4hVtIrB50UlV3fwdrkokdivsiaM0Jx4pOOSJ1wCsOKfYa3QJO9aXOwoR/0UV4QwNa9N
dQCKimvr3RCnL7/pI6eUUBQLV2zoVVU6ZIifY0xeYvKstDviFdZC5Effsi0sPyRWfwZvJN1CZSCq
TybjTHnDSM3NPG5rsjo9yXMlCaInDSRjSORG7j0UaU8bOMWwX5jNHGlgXgK1683LMVtqHFt9gkIB
fwSVfFmPuNIfUHl1jWraWO04x64hrV0WerzhqkzznrWDrt+TN58Q0KYvlptTVqTxj8RuRLuT39Gn
fwKcrg6GK7LD8d+KRyBOKPYI8hfCwiMY8BqIhVn6784N7LiccyKXqWvoj2XEZkijIBvEi+265bzf
hL3z/aZYyAEQfFposbXTcEir2TK+U4rS5GQ9NmTgUwf8ve9lpKvFkMdjtOntOm5m8BqlDguJIDAz
IRlBG5KdLylTbPTGbsyc5klrW5+g5Kn11kVKO0T7cpy+MoKSg3Q0xoTAms56oIJOCSjCHcWQkj1v
S0RNUvTkV/lYBzxKCWPUN5Ub4EnbezbC/DIcOFXWLp9EIzcw5nOP20PUIphFBP/E7uYwdLL0k9AN
ilbCyB6kgdmdBeUro1AhiwQGBlieffgyV0puprnsUJBnIlwdzRMkMKG/qP4amUqVDuit7ox3bw1e
kHDUNdofsLRVw4H0BL7x4da339T5F73/2ZfRPmID77NOvjyiT/rGoPhJxNXJoAkpvAy2wJA5ZHiy
1FxCTXFSUtTNpkWBTpLc8D7br1PoNjiNp4JVTS8jFVrE73qeg1KH93IB+/rEp2562c9RXbQlyp4j
tKbu/AWlqpDrvV4XPm3sU7jh5zo+yf8T23Nf0belniXces6rmPpsW1Fp2OoPYptiZAr8RONk5eqm
2yGSRtjZRR45O8OeQLq+dIvp1PEVBHjX/G2tqVpCd5XjBb3Z2hV5kJPL1ifYxCRPPc9XexD5kdao
uklrK5zD98Mtujv85Zp2b0NdSS1R/jhJXWuK6vyE6nPnMR/MDmT3B95jqwroUlg14QvNnEeoVrwR
Ic4wOA3HqNDHFbN6qWHeZkJO7lMtYAsTVQjxt00sPtpjuuyWxs7RnAI6IDykuzep7jUFWWho48HC
HeME1fGCm9fYFu51SKBzfVFR8z/ObpnQSMgYJ+Ry+9cq06nqzcYQuIVly6RIM6aVkdwWFvCB9A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D708BFE7AD60C0"
last-modified: Thu, 12 Nov 2026 00:50:08 GMT
content-md5: WTstUftsR9fGsh7jhDVU9A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 037f1fcf-4577-418e-8cc2-2b3b0fb686d9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-e2cd2a2a-d2e6-cec5-557f-a8141bd23fc1/test-blob-ba3a418a-a269-87f5-1422-8396075ce4e6?comp=block&blockid=dGVzdC1ibG9jay1hMGZhZGZhOS0zOTk4LTRlZTctMTA3MS02NTg4MzFlODMyOWU%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-e2cd2a2a-d2e6-cec5-557f-a8141bd23fc1/test-blob-8d3449ae-6928-f374-661b-174b74f689b0?sv=2027-03-07&se=2026-11-12T01%3A50%3A08Z&sr=b&sp=r&sig=Dlf7Hjk2ISQF9HCMm6LvyiCZ%2BnWlM3GDlmDyFCBVsIU%3D
x-ms-return-client-request-id: true
x-ms-source-if-modified-since: Wed, 11 Nov 2026 00:50:08 GMT
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: WTstUftsR9fGsh7jhDVU9A==
x-ms-content-crc64: 7ihzTgpTkHw=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 63522165-d7e3-4832-9e87-9c702be61076
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-e2cd2a2a-d2e6-cec5-557f-a8141bd23fc1?restype=container

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
x-ms-request-id: 9ce9e2aa-8c40-4238-bffa-c43a8851da2e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-d58b2c07-c6b5-0c8a-54ac-7906e6deec0a?restype=container

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
etag: "0x1F7A6415E6570A0"
last-modified: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c9232fa-6181-434d-83af-9274291b78ce
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-d58b2c07-c6b5-0c8a-54ac-7906e6deec0a/test-blob-8bfdbc1a-df12-6e70-01fa-bd9d6c9c96e5

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
NjGhlPvoF1FZ66n3PG1WLPDkjtrQDzDiVO5M7MDhaDKFW1EARp2jHxU6fModk9DmVk0WAVAROScA
vz8NmyuRd4J3cuAbVuVSQW7FlZJmxcEdZpVzymfidCEq/4ZdlYTqqQRHpSDvy/9nw7/hS6SUmfp+
7zWVHqwblf2/8VZe9azq2+yOHx+gLpqVCwenACl9lWaM36VOVItXKxAiMNqpCM4T92+3BXra3cGa
/xKlc5XUQVvw0hUGm4ZhN/MPff7A7AI5lAi5xY/rsQLktFV4sbh6Tu5+uTa4DFzoVs6Hy1/C2hIQ
bN+MG3zMBCATIuYw6IU7lC8PQTPMgIes0G7BZOajIdlDaEXZ7jJysrQVpep1t25JSzYvspjfQ+xX
4EoNC6A6bwAN7YBAYab8nY9+ttqcNhgAdxiwc25BYyRZgQ7oZKcU2zXqaMntCOqQMhQIYI0Ruqky
DZOHivyRy4pc5+CXFDnoatukss5OEm8uH0BZOAKXR8ZltVcTjFE5WJw/kSEK+B3bIPaxbQja4/ok
WWq7OJOHxaAZMl7i1N2KaloxD4FNJCcjfhgM5dm+itJc7zPmfiAJt8yB8MW++EsYJwKuqNR51jVC
mLp7e9/GW6iMheSqo+w5KFe1yzNhZIXM873WD+H94xj+pOZmjjzsu5UdMnJnboMWdIB9wwsB4DM0
rogi70vGjqLLq/8G05oayBCdRDESZYQ6wJthgB8N/MOyMd+0ystJVqPQm8KED6DlYvv6ZJwCIkkD
5y6wZQ6Cva87U6K7Zv5FU+2OQcrCtbH6ex4kE5gmsA+WseKcmfGVTd0TSLv9Kvv8tRCvc+B/QDJ9
tunwXqoXFaOTJbUcqLr8+fTsr231/FEiKF6HdjwuFnCwH+MHpO8y+zMYagVG4AxWs3rrkpHFiLmY
zjZMkJ5mZA5FbInX9FQEubM63ZJM20dRMcPCQoTe65cpb9a55muUsQX3AXSDfr4l59jei6onS/Lu
+1/apCGJZoDxroV+S9NIpSyMVdrTzbIEnVurAGDsASPjyusMuQ3kbZrzkdA5p5sFluV+m/YYGi6s
1QbF3WYgBaxhmoHoO+sfqOc/4Dvhy/bApml6bmUty6+8X+MGHo8z0owk1wwZHFr6X/MO2TryywoQ
BTf8ppdGNM/RK9wHGIlYCw6uvPPppokPgA5yHvJ1ypPZ9RlYNyz13aM9SPF+8kZpts0sQw8WJ16t
7SWI1BbcW2FILiJw/9ThuN5Qq16YkY7ICGckSYaEws66q0kGbQmMYeyQNcQj+bf4SoswxXv/FFuX
v8uuuBLaxGtUtVSK20vVw0pxCFvJpQ+wLP/7U/1Supbtbq4+3qnatXBZz0NibW4/WwIxjgwAzQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x208744EA1D60000"
last-modified: Thu, 12 Nov 2026 00:50:08 GMT
content-md5: vmFVETxYjdmSaoxmo7tPLw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: abdef737-5d1b-4021-bb11-3b4998db5b9d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-d58b2c07-c6b5-0c8a-54ac-7906e6deec0a/test-blob-ea5296a1-d670-4dcb-be90-bbf8fa212c8a?comp=block&blockid=dGVzdC1ibG9jay04MTkzYTFlZC0xZGUwLWQ2YzctMDBlYi1jZDQ4YTVkMDAyYTI%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-d58b2c07-c6b5-0c8a-54ac-7906e6deec0a/test-blob-8bfdbc1a-df12-6e70-01fa-bd9d6c9c96e5?sv=2027-03-07&se=2026-11-12T01%3A50%3A08Z&sr=b&sp=r&sig=jFyGRUR1F02v%2Bp%2F0EqmAi6YTWVsQY8J%2B1eR1i0IDvD4%3D
x-ms-return-client-request-id: true
x-ms-source-if-unmodified-since: Fri, 13 Nov 2026 00:50:08 GMT
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: vmFVETxYjdmSaoxmo7tPLw==
x-ms-content-crc64: rSr3zgAzzAU=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 902a9170-db76-413d-a1eb-1d8c45544636
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-d58b2c07-c6b5-0c8a-54ac-7906e6deec0a?restype=container

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
x-ms-request-id: 19743371-db5c-4820-956a-01bd2e1e0ceb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-f7901cc4-15b9-445d-f0b0-cd82237873e0?restype=container

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
etag: "0x1ECE501E9D4E250"
last-modified: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 477c27be-1b0e-4e93-96da-a1fa8492482a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-f7901cc4-15b9-445d-f0b0-cd82237873e0/test-blob-e02c80b9-56cc-df85-c558-5739e0e6abb1

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
zjOvywgVBITPfOqFCIOo7Y0YM92QNNDYRE+RME9Fsod37HlxITeZrxgMKDwq1ztsB9/0C0SVUJlj
14e5g9Q0icpiDRwJN8xWfoTFhAyTrWwUJClvUKZD4pzgDkqw4CxD155yx8ofY88TnozAz8uMzyka
pF6qxDkkHyp/KSmCpZ1YgqxtIeai9cFZXLIZghPRUz4hlTvNmBJlTqifnzmmkfjvaE0eH65DeK+c
UWiGCpwXrtXrYRBhiumZCNM9AlWIs8u5KhrGsjSQ3RyMMUeq3kMLiPFjuzDnjd5jhBbbBXZaFJ6d
zN+CUfyhW4Pz1Vmi7ymPMnpjJPia0Z08Yi0dtNimMRypDRJjiDb1wmCt9LeEwZXtS9L79vCmAvpC
Ru7OhKaqTaQ8+OIXK6lDbmKX7d3mt6CXL2kFqjosAwoXIUJIJj66AqcSSMiz1iApuIiODhQdXI9N
NlQ9pKJpEPXX/wpn+0gk3es2027X5FhI3PKynvX1+sSy+u/pfF0FqDjT3NYVwbw/ajAp54ggdVL7
9Mevt3EA4QVFtAFYOmGNMSo2BAiCMhs2cjTEyxM7koSc7YiVVfHG0/rR0Ay75y/PnLVe6XFKecGs
eUQ9OxXyCSJ9u0zY99s5cDENsGIOeosE9S9d3agSUnTG6dutiZfk3sfqPivi9qXaJXlAPchfnv64
OEXmlSt5amnYEQ7/i+aZKNKbIzxfIv6Kg7gu0hWrZ0rd9FBR/kibcdPCCuSW2pmSpxT2w3rCWBZG
WxJySphULKrDIpaWRyqJ/7JpnRca86gfmyoBtaPQG5s6CqI2KCY7bt0607cC/GDpbMTIWLv+LGhp
U65tU3cG8wf7WzyHU9eLLS863yDxHJ/KF0jfB8LgO946zNR4zRtmM+CvB6EjYhnsPCqMw0xIdzcP
ojsuJ+tFGh9eTIYCE2AT1Kw/QhT9p7Uv8suXU3iR8lSdaCvfNwz1aeyBxRWT6SnKeO+gCDUiEfuG
/zQgrsanzFoxZas0NJ2fStgofOGfnAiizNuJ8OoeelcvWDjY1bsl2fm7YYR9lURRAL1d+pQa52Mr
feHrHttvEupUBdtkx3UcAqLo5DqEJDaXN/AswIDCFXHVrFfZOrsdS0+ZKZBo7ThIQfjxMQIop1mr
VOfrQ1Fqke9pjxseQsjnypjq6vqlLkm35H+H0ONurAX9LuXUMQj9L5ih/l0dKv4wCmdqPbxfBSWd
NF7R4sEL+uIVIBTiE5mP7bpiBC/smbqBV8V8BG5Inii/Nv2pK0zWlQR7CArpTvbN2lAB/AH2sZqk
UIr7j/Z0zIHsItyc5sFui24rcZGvlwnPriodR6EmyYViBdrC2gYNBjuI/SsaMfSPk3CSykAJ9A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x203A903C2962000"
last-modified: Thu, 12 Nov 2026 00:50:08 GMT
content-md5: pWhzBmx1+4/nHyAhk8FlZQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d6c3ddb1-65c0-4cbc-b78f-389c57bd93ca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-f7901cc4-15b9-445d-f0b0-cd82237873e0/test-blob-e02c80b9-56cc-df85-c558-5739e0e6abb1

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
last-modified: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x203A903C2962000"
content-md5: pWhzBmx1+4/nHyAhk8FlZQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1d878819-2709-4337-9f5b-7ead89001b8d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:50:08 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-f7901cc4-15b9-445d-f0b0-cd82237873e0/test-blob-556a1d68-9927-b5dd-7d35-8eb33093fe45?comp=block&blockid=dGVzdC1ibG9jay00MTIxMTA1OS0yNmFlLWIwNDEtYjZhOC0zN2QzYzJmODEzYTk%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-f7901cc4-15b9-445d-f0b0-cd82237873e0/test-blob-e02c80b9-56cc-df85-c558-5739e0e6abb1?sv=2027-03-07&se=2026-11-12T01%3A50%3A08Z&sr=b&sp=r&sig=axVsTIDT9vKab2o9%2FFyEwzO3FSi2s%2BItwlHjP%2BBzVN8%3D
x-ms-return-client-request-id: true
x-ms-source-if-match: 0x203A903C2962000
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: pWhzBmx1+4/nHyAhk8FlZQ==
x-ms-content-crc64: mpxOzBvflV0=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1a125ab0-3621-4bc3-adf5-8615302c42f5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-f7901cc4-15b9-445d-f0b0-cd82237873e0?restype=container

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
x-ms-request-id: 584278e6-0a83-433e-bea4-682627478328
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-ad2abfe7-b3d6-1fcd-a377-6296c8d1ae32?restype=container

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
etag: "0x1DD158DB73A8DB0"
last-modified: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 23b7e66a-765f-4fef-830f-475aeeb99520
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-ad2abfe7-b3d6-1fcd-a377-6296c8d1ae32/test-blob-3400a720-c794-0967-677f-a465d1caa9d3

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
WhLf0MVqAkLbuZ9+YgryhCLky3FoUW6mQwGeNsOr6OT5BXmwGELkfbzo0RwTTr2YhN504wY9yQij
OY3DzMx/MNG7hFyRQmzfAE60gH9SkvRDBbHlNgXevDxwDN+1ILDwaaFLWMlgBkJxleK3iUiJUaaZ
f8YamfrL3cggITWMKt+dwxfeBjoq4/9vc6EiJjLz5rs5G6Dq1s+nf3oBP+QM5WoDGsYxq0trbpzG
qyZYqbaWLTt6Uw4/su1HN4a/KaMaYo02HgtswTtvza0EIyuoTtXEahKpkpJcxGfZ6nTEq0T4q0iY
IoqrKmsACoVgOo7Bnuiw+76RcdD72Vqjk9fGqyFoC3fiDyxKGECmqYcM+4nYF0uLE7CFZzp4nUgv
B5eTOV9k+C8W34+8ZeJ+6sdI797RynuMO5dx4qQ9anLjGhGpEnAoqANZwTe7zq3NB3xyL61qXjwb
B/3H8hWK2XUc2EvR1ddXIEfadwhE0GzppNsnyjrEebzVjQtyYLXuz+jCn/Vi+zKkGw5mj+Yz1zaQ
3U45Yw86V1+O/EfL5cCS66gggTF3h6ipg64sXunWorbV4YJmtWvYiEeW1P/r2DZO1KQ9ElUEGVam
kN9gDfl1uFmQ9gM9KzY8SPjq4LKovap43YpFmI9h0cgswCSMd3pOIRylWuIyEaltAMpcGjij/tI1
6DBuLx/KLyU7EWoSsNB+m7+WAmLIRszh2JfFBLaPiMJSVo9K3/H82yu99gA+W1D53n54DPtvbaFj
jVeIBCpurIiowFpBM7zOmiY3C0/Mo3xHzCU3FnvG4unt51KZc9YBTkp3lZv2uKrCqnLUOGJSlura
QTgENpUM4d1wU0xpNCZPNrwEVQ3hURR6dWwI8amHm1BovzKe/Be1arS9hWVeWHVMhQKlTUHc+fAk
isEpA+8z6bf7AXXzsTqlT+pYI8uuHBz2vGyn4U0Pi8VCenJWi2bEiputY1cAWNPIAP5Wg9YkdW2k
M0eDiwhq7HavsDfHT8SElJkwAbnF9WSZ3+FPuAfvHgQEsVgfQf6TQ3fhUKecALE60u8883S03z3i
6qwmGjNuwJIyw51rZFOanL1B46W8/N4wFOYXsiqQT9EaPFdRbChDcpAVajwTzm2cola2cvuYJu3N
9QZNVg1noXTLUSj8SS+V/nEUp5KiHUZ4exDT2tzVgRZpg3ci9huDrsjIR3xFn1gmIHSKhH5bK9i/
1Nr8k8aX9dARk8W4cwhVkfnJ2dXJM9y3rbpoS/2XDVeeYiFBhhoBMFGsMwyTbq1sNfKFkVED9qH+
ReYML6rSeYVtGhDmFAvex6mDHf/PJD4M+xUKEnsFmmyAQkE09ACm2bqHJVOdhiHnp8mof9ihLg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2153C8B07B62000"
last-modified: Thu, 12 Nov 2026 00:50:08 GMT
content-md5: 3gZRAxrlCgL3X60YmTUK1g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d6bfbda7-583c-4716-a523-f8b1d30a5248
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-ad2abfe7-b3d6-1fcd-a377-6296c8d1ae32/test-blob-4543dda8-ff48-6feb-75f4-236ab15d1b93?comp=block&blockid=dGVzdC1ibG9jay04ZDIwMTNkZi1jY2Y0LTExMTItNTI3ZC1iZGQzZjkyMDRmMWQ%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-ad2abfe7-b3d6-1fcd-a377-6296c8d1ae32/test-blob-3400a720-c794-0967-677f-a465d1caa9d3?sv=2027-03-07&se=2026-11-12T01%3A50%3A08Z&sr=b&sp=r&sig=3pKRtdhuVPvOoF3aBV7rqn8nRCspL6X0TZFX0xMwdUs%3D
x-ms-return-client-request-id: true
x-ms-source-if-none-match: "garbage"
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: 3gZRAxrlCgL3X60YmTUK1g==
x-ms-content-crc64: MdW92hJau0E=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bd530ca8-6992-48c0-950c-734529eec9de
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-ad2abfe7-b3d6-1fcd-a377-6296c8d1ae32?restype=container

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
x-ms-request-id: 0774b610-60a9-4e20-9700-6adc9f3a69ce
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

