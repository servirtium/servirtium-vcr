## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5c217c0e-319e-9cce-309c-0a048ae466a1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_BinaryData_Overloads
now: 2026-11-12T00:48:56.1670049+00:00

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
etag: "0x1DEFBE5598D55C0"
last-modified: Thu, 12 Nov 2026 00:48:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0af2e798-cd30-47ca-affa-5ee0eb3856b3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5c217c0e-319e-9cce-309c-0a048ae466a1/test-blob-8e5a37be-4707-1206-a75d-9d6fdcc0310f

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
VczJAtZCFg9QzjJon6kVZwypHe36VR7Hdg+0QJNfv3Bq+66+GmTKfCBLPjkUnXP+SDZiMqJEFQCt
AozHjdZ78Q7C/aP6Vkyo3qDMrxflstictvhd/IzNJuauEBjYA+5Kz0wqUp/PA/HpulMBd2Xox0+z
KtbeHvWB9de9S0Y00Nuxgt/Ku2A4zLIGc0E4y6+AxUnIJNgYbLBWqVzIEbirtep4UPWFHgzuel0k
16uzSCknPYb8a6sCmRYvcxIDcLv6W71XwHu6+qc82ap685QFo2AzoNQxrkk+dbbeVqr66gqiKnzt
XIiubUPev5EBh6aBKdCx0M/myKxzGErF26P9Qu+f2MkYF0fXhTKRU+63Pe0QXS3ZSBo7u2HPeUM9
6JKf4X2iYq/caRKJ2UucVXW9vNtctX12I/nUZBxnSJ0Dmpyg8XFxFdo9M/QbUG7PnmbsEr1n4DMV
Kb2Dzf2TdCB0hT+u/GQDTKcBHoGJW9OKBcW2ezbgnLloi8ez7Ufdqr/TpsovIKIC6MUWZsKxi87q
+cg43fjqlOmGRXCcT19fI3TCtrQJW+Uis5JwyTb3t//5yfR+pMzG6RLhqNoyZZhmtkJN79UZ4J3j
FSlmecqyj45wooZq4X+n/M2iKLIK8E75ChLzqccq3+hWm46jX29HLhlLwcMS+9XCpfIId7jr2CXb
bG63v+XGRsKdFEXwBJxdWvqYvi+L5w89MATUImgva8Npx/MBj280hXoAdOaQ0qFWqhy+Uhn2UIRf
eo7h8iNabqmChzypW8qKZDm0i3MorV5jfndLcRipcnduoRXhU5JXpQY9DkpkrU9SM+7gQcURN80v
fnOrD/yQ2BTFOrq1qRGmXeVs6p8U/9Eo+T0qyTGyXWpIsdUfq5YJrDU1nnKUnIncOeTfpEwtGn+i
gxW/Zg/jEt1QbPg8h7FOYz5p32Bek1yzTY9M07gdGpdWfCeASUYlUYuVRDCRoLIykEAOxDseQ++5
DBiAlj8kMlJg5QqKzhr4RI3UyE8sIa3dGkJ3D1ZbNzg4xz0tpbpMcRLdMbqnqMImFYCuSnugjepr
o3z9rCP8Ba7RUQbcyp7SiFc8TvDyNXJ/UfnWre29lzpSwgI+TsTv4SsM1la8SUvh28EkYz/6eG0K
fVspJVjBE7nMigiclDmSTWzE5l4bwweu9NIrmTP7V0mUM9FpxbzTSsKc779DRUaIkhbSNZIO7rlT
ezGGlnqF0TK+B2BoKIiw8ZucftRHaq+LogcdKCK2hkUXFUmKTbRHFh6MhD3mIGmNIkT3cnDlDBGB
+vNzaKgQB4EbUBM+JaTmVGi1uuVxpYKdjwbdvhPUMgk4CVLB1K52fHy8ys9WT/2gER4HL1ErEA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F286177CE889A0"
last-modified: Thu, 12 Nov 2026 00:48:56 GMT
content-md5: 58XnHLQFFC/sN+9vJYFSCA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1a89169d-7d49-488d-981d-2d652c9916b5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-5c217c0e-319e-9cce-309c-0a048ae466a1/test-blob-8e5a37be-4707-1206-a75d-9d6fdcc0310f

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
last-modified: Thu, 12 Nov 2026 00:48:56 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:56 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1F286177CE889A0"
content-md5: 58XnHLQFFC/sN+9vJYFSCA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d295e4dd-7637-4eff-a8c1-189ca0c26a91
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:56 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 58XnHLQFFC/sN+9vJYFSCA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
VczJAtZCFg9QzjJon6kVZwypHe36VR7Hdg+0QJNfv3Bq+66+GmTKfCBLPjkUnXP+SDZiMqJEFQCt
AozHjdZ78Q7C/aP6Vkyo3qDMrxflstictvhd/IzNJuauEBjYA+5Kz0wqUp/PA/HpulMBd2Xox0+z
KtbeHvWB9de9S0Y00Nuxgt/Ku2A4zLIGc0E4y6+AxUnIJNgYbLBWqVzIEbirtep4UPWFHgzuel0k
16uzSCknPYb8a6sCmRYvcxIDcLv6W71XwHu6+qc82ap685QFo2AzoNQxrkk+dbbeVqr66gqiKnzt
XIiubUPev5EBh6aBKdCx0M/myKxzGErF26P9Qu+f2MkYF0fXhTKRU+63Pe0QXS3ZSBo7u2HPeUM9
6JKf4X2iYq/caRKJ2UucVXW9vNtctX12I/nUZBxnSJ0Dmpyg8XFxFdo9M/QbUG7PnmbsEr1n4DMV
Kb2Dzf2TdCB0hT+u/GQDTKcBHoGJW9OKBcW2ezbgnLloi8ez7Ufdqr/TpsovIKIC6MUWZsKxi87q
+cg43fjqlOmGRXCcT19fI3TCtrQJW+Uis5JwyTb3t//5yfR+pMzG6RLhqNoyZZhmtkJN79UZ4J3j
FSlmecqyj45wooZq4X+n/M2iKLIK8E75ChLzqccq3+hWm46jX29HLhlLwcMS+9XCpfIId7jr2CXb
bG63v+XGRsKdFEXwBJxdWvqYvi+L5w89MATUImgva8Npx/MBj280hXoAdOaQ0qFWqhy+Uhn2UIRf
eo7h8iNabqmChzypW8qKZDm0i3MorV5jfndLcRipcnduoRXhU5JXpQY9DkpkrU9SM+7gQcURN80v
fnOrD/yQ2BTFOrq1qRGmXeVs6p8U/9Eo+T0qyTGyXWpIsdUfq5YJrDU1nnKUnIncOeTfpEwtGn+i
gxW/Zg/jEt1QbPg8h7FOYz5p32Bek1yzTY9M07gdGpdWfCeASUYlUYuVRDCRoLIykEAOxDseQ++5
DBiAlj8kMlJg5QqKzhr4RI3UyE8sIa3dGkJ3D1ZbNzg4xz0tpbpMcRLdMbqnqMImFYCuSnugjepr
o3z9rCP8Ba7RUQbcyp7SiFc8TvDyNXJ/UfnWre29lzpSwgI+TsTv4SsM1la8SUvh28EkYz/6eG0K
fVspJVjBE7nMigiclDmSTWzE5l4bwweu9NIrmTP7V0mUM9FpxbzTSsKc779DRUaIkhbSNZIO7rlT
ezGGlnqF0TK+B2BoKIiw8ZucftRHaq+LogcdKCK2hkUXFUmKTbRHFh6MhD3mIGmNIkT3cnDlDBGB
+vNzaKgQB4EbUBM+JaTmVGi1uuVxpYKdjwbdvhPUMgk4CVLB1K52fHy8ys9WT/2gER4HL1ErEA==
```

## Interaction 3: PUT /devstoreaccount1/test-container-5c217c0e-319e-9cce-309c-0a048ae466a1/test-blob-8e5a37be-4707-1206-a75d-9d6fdcc0310f

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
VczJAtZCFg9QzjJon6kVZwypHe36VR7Hdg+0QJNfv3Bq+66+GmTKfCBLPjkUnXP+SDZiMqJEFQCt
AozHjdZ78Q7C/aP6Vkyo3qDMrxflstictvhd/IzNJuauEBjYA+5Kz0wqUp/PA/HpulMBd2Xox0+z
KtbeHvWB9de9S0Y00Nuxgt/Ku2A4zLIGc0E4y6+AxUnIJNgYbLBWqVzIEbirtep4UPWFHgzuel0k
16uzSCknPYb8a6sCmRYvcxIDcLv6W71XwHu6+qc82ap685QFo2AzoNQxrkk+dbbeVqr66gqiKnzt
XIiubUPev5EBh6aBKdCx0M/myKxzGErF26P9Qu+f2MkYF0fXhTKRU+63Pe0QXS3ZSBo7u2HPeUM9
6JKf4X2iYq/caRKJ2UucVXW9vNtctX12I/nUZBxnSJ0Dmpyg8XFxFdo9M/QbUG7PnmbsEr1n4DMV
Kb2Dzf2TdCB0hT+u/GQDTKcBHoGJW9OKBcW2ezbgnLloi8ez7Ufdqr/TpsovIKIC6MUWZsKxi87q
+cg43fjqlOmGRXCcT19fI3TCtrQJW+Uis5JwyTb3t//5yfR+pMzG6RLhqNoyZZhmtkJN79UZ4J3j
FSlmecqyj45wooZq4X+n/M2iKLIK8E75ChLzqccq3+hWm46jX29HLhlLwcMS+9XCpfIId7jr2CXb
bG63v+XGRsKdFEXwBJxdWvqYvi+L5w89MATUImgva8Npx/MBj280hXoAdOaQ0qFWqhy+Uhn2UIRf
eo7h8iNabqmChzypW8qKZDm0i3MorV5jfndLcRipcnduoRXhU5JXpQY9DkpkrU9SM+7gQcURN80v
fnOrD/yQ2BTFOrq1qRGmXeVs6p8U/9Eo+T0qyTGyXWpIsdUfq5YJrDU1nnKUnIncOeTfpEwtGn+i
gxW/Zg/jEt1QbPg8h7FOYz5p32Bek1yzTY9M07gdGpdWfCeASUYlUYuVRDCRoLIykEAOxDseQ++5
DBiAlj8kMlJg5QqKzhr4RI3UyE8sIa3dGkJ3D1ZbNzg4xz0tpbpMcRLdMbqnqMImFYCuSnugjepr
o3z9rCP8Ba7RUQbcyp7SiFc8TvDyNXJ/UfnWre29lzpSwgI+TsTv4SsM1la8SUvh28EkYz/6eG0K
fVspJVjBE7nMigiclDmSTWzE5l4bwweu9NIrmTP7V0mUM9FpxbzTSsKc779DRUaIkhbSNZIO7rlT
ezGGlnqF0TK+B2BoKIiw8ZucftRHaq+LogcdKCK2hkUXFUmKTbRHFh6MhD3mIGmNIkT3cnDlDBGB
+vNzaKgQB4EbUBM+JaTmVGi1uuVxpYKdjwbdvhPUMgk4CVLB1K52fHy8ys9WT/2gER4HL1ErEA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2407762C8BABB00"
last-modified: Thu, 12 Nov 2026 00:48:56 GMT
content-md5: 58XnHLQFFC/sN+9vJYFSCA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d9a3dc78-0db4-4bd5-b839-fcca3d9dffcb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-5c217c0e-319e-9cce-309c-0a048ae466a1/test-blob-8e5a37be-4707-1206-a75d-9d6fdcc0310f

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
last-modified: Thu, 12 Nov 2026 00:48:56 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:56 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x2407762C8BABB00"
content-md5: 58XnHLQFFC/sN+9vJYFSCA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3757676b-4e5e-464e-baaf-cdbe255cca73
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:56 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 58XnHLQFFC/sN+9vJYFSCA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
VczJAtZCFg9QzjJon6kVZwypHe36VR7Hdg+0QJNfv3Bq+66+GmTKfCBLPjkUnXP+SDZiMqJEFQCt
AozHjdZ78Q7C/aP6Vkyo3qDMrxflstictvhd/IzNJuauEBjYA+5Kz0wqUp/PA/HpulMBd2Xox0+z
KtbeHvWB9de9S0Y00Nuxgt/Ku2A4zLIGc0E4y6+AxUnIJNgYbLBWqVzIEbirtep4UPWFHgzuel0k
16uzSCknPYb8a6sCmRYvcxIDcLv6W71XwHu6+qc82ap685QFo2AzoNQxrkk+dbbeVqr66gqiKnzt
XIiubUPev5EBh6aBKdCx0M/myKxzGErF26P9Qu+f2MkYF0fXhTKRU+63Pe0QXS3ZSBo7u2HPeUM9
6JKf4X2iYq/caRKJ2UucVXW9vNtctX12I/nUZBxnSJ0Dmpyg8XFxFdo9M/QbUG7PnmbsEr1n4DMV
Kb2Dzf2TdCB0hT+u/GQDTKcBHoGJW9OKBcW2ezbgnLloi8ez7Ufdqr/TpsovIKIC6MUWZsKxi87q
+cg43fjqlOmGRXCcT19fI3TCtrQJW+Uis5JwyTb3t//5yfR+pMzG6RLhqNoyZZhmtkJN79UZ4J3j
FSlmecqyj45wooZq4X+n/M2iKLIK8E75ChLzqccq3+hWm46jX29HLhlLwcMS+9XCpfIId7jr2CXb
bG63v+XGRsKdFEXwBJxdWvqYvi+L5w89MATUImgva8Npx/MBj280hXoAdOaQ0qFWqhy+Uhn2UIRf
eo7h8iNabqmChzypW8qKZDm0i3MorV5jfndLcRipcnduoRXhU5JXpQY9DkpkrU9SM+7gQcURN80v
fnOrD/yQ2BTFOrq1qRGmXeVs6p8U/9Eo+T0qyTGyXWpIsdUfq5YJrDU1nnKUnIncOeTfpEwtGn+i
gxW/Zg/jEt1QbPg8h7FOYz5p32Bek1yzTY9M07gdGpdWfCeASUYlUYuVRDCRoLIykEAOxDseQ++5
DBiAlj8kMlJg5QqKzhr4RI3UyE8sIa3dGkJ3D1ZbNzg4xz0tpbpMcRLdMbqnqMImFYCuSnugjepr
o3z9rCP8Ba7RUQbcyp7SiFc8TvDyNXJ/UfnWre29lzpSwgI+TsTv4SsM1la8SUvh28EkYz/6eG0K
fVspJVjBE7nMigiclDmSTWzE5l4bwweu9NIrmTP7V0mUM9FpxbzTSsKc779DRUaIkhbSNZIO7rlT
ezGGlnqF0TK+B2BoKIiw8ZucftRHaq+LogcdKCK2hkUXFUmKTbRHFh6MhD3mIGmNIkT3cnDlDBGB
+vNzaKgQB4EbUBM+JaTmVGi1uuVxpYKdjwbdvhPUMgk4CVLB1K52fHy8ys9WT/2gER4HL1ErEA==
```

## Interaction 5: PUT /devstoreaccount1/test-container-5c217c0e-319e-9cce-309c-0a048ae466a1/test-blob-8e5a37be-4707-1206-a75d-9d6fdcc0310f

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
VczJAtZCFg9QzjJon6kVZwypHe36VR7Hdg+0QJNfv3Bq+66+GmTKfCBLPjkUnXP+SDZiMqJEFQCt
AozHjdZ78Q7C/aP6Vkyo3qDMrxflstictvhd/IzNJuauEBjYA+5Kz0wqUp/PA/HpulMBd2Xox0+z
KtbeHvWB9de9S0Y00Nuxgt/Ku2A4zLIGc0E4y6+AxUnIJNgYbLBWqVzIEbirtep4UPWFHgzuel0k
16uzSCknPYb8a6sCmRYvcxIDcLv6W71XwHu6+qc82ap685QFo2AzoNQxrkk+dbbeVqr66gqiKnzt
XIiubUPev5EBh6aBKdCx0M/myKxzGErF26P9Qu+f2MkYF0fXhTKRU+63Pe0QXS3ZSBo7u2HPeUM9
6JKf4X2iYq/caRKJ2UucVXW9vNtctX12I/nUZBxnSJ0Dmpyg8XFxFdo9M/QbUG7PnmbsEr1n4DMV
Kb2Dzf2TdCB0hT+u/GQDTKcBHoGJW9OKBcW2ezbgnLloi8ez7Ufdqr/TpsovIKIC6MUWZsKxi87q
+cg43fjqlOmGRXCcT19fI3TCtrQJW+Uis5JwyTb3t//5yfR+pMzG6RLhqNoyZZhmtkJN79UZ4J3j
FSlmecqyj45wooZq4X+n/M2iKLIK8E75ChLzqccq3+hWm46jX29HLhlLwcMS+9XCpfIId7jr2CXb
bG63v+XGRsKdFEXwBJxdWvqYvi+L5w89MATUImgva8Npx/MBj280hXoAdOaQ0qFWqhy+Uhn2UIRf
eo7h8iNabqmChzypW8qKZDm0i3MorV5jfndLcRipcnduoRXhU5JXpQY9DkpkrU9SM+7gQcURN80v
fnOrD/yQ2BTFOrq1qRGmXeVs6p8U/9Eo+T0qyTGyXWpIsdUfq5YJrDU1nnKUnIncOeTfpEwtGn+i
gxW/Zg/jEt1QbPg8h7FOYz5p32Bek1yzTY9M07gdGpdWfCeASUYlUYuVRDCRoLIykEAOxDseQ++5
DBiAlj8kMlJg5QqKzhr4RI3UyE8sIa3dGkJ3D1ZbNzg4xz0tpbpMcRLdMbqnqMImFYCuSnugjepr
o3z9rCP8Ba7RUQbcyp7SiFc8TvDyNXJ/UfnWre29lzpSwgI+TsTv4SsM1la8SUvh28EkYz/6eG0K
fVspJVjBE7nMigiclDmSTWzE5l4bwweu9NIrmTP7V0mUM9FpxbzTSsKc779DRUaIkhbSNZIO7rlT
ezGGlnqF0TK+B2BoKIiw8ZucftRHaq+LogcdKCK2hkUXFUmKTbRHFh6MhD3mIGmNIkT3cnDlDBGB
+vNzaKgQB4EbUBM+JaTmVGi1uuVxpYKdjwbdvhPUMgk4CVLB1K52fHy8ys9WT/2gER4HL1ErEA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1ED573EBA230D70"
last-modified: Thu, 12 Nov 2026 00:48:56 GMT
content-md5: 58XnHLQFFC/sN+9vJYFSCA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fd03bfe6-a944-4cea-83e8-65c8062bfb13
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-5c217c0e-319e-9cce-309c-0a048ae466a1/test-blob-8e5a37be-4707-1206-a75d-9d6fdcc0310f

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
last-modified: Thu, 12 Nov 2026 00:48:56 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:56 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1ED573EBA230D70"
content-md5: 58XnHLQFFC/sN+9vJYFSCA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 697ef22f-f814-411f-bb9c-a159e719f010
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:56 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 58XnHLQFFC/sN+9vJYFSCA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
VczJAtZCFg9QzjJon6kVZwypHe36VR7Hdg+0QJNfv3Bq+66+GmTKfCBLPjkUnXP+SDZiMqJEFQCt
AozHjdZ78Q7C/aP6Vkyo3qDMrxflstictvhd/IzNJuauEBjYA+5Kz0wqUp/PA/HpulMBd2Xox0+z
KtbeHvWB9de9S0Y00Nuxgt/Ku2A4zLIGc0E4y6+AxUnIJNgYbLBWqVzIEbirtep4UPWFHgzuel0k
16uzSCknPYb8a6sCmRYvcxIDcLv6W71XwHu6+qc82ap685QFo2AzoNQxrkk+dbbeVqr66gqiKnzt
XIiubUPev5EBh6aBKdCx0M/myKxzGErF26P9Qu+f2MkYF0fXhTKRU+63Pe0QXS3ZSBo7u2HPeUM9
6JKf4X2iYq/caRKJ2UucVXW9vNtctX12I/nUZBxnSJ0Dmpyg8XFxFdo9M/QbUG7PnmbsEr1n4DMV
Kb2Dzf2TdCB0hT+u/GQDTKcBHoGJW9OKBcW2ezbgnLloi8ez7Ufdqr/TpsovIKIC6MUWZsKxi87q
+cg43fjqlOmGRXCcT19fI3TCtrQJW+Uis5JwyTb3t//5yfR+pMzG6RLhqNoyZZhmtkJN79UZ4J3j
FSlmecqyj45wooZq4X+n/M2iKLIK8E75ChLzqccq3+hWm46jX29HLhlLwcMS+9XCpfIId7jr2CXb
bG63v+XGRsKdFEXwBJxdWvqYvi+L5w89MATUImgva8Npx/MBj280hXoAdOaQ0qFWqhy+Uhn2UIRf
eo7h8iNabqmChzypW8qKZDm0i3MorV5jfndLcRipcnduoRXhU5JXpQY9DkpkrU9SM+7gQcURN80v
fnOrD/yQ2BTFOrq1qRGmXeVs6p8U/9Eo+T0qyTGyXWpIsdUfq5YJrDU1nnKUnIncOeTfpEwtGn+i
gxW/Zg/jEt1QbPg8h7FOYz5p32Bek1yzTY9M07gdGpdWfCeASUYlUYuVRDCRoLIykEAOxDseQ++5
DBiAlj8kMlJg5QqKzhr4RI3UyE8sIa3dGkJ3D1ZbNzg4xz0tpbpMcRLdMbqnqMImFYCuSnugjepr
o3z9rCP8Ba7RUQbcyp7SiFc8TvDyNXJ/UfnWre29lzpSwgI+TsTv4SsM1la8SUvh28EkYz/6eG0K
fVspJVjBE7nMigiclDmSTWzE5l4bwweu9NIrmTP7V0mUM9FpxbzTSsKc779DRUaIkhbSNZIO7rlT
ezGGlnqF0TK+B2BoKIiw8ZucftRHaq+LogcdKCK2hkUXFUmKTbRHFh6MhD3mIGmNIkT3cnDlDBGB
+vNzaKgQB4EbUBM+JaTmVGi1uuVxpYKdjwbdvhPUMgk4CVLB1K52fHy8ys9WT/2gER4HL1ErEA==
```

## Interaction 7: DELETE /devstoreaccount1/test-container-5c217c0e-319e-9cce-309c-0a048ae466a1?restype=container

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
x-ms-request-id: af39abe4-6f51-4107-8ffb-74a621d1a470
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

