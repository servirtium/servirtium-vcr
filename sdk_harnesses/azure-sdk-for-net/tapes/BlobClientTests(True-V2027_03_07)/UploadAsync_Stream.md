## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e2f4a7db-fe8e-76ad-9bd6-045559548d46?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_Stream
now: 2026-11-12T00:49:16.0719609+00:00

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
etag: "0x265EEDFAE6D6BA0"
last-modified: Thu, 12 Nov 2026 00:49:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7ab4b980-11dd-409e-a24d-916787d825a3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e2f4a7db-fe8e-76ad-9bd6-045559548d46/test-blob-0053e953-e3b2-0ad3-adc7-993314efa59a

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
g/uk1U9blj6g9OoQQeNkEE91IG/kkqb40+k1x2R5YaswadJesLj2+FIVYL75w8nJYojkn882tvBV
qwFmJc/ZJpI+39cRBmCXficczjLn/xAga2TclcLb+rPhCQS3kNOCPDkruuPxuFsnTCCoGee9bazw
Rblq/ZHQYuQkL/1c4O5UmpL5vEUsLrIItEihM+HLJJtYxkoZFz6nW1f+zYley2wyU35VxLFmxBcH
YkhILi4DWQthAxqjOoJTUWDtLWEpqujcbuBidl/q8QEzErX1Xywo+3R+/chSjxj8AXNQeZa23bdg
bMBOoeKsdhEYcCjNXfIzxDLtqqwgit/HZnTrmnhqfTT9lfJs2lmR0oe2OR7wLqOBHLRkyTILP+Lg
hztuwNuZrfPzz8j/xurYW9glalDA1zfQan3DBrQB8lYQjFIdIhGrHYwr/F7bgVXKi21a5tWRH7AE
nVZe1ac/8t1x7zqXuznGeU3EldvY9ego+XpHpwyBfm2iGYW7TUfk7AmBaZIbMtAzk2yIzYrVK6ht
Ntss+ErR8HDN9aGzCiwF36jRV4tVDMeqExOg+bHize3dThdsuPS+r3ghTTwugIg/gu3hA9QcFykT
geQ3Mfe/6iez1rwVmCezEqcTM76KfJKLYHbDAMkZwDbtWDYPh36BYmMVeqnLKenGLvEtCeNqiQVS
q9CB/OpdmhWGJ0Dwo4ooktFbdQHpvzeM/NLY67dSg88xvdyu/2V5t9+URQGp1YpnBHcSDhMEaeyZ
9P8Xha9eNKRxv+atepJs4r0hVHo14yZIcOdAQHW7LVTvFApmYTEwNhBdOBajuYrkpStV4hRxYxHY
zxXIHfQvtZKRvmWHBYGM8R5p16sQpLdcW5pJZUpAfrD5jZIcaBgcLoKEEvskXaCpyfH1CIxmyCtd
a8Ja5VBHUUC0jnjvb4gGTakoi5K7OP76n5tZSnUkksVnv/1WwUkxPcC7b88nulpo77rjPTyYoTLE
YEW07QbKkPuyiLCLsIxf9k7RAMgu0uVA8Vu7QVWIzh3KkWEDfU+68d/UdTKq3D8ug0bux6FqlY5g
c/yrDk6lKbmSwR4qXHn/Fw/pWlyylhQcjb0OmgZ7YPzTowlSD+KQLkt4FxogAybM7rCSgDoxrd3n
joGQlo6zFmEiV7lwrAgsWCwQOX76+4mXQqxW6d/BofUraoBh/5e9xQC5/qttXEGoZSgOIHRf7ZL3
+VTiXC2CYLXEREKHy1iVU3R9Qf3dKeVqrYS2s4GAzHztaQVC22jTNp72qBf/IJnPeM3/4ayVGc9u
d6+oy600Q3jFmmFSUngLqgpe54DOa43q5zq0gevQV08102O5K2vxwWWfOYY4fCZU9DeiNjJPoA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x250A3DE1127B160"
last-modified: Thu, 12 Nov 2026 00:49:16 GMT
content-md5: 78AOVyVebjzG3y0rvcwZ7Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b751d4ef-a9ac-462f-9840-aae9ce231738
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-e2f4a7db-fe8e-76ad-9bd6-045559548d46?restype=container&comp=list

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
x-ms-request-id: a7d090c6-7064-484f-a2b6-79d4fe3f37d5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:16 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-e2f4a7db-fe8e-76ad-9bd6-045559548d46"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-0053e953-e3b2-0ad3-adc7-993314efa59a</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:49:16 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:49:16 GMT</Last-Modified><Etag>0x250A3DE1127B160</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>78AOVyVebjzG3y0rvcwZ7Q==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:49:16 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: GET /devstoreaccount1/test-container-e2f4a7db-fe8e-76ad-9bd6-045559548d46/test-blob-0053e953-e3b2-0ad3-adc7-993314efa59a

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:49:16 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:16 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x250A3DE1127B160"
content-md5: 78AOVyVebjzG3y0rvcwZ7Q==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 40e87520-303d-49e3-9662-8dce0d1a574b
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:16 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 78AOVyVebjzG3y0rvcwZ7Q==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
g/uk1U9blj6g9OoQQeNkEE91IG/kkqb40+k1x2R5YaswadJesLj2+FIVYL75w8nJYojkn882tvBV
qwFmJc/ZJpI+39cRBmCXficczjLn/xAga2TclcLb+rPhCQS3kNOCPDkruuPxuFsnTCCoGee9bazw
Rblq/ZHQYuQkL/1c4O5UmpL5vEUsLrIItEihM+HLJJtYxkoZFz6nW1f+zYley2wyU35VxLFmxBcH
YkhILi4DWQthAxqjOoJTUWDtLWEpqujcbuBidl/q8QEzErX1Xywo+3R+/chSjxj8AXNQeZa23bdg
bMBOoeKsdhEYcCjNXfIzxDLtqqwgit/HZnTrmnhqfTT9lfJs2lmR0oe2OR7wLqOBHLRkyTILP+Lg
hztuwNuZrfPzz8j/xurYW9glalDA1zfQan3DBrQB8lYQjFIdIhGrHYwr/F7bgVXKi21a5tWRH7AE
nVZe1ac/8t1x7zqXuznGeU3EldvY9ego+XpHpwyBfm2iGYW7TUfk7AmBaZIbMtAzk2yIzYrVK6ht
Ntss+ErR8HDN9aGzCiwF36jRV4tVDMeqExOg+bHize3dThdsuPS+r3ghTTwugIg/gu3hA9QcFykT
geQ3Mfe/6iez1rwVmCezEqcTM76KfJKLYHbDAMkZwDbtWDYPh36BYmMVeqnLKenGLvEtCeNqiQVS
q9CB/OpdmhWGJ0Dwo4ooktFbdQHpvzeM/NLY67dSg88xvdyu/2V5t9+URQGp1YpnBHcSDhMEaeyZ
9P8Xha9eNKRxv+atepJs4r0hVHo14yZIcOdAQHW7LVTvFApmYTEwNhBdOBajuYrkpStV4hRxYxHY
zxXIHfQvtZKRvmWHBYGM8R5p16sQpLdcW5pJZUpAfrD5jZIcaBgcLoKEEvskXaCpyfH1CIxmyCtd
a8Ja5VBHUUC0jnjvb4gGTakoi5K7OP76n5tZSnUkksVnv/1WwUkxPcC7b88nulpo77rjPTyYoTLE
YEW07QbKkPuyiLCLsIxf9k7RAMgu0uVA8Vu7QVWIzh3KkWEDfU+68d/UdTKq3D8ug0bux6FqlY5g
c/yrDk6lKbmSwR4qXHn/Fw/pWlyylhQcjb0OmgZ7YPzTowlSD+KQLkt4FxogAybM7rCSgDoxrd3n
joGQlo6zFmEiV7lwrAgsWCwQOX76+4mXQqxW6d/BofUraoBh/5e9xQC5/qttXEGoZSgOIHRf7ZL3
+VTiXC2CYLXEREKHy1iVU3R9Qf3dKeVqrYS2s4GAzHztaQVC22jTNp72qBf/IJnPeM3/4ayVGc9u
d6+oy600Q3jFmmFSUngLqgpe54DOa43q5zq0gevQV08102O5K2vxwWWfOYY4fCZU9DeiNjJPoA==
```

## Interaction 4: DELETE /devstoreaccount1/test-container-e2f4a7db-fe8e-76ad-9bd6-045559548d46?restype=container

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
x-ms-request-id: a37b426a-ef98-4c09-bc13-27ee7a018ac2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

