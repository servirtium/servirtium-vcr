## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b5b8db8d-b64c-c38f-74d0-2fad9d8951a6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesDiffPageableAsync_IfTagsFailed
now: 2026-11-12T00:51:24.5716211+00:00

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
etag: "0x24F174B0848EEA0"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 46b84abf-72ac-46a3-90ad-047968273261
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b5b8db8d-b64c-c38f-74d0-2fad9d8951a6/test-blob-c7f2aef4-2a97-8da5-7dc1-b05bb980e434

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
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
etag: "0x2223C4631CB01E0"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 90ae3480-d336-4567-8a18-c8984eb6dab4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-b5b8db8d-b64c-c38f-74d0-2fad9d8951a6/test-blob-c7f2aef4-2a97-8da5-7dc1-b05bb980e434?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-4095
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C198360F3A7DD0"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-content-crc64: ZOp3uOUKdfU=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f8942b74-a54c-4bbf-ac70-12d3ed1800fe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-b5b8db8d-b64c-c38f-74d0-2fad9d8951a6/test-blob-c7f2aef4-2a97-8da5-7dc1-b05bb980e434?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:24.6360000Z
etag: "0x1C198360F3A7DD0"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 707f8f01-efc6-410f-b689-be64ae22a326
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-b5b8db8d-b64c-c38f-74d0-2fad9d8951a6/test-blob-c7f2aef4-2a97-8da5-7dc1-b05bb980e434?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
pVmtGODECrcDewxxYEGllzQNJWxzO93I3GnJJbdH+SDw0wthkNzPzRKktTfXA1YuZp/BVjtKiGl8
5Dt2+uQAu4LrgI02RAdXPVdazoal8NkSmr4XhqPlpkqh5KuhWdMtpPq17ILJ+CGXaRjk77ni1vRh
Y2Al6TTeBdpClGBctuSELCqM8ARXSaKcfx2LAbaRvw22P/VzCLrF1uanhmPBO7IzX8OOVubwChm9
iGkWUwQjsdVSpXbuESRvxhkdr8I+20RqV6HzAmgnxjXctX9Rr4PihNWOb5U8RU6eH5DN0lpXfq0l
rPtiMK9sK95BElulHheWOivtsGuuLhJSVePYWfTahDbRLAKHf1QmIUS2+zLy+QB4Npcvas5Cdn7o
D9vLlNHqZo0l1PIUDrvXxo8n9zLgX1viYCNcqhpnjrWEnm94Wo1yzJSlzSQOYyfcWKM/G39LCK9/
6TSujrtyvUU8j3BLXmwBtCueO5I21Pz7f1J3KHM1OZa/+XBZxD3ZMg/f0dS3kfk2PWZUrc0dSBU3
sg5p+5XRBlbZi2T7qO/txQiDVwIoRO5YQOoM4YzJorFbIRIubzd6Dsp93gaVO5V3ZujEmfASD24g
ELqqxSTJEOizn4fdvlXRCEk3qmbowwVVlXukBAjASBGkDl98z0iltM0d4ZsNmqeT85Gn22UIOEy1
VC+pJQvf8lZ1OLD1VDgAkfaYyuJpR/rTERB3GW2snNUTx3sZ/I7BPe9EmGH3nZ9Yp0lub25qSww1
1hT6aNnpyZza4Yy955Vn1ozyJK+Y3HNxH3EkPSxnqXtu4yZ6xtUVW8/FHLwSmsCzB5nhdyddnPmh
iUhnxItwczgRTgNv7Q+23cng07+3X4SxcTaThTFUEUcs2T2NrZdDVamDAUu8RBmJK5pefcg66SrD
tVNV3O0HvT28QhTSKS8xnH4WM1049SwcCVqX9pN+8u8TyfdD7ni7fEQOAAEFtwJqLOFKI7bMisAm
ONKTb8apPVAkvl837a0GWrYZKvUrF1JYLMmyNM44Rj43HbWlKAx9ZMKx4PiiMz4zQ8j/smDL+yGA
OkP89gmB63ggAND4YDKqnMUzejZatfmLf/AGOZPeayKTJe3JgG24L/SAgjJtOuOWVRaamIHrJoVJ
cXcZe7LkQpStZDtE4BtXekpB2jPGHUQNb+R9Q9OhqP5ofw/2nrRCmz+ewNanUnX6Qh02qUxSg1My
DAzOZ/7BDLs83GAMYNyW/z7zKF1uZR1vggC1av+yFfy7xJKodDRB3LMaanUU7eJBoKoNX1v1w6bu
XuX9DKG8icZkUZxJ7YoKsUuqU/unWpQec8pVpbWgxQDruRVOQ9ARXuCvsJxF97IfAq0QS3CrRw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21C9E72E39C5480"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-content-crc64: +xkmucQShE0=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8f48bd2d-f544-48bd-8474-9afbc3766d96
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-b5b8db8d-b64c-c38f-74d0-2fad9d8951a6/test-blob-c7f2aef4-2a97-8da5-7dc1-b05bb980e434?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
pVmtGODECrcDewxxYEGllzQNJWxzO93I3GnJJbdH+SDw0wthkNzPzRKktTfXA1YuZp/BVjtKiGl8
5Dt2+uQAu4LrgI02RAdXPVdazoal8NkSmr4XhqPlpkqh5KuhWdMtpPq17ILJ+CGXaRjk77ni1vRh
Y2Al6TTeBdpClGBctuSELCqM8ARXSaKcfx2LAbaRvw22P/VzCLrF1uanhmPBO7IzX8OOVubwChm9
iGkWUwQjsdVSpXbuESRvxhkdr8I+20RqV6HzAmgnxjXctX9Rr4PihNWOb5U8RU6eH5DN0lpXfq0l
rPtiMK9sK95BElulHheWOivtsGuuLhJSVePYWfTahDbRLAKHf1QmIUS2+zLy+QB4Npcvas5Cdn7o
D9vLlNHqZo0l1PIUDrvXxo8n9zLgX1viYCNcqhpnjrWEnm94Wo1yzJSlzSQOYyfcWKM/G39LCK9/
6TSujrtyvUU8j3BLXmwBtCueO5I21Pz7f1J3KHM1OZa/+XBZxD3ZMg/f0dS3kfk2PWZUrc0dSBU3
sg5p+5XRBlbZi2T7qO/txQiDVwIoRO5YQOoM4YzJorFbIRIubzd6Dsp93gaVO5V3ZujEmfASD24g
ELqqxSTJEOizn4fdvlXRCEk3qmbowwVVlXukBAjASBGkDl98z0iltM0d4ZsNmqeT85Gn22UIOEy1
VC+pJQvf8lZ1OLD1VDgAkfaYyuJpR/rTERB3GW2snNUTx3sZ/I7BPe9EmGH3nZ9Yp0lub25qSww1
1hT6aNnpyZza4Yy955Vn1ozyJK+Y3HNxH3EkPSxnqXtu4yZ6xtUVW8/FHLwSmsCzB5nhdyddnPmh
iUhnxItwczgRTgNv7Q+23cng07+3X4SxcTaThTFUEUcs2T2NrZdDVamDAUu8RBmJK5pefcg66SrD
tVNV3O0HvT28QhTSKS8xnH4WM1049SwcCVqX9pN+8u8TyfdD7ni7fEQOAAEFtwJqLOFKI7bMisAm
ONKTb8apPVAkvl837a0GWrYZKvUrF1JYLMmyNM44Rj43HbWlKAx9ZMKx4PiiMz4zQ8j/smDL+yGA
OkP89gmB63ggAND4YDKqnMUzejZatfmLf/AGOZPeayKTJe3JgG24L/SAgjJtOuOWVRaamIHrJoVJ
cXcZe7LkQpStZDtE4BtXekpB2jPGHUQNb+R9Q9OhqP5ofw/2nrRCmz+ewNanUnX6Qh02qUxSg1My
DAzOZ/7BDLs83GAMYNyW/z7zKF1uZR1vggC1av+yFfy7xJKodDRB3LMaanUU7eJBoKoNX1v1w6bu
XuX9DKG8icZkUZxJ7YoKsUuqU/unWpQec8pVpbWgxQDruRVOQ9ARXuCvsJxF97IfAq0QS3CrRw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22CAF2F339D4E40"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-content-crc64: +xkmucQShE0=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c1ba5a3-2d26-4f8d-8e85-0aa0f3007b7a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-b5b8db8d-b64c-c38f-74d0-2fad9d8951a6/test-blob-c7f2aef4-2a97-8da5-7dc1-b05bb980e434?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-page-write: clear
x-ms-range: bytes=1024-2047
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x228DD97FA17A3C0"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c9252a58-e414-486a-8609-6714156fde19
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-b5b8db8d-b64c-c38f-74d0-2fad9d8951a6/test-blob-c7f2aef4-2a97-8da5-7dc1-b05bb980e434?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-page-write: clear
x-ms-range: bytes=3072-4095
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27327BB509AF420"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b82c1758-a5f1-4961-a09c-df60db6d1ca9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-b5b8db8d-b64c-c38f-74d0-2fad9d8951a6/test-blob-c7f2aef4-2a97-8da5-7dc1-b05bb980e434?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:51:24.7540000Z
etag: "0x27327BB509AF420"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0aada72b-c585-4a73-b2a1-8c36c71bfdea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: GET /devstoreaccount1/test-container-b5b8db8d-b64c-c38f-74d0-2fad9d8951a6/test-blob-c7f2aef4-2a97-8da5-7dc1-b05bb980e434?comp=pagelist&snapshot=2026-11-12T00%3A51%3A24.7540000Z&prevsnapshot=2026-11-12T00%3A51%3A24.6360000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_10
x-ms-if-tags: "coolTag" = 'true'
x-ms-range: bytes=0-4095
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: aa7a01b2-baba-4656-9439-7308e4d63749
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:24 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 10: DELETE /devstoreaccount1/test-container-b5b8db8d-b64c-c38f-74d0-2fad9d8951a6?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
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
x-ms-request-id: 71cf8154-fec6-45b7-b50b-ac14efb38100
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

