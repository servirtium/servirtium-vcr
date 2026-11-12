## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-22af7c0a-74a5-67a0-74f4-449970cc7dbd?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesDiffAsyncIfTags_Failed
now: 2026-11-12T00:51:24.0808891+00:00

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
etag: "0x202819F11EBC980"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e789c1f4-d8a8-4bdc-bb93-253889a2cb82
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-22af7c0a-74a5-67a0-74f4-449970cc7dbd/test-blob-bbe63b70-942d-3da1-ecc4-ac08415ee113

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x257E381620A6700"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 50fcb38e-841a-410c-90b6-5ba04a8139f3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-22af7c0a-74a5-67a0-74f4-449970cc7dbd/test-blob-bbe63b70-942d-3da1-ecc4-ac08415ee113?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
HOI202OROkSZfTxI6LWjI1yLRcfG49x223I24MeYJhYTMHyOlqpZ3gChIbBXWVQ3IImrtRkZTTkG
wPjxW1p9AFYmNLc4FY2yMWbGJMErHoId/r897XD8+eNCiNWxaIKmJCFZMCSc/gv8+IOzUyl32qF1
012aPxPlKjrU9o23AMnjHwCg0u1dgAC0QfTsSaW5y60zO5QlDOQNcwbpyAd+RPi6zzQp1wi0GFNc
5f0f+OCUGivfg8Q0vRIbkl7nc7j4Nv38MnpxkPOlfyNBySbn7nslVa3cnsAzhRIhDUSpzKSaY68A
I8ZmI4o3OQOh8/PrNKTjwR4KHJc8yKxnUIOv+7N+pmZ35su0vzEjpWS9kpIeNdigxguFkEcXw1oZ
/tMHiD5QIk2NdE3YLgHs53YyfzUaSRqqDzSn+RYfXyNwm8BeHB0mbHBFkcGLx5gJmajQ5UQl/7W4
XHkJqCk2bhUqaJJBjspZDBLF1bhZHkecnmBtTnreS5wLpr+jHcRHDiKsYV4FyArdd9kyXyn8Xz4x
bQrJyR+aSxz2NegLte5NfceVrb3oltVVj9ehrOtyDkaBcrC5fkUDERVCDpIi0sHq5OJiZ7KASNY0
czlI+Z8whCahiUI+k/+CkpuopodCMr0VtscJD6eUACrZhQoLuhd1EYprgUh+rFDj4NUW2KFP8UF8
MkLYJ3R/DIgYZA70dteDMpT817F0lgp2Ji/SfiiIipPJjofVneoW7HS/ZkdC7mn9kqUNUhqQCJw3
YQBErY5gkNp6K+hPrpWq5uo8tDDDMzjF1OuDezh5OYbrnTvp0T/lX9VtyMOBruMQY2svU1NrdC3I
f9ii3BWhAfJiYxBZwBWrV1VaVmt1RCYIcxjNSeUygCkNIVJmQoPAy8bQH0rStqJVhPz+EB7CUzqy
mmn907cML+LnS57DRBTSmoqlpCXbNbx1d8TpNHAKS80XtKgZw/gOw+9n62oEkkDnLHWUHa8U1mWs
iFvzI/ty3ADQq49suNeSluA2c0pSceWEAgf6di4eA95CbTqcG6D09A5qM+awe3SeAofO3mIbWhd2
biHzeGbSsqixKUqc9Xo/QX476D3/1IaTW3SnTyR7JxMjJq1/AHyomIE+/lEpAQwMj5zj33LZdpqa
XxzxKmKDNgI2eM/Mv0ECk1C8wdU1aVpomsCIl0ehSq8T5aBft20fushO84g8P89b4UwiHLXEZPbC
iJCh+567lS4gudmgotzinQYN53bRLFrwLLX7fy35ToGqnS7cfb8pkl1aG4b2uj5vP3+vt31/8Fw1
sM7owBUAJmpY9QWuBiBH41QYdhDU+nJ3i0CuSpcEK6zSp8zxQNJIWfQbncU5wTleZ9MoZ3lLYQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21898A1FFBFB260"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-content-crc64: 4uGT1ovGnBY=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fcecccd0-0599-41cf-9209-b0eaa54b843c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-22af7c0a-74a5-67a0-74f4-449970cc7dbd/test-blob-bbe63b70-942d-3da1-ecc4-ac08415ee113?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:24.1540000Z
etag: "0x21898A1FFBFB260"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5e2ac76d-cc18-49bd-a386-173f2dac0449
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-22af7c0a-74a5-67a0-74f4-449970cc7dbd/test-blob-bbe63b70-942d-3da1-ecc4-ac08415ee113?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
HOI202OROkSZfTxI6LWjI1yLRcfG49x223I24MeYJhYTMHyOlqpZ3gChIbBXWVQ3IImrtRkZTTkG
wPjxW1p9AFYmNLc4FY2yMWbGJMErHoId/r897XD8+eNCiNWxaIKmJCFZMCSc/gv8+IOzUyl32qF1
012aPxPlKjrU9o23AMnjHwCg0u1dgAC0QfTsSaW5y60zO5QlDOQNcwbpyAd+RPi6zzQp1wi0GFNc
5f0f+OCUGivfg8Q0vRIbkl7nc7j4Nv38MnpxkPOlfyNBySbn7nslVa3cnsAzhRIhDUSpzKSaY68A
I8ZmI4o3OQOh8/PrNKTjwR4KHJc8yKxnUIOv+7N+pmZ35su0vzEjpWS9kpIeNdigxguFkEcXw1oZ
/tMHiD5QIk2NdE3YLgHs53YyfzUaSRqqDzSn+RYfXyNwm8BeHB0mbHBFkcGLx5gJmajQ5UQl/7W4
XHkJqCk2bhUqaJJBjspZDBLF1bhZHkecnmBtTnreS5wLpr+jHcRHDiKsYV4FyArdd9kyXyn8Xz4x
bQrJyR+aSxz2NegLte5NfceVrb3oltVVj9ehrOtyDkaBcrC5fkUDERVCDpIi0sHq5OJiZ7KASNY0
czlI+Z8whCahiUI+k/+CkpuopodCMr0VtscJD6eUACrZhQoLuhd1EYprgUh+rFDj4NUW2KFP8UF8
MkLYJ3R/DIgYZA70dteDMpT817F0lgp2Ji/SfiiIipPJjofVneoW7HS/ZkdC7mn9kqUNUhqQCJw3
YQBErY5gkNp6K+hPrpWq5uo8tDDDMzjF1OuDezh5OYbrnTvp0T/lX9VtyMOBruMQY2svU1NrdC3I
f9ii3BWhAfJiYxBZwBWrV1VaVmt1RCYIcxjNSeUygCkNIVJmQoPAy8bQH0rStqJVhPz+EB7CUzqy
mmn907cML+LnS57DRBTSmoqlpCXbNbx1d8TpNHAKS80XtKgZw/gOw+9n62oEkkDnLHWUHa8U1mWs
iFvzI/ty3ADQq49suNeSluA2c0pSceWEAgf6di4eA95CbTqcG6D09A5qM+awe3SeAofO3mIbWhd2
biHzeGbSsqixKUqc9Xo/QX476D3/1IaTW3SnTyR7JxMjJq1/AHyomIE+/lEpAQwMj5zj33LZdpqa
XxzxKmKDNgI2eM/Mv0ECk1C8wdU1aVpomsCIl0ehSq8T5aBft20fushO84g8P89b4UwiHLXEZPbC
iJCh+567lS4gudmgotzinQYN53bRLFrwLLX7fy35ToGqnS7cfb8pkl1aG4b2uj5vP3+vt31/8Fw1
sM7owBUAJmpY9QWuBiBH41QYdhDU+nJ3i0CuSpcEK6zSp8zxQNJIWfQbncU5wTleZ9MoZ3lLYQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FE8DC202E87D40"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-content-crc64: 4uGT1ovGnBY=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e7f44735-f715-4799-aaec-f858fc939866
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-22af7c0a-74a5-67a0-74f4-449970cc7dbd/test-blob-bbe63b70-942d-3da1-ecc4-ac08415ee113?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:24.2080000Z
etag: "0x1FE8DC202E87D40"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 487a91ef-9226-4105-b55a-a267226a2313
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-22af7c0a-74a5-67a0-74f4-449970cc7dbd/test-blob-bbe63b70-942d-3da1-ecc4-ac08415ee113?comp=pagelist&snapshot=2026-11-12T00%3A51%3A24.2080000Z&prevsnapshot=2026-11-12T00%3A51%3A24.1540000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_7
x-ms-if-tags: "coolTag" = 'true'
x-ms-range: bytes=0-4095
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
x-ms-request-id: ee00b7bf-8418-4048-85c6-d350ae4286b1
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:24 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-22af7c0a-74a5-67a0-74f4-449970cc7dbd?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: fdaf1893-ae3f-4d03-8ea3-001561955220
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

