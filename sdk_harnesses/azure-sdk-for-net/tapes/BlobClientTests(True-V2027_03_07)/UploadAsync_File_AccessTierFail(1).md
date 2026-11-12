## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ecaa37cb-653d-c120-943a-342b33bd5a72?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_File_AccessTierFail(1)
now: 2026-11-12T00:49:04.2885777+00:00

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
etag: "0x23DB1733959B940"
last-modified: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1fa7de1a-4265-4489-8456-54c76f48c970
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ecaa37cb-653d-c120-943a-342b33bd5a72/test-blob-dee3f0eb-370d-55c2-5d17-4a80e3d041f2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-access-tier: P10
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
BxlTxB1h5YirHD4LkmaOBFIaxUMvHQ+TdVWOJhuf3cP4QSMZaZZUiQpbM/H5tsL3iUUuyQv+w+oK
v0/H0r9sCz56ElBCdZq8xTs40+oemr6SlpzVcBS4+n45DqpGjLZL7ieyfqNytROrcgPPxe8A7CWQ
NTwilpoqwhjSCGbwdTiE7eXCaxsbIOGJKv4Q6TWPOSKEtld6KFeMiLyLoKytuv3KStcKPYAKdBVa
mWycGtniQs9DbL7hCsSNNuNfj3813HABRZ5ehfyieUJBII/r8G7jqV3daU4+6T8SfAadq+SVJLz7
mtQ6g73SofJ8n+o1oUZ1fOYiWHMiwlxfSwj2Bc5drPvS71WZqCWfCsdbwklV3Nq/Jy/+c8xJ2dd4
2ze13JwjHvPuYrLx3NPBgk2rxgASCW8tNt2fXzguiRZ9IM3t6i4qN6NVZ3oozktcPPF+nRLXZtLI
h6W/hL+6v9mbc7wF05cfgI9cvKH0BGiRQyJHsOsDprr7JGKIa7Lkm6egjFqPVmhaXx2Deqkw1IM9
LUGccw/umM0BCa80lhTcdyH6VHcNAuy57VDNgCsQy1DfSz5xSCeYsvSNjUy5JckIpwOHNX8LMCtU
4oa+IBii8T5eVEvWai75YqKDgHSfAMeHxdkniZXQ1BsTHGah2ZHc6pwOW9B+MTzUjdPdiK+2tOK+
N1s/emiojYAvw07IV4gQppXYkaT2CZOcU/vC8kxrXGiD46E2nW80Zs1QTm7uCzZKzeEZ3iM9xy7H
oidt5Zs0xGblRXTn2gkmoyvXprolrkfFeCVqUX5ERhtzb/pHx4AyHIkHCMbBY/PY8zr3ZSFzovPg
p211yXPooP5Yc2oO3tyrpYkxHaaAAxUykl1DTeD6/80HZx8SvFIWH2fHaO+IyRVdTMCXQoRNX6RY
QzcVpVMeXnSdB3a9mOk2Gv4/uJolqshH5QAfYrxIugd6ungbAHkTqAp66sKeoLPXYSeGDqYJMplu
zb9S//u3VU1uQt5wGxqEKw+Qq78GqEVMSAGUwqtgcYffrDK6wKkOwpR1MF3VZ0UNAeKWeIfZaCR5
Brf6IpOhDdFWkG7oyWpmgugqkHjod+C7h8DIyvgABkQNQbryE6AB0yKLf9bXJTd4MPaerteskI/W
PpvS2EPZVYoq2oivc25IKb1WXPcJ5GKIUJkBYVdsYbArHNUFL/vesilMrUqvyL2IVoUaVTSXzFo4
SYiq1/QyvXnYhFeZQ/nCd6nOvTYY2YjceQvSUgt8lFB6zOZzNNs1Ge/Q10Rl7xOLWN6KyQ4jIG//
zl3pYGtuW+8GHnYTT0POmKNHRwJDdor3Rvkt8ctBVqx2c2V9TLmEYntUX9CceAmavDBq3NhsvA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: InvalidHeaderValue
x-ms-request-id: a239fdef-97a2-4e09-b52f-348f1bf231dd
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:04 GMT
```
### Response body recorded for playback (400: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>InvalidHeaderValue</Code>
  <Message>The value for one of the HTTP headers is not in the correct format.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
  <HeaderName>x-ms-access-tier</HeaderName>
  <HeaderValue>P10</HeaderValue>
</Error>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-ecaa37cb-653d-c120-943a-342b33bd5a72?restype=container

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
x-ms-request-id: 09660438-ed0f-4cab-b1bf-01a2b8ec3e11
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

