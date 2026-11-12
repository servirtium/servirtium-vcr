## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3a098e7d-7361-2c37-994f-c5b016906007?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetSetTagsAsync_AccountSas(All)
now: 2026-11-12T00:46:13.0681838+00:00

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
etag: "0x2412943BA4EDF80"
last-modified: Thu, 12 Nov 2026 00:46:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 219d3c1b-8ce4-40c1-9b79-5d5237906ee5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3a098e7d-7361-2c37-994f-c5b016906007/test-blob-7f37e7de-8103-666c-6ad8-6d606196487e

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
+449KjgZwmyL2Y/7jIMSZk1EGm1Vbur7IaLPiAbWywMGR7SHUjXOxCXL9CrycdrnxgYTHHzbKI2k
QgiVSjlmtA2M9EXOihQXdlZHinrACbDI58L/w6+HKx4n4xAtOHrsZD8cZXyVGTvx+6Ylk50S4zhY
zWJ3Z/FeBckmpqcE6j3cWyY6pKM0Ms6GDccJYZeBFP/X1WsXdf1OvWCyb3KU7RFoSTh32D+UI5uT
8FkpVaMypZGoLRTRxOYo6+ZDgsNc8iC2oBdfCTy/QrHQg4SjJWi8gMrg68D8loVRTu1ZUaHXN/45
crWM0ptV6epjAUBhhMV+hgH5ewZguQmSDbtOZvAP+EyFarKyMK0uigLVmJVE78kn2suf3rv32bmr
+sXgBoP6Uwn03BoTy1ZUyvEEiiB0TR3xJ4slbxmQjZH5BzboToN/20SMUBOvFA90SxTK806YN6yn
7t/31OTvY06JGcQfbHttha/b5/0JQhN7sCQExppCYc+JQGCkhwZgnOzFJvtLVd+ZXG2fvE+vnavM
fCO/6p2zRrf0lSsayf6oe0sQRBwYMFtFa2kso6V/2qK11wrjoLFPEd9DVr+zfpNv90EEnlmOtEvI
en4zh6MSdbuIZfHzxdqZwTI91Nmcke3WvaxjejxJJiO/GiYyG4o8MOEDKxihezFnat0nUd9xK+iR
Xcn2rvp/Pz/ONKqzZqWnAKP4mGbVNUF6/A9eIdRDTe49ob7BRYLmhOvZ0keHswQ3f1E7eJOCvCiH
fLHqIB1qi+e7dsXn5rohEhN6/GL68kkLJqKDB9RbuuWVOcnQ/GTObkdfzDw/UJmWGmZ/B8DGjYln
3vl754MTX7vgUa3xUBavq40amiYMzNYI7Oxt3LMkz6s/aB1qU4fETGyBXv7spcpQz1wyq/NiWxIj
cvqWpYMIu4EBsef4RVgGVk26i23XHEciHQxW8SS43A0LRuGMLafoeaN86vPiV4oDLFSlqNCkTFWy
dId3scldSdXZ7f53eSil0hLKWjFUP8aCU8XPEjQ9ZvqL2rkgcMfZH6EeCWmLjLIrANW+2fEkXjTB
9V4DjjagnIYE659vhWJK8DuQNjZc9sYToxJef4wIZ3yFXntp1ZBqfWzih6ATvHpzc+m2kyf9ZP+Y
8OskQRz5+4Qj6ibn4RqqJrnJem4lAOaX6wujUtNUh/p70eWlRTtQ6Iwc8NJTjJLODG1uNOqQcvAE
jVYQVqixzmIsaxA1BOB9eZHiCRAUQ1951UZm5lMP6171objkP5LjayFwJiGCmQeM8LtYrWnf8En3
loBiSugPHH+xP2IomDn+/p7uox099zw+2vWYtz30FbFv7agSgSA5YAqi0FmkY1eBWq/L8UwsuQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C45455D8BFFB70"
last-modified: Thu, 12 Nov 2026 00:46:13 GMT
content-md5: lw8PMZw4iuRmovkzvFW1yg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4ff0ee0d-5d04-4771-a4bf-54b67958dcc1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-3a098e7d-7361-2c37-994f-c5b016906007/test-blob-7f37e7de-8103-666c-6ad8-6d606196487e?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A46%3A13Z&se=2026-11-12T01%3A46%3A13Z&sp=rwdxylacuptfi&sig=YclVSDgidZo1IegssIS5tJSdfGGVfSejBnuicZUgOYs%3D&comp=tags

### Request headers recorded for playback:

```
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af087b5e-9bbc-4530-b635-3d62a4897ab3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:13 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-3a098e7d-7361-2c37-994f-c5b016906007/test-blob-7f37e7de-8103-666c-6ad8-6d606196487e?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A46%3A13Z&se=2026-11-12T01%3A46%3A13Z&sp=rwdxylacuptfi&sig=YclVSDgidZo1IegssIS5tJSdfGGVfSejBnuicZUgOYs%3D&comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: cd6139fa-f5ed-4ff0-8cf9-00affca34881
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:13 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-3a098e7d-7361-2c37-994f-c5b016906007?restype=container

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
x-ms-request-id: 66d7004f-da5a-4f34-8ef2-6f775303eccd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

