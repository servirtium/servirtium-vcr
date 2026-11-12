## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-27f24e72-7201-93b1-a774-9b1ebb9d5550?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_Streaming
now: 2026-11-12T00:47:56.5613754+00:00

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
etag: "0x265B41D09E9F560"
last-modified: Thu, 12 Nov 2026 00:47:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 552f20f6-501f-4e67-852e-7179ef4d5f7a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-27f24e72-7201-93b1-a774-9b1ebb9d5550/test-blob-ddf5b19d-49c7-a5de-8afa-7b1b76fc5942

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
/kZXJVKQ0xKhW88ZS+9zTF6CYhaQU1cPrspQRAOQ8WKSWGlXPRmA4nvfhaWimEi3AU7AOTs+wKru
R3eHQI4OEWlthvKFGw5EAYCbsM6xbRWCmEO00LgnU5i/aPai+aHs0HQ7NRJVMeU/eze6og/cPdph
BadKWkGxRTJaxrMYogjeruBadTcDLWdedFSAbLGI4yscQPP6oXYyivDf+moyJ9ku3PMvgsejXthA
7OXsMdiB0eOH/GEU4wxpJ+tGJDL8LE17Uo+9WWFjeOIbubWRRVkYXSiHqip4GfnmxVrcXDmlRL+X
cd5IxHeCI4N++SpX2OGSLsYJdIIiAziW1pQGhxypdnX2+dR6z5mxBYan+SDOj+15SS1znNA9dW6m
se7jfJtn1YO1YN4MGF8tWG/7ewkYyEanjD7uNtmluIRm0x6qzYnrPySdGS4ObDHORURgQvlkjumn
O+9deJ+pD6dapkRAgorlDzvkeq4XmR8MIPCVRHaKAUU0A5GZjseF8wmHs8btjcK5ejK9gBM6kKLP
UFiuE8sxz6X+DH/4TIF0X4akkOVZH5It28lEzYEy+XLvyj1u1t8+VeQg7oFDwS6wSSCMlv+9dTDG
gDcC7QIkzBIMCYFEBYmmZjoAOTAQ6hqak4RgpWNzMlUMqFWoPGji/CJvNritbEOX5TDEvDz/tZUd
Z1l9wyeumdYsN1wz/inSHjwOobRi7SdAyb8yrnUYDPO/itQOZDn7wJzhgTTmZOYG8p0A8RThunoy
PflnfOthEyppc3NVw7oDE+AYgWzyWmXYLLvYGBvf3tBa3CY/k0SwgG0KffBysS7j/N0zyTgOP+OU
jk8viPsOipSj+uaTw3+cZwH+6Nx0ZnqM9Rs+qxWXTJ1DqwX0gfdx+/Jbz7ZITzldl2E3D1YGHyjV
opPf0N9/C65JTxh6p+YKje3qGZbDRKXi4BOzYDxGPYzdH95kkioT3MMI/v8h4vB7LYJpHAWREV7t
/fDLy6pxAhKLnYcHpfvC1j3Su0WlwP0jNzO63CGGSw5/dpQ6RxAYlvztlUVodIeGp0XIvlUYRzzy
qJR3tibxBVJ5hy9miI4suSVJuCu4usOsMzXbvYy5Zy5XR598od/V/I/z7+xXIB62mwQvz48ROu3Q
y4LwFUfFwCAAD0DvsBhGc7ybxcvXVBMWJSKHiZefRg2xq9Zc5OdILS7LVhHex+rs6VvTdXQi+HZv
2u8lPTaJYcgzPQRB6Y/UU5ecDP0COF43m6A8zNCYj7Ng7Qr3IvD4QvVIq4nlqv/M/iLdhex4bKGR
7qGWTJT3mq5R4fyE3DCnpMkIuo3VUfCgb82uuwnG54FpZjROYfVgUBDalMgDSCHxNeEicLETuw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20A83720F0919C0"
last-modified: Thu, 12 Nov 2026 00:47:56 GMT
content-md5: CGJovFbIcLeulsqwpPsrBQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6bbc0189-e854-49b5-9c65-f9fe2a50b0d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-27f24e72-7201-93b1-a774-9b1ebb9d5550/test-blob-ddf5b19d-49c7-a5de-8afa-7b1b76fc5942

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
last-modified: Thu, 12 Nov 2026 00:47:56 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:56 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x20A83720F0919C0"
content-md5: CGJovFbIcLeulsqwpPsrBQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 539d4259-c5fb-4ca1-9105-39bc4efc6ee0
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:56 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: CGJovFbIcLeulsqwpPsrBQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
/kZXJVKQ0xKhW88ZS+9zTF6CYhaQU1cPrspQRAOQ8WKSWGlXPRmA4nvfhaWimEi3AU7AOTs+wKru
R3eHQI4OEWlthvKFGw5EAYCbsM6xbRWCmEO00LgnU5i/aPai+aHs0HQ7NRJVMeU/eze6og/cPdph
BadKWkGxRTJaxrMYogjeruBadTcDLWdedFSAbLGI4yscQPP6oXYyivDf+moyJ9ku3PMvgsejXthA
7OXsMdiB0eOH/GEU4wxpJ+tGJDL8LE17Uo+9WWFjeOIbubWRRVkYXSiHqip4GfnmxVrcXDmlRL+X
cd5IxHeCI4N++SpX2OGSLsYJdIIiAziW1pQGhxypdnX2+dR6z5mxBYan+SDOj+15SS1znNA9dW6m
se7jfJtn1YO1YN4MGF8tWG/7ewkYyEanjD7uNtmluIRm0x6qzYnrPySdGS4ObDHORURgQvlkjumn
O+9deJ+pD6dapkRAgorlDzvkeq4XmR8MIPCVRHaKAUU0A5GZjseF8wmHs8btjcK5ejK9gBM6kKLP
UFiuE8sxz6X+DH/4TIF0X4akkOVZH5It28lEzYEy+XLvyj1u1t8+VeQg7oFDwS6wSSCMlv+9dTDG
gDcC7QIkzBIMCYFEBYmmZjoAOTAQ6hqak4RgpWNzMlUMqFWoPGji/CJvNritbEOX5TDEvDz/tZUd
Z1l9wyeumdYsN1wz/inSHjwOobRi7SdAyb8yrnUYDPO/itQOZDn7wJzhgTTmZOYG8p0A8RThunoy
PflnfOthEyppc3NVw7oDE+AYgWzyWmXYLLvYGBvf3tBa3CY/k0SwgG0KffBysS7j/N0zyTgOP+OU
jk8viPsOipSj+uaTw3+cZwH+6Nx0ZnqM9Rs+qxWXTJ1DqwX0gfdx+/Jbz7ZITzldl2E3D1YGHyjV
opPf0N9/C65JTxh6p+YKje3qGZbDRKXi4BOzYDxGPYzdH95kkioT3MMI/v8h4vB7LYJpHAWREV7t
/fDLy6pxAhKLnYcHpfvC1j3Su0WlwP0jNzO63CGGSw5/dpQ6RxAYlvztlUVodIeGp0XIvlUYRzzy
qJR3tibxBVJ5hy9miI4suSVJuCu4usOsMzXbvYy5Zy5XR598od/V/I/z7+xXIB62mwQvz48ROu3Q
y4LwFUfFwCAAD0DvsBhGc7ybxcvXVBMWJSKHiZefRg2xq9Zc5OdILS7LVhHex+rs6VvTdXQi+HZv
2u8lPTaJYcgzPQRB6Y/UU5ecDP0COF43m6A8zNCYj7Ng7Qr3IvD4QvVIq4nlqv/M/iLdhex4bKGR
7qGWTJT3mq5R4fyE3DCnpMkIuo3VUfCgb82uuwnG54FpZjROYfVgUBDalMgDSCHxNeEicLETuw==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-27f24e72-7201-93b1-a774-9b1ebb9d5550?restype=container

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
x-ms-request-id: fe79ebaf-36cb-4a1d-905f-b10516a0b820
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

