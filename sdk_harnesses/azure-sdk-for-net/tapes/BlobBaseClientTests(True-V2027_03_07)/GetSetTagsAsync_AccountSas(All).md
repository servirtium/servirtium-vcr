## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e7c80f93-56ac-dbdd-442e-bea16788c3f2?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetSetTagsAsync_AccountSas(All)
now: 2026-11-12T00:47:28.6782478+00:00

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
etag: "0x24EEB354B9541E0"
last-modified: Thu, 12 Nov 2026 00:47:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c6782a3b-7a58-471b-911b-34caa14e6e4f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e7c80f93-56ac-dbdd-442e-bea16788c3f2/test-blob-01e538a7-e8c6-021f-27c4-9c23bfbda94c

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
UOFFhJGgQfX7vY0W1cP3jePpMu5UHC6q78a/6Lm5G4eEclGGQz9gBvfwBQhbCS1kzQ5A1Yq69zOy
mpXL4Fg7QaIFkWJycEqkiSv3ZBYlTuWYWxureUb9yXod06iqlSaetMRmVnjL8lzEm0xew5McjEuv
MoU9kMdbB8fnVJyh+vMFWa9Sv/htzWm+5t75ngbnAEdd+mKhYST8Ck6w453AI6BYWWnkys1TQWUb
fqnpYWnAAFNVRP+QZPeLVrWpvOnL/sM9oUWdAjZ5Cbn9heN6Eqjl8OJKat6hx/RxWXQYqYR7UH/m
rMAjI/0d2zpGk98UEEMMxMwGgZTkm9lQK6nCYWA0gTRkk2bowc3lLY6kWzMVXUgwC+S4dM/qAhDm
0/dTWnraERKqsH3dJAP+IVQFQEClOs1hkVV7ewxleZFVAe3VkdIUyUkha63LU+fhuVN75MLPQZgq
8skkXpUFRDbrhyIVKZCB8Xb3hM8glj5tmsG56pXPhsBVq58J72u0GyZ338zFy5DD+fNL2LzJCluK
t8TTTFqhHABiwH7weAIKQ2ipqLdxqM4x9fGhg64Di6BDfjin4M7L1sLLYgsS0oDwQZVUIGGkGQ71
olZp/5lSXzTdrPrKY2KZ3dL0pkXCHiJwsUIYrms/n2UpsT53YtYpeALXNSaGJt0yukKOsHLIMoM0
+E5XOrDJnQ2VoLEkIXr7yi1D6+n86opk5fQosO7yYH66Q2mI0j5SDZcY8IUsDpjIk+VFhUeaNw7D
81S8oO0eokAyad4Qcvju8N1R5PkEONZbYB0Jrdo3Hwxbxd7qlW2q+k5F+aW6tyDsVpRpSVIUvrt9
YT/PFPVl+0nRta0aBFtwpuqrvz4xoKn9HVZFzta5RwYjbDMt2+VY3/1b6QJy0lE5+KNoaP58S8CW
0fefICxzF22m9pgnQsoFU+BA1reniksEDNUzUN4IpyBylwntub/R59GUzNu5EbbYYxUeO3QJ70as
mhNXQMaPnk53tKvBF5khb+/lEr5vS/sfWu3I6myraajCQR6reaYKBS2NQlwKF0x7/MuFI9yHPE4Y
OOXZxrTiy0sD/tV7dfZI2w2R4gieFEOgTO2gJkXMOgXQk0HAMT55qncRBxh3AIfVPEjO9lpGeiOh
OHnHQaQFNsPQq+K0h6rOFzeRjAwrKUxly+n9/USqiRkdH/jFsmnSDNFVp1WkILSd/94jtO0Xdg8t
YXW6Bzh/JSHJl2ixCWXNvoA71oL2was1X/5lhtUsBajpl1DzFwSY1YE024hL7PV4VvVs3KCMNqDJ
hac6GZ5MnZHAyHEV2aZ8owABweUj6XMI7DDfwCkHXGGwKpJcXbvi6D72iyOEY3xO7zigi3S6pg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F25EEAA7C4FEC0"
last-modified: Thu, 12 Nov 2026 00:47:28 GMT
content-md5: huWHDbBYzILCxQQGWxeoGA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8cd88e5b-e2fc-482d-9923-a6fc046074cf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-e7c80f93-56ac-dbdd-442e-bea16788c3f2/test-blob-01e538a7-e8c6-021f-27c4-9c23bfbda94c?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A47%3A28Z&se=2026-11-12T01%3A47%3A28Z&sp=rwdxylacuptfi&sig=Ar3sK%2B%2BWOU962LauejUlTGmLz3HRAZdvFC%2BroqUmLpg%3D&comp=tags

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
x-ms-request-id: d685d94d-eb6d-4f86-8243-5296afbc9f76
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:28 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-e7c80f93-56ac-dbdd-442e-bea16788c3f2/test-blob-01e538a7-e8c6-021f-27c4-9c23bfbda94c?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A47%3A28Z&se=2026-11-12T01%3A47%3A28Z&sp=rwdxylacuptfi&sig=Ar3sK%2B%2BWOU962LauejUlTGmLz3HRAZdvFC%2BroqUmLpg%3D&comp=tags

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
x-ms-request-id: 4695fdb1-d22c-4efc-96a6-f0b262f283fe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:28 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-e7c80f93-56ac-dbdd-442e-bea16788c3f2?restype=container

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
x-ms-request-id: d5fbace3-4c33-4d36-814a-c0283b9240f2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

