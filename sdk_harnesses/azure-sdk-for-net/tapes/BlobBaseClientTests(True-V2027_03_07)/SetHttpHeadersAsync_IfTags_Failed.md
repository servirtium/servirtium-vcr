## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a257780e-ffc0-9382-0be5-b8e7c11bc6fc?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetHttpHeadersAsync_IfTags_Failed
now: 2026-11-12T00:48:22.0116549+00:00

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
etag: "0x249E52ABB477800"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bfa6e719-5a4c-4d65-9b78-6c4973dbbe5f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a257780e-ffc0-9382-0be5-b8e7c11bc6fc/test-blob-0e9388d5-b972-4b65-24cc-4b783783dae8

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
1m3oCuCWC5yVO8Lbuxj/4ywgZH/owgVVEgt987QKW4gLzxBTM7wcPn33eTf2io8LzGdMFx9a/xRo
kvjUGRfoi9860OwIq7BvBCUC8UnNX4h7cSZMvURpsM/866DERyRlDu5Xu7qjAyC33BP5WA7KmjNw
WKjxm82a0B8cC8APq7wBnOJbdqPN2G0GleExcFfBMlBtVO58dHMhvOqahvhgqDFX+LsrbySQooA6
6gXraWDHW9lvolbNhChvOrm4M1J1pu2w2XiclsIs3LJuQYltNVKK0isf8AXaiXOTuzVq2G4uxUQY
O4/oK8QWQ8WkX0OfAQRmLmAmVbbn1lAECNqNwQRDQHtEVfnCoqZmCKxANSov87kwBKkNB2+OMGU/
4yLqiYHAYB7HWqwKo4y5wE0Jp6Am1BUgXL1aNTkLtiSUg76EfH8qf9QLaJkNJWAdVEYihYnEGA4N
ySzEZivlvKSIdh/NNUTN3ifLGmx7EzZcPOHy6TCaz2qwdrNSZhmpJqv0ha9AUB4CVKZi+f6hkbX1
ZylJ8tJz7aa1Hb+Re3gOIvTAho6GHOzD8JSKONZsDuT9XP7vXzPZgZgJizNecdktVNYJ4Asnbks9
hgI+6LTPSA7akx56HsLA5wX2fZC4ZH+7XeT/Yy3Z1u6zsdkxmpjjOUIkhN27szUUSPkGMPG6hCKD
g4vQz+XhAb0wxmzpj0xsE0NOlOCh/6mv6xo006X8+S23rhcNEmpdQ4Igi+zIK7msmR2ubPBB4YPh
IOTLrC4XM80/MeE1XgDZ8FBdgHS858BhiDmHTow9dcyUK/KFkpZTCFcfiPnYdjsd1Huf42AOJDkk
aiT1kOVAArsUoDIOU165CngcnV7GiBH9aXkRnZFrhQe4YShyXXhy3oU9w9YID4Ad5dno8YbbXuES
+CZsL2QqqBorVfI2R6wAqr/YiMU79Vn487i4g5SA3QJGYGVRBa4hExq73LmN554t50bHAtUb1wLM
czyscSWGq3jw7+dGrqURt3SqfxigagwZiptNuNotKohjhJJydKH1NDBBnfi35jihtkpgcVfqLAkv
kueKOfKdwsRe4yoSnkPTtUrnXswUYqRiqwKQzLkweFiJQuG6a/s+o9szWAMOjhcHjbsNAs48GzBC
J43wDfUKLmrSiVxhGEpPqbvx4AmgUxzriD/+I3aKTCaxd0NtTpXlKSqZPAW6pnRwvVkSSjsmotNx
BIW2DAr0SD01r6AH4lslDLffBxcXMOHLjWYddwLri9Vv+0kQLxwfpPTHhPfTadv97T6DR5q8WdOj
636k19A7SiPLl+YSFdyav2IiT6vq9ySKH4nDaEQ6s6J1bESee80jjDrTCNL169hh6Ig4mQonuQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24ED1199EA5FA20"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
content-md5: BA7C3yBYiCYCJt/fAdXK3Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dcd969b3-6019-40d7-b9ba-799667e604f2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-a257780e-ffc0-9382-0be5-b8e7c11bc6fc/test-blob-0e9388d5-b972-4b65-24cc-4b783783dae8?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-blob-content-encoding: deflate, gzip
x-ms-blob-content-language: de-DE, en-CA
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
x-ms-request-id: b1c0a90d-82e2-4f28-8249-9336ef791c00
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:22 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-a257780e-ffc0-9382-0be5-b8e7c11bc6fc?restype=container

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
x-ms-request-id: 0de9e7b7-fe0a-4905-ac03-1f4cc5ea539a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

