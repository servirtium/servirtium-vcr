## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9cffda86-736d-b7a9-8238-d4a4e8b57e8c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).Ctor_DefaultAudience
now: 2026-11-12T00:46:28.3827485+00:00

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
etag: "0x22CC94600CB4B00"
last-modified: Thu, 12 Nov 2026 00:46:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d7c09a54-7309-4ef9-8ef1-32bd306c090e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9cffda86-736d-b7a9-8238-d4a4e8b57e8c/test-blob-2a467b67-fa2a-afd9-b3e0-6bc6bb9d4979

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
qv8nmFTqUzFTeAHDsBVmBVbPo9kPNBEDNH90ySt+kcUD/AGq+euPm4bNSfVy5gds0c5NGRKlfXXu
JGPVdooF1ec7v7MTvAxqQAdSQeobkE14B/hdMHeyXX6Lu9WHuSX8yHQONiZTWRXB49gLUjyK05MV
XW+SqKRviGI1hwA34obhVnl2DVknJK3im02epwpBAOhBcly2aSDPn63EHtEUigBSKfzDFMY67jjB
rwxX0OFX84YX9nAqK+xZpm6rYgbczhBMTH0OfuwiB4Mk9boTd87MbCpK/JSQKP4Pam1Xjosx5OH8
C4NjSXWa9e7sBTYyRS6f3/XckdF8vCR+/hN+ynj38hDYF2xKaCO0sAeloyLI3SQ+uK+WVVMQf05f
5UpiGyt19BMlWS7CVHbSJ+DJ1hkCtSHuQBLJYZy8yJcd64PYUpXcL64Oo4P1fGM5wy5yRqg1XC8p
c9oYrJN2aZGXpGny+dVL7aZq8xKd+MSukJ1uSYLu6I5Urt66w4MblznyXtf6RspYJ1gBymkcjHoW
aRv1CB8PqLzankr2kCkjT1vYq5rstEnTFSIp7B0lNyJjpFlnJY8a47UbH6h/YZYv3noNQ+DgKbTS
IvL85buetWcokuzPuyrMvsjk0ZWhU7OL+g6jF/NCg3qllQOdHf36fGpAV86qXyJQQYUX/FgfMM4+
ceut+51z5Q9yKiYnLqDK6VQrYPzl4ZrrU9VtKoYhhWQ0XqwSTIHMzXG/ODT8KBLlTBID9M/SWZBQ
wajHBruJUKTB8tDzuJzTXpOKJqhm7yrDiN10HZGVYgUcwYvZBMa1NeeQOjZC8ZR1MJU8RzPn6tF9
BH3eFDISLJDL1/cR+lnM1PDB1rT0gJZJ/u38WBrRNda5WwBI1yC0fQ6ldxqcZDU7b3JDJRQciYPn
lBZFFtN1+aIgV59Zg/3PDFmmTgl8rJq4wOmnjg/CndF8YUIKb2Y7MH53ewyW4ux1cxm7djt6auh7
jVbqzWqSXrrN3SG6xJ3yah6LBDCNId78Mhr2ByaVAfdaj+IQUGIT5B1SyAXKu698yAwd72W37Wt3
7ZtPnFaUN9sqXzW64hq7dyATO1nZMnZrej4ZeBKSo6F3mGPGxEjGvpApoFt6webyYXhFpLISnrsl
5CIYer/Jl7yTQ0m29bLXTH3Ir5Ia8LhXJxeZTP7vZPmooeAlrkPRYAif536dO2vFbVg0Se8oCvNq
wFKnL0q9pN5PDlPRsp0590+Jewk6uuyr09+muhsKf5ftu+7xKjC94UOfTSwY9Lq6+1Kfn47pLwVl
+1trFunDRI+85PevR8wezJrGmmy/k98k7L7Iat8IA4voiy/VUspZ3AmdWw/DC7OFgdP0IpWYpQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27C529349CAB4A0"
last-modified: Thu, 12 Nov 2026 00:46:28 GMT
content-md5: JQG4neJ/b0+q7e9zqp90Aw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d6ce89da-ba25-48da-89fd-f019912a7ba2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-9cffda86-736d-b7a9-8238-d4a4e8b57e8c?restype=container

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
x-ms-request-id: 72747c5c-9439-432c-b756-52cc98f70c2c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

