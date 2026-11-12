## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-39cace90-21ee-903f-b159-bf58aeac0106?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).Ctor_CustomAudience
now: 2026-11-12T00:49:08.6542568+00:00

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
etag: "0x1C3C17698A10DE0"
last-modified: Thu, 12 Nov 2026 00:49:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b2b97450-dcf2-4327-97e1-31a645ba991b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-39cace90-21ee-903f-b159-bf58aeac0106/test-blob-98541930-5d21-0271-433e-afcc3cb6c5b7

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
/e8mEzhLc7JLCvELQfp3G54QD3fPwN2smdm79iLQefcx5u573mbERVsY7eQvNE624qS5npyJNj0S
enlfj32QepH52lsM+zw3S8oct9L5fGSKBRN+F9pbp6+xaGTtZbXdh3JSNVrzquZngVPSbX9qGf0V
1IlqEmO3njKsWpLYSuYUPi9gpkYKl1osFpWGiDkwR09m15Asc3UPm5cnR09Tjjdtvi9PCXK3Cj0u
PfvOMBb5fBNDcnJV6Mq6UQqv4k8L2IhdGcoJ4D3crs1S/TZ6QGuBLco8EBzEF9VklLhnCCftI2Rz
cRZL75vWZ8OlA+uUQBCfLbWFzshsmAL0pEuEdKalZNnSBs9VNT4vZqhYHxPq0FSnyNpyaFSbB9gT
V0pPUfId/58RwTlBSvd3VWgfE3nuCdT23KvLMvuENv/3Qd7z4BS2Ox902Q8bZn7i+xPse/NeJE12
WHRGUc2jjIs5SgkZg3VTadhaejDE23Yt6TfnmLoMmByQfIefb+lS0EyD4ht0yHiemBIaBKodsX3+
GGiWu/TQLLHtiQfttPnvB6nkQfhauSC/SQCo8pRxc8oKoVaBvBRYsrVqhz9wsOQYK/wAOHCEpF9I
1nLzKDodexY84xKjbUuUjI5C8DHgTpgcj8aYcDpahf32OeWiZIp6TAwpNM3Rdb2wbKzhQbMuZ4jZ
1ph0hQrc4V4VrDRm8icDyKMktxnLSxoJ5wSNeENJyNFcyY3yBscBTVJvu8mISnqE3XkQCbBvDYt9
ap4GTmkazONiCSiZEcHcI2rHXI9RgJyKCJrJOb4h7bsCdJsp+/7pVO/lJkFR6sy4NOZGqLH7LOoB
e0XPUZIkQBxtl50lsidr3gegbFlaOR3OEQXY20UJBkixJ4C4GQNcwOUl41MukoG+2smqW7+Qp0In
AECNS2XWY5BVdIunssQEQ6t0NVXKn36DGQF7X6uIIIA9kBnDznSATn/D2R72FygFphcUHHHsXWHB
CTFkWwTkzFMKaSGqQHU29ObWB8ZgjQLYdbmUdAQOUTO4AcRCHPN73gzK660GW2Wi3SiLFlaaYXwv
i+VLUFhP+xju8j+w9NjyWyi5laFV0hpT8pbbgzrcHZ9IE5AOL46zeu+UF2gm8elQmLst4Mva2bjK
+F7Cc3fdEdWfZ+BH5CuaBhuxwLqyLQCti+t/rjzTbjrYQzcv8QZ4twWThooICLOPk9qwKBj9GMpe
FOeMXWOYy/mmb6D0ahQUOQm0H6Z2pII38BtiI0Uh2its0dwe61mi+ruQYpkTmyjFnO4OSPkk6HBl
VG1HNai0hJR1h5k49U2wEiTr5UHpJFTynYdWE5ExSOlsuZfrWsUS3N4FnhOPjKahXjbVOAIuew==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CA0AA70D5308B0"
last-modified: Thu, 12 Nov 2026 00:49:08 GMT
content-md5: uM2bYx0oCfEozrUJqDi5Cw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 271c3529-0b89-4cb4-b83b-d12516a9cedd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-39cace90-21ee-903f-b159-bf58aeac0106?restype=container

### Request headers recorded for playback:

```
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c4d64e8-ca07-4084-a8d0-53703caabc9f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

