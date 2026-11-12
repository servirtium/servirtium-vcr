## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0d7eba8f-c94c-9573-9fb7-026432064032?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_Uncommited
now: 2026-11-12T00:44:58.7863493+00:00

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
etag: "0x237411271631FC0"
last-modified: Thu, 12 Nov 2026 00:44:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 37e61285-eade-4676-8c51-66ae2e1c37f5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0d7eba8f-c94c-9573-9fb7-026432064032/test-blob-abc0042e-0cab-59c5-f690-4b55150e1237?comp=block&blockid=dGVzdC1ibG9jay00NjBkMmNhMS04ZTNkLTI5MTYtZTRiYy0wMDg1ZmRiYWI5OGI%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
99crpMDfFDb/KjQNvu/VO/YBOuq1YPeD9CUXu34egJClym1b25xxT++Jq4HXuJoGuhBeE9Qngpbf
p7CbyFm44aqjaPOCel9aj+v7K7R2qzyKEABtwGy8fkjWfDPs1oeV0cnWM0+mg0CwA4PoK1fiaPx0
ELdYSyE95+qrrP4sbrlkZlrqoHfs44zAvLzo01Lw9BQ2d8XPPIaomExl+9dChJTKhMX998eFhy0q
mI5kVROXurjp9vbzlCnTQgcqh+i0fTgnHk+N8/xMsfCYpaT3Q0M5zUAfWI2e1vCbKbXAWgBEdRpV
PTfECse7nUQGW+6F2/7E8bmnlSWqiUhe8clGi1bwUy+JoQYMdMN5Y7pJl3oBFk23/GlGnOD1q7Pu
ZRj9dRHuFge/+zn4t3z2LjFqYfHNXNt8j4/tqrdPlPZTHQ+rfO6pW4FzQhoTv0TtT26viknBIQk9
gOaCAGxQb2dDpZptSrJCwQZwWRrAaM9LAFpJoAmskfsFbvsHJ1oVI9Ky0BqqfwS8bMhDUcfufBgW
NgARB89elhOeZ9y2O5qsWjZHDpi1oYBVjTNBaUAzF/Hi8PBZAxwCVDkGCxgoBTEtlvaRp26AYZWA
vHmcHCzTalDr00qqUlcaRLler5VnLYcCE9JKom+DYo9a2EaiZjcMM6DIPTHmg0SfdmK1IrH/GY/x
mQlaicjgZ3G6UHkQeN2BUXv1nu9WG5COqysNzkDeWr+3sM0usqrY6NW/LDPKjv6FM9A2Cnqfm314
y96c05kx3PW5WMcQUp/RHLYal+9dxBwth5pwqE9FFxVPtefLPBU7jlA9EDU2deAxZO3DhASOGwfB
bkv/wDSlc0GywJ24BeCh3wifH7Pm9hK5PkNigpIQwZrfCs3JPM0cmJz0g7RDeV4MIaX77vxT23c4
RYHwQ/Guof4C2PsT16I6g4cX8XNedcXlVWDtFdOejC5VkfdLK1SrRuG2QKBi+UoDwGt0O+kE2s+8
C+2QwIwrZEvNvUar71cya6qRpzQlglsW6lRnKVFEUbcnjyBnG4VVi9xVlTsEV9ETQc8/cjKal4iR
edY3wzv6iGyOg183y1AkPBxYz+wgEpKDU+eBBd6EjfiX1aGvHcegWw3OddNx3HZ/GjYWQceccWdE
s3BTeIKOCvZnn/avdR5Ut3TfUp2+EnZxAuunbUsw+2M6a2pXTeKLP2rdCj2Az6QYwolTvB/JhaH5
4naW552rNqOSdAq0/GqRUxIy4Qg58TJHj6rB3T5EcOXIXmpr9FjNMtOa7VqZY8UfwWkNlqSZwPFD
T1jy6VlkTgQl657/JV+5Za80ngPXrSvkohvVN9pBL555J6UA2kh6NZ9WdHgnH5wJUzD1ZCHtbA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b0b5308b-573a-4ed8-82f7-35ba4537c4fc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:58 GMT
x-ms-content-crc64: bAfS2qvDsJQ=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-0d7eba8f-c94c-9573-9fb7-026432064032?restype=container&comp=list&include=Uncommittedblobs

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
x-ms-request-id: c1f7e74c-674b-49b6-9abe-79906a354a7e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:58 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-0d7eba8f-c94c-9573-9fb7-026432064032"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-abc0042e-0cab-59c5-f690-4b55150e1237</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:58 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:58 GMT</Last-Modified><Etag>0x21CDC6FBB825AA0</Etag><Content-Length>0</Content-Length><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-0d7eba8f-c94c-9573-9fb7-026432064032?restype=container

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
x-ms-request-id: d140adc2-5117-441d-b944-31b1188a5913
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

