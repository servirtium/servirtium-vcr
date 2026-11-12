## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4e974747-be1e-771d-2b00-a7f514101ae4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).UploadPagesAsync_EncryptionScope
now: 2026-11-12T00:51:32.9687348+00:00

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
etag: "0x1E3E14FCEEC25B0"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0e7360e8-34d0-4a2d-adea-66e3ad99165b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4e974747-be1e-771d-2b00-a7f514101ae4/test-blob-9155f9ce-459e-8a1a-483b-434958fdd806

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2677EBC2BA3C300"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e550fa9d-434a-4e7f-a8b5-6ad37adac1f9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-4e974747-be1e-771d-2b00-a7f514101ae4/test-blob-9155f9ce-459e-8a1a-483b-434958fdd806?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Sum/KAr8I7ZkAUJj3Rhtm1AIOwEXeE0BLQ0G4nrTHy4ooasqUfLa0tWfLJ0Dt6wwzqf4T8LX7tKc
vfv99kE7kOIUOzxsQ0peLmkreEuw/nZg1RTT2s9sUbLZjZP23duUY5y773tvw4pcmiBZq3WH7L+F
nCAtaLUSqOmJkrW3aFGNlhWu9A768RKJdkCvEqU9UqHUcUC7Z/vmqEeS5TDVpTLOzBRg2Pewi6sO
o/J1Y5VETEAT4/YQ0S8ZyEzHZwvhs9AO4EaQ3HqqI+aVrMMJcUWxTZnwwcI7vfrlRw+r6COfLfAh
ZoJOs3DFab8QeyRsEFcGFRly8PIO0yJMq5Vq/jrC9X/T5wvDY5opKlcCKkLVeTa4pdIJLTz9E5Jf
AQjaW2qETYWlmChMQ7J/ScaaC6jfdzJesllouchD1dR4Y2GSTs/tfd29MOAObGIgieR2Ywfqf4rV
e6gRHJO8YcNT099Q7fr3rY3LIkZRT0b3Ry/kzXHMjuPWvNIm3GFJAM4cu5iCz5zpfrZ6Hl1Dgyxi
GdVk2JRRhkX8eTEn0NAsgSF4NZStdXeT+k66Um+FkjimxMKL5Sg6yjRThlZqwa7lTZ08y06XtKRd
0N1FljTWdub4gQwOoJz4PWpfWu8hKDmg1QTSScfpDg8eLhVL9DQAfQ9vckCi160AQ43kOFm0O6ej
pcEvBC0fD3L873KHrEk2X93fsrb4/v1X0QU5Bda1avJtp05y0HjiT2LNpeg6eZZErth81Inwq6fE
2DIn5gqbRoV/GQX7w49k/WNTKlgUHFdv9Vb9OZVpfPymrfdGu2hYMl5ju1+RSOpJF9clnYBPr7vb
uPGzng3wFp0JVBaXHkL6+/j5sWH33axrtCG9Q997V/08agJ3pZNRc6XCiPTUsviVKqKHVf5a49pF
R+rrMtK9jfwYW7M/g1ZlqD67NFW3lwEoKBg99AL/4YYoMV2pZUDTBfv3u1dFVqdMIq3Anq6FjbDo
wgq5gJj6GXksF1H4u0L96C9av9yq49Jx8dFVPkPYo6StwaM2GYRi/aLdGD9VU2Zqw7V/Ks3TPd43
R4/Gpdo2VHOtS/qfxs+r98I5zMuTHJ1r6nuNWXjW2YPE/tH0m1jHp8PLpwdsy/zm0zMLmnATpCvx
W7tfqPv713J22sf9tltqciUIx3SV/h5/p4VEyj8SsVmlA0CdaP/Hz9CV9fE06R3XoSdLCty3XF2c
4AF2twwzYyluV7MbzAolQfij/wgsSr5obCkXxqZ87qbjAIj9URjEYpLHxpFpvNQdJsnkFFxUcJVD
DUriG5yD8WkMOMyBJ+/g3p12ZYQs/rBU+qDcmNpKjpDyukPO4Uf1RNUoXYQHm/7ZBDW+3goRFg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CA646C8F9DEA60"
last-modified: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-content-crc64: nnzWpz9LANg=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 244ea861-5440-4352-b8e6-cec3e8f437f2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-4e974747-be1e-771d-2b00-a7f514101ae4?restype=container

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
x-ms-request-id: bb0afef4-49c5-4296-a64b-2efde7c8acc2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

