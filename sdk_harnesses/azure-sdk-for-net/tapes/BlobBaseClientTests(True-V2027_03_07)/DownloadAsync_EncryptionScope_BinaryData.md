## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-56629c02-c403-03b9-ef4f-f1e04936ddd9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_EncryptionScope_BinaryData
now: 2026-11-12T00:47:53.5063713+00:00

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
etag: "0x22385EDEB5DF860"
last-modified: Thu, 12 Nov 2026 00:47:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 36ee0ea3-0236-48e1-ba6a-b01450c18261
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-56629c02-c403-03b9-ef4f-f1e04936ddd9/test-blob-dff91516-e151-470f-5522-10c8f3e3f9ba

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
qB03XZVaIqxShQcXsmsZUc/CDf8h0qPyH3LNJmxszHiZMuft20/xp3m1A369oVGENqARhyjet9V6
RT4jjfw/5rmOfX+DK3WA0WaGbM4lNH0hSfDLWkRPu3sRc5YQzhp9dR3FLyPRAAoqkbbCWEoGVRDB
AUQLdIt0PsIEcrjecANMCPawYAVaT0jmocmOjGMwCh6GT8zVcgGSUfBgzY5RTCGzdk9UVvQKZrL7
JNLB5bFf1GeZVyA2dpb0Hg4V+YK6lFWo2xYT27QpfOga2k0u0Ws+AfgnuPQAfAC5YDjl9G0vQZB9
GAmbS/iycNs4HJtIxUyj1veJk9xgqF4VWnt8Q4d66pi9sbhiorUAdEcZyGBkcJrrQh12pq6zHHCq
hvF9NixTvTICihSUQTNBiB6UR+D+sOngkQBpBEPqCpRHtxzEgz0axQouYuWGVgHpNB2PHtWQrNUH
nKUs6bnuGICATIkXfQXgeoLV0E4DWTr+gNAmWuu+twtHvOaY7txRP0llBgp40rYYrqRTutuGBEJr
LWnoyL2VwZR+z8AeSIulhJAEnlMvhq0ZDqxHa/0vwLikLcFzaHeM0EV1+QP1+WYYrTVKgmXvO6a8
z7oRTVWXTg8IehrKMhwZeM4OuYyqIxRGLr7H5T5StPIatpi9e4Lv3qvz7X5LTnsYMQmX4YEZEqul
yh+Xz2nRtcUor3uEW/xMHtvhtjaW+t9CrrM0u9NwAaTtGLBjWA5BIje5Ip//lNYNSsOmN1t0D9A/
VCG2nfrxuK7WlkJM6MXMoJT/3dhAQxrdJ3AQyclJeAngIwTti4U8x2nxKf2TwGH92ZfHdDL3/xEG
2XWJ4e/kjR45a8XB3xUPwhVuTxocSWYOE+8yggPX6CTz5rEPs+Z6DJvfWVWcPPqBt7EciLD26o8P
es7/sgoaYoKgzvhjAA8v9EJ+PO8Rcdb1sMpRul90/Psi/zkYe1mRxffS/G4BHbei7JRteK2f/gj3
CgE/yKciLNH9QQDWF3np7Hf4PnVo85ITr87LB4NOggAwIHBXUf1Pr9CcBNy2zNUbg4s2p8CSjxZu
LBjZVyROrr//pfcIkZt5qI6ly++2XOP4r4P3F9pAnZBa6CTkdlirTlUctibeE/LwvP4x7cQnuM81
4KehVpfkvwhmrqh2lTI2+nyZmaW8GpyQB1rcD7DMMzBUrpWwCfi9OPceeGRJeSfL+vJHjR4qeMYL
EE48CK9XmXt4IeadhvCE22GunqI3R40zEBW9haUSKjXPpPipgTBHxt7p0VhALnMCwrG8e9oj08nB
CfeamhPVZfaxzuH421oxZtfDTnY18+Khu8LzVq9bq9Ev6Hc4rCzKE2thj2CRCedXihQCX4VSiw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x230326B9F80F640"
last-modified: Thu, 12 Nov 2026 00:47:53 GMT
content-md5: tzwelx3A4i/IZbLgOTgqvA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bfa38824-0a4c-4496-bdfc-e73646259a6f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-56629c02-c403-03b9-ef4f-f1e04936ddd9/test-blob-dff91516-e151-470f-5522-10c8f3e3f9ba

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:47:53 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:53 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x230326B9F80F640"
content-md5: tzwelx3A4i/IZbLgOTgqvA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 682d52ba-66f6-4dad-91de-1e4022056967
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:53 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: tzwelx3A4i/IZbLgOTgqvA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
qB03XZVaIqxShQcXsmsZUc/CDf8h0qPyH3LNJmxszHiZMuft20/xp3m1A369oVGENqARhyjet9V6
RT4jjfw/5rmOfX+DK3WA0WaGbM4lNH0hSfDLWkRPu3sRc5YQzhp9dR3FLyPRAAoqkbbCWEoGVRDB
AUQLdIt0PsIEcrjecANMCPawYAVaT0jmocmOjGMwCh6GT8zVcgGSUfBgzY5RTCGzdk9UVvQKZrL7
JNLB5bFf1GeZVyA2dpb0Hg4V+YK6lFWo2xYT27QpfOga2k0u0Ws+AfgnuPQAfAC5YDjl9G0vQZB9
GAmbS/iycNs4HJtIxUyj1veJk9xgqF4VWnt8Q4d66pi9sbhiorUAdEcZyGBkcJrrQh12pq6zHHCq
hvF9NixTvTICihSUQTNBiB6UR+D+sOngkQBpBEPqCpRHtxzEgz0axQouYuWGVgHpNB2PHtWQrNUH
nKUs6bnuGICATIkXfQXgeoLV0E4DWTr+gNAmWuu+twtHvOaY7txRP0llBgp40rYYrqRTutuGBEJr
LWnoyL2VwZR+z8AeSIulhJAEnlMvhq0ZDqxHa/0vwLikLcFzaHeM0EV1+QP1+WYYrTVKgmXvO6a8
z7oRTVWXTg8IehrKMhwZeM4OuYyqIxRGLr7H5T5StPIatpi9e4Lv3qvz7X5LTnsYMQmX4YEZEqul
yh+Xz2nRtcUor3uEW/xMHtvhtjaW+t9CrrM0u9NwAaTtGLBjWA5BIje5Ip//lNYNSsOmN1t0D9A/
VCG2nfrxuK7WlkJM6MXMoJT/3dhAQxrdJ3AQyclJeAngIwTti4U8x2nxKf2TwGH92ZfHdDL3/xEG
2XWJ4e/kjR45a8XB3xUPwhVuTxocSWYOE+8yggPX6CTz5rEPs+Z6DJvfWVWcPPqBt7EciLD26o8P
es7/sgoaYoKgzvhjAA8v9EJ+PO8Rcdb1sMpRul90/Psi/zkYe1mRxffS/G4BHbei7JRteK2f/gj3
CgE/yKciLNH9QQDWF3np7Hf4PnVo85ITr87LB4NOggAwIHBXUf1Pr9CcBNy2zNUbg4s2p8CSjxZu
LBjZVyROrr//pfcIkZt5qI6ly++2XOP4r4P3F9pAnZBa6CTkdlirTlUctibeE/LwvP4x7cQnuM81
4KehVpfkvwhmrqh2lTI2+nyZmaW8GpyQB1rcD7DMMzBUrpWwCfi9OPceeGRJeSfL+vJHjR4qeMYL
EE48CK9XmXt4IeadhvCE22GunqI3R40zEBW9haUSKjXPpPipgTBHxt7p0VhALnMCwrG8e9oj08nB
CfeamhPVZfaxzuH421oxZtfDTnY18+Khu8LzVq9bq9Ev6Hc4rCzKE2thj2CRCedXihQCX4VSiw==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-56629c02-c403-03b9-ef4f-f1e04936ddd9?restype=container

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
x-ms-request-id: 256c80ff-111a-43ad-93c4-74d9516aad25
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

