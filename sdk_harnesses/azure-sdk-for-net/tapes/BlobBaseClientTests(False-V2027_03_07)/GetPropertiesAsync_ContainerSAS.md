## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-dba2bd19-a427-0452-8311-a38216f75744?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetPropertiesAsync_ContainerSAS
now: 2026-11-12T00:46:55.0914622+00:00

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
etag: "0x1BF42DE3B074E50"
last-modified: Thu, 12 Nov 2026 00:46:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 711a24b5-7128-4f1b-8b03-dbb87c042ba6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-dba2bd19-a427-0452-8311-a38216f75744/test-blob-a70cb514-88cd-a6b4-a711-e5009af136b0

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
0CiTVhRMXgAIsVBrBdZI7p2SKZsUulqQCPszFb9RapHb8rHtZAEvyFcLnxw4SKHQyfZjB8ebmxbO
A00YGEhBtka+kBMlWoqcY2FDCRs9WL9aY0vI7mLJQFabHmGzFq8OyejWeriOqm5sxqRmV5L7kauN
vrT9eMfj9E+8ijwp6EyxNT8yZt0GzLjcXCi9Y+jEn421Jlf7EVEg8oVo0SAyQ91YtCJSyCrNhvL8
IByfJZFn+Oquc8L0tiPuEXRYnvqYqhhLZa/FcdZi6J9l//E0gcz0Adk1g88aY/7+Y7e2dOj3Y3YD
VMDioYYTTIojjrcyuY+nZJwgYiZJMAKwxg0frHS3bpt7MS0MEV9TITdF99RGzKonDg9L1gFPuiO+
Mdp49KAWayAbt4him1I9zUDvAzktavpj+J1ka5eZK3YJTuCE2i2XL4uzKhUhxHO8DgnAX7bqkMfg
FPsCsQCJgosRWE1yuPISWNSteT/lQjMqqFyN2Mu/H70ZpMYxlH6KKqiJD2slSlYWrgfiPBaH+tLI
1wmj+6m/UjmPWRMs4MNVIk+WXDPHBF0GdyrD3eKnkan0ab115y7/yb0ylvFC6s1EjBrG8Z6eANKr
nYR++3VX6MdqN3cF4Dshl5J1lW5sw4xdf1DI4KAKVWjqyUqpgM1I2q4p2LJVPqzepVkMKWpkPtn3
IXwljwgnX+IOGxfxdxbFLbu/Q+vaB0Ck6TpG/iz9hYpwsl9QIkumAXjQRyOU7S5DR/uvpPvtHRo8
gabN4WG2EJWMgMW3dApwGUFzCsAcD/sMArcxTeGPgpRFFKGk2CAWGTaOCG1pjNLwP4q5ehNZH3Gq
wd6qhMO0/P0wcWBoy0EhXPCKjgeOo3bkQA5W1giB6/Qw+RdBbJVz2gtvOBpyh3RJmB4jz5FqHB5o
xUO0XSb1r4ZrONEq3+9aF7T7H2pbcrmZDT3qXRxjxd342adRvnzkeYmUBk6iH7guyLjcb/2zDFOK
GlDpC1FqCHP0MQVICVg4F6Xhx2tr9+6Eu5VjhlbfRcxTxqMr+243Kv7bre2z5b5fpFdX0kXnHyNi
ZE+8BoEdFOw49EK1DBs3qZxtkEkA0dbWBOL+iHKHbKd/yZYeeyR8vpkBevB7qZg7ICmoeY7ZYZJ5
5QKfHox5sYeaNUKFGC548dKw/1flWlpKwmdJ3vMYpWcEpJUh3Z8Mh8ho4HNVtgf7MIi8KWI7lIqn
VVwkL9KUgZDagXOYVhMyo3eOfHrm9AtfTq5rW3sFyBALeohD51f11F7jejWUYtl0iobrrBcQwGBQ
xeEkKSYU1bhijdyL77sfmagbA3nVy+vV9tH1GRz5+rkn8iJ20as4z6V9MdX86ZrLyxJv9b3neg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21B517E07C029E0"
last-modified: Thu, 12 Nov 2026 00:46:55 GMT
content-md5: tqgvh9TjSdwy0Wn/C4+mHw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6eeea8bd-ab8a-416e-95fa-edccc4086653
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-dba2bd19-a427-0452-8311-a38216f75744/test-blob-a70cb514-88cd-a6b4-a711-e5009af136b0?sv=2027-03-07&st=2026-11-11T23%3A46%3A55Z&se=2026-11-12T01%3A46%3A55Z&sr=c&sp=r&sig=i%2BM4q7LU2QG1ToKf1gADzV0PQsZ9FoC9dZyNvzPc%2FgY%3D

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:55 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:55 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x21B517E07C029E0"
content-md5: tqgvh9TjSdwy0Wn/C4+mHw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bda5d1e6-d340-4d71-bb1a-9526545dda24
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:55 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:55 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-dba2bd19-a427-0452-8311-a38216f75744?restype=container

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
x-ms-request-id: c211b00c-e595-469d-8690-495652c1e217
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

