## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2114ab3f-5a09-98d3-bdc1-c992c77eeaa8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_File_StorageTransferOptions(null)
now: 2026-11-12T00:49:05.4280676+00:00

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
etag: "0x22DA258D1D1DFA0"
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 83ffd41f-6baa-4b95-87c2-8af9e68f3f6a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2114ab3f-5a09-98d3-bdc1-c992c77eeaa8/test-blob-4712db43-bcdf-15a6-37e4-691d5e9d4557

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
XZdUwZU4SpszwX8aJHur8RNfcJPjMf2CBf/pJfG2OiB8cTQwKSkSC5B2FB48i/C7OHcJ/iyydCua
0ruWTiWpfIZfnrJGe8fqTGUCbB3fRXkOLux6rTvzyf0JlVdte7xrzJeX3e09dLyvH7LGrwgNu4xC
iCA5L89Ka9S1PeZwfNGpl5+FR2iM0Lkvyo2JLRr1+9rLKvObMZ3ITHEYiDfWP6LhHRhpiHMjtrdn
CWVBwT66wEELpFLdDWUBvPr2dEiBWIrqqA8BjHNnp3Q7NCc4h4szXcj2y5pQAw+yZ8t5LUJv5bHa
VxguuTTNpP3dodk9yTVuwhZ/i4zwmaX/TiSo7XoxzE52XS9zBaOUKCedcmE2dZ2VCmor71ok6r1z
LmoPJLaCrNWKx2wF+71y62JlUiZDydmHE+MQBt3zUXNyANY5hANwGsaMq60xjw6tuAP3v5eXL2WQ
hxHScqb4l3b4k/vmOWZe9Dhfth0sVoPUY03Z/JLc29BxqP3ynqgglBQ3OPwTxn+dmMpeN3hHZDGO
/Q9YH5rjHLcqdJBpbFaQPyIJ9B6GwZzNO2PIfaRXKkTLY6CZx3V5UxtE6FHuMyxzzvhWPm8TCDxy
iuM3G58T00pMngm293esj6ECQdhK3gg3VK6sAevVuFtjJjySQjh7MBUGopUjvdeAqa/OEMZjJ6za
/8fwZ9JfduWtUtA6GkxohhDDRDxzFJbXK1c8BqeVAP6QuEJwi8lCpyuvdWsGRo5iZYm1n+NwZusx
GTx6InA+GFLRqWIJ9/tHgJwQxJ4q0OTI2qEe32AbIFFXP3GNyIS7cV0ZNZ0sWG6Obh9HX6JMBklX
sUjPIDjxtogRsreKurgXVFNBEJtHnIEzkHFB1MGuCzgnNRY87FElJ34VG6a2A7NmLwtPC/WuEBXG
nJDGsOLHYqZ+YoSh22cCG+kcMoDbfIy+2qS1X/9CeSUBdVDBX3ecTbj/N6AvxVSjTe8Mkd2U6x8D
CNY9EQOmPOlfoGUXQbxxgOTH20XrjhRPERIQNedHbIkxvVegXju1WPu20CXvjAwzmxH5zRDZF3nB
7QDwlgYCFzPb5YNk0SKoEoNKNL7vYIQG3JrVTp95WKXd3nA7xMH1tLjxE6eIzsnvULuNjuO60Y17
6rprLciUYY3ehvKxbU3BVYAG/k3dfQ3R5v7k7MnCIw3jv9oHiobwXLEZqkfXPeJtyzlitNM/nm2s
mUbKsHXEG2Plzq1zucv5FaKbxNPG+agbdiCQYG85oyFsW/A/Jqs8VY7k8W40+hJtaJ4wo9mZ5Z+d
rjpUM7v0qyuMBl7buu/2X25E4gg653sOI/fQCf9H03VQoXdx6CHT8EZDqPSzkq6uOkRqVAOXYw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26B791D19EF3700"
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
content-md5: sBig7dM76EGvq5fWQay5jQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3afae365-559f-45d8-8ea2-86d5aade4784
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-2114ab3f-5a09-98d3-bdc1-c992c77eeaa8/test-blob-4712db43-bcdf-15a6-37e4-691d5e9d4557

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
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:05 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x26B791D19EF3700"
content-md5: sBig7dM76EGvq5fWQay5jQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5a4294e1-21e2-4f6a-84a8-a76d01aab5b0
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: sBig7dM76EGvq5fWQay5jQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
XZdUwZU4SpszwX8aJHur8RNfcJPjMf2CBf/pJfG2OiB8cTQwKSkSC5B2FB48i/C7OHcJ/iyydCua
0ruWTiWpfIZfnrJGe8fqTGUCbB3fRXkOLux6rTvzyf0JlVdte7xrzJeX3e09dLyvH7LGrwgNu4xC
iCA5L89Ka9S1PeZwfNGpl5+FR2iM0Lkvyo2JLRr1+9rLKvObMZ3ITHEYiDfWP6LhHRhpiHMjtrdn
CWVBwT66wEELpFLdDWUBvPr2dEiBWIrqqA8BjHNnp3Q7NCc4h4szXcj2y5pQAw+yZ8t5LUJv5bHa
VxguuTTNpP3dodk9yTVuwhZ/i4zwmaX/TiSo7XoxzE52XS9zBaOUKCedcmE2dZ2VCmor71ok6r1z
LmoPJLaCrNWKx2wF+71y62JlUiZDydmHE+MQBt3zUXNyANY5hANwGsaMq60xjw6tuAP3v5eXL2WQ
hxHScqb4l3b4k/vmOWZe9Dhfth0sVoPUY03Z/JLc29BxqP3ynqgglBQ3OPwTxn+dmMpeN3hHZDGO
/Q9YH5rjHLcqdJBpbFaQPyIJ9B6GwZzNO2PIfaRXKkTLY6CZx3V5UxtE6FHuMyxzzvhWPm8TCDxy
iuM3G58T00pMngm293esj6ECQdhK3gg3VK6sAevVuFtjJjySQjh7MBUGopUjvdeAqa/OEMZjJ6za
/8fwZ9JfduWtUtA6GkxohhDDRDxzFJbXK1c8BqeVAP6QuEJwi8lCpyuvdWsGRo5iZYm1n+NwZusx
GTx6InA+GFLRqWIJ9/tHgJwQxJ4q0OTI2qEe32AbIFFXP3GNyIS7cV0ZNZ0sWG6Obh9HX6JMBklX
sUjPIDjxtogRsreKurgXVFNBEJtHnIEzkHFB1MGuCzgnNRY87FElJ34VG6a2A7NmLwtPC/WuEBXG
nJDGsOLHYqZ+YoSh22cCG+kcMoDbfIy+2qS1X/9CeSUBdVDBX3ecTbj/N6AvxVSjTe8Mkd2U6x8D
CNY9EQOmPOlfoGUXQbxxgOTH20XrjhRPERIQNedHbIkxvVegXju1WPu20CXvjAwzmxH5zRDZF3nB
7QDwlgYCFzPb5YNk0SKoEoNKNL7vYIQG3JrVTp95WKXd3nA7xMH1tLjxE6eIzsnvULuNjuO60Y17
6rprLciUYY3ehvKxbU3BVYAG/k3dfQ3R5v7k7MnCIw3jv9oHiobwXLEZqkfXPeJtyzlitNM/nm2s
mUbKsHXEG2Plzq1zucv5FaKbxNPG+agbdiCQYG85oyFsW/A/Jqs8VY7k8W40+hJtaJ4wo9mZ5Z+d
rjpUM7v0qyuMBl7buu/2X25E4gg653sOI/fQCf9H03VQoXdx6CHT8EZDqPSzkq6uOkRqVAOXYw==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-2114ab3f-5a09-98d3-bdc1-c992c77eeaa8/test-blob-4712db43-bcdf-15a6-37e4-691d5e9d4557

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
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x26B791D19EF3700"
content-md5: sBig7dM76EGvq5fWQay5jQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a87117ab-0194-44c9-9a9f-1854616db1e2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:05 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:05 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-2114ab3f-5a09-98d3-bdc1-c992c77eeaa8?restype=container

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
x-ms-request-id: fdec4046-2de0-497f-88e7-7672d263f61d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

