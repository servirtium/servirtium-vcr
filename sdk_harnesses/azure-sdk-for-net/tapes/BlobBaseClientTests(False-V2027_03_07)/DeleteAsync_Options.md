## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-dda59774-ffe1-f040-1aba-9151150c29d2?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DeleteAsync_Options
now: 2026-11-12T00:46:31.9502819+00:00

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
etag: "0x234D4E7BFB31A60"
last-modified: Thu, 12 Nov 2026 00:46:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 683e4fc9-90db-4851-93ee-0232928b5917
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-dda59774-ffe1-f040-1aba-9151150c29d2/test-blob-50c37209-ecca-4691-602b-69d821f8e280

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
CU8nWlx8BKjsFKAijvrVbKT3jC26WXqIBl58tpZozyHXEEjG5c51jW0bY7ZLb7hmVvwzKWu1xrDV
nlT+/04RhER+Sn2xD4fWgv+/n/XDPJamFl+aNKa1IUmY8Ed6d40fCd9xzSQ6tEd1Xads9ie6EmG+
V+nud0+eySk0GR5AWwpyoJUWUW9xa2EXJNf/SSsi3d7lvCCkMJGQ0wP7BpopNQGc+laRpMDyTOuI
1lN3n3/9ETxAW5/qzW8Ehn5rdWXG7u/VYk/VkDkd8m80HFk+GDOD/vRe6dpisizmjR5ChteGwehj
oj0wKIADImgvtbEWxW1K53dwZwUVc68i7gMa22uYrlpx23X2U9ZzW8ZxMvx60Miw955fFVriTi6N
DTl96Ef8lwdXpOr4VJSh/Qw/o0CyqB46auPNOJj/joxHaEWc9nJ/dZv1IyvduKMJvhhNo6rt2mUa
Q35kL15uVxZdsOtPBAeawC6lvYXzXLE/w3qAseviWY3fgbLzGkY9hssVgAe4urkRs+N8SB3gJ+bN
JWvj7qUre1ddb4JUpqXoZze63dyphgjAb/4HZRBw/1rMJvXaWpgl6gSwW0o3vQ09lOHmJkkJI55j
In6nIxVG7XAoh4CwDQ2flPPY+Cu+ibLxydEvitkQwwJWdzcZfcbvam7aDjWMjYbTRpFVMSpzpJnL
tllDFmKXF8N9WZbWhRYt6I695Hp8ZDxLXENHupLY49KdTsdtq1QLQ/dyDzTv/cF6KEictsAfT1Ed
+LkfT1wxpXXEODdPvz05saCDClUHW1+BzZJJOy0Rfv51ULKa7POaQGm+K8WKK2gKYgQfm0T8FZxa
nYLK52lIsrk42m+Kn8Wt6MnrSTCZ96IqP9kp8uK5eDoWP05x0FkAdnkLUlH4gMM+crN7EcxswKbg
oKiPH7/WfmE0dF93Oxhv69O2jqVRMb4W6n8vPmduqX+okTCxcFa5NdPvwwtjxzebCyX4tjIBj27p
eTRApkD5xsrgzqrnvnp8/FnRYW2ysiNIlDJCdfNMpgLBx/cieY6T9v1Bg/iMs0yrfLnZLy4BNsYQ
9xINt1DWkyenJvaDWYPKPmpwcS8qu+Dll/g6c3fUwJEwEYJ7hT+sau/R5Y1WJyM1DvHDkcSW5jsy
KCBXnCCw02ZlUkcBT7kqwwY/WdZTj2/VBGSGEC7MmStGSVwfVc7PIBEn8NTbNL83mM6+V4xl3piw
gpe8KsM3mbgcuwZcC244cDjFLJ+a+tClTndgDkKe4GrDb9I2E/ZO71cbvnm52o1fheZToLL5FYfH
F9xL1ot2ftqbmZubAV1CdzxIfztW63PqAYhbSkC3yllLb/waAhnLpUCfHUHxxIOJESl2sZZLcA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x207EE76C76287A0"
last-modified: Thu, 12 Nov 2026 00:46:31 GMT
content-md5: AG6PPIk37zOJwip7TAXvGA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cb4665a7-5aaf-46bc-8956-6d2eb51c949f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-dda59774-ffe1-f040-1aba-9151150c29d2/test-blob-50c37209-ecca-4691-602b-69d821f8e280?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:46:32.0130000Z
etag: "0x207EE76C76287A0"
last-modified: Thu, 12 Nov 2026 00:46:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 30f5b2c7-14e5-4dd4-9693-8fc6f7570d64
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-dda59774-ffe1-f040-1aba-9151150c29d2/test-blob-50c37209-ecca-4691-602b-69d821f8e280

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-delete-snapshots: only
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
x-ms-request-id: 2f39e541-cdbd-4047-9c38-2779de0d1404
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:32 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: HEAD /devstoreaccount1/test-container-dda59774-ffe1-f040-1aba-9151150c29d2/test-blob-50c37209-ecca-4691-602b-69d821f8e280

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
last-modified: Thu, 12 Nov 2026 00:46:31 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:31 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x207EE76C76287A0"
content-md5: AG6PPIk37zOJwip7TAXvGA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: efa6e759-5492-4d34-b1c6-5d7ebe3e84bd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:32 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:31 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-dda59774-ffe1-f040-1aba-9151150c29d2?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: a8e6043e-3a2d-45b3-b91b-28d8baf89055
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

