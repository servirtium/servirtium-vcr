## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e2769e53-58c8-9d82-6727-1c6fa682982f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).BreakLeaseAsync
now: 2026-11-12T00:47:33.0690786+00:00

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
etag: "0x1D9FFA3001C0260"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b20f964b-ba26-46ce-b22d-c3e022871870
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e2769e53-58c8-9d82-6727-1c6fa682982f/test-blob-e7a9f3a7-54b0-0c5c-b1c4-6fa3602f4289

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
d6VY9i6GmxMhHJxHgYQo4ir/98+oarr/QWoxBOnfPTjkkvgBKaIBIFeWxpS4FYosm414YDdy4Qzq
WbTDVJcpQd5jYu6MJ7iI/tZ4EaQmRizfBGhbZt0AcbHrFs/uPszAbIS1VLKboHTU8GJh+s9oxBOH
5E8uzdoBYvA9oBDpmsAKuKUfcPF5Q2T0h3Z6n3figlK8Zll8kZ6qtPHCXgBj61aiV0IpSVMhDqDr
OkZkhsN5Wx2+LDNmjiYGdbz/t+VkkJwf2Eg0uDn+m1i5kFZYRS0uSALipb4iPMgbI9SXIVa7h6qq
RK17RaPjwJHbrP3Qri+O0W7igevd/Jx/GZVlZ3kB/gisrgCAsgNf/uQtR4/KS3SkCE/n2Aa+zEgQ
/CwOflkX2a71IwAuDh5rg4IGr7UNtM0gwV4qGSUC7eG4b7bXUICLFm7g1Sh0dfowfFWDuB2SA0de
7r367b+J8jUedZ5olDIBeplGLd+lq0tj+Z3PfjXEJWxveGLDkCmuVuLyVf9cyOgjgj6DTNVouUJx
l/MhuXQAWlAy+BvPPulvmNb8slVLBzC1rPz2QNmWB78gUfk1jJxt8vuvKs/MU0NUE7P/awbsJY/C
bA14CRl2m/FbruzvOgs5jr9anN1h6Fm4oiwll5u4NCxqcyCP9eniOY7dcKRXZdmoxd1HkomxYYS0
wGfsUANWo3rAhcfrqpnWd2NOg3e0YD1TfdK+caKjuBGc2zWC9uiKh80ql98SvBpEcBolYt0M/18q
mdMxmDLYHMy1T89jVIB6w/yqishdQMC3egCHfVYzj9vVWF0VWe+aUXoTXW1L4ByZq57hYXWWzFgS
eh0yUJ92gb/zjfwjZWoMDzhOSuJSa5nj7dG3US5mP4sEAt/RaAHanNuuWFIgdkU01VI8SIJ2wA6E
TmLNvy+RjU5wH2OLO6c3c60GpBNHw3eMg3zcKfcIjkLQTRmeDN2sHMoEr1biqJmrBdTVbxv7PIvr
QTyytWRXaJEguu6NmWbPWohJQxMhqdrjMCQiMx4n1RCOssuh+WdmrEfFwe2rHmtuBRSTsvl3ypdh
z4RANTVy+eXd/uaaLWEh45bMXOjsNxK4tC0JlCMWFug0PyniJXcSUscIzR+F09izcc5jq26vdZhx
h4EHaGXCxuj9Zu03Pr0fugkg5GnzMuBVViJUs2p6hcqQcZ32CuliRQY3h2zqezMRQ/FkjpAvfVWg
shJDbhN9guEjps0fKa8gvp5ivKp0a9ruQm95FvY6YfNIVVfWHtfzuQWKxtRm8RpBRM/xzMGqLEc4
VCukBGzr6EXa19NXSaDHbgKl6aQFiFBUN9EnSJQxnikQnsmsT7WYn96PjBpH6vsvKl2/BEKiMg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27A507D44FBEEC0"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
content-md5: UdWBdbXWFLXyWypSj96PEw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6bea41d7-dff4-4525-ad72-07f7a83a6c48
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-e2769e53-58c8-9d82-6727-1c6fa682982f/test-blob-e7a9f3a7-54b0-0c5c-b1c4-6fa3602f4289?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: cc4fdacb-c39a-b09f-a838-aa46aad61b1f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27A507D44FBEEC0"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-lease-id: cc4fdacb-c39a-b09f-a838-aa46aad61b1f
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e1e4c927-4760-4b0f-84d1-a17b745b2740
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-e2769e53-58c8-9d82-6727-1c6fa682982f/test-blob-e7a9f3a7-54b0-0c5c-b1c4-6fa3602f4289?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27A507D44FBEEC0"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fe2a608c-0bad-4f48-a09b-1db636b17de6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-e2769e53-58c8-9d82-6727-1c6fa682982f?restype=container

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
x-ms-request-id: 570a4f4d-7078-436e-8ebf-54eb0fe4e084
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

