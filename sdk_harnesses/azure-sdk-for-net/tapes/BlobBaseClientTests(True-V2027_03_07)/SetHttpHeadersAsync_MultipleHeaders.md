## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-41efad45-b61c-9491-eedb-4a0d4c76f580?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetHttpHeadersAsync_MultipleHeaders
now: 2026-11-12T00:48:22.2899742+00:00

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
etag: "0x207E4AE10581F00"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 855fa124-4f17-4504-ba4b-5ce6cadd8901
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-41efad45-b61c-9491-eedb-4a0d4c76f580/test-blob-454aae11-31ed-0b56-5beb-c309dc976b78

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
bro4k+Wxugy+8+XPihahp7UDa0avUnoTVuTmMfOHuFZv0p6SPWKaX/Q9hvlMh4BESRtU2CslyRs/
JDwByokYNzqOX7h3D2lTaQtSccuBxs9joejXM+ArSgmCUhglmJVrJU++vifIzTmxAG4f0ldQvl5t
niihQQNaYxWv9L1RLdB250x7wgiomtSuJTJxC3exMpO6uPpsyuNMZFsRGdl8YNOeqesL1PxWxQNU
8hvQ6Fed/cEpl3XWCh1oL16sloH7MsVf02KMpl6XZPP2F9fHe3sDdBsXUslex57OoqSeqS6CWcBW
cRT1EVdjkTKB4PNFoLPiqSFl49/7AQzDvgO5+brEdL0XcQpnDWLEtMGW3OeriAHxuwANHHbgWm8I
MlNUqZd4vWw1Li+oe5u+oS8eZSQkGDUByD26t1dHNhaaXtsPbwspHh96dVnSSEBlTnpHwfVL4xod
U+BavQUU7vgZDh2/rzIj9UcFqaLcL4D9VWndAHQhT3rB8hwrzmAZZoZhuTojpZ9II8ytRTp3QCNf
XGicN+6D976i/rwV+Cbm7EMcenZG2bDKlNyocwpASbH4y3H4fS+X3sF7gKbiMyqlx1n2WsatGIO4
0qIR24OzYrUKHCy07m4ThJy0ylgJ52GyAqyxSe7rSrLuP6uNhgI9xx7x2Bb98djq4tYp+U4qrupA
X9jXAhnGHtF5xq/Dhv6ZdwI6GA9LtBHUxmYYwlFkw5DATCYpZsUEK7lEhCspJlzYj4JL75bb9avH
AzuzrlyAFAIeAzrXbxA9Nu1VBjDlqqAKQDLPGdT65Vd7YWOJUXxdxG8oCyMiAB9xDbmphe574lib
qW0psPsuIx7iXA6ttOVw+ELAvZ996D8TXgsaUWBoAH8L7qcPMxNz+ucEP6QRw1nUOIysuiS4HcEu
FVLvE9K+eluOosU9YcQuTMK4eKibAZqxRhjTvEZaUtDm4B7BhOYVRsVIgyCTltfHfm1iAKUYkxO3
Pc256r0VM0/1VoCmbMjbozHjUn56Hq9BDD7Y+FIqzk0KCkYZW1wHM1DRnT9WIRGkhlxzNECVPR8d
eN5/PTr8yogznGKCwkfV3B8uqIBv6uotM3H1t5kMdM0m++J+h/UV1NO3I4SuIsQVnlghZ5Sfro7z
UgnIBxPvJieVW8ZkV1QpGNStuMZmfhGt4BhB6w04h0xUijXsTc2/yP1dGcb9sEcD90+/8vbIjdT3
Gyb6rToZXNR5EMwfPMsH7e/ICGRKrzDRPvS+eZVWi/1h9TGmxBrDQ7zyg59647qDtwQGAIRvrWv2
KW9GW+M+I4XPvkeZYSnVBMSoVyuQVlo5OsGQUIt48UfFsJurfOjZs2AZqyVz6lbbMfvAxlVAZQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20E87A199CCC9A0"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
content-md5: w9Ngq0cuvaFSNyCiNq8GQA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b65fbf5-3eb9-4a66-a41f-729a1148fd09
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-41efad45-b61c-9491-eedb-4a0d4c76f580/test-blob-454aae11-31ed-0b56-5beb-c309dc976b78?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-blob-content-encoding: deflate,gzip
x-ms-blob-content-language: de-DE,en-CA
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F9A1CFBB7F9AB0"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3a637dac-1f6d-434c-87ad-9cc0676efc31
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-41efad45-b61c-9491-eedb-4a0d4c76f580/test-blob-454aae11-31ed-0b56-5beb-c309dc976b78

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
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
etag: "0x1F9A1CFBB7F9AB0"
content-encoding: deflate,gzip
content-language: de-DE,en-CA
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96a3ae19-30dd-4547-a355-78dd7cceba59
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:22 GMT
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-41efad45-b61c-9491-eedb-4a0d4c76f580?restype=container

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
x-ms-request-id: 153cb6a9-45b8-421c-b384-d9e378f80f33
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

