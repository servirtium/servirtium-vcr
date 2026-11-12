## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-973a3e02-9fc3-3400-58b0-cd21548b00ab?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_OverwritesDeliberately_Path
now: 2026-11-12T00:49:15.5421615+00:00

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
etag: "0x24511B8012CAF40"
last-modified: Thu, 12 Nov 2026 00:49:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 393c91a5-48f9-4a9d-8468-fbe391ac59f6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-973a3e02-9fc3-3400-58b0-cd21548b00ab/test-blob-1b7896bb-96bb-4af2-7366-df4feeb63759

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
xMBEg0ZsrTxMuCRa6V4El+pASN31M/tsS/AkXb+xRqF4dF2URn1lTug7zgNxmGAUYUdlrW5aY5DE
2DdWSFB8m3KD4nUAcFBs2/n1umT4+rOPD/t4TJgzHRDMz25GDgaXvjOR7rbqE/D2+NJ1ZakszN6D
xjlVBE/ZUMRlNKDiJszyXfswZgz8pfsKgVPGvbhmoAKPwkjNQrrkt57yhd9PFNEFggiu+2bShyE9
SoP7E5IM/pSeUmSEJRpATK5tCiAcum2CwDuwuKScvTsnj/g36aMM5YZLscFtgFztba63ZHwAIY8W
eFNWXEXvAZUpXZUiCWILYSWZ0QirFD/ewkv15Vm+Jm5oIHBQtYlAW7AsRCPGymNMrAJXZ1CGamQT
eJn6+Rw7ajcnuejyuqybWHVYf9AcF/joqTlWZ78e4rYMPTzvRmKU8NnsnxB6WfFWuw7aLeqU92Ch
EU/i5QN3Cdcy5n1vrBETxI/2L3jnbVBHAKuwQ7TLd0bcTjQSsQvWdJU4R3N05g/8x2lbncfnuaP/
muRXx8YjZm43kl3dARKEILvjrybc0xmcs3xKcNl+9ZWQEhcmfq3PFOEEPFSxH8ZW130LAwl9I8bL
uxNJ2fWVuJ3HTO77XaIOE5pE15fF6pS185lcc/GLEu9QW8KZhTvrb4S26dPXW3nb/fBvOUsvBdF+
k+VcOEWsPDn/qwLfdI5eWWgTDgDB3pgfgHUBHNmjIVXxGvFWjjY+Cq2Z2K93+4lhEN/jHPbQvbVM
PLjPqh9fW4qs7lmcCMox1ARSJwbpp4Xsnwv6wAReIV08ClF+bl+NOnwlyw0vxQgVsUfyfZavY5Qz
4wsUZZqFTcz8YP14smWkxe2Jw9x3vNkD5A69bKPHjKe8S4pUedThoH1AM2QKnP/hTbipJZ+4uycx
EICMyOEpNNNWu2faUEsYpyNfN4h1+EgP2x7rHmcHBJBjImhUVdibF/6RtOCYBv1skH18WISfvBg4
fOzDPRZsTrfWdy3iw1FKwx+J40Nnd9Qhfo3pi6sMxGZQHNnr2NnoJWUpwY/Pis0sMZRkFdjU0AUY
or+JgsMLyrPHkad4X+tGob7ePbVEUfS/vVkXp66Ne0vT0zUaXqKhHvbcB/gls9KoHXQZ9pJP01DL
ycVq9CMEORZbpIy1LEIcPB+/aEr7mQmHbok6c4W5g//lT5TcNyrT183iyg5F8vEx/blykGoGzy+7
4oaZysaQoiCM0NyuPwT165F8Gc/6QXuXCXbLRvOV339lIFWkOgwHUSjuuSIUg721faTYirZgwaAK
AcFPxVst9vFdSR6vUbGEdMenDIhYgoa4FshOvFXIBF+0mThLt4vMwMIxtzmfBSzzUxXvubQYsg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FF8AB6DF892980"
last-modified: Thu, 12 Nov 2026 00:49:15 GMT
content-md5: OqD2RBkiO2ONrdSm6qwHrQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 89a22b3d-bcaf-4646-bce5-37dcbf2474f8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-973a3e02-9fc3-3400-58b0-cd21548b00ab/test-blob-1b7896bb-96bb-4af2-7366-df4feeb63759

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
xMBEg0ZsrTxMuCRa6V4El+pASN31M/tsS/AkXb+xRqF4dF2URn1lTug7zgNxmGAUYUdlrW5aY5DE
2DdWSFB8m3KD4nUAcFBs2/n1umT4+rOPD/t4TJgzHRDMz25GDgaXvjOR7rbqE/D2+NJ1ZakszN6D
xjlVBE/ZUMRlNKDiJszyXfswZgz8pfsKgVPGvbhmoAKPwkjNQrrkt57yhd9PFNEFggiu+2bShyE9
SoP7E5IM/pSeUmSEJRpATK5tCiAcum2CwDuwuKScvTsnj/g36aMM5YZLscFtgFztba63ZHwAIY8W
eFNWXEXvAZUpXZUiCWILYSWZ0QirFD/ewkv15Vm+Jm5oIHBQtYlAW7AsRCPGymNMrAJXZ1CGamQT
eJn6+Rw7ajcnuejyuqybWHVYf9AcF/joqTlWZ78e4rYMPTzvRmKU8NnsnxB6WfFWuw7aLeqU92Ch
EU/i5QN3Cdcy5n1vrBETxI/2L3jnbVBHAKuwQ7TLd0bcTjQSsQvWdJU4R3N05g/8x2lbncfnuaP/
muRXx8YjZm43kl3dARKEILvjrybc0xmcs3xKcNl+9ZWQEhcmfq3PFOEEPFSxH8ZW130LAwl9I8bL
uxNJ2fWVuJ3HTO77XaIOE5pE15fF6pS185lcc/GLEu9QW8KZhTvrb4S26dPXW3nb/fBvOUsvBdF+
k+VcOEWsPDn/qwLfdI5eWWgTDgDB3pgfgHUBHNmjIVXxGvFWjjY+Cq2Z2K93+4lhEN/jHPbQvbVM
PLjPqh9fW4qs7lmcCMox1ARSJwbpp4Xsnwv6wAReIV08ClF+bl+NOnwlyw0vxQgVsUfyfZavY5Qz
4wsUZZqFTcz8YP14smWkxe2Jw9x3vNkD5A69bKPHjKe8S4pUedThoH1AM2QKnP/hTbipJZ+4uycx
EICMyOEpNNNWu2faUEsYpyNfN4h1+EgP2x7rHmcHBJBjImhUVdibF/6RtOCYBv1skH18WISfvBg4
fOzDPRZsTrfWdy3iw1FKwx+J40Nnd9Qhfo3pi6sMxGZQHNnr2NnoJWUpwY/Pis0sMZRkFdjU0AUY
or+JgsMLyrPHkad4X+tGob7ePbVEUfS/vVkXp66Ne0vT0zUaXqKhHvbcB/gls9KoHXQZ9pJP01DL
ycVq9CMEORZbpIy1LEIcPB+/aEr7mQmHbok6c4W5g//lT5TcNyrT183iyg5F8vEx/blykGoGzy+7
4oaZysaQoiCM0NyuPwT165F8Gc/6QXuXCXbLRvOV339lIFWkOgwHUSjuuSIUg721faTYirZgwaAK
AcFPxVst9vFdSR6vUbGEdMenDIhYgoa4FshOvFXIBF+0mThLt4vMwMIxtzmfBSzzUxXvubQYsg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FC1E4F5F126B90"
last-modified: Thu, 12 Nov 2026 00:49:15 GMT
content-md5: OqD2RBkiO2ONrdSm6qwHrQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 050cc5ce-f45f-4923-ac3d-1b214870e8af
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-973a3e02-9fc3-3400-58b0-cd21548b00ab?restype=container

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
x-ms-request-id: 54a500b6-4cec-4e50-9f41-914c5a014707
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

