## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7c443658-8c89-d1b9-a2ab-1b8141e78d9b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DeleteAsync_BlobAccessTierRequestConditions(True)
now: 2026-11-12T00:47:25.1782117+00:00

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
etag: "0x1D5B060F1EA20F0"
last-modified: Thu, 12 Nov 2026 00:47:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0a9ccaa3-8941-4219-b281-c0b3c2e88dc4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7c443658-8c89-d1b9-a2ab-1b8141e78d9b/test-blob-ec432056-c215-9c0a-18db-02b3e0fe3008

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
6iw4W2rMejkqUW3QqayCynSIfkNULmSWLKhjrokF8aR6E5cVrjExiqUKwcNUOvJrWDg+V3/ss7zH
oS/BaMyvJWDJVZYVbRtDV/OdSmyhQfK291ZRxpkkjV/aTQwBcCLYW5xiiuRcVeod+wCLT2lPJmA9
CnB2XV7Hpcc2OiAOQefRxO7PPrYNWaJrNMuZmD72iyasxGWyYv0+m+UdJhvJDroZuop6gOipL7HO
CiiTLQyIQK/5YXyBH2LxkKLQ8DOGoSUQf960ews+A5S041fVq23ZlOVr0K09l5soie9G2D99R2gC
gq4u1MSku17ozTsKHOU091xOG9F40+hDi/Ec+CpVNpzu0im/q78gxxRPVclfHW0JEeHjLiyXiq/F
60jTiMMzk5afG0q8dEycLVO8KH4f426EEuZJcQhwV0d6+sB2TT9RHMEywAIjTZyURgHY22Iwpgfa
T3Xc6SGOLsQCQnqLJd8Uagy87CJrYMRKtCoGl3zlSVO4m/7JdTKgo5E+IAsiCSAhxHBVdLnlb+6x
kjT2iJdHHfgm04nhSvXaHEiQLT+5J6sK5dMLj9WZ0ywQGOL9qRv69gMS+zaWQHl7eldxVEGu+GqJ
7KLDPI0jjP9d0TIS3HItljY8pix1c6VakBR9KH/qYR94dL14N7p17m42OW5GaJ3kRL0LcVE+FHn9
aKt4pmR/cm8Smmi1tF58x7e9Pjk2Eyd3mOTB3+/OOl9De84O/EgKtsf/NM41Lo9fjqqagNU/x1SE
AQ1/vpN/RGAIcjmPbspus4dyN99YQmlUYlBENLmKA7N6ifs7ivgzf+9uLLxWzyDgK8xOzY91K7+j
KltCOxCmfm6FFeTOMiiOPrjw6hat/pMwZAjtPDYkBV07mGCd8UTfyK1N0Lk7Efikv47XhEGp9SzI
EdcHuEI4YRCGk5rI8Ux0ECFoXy3Z9FIPSX2nTIAckqI01N9s1w9rFW+otX5e281BY3QfQJb+7hyF
+G/FkRWQagD3lB1tBzkS/Uq+MT/TsW2vZegM/FEMNebC596fpoNaF0p9Z0ew1Fw6DUNMQL3dsUcC
FSwshG6v6l42qh9aclfGYxn1VUol/5CM0e4NwPUp5TWXnZBXLpPcznzpeSo94Jvshdyj6Fz93BWc
n7N/oipoDcTpwtXGbjWGGIfOPIVlT/FTIToZhf3ZmsB7u47fXCxRgGxmUx3FJRenHc/VL6CPNlDB
LIDwT4fGECgVS7OmprxafLsZ//vUjfsjcWguA2sf64Q9HjCrYTHkn0P0sNpjAHYTerLldjdV7Z6F
zd0fmAy99V8uaYiLrxuJNV+339wgv3HxG4i4OnVN5zCRJZRTxQc3N7t7NZbuh8qWW0HYng3BZQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DF0DD7939EAE00"
last-modified: Thu, 12 Nov 2026 00:47:25 GMT
content-md5: wfJBJppVB1VgdAuOcnvJNg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5b846b94-48bc-4222-8572-a8d5a247fb3a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-7c443658-8c89-d1b9-a2ab-1b8141e78d9b/test-blob-ec432056-c215-9c0a-18db-02b3e0fe3008?comp=tier

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
x-ms-request-id: a0f825ef-70d1-483b-ba08-9b1460d22300
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:25 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-7c443658-8c89-d1b9-a2ab-1b8141e78d9b/test-blob-ec432056-c215-9c0a-18db-02b3e0fe3008

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-access-tier-if-modified-since: Wed, 11 Nov 2026 00:47:25 GMT
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
x-ms-request-id: 89f25a3b-4b0e-4476-81b6-c616df6adb60
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:25 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: HEAD /devstoreaccount1/test-container-7c443658-8c89-d1b9-a2ab-1b8141e78d9b/test-blob-ec432056-c215-9c0a-18db-02b3e0fe3008

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
x-ms-error-code: BlobNotFound
x-ms-request-id: 4a142f56-d5fd-4784-968a-9fd1100f53ac
Date: Thu, 12 Nov 2026 00:47:25 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-7c443658-8c89-d1b9-a2ab-1b8141e78d9b?restype=container

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
x-ms-request-id: 7d52146e-6a57-4f33-8948-a541eac3e91f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

