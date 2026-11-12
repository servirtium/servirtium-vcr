## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f4a0fbb8-7d7d-74d9-5c9b-64f332e73ac9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_AccessConditions
now: 2026-11-12T00:47:49.5138857+00:00

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
etag: "0x1F09450C4900E20"
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ae51c5cb-4dbe-4584-b9df-e8afafa7d44a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f4a0fbb8-7d7d-74d9-5c9b-64f332e73ac9/test-blob-18686a6e-a51b-e10a-7ddd-66c872926583

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
X5fP9niHt+Gi34aVuVjv01/JQmqtDK81soRoyLAVlUghBmtVFueuMEO/UZ32Q7sDrJGUaaTPG1Lo
mUP0Hu8wjUo9c7Ltmbx3GxIm7rsRPm/IZRsfgCyjUeoYbH2kuRFUjsRTudAIFRPUHU2SqS2X1lrU
K7nTEQwemSHI1S0/02EA0l/2voWfwFAIS2PeEai8gJUi0I5YgH24NR+uQD/llEnrkdfNoBjUNWtp
y8WoP4h5C1SXHQPTqFHiPohm8H8QIrcZ8oDR7t99TZsj7rW3D/WXNDTrTndGGOmF62KQbkTrWagO
jk0Ipx10Gc9or7mbKy+Tz7tLJNM/09mWSwN97d9WOJUMqICojo0XdjSo3mkv6b8z/J+InzTVzrtz
cVwZ9yzvEXcjj4Ou6kAuNK6el/VwZ2FESvBAzphhN9nFNR0x/X8HuMzxDFo8hBJeWWqFNjbFAgr6
1a08r0PfwVep6bUi/TYult8of1oHB8Xd4XQt2wCi/zITNijSywmJEUoCk5tcPFw0Vp9XnYKv8s3n
X83OseVWBuqDD8YOXMvVnm0PBHQqgaUY+YRhS2KvY0Ra6ms7u2Blq4yw2SyVJfrUgf4Vn+5Yvd0o
trhg9buH06yCs3JfmuMNqljoead5gtOKjclkmsNVASyNEwWnBLbRKAZ/EnKHdOcaB/WVcEQ2rzPk
1WjyIzjpLLFG0YbeZaaiFlCh+W9hAxjhSZLOwJDoV2TRwy5N3gTNlubAQaJhPKFO8lrzlLXDgtJP
EdqlG2sgXXoiDKJ4VThL02OJocF2fw3wf8429MKuDkBb/c0qJ3t6n+MoPy//1p0hqMBSOeER2ZHN
tZud6Wm3c/5iHFdqIKznDwHdTUDe8agxFUsBXNReSiM8XXLf3LZ6ccwwnbpFt4cUairgM4tQ7sPz
bNQdtRYqA9IzLsM6CDJKY9x0rVPu7F7E7fKpfRaY626u7G/hXLu1BprnEYjE2mL3ldCu20FwBIB2
WcgkgIW8m0JVixvDaQchv6e5B9rV/xOQsudF6Q8tPujvawLzkYUUK3VFb05GNCzIjRyZtv2loVm1
lM2ddrEzJ00z0/4FLi4hpdxlj5DESn67fFzyk4frScqoPvy3drTEEkcBEmAuw17ueBAgQBHJ8EpP
4vlUQJTFSIo0XO8xaS8noX1Jwjcejbj9BBp2ygm4302yaJS7b9KyPMnW+WdvvQ7h+Z6Ufy0SMVRA
Vjt5Tn6Ae32ifgGbbDGql4ZuR5NRjkcMldFqJF8foDY/ehiWOO1LVX7pzD4NRoxt6eimpOnA7sf0
bbmtFlYdgt3KW/IZFF6ZIvIVZ8II/k5E/Tt3ePxNfotQocs0nj8nzElgQuqaU9SKDYH3q4YF7A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26DFDC30A3F6600"
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
content-md5: qsWD+OzoEayIBqbV5nLf/A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7eb13567-75b8-42c0-a917-63d89608c7d7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-f4a0fbb8-7d7d-74d9-5c9b-64f332e73ac9/test-blob-18686a6e-a51b-e10a-7ddd-66c872926583

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
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:49 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x26DFDC30A3F6600"
content-md5: qsWD+OzoEayIBqbV5nLf/A==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce31ca9e-e120-4e4b-bdfa-682ca8ac640f
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: qsWD+OzoEayIBqbV5nLf/A==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
X5fP9niHt+Gi34aVuVjv01/JQmqtDK81soRoyLAVlUghBmtVFueuMEO/UZ32Q7sDrJGUaaTPG1Lo
mUP0Hu8wjUo9c7Ltmbx3GxIm7rsRPm/IZRsfgCyjUeoYbH2kuRFUjsRTudAIFRPUHU2SqS2X1lrU
K7nTEQwemSHI1S0/02EA0l/2voWfwFAIS2PeEai8gJUi0I5YgH24NR+uQD/llEnrkdfNoBjUNWtp
y8WoP4h5C1SXHQPTqFHiPohm8H8QIrcZ8oDR7t99TZsj7rW3D/WXNDTrTndGGOmF62KQbkTrWagO
jk0Ipx10Gc9or7mbKy+Tz7tLJNM/09mWSwN97d9WOJUMqICojo0XdjSo3mkv6b8z/J+InzTVzrtz
cVwZ9yzvEXcjj4Ou6kAuNK6el/VwZ2FESvBAzphhN9nFNR0x/X8HuMzxDFo8hBJeWWqFNjbFAgr6
1a08r0PfwVep6bUi/TYult8of1oHB8Xd4XQt2wCi/zITNijSywmJEUoCk5tcPFw0Vp9XnYKv8s3n
X83OseVWBuqDD8YOXMvVnm0PBHQqgaUY+YRhS2KvY0Ra6ms7u2Blq4yw2SyVJfrUgf4Vn+5Yvd0o
trhg9buH06yCs3JfmuMNqljoead5gtOKjclkmsNVASyNEwWnBLbRKAZ/EnKHdOcaB/WVcEQ2rzPk
1WjyIzjpLLFG0YbeZaaiFlCh+W9hAxjhSZLOwJDoV2TRwy5N3gTNlubAQaJhPKFO8lrzlLXDgtJP
EdqlG2sgXXoiDKJ4VThL02OJocF2fw3wf8429MKuDkBb/c0qJ3t6n+MoPy//1p0hqMBSOeER2ZHN
tZud6Wm3c/5iHFdqIKznDwHdTUDe8agxFUsBXNReSiM8XXLf3LZ6ccwwnbpFt4cUairgM4tQ7sPz
bNQdtRYqA9IzLsM6CDJKY9x0rVPu7F7E7fKpfRaY626u7G/hXLu1BprnEYjE2mL3ldCu20FwBIB2
WcgkgIW8m0JVixvDaQchv6e5B9rV/xOQsudF6Q8tPujvawLzkYUUK3VFb05GNCzIjRyZtv2loVm1
lM2ddrEzJ00z0/4FLi4hpdxlj5DESn67fFzyk4frScqoPvy3drTEEkcBEmAuw17ueBAgQBHJ8EpP
4vlUQJTFSIo0XO8xaS8noX1Jwjcejbj9BBp2ygm4302yaJS7b9KyPMnW+WdvvQ7h+Z6Ufy0SMVRA
Vjt5Tn6Ae32ifgGbbDGql4ZuR5NRjkcMldFqJF8foDY/ehiWOO1LVX7pzD4NRoxt6eimpOnA7sf0
bbmtFlYdgt3KW/IZFF6ZIvIVZ8II/k5E/Tt3ePxNfotQocs0nj8nzElgQuqaU9SKDYH3q4YF7A==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-f4a0fbb8-7d7d-74d9-5c9b-64f332e73ac9?restype=container

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
x-ms-request-id: 99af3d28-c9dd-4d6d-8e41-d51a8b626f51
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-789beeb3-bca7-aa63-a967-ed6b7a56d204?restype=container

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
etag: "0x22D96EAA9D7BEC0"
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 880fb49d-591d-4bdc-8072-a7d047991175
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-789beeb3-bca7-aa63-a967-ed6b7a56d204/test-blob-13355058-8e92-e8a5-2eaa-f7c8c5f32a0e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
S7VcyTYmDCY/f8UNM4th96j9Q73rjESyB75vs7ifZicKYX29NZxNjOF1OSj2VnYeBfXCfBIVGb5x
qsF3t1htoBidAtIOpMIMr7bbdlMbu7BIUa7D3OkV9Ei+S4va1tWJB5kQWFOjD2Ezts1bOqNrVe4R
L2aqqsMuiA2JT1g2MtnhUW65C2JdpEFNjyUcubqkU/acyaZv313V4dBFGsAI/ITzeug0sUmLs4sk
XBqeEc5T5PthmmgzcXIR5CqSF4mARJOgKT/RcKKtERUaSoJCNs8B8jXFpmIbvwh2I8we+ZwBpBiH
/eiPgXRYtIhTGCfvzq1akSRUu50whGk3W0zWjhd4GKZquznncXDAbPLZyKfghlUfxGh4reh6Vnh/
WCYogiZw2wCBhRN0cx+0lE6rV7zCVtT2t8mvAGu98GTAaBlJl+nLaOymXwFCqlFIwxiZzv+7vAJR
MstcwduUw5WuswoFavxk3+7QG/bTtAx4ZjxSIyFlBKsX+GUeb6cREpxslPdGQ1kcNO4R66EMfn2/
41qeQZ9zSa5f7nKXRnBGvwhZZiAUMiPjNu4yUxkKC3nnXotNctD8+EpI5lTmhe5+yiyYshhdqrA2
ugqxQfWVVeP5r+fk+Uw4XW3VzEzO/LEAtInscVhhirTaFrfFS7dVs5Fx7dUGmdDgYFWqiN5kZ75Z
sI1sqOOKmCQzCeOUchG1fxi6XQ/b+Rq4DBEDtgHVda75bJsq6Qqu5lWw0o/tS+5D9AjFqgqufbZy
s5vSh+EjXpQ0mgV2i5YNDHe6KieKy8Eiv8H5D8ukS+/ktzZv3F5zjXT7uLDozWlyuJ6S9FKP6Oja
r8cgKU7IkE8WktNgnjAYRp2yjhIQOvFYh1ctEVecVM9NlSyXU2QlMyhh0juVERlteq213VnVyXXV
yKH3mn74eT0EEgkDgfM4jFvqrme2wnU9v5ep5nd2eMu3wYvCLpipaVj+kf8Qavi5fFD96hsNHwUs
udvnTpPFjpk+S8Bodl7DQUUPuDF2LVWe8GomeI6wqqGFlnW9whrFOAJl0R44UAbyOqnV/mfUtYuF
SF4onhULjqEe4+DoBn8rSX8uEFs2Zp9jND7l2qs6seDpN3m7nJnsWkN9GW0mCTQpqbTnpqQvTuK/
xWrXJrP15DL//s4Fb63mQbYYuEwxPSoJuzH3Uwo7uuiX/NcuFTOQiDU7JgpmJDkHAGTtF5aVjYg/
zmuB/pEnw0TlbnPWtyyDhzAX9hYgo5f371KmTaJSAW5O70bIDoqjFGPGgLXFMUk4apBlfpdxHyrT
iQ4/gXWhkmwFh8jlunimc+GzWSPhMb4JbeIS7YPW3dAc9IR7ZJPtJe1JwKqAU7AXvwq1vsUH8g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C97B072EE27D60"
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
content-md5: nshjZSCLmwIJsUGkNthO/g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c350ec0a-d0f2-4e04-b3a5-523e16eb9b16
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-789beeb3-bca7-aa63-a967-ed6b7a56d204/test-blob-13355058-8e92-e8a5-2eaa-f7c8c5f32a0e

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:47:49 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:49 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1C97B072EE27D60"
content-md5: nshjZSCLmwIJsUGkNthO/g==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c4a1b469-dd5d-428f-97ca-b95144c8bb93
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: nshjZSCLmwIJsUGkNthO/g==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
S7VcyTYmDCY/f8UNM4th96j9Q73rjESyB75vs7ifZicKYX29NZxNjOF1OSj2VnYeBfXCfBIVGb5x
qsF3t1htoBidAtIOpMIMr7bbdlMbu7BIUa7D3OkV9Ei+S4va1tWJB5kQWFOjD2Ezts1bOqNrVe4R
L2aqqsMuiA2JT1g2MtnhUW65C2JdpEFNjyUcubqkU/acyaZv313V4dBFGsAI/ITzeug0sUmLs4sk
XBqeEc5T5PthmmgzcXIR5CqSF4mARJOgKT/RcKKtERUaSoJCNs8B8jXFpmIbvwh2I8we+ZwBpBiH
/eiPgXRYtIhTGCfvzq1akSRUu50whGk3W0zWjhd4GKZquznncXDAbPLZyKfghlUfxGh4reh6Vnh/
WCYogiZw2wCBhRN0cx+0lE6rV7zCVtT2t8mvAGu98GTAaBlJl+nLaOymXwFCqlFIwxiZzv+7vAJR
MstcwduUw5WuswoFavxk3+7QG/bTtAx4ZjxSIyFlBKsX+GUeb6cREpxslPdGQ1kcNO4R66EMfn2/
41qeQZ9zSa5f7nKXRnBGvwhZZiAUMiPjNu4yUxkKC3nnXotNctD8+EpI5lTmhe5+yiyYshhdqrA2
ugqxQfWVVeP5r+fk+Uw4XW3VzEzO/LEAtInscVhhirTaFrfFS7dVs5Fx7dUGmdDgYFWqiN5kZ75Z
sI1sqOOKmCQzCeOUchG1fxi6XQ/b+Rq4DBEDtgHVda75bJsq6Qqu5lWw0o/tS+5D9AjFqgqufbZy
s5vSh+EjXpQ0mgV2i5YNDHe6KieKy8Eiv8H5D8ukS+/ktzZv3F5zjXT7uLDozWlyuJ6S9FKP6Oja
r8cgKU7IkE8WktNgnjAYRp2yjhIQOvFYh1ctEVecVM9NlSyXU2QlMyhh0juVERlteq213VnVyXXV
yKH3mn74eT0EEgkDgfM4jFvqrme2wnU9v5ep5nd2eMu3wYvCLpipaVj+kf8Qavi5fFD96hsNHwUs
udvnTpPFjpk+S8Bodl7DQUUPuDF2LVWe8GomeI6wqqGFlnW9whrFOAJl0R44UAbyOqnV/mfUtYuF
SF4onhULjqEe4+DoBn8rSX8uEFs2Zp9jND7l2qs6seDpN3m7nJnsWkN9GW0mCTQpqbTnpqQvTuK/
xWrXJrP15DL//s4Fb63mQbYYuEwxPSoJuzH3Uwo7uuiX/NcuFTOQiDU7JgpmJDkHAGTtF5aVjYg/
zmuB/pEnw0TlbnPWtyyDhzAX9hYgo5f371KmTaJSAW5O70bIDoqjFGPGgLXFMUk4apBlfpdxHyrT
iQ4/gXWhkmwFh8jlunimc+GzWSPhMb4JbeIS7YPW3dAc9IR7ZJPtJe1JwKqAU7AXvwq1vsUH8g==
```

## Interaction 7: DELETE /devstoreaccount1/test-container-789beeb3-bca7-aa63-a967-ed6b7a56d204?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: e6a9980c-b39c-4329-962a-d4e042257d2b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-3534c54e-7198-8813-1a32-fb2d79201e0a?restype=container

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
etag: "0x1D1265E950962D0"
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5ccff235-d6b0-43a9-9556-f782733b5b33
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-3534c54e-7198-8813-1a32-fb2d79201e0a/test-blob-3fceb410-e245-9761-1439-8a08cd3056be

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
FQIsKy5/WpZIYJEAiYrqJJX7Z/mR0lrnPK35YJN3bg6M7bPDxv7fz2ud7DffE/+PSNaYfrkkeUKo
Re6BhvoD0PKDc5vWJl2WG5iN8+UiByiuaRe83/BVZ3NwG4AQXkhxmhxFXJ9juSF5AWIhl4VdhT7G
0x3iRvEBLgwnZgvchr1PHFjJ3auISrD1Q92OM9DuE5VCSoorjlMrRC6TO1IWnHul0XotlKeSPYht
7QMTcvo8OVJ1mTsyJI4Enpl99Q9d36Zh6WFVwX7usA0CvqFQF9EzVgEAoQI/cq3rKPYOFUd5Dw1c
sYmY5njUh+kuMGXttIbISZ8NXT2kIXa0apmI35rFiK6T9GVHm2+JKxkYEUJI/nNvRcuobLLQuJAT
5HzfS6dPaae3WcAggK4whDEkixAzbGslGZnOHRz7wzzVM7fyqeBxyaebkKSzTsQdeOiBqyx/4HgR
ujENgEyKu5aESk33PdpQssJpl9vHccrUsaU0ehcPVlM+4e+uZEhbENUNLwN3JjoNMPlpFkicSUhn
OM+mVkB/dPT5uFzqoU55DYYFuULGXIpqJkoepUAKopenRyt5tLqUjroPfm7eI46q8AjBlpAFoNtE
PC/2YM6z7xbEQ1ojAFnMcCqIt94cjAO7c7U3SAsHoaZPNXiKni7rW49YGd80h/Cv9SVlfen9J7As
O+wZfKYKvaG008rgQdL8nFtPxHIjh+zFiFPloiS9Ug3IXmNB0t/pTVw+gLMlzrNTaOCNrmM9CLQA
VPNSJRt99oG9GOJvu8p8ZncV5Qc4n7mfkTlDL6OqilavQH3rlidBwYkxZ7XQ5KwWEEjrKCKsx7Q5
s5PhOcbdE46MwHtMkNBP0yR9BjcEz62NLR9bvmE0AnjJsuKTYIfCVFQmRCQxyoB3m1T9L8F8NeTm
UwungVQtV74Cg97tu3Odu7Lj3YqJW2Oe4yIMN9O3THz+rQx7GtL/+exlL0ahiuDhYHMOmFhZXPeo
CJ4yICDrSjZh7g5mIaDg5OOeIywc/VlCK9dfqLMkpFAU0xE0zdnMeuQQQJvRez7TLrR0uznLjAtE
7/RJi6GDPEm9UU6OrBcJ0ahIC7y9cLCYi3r+r+kXSUYG793lgu9CjQNRFCnwRIGda+mQgoBPh35E
sf8mhIxgpQcHiL05JE+5BX65a1yGp0f5YUT/hsbGtmdeoNHvGwh28W4h6bzEY0ea13wBlRwivQm4
LSJIYR9AQdFV2oN9yup1QnrtZb6LNP39ZK9KxCFLPOPHNu3mLo9P4Kfqb4jDHQ2SjFOiNVdLLfkk
Svxw9n2wCp6ftZP8jxTqnoQWoMR0OUehtzjNqAeLfAn0weOT3+kqOmXqI2d5lvw/uJbTNYw0rw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2707076E180D1C0"
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
content-md5: 8FtB2Qk10QbzLbVJFOZ8xA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af56c21d-1cef-4043-884b-81087c135476
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-3534c54e-7198-8813-1a32-fb2d79201e0a/test-blob-3fceb410-e245-9761-1439-8a08cd3056be

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:47:49 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:49 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x2707076E180D1C0"
content-md5: 8FtB2Qk10QbzLbVJFOZ8xA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9ab43dff-2b07-445b-85b8-b9fc01183726
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 8FtB2Qk10QbzLbVJFOZ8xA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
FQIsKy5/WpZIYJEAiYrqJJX7Z/mR0lrnPK35YJN3bg6M7bPDxv7fz2ud7DffE/+PSNaYfrkkeUKo
Re6BhvoD0PKDc5vWJl2WG5iN8+UiByiuaRe83/BVZ3NwG4AQXkhxmhxFXJ9juSF5AWIhl4VdhT7G
0x3iRvEBLgwnZgvchr1PHFjJ3auISrD1Q92OM9DuE5VCSoorjlMrRC6TO1IWnHul0XotlKeSPYht
7QMTcvo8OVJ1mTsyJI4Enpl99Q9d36Zh6WFVwX7usA0CvqFQF9EzVgEAoQI/cq3rKPYOFUd5Dw1c
sYmY5njUh+kuMGXttIbISZ8NXT2kIXa0apmI35rFiK6T9GVHm2+JKxkYEUJI/nNvRcuobLLQuJAT
5HzfS6dPaae3WcAggK4whDEkixAzbGslGZnOHRz7wzzVM7fyqeBxyaebkKSzTsQdeOiBqyx/4HgR
ujENgEyKu5aESk33PdpQssJpl9vHccrUsaU0ehcPVlM+4e+uZEhbENUNLwN3JjoNMPlpFkicSUhn
OM+mVkB/dPT5uFzqoU55DYYFuULGXIpqJkoepUAKopenRyt5tLqUjroPfm7eI46q8AjBlpAFoNtE
PC/2YM6z7xbEQ1ojAFnMcCqIt94cjAO7c7U3SAsHoaZPNXiKni7rW49YGd80h/Cv9SVlfen9J7As
O+wZfKYKvaG008rgQdL8nFtPxHIjh+zFiFPloiS9Ug3IXmNB0t/pTVw+gLMlzrNTaOCNrmM9CLQA
VPNSJRt99oG9GOJvu8p8ZncV5Qc4n7mfkTlDL6OqilavQH3rlidBwYkxZ7XQ5KwWEEjrKCKsx7Q5
s5PhOcbdE46MwHtMkNBP0yR9BjcEz62NLR9bvmE0AnjJsuKTYIfCVFQmRCQxyoB3m1T9L8F8NeTm
UwungVQtV74Cg97tu3Odu7Lj3YqJW2Oe4yIMN9O3THz+rQx7GtL/+exlL0ahiuDhYHMOmFhZXPeo
CJ4yICDrSjZh7g5mIaDg5OOeIywc/VlCK9dfqLMkpFAU0xE0zdnMeuQQQJvRez7TLrR0uznLjAtE
7/RJi6GDPEm9UU6OrBcJ0ahIC7y9cLCYi3r+r+kXSUYG793lgu9CjQNRFCnwRIGda+mQgoBPh35E
sf8mhIxgpQcHiL05JE+5BX65a1yGp0f5YUT/hsbGtmdeoNHvGwh28W4h6bzEY0ea13wBlRwivQm4
LSJIYR9AQdFV2oN9yup1QnrtZb6LNP39ZK9KxCFLPOPHNu3mLo9P4Kfqb4jDHQ2SjFOiNVdLLfkk
Svxw9n2wCp6ftZP8jxTqnoQWoMR0OUehtzjNqAeLfAn0weOT3+kqOmXqI2d5lvw/uJbTNYw0rw==
```

## Interaction 11: DELETE /devstoreaccount1/test-container-3534c54e-7198-8813-1a32-fb2d79201e0a?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
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
x-ms-request-id: 9b26b913-4203-448e-beb6-a432916e9895
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-5f66eb9b-168a-28e0-203b-8ef070b8477c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E935AE0D305660"
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e388586e-ba50-4e3d-8880-2c11717b587f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-5f66eb9b-168a-28e0-203b-8ef070b8477c/test-blob-5481032a-a100-16b1-da82-0e7d27063601

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
vxHT3xCq5VcEUg8u7o4uDmHXN0km1SX606UfCVRwJ1vxDki8XXeu8QYOWzcGsTmSDH+OmID9Vers
2AtritsDkyu0PN9FcrHqKUZDF3nt9CJrjP3U4Y7a9Lle0IRsQmYqC8cLUnVaTJrNpG46uj1w/uTp
//7eL7Kd2Ugm56ItfubgGQyy4aGsEUBjBjwgoDp77dGfgkNoS9wUbnksM2T3oCaHWaAxvRxCPO29
eyh1fDgOq/nQjfujeM0wnXMogN7ca2UWmEeZSjC0XUZVqtCznvFAHYhqJxMr5OHTAB+pGrwP4RDD
X+TxdWDJGzC0Tc38ff+B6GJWcURR67RmxUkQC0KKRsnA8D8NT6gnoQvjdpYT1oMgJzJZuXDMcXMv
i68WuBDtKgcEPIy/dJm5Ls84bnUeU+/G8OMQMI1Y9H7L3sP4EOn69kyPDpr2YbOZn4qgkwL+ETjA
UMgs3Pl5q0gN85XVwR7mPngojkRUz48wd5ADuGF8zM2LN78hzhlSFWJR6G0dxN5rulSK1YLza4A4
/GVodvPnkSbISYlexXBf1nniA+YhErOyl/4M8fZKmMs+6NGz6Z5ualdGVXpUDfTkK/8IEGiZF+qy
tt/12p8vfbC9H92eq+zac5iP27w4XYoJJ8b3QodipNHmATO/eY+3FtfKlu0XRn8TLZ3QCjsteVhV
7LPZODsoWnoMt6m4G/kI2MTlbsad8eFG4xTqkpqVuYjaao3c3d2boTtyC47VWhKjyDF3RwuSuPrS
klQnPsjfdv4h3bFsK/rmScyKKuVTcIkCRsppHXF8SLKSCkuJdGNzkpSPtHxgN5w2kP0/B40UfiHL
JPf+dlmNpZX/2SGvXdVpF5hRw7wNoQ8uMo1zPUEkfospvU9rdRw7Ag7nYV16hzIo1vD1w7tlvoLn
0EPLGWdU2luVhZ+G/aJ7FcGtJUCys6tbS2dQL7rQxP/MhKTYcOimkoYC5AGSodhNea75t5hCNRyX
cM4AA6ugxcCguXj9o6XYBpO6sM6pyKmOA7UM1g1nik6HQP8Zpo/bYR9B8udfUNYIILAFh4VO7agl
cgD1lO6zOS8pdWKlv2AD306uaNbBLrLfA7ZcYgLJOVJX8zSP5c0xjbm4NdpzYmFPAag2n4XRZENN
FpA4VtYtYDwPTsssdPmBfdscCPjXa6BUDWBZkpnNhY/wQc88+Tfii9WeZBSWI42vtSKqtFtKdqrv
40l2082iQcg7OzMpRYOjOn0jOAeMvunTqt12I9A0psslTBXua7cI/CJMWudahXCeBnrdJz2jYyRf
oyjvLB73B5VnBPhutc7GGjzkP2QBeCVt1x1WVn6NgunwjsiPGNAEVFJS8oB3MFCrFwwBviPAXQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21D68CE0D0E9120"
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
content-md5: GyKUGMHxyTuutG9CdXo55Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8954051d-8c4a-45ed-aaab-8fe9adfaa026
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-5f66eb9b-168a-28e0-203b-8ef070b8477c/test-blob-5481032a-a100-16b1-da82-0e7d27063601

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x21D68CE0D0E9120"
content-md5: GyKUGMHxyTuutG9CdXo55Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c1b4afac-eec6-4f66-bda7-50e6e73885be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:49 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:49 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-5f66eb9b-168a-28e0-203b-8ef070b8477c/test-blob-5481032a-a100-16b1-da82-0e7d27063601

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x21D68CE0D0E9120"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:49 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x21D68CE0D0E9120"
content-md5: GyKUGMHxyTuutG9CdXo55Q==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f46e8bc-c324-46a6-8577-81200f4d506c
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: GyKUGMHxyTuutG9CdXo55Q==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
vxHT3xCq5VcEUg8u7o4uDmHXN0km1SX606UfCVRwJ1vxDki8XXeu8QYOWzcGsTmSDH+OmID9Vers
2AtritsDkyu0PN9FcrHqKUZDF3nt9CJrjP3U4Y7a9Lle0IRsQmYqC8cLUnVaTJrNpG46uj1w/uTp
//7eL7Kd2Ugm56ItfubgGQyy4aGsEUBjBjwgoDp77dGfgkNoS9wUbnksM2T3oCaHWaAxvRxCPO29
eyh1fDgOq/nQjfujeM0wnXMogN7ca2UWmEeZSjC0XUZVqtCznvFAHYhqJxMr5OHTAB+pGrwP4RDD
X+TxdWDJGzC0Tc38ff+B6GJWcURR67RmxUkQC0KKRsnA8D8NT6gnoQvjdpYT1oMgJzJZuXDMcXMv
i68WuBDtKgcEPIy/dJm5Ls84bnUeU+/G8OMQMI1Y9H7L3sP4EOn69kyPDpr2YbOZn4qgkwL+ETjA
UMgs3Pl5q0gN85XVwR7mPngojkRUz48wd5ADuGF8zM2LN78hzhlSFWJR6G0dxN5rulSK1YLza4A4
/GVodvPnkSbISYlexXBf1nniA+YhErOyl/4M8fZKmMs+6NGz6Z5ualdGVXpUDfTkK/8IEGiZF+qy
tt/12p8vfbC9H92eq+zac5iP27w4XYoJJ8b3QodipNHmATO/eY+3FtfKlu0XRn8TLZ3QCjsteVhV
7LPZODsoWnoMt6m4G/kI2MTlbsad8eFG4xTqkpqVuYjaao3c3d2boTtyC47VWhKjyDF3RwuSuPrS
klQnPsjfdv4h3bFsK/rmScyKKuVTcIkCRsppHXF8SLKSCkuJdGNzkpSPtHxgN5w2kP0/B40UfiHL
JPf+dlmNpZX/2SGvXdVpF5hRw7wNoQ8uMo1zPUEkfospvU9rdRw7Ag7nYV16hzIo1vD1w7tlvoLn
0EPLGWdU2luVhZ+G/aJ7FcGtJUCys6tbS2dQL7rQxP/MhKTYcOimkoYC5AGSodhNea75t5hCNRyX
cM4AA6ugxcCguXj9o6XYBpO6sM6pyKmOA7UM1g1nik6HQP8Zpo/bYR9B8udfUNYIILAFh4VO7agl
cgD1lO6zOS8pdWKlv2AD306uaNbBLrLfA7ZcYgLJOVJX8zSP5c0xjbm4NdpzYmFPAag2n4XRZENN
FpA4VtYtYDwPTsssdPmBfdscCPjXa6BUDWBZkpnNhY/wQc88+Tfii9WeZBSWI42vtSKqtFtKdqrv
40l2082iQcg7OzMpRYOjOn0jOAeMvunTqt12I9A0psslTBXua7cI/CJMWudahXCeBnrdJz2jYyRf
oyjvLB73B5VnBPhutc7GGjzkP2QBeCVt1x1WVn6NgunwjsiPGNAEVFJS8oB3MFCrFwwBviPAXQ==
```

## Interaction 16: DELETE /devstoreaccount1/test-container-5f66eb9b-168a-28e0-203b-8ef070b8477c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
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
x-ms-request-id: 4b760ce8-f77b-450f-82f6-567240a5c087
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-11ebe06c-86af-f5a4-a7cc-ab3e718cc3c5?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20EEB2EE08BA020"
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dd95327b-bff1-46a9-9916-685075d9e962
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-11ebe06c-86af-f5a4-a7cc-ab3e718cc3c5/test-blob-e2b81767-ca6f-bd91-1ac7-95fb9b4921e8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
MDCdi5d7A7OhOxf+aLIppOALld04rq6jXoutNPVypU2+SU32aKpq8N03cHRupoz0owZeZvfljYGC
+i0Lzs+9L5bKPx9lMjw1oKQAAD06NLj/uZDvEz9W2LvMdG59XyEOekHdpGdtj3HKKMVS5Y1DR8V1
DBU+zRtWc2ZkmL3NuEGD8ob8XJBRkSofJet5A/MtiCypCFMMz6wmhzAACPaz/HCDz/IHR+s0JHrr
H6gw3XByNhCQJK/udyPZ1dVfUIkzayh69jQBJkFBdOTYILAD9qnAjdHmItjAlVjPLXEW1dPxt7N/
tec8cRDOT7DLFVZy1d8rn8K3TUhQuWDbMfjPK58Q52n8hEHChBzBF9Mo9X8CXFiS6jUROWlqL/uG
YD8X/yMQui3sdVGeaBum9TZ1KMTh2dWgPEBp/67/klRFPCPcqRewFztRFeYG9IIaakQy9QY3pIdq
d8Lip7p/7eP8WCv3yUsexBGJj8PumUi+T5RpzJ1ODZeccTJVzXCA0SgDCZxWIqH4FDD1rhXDfN16
JFcmFSBFrkqTW1gZyfehCL2b6o+sZy3zcbhtWF+C2fRU2qgYWrwHvVtRw8dJ3ko4VKVXJ5FNzr0q
MqRn2FbrEYJjxe5PiK4Bky00WqRmqpNtNAO5KrFjBgzr7ScXoOQEZbFE5hlb6cv3VpRkGXMZxIgR
+aRSMubQ/77iY5qG6fNIL/XyIcR5Eko4wdMd/+2Y0imfBqZAsjLLdOZaeYUwcGygG+l9JqPDl+dZ
GnASswDRSZFx5+NNCH3CJ6zeH5nEB1FnfOMDG6uG22++5pjCuMHliC/0v4mJUxNsu//25XdOlBIf
qzYczi7l6gtzjiHkAG7r+JZq0EfH3SnQl1+skPX3cFGFowyKyLoADtV9FcXxiLqQCu3g5MTLV80N
TDfOOVoWfB3QXl1iYS/cacFySshk3w6kG4YHF4yNuks/fXyDMdV6Z5mnISldLqi9BHoDWAwFqWwo
KR3UDmWRQ6QRIuSzWTfr9+MuvL7lR+3dShIRiWE+OdQPWwe3plg0Ft6FTAvECqpDF2Ep1uyuQuIw
9sRSgLlC0ukPo/4vNFCK+qbgYPrhGD9oznEAFWPnYRgkhrCU4ZUkQnoitGesE+MRnttGzuHoT92E
6rFHQryFKELlCq2g9hgQux6Av2TYu7qN7neHoZI2PDfSD/fk3P+9nIwkxgg2cKfDNRLDaI95rC72
uVNF/oevr851zecgLN4ewiPXs/SyV37PxGuActSoWWLJ7SKsd50FdRc6waPAogkzpaVsofk5RGLV
djkbLzz5zXSEVz68ckuF0j7deJbaDiJiTM0vPLdpkKnA1gFj6kbbQPMvPEvKdzNZ5s+7XMvM+g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2012115E27ACF40"
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
content-md5: ystzCwc9tDg22ez1d0SoeQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9750b9f0-2b25-475c-b45f-543510056a44
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-11ebe06c-86af-f5a4-a7cc-ab3e718cc3c5/test-blob-e2b81767-ca6f-bd91-1ac7-95fb9b4921e8

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:49 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x2012115E27ACF40"
content-md5: ystzCwc9tDg22ez1d0SoeQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5f85f676-ef9a-44b9-908f-2ac57d725e5f
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: ystzCwc9tDg22ez1d0SoeQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
MDCdi5d7A7OhOxf+aLIppOALld04rq6jXoutNPVypU2+SU32aKpq8N03cHRupoz0owZeZvfljYGC
+i0Lzs+9L5bKPx9lMjw1oKQAAD06NLj/uZDvEz9W2LvMdG59XyEOekHdpGdtj3HKKMVS5Y1DR8V1
DBU+zRtWc2ZkmL3NuEGD8ob8XJBRkSofJet5A/MtiCypCFMMz6wmhzAACPaz/HCDz/IHR+s0JHrr
H6gw3XByNhCQJK/udyPZ1dVfUIkzayh69jQBJkFBdOTYILAD9qnAjdHmItjAlVjPLXEW1dPxt7N/
tec8cRDOT7DLFVZy1d8rn8K3TUhQuWDbMfjPK58Q52n8hEHChBzBF9Mo9X8CXFiS6jUROWlqL/uG
YD8X/yMQui3sdVGeaBum9TZ1KMTh2dWgPEBp/67/klRFPCPcqRewFztRFeYG9IIaakQy9QY3pIdq
d8Lip7p/7eP8WCv3yUsexBGJj8PumUi+T5RpzJ1ODZeccTJVzXCA0SgDCZxWIqH4FDD1rhXDfN16
JFcmFSBFrkqTW1gZyfehCL2b6o+sZy3zcbhtWF+C2fRU2qgYWrwHvVtRw8dJ3ko4VKVXJ5FNzr0q
MqRn2FbrEYJjxe5PiK4Bky00WqRmqpNtNAO5KrFjBgzr7ScXoOQEZbFE5hlb6cv3VpRkGXMZxIgR
+aRSMubQ/77iY5qG6fNIL/XyIcR5Eko4wdMd/+2Y0imfBqZAsjLLdOZaeYUwcGygG+l9JqPDl+dZ
GnASswDRSZFx5+NNCH3CJ6zeH5nEB1FnfOMDG6uG22++5pjCuMHliC/0v4mJUxNsu//25XdOlBIf
qzYczi7l6gtzjiHkAG7r+JZq0EfH3SnQl1+skPX3cFGFowyKyLoADtV9FcXxiLqQCu3g5MTLV80N
TDfOOVoWfB3QXl1iYS/cacFySshk3w6kG4YHF4yNuks/fXyDMdV6Z5mnISldLqi9BHoDWAwFqWwo
KR3UDmWRQ6QRIuSzWTfr9+MuvL7lR+3dShIRiWE+OdQPWwe3plg0Ft6FTAvECqpDF2Ep1uyuQuIw
9sRSgLlC0ukPo/4vNFCK+qbgYPrhGD9oznEAFWPnYRgkhrCU4ZUkQnoitGesE+MRnttGzuHoT92E
6rFHQryFKELlCq2g9hgQux6Av2TYu7qN7neHoZI2PDfSD/fk3P+9nIwkxgg2cKfDNRLDaI95rC72
uVNF/oevr851zecgLN4ewiPXs/SyV37PxGuActSoWWLJ7SKsd50FdRc6waPAogkzpaVsofk5RGLV
djkbLzz5zXSEVz68ckuF0j7deJbaDiJiTM0vPLdpkKnA1gFj6kbbQPMvPEvKdzNZ5s+7XMvM+g==
```

## Interaction 20: DELETE /devstoreaccount1/test-container-11ebe06c-86af-f5a4-a7cc-ab3e718cc3c5?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
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
x-ms-request-id: c283c7c6-a717-4ff9-b44c-c7018c263811
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

