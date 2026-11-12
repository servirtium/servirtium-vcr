## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-660885eb-465c-f4ef-5279-8a45172cec31?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_File_StorageTransferOptions(1)
now: 2026-11-12T00:48:50.0639995+00:00

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
etag: "0x234FDB7A3C00820"
last-modified: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: deff7567-c033-4b38-973e-c79fd921551f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-660885eb-465c-f4ef-5279-8a45172cec31/test-blob-a1fc6ae6-ba44-7de2-29e7-46b8b6311fe0

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
rwFRtNhrzQQ9rJILP5J1HSmvPECTSVExo4s8df82PiBZqZUV2jhZep34ZJgo1j2XcimPBvXeTWWw
HxBML1cEB21xsZX8X0PwVcGimuW5CcxNpAPWpjgre1wwZbooDEtG9F0qtiSomhLmn7AzPLN/9xZD
/4pULWA1RjY5zPqIyEl2XKWIjlOnpQrw7weH9z+psG2k5A3A8cb89G/ub84YXdZnvN8N92jDm1qA
ZD5YrU73jxuM5OM7tmrfi5njuTU715EwIDtfm7gF4UiyP42IpEch99+yi3nzKwZ0LmzP3+IkRIys
J40Tl/NjhwObiHbdVudSwcFWiUsYPfQ06m1MNQFmjvsA3Hy5DV/rTwR1V6KQlteFfB0gzbtAk+qY
3qyFFlECNPp73XpqmLRhajlHo+VRpFSWxrjjRcA/v0mSIS+zZTiycyOoFLldGuRpvmOB+fAERjpY
71CYHu85Ox0w2HeFrgUBlC/CqI+aOKvUeYZdvsZYjdr0WnboGVQzb9mcLEJt5BBegGTAQZ2qvrek
xKRo23xW2EqckFOOGHvajjm1/gtpZ5V2/z5imEs8SZy/Q1Wwy5NdRVT30FS8z2fp5bJk9MCrO1wP
8dw+9D//X0a2z9UlKsOlWLi3cpZBujDXebKY2FTcEwj4oNq3HlAU+HENBf+Sw7rvvpwH88jGzjer
ZnuNZofx2rvMLYrp7jlnonolM7QxRbX4qRq41CBAMtKjDLjVh5HqGypDxZYwBtBin1FOoZqCeiHF
lb1sOAWbjPq3RuKBkhroOxeK7n8fx6JJVjXP8ZA4IJGWD/LUfeMlpzmbecDt4Aw2ZWaC+Iuhpc0a
I+LQzJppfyVQ6oIoE700ZEZGhE7iW3YomIwqtSgG9WoluloAVdueMfmbnfWKDlGoTpNFWiF/OMdr
pzMOPsn8SvUYAlljMw9rqFJURr6Anoo6gmaVwJpIpoGSla2nj/IvnlMAcQv4RBqD2bLOKvEI6wmp
1LxiZ4laz1zX0J5ixBhgJKhqfyx/QT5MEeboenuQiqmj/rs2zTfKpaKuIXN8IRWZbgVJnmvdKpJ9
FlWiclXhRkb1vsZcKVdwoNqJ0CDLz+/RTgt1R+s9xtQouLbiJzNMzdosh2NPPUSu2P6RU1lyskdl
0SRKa/9bt/jxM3GhjnimPQNGnkiMgRHHx2/trHJ6tgZvfFYPAmHa0dBrXQnTDEqG6hZVKxP+2VAS
g6OQbguFd31qMhIhlzqia814ICMH87okZsFcJYvzcKIG/H++SmLE5eaMado3ZFPbs79FhrksCo/o
awdJKVHxdsFvG5q74yFrszo8e4rf7AJtgHLLruno2fHv1d5be7yVmvIZyEi4IM+e2tN+8I4FCQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22681BA3BF93A20"
last-modified: Thu, 12 Nov 2026 00:48:50 GMT
content-md5: 1EHzH5fRLSDMjrmySYrW8Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4602e3a-09ed-4777-9490-8df6dc46999c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-660885eb-465c-f4ef-5279-8a45172cec31/test-blob-a1fc6ae6-ba44-7de2-29e7-46b8b6311fe0

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
last-modified: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:50 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x22681BA3BF93A20"
content-md5: 1EHzH5fRLSDMjrmySYrW8Q==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1ea999ac-0503-43f8-a8bc-ed450ace8915
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 1EHzH5fRLSDMjrmySYrW8Q==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
rwFRtNhrzQQ9rJILP5J1HSmvPECTSVExo4s8df82PiBZqZUV2jhZep34ZJgo1j2XcimPBvXeTWWw
HxBML1cEB21xsZX8X0PwVcGimuW5CcxNpAPWpjgre1wwZbooDEtG9F0qtiSomhLmn7AzPLN/9xZD
/4pULWA1RjY5zPqIyEl2XKWIjlOnpQrw7weH9z+psG2k5A3A8cb89G/ub84YXdZnvN8N92jDm1qA
ZD5YrU73jxuM5OM7tmrfi5njuTU715EwIDtfm7gF4UiyP42IpEch99+yi3nzKwZ0LmzP3+IkRIys
J40Tl/NjhwObiHbdVudSwcFWiUsYPfQ06m1MNQFmjvsA3Hy5DV/rTwR1V6KQlteFfB0gzbtAk+qY
3qyFFlECNPp73XpqmLRhajlHo+VRpFSWxrjjRcA/v0mSIS+zZTiycyOoFLldGuRpvmOB+fAERjpY
71CYHu85Ox0w2HeFrgUBlC/CqI+aOKvUeYZdvsZYjdr0WnboGVQzb9mcLEJt5BBegGTAQZ2qvrek
xKRo23xW2EqckFOOGHvajjm1/gtpZ5V2/z5imEs8SZy/Q1Wwy5NdRVT30FS8z2fp5bJk9MCrO1wP
8dw+9D//X0a2z9UlKsOlWLi3cpZBujDXebKY2FTcEwj4oNq3HlAU+HENBf+Sw7rvvpwH88jGzjer
ZnuNZofx2rvMLYrp7jlnonolM7QxRbX4qRq41CBAMtKjDLjVh5HqGypDxZYwBtBin1FOoZqCeiHF
lb1sOAWbjPq3RuKBkhroOxeK7n8fx6JJVjXP8ZA4IJGWD/LUfeMlpzmbecDt4Aw2ZWaC+Iuhpc0a
I+LQzJppfyVQ6oIoE700ZEZGhE7iW3YomIwqtSgG9WoluloAVdueMfmbnfWKDlGoTpNFWiF/OMdr
pzMOPsn8SvUYAlljMw9rqFJURr6Anoo6gmaVwJpIpoGSla2nj/IvnlMAcQv4RBqD2bLOKvEI6wmp
1LxiZ4laz1zX0J5ixBhgJKhqfyx/QT5MEeboenuQiqmj/rs2zTfKpaKuIXN8IRWZbgVJnmvdKpJ9
FlWiclXhRkb1vsZcKVdwoNqJ0CDLz+/RTgt1R+s9xtQouLbiJzNMzdosh2NPPUSu2P6RU1lyskdl
0SRKa/9bt/jxM3GhjnimPQNGnkiMgRHHx2/trHJ6tgZvfFYPAmHa0dBrXQnTDEqG6hZVKxP+2VAS
g6OQbguFd31qMhIhlzqia814ICMH87okZsFcJYvzcKIG/H++SmLE5eaMado3ZFPbs79FhrksCo/o
awdJKVHxdsFvG5q74yFrszo8e4rf7AJtgHLLruno2fHv1d5be7yVmvIZyEi4IM+e2tN+8I4FCQ==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-660885eb-465c-f4ef-5279-8a45172cec31/test-blob-a1fc6ae6-ba44-7de2-29e7-46b8b6311fe0

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
last-modified: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x22681BA3BF93A20"
content-md5: 1EHzH5fRLSDMjrmySYrW8Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e078f681-5e32-4f6b-8246-4e794ac5d013
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:50 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:50 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-660885eb-465c-f4ef-5279-8a45172cec31?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 187cfe32-ba0f-4c53-a3ab-7cbc2defed03
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

