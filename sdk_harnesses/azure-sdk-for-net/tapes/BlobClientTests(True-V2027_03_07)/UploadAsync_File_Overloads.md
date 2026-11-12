## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b31d4632-4bc3-da42-afa0-5f3eb3526c7f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_File_Overloads
now: 2026-11-12T00:49:14.3293906+00:00

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
etag: "0x1DE27BB72F97810"
last-modified: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5e22cd5-ef01-4964-91a8-e5a07e8e642a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b31d4632-4bc3-da42-afa0-5f3eb3526c7f/test-blob-e2353406-8987-488f-9e9d-895632f0acb3

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
xzBpQNWGi2MbXrBtjhXQ/OjHGV63p+WpttQUJsHrp7/0q3aC6SupgKnSxinYIbmJzY1uatZO/B9K
wIkAcWShMLbweeOeTRO9HZm15OG80JUbi1k0fT3ppq9XOCihqQ9EMJZy6KfW6n96sEw9mRc+jvD0
5eUKbLJ5B9M0RxXqHHSKcLRLSejuRKDZuszwqw2XGak4rcMpOcPj+ODUoqNqkJTYsyhj8kQIBaFF
MbLliVzGnC1rsW6xYDbwZ1EHGaL8bio4GPjkNCZkMKch4wgR/W+EDgV1/t4mJlLyc4vzAOz/SMKI
rXFj4WgHB4HHj3wt3mnigwuchm9LEfGm8cCbcTC7IptFiVD9ICydbvddX5bVxJQhEHzgY8FSPJt/
ve+na5ZQC2zh6FUZ5GLf/hh47rJa0C0semCz27/Z80y0fmM89gJhDFMp89w+BywZAGSp2k3pJOzC
evE2nTCtCPQIZWb/owgVF+JfMd1R7XI0mdpaMBj/y1p3eXsRKm8jfOvnNaLGGl1clMNrivMPcYx+
AQNWUtfcCZoLiCmMA+xyO7TxabfQbn98/ptVk0FnZwjukilrzSkTCywIupI00JDW+E4+HQfUrZOD
2VQ8hnZYpCAgnXDDBm6L3V6LyLPtRy4LfpryKEoBGeSV6PPU14S2rxVyFDIfE/Hgs0CoSeXflpIm
MAfbZXzVHoOLLR56tgba1RmeejL762upEnUKWdD/tVFhrqZ82kmZnPWuk+XSZf05zXPLQRtfKkWc
MlMHy8WzjHjNGQhfXfrQBd49TVeF1q140ItcM3Q1AYNh4Kj1kdAw+gdtBUz02nB5+zs9It3tFlym
j/s6V1gEmBeE/X1R2nMODFJQGNBhg/Ua4jg499+mdMlMTwLU9qOuaG00cNzzJyHHLxWKnf6LRAsF
H3Qgy6A33om0BYpwORavoa9jLBIYJ7sXcMjKG9fKwAv2ztYvjp3M/ZFTPiKWVvb/2/tPJxj47fe4
CVrYbcKy6UR/emo/fxISly+BxeiZgBnRy0Dbe5ny/eHfd4VC9I/PoFXdF9yMv1voPZDpdycOH4hA
BqKC122rjXyIXwiNz6KfsiWTu2k9RQvk8j4ICYa60Vf8Ae7sTMnnMopgA19TW23tScUBe2MfA8CX
neQvooP2zY6wkM20s2Vcq4nf3EKrkZfRG7/AuVXz3f0tVa/luI8GajbQosqfOJZgpc/aQCd+6wxM
XofDNRQ5vbPQhl22dvL62HEL2+7NMeIpXxOFGZ3Wr2qimFoHQjQhl+UXz7E4qi7d32e1chAdfyyl
mdYAs6MV+dfzE96X8pY96kMJtWIw8bXkqDk1IDxZhBkuYqheIORCAdXaRJZQRe3ReIjMFMnKdQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22FC51490692FC0"
last-modified: Thu, 12 Nov 2026 00:49:14 GMT
content-md5: 2IvUH6rVI1x6JOhV5M9Arw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6e14a40b-618b-432b-9ca3-7753eee62a60
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-b31d4632-4bc3-da42-afa0-5f3eb3526c7f/test-blob-e2353406-8987-488f-9e9d-895632f0acb3

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
last-modified: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:14 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x22FC51490692FC0"
content-md5: 2IvUH6rVI1x6JOhV5M9Arw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af45d17b-1315-42dd-9236-0090a73417ff
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 2IvUH6rVI1x6JOhV5M9Arw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
xzBpQNWGi2MbXrBtjhXQ/OjHGV63p+WpttQUJsHrp7/0q3aC6SupgKnSxinYIbmJzY1uatZO/B9K
wIkAcWShMLbweeOeTRO9HZm15OG80JUbi1k0fT3ppq9XOCihqQ9EMJZy6KfW6n96sEw9mRc+jvD0
5eUKbLJ5B9M0RxXqHHSKcLRLSejuRKDZuszwqw2XGak4rcMpOcPj+ODUoqNqkJTYsyhj8kQIBaFF
MbLliVzGnC1rsW6xYDbwZ1EHGaL8bio4GPjkNCZkMKch4wgR/W+EDgV1/t4mJlLyc4vzAOz/SMKI
rXFj4WgHB4HHj3wt3mnigwuchm9LEfGm8cCbcTC7IptFiVD9ICydbvddX5bVxJQhEHzgY8FSPJt/
ve+na5ZQC2zh6FUZ5GLf/hh47rJa0C0semCz27/Z80y0fmM89gJhDFMp89w+BywZAGSp2k3pJOzC
evE2nTCtCPQIZWb/owgVF+JfMd1R7XI0mdpaMBj/y1p3eXsRKm8jfOvnNaLGGl1clMNrivMPcYx+
AQNWUtfcCZoLiCmMA+xyO7TxabfQbn98/ptVk0FnZwjukilrzSkTCywIupI00JDW+E4+HQfUrZOD
2VQ8hnZYpCAgnXDDBm6L3V6LyLPtRy4LfpryKEoBGeSV6PPU14S2rxVyFDIfE/Hgs0CoSeXflpIm
MAfbZXzVHoOLLR56tgba1RmeejL762upEnUKWdD/tVFhrqZ82kmZnPWuk+XSZf05zXPLQRtfKkWc
MlMHy8WzjHjNGQhfXfrQBd49TVeF1q140ItcM3Q1AYNh4Kj1kdAw+gdtBUz02nB5+zs9It3tFlym
j/s6V1gEmBeE/X1R2nMODFJQGNBhg/Ua4jg499+mdMlMTwLU9qOuaG00cNzzJyHHLxWKnf6LRAsF
H3Qgy6A33om0BYpwORavoa9jLBIYJ7sXcMjKG9fKwAv2ztYvjp3M/ZFTPiKWVvb/2/tPJxj47fe4
CVrYbcKy6UR/emo/fxISly+BxeiZgBnRy0Dbe5ny/eHfd4VC9I/PoFXdF9yMv1voPZDpdycOH4hA
BqKC122rjXyIXwiNz6KfsiWTu2k9RQvk8j4ICYa60Vf8Ae7sTMnnMopgA19TW23tScUBe2MfA8CX
neQvooP2zY6wkM20s2Vcq4nf3EKrkZfRG7/AuVXz3f0tVa/luI8GajbQosqfOJZgpc/aQCd+6wxM
XofDNRQ5vbPQhl22dvL62HEL2+7NMeIpXxOFGZ3Wr2qimFoHQjQhl+UXz7E4qi7d32e1chAdfyyl
mdYAs6MV+dfzE96X8pY96kMJtWIw8bXkqDk1IDxZhBkuYqheIORCAdXaRJZQRe3ReIjMFMnKdQ==
```

## Interaction 3: PUT /devstoreaccount1/test-container-b31d4632-4bc3-da42-afa0-5f3eb3526c7f/test-blob-e2353406-8987-488f-9e9d-895632f0acb3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
xzBpQNWGi2MbXrBtjhXQ/OjHGV63p+WpttQUJsHrp7/0q3aC6SupgKnSxinYIbmJzY1uatZO/B9K
wIkAcWShMLbweeOeTRO9HZm15OG80JUbi1k0fT3ppq9XOCihqQ9EMJZy6KfW6n96sEw9mRc+jvD0
5eUKbLJ5B9M0RxXqHHSKcLRLSejuRKDZuszwqw2XGak4rcMpOcPj+ODUoqNqkJTYsyhj8kQIBaFF
MbLliVzGnC1rsW6xYDbwZ1EHGaL8bio4GPjkNCZkMKch4wgR/W+EDgV1/t4mJlLyc4vzAOz/SMKI
rXFj4WgHB4HHj3wt3mnigwuchm9LEfGm8cCbcTC7IptFiVD9ICydbvddX5bVxJQhEHzgY8FSPJt/
ve+na5ZQC2zh6FUZ5GLf/hh47rJa0C0semCz27/Z80y0fmM89gJhDFMp89w+BywZAGSp2k3pJOzC
evE2nTCtCPQIZWb/owgVF+JfMd1R7XI0mdpaMBj/y1p3eXsRKm8jfOvnNaLGGl1clMNrivMPcYx+
AQNWUtfcCZoLiCmMA+xyO7TxabfQbn98/ptVk0FnZwjukilrzSkTCywIupI00JDW+E4+HQfUrZOD
2VQ8hnZYpCAgnXDDBm6L3V6LyLPtRy4LfpryKEoBGeSV6PPU14S2rxVyFDIfE/Hgs0CoSeXflpIm
MAfbZXzVHoOLLR56tgba1RmeejL762upEnUKWdD/tVFhrqZ82kmZnPWuk+XSZf05zXPLQRtfKkWc
MlMHy8WzjHjNGQhfXfrQBd49TVeF1q140ItcM3Q1AYNh4Kj1kdAw+gdtBUz02nB5+zs9It3tFlym
j/s6V1gEmBeE/X1R2nMODFJQGNBhg/Ua4jg499+mdMlMTwLU9qOuaG00cNzzJyHHLxWKnf6LRAsF
H3Qgy6A33om0BYpwORavoa9jLBIYJ7sXcMjKG9fKwAv2ztYvjp3M/ZFTPiKWVvb/2/tPJxj47fe4
CVrYbcKy6UR/emo/fxISly+BxeiZgBnRy0Dbe5ny/eHfd4VC9I/PoFXdF9yMv1voPZDpdycOH4hA
BqKC122rjXyIXwiNz6KfsiWTu2k9RQvk8j4ICYa60Vf8Ae7sTMnnMopgA19TW23tScUBe2MfA8CX
neQvooP2zY6wkM20s2Vcq4nf3EKrkZfRG7/AuVXz3f0tVa/luI8GajbQosqfOJZgpc/aQCd+6wxM
XofDNRQ5vbPQhl22dvL62HEL2+7NMeIpXxOFGZ3Wr2qimFoHQjQhl+UXz7E4qi7d32e1chAdfyyl
mdYAs6MV+dfzE96X8pY96kMJtWIw8bXkqDk1IDxZhBkuYqheIORCAdXaRJZQRe3ReIjMFMnKdQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C10BD8F9FA3440"
last-modified: Thu, 12 Nov 2026 00:49:14 GMT
content-md5: 2IvUH6rVI1x6JOhV5M9Arw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ba6be804-ed1f-4dd0-91b2-eff1e7d07de8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-b31d4632-4bc3-da42-afa0-5f3eb3526c7f/test-blob-e2353406-8987-488f-9e9d-895632f0acb3

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:14 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1C10BD8F9FA3440"
content-md5: 2IvUH6rVI1x6JOhV5M9Arw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 597e4ad7-9792-4528-8598-8298273a3624
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 2IvUH6rVI1x6JOhV5M9Arw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
xzBpQNWGi2MbXrBtjhXQ/OjHGV63p+WpttQUJsHrp7/0q3aC6SupgKnSxinYIbmJzY1uatZO/B9K
wIkAcWShMLbweeOeTRO9HZm15OG80JUbi1k0fT3ppq9XOCihqQ9EMJZy6KfW6n96sEw9mRc+jvD0
5eUKbLJ5B9M0RxXqHHSKcLRLSejuRKDZuszwqw2XGak4rcMpOcPj+ODUoqNqkJTYsyhj8kQIBaFF
MbLliVzGnC1rsW6xYDbwZ1EHGaL8bio4GPjkNCZkMKch4wgR/W+EDgV1/t4mJlLyc4vzAOz/SMKI
rXFj4WgHB4HHj3wt3mnigwuchm9LEfGm8cCbcTC7IptFiVD9ICydbvddX5bVxJQhEHzgY8FSPJt/
ve+na5ZQC2zh6FUZ5GLf/hh47rJa0C0semCz27/Z80y0fmM89gJhDFMp89w+BywZAGSp2k3pJOzC
evE2nTCtCPQIZWb/owgVF+JfMd1R7XI0mdpaMBj/y1p3eXsRKm8jfOvnNaLGGl1clMNrivMPcYx+
AQNWUtfcCZoLiCmMA+xyO7TxabfQbn98/ptVk0FnZwjukilrzSkTCywIupI00JDW+E4+HQfUrZOD
2VQ8hnZYpCAgnXDDBm6L3V6LyLPtRy4LfpryKEoBGeSV6PPU14S2rxVyFDIfE/Hgs0CoSeXflpIm
MAfbZXzVHoOLLR56tgba1RmeejL762upEnUKWdD/tVFhrqZ82kmZnPWuk+XSZf05zXPLQRtfKkWc
MlMHy8WzjHjNGQhfXfrQBd49TVeF1q140ItcM3Q1AYNh4Kj1kdAw+gdtBUz02nB5+zs9It3tFlym
j/s6V1gEmBeE/X1R2nMODFJQGNBhg/Ua4jg499+mdMlMTwLU9qOuaG00cNzzJyHHLxWKnf6LRAsF
H3Qgy6A33om0BYpwORavoa9jLBIYJ7sXcMjKG9fKwAv2ztYvjp3M/ZFTPiKWVvb/2/tPJxj47fe4
CVrYbcKy6UR/emo/fxISly+BxeiZgBnRy0Dbe5ny/eHfd4VC9I/PoFXdF9yMv1voPZDpdycOH4hA
BqKC122rjXyIXwiNz6KfsiWTu2k9RQvk8j4ICYa60Vf8Ae7sTMnnMopgA19TW23tScUBe2MfA8CX
neQvooP2zY6wkM20s2Vcq4nf3EKrkZfRG7/AuVXz3f0tVa/luI8GajbQosqfOJZgpc/aQCd+6wxM
XofDNRQ5vbPQhl22dvL62HEL2+7NMeIpXxOFGZ3Wr2qimFoHQjQhl+UXz7E4qi7d32e1chAdfyyl
mdYAs6MV+dfzE96X8pY96kMJtWIw8bXkqDk1IDxZhBkuYqheIORCAdXaRJZQRe3ReIjMFMnKdQ==
```

## Interaction 5: PUT /devstoreaccount1/test-container-b31d4632-4bc3-da42-afa0-5f3eb3526c7f/test-blob-e2353406-8987-488f-9e9d-895632f0acb3

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
xzBpQNWGi2MbXrBtjhXQ/OjHGV63p+WpttQUJsHrp7/0q3aC6SupgKnSxinYIbmJzY1uatZO/B9K
wIkAcWShMLbweeOeTRO9HZm15OG80JUbi1k0fT3ppq9XOCihqQ9EMJZy6KfW6n96sEw9mRc+jvD0
5eUKbLJ5B9M0RxXqHHSKcLRLSejuRKDZuszwqw2XGak4rcMpOcPj+ODUoqNqkJTYsyhj8kQIBaFF
MbLliVzGnC1rsW6xYDbwZ1EHGaL8bio4GPjkNCZkMKch4wgR/W+EDgV1/t4mJlLyc4vzAOz/SMKI
rXFj4WgHB4HHj3wt3mnigwuchm9LEfGm8cCbcTC7IptFiVD9ICydbvddX5bVxJQhEHzgY8FSPJt/
ve+na5ZQC2zh6FUZ5GLf/hh47rJa0C0semCz27/Z80y0fmM89gJhDFMp89w+BywZAGSp2k3pJOzC
evE2nTCtCPQIZWb/owgVF+JfMd1R7XI0mdpaMBj/y1p3eXsRKm8jfOvnNaLGGl1clMNrivMPcYx+
AQNWUtfcCZoLiCmMA+xyO7TxabfQbn98/ptVk0FnZwjukilrzSkTCywIupI00JDW+E4+HQfUrZOD
2VQ8hnZYpCAgnXDDBm6L3V6LyLPtRy4LfpryKEoBGeSV6PPU14S2rxVyFDIfE/Hgs0CoSeXflpIm
MAfbZXzVHoOLLR56tgba1RmeejL762upEnUKWdD/tVFhrqZ82kmZnPWuk+XSZf05zXPLQRtfKkWc
MlMHy8WzjHjNGQhfXfrQBd49TVeF1q140ItcM3Q1AYNh4Kj1kdAw+gdtBUz02nB5+zs9It3tFlym
j/s6V1gEmBeE/X1R2nMODFJQGNBhg/Ua4jg499+mdMlMTwLU9qOuaG00cNzzJyHHLxWKnf6LRAsF
H3Qgy6A33om0BYpwORavoa9jLBIYJ7sXcMjKG9fKwAv2ztYvjp3M/ZFTPiKWVvb/2/tPJxj47fe4
CVrYbcKy6UR/emo/fxISly+BxeiZgBnRy0Dbe5ny/eHfd4VC9I/PoFXdF9yMv1voPZDpdycOH4hA
BqKC122rjXyIXwiNz6KfsiWTu2k9RQvk8j4ICYa60Vf8Ae7sTMnnMopgA19TW23tScUBe2MfA8CX
neQvooP2zY6wkM20s2Vcq4nf3EKrkZfRG7/AuVXz3f0tVa/luI8GajbQosqfOJZgpc/aQCd+6wxM
XofDNRQ5vbPQhl22dvL62HEL2+7NMeIpXxOFGZ3Wr2qimFoHQjQhl+UXz7E4qi7d32e1chAdfyyl
mdYAs6MV+dfzE96X8pY96kMJtWIw8bXkqDk1IDxZhBkuYqheIORCAdXaRJZQRe3ReIjMFMnKdQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23D061642A50340"
last-modified: Thu, 12 Nov 2026 00:49:14 GMT
content-md5: 2IvUH6rVI1x6JOhV5M9Arw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ffb3eb34-3ff0-4e27-a961-e898f69eaca5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-b31d4632-4bc3-da42-afa0-5f3eb3526c7f/test-blob-e2353406-8987-488f-9e9d-895632f0acb3

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:14 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x23D061642A50340"
content-md5: 2IvUH6rVI1x6JOhV5M9Arw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 40a00e22-504a-43a4-aaab-9bcdbb0bfbc6
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 2IvUH6rVI1x6JOhV5M9Arw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
xzBpQNWGi2MbXrBtjhXQ/OjHGV63p+WpttQUJsHrp7/0q3aC6SupgKnSxinYIbmJzY1uatZO/B9K
wIkAcWShMLbweeOeTRO9HZm15OG80JUbi1k0fT3ppq9XOCihqQ9EMJZy6KfW6n96sEw9mRc+jvD0
5eUKbLJ5B9M0RxXqHHSKcLRLSejuRKDZuszwqw2XGak4rcMpOcPj+ODUoqNqkJTYsyhj8kQIBaFF
MbLliVzGnC1rsW6xYDbwZ1EHGaL8bio4GPjkNCZkMKch4wgR/W+EDgV1/t4mJlLyc4vzAOz/SMKI
rXFj4WgHB4HHj3wt3mnigwuchm9LEfGm8cCbcTC7IptFiVD9ICydbvddX5bVxJQhEHzgY8FSPJt/
ve+na5ZQC2zh6FUZ5GLf/hh47rJa0C0semCz27/Z80y0fmM89gJhDFMp89w+BywZAGSp2k3pJOzC
evE2nTCtCPQIZWb/owgVF+JfMd1R7XI0mdpaMBj/y1p3eXsRKm8jfOvnNaLGGl1clMNrivMPcYx+
AQNWUtfcCZoLiCmMA+xyO7TxabfQbn98/ptVk0FnZwjukilrzSkTCywIupI00JDW+E4+HQfUrZOD
2VQ8hnZYpCAgnXDDBm6L3V6LyLPtRy4LfpryKEoBGeSV6PPU14S2rxVyFDIfE/Hgs0CoSeXflpIm
MAfbZXzVHoOLLR56tgba1RmeejL762upEnUKWdD/tVFhrqZ82kmZnPWuk+XSZf05zXPLQRtfKkWc
MlMHy8WzjHjNGQhfXfrQBd49TVeF1q140ItcM3Q1AYNh4Kj1kdAw+gdtBUz02nB5+zs9It3tFlym
j/s6V1gEmBeE/X1R2nMODFJQGNBhg/Ua4jg499+mdMlMTwLU9qOuaG00cNzzJyHHLxWKnf6LRAsF
H3Qgy6A33om0BYpwORavoa9jLBIYJ7sXcMjKG9fKwAv2ztYvjp3M/ZFTPiKWVvb/2/tPJxj47fe4
CVrYbcKy6UR/emo/fxISly+BxeiZgBnRy0Dbe5ny/eHfd4VC9I/PoFXdF9yMv1voPZDpdycOH4hA
BqKC122rjXyIXwiNz6KfsiWTu2k9RQvk8j4ICYa60Vf8Ae7sTMnnMopgA19TW23tScUBe2MfA8CX
neQvooP2zY6wkM20s2Vcq4nf3EKrkZfRG7/AuVXz3f0tVa/luI8GajbQosqfOJZgpc/aQCd+6wxM
XofDNRQ5vbPQhl22dvL62HEL2+7NMeIpXxOFGZ3Wr2qimFoHQjQhl+UXz7E4qi7d32e1chAdfyyl
mdYAs6MV+dfzE96X8pY96kMJtWIw8bXkqDk1IDxZhBkuYqheIORCAdXaRJZQRe3ReIjMFMnKdQ==
```

## Interaction 7: DELETE /devstoreaccount1/test-container-b31d4632-4bc3-da42-afa0-5f3eb3526c7f?restype=container

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
x-ms-request-id: 2d35c045-352f-47ed-aa96-8a8f1fe1aa53
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

