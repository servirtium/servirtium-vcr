## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-72988a21-e0bc-6e9b-99d5-2d2f25863de7?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetPropertiesAsync_SnapshotSAS_Using_BlobClient
now: 2026-11-12T00:46:56.7911065+00:00

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
etag: "0x21C2A8DAECC2960"
last-modified: Thu, 12 Nov 2026 00:46:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d985f374-152d-44c9-99ed-a2fbec2dc174
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-72988a21-e0bc-6e9b-99d5-2d2f25863de7/test-blob-ac2e5dec-3908-fb3c-f70f-0e2103540a4c

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
vjGnodV02MFgRQfuD5l2Z2+045uiqnfnTZx7rdF6akTK4XD035sSeIRtTMIxTutdmaexT3FvqRS5
v1Q4+Crv5trCIy4pgYfUomsWNV60tv+wHhQqyRvTWjhcOiBH2X9ZfWXobyq9NBcf3awFWXO2BQlU
iNoWxB2+7sn1zUZmjMnrvLf4zEfV8+r8C+tvzgHEpTUX8lClQ7lIKYBhx2fRuFDiGZy7vTjBf5Xv
GbkxTyDHMCcQT5l5Rnn+r6PGcyuDK1KbjbRlCej9VXO7tSn/F9lfmZY/wGm2adIivQ2V+wtqbO1n
lsJsYSc+E/kmvZFP/pjJZ9qUQ2vp5CPhQ0vaZ1poUUg8mIEX8zhuAKxvkKtB0r51y5Qx1SmCfbGe
ih7cZKyfvmxIE2YXsXOhJUK/eVR4n3CMZZvGNnsfuhrPeWkZkpwAz9I++b9YXRkgj6/mwwRdJequ
T/8Q2YfwKFlLSDgKiJKmvqmBOaawNAeBpafMOfYWclN+a0Oc7/ZKTdBmDRXhFQccQARa2+tE/Rv3
jjPgJO9iNdbljBxPCc6yN+zWSifyoI+fr/jyu5ZnOm0opGHDainhA9c//InqzTc1p6T/bbP0Be2j
QHX3b3k/fVGuJ2Rt78zC9UZPs6QGtOLAvRPyaMy6M59zICmz6ZRe/343PKXSx7jXPHhspFJJnYuT
NrJmTBWF8/PF+s+jDwuy8bMlzng87vVaGytTTo9MKoOeILPh97JpskixDc3pNC1turOeI84SVki9
CzHpMaVkeNBMBe5X0fkAvBswi+Ancef+5ZTbrga0i8lrI+yBf4CjTJX9nS8+Fui6nWaz4stolppK
60wQicnJmHkl7K0NfzyajT5KKtO4v8+rIRCgAKj+A41SNpM0ksPLNAW1GSk7rR4pGFWNHWvGkix8
ZWe5KZfQJukfukmpZvt6fvbOAqalb3TxduhTceUhi6RntyxbEQpu5PJAG/LVgLJaEp91+I+G1vXz
x7KvfbUD/i6kQa7OHmzrYB6zZVSBHPU1+V5Gq5MV4eE2Z0pYvmc9PR3DMD8Di/Qyipdw0nGhcqq9
eYNWvVKajl/Nl7YikqG3dSg2vey2Mm1qEyH7pQ5wlfWfm0Xj53/LKKHfNvQ9EPf2uV1IarS+BkYV
66kxn+lRXALBg/dc042oa5VK1/t5LQMpBeuxJytB4JT+zfvVmom4jdnxfI0AmubPoP4fdC9LnL6m
B5n+oDXXf6JjXQWR09ELkkkhh7B1KGsF4YYsImxlszE9LpLwuu2kGvzqnDzgPs0tE+LlKRQNMd4u
+L6uql02/arUVKQ/G9dbfWy0iowuJKO5/w6Kf4kcMP2zwcEu9XCetJ+RDOoo7fgKiquoWaZSAA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x249762E655916E0"
last-modified: Thu, 12 Nov 2026 00:46:56 GMT
content-md5: ruaeemp8dNyzcLZZnA9Tsw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fb76d67e-9dc5-481e-bd81-1001ee9e499b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-72988a21-e0bc-6e9b-99d5-2d2f25863de7/test-blob-ac2e5dec-3908-fb3c-f70f-0e2103540a4c?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:46:56.8440000Z
etag: "0x249762E655916E0"
last-modified: Thu, 12 Nov 2026 00:46:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 160a1998-819c-4f01-9259-6c460cd55001
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-72988a21-e0bc-6e9b-99d5-2d2f25863de7/test-blob-ac2e5dec-3908-fb3c-f70f-0e2103540a4c?snapshot=2026-11-12T00:46:56.8440000Z&sv=2027-03-07&st=2026-11-11T23%3A46%3A56Z&se=2026-11-12T01%3A46%3A56Z&sr=bs&sp=rwdyi&sig=nlkALQ8WGMSXxSatj9XNPzzQgI%2FJtXFEsOzcVKv2CWA%3D

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
last-modified: Thu, 12 Nov 2026 00:46:56 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:56 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x249762E655916E0"
content-md5: ruaeemp8dNyzcLZZnA9Tsw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0d06709a-2072-445f-a0e6-faa99cec0333
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:56 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:56 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-72988a21-e0bc-6e9b-99d5-2d2f25863de7?restype=container

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
x-ms-request-id: d08875a8-bbaf-4e22-b41d-56b800eeaad2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

