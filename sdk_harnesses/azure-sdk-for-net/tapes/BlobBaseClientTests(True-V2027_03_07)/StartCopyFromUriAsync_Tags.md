## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8b35b269-9c4d-8da6-8487-6f8a7bc0675a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).StartCopyFromUriAsync_Tags
now: 2026-11-12T00:48:31.9771829+00:00

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
etag: "0x2039228B70BB140"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fa7cb77b-3ea6-4931-91df-57147641c1f1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8b35b269-9c4d-8da6-8487-6f8a7bc0675a/test-blob-05ed7667-f171-0db4-687f-8f8bc30cabe0

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
zEthxbBIw8P8oDuj3bHBooIudiLnSC54/icizg0aynfbjr0vX6GpH7MpCdG1EDC2vewJlJWJ+IMd
6MeIJfS24dbEyE70kkPghVdvvT9dw+33bBAhETXhUpU6EnbaIfm+cyj68UjiwiupKA8+GjpEwCXa
kbnklc+g4nW4uYDMBmNesEoXYtKkFankd+kmozha9VFQ/5BA2t5YWQ7SKQir3CGr4GnwLV1SNXwP
/x3lej89XcQuewbTHtZrvgjD0euhOZvHesPOasjz/soUMNrBct7PlctEfGAb2MKShG5VjmOQbsaB
HgB7bvP8On08v+38qkwp9DwgXbw7rKIAPOVZnm9mg8EUP1TeUybXR0Li3xjUltoiK5ombxEJRnFd
ejIOopsO1Tsr52r3SqAWSBV5WM2JLKUKNnPUPxSwCvnigdjzyKSm0wndqK5vKuD6ECb7j+2k006M
BGwoOpUne9xxFcnHIoBw04TDrIP2mgyS2i/ttHsLPa2KZsQ4fpl0ti3R/hUXMu2mirxo4SfKlmlf
ll9mOcZhZtccPbu7OFXrT/ZWJJz2eqhBRim+olyGv9Bb2Oc6DnxmcJg++/Qx61JnfZIwdHHMaRu3
JPKco8N6lX7qX19tsUF577QEuH+zD1vWVyXKVUtfjm/LgumJyczUw2V2R4vz+cxRtoS8x7CcAxSX
xUydr0Azi9HvoS5X8CbnL/QaPcjP411ZeZ7Go8a+L3/V8gOANxMkQ7u6A1ee+cZe1Ji8gcZLx+Lu
RDaibOcKMHKvgf4iZvjg9fkMFd8Fu3/XaM4uAq24iSohkvLdgtbTr9Pl7nfIPG2f24zMP7EC6Im2
ygMZ2y3E9vjTANQGAnIiOGUMIMwHDyxgjycg60p4HqloJ7jTutSlIfh/9DuZmNgaqQZL9si9rrrX
uEwGowquW+Irndu5T36RZv7UiBvwx/ZOBkJDLCjgq3j9+wKIn33t0JlZbfv8YFmIuo/J6Saf5vBV
t53Iai66SvFiu1R8CceB5reBl1n7UaXou3KYFsJSXhQRMufgJGZrnyMJmqQFC7DHSAJuHU+WWWX3
4K67ITMvD11AatbfocJRFvg28rcA46/B0M7A5EDFetiC6ES3r33w2opHxKHa6KY/HQZWYGet9v3+
+lFkbisce/D+Xbh9mWd7RhgtuR4O5+gngMY5bhpw1PJHuLQsi2teK0mw24vuwYOf2xpPgD3e7xNo
Pe1l4gzWjYjGNuCyTruszo3UXgtdOb5CmpL/IVS0aMihw059+Ug92k4CKIuj7Yxfo7GvCpEHCwMu
Ikh51mw0Ec4XEItsLtVEl4O8WhEzn60GoH6iBF03mbhKTtcAwwTizha8i9wB8nTcanMOS7Dy+g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24C668F0065FC40"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
content-md5: y/yJzs2aZquCDNV4l8q9DA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 41380b52-751a-455b-ab94-13f26f60dc70
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8b35b269-9c4d-8da6-8487-6f8a7bc0675a/test-blob-35739a82-91ed-710d-e076-d322dffe44d3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-8b35b269-9c4d-8da6-8487-6f8a7bc0675a/test-blob-05ed7667-f171-0db4-687f-8f8bc30cabe0
x-ms-return-client-request-id: true
x-ms-tags: tagKey0=tagValue0&tagKey1=tagValue1
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D4BD35A48C9340"
last-modified: Thu, 12 Nov 2026 00:48:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 93763b48-025a-4213-ba35-367eb130d3a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:32 GMT
x-ms-copy-id: 6a80bccb-350f-4595-8566-62d0e57aa44a
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-8b35b269-9c4d-8da6-8487-6f8a7bc0675a/test-blob-35739a82-91ed-710d-e076-d322dffe44d3

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
x-ms-copy-id: 6a80bccb-350f-4595-8566-62d0e57aa44a
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-8b35b269-9c4d-8da6-8487-6f8a7bc0675a/test-blob-05ed7667-f171-0db4-687f-8f8bc30cabe0
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1D4BD35A48C9340"
content-md5: y/yJzs2aZquCDNV4l8q9DA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: be8cd7d5-0f17-4d1d-8922-fafc554d1cb1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:32 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-tag-count: 2
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-8b35b269-9c4d-8da6-8487-6f8a7bc0675a/test-blob-35739a82-91ed-710d-e076-d322dffe44d3?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: a83b595d-7c85-4044-8ec9-93e80bc03b5c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:32 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-8b35b269-9c4d-8da6-8487-6f8a7bc0675a?restype=container

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
x-ms-request-id: b6a9850a-dc8e-40e6-8723-d11ca8cc2533
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

