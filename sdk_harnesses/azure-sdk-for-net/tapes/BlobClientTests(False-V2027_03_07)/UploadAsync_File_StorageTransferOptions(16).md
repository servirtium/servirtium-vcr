## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e2e0c98c-43d1-ab3b-ac99-ed8f38a85317?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_File_StorageTransferOptions(16)
now: 2026-11-12T00:48:50.9130635+00:00

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
etag: "0x1D269845AC1D8D0"
last-modified: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c21d550e-fc73-40bd-afe7-5033f5537320
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e2e0c98c-43d1-ab3b-ac99-ed8f38a85317/test-blob-dbb3c173-71be-5dfe-182c-b857ee5e084b

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
/j9X8g6OTrt8OPQhZA0EJs877G4DzAsbyoPKpYrkvU6RopD4UWEI5XL4X4V83PkLJ5KHsnGZRzI0
OyeLxKgwl3umkMJ9DNRtMwf7Cm2Fnu2Jv373XQrc91pexBU6fCHKyMcJ1kw2jRu9Gn9pnjzFrp05
AgUqODpxyZloHke/MrbmMUKlfMihUzFjOkKLclkdmBV4AXoboI+NmAyzzm/T/ufIg236IDLVl67U
xv735Vc/SoYyRjE8ypGzGOO77YTBjztbw+/rI3jiomnLR9mRlbK0c4Toobe2i7jbRgdPGakqEjfD
nCJoVCcNT6THcIO4IYIwBnoA2e6DpTc2ENxwk4m/oDWhzviQTB9c2lIT7hs1IySFHhIvKjlIP/fr
MUNKnbsaCM9OFlOKoLlao/6ccLYcAey363R2j3b8WY4BpBvbEj2W+OVL5g3R+n5Z1IY6rM9Azy9X
k7FHpHhZUb3FiPuef5HABXfR0Rre5vD1Hbvvway/wNTshH6LTlNt8ZVQDHKCulX1eaZYb/4UeKzB
UYe9aZAQBccnsvoSNbYjY9+Fjtp+c2Jl+kcFZ1HW1wvRyv3Mr4cEQAaqWwha40TvNAsfjurSQt4l
WG9ICp52UNrvQGu5V7RXgU7U1BdZChcDFTJFt0kh/4cep1cYvDVnMwoua6LZNt1Xxw2b/m7Gy01Y
RfVrMJmQzUHkmq9cP8QZbKANK590Kt9V7u87hQAYWNsKv3ZA/ANxnZ1g9Zst+ohIgpLOuaCt4xsV
FkGpVEdAy0LTUX9N2HCcm40BEzRDJ/Nn8wNuSZ47XNtbKuXBx0hVIClZWagJ+qkiMR0Sq9Dm0u5N
QmFE0oGkmPWj8q6K29RErPML6s5KXvhZTBiAKLALdVj3c4TnEE2otMGzZQj7l1ZIzv/c2+cgA+Ro
64VpI29EmH1WkmdQXZulYzUNl/jwXrTBN1qxLppw13CffiXHPpFRb82LpATv+HBkN3exE2zreI3R
p+sUkmnj5bv2sN923SSkuycrZbmv0j/qTfcivsQEtAaX9pelPdxjqL5J+EiR7VlTDVdEwBLTIdWs
KkVxwCb38vzZ3uaN/n1Kx737Ztn2WF+ezrFswPPzw9XC+ROX8ueXUgZLuA5yxg7a+fhV2Lr7tdHm
0/J1ijEI5RsRywVqs9XWYxTTqqBQLAijkcb6nesaxkNCsB70IsfUQ9LzYfsJcEYjf3SmKAoxlafq
0vlrDUgv9gTBJwK24UFN/mfNXcsMmSF/1x52dJ44EBt3ClDOaDWKw2r2R0hDbJ0zWCqjYzfc3TjX
6zYquIFmiRfnPtfxf5UyQ5lgFlLYPGuAQxt0la3jmywX9n3/YArokL4xXC7GQdmUcR+ee8fm/g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22D5C2B0D549040"
last-modified: Thu, 12 Nov 2026 00:48:50 GMT
content-md5: 1C7//2c5KbdXykY6+kBFxw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7ebf2e6e-fad2-4965-aa34-f41dbe40262a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-e2e0c98c-43d1-ab3b-ac99-ed8f38a85317/test-blob-dbb3c173-71be-5dfe-182c-b857ee5e084b

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:50 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x22D5C2B0D549040"
content-md5: 1C7//2c5KbdXykY6+kBFxw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2ccf4b09-fbf5-427f-8521-c640789d3846
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 1C7//2c5KbdXykY6+kBFxw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
/j9X8g6OTrt8OPQhZA0EJs877G4DzAsbyoPKpYrkvU6RopD4UWEI5XL4X4V83PkLJ5KHsnGZRzI0
OyeLxKgwl3umkMJ9DNRtMwf7Cm2Fnu2Jv373XQrc91pexBU6fCHKyMcJ1kw2jRu9Gn9pnjzFrp05
AgUqODpxyZloHke/MrbmMUKlfMihUzFjOkKLclkdmBV4AXoboI+NmAyzzm/T/ufIg236IDLVl67U
xv735Vc/SoYyRjE8ypGzGOO77YTBjztbw+/rI3jiomnLR9mRlbK0c4Toobe2i7jbRgdPGakqEjfD
nCJoVCcNT6THcIO4IYIwBnoA2e6DpTc2ENxwk4m/oDWhzviQTB9c2lIT7hs1IySFHhIvKjlIP/fr
MUNKnbsaCM9OFlOKoLlao/6ccLYcAey363R2j3b8WY4BpBvbEj2W+OVL5g3R+n5Z1IY6rM9Azy9X
k7FHpHhZUb3FiPuef5HABXfR0Rre5vD1Hbvvway/wNTshH6LTlNt8ZVQDHKCulX1eaZYb/4UeKzB
UYe9aZAQBccnsvoSNbYjY9+Fjtp+c2Jl+kcFZ1HW1wvRyv3Mr4cEQAaqWwha40TvNAsfjurSQt4l
WG9ICp52UNrvQGu5V7RXgU7U1BdZChcDFTJFt0kh/4cep1cYvDVnMwoua6LZNt1Xxw2b/m7Gy01Y
RfVrMJmQzUHkmq9cP8QZbKANK590Kt9V7u87hQAYWNsKv3ZA/ANxnZ1g9Zst+ohIgpLOuaCt4xsV
FkGpVEdAy0LTUX9N2HCcm40BEzRDJ/Nn8wNuSZ47XNtbKuXBx0hVIClZWagJ+qkiMR0Sq9Dm0u5N
QmFE0oGkmPWj8q6K29RErPML6s5KXvhZTBiAKLALdVj3c4TnEE2otMGzZQj7l1ZIzv/c2+cgA+Ro
64VpI29EmH1WkmdQXZulYzUNl/jwXrTBN1qxLppw13CffiXHPpFRb82LpATv+HBkN3exE2zreI3R
p+sUkmnj5bv2sN923SSkuycrZbmv0j/qTfcivsQEtAaX9pelPdxjqL5J+EiR7VlTDVdEwBLTIdWs
KkVxwCb38vzZ3uaN/n1Kx737Ztn2WF+ezrFswPPzw9XC+ROX8ueXUgZLuA5yxg7a+fhV2Lr7tdHm
0/J1ijEI5RsRywVqs9XWYxTTqqBQLAijkcb6nesaxkNCsB70IsfUQ9LzYfsJcEYjf3SmKAoxlafq
0vlrDUgv9gTBJwK24UFN/mfNXcsMmSF/1x52dJ44EBt3ClDOaDWKw2r2R0hDbJ0zWCqjYzfc3TjX
6zYquIFmiRfnPtfxf5UyQ5lgFlLYPGuAQxt0la3jmywX9n3/YArokL4xXC7GQdmUcR+ee8fm/g==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-e2e0c98c-43d1-ab3b-ac99-ed8f38a85317/test-blob-dbb3c173-71be-5dfe-182c-b857ee5e084b

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
last-modified: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x22D5C2B0D549040"
content-md5: 1C7//2c5KbdXykY6+kBFxw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b8cf393d-ba3d-4618-846c-8e584cfb7707
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:50 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:50 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-e2e0c98c-43d1-ab3b-ac99-ed8f38a85317?restype=container

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
x-ms-request-id: cad304b7-ed7a-40f6-bb2a-24b6b23fb9ec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

