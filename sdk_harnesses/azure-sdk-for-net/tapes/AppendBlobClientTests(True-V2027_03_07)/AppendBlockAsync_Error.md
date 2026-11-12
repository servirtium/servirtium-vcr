## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5c60e041-55c4-e960-3c04-be154321b710?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).AppendBlockAsync_Error
now: 2026-11-12T00:50:44.3749160+00:00

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
etag: "0x1CAE55A14C985C0"
last-modified: Thu, 12 Nov 2026 00:50:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cc8db448-ed5e-4af9-955d-9edd34244c88
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5c60e041-55c4-e960-3c04-be154321b710/test-blob-4f90a37e-a240-3b08-1945-53b57dd31002?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
0lPn4lGmbRsVxUELSmL9G2UW+u6tDaye2CVCfgGqbGj0vEPvOtW/1zV0OXth/PC2RzdPZtkhVMSn
SAksZO4Za1nYF44fDuGQVyK4OdQxPds0izfKWwWP0md+R/HLknNGWs4hieVhlzlWvg+3aBvvdgsu
99m3Tw9TSUQnocbwxcSuct4GD7T10/P+c5z22GlLjtHmnZuajgu+zj+gOfZzZvlKCPY96WdWOCTl
udtzXHHb3BL0CScpFOPSSEB0VZn9iw2iq89zDaVqj2V2tNQvSnHOxV3jflzSIfMSaqEm4uOL5y7N
0bGhaM5tinrCs2AOo/3Ppo87Ggyxz4rcYKMERK2C6s2mYXjALVyPdvThEG6TA8ejVzxTUM0hHAEm
xQcraEXMQMiTaEGFDngyq6MYz78bSVzbYO1xLpoAhEV3mWhUZA2uFc+m/5uFHkjDIKUpCUxBC3uq
TwdYWxEuk+T8DXQQ3UaWabrwdUnBVUKkrg301nr4NY7sqRUFVrm9d2y2iRDUskJek5+SUZUy6fnF
tK0DObxpA9flJDMxkBMAMv3cC8syz/vLlUPaZuT5ucAbQKEMuj6wTYY4744OLQOMkR6XVt0uk+Sx
OKN5jpzz62pyFU9x9Hi/LL5F+eBtvGhATtXFYmPj7a29WoGaN77pRQMjmxezGpym1yof6JkERHs7
OUDHLYkGjyiitJn2JfT/W7PdSSBQjDM4Hoo5wwQTuBUFXv59Ihd5HAvvEWUDsLE1IIzlJ/tb66wM
jw7/zcwjjvyD8Mf2gTmbYywUYHvONW7YBKN4LpEaqnJRcZIIeU8+zINpf7/qPp5SScPPRosxPlqg
Jsgpq2BqaUVUpBCmkunc1pT4ZLWu7sUEJeTNS2TnIDI4aFOGFSAj/hV6lZmNq7fZ8nD2Odmk8TgC
JIZ8nR7hbYTdbiqWVcBz1GWgNFgsd3ks81j08OdYlHYahPCap2H3mCgVrz2MQ52vgmRzA73f1q0M
T6nF7HychNmze9HQ2S0EqJswF8c7oLC7RW6D5ZC5O61CjVe3MayseCpk2MfL3qg2b1shr7/l0a75
CqYOGZ9I+kAkjkzWTXbvg56d18fo72fFTHU1l4vtXLypvicFnl6KG92Gp09cYCLkMisgSPnnEBo/
SMwqEmO1NjGQLI5P6eVAErvpYkgXaOxTUWRfzBTCwq4NxlWRYAh60XAeyzOTlUlF4DU+/a7RKODg
1sH+VWkdzmrgQSOQrrKyb5DX+Zy5wLwbGuvehMT/O550sYpHfHwGAf3IslMltDKDi44d+i5DJhYF
4jt+Pkmm4AaFG/wna/IU0Pef8A1o9WW4W/g24kFvMYt0QZlBiMK0ItJMoJg2Wx+bCSk3pDUInA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobNotFound
x-ms-request-id: 8dda56ff-7db9-4050-91f8-79b55ba5d246
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:44 GMT
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

## Interaction 2: DELETE /devstoreaccount1/test-container-5c60e041-55c4-e960-3c04-be154321b710?restype=container

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
x-ms-request-id: 73de73d8-88a4-42d2-a1a7-0d00532b92dc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

