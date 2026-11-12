## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2e34e36e-1daf-b002-771a-20cd15437be2?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SyncCopyFromUriAsync
now: 2026-11-12T00:48:32.7914553+00:00

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
etag: "0x1C3195C6EAFEEE0"
last-modified: Thu, 12 Nov 2026 00:48:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 202cd179-f628-435d-9afb-5a1650e8e9f2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2e34e36e-1daf-b002-771a-20cd15437be2/test-blob-5860903f-a20d-cfd2-6135-0d384f713fe8

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
bP9mZeqx4A4YMiLmFdfN7/t8tBB+LQrLEWTNeQ/JYQbaOGAW3Bb4jq9SQNt/67qKaB4907wvaT70
m1OF42b+T9EcDN12txLkgyVgLO0vSyaqQhHwi41Jq84hIUHCcqtJU/AJY9/cE7EMWE+Xzj1QxU8t
2qBUDsNE02EOVJXRIhF6F9j8JehHzS9g5DM9styQ0VvxlJcK9UUtxZB9zb8bOjU+HbdlU6Bn5g1x
9CmQBiGEfoM64I15cCGTz19Yyf9vRar9/5UlK327iq6KmAEbnb5u+U874FqoxayV0oRADx0NAq5/
kgeMXlIGf1Xf79cgdzKg6c+vM2RPVTrokFn4enqRfJZSmwq34pv8NWEEydXVdFpSnyVNXc5KMD3N
o875DQTbTXJBztwn6QY0s/4CSotkExz+pttUQx7IB2vN6T/NAidcKXtjk6V+KrUfGarPR+WxaZCx
+mcphgpUecdxWv/HZ7DXpiEQAX92gHslNSpz+L+FG4CuGwi/M6NxDhreDNC2WLH6+KHEoWgRO3ns
BFDf4IAI6z5+GEyoF3J9nvJlmHOqbt14eQAdwXkYnd+O0y5SkS6Z1SGRNz9lUeAvRgJ1q6MGQZVz
ZmaA6inFZXtsGkRDKwzEzMJSGDedEicf7nt2o/E8iJGZ3yvHGOv3zNHD+Tec6xr2sd/gsyhe1lQ/
YfyuTsKKL5Kyqkzh/bPXWktl2RnvggJggPIRXNRpOgjXiLbuSX4POcml6kDOFLMsCVjc+fw6T975
Tc3QedO9SG9DCnX86BHNVqBPSpfBkWs+5VN7jEEMnDjX9fuwPr/26KHRiwo+LyBHD6Nb6wVHN7th
kZSAQrwtNm48JfMVHBfgWGL18AZh/7YyNHyesLAzkL0/Tqwrdqblo1SbAgksMfOLe5OjUUe1AJLe
TQ1Aj4a+CJQ11c1qteK7EEyxxf2sBgKJEjUdkD92ik4aTSmYpRTO3fl191wlIcWw50D6BDqUMkcL
t3xQoHdUv0t+T2i5I2s34ugDNg6mY/FvbKn/e4YUhhrhjO2YfTyBIDcQp9Fd98PUwyFSkfs4ZVOL
4TTOVUPFaslN15d9n2WrgRXXlbwfEXTmKrhkwvUfqSaaDZwIs8v0Sz0IECArVyO8pw/mYdCXa8/A
5yuLYKfULi1w45HJo85K40l/FgFTutOUqBvlOEhWAqHMR8ufaeuVNOLyu3OS8wRBm32HGFTObC1X
9riM7vXlGuDv/FsCqnpd6uIfYf5fArQXpJ3KzupM/dudSHIzCEXsDKGSovaoPvEDKS5yrwou+PMD
dUpYG0v2o/9/ZGIHKuGdMlRdzWC9bmWsxqW72k7Qb09/L5L7lPFWnP73KNqO/P5M1X220SqSRQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D9D1F1966F84A0"
last-modified: Thu, 12 Nov 2026 00:48:32 GMT
content-md5: 8gYIdjgyZG70ziCTOcVx8g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2df88a9f-d7de-4ca3-bc16-64c1c682f1a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-2e34e36e-1daf-b002-771a-20cd15437be2/test-blob-54ace407-3aa5-b0c8-aff5-1288fb4fa19d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-2e34e36e-1daf-b002-771a-20cd15437be2/test-blob-5860903f-a20d-cfd2-6135-0d384f713fe8?sv=2027-03-07&se=2026-11-12T01%3A48%3A32Z&sr=b&sp=r&sig=Uc4SOgLTmn7n%2Bz%2FzhtpBpDIO%2BpY37Ej3RjXHQ10CMiY%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2461BBCC557ECC0"
last-modified: Thu, 12 Nov 2026 00:48:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 512851b0-6b8c-4f07-a537-a032fb107b13
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:32 GMT
x-ms-copy-id: 55a4aa0f-3b76-4bef-8be9-4fa5cbe0a94f
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-2e34e36e-1daf-b002-771a-20cd15437be2/test-blob-54ace407-3aa5-b0c8-aff5-1288fb4fa19d

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
last-modified: Thu, 12 Nov 2026 00:48:32 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:32 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:48:32 GMT
x-ms-copy-id: 55a4aa0f-3b76-4bef-8be9-4fa5cbe0a94f
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-2e34e36e-1daf-b002-771a-20cd15437be2/test-blob-5860903f-a20d-cfd2-6135-0d384f713fe8?sv=2027-03-07&se=2026-11-12T01%3A48%3A32Z&sr=b&sp=r&sig=Uc4SOgLTmn7n%2Bz%2FzhtpBpDIO%2BpY37Ej3RjXHQ10CMiY%3D
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2461BBCC557ECC0"
content-md5: 8gYIdjgyZG70ziCTOcVx8g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: abd95a11-7324-4441-88d3-8395cbcfc1e0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:32 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-2e34e36e-1daf-b002-771a-20cd15437be2?restype=container

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
x-ms-request-id: 52367b12-1ddc-4fec-83a0-6f32edc11732
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

