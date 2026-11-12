## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8d44e9cb-c383-abcc-4323-d194e00b962c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).AppendBlockAsync_Error
now: 2026-11-12T00:50:29.9967107+00:00

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
etag: "0x238F3388E664AC0"
last-modified: Thu, 12 Nov 2026 00:50:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 350ac200-8621-4ff1-8fae-d768d20b0028
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8d44e9cb-c383-abcc-4323-d194e00b962c/test-blob-22824560-1bfa-00b0-2522-bf01b97203a9?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
jO17cYQ2vmfAUMyzUvaQI9lNOb1iZJKwOURnYATL8tAfJwjzkCWoKYYbYqpO/K0vkZsnazhFRyda
yzhAzl5j9F78kyvtnZO0pQ82RgLnYjyWN85oo4aX2d/gmMTsZ1oot21MUWiCQfQIc8YoDwAlc2n8
qZeQ+lHXZLpLDQXOxz21Do6UmxDTFPXZYC/Ab8rfuyRb8L7Dl70cdO2uNjTuOayIcwBxkNdYKJSh
tpkhF/XvbFHgc9d/8XbReCcjJN7B6yeDN/vKbSpNAscpIuEj+1z4v8riDsbUCYKJoBiwNQS24Mty
nd/5Jf4nk3APVc+VrX3KK2UT3t1hry55Qc0SnM3DckIWsV18/prLu3pVxLOz9POa5gqeogHtEe6x
gOQxFPejTOOMfvsfTSzLSCJiC+p7xkzZd7XCJNBAKKBvy362maeDsnjQJnX3e5nd01reiwUDNrmX
V5xB4CcTS1Zbr4GuFa5731hyqp/X4vwc5FF1YZ2aa5TEHkIKQdJQvdofnMsXL72sY6ytkYsZv3Wg
JfvWneq4wETt6fZrcJ2GIu3FuEYwBLWUyP7w7doJql/NahzXeh/wZtuHKkXHQPMPJm+eVAYubyBG
QdXrx9Jq4z+WngaArqfN1VJqqdpvzYcL4cZqalZYnvr8kThKBJ4JHUYGMKLsjnjH0H+0xMZF1nRN
4OYL/3jpPf8LhB1vg9C0YIuUaZzlHlNOo5rWpNoztrrD/SO4/h7NHfKi4QpaWEyu/2M6sW3XZ8KT
vFzeEpkl181iq4as/GJtxkuqQj1I9EpNJ6R3+ARN65VhJUHB7wpYfQk996zGAQMAzeshLSSESsgR
kOr0rt/IFcDxStchq9dBUcUzC/yehiWhdisZK75w3Np4sF4fZM8qdOLs1bcs3yET4NtfUT/McwnE
UzezrukCgG78qPt4Ie32CZYasrFudJcKBkviEYubrD1UWhGXdsb46VRIMDYlmr7uaEeossBYVd+g
qKieH2/iYfy+I8bbX5LQIchcJUNg5WuN9KhE8vl8/AUy984dWcrkZs85Z3b3Egm02JD4+y+bP8M8
ESvHnm4CQSfBqWjEssj9eL90J370leGfjxppgwHVlrcK4EieHchgNiVPNmih7yXI+oNwJhhFSHtJ
KA5UmL4m7BKwutF/Xlr3FPBYpF54/p/0oYl9ZHCfxJjMVPW5DJ5mKUlV8DVUSZsoeRIn7KQc0Slv
X/c1qIeiEPU5sgllPQdS8XoVIg1qoFjtVetdd9f0sIPLSqymMYHBs+A/GpaSwzsK1fopB64cBL+e
R1OcRJgdRQKGmfNaq8D5U28tKoXBW5GvU6Ldy6jUrkXtCOouJW5HIdWUCylHryk6L7Q/79k53A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobNotFound
x-ms-request-id: 461e43b1-25f0-44f7-aefa-5badb622fd5c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:30 GMT
```
### Response body recorded for playback (404: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>BlobNotFound</Code>
  <Message>The specified blob does not exist.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-8d44e9cb-c383-abcc-4323-d194e00b962c?restype=container

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
x-ms-request-id: 052fee68-9040-4f76-bb63-0a56238d4704
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

