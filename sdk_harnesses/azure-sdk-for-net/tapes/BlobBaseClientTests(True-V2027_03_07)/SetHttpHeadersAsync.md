## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d0706496-8a54-f4f3-9daa-c6cfbd13af6d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetHttpHeadersAsync
now: 2026-11-12T00:48:20.3211751+00:00

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
etag: "0x27256D07A2E7360"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1033fef4-5ee0-43e6-9b63-381ab97e6742
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d0706496-8a54-f4f3-9daa-c6cfbd13af6d/test-blob-82fb1938-2775-4a2d-6232-5538b58d66ff

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
dI1Cc5EDgWgGYgFbGnq5zvK7pExu8kxuNiZtITS7Pw9Exlsw0DvcNZiSfBMl0jDneYdG+ekakIJA
1D1qlV80SiPyF1Mfif2232603HU5SGT2haitdEUmKjbY7/z+cZ84XjHvM7vcyPCKjxp6ZbQMB4vZ
dBC3h9bey+0dRpkBuG3Oe35DSRSpGby3I+Uqq8SBzOhwJf2PgNZbEGfNvoFWiNesrOk2yL13MFpT
/2TwsyAom3qxkJNwP/un6Dms21o7YZoOff7aSwMq+fSiO4Bya11HpSMHpPdEPG3ujuCEylX/GJ7J
4jUhTlB3hpeezQN6NH3bZTU3NLyiykGR67wipi6foyLiqIgnJVfSjx5gpW5pdFpjqGUfx+ThJxjz
j2KTVOBo/irhl4v0tD/eZaSeQSTSKHdiv/3JgNs+AIFwM5X0Pzs996ZEiN3Ob/QlQGI/Q+XzIWfr
MZXin35OopYKg4Cp6SVoYEp9jqCZk08JpD95/r2bfBIuCQ2mWlgo9uVGxOtze1Y81+KbdpLHUZ5F
2fs+1KPZbgdue98YwgbyVZi6U85klijpPCfaAAZ/Z7hvYYFd6SFBbVXjBAB2JBTcqSD6DP7P4ULS
VZd8/m4B7hQnqWGElGt2eeV5gJEnchgS/lflhVq6oIA/ipSJxW7n4hbsT3uzVxS0hJIYVWCwq+J/
aQAWHGm5bQnhRQrX7LR3kZ57OyOdXqZDMADIoUofjt6xCltu0MatMuJx0hIJ3ZfeocTCNXC/4QtZ
0+to8cu+wbcrJuFZCMHYzghBK4yUOVNp6QCFXVlu8ilPFf3aREEWshBa3ra1hZkD6mZnfrV+xJmY
/gfKOWRdvDS4CfLD/YnGKnh7OVucs2RngnLyB3Rz0VFjQUY5THms/SGC/XumP+zdoFM9A4o+/Euj
Y7bxa7XARTihYLxDjd3+zjw6GrbowUOGFGYgNs3GJEX6lujDupFrwrdDBN4wmhN1PjRNBOKVuqJy
a1ZPoA9q2zt3SPb1OhSrzlf+pbxlVnpSqveZeSBiZdxGUU86GyKo2CmiuFEdgAMgojWKlhTlDRXc
/fUX0WIbFOMarunEcLI1VsyTwp0oNSn0eNbq2M/HYUM6Xh4skQfHh6RuAtIZWzGDVEBIUUt3s8jM
I1iLMTwTUkylihKUCcXFzDr5ujJW2hylZ4OPfw/4wqpWYG6uO1VnWq+FdNEf7kt6goUQfvmVdUg7
5cq4hNM9rMdnPalXF5DkkV+C0GZLhng4FP2K6ESxwOolclaLrtXcSMcKt7ChI2r0K+yZE6Th8F9R
gHDWssSCtn2+MaU6WeKKpYifQM/HlvCSlr1YF61GQ4H2Oi5lBZYCiAAz4/LEudIJD20cQq+Qig==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25CB54F6AF8BB20"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
content-md5: PJMsPrysHtuP8A4kkwNKxg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 65bbbb7e-51ce-4c65-830d-968383329c05
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d0706496-8a54-f4f3-9daa-c6cfbd13af6d/test-blob-82fb1938-2775-4a2d-6232-5538b58d66ff?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-blob-cache-control: ilhyibddcbulkvuoylrn
x-ms-blob-content-disposition: oydfecaftvilehppxsdb
x-ms-blob-content-encoding: lbopolfycwstyueihbug
x-ms-blob-content-language: bxifrigdgfqgiqbnknps
x-ms-blob-content-md5: 0NTSxMlaYNxMzk56FMARUA==
x-ms-blob-content-type: vacwdoljdghvxwanriwg
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FE64F18AD28760"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0e703f2c-4a06-4733-8c83-033b2bf06629
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-d0706496-8a54-f4f3-9daa-c6cfbd13af6d/test-blob-82fb1938-2775-4a2d-6232-5538b58d66ff

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
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: vacwdoljdghvxwanriwg
etag: "0x1FE64F18AD28760"
content-md5: 0NTSxMlaYNxMzk56FMARUA==
content-encoding: lbopolfycwstyueihbug
content-disposition: oydfecaftvilehppxsdb
content-language: bxifrigdgfqgiqbnknps
cache-control: ilhyibddcbulkvuoylrn
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ccc367fa-8823-4485-9f28-d7bcc760a3aa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:20 GMT
```
### Response body recorded for playback (200: vacwdoljdghvxwanriwg):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-d0706496-8a54-f4f3-9daa-c6cfbd13af6d?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3a6a13ab-199f-4fdb-9dbd-191d8ae7dbfb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

