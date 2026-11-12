## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-18781045-7135-74fd-9a69-fd133eb20935?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetTierAsync_Version
now: 2026-11-12T00:48:26.9750174+00:00

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
etag: "0x205D58836A64BA0"
last-modified: Thu, 12 Nov 2026 00:48:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6ebd3c9d-10c8-4138-a160-ac2c0bd15f65
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-18781045-7135-74fd-9a69-fd133eb20935/test-blob-1ecc3f3f-2f97-33f1-cbc4-a71f811684cf

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
YyWxOSTcCqr/yT1d7NmInFsveQp7T7ZQF9BiPJMIi0w5lNd1JAbYaQbOGGwzoIfB4GC3Djj+uRRv
YCFUec0W9j3xI1gCEnhVVxAErTZJHXdIoVsyUXwTO9vDBsPkg/A4tyIvQX0vv83oYrco+QzdJUOq
DNhx46XA3uh9Pgy0cNQgzPYUGtv6GOGOSu/F60HO5eGAOncXxtN8bmOVsoDBNPHjCC0WyQposPP2
45m1+vOmrlkqMzVcCAUil6t3ZGZhzBX94uIUuBzWGImDIeI5x3Nw7gMnlgC7hv8n8zFf8EuMlBeE
txgQkvU8VBur2eci6dA4BnZiOjUUQlvj7MXrdyc+94zLtQ9aYFwN6kLlD60YBQlhJunVKVrib3W9
LaYwUd3zbeFaVzTA3aYZVE/yLjKuyue7iVA9ac0x6UWZnTO23Zll8qLLva3VoElDu9QK70BDD2K+
dceMtQQUKG7uJz9zY3e2jTyP4gw55ekG+q34J/oFVo7Q92fR2D2etpU+53kJz1dcVGEEtCxWhZDd
hrpWHAF06dCxo2wQ5bT+8St3+/5w/CpWm9KYAKFienLX81KCSJqTyv6oWCzrTG6sBsIA3oqSbYmP
/4Eu3OgvTyn6OPFie6mR5DD/yKP9a05k6/reYZvoRYXI80gZZO4VeQkD8BN8SYoZbvpZkqXlkZQy
yvDuUO2NEvNrmYhgeH9C6k6a+no756FvxfKgjrPg4mGz55n+Jykcdd4fEa8CuPZ7F6hWS5ca9uNO
for67YNAi7cmrZHlRMIlfYSbG9bxbQz8JXcKiZfJmfC2sKieIohb34X42wtlldPlMM4TftsNXBF+
/cgLNQEfXBOhL5MZh1v7QDtQ+ZEAl5CkJVjIthsUqFOXHyTAT6mE2X73w2U/zKlyFz2fvWN/fWU3
ZxCoV6b4jIdAgmc2O/CRyx8SCNMrZVmvVp7ddevwF6G+iOiZ24LY/zfe/0lCO9xMDfFDbHWSDAG3
+QAHGhebT2rFeLII+PCdOgmbTWYPbRrCkGf5raosLHzm4uKB0OQgQq/ffMMqRBUBpTJs9r+bqIzm
RYmvoaG/mUw2IRYNHGokewq2L/BWmExR+Ah4wDW8SzlWmotacKAOH+N38yL/84jHR3u05Hibj609
XqmZR9gWedXct4LfyQpqqBAN36QqUgV/sHi6B2fBugveHRL3dNgKYHlMIjwG6H5wSTtnjq8IEguj
GZZgW3JuG/13Aav3czM4A34q3S/JeMj6Sr0rWSxb1QoHU1pCqQUH3gc+j+fSeNYHL4ow3TXb2qDN
ZhC0QsHQGyug8CDZ9ll5I/8oiunhJ9HnJCqhKvfVK3i5dEP0U5xGbnO7Moi1Ljkwt7o2s1C37A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F5767586B30540"
last-modified: Thu, 12 Nov 2026 00:48:26 GMT
content-md5: MGZvergUKfybnxI+DJEFYg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 26fc07f0-9505-4a16-9e16-64dbb950a315
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-18781045-7135-74fd-9a69-fd133eb20935/test-blob-1ecc3f3f-2f97-33f1-cbc4-a71f811684cf?comp=tier

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: Cool
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
x-ms-request-id: f1f28b69-9669-4e97-9f30-ff0d2980ba3a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:27 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-18781045-7135-74fd-9a69-fd133eb20935/test-blob-1ecc3f3f-2f97-33f1-cbc4-a71f811684cf

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
last-modified: Thu, 12 Nov 2026 00:48:26 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:26 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1F5767586B30540"
content-md5: MGZvergUKfybnxI+DJEFYg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e3579a31-65c3-46f4-bf37-e5b4c3ed979f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:27 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cool
x-ms-access-tier-inferred: false
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:27 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-18781045-7135-74fd-9a69-fd133eb20935?restype=container

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
x-ms-request-id: 02e2dfa4-3433-4a2a-8fdb-c4e9104118d7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:27 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

