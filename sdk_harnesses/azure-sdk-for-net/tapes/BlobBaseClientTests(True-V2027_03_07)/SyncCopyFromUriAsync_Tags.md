## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9a71de3c-efad-9482-eaa3-6bfc8adde98e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SyncCopyFromUriAsync_Tags
now: 2026-11-12T00:48:36.7637926+00:00

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
etag: "0x2542C03579AD5C0"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 71e00441-6594-409c-9da6-784253bf8a99
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9a71de3c-efad-9482-eaa3-6bfc8adde98e/test-blob-408b27aa-f6e3-7001-63ae-2878b2bc3a7c

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
HQlKemSVRg6HbbxrxzJBwbx8/GuP2YxG3AE2/8YJ4S5o796Akm8qFeF9uXU5lqgwbGa8Nr/O7UN8
BJ5jXkdHfYyNAthUwC9NUueKESAXDEVYBpJgTapvmQKbBI7QxreZNTvprJTQ3Kw3buTYRNsiZfhY
Cli15zDhHmjVuLyhfIsw8dzlLWCxiCnlKd7GllUneJ6VeLxf5E4KB40r+iPvlfJYqFP+PTeYp4Eu
z75SGocTrkAdCwTO0QyO2iXSho4F9ZPsbe4CKDpn/dE7MBSQuO0GF0zj0ortitZGcGMRxSDzKdkq
ZayYEYUFtg0zk6D4/iI4y29BIiMI/uMXu7fXVTewRwc6ZVJAbgbG3Rt9ufY2TXJA2PqxsQa2ImfI
gFXNLmDVg0uZvpjQ+F1oekQIi0Xt4W5Fl3w9/5YAhEPrd+2w+a+6pzaqnI/ZcOCdSDfCrZYh257n
iJfkmIO1mDpV5IBvuIGVTeMOQkTeayacoLZfPtasyZtOyHAX1g+y9QNVhItgLZC1LF+yE5laCR1w
R/fNVlpjqRvkIO8QfXfUW01AiOabO3ImqRF2+bUC9L9Tp44X5Z6p8dtvewygpK7o3rhMGYA21QyF
pq1J7a9m4iwvvdbpvHWul5YLK79lhQRijhr9tts/HdKCkj7xXwQrCZngcefY/yJCnYHpKqlMHyGo
516UaCxQ8J8EZyk3vDiS3yImhRQcio/4uhhZVvIpNXMdSHiml6Btj4FH05f4C+BJV0qGJZkMjFzP
m64T9pmt2zG2GXTA7EiBufWT1Lb3/683EP6oohDZELwb1vvyWZnnmvhmQvFsiGsCBGykeLem2Jz+
3OWbBDkh3Am3pRVNj19crDm+kLy+yoeTpp2jNJgFdP5f83yzS5a/RWboteNWtHUMSMx950ffQBJd
CF6bfadxsjAW7pvjqWCj/0tW1RWkPfEoluzLh423f7JqVUM3I8e+dgKzP8bZKZ9r2ej7iWr8ucpt
c+a6pSqjX27peVMdbNuDmF4S8P4qTm1NYK2ku/ZHbZt4yrDhA9HXEN9Y8LBLTW0MePEL6snMQyR5
bUR8/qN4oQu4pKIropSNOuAe0V69AhJAmEMFO4LSq4eLZ5aNWxE8306kkqnL4NVcfq/prnHGu2ox
PGZgc2WI5vgaoDr+AN/O4vIPGW9pdLduqL3T6P0WxKwrWx6r22zpG6ywsD+aXn7QG8x+tqL7yMev
8sqotf37BNyO0qTAIgaFJv3DucN300k+A80wlw0JMJNW/OmhQGautatjDIvZD/jG+ZClNw4ENx+B
abIvym3OhKIRaiYc4+WXFQQYE8a9ZfPVap19ZPiEUsXKINezfuo+lYjpyKTSqRWqDiIK6yNYww==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F830F8D232CD70"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
content-md5: h1g9cIhSluuxkNxWRQeFWA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5bd05c92-15d0-410a-9648-49cc94da4ed3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-9a71de3c-efad-9482-eaa3-6bfc8adde98e/test-blob-605abe04-50d0-a91f-8d17-6152c30ee396

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-9a71de3c-efad-9482-eaa3-6bfc8adde98e/test-blob-408b27aa-f6e3-7001-63ae-2878b2bc3a7c?sv=2027-03-07&se=2026-11-12T01%3A48%3A36Z&sr=b&sp=r&sig=KqDZYJrn5y2DIy%2F7XynAxIQ%2BluDozQ4HaCbrWTEGwtw%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-tags: tagKey0=tagValue0&tagKey1=tagValue1
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25FB943F90C84A0"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d534bcf2-bbce-4981-8332-41fd490cf600
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-copy-id: 334b9281-4f27-42ea-9ebb-8b30d74107f5
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-9a71de3c-efad-9482-eaa3-6bfc8adde98e/test-blob-605abe04-50d0-a91f-8d17-6152c30ee396?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 1dbb6cd1-f69e-4d40-8e1a-43de1f261ee1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-9a71de3c-efad-9482-eaa3-6bfc8adde98e?restype=container

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
x-ms-request-id: 6a7d6987-66d8-4a08-a451-496cc62531c6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

