## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2ddd0c5c-61ab-0574-300a-0179280d70ad?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetTagsAsync_LeaseFailed
now: 2026-11-12T00:48:16.0378882+00:00

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
etag: "0x1E8785D87450A50"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 75fe3ad0-1e3b-497b-b09b-5b182174ce63
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2ddd0c5c-61ab-0574-300a-0179280d70ad/test-blob-4dc45248-7690-2b56-0b98-76579d75d897

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
OgvJwMX+GDyOsci7u8Cic9gbbmY7nG3ltrIiE+ocZ7syaj4dRLDoSTmHvt6um29K9gN+ggZxXJ6d
4wkS3AVRcUkMiVGBhS8oMyUss92ONhtC1x3nnuW0wA2gf2Cm1W00NUyUohEdyXHTVk7hRajADq3u
0AToatNkV8hD4AXPgV63+H2Q+ZQJJQ6rFEiW03tl33GytwVpS8t5MEpI2ehrBNTwKk0qMBQY5ar2
PFWLzYRN3gCUHMpYTqyyF8lKwEslQA9zpqktOq9cmdJacg917WPF+vvn1+gKmNugeBhLziRf0PxG
FyfbIKNROIL3/tudPCllhMVPPmgnaQ7NjcKXEMut+qISL9Y76tpXlp9lEpkAAzvv5kpeEJGUHq4Z
DpPhuSe3SQQ5ig1TKZrq96jIwVZ0zImGqCqAT+oQfhAnItxHdtx3rsmVx3kum7ywcxjpy11XpEEJ
WhH9NvoZKAv8Kwe9o4HLURKN3gUQWAxt0NvRJrOz0H2bPhvKenjOe55tMXC18tCWHnlKycU7+QEF
j2UfRwJYSVqJImVlANeavmNnoiecuN4KOwg5aAe3X0QaxeoSrzObFecVK89rMB2isApi01bZadeG
FAz6HuFT0cIgSzvshw8vzI1AhowPngrqlrj8VYzuQFsSjJonofYGwloMS+Xhtij7MwfJmOJKd3UB
D4goVnw2Mgrf2ft0CCuWOsQyAlMlCeCQASKFJKd5yBQkJZFu3Wvd1hjaAdwshirbMl4eGHUi3Aan
mFVasA1jZhHnT+OZKF1ZVCs6SwcDY3r3qfJJW6+eAkmLxkQVgyYLd5rKRTZHQgkBxMRK55D+ozXb
YgYaGQtiSE2aDWEYRNAEL9RsOB1DsGboSJbrVBu4jCIPOSEf8F2PaP3prDSn6X/zRbe8kmoYmLKf
MtF1d/Qy4YE/CAqv5T523dAgWgMyQV8W9w5j/Pq396Fvf76MGfEItsqzaOB0RGB5RbSa9z2ubfBx
Xn/lz+WGhxFpQGWA6sPeF6M4fth+obKu6rdFHf9jwBHNG7txI+flLOHPCwT6+FvwvOCade8Y8rzN
N+UuQGoRBn9Tss8IbPS7U1L3r5aus/FbVWAeyEsitCj+pOsCt+t3vQSEpkaM6E/s3iKcIUMmH4Tz
0usJ8j00Mf2mCcgIuZtmf/GRKQyrz20RMuophZPl2IRnDuX/bcvHUHVI5d6H5CWGNqFRlfZ3SAJ+
+MBTCqtqwTFDoKq2ZhEmydiWYuqOiU7Eo0/xk0OO78XigXULdEbK3iSsQ0N6z8+PKssd4OYY725x
jmdbeC3utLDl1OWcG1WSzITG4kULStOAYWh3cA/fypEHmebeb2X2vY+Slfvp8w91ixRhUgwoZg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F828CF6E5358E0"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
content-md5: 8ImCybpPi2FsT630jJ9k4g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8ca3796c-1568-4049-8dc6-26df9de4d6d8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-2ddd0c5c-61ab-0574-300a-0179280d70ad/test-blob-4dc45248-7690-2b56-0b98-76579d75d897?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-id: 17da9443-77c4-a143-0509-5394826fb35c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: e1a4772c-11a6-483a-8f9c-3c88cbff270a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:16 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseNotPresentWithBlobOperation</Code>
  <Message>A lease ID was specified, but the lease for the blob has expired.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-2ddd0c5c-61ab-0574-300a-0179280d70ad?restype=container

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
x-ms-request-id: e2a3b578-7046-4a35-871d-e06f0a9555d9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

