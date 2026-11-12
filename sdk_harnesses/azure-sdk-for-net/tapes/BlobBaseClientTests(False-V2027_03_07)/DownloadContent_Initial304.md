## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1dfe1c07-9af3-c39b-92a2-cb81965b8a2a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadContent_Initial304
now: 2026-11-12T00:46:43.1296837+00:00

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
etag: "0x1EC5701784023B0"
last-modified: Thu, 12 Nov 2026 00:46:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ec9ffdf6-21f7-4624-b5c0-464d22a09d57
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1dfe1c07-9af3-c39b-92a2-cb81965b8a2a/test-blob-eb4b90b3-84ac-0dba-47c4-589fb2188716

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
ETOaoOziGQ5qdRidx9vlPSOoeuEgcyKeIN6ev8jgdpTHyMCdu7GHJALvs36C/fu2vI1d7uCoCp0Q
/IANRFlFif6D1v8aR4JyIVbeMMCkGyLi6AM7goizH74jjb8weeCpqil//if8m3QL682Kydnda+Bd
KlxWCQd2z7dA97rDQad2NYaXJBz65UyOMJe7KVXlRiHe00+EUqAiCS5wu6O6SKklFJRSRUfEYkQP
yNlvuqZhW7GZ5W5X8uPmdBruiiqo0+jtlRXAkgDZGnAKdInGsk+IDmDyIGM6ziKxbNAs1dgaZvTx
giWRocmxv8v+TX1ZH8LLZXvJtrOEssfyDyYvrUSX8A2V1DAq9m2XQWCYPIGkV0wOYXBdULBBbM9d
npGigRKGZ1xvxEqRoW8NMnRS7HZGTrfZIEzUOZ9dU2hhzFfb9L9OEdQkNJMCfb8ATx077oBYF1DZ
yWHGsi29EnDiMNUXMj61A9uiIRkj16OM0+qBIWXoCLQHASpeiF6nZyIjH0zq6R3fhuqktvY3tvK9
Od9DO/AL+icgDzAUVnt9+rr2ALdWoenMopp6Q1K+0Es4oE5+ZCsyGCUkydrtyzBvJ7s7QLU7Zpj2
dplVkbbVYj/k27Us/paOxOiSMtcP39ZqChyWgpCW/Tq2iO2S3IduT2eaCe96QigkrHvNqDTA55bC
6oaaPuCvTt57dnap/OhgI+JwdNbn8MjzctUUyFQF9qFXz/EA0xCH67sQ/syye7CTbIRST3K/2/q9
p8wKmoWKdoDUUS33YFDS6Ygb1vH8QPYlgFzPs6Yul/P2QixDfFA1hohM3iqCnAw0f2bppAUJwWbW
5BopusLZpbo5AB0kjmw45U9osGLMo+RPmzNARfPu7YHFbZg2DMvGcjhvSZzvEPH5sb61oBEDCkE1
2R+PmGDHShKbXiHUAdmEoj0qXFpIYIpCRpM0OUxvwWNWADKsN9rXqP6JU7LQJbDlMP7T2a3n7XmU
TFHNkhHGK5y+fQCm2GpjUrNbvwzYciHiTghNm+i1bxO5F+qICRbtwicVEqivP1iTcIb5iy5su9ow
6kMIeI+0CA7t7cCA2kmdbvzkw2B5Mw+vuSthu+PkTFsPVx/S5EqXYQmawlKYE5U9XBwyiPh6t7c0
WL5kUkwqCKBkcIIqy4qyTWFW33G9F6aVJF/GssRilaBnnouLMg68b7mxM6MSE5CSgDuWJNhGdkAY
zy7tY1bcAdviwi3+JhpTmW+3DOQCghDONDKIzHDIISdLcmPfzwti1DHHMFBjlFkhQ4pojmlcFUwd
Hi8kUzVqGaAFs7S2c8ljVDeyO1G/a5/YZ4nmX5O97lwWwbHbPoH7XBavXuGkas/ABTkyqdr7Xg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2120FC5CE3D3920"
last-modified: Thu, 12 Nov 2026 00:46:43 GMT
content-md5: iBobBkly41VYwtaU4OV6tw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: db816bed-8770-4da4-9a02-75a1d721956e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-1dfe1c07-9af3-c39b-92a2-cb81965b8a2a/test-blob-eb4b90b3-84ac-0dba-47c4-589fb2188716

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Thu, 12 Nov 2026 00:46:43 GMT
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
x-ms-request-id: 8caa11ac-41f2-4701-a3df-6804b3bb15a6
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:43 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-1dfe1c07-9af3-c39b-92a2-cb81965b8a2a?restype=container

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
x-ms-request-id: 5cd20a0f-ef51-4adc-875f-b2b24284e10e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

