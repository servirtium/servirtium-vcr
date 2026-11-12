## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-67b90faf-248d-059b-b63f-372feb2adce6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetPropertiesAsync
now: 2026-11-12T00:48:07.2484728+00:00

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
etag: "0x264A1EE9938B360"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d9362783-1103-4450-b90a-d12796f912bc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-67b90faf-248d-059b-b63f-372feb2adce6/test-blob-f3066d44-997a-ed5d-5419-967dd4392ec1

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
OJJSGFpZ/FWT5PhocQmKyGHZCSvlWVcWscsSc40eMHwRdvdY18OL63GwYJWg9XxLj84c+zAD2986
PGaPRonIdbR7VvoSMfGdTR25NfnCdbtOx+S/ATVMDpoXHZpd/KXo6OrhJJ6COF3cfq0TSabmeMeq
QH6kCHN+L0hf+xRWQFF40UwO4FAdzI+H44OHOcT0MaXTsrwmQ+B2Y/VVIj1JhT1cmndZ15h2jXPv
HSXw9vaDa8lvg46UUY1sl31bx6pSPV1FK55NmlkMXSRJNya6hmz+0bZz2gKvx0jp7UAaGsXInN/H
qspYNtFvYiZpSxpnsREQXPXz32NblmRVY6wZ8kJegJpG89uhppvlA3jcRXwugTsvCr7Q1L17bBNm
AtIkVXDkC8p/IL41brZaDtvrf1HnJ+Fw6uiEjqvdy4bIO6TIwK0I+DqxrmF9+ZsIdsbikO3Cftrw
s2uHYHweolU3bDMRkU0t44YXNnmA8/BMexjl+zuZBbzJ1w1CgJi9kgsLRY1n9uR4tKxmqkhhcMB6
O+RkOacanmZ3R7lA62PuWaRtda1j5YUzbUaOM1t0aGdNx0WzWVhk8Kcm764qN8lId1Cj8/oSFlVf
MMxhjGoLA99S8yMeOgBLCYQGPfXWCDV9RbsK0HVsOrHvVCmMAmQ8GuzP2ESmKjxQWOl1C9lfiCeX
5EavATJq5bhyLubXvgYgySMJBi/x1ht/uXeL9y/XkMwB9R4ejRm5ZfOLNPtWeZriVUK2VYL3pg0r
L0e73u2Jmp4Z1cnoAjwJT6A8ZaIfKEDdqKLsITpJCU8R8l3R/oYFApldPKPR+lIGrAbhu0BqCwYH
3jZLnHhj0Mx51w/eOFEZNmMIweycC61P5nU0aE0OpudWySBQumUh+WzXVyNDJ3S0x4XdYkoaa9KI
/LYDL2d/azAoh24xyXz958eAxbSKC74Af6DIMEScPF5Nx72vHcoEWOzzGp8Fg/4I4HqCmqYd/vD3
ArDHtjrsi0sP4wG+Tcn9e23Il/Af+vuhv1DJGqG4MMnNuBsaPKGyB49T9qD9SZKxhB85VWf/1we0
JvfpInCqV7M38ZWu4j7LFZBhywRbo3W+GJWCf9pizeATZRaqyOQeqZ7sxVj8A6HgbT/XngwCWYKB
KgnbJ9jY1SS1mn0nIU2rQiFlbt4dwhXzoRGaii/TEAyUKJ7bQ4HGE/AzR2gkuEvyK1vrneukZGj0
54XGPkr14Ylxk/mu0P+fnlrt6Xqsz+nGqF/T6HMh8MQ15lz8ANWlPmbesyVSQ1tbS/6QtnruRxic
/5XrIfgVT6I0eemjo56ER6sUzhvDc2QDd511kDlKR59EXwBAuhxtyWODHspyuKdfDG7O2Xn82Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D390E9B6577CC0"
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
content-md5: o8X6ycMTFX1FPQNsE5Ojgw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 520620e1-7f90-4746-bd66-3e049ab31f10
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-67b90faf-248d-059b-b63f-372feb2adce6/test-blob-f3066d44-997a-ed5d-5419-967dd4392ec1

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
last-modified: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1D390E9B6577CC0"
content-md5: o8X6ycMTFX1FPQNsE5Ojgw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7f155950-7032-479b-b3c3-4ab0807a1364
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:07 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-67b90faf-248d-059b-b63f-372feb2adce6?restype=container

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
x-ms-request-id: 5ff23f55-b7d8-4ac3-8c95-64b487e199ba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

