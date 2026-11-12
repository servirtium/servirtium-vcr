## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d96cb68a-5b37-8049-b2c1-34f96fcbb52d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).AppendBlockAsync_IfTags_Failed
now: 2026-11-12T00:50:30.4172567+00:00

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
etag: "0x1C955806E5DC260"
last-modified: Thu, 12 Nov 2026 00:50:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d698f168-73ab-4ba9-b7e0-1f6276c1b7ba
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d96cb68a-5b37-8049-b2c1-34f96fcbb52d/test-blob-fd9e091c-8792-fe54-9696-162a6e54dd93

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D7C954E197B8F0"
last-modified: Thu, 12 Nov 2026 00:50:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2f9edb89-8abc-4aca-bdb5-65d56543afda
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d96cb68a-5b37-8049-b2c1-34f96fcbb52d/test-blob-fd9e091c-8792-fe54-9696-162a6e54dd93?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
5062J/Bj8n+SftlT4MG7OmV/OzZeSKkCYW1DoUUeEl7joBEhFI09uRYeahOuAR7U2tvF7himNZ6k
s8aCIFE5c2t6bz+vmibYQoIgP92VVGBObsZqWSNFPWtyfGDHupjE5PanM5LeJEC07auWhfXAD19l
M7KLzxpINTHUPB7GEIfpXFvn7SHOcEmGtmx3rrd1smwBYYbmOBXcX/1gCech7dwkrCma2SI+l8No
BRiu0IZ6X4qxxa8AAyNFC40jbWZhZMiQUwGO29hKwsnDfTP8Lo935qpdcCgsI6kGVM6UGilcBqBQ
HXyE64SyZwLlPYXvSdz+rIe8BPSfYzBYh4YKtaigZ3aSqxAS8vomqwgmRuYjFgvxlW6hnwKssLpM
LGT9qLJaRdUOXJ3M7LmNlVnseR1KNHF6GB85/sd05vtWxcaWKAJVzAAQFbptJKm0FAqowDecAffz
go+SIEcNmnaidibz92xWlq0cOR+2DfN2hem9yybDucPPo6Vzw6u5A3pEy66CwRydUimJgMjXPHWc
HJtdT85Q3r1iJFTG49MBYjakckFE88PMIHn8Ojj792Yw16YQW7Os9OzxIJzI1m9Whx2SMsk0VynX
kS9VU6SEZyztlgws8QeC+H5UU9ImBEkKpbIaacWc/H99OMqEV6BIbblw2z9iKZYWEDpL3wNWsIzl
Sq7xaf1nUJqMr7k9/aDdDOYZtigKp3scBFiKURx8J4c9ngzyVgO7CIql1nrc2RKZbtMdPPlj26My
1WWk3P9+EIcx/16U67XjXq6eZdABPytG8eJJXuqN2cNpv4GdFiuLJ8byq9mzBYIeOt5LxXbSMJU6
XuscNLGdoyabKiwzRUeDEz0KD5RSk+xgKiQMQhNNl4/sY7hAbvIVVQiyF9pW6/SWyLI4yCEB6Mr+
vAmMkGASTZKdRuGPQqRL9LqLn3sRCj8wdnpgFc9t63vtQrLoiMSnoMpHuaQSB4UO7NNndUlO7LHK
XBrmsTjDL1tmoQDyYmv15P6xyVGbHW70Uij7BnUyn1UAHiyqwe6ShIlIrGWFHIlncpFKnSNgLj+r
8V4PxyjmNAGr8UQ/SiIQHkXHUnEJbzaelJTj6AIyoO/t/9CPg7xgYnhj2SpFKCduOn7dmdvOooEo
cDOUAkv/eVFUUUtSgJuIZvD5pZULWWtsda6DVAYUH1xOZxKIzGAsY2DZ8NbcHLniVDPr1f3rHBbH
KI2dfCVKQDLuAxmJAJqQzEE1MWiVkFj0of/TKUpfY0r7wKPSjuc7j7Cj7RmgWVSZWgi8tuquMpg0
qdoldxboj6DOjT/2vT5Z+qK48aI/U0eqOs5Co6xfTY4LnuQMFRiZu1540cwVop3JYrxI9kH19Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 553e1000-9e31-4d18-805c-8cc19a5f49cc
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:30 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-d96cb68a-5b37-8049-b2c1-34f96fcbb52d?restype=container

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
x-ms-request-id: 43ac5a74-edf6-4eec-990b-3b263e31e966
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

