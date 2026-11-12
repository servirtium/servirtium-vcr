## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-495748e6-f97d-c65f-54dc-86b898c8ca00?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).AcquireLeaseAsync_AccessConditions
now: 2026-11-12T00:46:15.9535915+00:00

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
etag: "0x26D05AF10B90580"
last-modified: Thu, 12 Nov 2026 00:46:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 26a623ff-ca83-4013-a190-157d1a74454f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-495748e6-f97d-c65f-54dc-86b898c8ca00/test-blob-42377fd0-533f-5264-36d9-bf5a855688f0

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
t++fxUl3St2HJh+mx5aiRN6lP9+yYTmT5AUSpDoFQP5TlQGpKQW3WDRZuxk0vYqgNnp83xepPlW1
DOBDZKajgeUgUjKV+RvY7uaqWKYgXiZ7cm6/iGHmqlar8x0kc/ONtjkzE2pYCjxeo/Ew/uavla26
yPE44/iEOajb6gb+tHrzHaFs7Eq7ImgxYOVvtqtv/F5vaqsBVNNBr9rCfB82YO93PeFFQqhi/qWJ
BoITFYP9bO6njkrO8cjNKz1w+aZI+wD293jKKbm1DWsGeE1QLZlWxRAxjtGkqEwYeBdr8gT+QAuC
HR0LM0I08YHeyHh6fP2jGTSWF2wuUU4rsbGhShtnBzhCzRB8S5LN/JxPxuDTnfsZx9jQaCmeVMvP
34GQk6dmd8FAOK/tJ86iyBrQ3otuWBO2h4JCl54Oo3lErGsQPWn16E8ekmVMLKAJLZ8OznVAYIdt
2QslI+AiMZQ1qXpjkoux2/U8T8WualvhOWn/ANUEA0zkomNd0MVu/GDQFoImpZsUXfJ/BBDBv2+v
Q+p2IzG+MKUtfu8nUwswzVNl3VPYu5PO6qLihf48I+PzrYza+NkuEebc+Cas7QrnTje8W+Ec14dW
qDmP3Kum8VsLM6V+VtR6Nsxt/MJsIf2Y+jbHf8cC19YFg1CgnzU6NgfLoblkafhiQiUUrtrE6oY7
9+F133GUCFzPedKE2peWM8W7oYBEM5E+ZD2i7Sn7QJnJZKdUxFaVNphclfAm3miNfnsVCEgF98NP
N3o08hoy0zg4u3bvQm5vJmrn552gF4bVFG+u5jdRw2zjBI3bYER+KsK37SLxnjsMpeLdHhAmrx/0
X92qhOwB5/cJCz3gk8Umabzb6Cpj43Y0oUBUc6VbvVVu5wFm06XVtgYr55L9LBIct7RUSsb0kHxn
duOrrHRSrk3ocqzEv5YXBTEkOPvjNnUuN7vxB3OPeVaE/1zCKgqR2DlFFbllWPgdPESU0FiBg0Bt
fHS4YKfaWfhWP785Vdsnkl/BniC7yd/D08ou+qn+A3scVK2W2XeSa7zADxg44+dobD34v+UfsrOU
9Y3cq15PWDxEHQEukLnnLzNk+rrGiu/jxo5rBUSW/KH6AePqtcBecLfc9MbmOtyEEI+yu7f5zWqd
+eTQ5FL3riFfNI7W/XpyBokC6pYp/Yux5/S040DqATR5TLzbjoxk5EalhgZNrhMVP7Ut9uPTdPtY
Hv1eQsrgdDNaXLC9l3j9ngVQhHaFZDngn6OLvQtRpdjAgm+PBqF7xBLT8lFiV6c9L1fdg/CF0rnE
faMmVLcnCbfY/BUIbphk1b9ksnLnfkj7To2zcyLnO6+2yoj+VHBaq+iZilqSNcG+eK0xICBH3A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25A90EF5200B480"
last-modified: Thu, 12 Nov 2026 00:46:15 GMT
content-md5: +DTSU1V5KovjAIcL2KMzZQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 51fa606c-c4c8-40e8-8a67-2bd9a571d6fc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-495748e6-f97d-c65f-54dc-86b898c8ca00/test-blob-42377fd0-533f-5264-36d9-bf5a855688f0?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 062a5aff-732a-9495-f0c1-6651a30f6580
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25A90EF5200B480"
last-modified: Thu, 12 Nov 2026 00:46:15 GMT
x-ms-lease-id: 062a5aff-732a-9495-f0c1-6651a30f6580
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8574d9d2-7ffe-4c13-b320-463880648ad6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-495748e6-f97d-c65f-54dc-86b898c8ca00?restype=container

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
x-ms-request-id: c2a01860-d13f-4e8b-b502-ee04bdeb168f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-8907094f-f34d-69ee-19cb-f4fa74b61a8f?restype=container

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
etag: "0x1FCC4C3CE4DACD0"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3b114851-8cc7-4b3f-96ce-c41d5864095a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-8907094f-f34d-69ee-19cb-f4fa74b61a8f/test-blob-a489ee6e-692a-372f-5304-99992ce31eae

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
Ey3hFhi+jgtswe1efpogOabW47WGwVbl2tA1SVlVPDWtRedH1AR2sF99N2h80bi45F/yVQBoKFHX
/DxHiEWxF4S3sTmz2WSiXzJVCIntaQgYfWT5Yuc1RB2VcNjHLigayyDkxB9/BQv7UPXNEx/I6ZIz
LwrhuLSdgmwbHWiM2zEKOz1pCKXpmHdY/hLxZzH9zYZGk/8dORNrR0KyY+iibnTEw9fiXuDtSpaT
iLmiqxo7HU/iRUcx7AIp/sFjNjWPto+dLKRZG2+lWUloirFayZwnd0WYwCktktbVuWAfiRNhA9Ep
BX524gLgPez+yWJRzjQlO7/v9vZmcJrNg2EOhc81BobfMMMdsJVDuIM8LslzhOor+k1UcgzbwpTk
qV6h0rccycLccp5xB4sprD5zKUHQWf934ouB4JR6A24vOAc2oubLH2QGlxJMuvLCKsbNaJlTE09f
Ke8sm+kuYm4vQc6D8wpYpwncysHsKyiYvrXOrJvU2yW413j2n4R71zWkHHgkPze8dMGPdkiNcv7G
lNwzYLXTWmWpyxyRYQeFYfOMSA6vc39+ETfZRWXcKmR5LwuoSHZ/0MESenMbKhK5CRVVASrvFyBc
tU5++RUAzKC3GDL83Rl8DHdNnPkLYuckIDtQhik5iRjrS5InAdesEq3SYxLgvSz72fSzononUFNn
WdjZr0Z3fo4ZEZGGVAqfoYpLOf7VQ2MPVK00huedw/o/wKf+0mJnWuWEx6uadYTpEwHw3BdUkRZ1
yVuYQ/ene02XR5Njoc4n494ZUXu3dd8pSnPlrefj6y+RiQkHzxfu3EteAy3whnEzyfg5OkCavVR7
b/mDwc1ls1xk0hfFHxPHK3QvWHGxOMMBsuTuqrDu9su0jGAdaht++E/RjLRZbanlcg/LamXjyjY2
gg7pdgmrddtMEZOzqcFYsV8h36wOp0Q6CTegIoxm0cIq5+cMlIJFJhbZDVwWMshOc7gFweqKJ9rK
r23RClJO5j/QicHZTB3d27mVNZrnI9duUq/TYQ/Xn8ANQuUUcxvDiiYcRakGdSaaJ+Uw9PE/4ouW
Y7iieoUw+ekBywk4yWee0qpzy94uZ92JOTkqp6vOzWBafhBjIA+h7Ey/BakdYl59kiJHyxesaPva
GUFLBVE9M/2p3kpXO7Ga0d6RbmI0a9bbrRSJhgFJrRYViAbNVuf6gtGrc4QTJldwrPo4G/qYpq1r
b1g9tKz7YDE0QbOqzHv3l+yQiPhSyIa9GNoHEJEcfeFYYueOvc0lrxNS3+Skxd9+QYQNCB61GKfR
gJzR80+fGMTRUmqTaNkeatnk/+ihGFL7ic4NDnTCo0o/vD0xU7vDs8Yg0nN16tmq751F0Ri+Lw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BE6B6FC69CD160"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
content-md5: hUzXepEacuJO5EE2+ug5oQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ea0ff7a9-bac1-4c53-8e91-fcc84adab101
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-8907094f-f34d-69ee-19cb-f4fa74b61a8f/test-blob-a489ee6e-692a-372f-5304-99992ce31eae?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:46:15 GMT
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 6ad64967-9181-4f0a-0faf-1f54ab9ced17
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BE6B6FC69CD160"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-lease-id: 6ad64967-9181-4f0a-0faf-1f54ab9ced17
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 14ab9a97-981a-45a4-87fc-8956f24b4091
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-8907094f-f34d-69ee-19cb-f4fa74b61a8f?restype=container

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
x-ms-request-id: 71419b93-503f-43cc-ad73-f27a38d7302e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-214c201d-4681-85df-9ef5-631fd77dd131?restype=container

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
etag: "0x25F6AEA5EB53060"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ab10d644-e2a2-4d46-aa3c-fe05a5284183
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-214c201d-4681-85df-9ef5-631fd77dd131/test-blob-e8d58c81-507d-2142-bcd1-c3c455962d0d

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
AYUnsMycriFpUMyMLut3kd3t0x7GBZrM3Spkr4IbMAfHVR1RVSFl5N60fiyDtvPRWTHnZ8MPR/zr
WtKhN/6eTiDFxNnNJTu7iO9AEoZtSSc3klZRM8hDuA4hZvtOw6zfFS8MvvEZBDT1K9/UzjR1fhGr
aaWoTRpXgQzLrL9AbcRCYfxXYYo1Ho4hWwjpb+nZq+fpo1oHNsgVtD3kTld0tL0akW04Hh2HdUsW
hvISbhEj8gDXV8pqOyo0QaxNUc82raZKzt57oY3KYS0O8K/WAkUrwVxXnV3zsFVCA9xwOiR839lL
x6Azp1BzDfWcXEt7Xj9nIZBz3w9JVx2IOZ2xWicJkhHVijql+BkL5I9nVlQKx6WcCRiUCADJAnCC
q26zwbLNk8o6pdMEwSl2aPuA4QDJfXH4FFEOdYkQC4fKIkyqVyLdmcOJ0CLRmEfvHZ8ESSFvuC39
u61hvx1AKZlMOZ7cyxDZokc8P61PJnsJH1fpDMFmWmofrZx0e9qlSaeIhV6oElGPK6fZM3h/rZQy
WJ/FVxzX5d80vB10ZCdtlvYGxqEdYA0FWuAajSfxoP8IQiM74PGKsJ9/dFUzG8Z/a5yBeefyFPeS
v/w8vVe3QhweayIEMbYEexYBnuu30j8ZmyGLbyYYFS0rqSD1TvNIxzE5Fa+kejnlff3R8XYL2u29
IiE1LNP1BVb02YiWDy0iuda6fryPdSDopfIpRyS2H84yNyvREpteQxBZr6GxTm3PrjefUVwxLqwB
TYbgzL4yPbm6ZNgBUac7WzurNsZ+N1eFWZnsFs1yAAl/0MQUfnZSJnHn9uqVzV2QZPYhhffmgxYv
W3IkRSbsSGPOgoDiJt3EWQ9UlkBs8Iw7XLLXUHoRmE2u5SMDLeFK+66Gxkrcrj0ZXCvokuzVwmrm
6el0FPfoveozM0G6wCwuCZqR5SpBX610vvNOKQZg2CK4HUP31ue3nghgqHr8Xpz/uYhRRN1ApYk7
/1YDmZTk01oeAaPoNjOz2kch4LYzeF9XT299DpRFd3e5u9aQtAR0fNUg3lz5FoNVnmqVH8TTCIb2
rEokZsTG2IorLnpcIiVDrWPhEpoCXTjsJ3AqsFey5rNQmge5TxYQWgXSzugI+XtEUXJg8fXs9E4R
OD5TmygyeEfHDIgdiV1N0LiVMI9Q5C705V7lUvW9Y6W5qBfXvL7dn1WgQO3zJsgVEiA8V8O+wFMQ
X7bJTSZSCajiZOFFdhP6t5A5sKNAAb+W0D/UgAzh++fDxl0IE1EvTTZFEcLmz5wNQp8zhBCwz172
M33mfombAGn5gq+28qM+CmNs++/8rwGixz5srnbXE/f/EeDUSM+tqRBZ7E3sVk/79HqsQ9Ru+Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CCEAB0B43720F0"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
content-md5: ecWixf1NuoThFthek/gA/A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4585d333-92ff-4a6c-a018-482130d15a68
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-214c201d-4681-85df-9ef5-631fd77dd131/test-blob-e8d58c81-507d-2142-bcd1-c3c455962d0d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:46:15 GMT
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: b7437c83-2e4a-f251-216e-b8b6e1c26ac1
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CCEAB0B43720F0"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-lease-id: b7437c83-2e4a-f251-216e-b8b6e1c26ac1
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0f73ef84-c78e-477f-a611-d03c3e059165
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-214c201d-4681-85df-9ef5-631fd77dd131?restype=container

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
x-ms-request-id: 61656958-95ad-44e2-9ccf-5d08cc52a299
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-df52bf94-c2a3-b6b3-70ee-70bafb2acf22?restype=container

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
etag: "0x2446B3C6DF84840"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2d9b2714-f3cb-4827-8297-2fcd71b58fa6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-df52bf94-c2a3-b6b3-70ee-70bafb2acf22/test-blob-585d1791-1704-7a63-bf66-cade339f6e39

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
ibkYhIKPVsDIjUZbvZb295+WJcllEbx8XNcfPffVg9CANzBCEUugAcGdkHfQB70ob9M/nXqk03j8
nCirbxnI8gp224VltOVT9SQIyIBFq1QZ9s0kluVW22S4RnUi9ZKn1J5tWis3w7vu66hWnAv3t/HT
kXhLpFskIAAhrW1wMP+SYPPi11Ep4jMRNao9AD9YwI6DT2QZXDBCSTkrFRZNfbqoxDsXFd+fqq5F
Om6w5iDAyeze7OGbeATDn44X/cwdw7fwlTsEQKqv5KS10yLBkWIZa0wpbpHZDUs2VHZQiKziKHa2
wFHkvIhBLwg85aXiAQ0s/ZKA81QmFofwzew0Xlv406urC9ERNa7D5z+JnSilVFJoJIoaYjQhkKrJ
8++cDdCsRBL5NvY8GsjjvAwVnXlfSniZyzrQ3XB3inomR0K/Jtlu3FgVrB1bKwnCNqUnDPMwaqh2
A0GW22ahgqx7FdOGJJUypsAgSZ5bPZ8wDqfLT36H9tyZSSOX1wHydCpx4BU2PBEP9WUyECAJG8Wi
Zs2+1TIu9B/27Ntyms+/LtV06V2J+tGVu1oZVOW7jy1d9XEzM574Quv2P1A2nVqWc+JLlTFoGGv7
KRrXFZ86OlytFKRdi/o2fKdxk7qBXx7/guEDcPn89d0FOAqEIC1MvATziIi1OOjnFBmK9oSxecn8
2JK+NspisR/HV1Pwslt5Jde2jtaVSUr5G1vgcv5ZVL5Ah0ebjYU6kNdp7uGU92G9ENGs+uvyZo5I
xRtugj4hbQKUrysU3phSe/7/LFppZCT6ImEtrFnTTSG5U8hqyw2YR4DeAEc2qTI5Wn/s8zoz3mH2
dGDd9MGpwGIJWovP56/wZ+TZi2Pcw3kv9FHa5lrmhXRmc1etu1O/ND/lLE6naXLP/IxVWVP9GrHn
rgBvztkHItUWaHRYQ6uRGlYj9pYqh4rfCurOkSsgaVimxgxSUGZl3gl5kAD+d7ngwz/92iQavCZ1
kMPvOZGp9v8bsXyePsrvvRiMsPeK4ZMx7s3rI480iwnm3b+idqV4z5oA4sU8QYV1DRwMjgwv6q8v
vUvEvdJw5yZyuGAKTUdzE+Bciv7O9axIdhVzKP39t/IQcrhZtBLHj/ufyYgka8DUmXor0mCwYcie
fEe8/b4odQFu+dqOGV/OlPoCLysjIwtVno+D0uSSYBDvuzjKC5I8dlSHtnHlRYAaXD5mrTKdelg8
Z14vpaMd25nJn10nBIlnxbjXnG2ZcFkPaHWlK7LeUkHfjqMzDdCxatrYG6Yi81i0/uh5xd7rovcF
ID0td7Dm60wcR3blNLjoJjGSwVSy7HUc8S3KZIxi9OusLe2Tg/Mq8TBaBqziz8ovkZ+sWeGiUw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2337FCEE12430A0"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
content-md5: A8Du1gwKvc69+UkAZ1HxNA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e03d9353-d272-4210-9a59-1a22b69944a0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-df52bf94-c2a3-b6b3-70ee-70bafb2acf22/test-blob-585d1791-1704-7a63-bf66-cade339f6e39

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
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2337FCEE12430A0"
content-md5: A8Du1gwKvc69+UkAZ1HxNA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 836ed77f-5b9d-4dcd-b808-a49f2053134b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:16 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-df52bf94-c2a3-b6b3-70ee-70bafb2acf22/test-blob-585d1791-1704-7a63-bf66-cade339f6e39?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x2337FCEE12430A0"
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 8610c833-1c82-bf86-b953-8a3807cb54a3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2337FCEE12430A0"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-lease-id: 8610c833-1c82-bf86-b953-8a3807cb54a3
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d4ecb4e2-1707-4f77-93c4-f018506e579e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-df52bf94-c2a3-b6b3-70ee-70bafb2acf22?restype=container

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
x-ms-request-id: cd8a5e14-b5ef-471b-ac8c-58ac5204a600
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-23cf673e-e658-3ac8-2163-9ad3edb69b09?restype=container

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
etag: "0x1ED8EB919102B90"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: df2fdf26-ebc9-45a9-a1d9-39d620cc16e7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-23cf673e-e658-3ac8-2163-9ad3edb69b09/test-blob-cbb9da09-6d72-d4a7-aa9a-4c595796c364

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
PPxu8RF/+k3/1mQfgrPSA7eALywRiTDRwPp5vZpv44ugNZbwR6r4it9sy5sIh1L2yEih1maWUrLL
nTAXBj2yj/PYf0wc4bwNiKRNpb2UyDiogvVRzgwkCePkJKp54YOiuTyoMAcG2uaMk03CSKz0N9X3
boNHYcHms3VoOL0Rk6cgq+yB7JcxoacPxTq+YsE27+3VgXL/Wld7wXyRnaIoev+moZ2/cks9xszc
OJyGKFC0MkjPPBI1IFCVBioanwQF5ko6GMEjd3yil7qlIyK79Jkr3WtaWT7tcIBMKmwgIifI1lJR
TA+PkLrLLaRXkP0u2RKQ7sGZq40LTKhB1kwQgXST3E3QaaeJnEywjiuZluCDHlFZkDNlLyvERv9n
TrluuqsvxLOvXW9qBlJ16BxhcrbHvrj7tvFBLa0iCyOnIU6SQtN/adEs08Dh74nh8EYOY9NJn48B
cgS67pcFjVJLw+UD4qZJ4Qjkm+r3GsdnXzxmE6hQXoK+kc/PxXo6JkVuliuk3g6gxYHLZQSlClg8
Uo9an3qq+2RiRFHWeRyNqXSkiISbw4Euxk4mhPl9GYZ3knLr4IfLxJrHQZm9yktkPbuPAIHUoI8O
LNgsg3Zr5SvKXueqosnt2cTp1ILncfwCwkc97RgFo/Hj3LSun0AjW1tt8mtkupryoie86swNJrvc
KcEvLvcTxbv1xsYUPjmExXgmen6QnQesSkrwSLgl1rX40XV/9C1kWi2wb/TU3WTtOCRT56w8TIu5
g+OtIn0Cz/AQHG3EBNFLwR9Q3y4T123mAw+U0e8Ju4TpxXFKtziwrp8DxMH3KTRSCCWM7G1dpqt1
xh5tbf4BBmDo2j9gAArnoDCODxOr79rbQcnJfc8XjB/F1PAZQkChAr1hD0708ggapEw8zpaXydZE
kiw0N4mQ0E4fmisZzl3w7Q1WSuCL5k7Br9iD272ILgsa1LATbMo00D7/1VfcANXuS+GIQX/2uazd
c4iwDfSRl2wg//qt3IFCInmhixH35K4ClJDcAO2LIxsDNvhCg8NKbj3rvADbQW9gRR4GVC2b5o/Z
rXhjtZd+lNzeqaaIAJ61Vh3TCyiuJlIgfLrOhc/tZ09padVL5rmmbCck/JfI10V/UP0QyNpnKocl
QzjdsA8M8UFWH5bJam9jLJ8AiSq6V6R0TjXR3J90Aj5OJaOAybwYFwtVcriutuWNrJs7ZqFcauuU
aGHaOxSi4h1Ye0XM42Pj6HEeZeXsxZhPQy8DOZud8bq47GBaPtz2s4+bVjqgwck4V30vPgUFqKLJ
ivjknqiBu4qLE/cCiaqVKLFVUG9droFmy+IebbO0s0O+kLPkEhXnGpqwFa7SNs7TmRVUr1czaw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F2A375011B6B80"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
content-md5: gulMv6S6o79mNEnBvZmwzg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4372dee-e3f5-4fb5-84e1-7dace33e9f1e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-23cf673e-e658-3ac8-2163-9ad3edb69b09/test-blob-cbb9da09-6d72-d4a7-aa9a-4c595796c364?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: d37e76db-62c6-d64d-d65f-b344f8f6b116
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F2A375011B6B80"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-lease-id: d37e76db-62c6-d64d-d65f-b344f8f6b116
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f21c3bb3-924e-4323-a772-556aa1485d23
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-23cf673e-e658-3ac8-2163-9ad3edb69b09?restype=container

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
x-ms-request-id: 4ece7b35-d015-4b06-880d-4500422b1be8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

