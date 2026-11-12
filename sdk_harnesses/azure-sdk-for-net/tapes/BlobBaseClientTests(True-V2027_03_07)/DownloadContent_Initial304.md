## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-87ad11f9-a753-7399-4780-f588fa5f25f8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadContent_Initial304
now: 2026-11-12T00:47:58.3090723+00:00

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
etag: "0x2606CC94D108B20"
last-modified: Thu, 12 Nov 2026 00:47:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ee5d541d-ce2a-470b-b852-11f06e095a7e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-87ad11f9-a753-7399-4780-f588fa5f25f8/test-blob-80b61d9e-16e8-afb2-b3c7-608d2f13ab46

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
NKeHJAT3kYx1B5hd6hfCzKxgxTnYCigxPExxh1dMB5SJ5slxor2WAn8gEkwPPIgwvincmprsICl+
Vee3hQo0KAAD0wROUCnuysK5uPfcIgDEQcgucG36nMaf8kzW3nx16+pLC2mE4W3/7s/XM2gyojLn
80NBBriTCTY9rl7dGOxGRMwNkBeWP2BbL4GdI2lebVAZ7uo4NOUxuAEzRzIOIdXjke6bJBEbUbPj
5dY29ubM3kEOxCoBDRDm29gVY/gtTA2suZF7wkk+/Z02VU4O+sEbZmjxAF2r4oPetUg4Be27tpnJ
ijxUURz4z8aMyrfC1+EW+v2QO0ywANcNnA0ABvive560RXCFxhRM+TCXHhfLHN1nIQrwKnpNGIlk
RrQO98nN3U4ZDZFwkTToQ0IbGeHAQYAvmeTtv1AkZy3mIX9fPQJmyUHIsg5L9pDWB+Y4Mf+opAQ0
3l7l4B399KVkim+0iAZAtE+f949x5KJTF7dp6zUtPn17K16jgekkyr1p5mwgIX/g+H2vCKx1w/q7
kchllAlvN0zyOVynnDNmeyzRCP02MvU3ifO4fTXQBWdk6O8gvja0+a8gLugiOFxJSYyApLv9hV/T
LQoVt7kWITP1Q7RDRbz1HA5NFQQMFVCXbzSoUGGsZmKQTZAsn0L2CQy0LfWoBQPQioisr29axhi6
fkeEbdHSSNxRs/gsyX3MVwz3V+db7mkw2MbZALfyNYd4cSD6cZs74uUYVlILpMEL31hjY24wX4/e
U5UL+UglX35xs1dc0uVwu3UCQpgXJTQFzSBfjtEYRxKQGx4GMOic8vfTmvBprg1y86f4Lhz3xy5g
BSsnxdCsWGxFzLbHaYuMZU+hQ4pDmx8T7JsqHxn1mFTvpSq9dC0mJ0KEI+JWq4kcbMjMVoOkHWkM
FNg1gjhTTzNi18Rgz/AiexxIv3g9vUERDrNQKULRS4jAsWBU8KUJMdSv9NTFu5zXqdtmW13xzleX
JHOFAibwkIs7oB6Qzop3Po6kjsltS1MWeX9nau8rzuIJvMwxhC6tvmNIiRt+RttQ7h3OTUCOKtgg
boimiSWcENE8hxG+Rrpf9s9lJMI4mDKkFnzSXIGhepLzERalBzU9rHlJQr/JkqhiblZxKAUW6NVW
AnKpybRPmgx/yjWjuu6aKHhI7lZz2oTTb+0qMFKM3SlATwXCk+LF+qeySsdzv7Ro1v+Mzfl/4ifu
1VrGJGq68u0MYmrp15SWg/SuwI+8YLA5wllSABAvwWzd1L6I/tU8+FjaZ1xKfv5r9kkF0CKYMXWp
jWIRZ/Lc3KH9DAPWDYQeccc34vlU7kRa5wnGKfFKRaNI3nFzK5Bl/Yq7TXH7lOjE515bYE57VQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23682235E2251E0"
last-modified: Thu, 12 Nov 2026 00:47:58 GMT
content-md5: wDqYPGRgrebJR5f1rK9MFw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f1d99f23-2ffa-4bb2-84d6-292c65fdd75b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-87ad11f9-a753-7399-4780-f588fa5f25f8/test-blob-80b61d9e-16e8-afb2-b3c7-608d2f13ab46

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Thu, 12 Nov 2026 00:47:58 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: d011e7ce-c08e-48a1-a4c5-a48f87f5d260
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:58 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-87ad11f9-a753-7399-4780-f588fa5f25f8?restype=container

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
x-ms-request-id: 5dd0a3cc-3494-4dcc-bee3-1c5f234e2ce4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

