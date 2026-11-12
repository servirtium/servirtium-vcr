## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5643e173-dd43-596e-83d2-6f2aeef744e1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).CreateSnapshotAsync_IfTags_Failed
now: 2026-11-12T00:46:26.0839358+00:00

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
etag: "0x1C3D1C5EE2EFBA0"
last-modified: Thu, 12 Nov 2026 00:46:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 095d055b-4b2a-49df-ae4f-5aef719cdad9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5643e173-dd43-596e-83d2-6f2aeef744e1/test-blob-05f3795a-f365-6ac0-50f8-9917b17dd6ef

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
f8CtfmUdkwAShoApHvY65VExL4I+Ufd/INkFS0NXqAX7f6ouSsZ8PeXz899zlktavrPFgE5UsC7J
LV2LF0i8ut56Lp5MDJqLtPKcS10YDImNqoyPkSe3ps98ZR1o8SWdNjgA+GitDrIZOctbuGXQsCDU
/Wy7LCm2wojPz6d9I8PN/hQlFxQh4JzadldcW+1pq7T8lPO44gkPSTXg3j4LmxYIjrpQq5kMsh3Q
4LbRWmeaZSTygI/QFBsKFc7eQQFdz9pBVMwyGAAb8OHV5wFTPu7ORXgaGBuGN3qfRpXKLnEcchHb
jwaaaE0j15Cu+iwZt9ffEPyIQ7a/uhxSk9JqUMFvuXXweK7oNN0r9kGL2D1NhY6+6x51ky9aG9Tq
R9R6uYbOPkC3KT4o9twfXU11NOHeBQ1DrGSj+iZGlVzZ/ewIsT26vZr8lVxQlvRCVjbh5efzDELG
NgwiKkMacZPhTvnvFqwPu3dH4W+x8xVvYaTwZLB05vGqQXowmJJW4iTIbkf7Uj+K0ilwqyrSFUP2
ssifKg3jbGcHRdQy3yPk8P9K6YTOdA9kZZGGBDvH1yw2OeXKt7cX5QLf8wxqV/MGjLsqhyu/KD65
OsR7XGgsQG6o/KU9GjhIMwOB7oAC+g6egHeAnE8AdhCnEH3ynIiZs7OewltNyXKC4lQnPjq9tkC2
3NzwrKMep4WUlgm7VZd76DrNYzeyUbcF/br72TjW6lo9PL+sqQYPfxvWuDNoxo28rFX/71IIBIol
6q7pI81NvquvfhjXzj40vuQc3JiEnTctPizi1voHNDg1h75XJltNiPmHuUd05d4XyzFu7CjyoU13
u+Wha+ixp0rgokd/3JeIz1Of/OPvuFlOygrImEgPQ+Zx4Gp2qx0Q1RH9k0KXl++a5hzUUqRphwOM
U6De6Q4B0V9gDvstESM2jifR8SUWtzMbLrIrOvBBB1hn6lh8MuwC/MLjNonzbNT5nsR8mJXddZxt
w7tc1pZvHwaixifKuVs7zvViM4CpJ8HdMZsrxW/CiXW8D28xpiUscxeDUKatLuVpQcmgekIbw5z5
fqT6RFmW4DyyDqnsCijPNr9pJtYbMAO2wYSmIg4zoUzTNyeBMS+97HBp+yA8fTah0ESCsZzF3U2h
RILV8L0uf21dGNIATgWPrDplsjXieURNBVLKsO+vDVrZ4Oyt5/uzOnuz32RjoII+8gRiYCsYvso+
iOtrZM59rQt4Jm0Y4sU+sne5L5rf6WTPi73qTa0vwSEibl4QSNatNTJZ63oUJhA/I66zXo8wXp6H
m9gRk19eSWRL9nNmLmmgDPlohv7qumStqyr+e2OS8RDAiaz+m6LS+6IVyTCc2PREElGVx9ignA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24C04A032A03400"
last-modified: Thu, 12 Nov 2026 00:46:26 GMT
content-md5: ndrh328SSL/+0QeGQ28HzQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 84bb5e54-f51b-48ed-8907-af7d36cc6ce6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5643e173-dd43-596e-83d2-6f2aeef744e1/test-blob-05f3795a-f365-6ac0-50f8-9917b17dd6ef?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-request-id: 5c9bfa5c-db2e-4651-98e7-842cdfec0238
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:26 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-5643e173-dd43-596e-83d2-6f2aeef744e1?restype=container

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
x-ms-request-id: 38cf9d96-1163-4b3f-bed4-78f62dc3238f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:26 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

