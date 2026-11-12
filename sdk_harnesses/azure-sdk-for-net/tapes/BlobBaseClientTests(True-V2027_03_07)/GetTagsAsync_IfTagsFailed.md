## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1bf5b449-84fa-b442-3804-617191773134?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetTagsAsync_IfTagsFailed
now: 2026-11-12T00:48:15.7632364+00:00

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
etag: "0x240A9F9C8BD6F60"
last-modified: Thu, 12 Nov 2026 00:48:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 22d5b12b-7495-4f9f-ae91-ac03a54b6a97
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1bf5b449-84fa-b442-3804-617191773134/test-blob-bb0e3009-337d-3576-6ecb-8d330f6057b0

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
KkDmvbhKf4kfodykcPv12eW1cZLPlXMWPcCtLvYPpdissUZQkXN7vrCEm9tW0sRz1rNNWe7F4ZXN
0ID3nFGSEPwD97+0pEhyOrLhSvmXv2v8OVhDwUzp59Cxg8DzgyFf8ovfUtoEvzFr2x485JabNREU
+2P4T06wGRDuAiGIfraQgVduuGyQ93on2OYtrQM5FU2v34e+Z6I8LjjKFrwP411oq2I/LX2kgwTo
0XdogmwMte3U2J4v0Rq1MYk0xuG+F/SIxQKh+ujQC1uD1pUr1KzMvWDPOwq+OdlHivvzcL0jKrmC
371pa7sEBM1Cq/uFiVzdZwiA7tzqyowpWXDs3JueX6vbqPXuY1GlyjY9e43dwQCeFQi0ojvdmBQx
QBJKGCgypExPqeBn7wS22ySmrE7/S5dwTcaS6bxw/hDhvCI/WrIOC9dBjRgfNyYE/ccWN+vGMvV6
2sphoLqP36rQhjLhd4Byl6F3vb1/UBWfjev0WcclG4otxX/nrGscsa5tT7H0IoZHpJ9JTnQ3+om0
wRLPmoXiqmuntLEAi+o2WwwOEQFkq2plrbUo3MwW9cr1MupYTRcoi6RGTG7URhi0EvJoKOmIUBao
aezQus6ekb7nClj/3g705oZdHV/7kGacc8nZrczhbeLUsOMqWNDWqLqw7TzAtTTkc0JjKjK3rNiG
M0cExOTxBZx1Ky4ryo22h3WkS6Mq276V9TqKfkKwHQMKpCWI0ePWvuefS4kGuam1rKO8EmA1XFeJ
bs+pZ4daxQ0qICVoLbWSzo27ipA0jzyQ1dGf8wuj1EfN/2IULFZfRYZ825iDTH/uKkPTedHHVd+T
GZK2utEChkvdmi5SfaI2W0QKuLOjDYhSscjHz1t2BqmDgRPEqYq0eVVMpbJQm6yhnR6MvJ0r7wsK
ZAkJOrfwZ5SEzvyPcbK6Vj5eVmjWARUbJjI86UkMWJEHukSAqj6dXD0dy8ywEStr0mZezJijNGP0
7RSEs35KeHZqiLdtOav/wPoquDVJaxUH0RbjrYv4Y4XhjL0qGai/01NVRYlz/Zm6XwyeeXwtqoL/
feJnZsrrcSQyjKzu1KdRa+Ti8yaLlNN9KU5+WuoJtOI7K5vGV22IadNlQHHsy4pkTA6YSrdbc+kP
6T17bBc6KNfKs6gLixN3WYlTJlNhkF3DGg3ccWkr37iytm4vDP27KxeaIhjhWcH7IPAtCEyWrVjf
uFIKXbdtntTwWdSkR0yMl/s7x25F4cBM4FB5/dZrHAkVT1Sqsc1gLIND8QDsVtmkoHFRW+bqmtaR
vXxn9KH9hDzLj/f44eUu2prqAfDAX4p21F1lGsEjKrV9GPNQ+TjiRmzDIcbirL6MIoBLAJnm0A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22472939B3B2760"
last-modified: Thu, 12 Nov 2026 00:48:15 GMT
content-md5: bhOY/WZ911OrSdFfLFgfFw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1f414869-ab0f-4076-8490-1919c0a420cb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-1bf5b449-84fa-b442-3804-617191773134/test-blob-bb0e3009-337d-3576-6ecb-8d330f6057b0?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 5e350236-0f5a-45d4-82e6-326e87e0f5f8
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:15 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-1bf5b449-84fa-b442-3804-617191773134?restype=container

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
x-ms-request-id: 4da00b3e-5444-4873-aaa7-77aba7a775a2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

