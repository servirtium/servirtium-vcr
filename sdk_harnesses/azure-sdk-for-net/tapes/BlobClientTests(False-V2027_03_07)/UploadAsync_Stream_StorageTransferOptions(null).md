## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0dc9b38b-ea56-590c-ad15-994556bd1a33?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_Stream_StorageTransferOptions(null)
now: 2026-11-12T00:48:52.2749883+00:00

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
etag: "0x1F3BDCF89826F40"
last-modified: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cc0654da-3bdc-416d-83f4-bb38f6d10604
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0dc9b38b-ea56-590c-ad15-994556bd1a33/test-blob-84f52dda-a41f-0d41-e2e4-ea34c69d163e

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
+NhoMi/WKwsb8d/o150Ky5RqEf61vI3ncbsqcgDYkw//Wkx+VOcDBAHqaS3FWTZF2R6gW4wXiTxK
gcB0rLkKQl7P6HxRjHesZwz9y1JgIRiF5JjiNzeD6NEQM9Inj1hI3ybP9XG59E2n9PN/Gb7p6l+o
7scgKAsmTP+rQFikhdi0tesskCynzPBKOkNDA84SJkhzfqCQJ7YbqahxDbP1Am4bymTSvVkzASLX
1e3H4kkxmBoQMQY4JI00EOeDNb48VTjUKDhpQGnuQH19uFHJVMZfQHWZ5dFo46bXnaxyr8tkm4C1
8rkQx1iwIfGJums7a7wgJPVJo3BmbEWSkqK8fJCxGR3RE2EMTngc6MPg3yk6nDLwUYrVG/cPToZ0
fjS29KVg16BNaVdbFNV8LLqsho0cV/ZvzCoF2/0mwcXbl9BEZvQefweI7TLalD21WO89Ysj4WCY+
Rid6WvujJ6eSf3wFOMbGjgaFk2rElTftUIIO6V/94j+pBR/MpCUL5cWKRxXAryAodtTBc8S8erDv
jAl4lD5IlZ08XDOm+erhea6kOU4iLKBi5XKKO2967Itv3Rcbk1CGQrF4g1Ptgnzq4PkWF0BizF9o
Fq7Mvlouwm+nNhzSxeZdHfecqqhMdWP1n1t1ZNRKDBC3snyiuoNXSsHkRUtgGBsTuPlJxiK3HKBL
1h7+uF2aXCoMGhJpu2NzRWDnaC8XlYc/YazaAUbtAJbbVuRlWJFjSeghU/0JqfyW1YHC0LNwNECW
vlexv1vjHhp7jWV+DezPgx5H9UGKNriwRCvFKzDjayKkz5k5soqNPTXijRuXGMeU8kyUKT7+C4if
AHswHvLqlyJC2T5SldCUubgMqKicGCtjMDnjTkHjpsMRmrEOXR5D9/b4VD6JQVx8AG+G8mPfAuhP
zO65B0nhXjN6QfsfhVyZyLCyo8Tt2u7cZ03RXbNgMZfJvpAwifCsF/UKDv9hXHoT7CmyLF8jYvL/
3KD7EAGAGQ9jVcfLaD6/BozO4svuegrTvnCKrgU4pVueMa1QsAfzivTw/gezR4Tq8ybSVIAmEGKV
KFGR9WsKK69rLTeRblWF2lfX/nwCIHbsn7veZVHbeCFLuoi1YpWI5dJXRxpMWITRTXkpTxHlkwjb
pVWwLMVekLQWRrTNz3jCThmpq9hcn0Y2DRfXsSkPZSd/2r0/2LkM+bdlNhLPBH0BZwD4O+gwfwUP
eR+uht6LBuGMTfW7g3ZgnbEg9mk0ZgmZ1kooFyo/T1u4MF6ZXnLZ2i8wQ7aIRuOKl542D4ib2hIV
FLCTY++2Tf2aAlIXxj4/Rxw6AyNSEY9mnX+LCEDSHFZLhErBRXZAevW57UOQctFf98hsYNbvww==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x213D8C0C662D2E0"
last-modified: Thu, 12 Nov 2026 00:48:52 GMT
content-md5: 0yvdE9lLErk89bfbdiCUwQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 202c374e-042a-47dc-8e66-cfa59c3130a2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-0dc9b38b-ea56-590c-ad15-994556bd1a33/test-blob-84f52dda-a41f-0d41-e2e4-ea34c69d163e

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
last-modified: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:52 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x213D8C0C662D2E0"
content-md5: 0yvdE9lLErk89bfbdiCUwQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c4818dab-2d3a-4c27-8de0-b64ab00cf7b0
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 0yvdE9lLErk89bfbdiCUwQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
+NhoMi/WKwsb8d/o150Ky5RqEf61vI3ncbsqcgDYkw//Wkx+VOcDBAHqaS3FWTZF2R6gW4wXiTxK
gcB0rLkKQl7P6HxRjHesZwz9y1JgIRiF5JjiNzeD6NEQM9Inj1hI3ybP9XG59E2n9PN/Gb7p6l+o
7scgKAsmTP+rQFikhdi0tesskCynzPBKOkNDA84SJkhzfqCQJ7YbqahxDbP1Am4bymTSvVkzASLX
1e3H4kkxmBoQMQY4JI00EOeDNb48VTjUKDhpQGnuQH19uFHJVMZfQHWZ5dFo46bXnaxyr8tkm4C1
8rkQx1iwIfGJums7a7wgJPVJo3BmbEWSkqK8fJCxGR3RE2EMTngc6MPg3yk6nDLwUYrVG/cPToZ0
fjS29KVg16BNaVdbFNV8LLqsho0cV/ZvzCoF2/0mwcXbl9BEZvQefweI7TLalD21WO89Ysj4WCY+
Rid6WvujJ6eSf3wFOMbGjgaFk2rElTftUIIO6V/94j+pBR/MpCUL5cWKRxXAryAodtTBc8S8erDv
jAl4lD5IlZ08XDOm+erhea6kOU4iLKBi5XKKO2967Itv3Rcbk1CGQrF4g1Ptgnzq4PkWF0BizF9o
Fq7Mvlouwm+nNhzSxeZdHfecqqhMdWP1n1t1ZNRKDBC3snyiuoNXSsHkRUtgGBsTuPlJxiK3HKBL
1h7+uF2aXCoMGhJpu2NzRWDnaC8XlYc/YazaAUbtAJbbVuRlWJFjSeghU/0JqfyW1YHC0LNwNECW
vlexv1vjHhp7jWV+DezPgx5H9UGKNriwRCvFKzDjayKkz5k5soqNPTXijRuXGMeU8kyUKT7+C4if
AHswHvLqlyJC2T5SldCUubgMqKicGCtjMDnjTkHjpsMRmrEOXR5D9/b4VD6JQVx8AG+G8mPfAuhP
zO65B0nhXjN6QfsfhVyZyLCyo8Tt2u7cZ03RXbNgMZfJvpAwifCsF/UKDv9hXHoT7CmyLF8jYvL/
3KD7EAGAGQ9jVcfLaD6/BozO4svuegrTvnCKrgU4pVueMa1QsAfzivTw/gezR4Tq8ybSVIAmEGKV
KFGR9WsKK69rLTeRblWF2lfX/nwCIHbsn7veZVHbeCFLuoi1YpWI5dJXRxpMWITRTXkpTxHlkwjb
pVWwLMVekLQWRrTNz3jCThmpq9hcn0Y2DRfXsSkPZSd/2r0/2LkM+bdlNhLPBH0BZwD4O+gwfwUP
eR+uht6LBuGMTfW7g3ZgnbEg9mk0ZgmZ1kooFyo/T1u4MF6ZXnLZ2i8wQ7aIRuOKl542D4ib2hIV
FLCTY++2Tf2aAlIXxj4/Rxw6AyNSEY9mnX+LCEDSHFZLhErBRXZAevW57UOQctFf98hsYNbvww==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-0dc9b38b-ea56-590c-ad15-994556bd1a33/test-blob-84f52dda-a41f-0d41-e2e4-ea34c69d163e

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
last-modified: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x213D8C0C662D2E0"
content-md5: 0yvdE9lLErk89bfbdiCUwQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f1a517a5-da38-4af8-b582-c6638b071931
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:52 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:52 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-0dc9b38b-ea56-590c-ad15-994556bd1a33?restype=container

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
x-ms-request-id: 0586938d-2fdc-4a25-bca3-ef6c4a877192
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

