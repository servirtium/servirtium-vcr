## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ec9e52e9-cece-9b38-c75c-67478e566253?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetMetadataAsync_Sort
now: 2026-11-12T00:48:24.7653311+00:00

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
etag: "0x25F74B809036700"
last-modified: Thu, 12 Nov 2026 00:48:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eee3a26e-68de-4a5a-afb0-39968ee29b3e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ec9e52e9-cece-9b38-c75c-67478e566253/test-blob-95751d24-e3c4-3ec6-5944-50aeaea07dc5

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
o4E4BLHW8peKTz9weYVKMcb5kylLe+wGjF+Sin2K7SbeoqMMHV2hTSrdCnWjVcTU+R7ntQ1UeSiV
MnhRRGgaAGIZkdfhPhRpV0X+bnB3YzaavpBeojgZiih7d+rkTwnCwwkTicPt8rsKfl3HVgu3Hc9C
t4XXu14p/weuZcYphAg7O6tnZNlyrcvVUyPbUjMdxFkbopiD6wer6Ym8Po304fpVixpgULn10Am6
AWc6Tq3UkaFtDeFvuFCju3pPtm4+4HEphsYYvXSfJtGOyemgcJvc6K3rh9QY5dPKvJQ/pRqbfCH1
Ecfnu9MtzecQ4e9nA0rec83BUlmdEKHzTgDfYIC380zIql/T9CzZvrrtCATkYrlJYDJM2SnHWAAm
9GzTTWxnWO2in1jrC36h55SesAedDuxHlgBNaxkjAFJerQDABnFOhrAWQcNhXlWzq/KVKaj5ieWA
i7ZrGe3Tf58FjV1+4OAiUClXhs0o5jermr8njdaqZSMbQHq64mzCQ8IjW9H3NMoRctl+oQMYV6V+
wH4tq/LIWic6Y6BmaG28lEIKBIpmtGX1Fhr9LMQgA+jVOyLtlZfQWwGpvdEpqwprwQzADVIaGAwZ
N5XXyy5jGWC4kCxLzv+rOqmJvfaUy2oPkWq4X/WVuyMV1F0B+I/TRaNxcRvdIPIMFdOokVoVhWwr
xznDq7lqItUJNfqhqUEZtndSIllPMnF4q0oi7CnIAE/x1jBWEJrpBk9F0+r4amyRj9vjwmIS25XH
SgBvSDWrQTWrsNMQw6XdaRwKCV6Hf0DdkF1O5T3s3vqbj8Waeb4ZmpK0TbmZgMw1BVlFB9I3P8u/
kbfXXFv4vtLYdTTgQ+9e8G/L0zKGRBCRGd/jptYoZE/52ugGQj42u47nwAuYVMJq5xZja2yZOEyn
RkJ8FRj7rxHk5mgHV64wlBejn4QE+cUdeL/AxfjiYKGbX/v7uqZ26xD6s21ZY49nMtZV9ZnIokx9
X5xYO+oYAobGa/izNdpwLbNzCUZYwxUvWJMijGsI0ryuflsKHbAm4rDnk/eWtP385cjlVJgGJZyG
KeNX9XUavZk7BLZ+ZQ8DTSeVcC8dmKOWJaeiI30jqFm/hPTNzuw6zNVeW7BGfn+54gdxcLRsaZA/
wc/OeJobGFxdvuEbNn46W6Ravz3zT6cn6UF2sjekUxpjjQ0dbFM6Q0JU6b+enauINxUQEalSTHEo
po5ZpWYkuGvGt6hxHe5QH3v6n2boiUuV7XohlEFwEUCb9cXE4Z7cLzBU1+YDFxknv/EuV60LPx1D
w7frAyMpVaZn1Sgpiz7dHnA1k7FkktZh+tVPQrmTkLWngR3m8SsNK4JAm0Hx/TSzUDk81axs3g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D79BA04501B4A0"
last-modified: Thu, 12 Nov 2026 00:48:24 GMT
content-md5: xGYTLEQxJH1HKrxmg+GTew==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ab594a3a-5ac0-43d9-b962-06a2ca3ee8ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ec9e52e9-cece-9b38-c75c-67478e566253/test-blob-95751d24-e3c4-3ec6-5944-50aeaea07dc5?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-meta-_: a
x-ms-meta-__: a
x-ms-meta-__a: a
x-ms-meta-__F: a
x-ms-meta-_a: a
x-ms-meta-_a_: a
x-ms-meta-_F: a
x-ms-meta-_F_: a
x-ms-meta-_z: a
x-ms-meta-a0: a
x-ms-meta-a1: a
x-ms-meta-a2: a
x-ms-meta-a3: a
x-ms-meta-a4: a
x-ms-meta-a5: a
x-ms-meta-a6: a
x-ms-meta-a7: a
x-ms-meta-a8: a
x-ms-meta-a9: a
x-ms-meta-a_: a
x-ms-meta-a__: a
x-ms-meta-b: a
x-ms-meta-c: a
x-ms-meta-F: a
x-ms-meta-F_: a
x-ms-meta-y: a
x-ms-meta-z: z_
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25F0279EB64B580"
last-modified: Thu, 12 Nov 2026 00:48:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a8068878-995e-42d7-a4a7-5f5400ea84be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-ec9e52e9-cece-9b38-c75c-67478e566253/test-blob-95751d24-e3c4-3ec6-5944-50aeaea07dc5

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
last-modified: Thu, 12 Nov 2026 00:48:24 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:24 GMT
x-ms-meta-a0: a
x-ms-meta-a1: a
x-ms-meta-a2: a
x-ms-meta-a3: a
x-ms-meta-a4: a
x-ms-meta-a5: a
x-ms-meta-a6: a
x-ms-meta-a7: a
x-ms-meta-a8: a
x-ms-meta-a9: a
x-ms-meta-_: a
x-ms-meta-_a: a
x-ms-meta-a_: a
x-ms-meta-__: a
x-ms-meta-_a_: a
x-ms-meta-b: a
x-ms-meta-c: a
x-ms-meta-y: a
x-ms-meta-z: z_
x-ms-meta-_z: a
x-ms-meta-_F: a
x-ms-meta-F: a
x-ms-meta-F_: a
x-ms-meta-_F_: a
x-ms-meta-__F: a
x-ms-meta-__a: a
x-ms-meta-a__: a
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x25F0279EB64B580"
content-md5: xGYTLEQxJH1HKrxmg+GTew==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a07c90ea-10ee-49cb-9872-34ab37375996
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:24 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:24 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-ec9e52e9-cece-9b38-c75c-67478e566253?restype=container

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
x-ms-request-id: c9aff12b-78b8-498d-8094-bbf47a10d63a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

