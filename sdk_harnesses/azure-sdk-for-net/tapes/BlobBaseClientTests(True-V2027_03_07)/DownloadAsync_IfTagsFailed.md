## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e7123851-3a78-3840-8e0c-f05ab197603b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_IfTagsFailed
now: 2026-11-12T00:47:54.4363796+00:00

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
etag: "0x2271B2278D74FA0"
last-modified: Thu, 12 Nov 2026 00:47:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c7cdcb72-279b-4a0a-ba2d-8dba3f2ad3e3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e7123851-3a78-3840-8e0c-f05ab197603b/test-blob-7e39aabb-f458-7411-c429-e0574e26a91c

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
n5KIDYjh9cIQ5pbV299XxeVqLfjSgVFEvsW2knGHjg+l7JRxAghWcEJP1pGkalyvtCt0R2poaR5A
Q0/DKmJRiViGMO9K5sLdE721gqrAoFNoB95GEkelPYJ2ML+5k0Xg/kw5HTptZM1olzOtsuZzgKP7
WiOEC3YR4PJs07UDJIB31YRdhoIZ+6IQ3XsT+IubA7AcvTgiW/LWJz1HAZEXZXOzNdxiFfkg4l+A
dC36/ehn0NAF52ZHVXmRh15F0vkR+HcIYMKvOe22+9vZoefE2ylU4DHBEX4MbOBi0I6a2hBlb3y2
8Z0luJbiT+uLbbOSzKs08PHIT+b5/PPiTGhfGyDLdDJrDumLLyea38KSgP4szwPiZukenB+VvPWq
QmstgjTKwPmBJ73CqcHKLnAkZnv1tXxlfbU3rNcS1VL04ey8bFyNyMAEq6hFILwoVG6ucVZ5tIzu
yAV/kxMiblFrzcfVDcIUlp678ArUH1z4DlhpZGT7ei1fzaNWDjSs4jxW2lL1Ukasmtu3vcOCGqmo
h4S6uQrtb1KZdUAevYhpDw7NfUQKArsSvMmIRL1p3bP5roev8SkyaWr/W90FjdxTTa61tJxknoTI
qPxAZCuVMJeNJA8Auh7lmxTaCqbeDC/tNfYOtCkWlRAC5kgt8QQ+aStFeGnNUpOQ0BiIipPe6pvM
Uy41hnxudo/+/tPVt6kPnKB7mJPGH+NifuMQjgt9JPysYJ7VCOKv1gLZzlTAuhhveO3yY1EIBjNL
0wiYXuiEgdnXKFcKOpO+y8GR7FGPosTLoBUdisGqpFlrijXaFngZVUx66JLAZD1aNJeQdxrhvDBE
zb3SZvcYLIT+n7Bd47VJd5YEFLkxCjzXwlYqGi0/ic0Elki6R+5VYrsOwsWN/FHhRv+D3ad3EsOB
+qSg7hJWvxXiWUxsji+or7L9I0h2SsYFSNMtu6wmjYSFOUxKtXSptwOvqqIEdLjQ2i30ee57CrDd
m6U/KQNou8zH51TjXvo+VGtFx58jANMbXeB+MhOVCi+cbBnOao7/Ru/WPI1j7HwztSSCNUMQuprR
I8wi6om4MtwlRvHgcOrdRYCwTMNGt3BkSnzvEtTrjLF//UbB3VxlHgqxPaaKU0U6pfDDX23Wi2xb
vp8MyR8HOrlAYHKkHGgjSi64lXrJ2fY3tW3kKC1DqHLaZR69WVTrqQPsSvPSlYmHnxQ/HvXxkuSo
1BSxIxGM/LgAyrZJZvHZzex33I8DZR/kXIgYBIp86NM6FIRAOYXxYE460cvSPjkiZVAJerVVpG/0
zMeIdPcthOLiDlFsmZNmhXxAyJNUER1P9Z85cm0e5XAVS2y9aOtXDU3o8C/otsu9ovU4FNvcoA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x221738465E2E3E0"
last-modified: Thu, 12 Nov 2026 00:47:54 GMT
content-md5: WDkBRbxJgHluXUr6nTwcEw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1a4266b0-a7c4-4f60-8b89-268fa3a129b2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-e7123851-3a78-3840-8e0c-f05ab197603b/test-blob-7e39aabb-f458-7411-c429-e0574e26a91c

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-request-id: 9d8f62e0-1201-4549-93ed-6f345322ae73
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:54 GMT
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

## Interaction 3: GET /devstoreaccount1/test-container-e7123851-3a78-3840-8e0c-f05ab197603b/test-blob-7e39aabb-f458-7411-c429-e0574e26a91c

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_4
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-request-id: 4e602ad3-272c-4d6d-bd97-9b60a528f3d8
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:54 GMT
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

## Interaction 4: GET /devstoreaccount1/test-container-e7123851-3a78-3840-8e0c-f05ab197603b/test-blob-7e39aabb-f458-7411-c429-e0574e26a91c

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_5
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-request-id: 98dc46bf-b023-4814-ab8f-114b60a6f0ad
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:54 GMT
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

## Interaction 5: DELETE /devstoreaccount1/test-container-e7123851-3a78-3840-8e0c-f05ab197603b?restype=container

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
x-ms-request-id: e3789e92-97de-44bd-8f27-a26ce6ffde3d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

