## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f7412759-e382-753c-53ec-918c9ab4d153?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_Stream_StorageTransferOptions(4)
now: 2026-11-12T00:48:51.5923456+00:00

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
etag: "0x21829A47ED6B340"
last-modified: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 831a16c6-2377-45b7-9916-87ccaad3dac0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f7412759-e382-753c-53ec-918c9ab4d153/test-blob-63813d42-472e-3cb3-8e58-03764e69fef2

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
pAckIypkWEW1jYcuoFeYrAgCdlBGL8ERdARpKeDGJuntnueSkK4o3eU8rqHAhJw2v1dtTPOurHRG
E64l+y5k7meeQAJvBhtZ2ZlqCoEgUe9oM2mIWNr2P/FzTH3/A+K31785IUSZxrk7FHNZRKLyJsG/
vcfE3JaMqAEQ/LmeWta2sjLC5i+qzmyvTERnnPtPgCW7P0Ua8voprXlDickAnbmco5FvMECSFe5b
FZBRJQwFwXyU4xuQm8A4mTm1ZkWjr6+Lyvhp30/kKCpWv91q14dtPcdMa7meCwfQN5cH3K6puGXg
xlsTm+Itr7rwOdzizcGxSCl9VkT17L7wmae43Ut7rQd4iREsWaHlH7z+rdIr7WnVVZSFLGEh69mc
IgI6dNFvdYzVakOvhe+HlzaI9j/sxas94oe39oClV543jzaeq6vqjzhFVoMlJs+k/ZUrmfSasF1X
/JJJt34LLxOlePa46OuLnWYGpm4nGLy4Evnrer2pnd/YR64YoNe6OiZvgK3Z6xWpn/uOkwnuL+TV
kaSFH7VV/NoX4KE8cv2OTGxIuJcO3ibjQtrCGwrV6RfKQg4yNRpwGYTTwgtzbCz9/0acpndMx7N9
od3ak+DQQfaJci/uWxdS154TOxwbb9auxBzDOEOgfXtbtZM8lYajAoAU6vn8DqMuSs7YOYuWYjEH
LM7EDAiz6fS0k6aEFUEXbzmbBoXcsbV4le50x0TvxFJiNWm43/V4YQAFSHv8qjWNwMlS+lurK3oY
S3caPiGwxM9UId/YX5BDI6SE1mk6fOq55wZ6ncn2tgrun5N9XiPfVIOsqIlVtGA5D9e3JlQR3s+N
YFYaNicFXWrV6cD9xcWBpYHljtNhZDKmQY3yP5C13cHD8P3MxB5cpkoef8qgO0kRNYHTK0/7K/wk
dPSZEx3aIAz/OdXItOBiieeIQuRoBQVE4AkO4rFxx8QAqE8qwpItRF69oQJzSYGgcKFncugXvG/v
VDMUyz5bjnIRxwyQOMZVW/6GqmQD0ZaIbnIPCVTb6OzgOm5fGXggYhOQYoJ0DzfaEhfqkRIK7IOd
i13MS4QdNd4fr/5Y9UKGZUdRc24TE146NPY98Vba1k3qwo0aVBeOci2jVV85ghzUYyzKuXkUiXf/
kRaO30OHRdmwbjO1axEvwgBBcL7+AbLZaY4qDxzU1TgVG8IAAJPpGw+GiBPpH/cbmvZ50xm5AJBj
tHa1XTW83Jj6n1BOL8JsWFSveHif8EmWD3QmWwIfXBoynEsdM77Zyax77oCnzGszDHrECogXxMQs
H03BloGV20I2G5J3TySV1a/MJAHJ70II8k6HWlKSG9iG8BRwGDIr5RM9cLDZvL1WLjTYS6DDYg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2608A2AEA474680"
last-modified: Thu, 12 Nov 2026 00:48:51 GMT
content-md5: QJQ0fMHi76yGAnxXSXt3cQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 404db8f6-fc8d-4fdf-bdb7-0ba150c1fcac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-f7412759-e382-753c-53ec-918c9ab4d153/test-blob-63813d42-472e-3cb3-8e58-03764e69fef2

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
last-modified: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:51 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x2608A2AEA474680"
content-md5: QJQ0fMHi76yGAnxXSXt3cQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce12fe9d-0fe9-4d47-9c54-2013036ccfb0
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: QJQ0fMHi76yGAnxXSXt3cQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
pAckIypkWEW1jYcuoFeYrAgCdlBGL8ERdARpKeDGJuntnueSkK4o3eU8rqHAhJw2v1dtTPOurHRG
E64l+y5k7meeQAJvBhtZ2ZlqCoEgUe9oM2mIWNr2P/FzTH3/A+K31785IUSZxrk7FHNZRKLyJsG/
vcfE3JaMqAEQ/LmeWta2sjLC5i+qzmyvTERnnPtPgCW7P0Ua8voprXlDickAnbmco5FvMECSFe5b
FZBRJQwFwXyU4xuQm8A4mTm1ZkWjr6+Lyvhp30/kKCpWv91q14dtPcdMa7meCwfQN5cH3K6puGXg
xlsTm+Itr7rwOdzizcGxSCl9VkT17L7wmae43Ut7rQd4iREsWaHlH7z+rdIr7WnVVZSFLGEh69mc
IgI6dNFvdYzVakOvhe+HlzaI9j/sxas94oe39oClV543jzaeq6vqjzhFVoMlJs+k/ZUrmfSasF1X
/JJJt34LLxOlePa46OuLnWYGpm4nGLy4Evnrer2pnd/YR64YoNe6OiZvgK3Z6xWpn/uOkwnuL+TV
kaSFH7VV/NoX4KE8cv2OTGxIuJcO3ibjQtrCGwrV6RfKQg4yNRpwGYTTwgtzbCz9/0acpndMx7N9
od3ak+DQQfaJci/uWxdS154TOxwbb9auxBzDOEOgfXtbtZM8lYajAoAU6vn8DqMuSs7YOYuWYjEH
LM7EDAiz6fS0k6aEFUEXbzmbBoXcsbV4le50x0TvxFJiNWm43/V4YQAFSHv8qjWNwMlS+lurK3oY
S3caPiGwxM9UId/YX5BDI6SE1mk6fOq55wZ6ncn2tgrun5N9XiPfVIOsqIlVtGA5D9e3JlQR3s+N
YFYaNicFXWrV6cD9xcWBpYHljtNhZDKmQY3yP5C13cHD8P3MxB5cpkoef8qgO0kRNYHTK0/7K/wk
dPSZEx3aIAz/OdXItOBiieeIQuRoBQVE4AkO4rFxx8QAqE8qwpItRF69oQJzSYGgcKFncugXvG/v
VDMUyz5bjnIRxwyQOMZVW/6GqmQD0ZaIbnIPCVTb6OzgOm5fGXggYhOQYoJ0DzfaEhfqkRIK7IOd
i13MS4QdNd4fr/5Y9UKGZUdRc24TE146NPY98Vba1k3qwo0aVBeOci2jVV85ghzUYyzKuXkUiXf/
kRaO30OHRdmwbjO1axEvwgBBcL7+AbLZaY4qDxzU1TgVG8IAAJPpGw+GiBPpH/cbmvZ50xm5AJBj
tHa1XTW83Jj6n1BOL8JsWFSveHif8EmWD3QmWwIfXBoynEsdM77Zyax77oCnzGszDHrECogXxMQs
H03BloGV20I2G5J3TySV1a/MJAHJ70II8k6HWlKSG9iG8BRwGDIr5RM9cLDZvL1WLjTYS6DDYg==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-f7412759-e382-753c-53ec-918c9ab4d153/test-blob-63813d42-472e-3cb3-8e58-03764e69fef2

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
last-modified: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2608A2AEA474680"
content-md5: QJQ0fMHi76yGAnxXSXt3cQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8ed72b9c-0560-4615-8388-b4458d92561b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:51 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:51 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-f7412759-e382-753c-53ec-918c9ab4d153?restype=container

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
x-ms-request-id: 744e9bcf-8c4b-4aae-867a-ef4351234229
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

