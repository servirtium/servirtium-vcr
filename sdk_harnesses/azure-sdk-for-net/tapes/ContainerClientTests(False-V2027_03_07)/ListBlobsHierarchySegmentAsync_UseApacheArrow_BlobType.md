## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-98f06a84-7294-26f0-89c9-c6ff08658e5f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_BlobType
now: 2026-11-12T00:43:58.4625948+00:00

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
etag: "0x20CC1E7AE42A360"
last-modified: Thu, 12 Nov 2026 00:43:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 286767de-0d89-4a9d-b66d-94a9ca9f9447
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-98f06a84-7294-26f0-89c9-c6ff08658e5f/test-blob-2b191f5d-b3f2-5c0f-dded-23ca7eafa7d7

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
1fU8nlywsRuzZq1rLwCYkHyfBziJYF/QW5S6pk8mp9ki7ikSKO8DrG3+d4sGoyzcVZNN36huTnSW
bELI9QrMjb7TSUHWhWeMnFrKiujTyrdn3lC72Mgxs6C1fLytO7djMurNM1rrBs8swUJNo8OMwqGL
YBe6ELT1oZWgIQiq32GjZ1j+BZZdfNiAjxeG5BDdKLkaItqgqCI12JLFSuTGgeLhqjtqjb0LLeM+
OYCdb7yEwvhPj72GAr42yC0EmDHzuQ40pDnUcpr8D/T3YW+hl2jVQIjrd/ElW6d8NMWPBpWxS39y
acuCr1BdUoDIjqFPlDHFLlepCEIcD0iSWD3VbAheRhbwLy6dUpA4jSVxXMwGLaCUytc9B0M9VVmC
8FcSiOV3akiKXmUCJ9zHcXodq7N7iyqdQaIwID7Ts9rUG2E4JgU/+fGEe886kaL7dpbJIKmmBmUt
dEZDRkkKt6uLLQx7jkt03bLB9w9bY7D/NaqnCZIwLhT8CrK//LKoecMjr2OVgOdLVUL35A5V0hCW
QxGfY60YWv/4foOYtOH/GX1MN7NMabXCW7RQOUkFpjihKLigCBYVClRknQFjsqBg98uRCJpdStlc
3Qf5yCG18tdL94spXhFmNixf58yzXqgU70F+dJ6eQ97fRCsPHEIzr6spGLoUN5i6KtJt/mINqX5e
5NjfNn45rbOtShrlVxnqKzghiUbtALioxEnLMEV80ZussDhqVHgs72sGZ+1+1NK4g9Ip7B83cOMg
NnI0bnxuMHh+OKfhgNfA9Jnb5pnKKu92E6xzUuV7dT9USR0F94HumDZ1/5sr1gP7afeFXIlKVgyC
vlrQ+96SA8NnjTa5uvwX7E5jVSpUSzypd+nt9hi1CfMRgjkmHp1Y4vzXxEnNQq76bXA75wDhLnIe
JoP0pQyrsYNCpzjD8M6wCnMtfIbz3DU78oineiLyL1TGCPcaYzzvKxLFipp2N3yii9yNtLHsKkpO
ubKEBDdhUHjk/OjWlqc2PVB0LVGaxbsLBe5FZXui2t2sy6qKayfaZDoikjuUy/Q1V3Zhd/34s/T3
eP5IHOr9QSEKKsr8q9IomckXeDN/dzn6Dw0EQGPgsxe2k/MpkkhPJFAaiqEqOKukON4z4DvAdwDE
Tgzd+AC+KXayRhje/weByFPiZe2Yz9diYAiErNLc9RvyZEM7cSxPW2Ard/KTxTnWshjn3hITLH41
e5j4OXyj1VH97JrERVcnkwmMbVjlzprPrvm69RcI3jjEBvaTVyHjh6GgltmeEm3Bv0oIh78mUKz+
KYuD6OA69A1i/z9gkzvoqOW3RDjAMZuM+TXMAFd4nrZKlS6WYJ/BZqHMOxMuYCwPIN7abgtzPQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x208FD5EEE5ADB20"
last-modified: Thu, 12 Nov 2026 00:43:58 GMT
content-md5: G+ipTCndKAQKukIjvAJDrA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dbc16f3c-17de-47e7-aeac-86dbcbb3b6bb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-98f06a84-7294-26f0-89c9-c6ff08658e5f?restype=container&comp=list&delimiter=%2F

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8c6c8d22-d3fb-4bdc-83b5-56ba04fb3144
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:58 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-98f06a84-7294-26f0-89c9-c6ff08658e5f"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-2b191f5d-b3f2-5c0f-dded-23ca7eafa7d7</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:58 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:58 GMT</Last-Modified><Etag>0x208FD5EEE5ADB20</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>G+ipTCndKAQKukIjvAJDrA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:58 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-98f06a84-7294-26f0-89c9-c6ff08658e5f?restype=container

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
x-ms-request-id: 8083a206-0d27-4ec1-8634-101dce31e2fc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

