## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-55b4a755-4a3d-5b88-a875-a1e03ff8de28?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_DefaultsToApacheArrow
now: 2026-11-12T00:44:59.1980136+00:00

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
etag: "0x241484466CC7C40"
last-modified: Thu, 12 Nov 2026 00:44:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f1ba6567-6c38-4446-ba9d-c5cd729ea7cc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-55b4a755-4a3d-5b88-a875-a1e03ff8de28/foo

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
KCzt/AwGjoG9A0rIaPvukLmFQ/TJxNN7d5S4H2wWQtZgR0pz/ufcTxgzmDoAwPKthxEnubXqX2NZ
coV4TW8Up8BzZyCxe5LSqPTcliuZerahC5db74ghdujmGYtiYwGoHvF5jFjR+wx/VBHADck3v/fO
10LYubg3UvE4ymEGb0XyM3c6H+1dzw+L3Jp3YGgfrlqUk4y/0GU5QjpmmTCreeXLzdpR/aAJcQcy
Td0dv/GJGBsHcdy5M2ISAN2z9jbf4GK1q5KNzbG6iiKEjIOIG4JJ3YAUowcIEpp3P/zCVnrRU2x6
aBNe+0pqTee6NKbfieVbahm1yjxbrJn4Fo609zOoszkWDrJu6uE1qlYfTt7zmLUXZ+xgG4kwHrx6
ZuW8tlWzEYFtyHsy7H84gCDlPF26BH3ZnJBGR5ew5e/284T7efMAazxdhs855HptJ5toS+JewGFn
4hnFbcnpvOKMPPn6PAYs5NAgXX6uoLcV2R/8R5oNlzMjk5baO/5yc8nsraiBcuuUPGYRPWLiuUJh
r5Oq7XVIf6TF16lwUqjSruq0wvMPlGc0Zwo0+1nQQNpUeIxryIVUpC0Du5pCJOq9P494LvZOURor
dYVqE4NK9ZfOG9kcZuVkYB3FDNnM8kMgd7vKWBLjBSZxP1MA6pCpuMUDcwgRoNmqE83ZiUVAX4JB
SZzIgJyF6hayqieRZHaNG1MTyX47D9biH0RECnvgMODQvqD04TcpfYnxXvWxGK9XS27yLZUEBjrG
5WBYQd+a0XpHwKbVmTkb6kv1SbDgMAeU7L4N7gNKzLdmLfvX0DypV417algJgbI01kJJDryJ5bVZ
w1UhjOJ2/PTub2s+RBoPS/EjZMavi2oL2RjBAb763EdGfQ3niMqqBW5jGxFH9pEoOcLKZYHvqjjq
FbPKtPo185Mj98cNKMMneV9XS3BYxOOGmMf7L3bGV9LU/HMX4FB0LSd+I/7KGxH/o+wil1/IklDP
QxsyOsMcXaD0OCxQD5kO4x1I2aDkvH22/IuJpL9zDGoiSJw0QfNjYcZe1uLlrpRTE7RCgLiv6oee
fD43krjggCzCLcb82aIp5HjahuWa0U33NpALMYyxcl0UlsS1LM4NflW2IoDOVjkRGJtA1WShA6vw
QFwn1E+fELtp50PddLipzAiQ467NKd9X+RjwcZ35c5IZxety5qkFFhLFZG/2NKTjlghcER/8Ihd9
0No3r58db3Sww6/MN+Zeis2cB8RwYMV0DdqUnWFzHaLT9BbPzmdzqPX6RXD1Fl8i/YdSYBtTDG8U
w6LEiNITPaYM+ULPjrtlKV/PdRtUf/Z7cp/ZILyHf+emugvErh8i5gjJ6B0cUm/M7De7hJZTvw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x266E549F778A840"
last-modified: Thu, 12 Nov 2026 00:44:59 GMT
content-md5: 5dOZAky4KL1MHXrc8eoMZw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8cf71a06-3387-44d0-8a66-2f0e55afc963
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-55b4a755-4a3d-5b88-a875-a1e03ff8de28/bar

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
KCzt/AwGjoG9A0rIaPvukLmFQ/TJxNN7d5S4H2wWQtZgR0pz/ufcTxgzmDoAwPKthxEnubXqX2NZ
coV4TW8Up8BzZyCxe5LSqPTcliuZerahC5db74ghdujmGYtiYwGoHvF5jFjR+wx/VBHADck3v/fO
10LYubg3UvE4ymEGb0XyM3c6H+1dzw+L3Jp3YGgfrlqUk4y/0GU5QjpmmTCreeXLzdpR/aAJcQcy
Td0dv/GJGBsHcdy5M2ISAN2z9jbf4GK1q5KNzbG6iiKEjIOIG4JJ3YAUowcIEpp3P/zCVnrRU2x6
aBNe+0pqTee6NKbfieVbahm1yjxbrJn4Fo609zOoszkWDrJu6uE1qlYfTt7zmLUXZ+xgG4kwHrx6
ZuW8tlWzEYFtyHsy7H84gCDlPF26BH3ZnJBGR5ew5e/284T7efMAazxdhs855HptJ5toS+JewGFn
4hnFbcnpvOKMPPn6PAYs5NAgXX6uoLcV2R/8R5oNlzMjk5baO/5yc8nsraiBcuuUPGYRPWLiuUJh
r5Oq7XVIf6TF16lwUqjSruq0wvMPlGc0Zwo0+1nQQNpUeIxryIVUpC0Du5pCJOq9P494LvZOURor
dYVqE4NK9ZfOG9kcZuVkYB3FDNnM8kMgd7vKWBLjBSZxP1MA6pCpuMUDcwgRoNmqE83ZiUVAX4JB
SZzIgJyF6hayqieRZHaNG1MTyX47D9biH0RECnvgMODQvqD04TcpfYnxXvWxGK9XS27yLZUEBjrG
5WBYQd+a0XpHwKbVmTkb6kv1SbDgMAeU7L4N7gNKzLdmLfvX0DypV417algJgbI01kJJDryJ5bVZ
w1UhjOJ2/PTub2s+RBoPS/EjZMavi2oL2RjBAb763EdGfQ3niMqqBW5jGxFH9pEoOcLKZYHvqjjq
FbPKtPo185Mj98cNKMMneV9XS3BYxOOGmMf7L3bGV9LU/HMX4FB0LSd+I/7KGxH/o+wil1/IklDP
QxsyOsMcXaD0OCxQD5kO4x1I2aDkvH22/IuJpL9zDGoiSJw0QfNjYcZe1uLlrpRTE7RCgLiv6oee
fD43krjggCzCLcb82aIp5HjahuWa0U33NpALMYyxcl0UlsS1LM4NflW2IoDOVjkRGJtA1WShA6vw
QFwn1E+fELtp50PddLipzAiQ467NKd9X+RjwcZ35c5IZxety5qkFFhLFZG/2NKTjlghcER/8Ihd9
0No3r58db3Sww6/MN+Zeis2cB8RwYMV0DdqUnWFzHaLT9BbPzmdzqPX6RXD1Fl8i/YdSYBtTDG8U
w6LEiNITPaYM+ULPjrtlKV/PdRtUf/Z7cp/ZILyHf+emugvErh8i5gjJ6B0cUm/M7De7hJZTvw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20A5C436FAF4C60"
last-modified: Thu, 12 Nov 2026 00:44:59 GMT
content-md5: 5dOZAky4KL1MHXrc8eoMZw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9d822279-c3ab-49e3-afda-5797c035237b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-55b4a755-4a3d-5b88-a875-a1e03ff8de28/baz

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
KCzt/AwGjoG9A0rIaPvukLmFQ/TJxNN7d5S4H2wWQtZgR0pz/ufcTxgzmDoAwPKthxEnubXqX2NZ
coV4TW8Up8BzZyCxe5LSqPTcliuZerahC5db74ghdujmGYtiYwGoHvF5jFjR+wx/VBHADck3v/fO
10LYubg3UvE4ymEGb0XyM3c6H+1dzw+L3Jp3YGgfrlqUk4y/0GU5QjpmmTCreeXLzdpR/aAJcQcy
Td0dv/GJGBsHcdy5M2ISAN2z9jbf4GK1q5KNzbG6iiKEjIOIG4JJ3YAUowcIEpp3P/zCVnrRU2x6
aBNe+0pqTee6NKbfieVbahm1yjxbrJn4Fo609zOoszkWDrJu6uE1qlYfTt7zmLUXZ+xgG4kwHrx6
ZuW8tlWzEYFtyHsy7H84gCDlPF26BH3ZnJBGR5ew5e/284T7efMAazxdhs855HptJ5toS+JewGFn
4hnFbcnpvOKMPPn6PAYs5NAgXX6uoLcV2R/8R5oNlzMjk5baO/5yc8nsraiBcuuUPGYRPWLiuUJh
r5Oq7XVIf6TF16lwUqjSruq0wvMPlGc0Zwo0+1nQQNpUeIxryIVUpC0Du5pCJOq9P494LvZOURor
dYVqE4NK9ZfOG9kcZuVkYB3FDNnM8kMgd7vKWBLjBSZxP1MA6pCpuMUDcwgRoNmqE83ZiUVAX4JB
SZzIgJyF6hayqieRZHaNG1MTyX47D9biH0RECnvgMODQvqD04TcpfYnxXvWxGK9XS27yLZUEBjrG
5WBYQd+a0XpHwKbVmTkb6kv1SbDgMAeU7L4N7gNKzLdmLfvX0DypV417algJgbI01kJJDryJ5bVZ
w1UhjOJ2/PTub2s+RBoPS/EjZMavi2oL2RjBAb763EdGfQ3niMqqBW5jGxFH9pEoOcLKZYHvqjjq
FbPKtPo185Mj98cNKMMneV9XS3BYxOOGmMf7L3bGV9LU/HMX4FB0LSd+I/7KGxH/o+wil1/IklDP
QxsyOsMcXaD0OCxQD5kO4x1I2aDkvH22/IuJpL9zDGoiSJw0QfNjYcZe1uLlrpRTE7RCgLiv6oee
fD43krjggCzCLcb82aIp5HjahuWa0U33NpALMYyxcl0UlsS1LM4NflW2IoDOVjkRGJtA1WShA6vw
QFwn1E+fELtp50PddLipzAiQ467NKd9X+RjwcZ35c5IZxety5qkFFhLFZG/2NKTjlghcER/8Ihd9
0No3r58db3Sww6/MN+Zeis2cB8RwYMV0DdqUnWFzHaLT9BbPzmdzqPX6RXD1Fl8i/YdSYBtTDG8U
w6LEiNITPaYM+ULPjrtlKV/PdRtUf/Z7cp/ZILyHf+emugvErh8i5gjJ6B0cUm/M7De7hJZTvw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2220B4875BC48E0"
last-modified: Thu, 12 Nov 2026 00:44:59 GMT
content-md5: 5dOZAky4KL1MHXrc8eoMZw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 20e675b6-8dcc-4da9-8aea-f58ee0a70429
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-55b4a755-4a3d-5b88-a875-a1e03ff8de28/foo/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
KCzt/AwGjoG9A0rIaPvukLmFQ/TJxNN7d5S4H2wWQtZgR0pz/ufcTxgzmDoAwPKthxEnubXqX2NZ
coV4TW8Up8BzZyCxe5LSqPTcliuZerahC5db74ghdujmGYtiYwGoHvF5jFjR+wx/VBHADck3v/fO
10LYubg3UvE4ymEGb0XyM3c6H+1dzw+L3Jp3YGgfrlqUk4y/0GU5QjpmmTCreeXLzdpR/aAJcQcy
Td0dv/GJGBsHcdy5M2ISAN2z9jbf4GK1q5KNzbG6iiKEjIOIG4JJ3YAUowcIEpp3P/zCVnrRU2x6
aBNe+0pqTee6NKbfieVbahm1yjxbrJn4Fo609zOoszkWDrJu6uE1qlYfTt7zmLUXZ+xgG4kwHrx6
ZuW8tlWzEYFtyHsy7H84gCDlPF26BH3ZnJBGR5ew5e/284T7efMAazxdhs855HptJ5toS+JewGFn
4hnFbcnpvOKMPPn6PAYs5NAgXX6uoLcV2R/8R5oNlzMjk5baO/5yc8nsraiBcuuUPGYRPWLiuUJh
r5Oq7XVIf6TF16lwUqjSruq0wvMPlGc0Zwo0+1nQQNpUeIxryIVUpC0Du5pCJOq9P494LvZOURor
dYVqE4NK9ZfOG9kcZuVkYB3FDNnM8kMgd7vKWBLjBSZxP1MA6pCpuMUDcwgRoNmqE83ZiUVAX4JB
SZzIgJyF6hayqieRZHaNG1MTyX47D9biH0RECnvgMODQvqD04TcpfYnxXvWxGK9XS27yLZUEBjrG
5WBYQd+a0XpHwKbVmTkb6kv1SbDgMAeU7L4N7gNKzLdmLfvX0DypV417algJgbI01kJJDryJ5bVZ
w1UhjOJ2/PTub2s+RBoPS/EjZMavi2oL2RjBAb763EdGfQ3niMqqBW5jGxFH9pEoOcLKZYHvqjjq
FbPKtPo185Mj98cNKMMneV9XS3BYxOOGmMf7L3bGV9LU/HMX4FB0LSd+I/7KGxH/o+wil1/IklDP
QxsyOsMcXaD0OCxQD5kO4x1I2aDkvH22/IuJpL9zDGoiSJw0QfNjYcZe1uLlrpRTE7RCgLiv6oee
fD43krjggCzCLcb82aIp5HjahuWa0U33NpALMYyxcl0UlsS1LM4NflW2IoDOVjkRGJtA1WShA6vw
QFwn1E+fELtp50PddLipzAiQ467NKd9X+RjwcZ35c5IZxety5qkFFhLFZG/2NKTjlghcER/8Ihd9
0No3r58db3Sww6/MN+Zeis2cB8RwYMV0DdqUnWFzHaLT9BbPzmdzqPX6RXD1Fl8i/YdSYBtTDG8U
w6LEiNITPaYM+ULPjrtlKV/PdRtUf/Z7cp/ZILyHf+emugvErh8i5gjJ6B0cUm/M7De7hJZTvw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DFAC23C8442360"
last-modified: Thu, 12 Nov 2026 00:44:59 GMT
content-md5: 5dOZAky4KL1MHXrc8eoMZw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8bd1ad64-6935-4610-a81e-0fd7198bfd1d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-55b4a755-4a3d-5b88-a875-a1e03ff8de28/foo/bar

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
KCzt/AwGjoG9A0rIaPvukLmFQ/TJxNN7d5S4H2wWQtZgR0pz/ufcTxgzmDoAwPKthxEnubXqX2NZ
coV4TW8Up8BzZyCxe5LSqPTcliuZerahC5db74ghdujmGYtiYwGoHvF5jFjR+wx/VBHADck3v/fO
10LYubg3UvE4ymEGb0XyM3c6H+1dzw+L3Jp3YGgfrlqUk4y/0GU5QjpmmTCreeXLzdpR/aAJcQcy
Td0dv/GJGBsHcdy5M2ISAN2z9jbf4GK1q5KNzbG6iiKEjIOIG4JJ3YAUowcIEpp3P/zCVnrRU2x6
aBNe+0pqTee6NKbfieVbahm1yjxbrJn4Fo609zOoszkWDrJu6uE1qlYfTt7zmLUXZ+xgG4kwHrx6
ZuW8tlWzEYFtyHsy7H84gCDlPF26BH3ZnJBGR5ew5e/284T7efMAazxdhs855HptJ5toS+JewGFn
4hnFbcnpvOKMPPn6PAYs5NAgXX6uoLcV2R/8R5oNlzMjk5baO/5yc8nsraiBcuuUPGYRPWLiuUJh
r5Oq7XVIf6TF16lwUqjSruq0wvMPlGc0Zwo0+1nQQNpUeIxryIVUpC0Du5pCJOq9P494LvZOURor
dYVqE4NK9ZfOG9kcZuVkYB3FDNnM8kMgd7vKWBLjBSZxP1MA6pCpuMUDcwgRoNmqE83ZiUVAX4JB
SZzIgJyF6hayqieRZHaNG1MTyX47D9biH0RECnvgMODQvqD04TcpfYnxXvWxGK9XS27yLZUEBjrG
5WBYQd+a0XpHwKbVmTkb6kv1SbDgMAeU7L4N7gNKzLdmLfvX0DypV417algJgbI01kJJDryJ5bVZ
w1UhjOJ2/PTub2s+RBoPS/EjZMavi2oL2RjBAb763EdGfQ3niMqqBW5jGxFH9pEoOcLKZYHvqjjq
FbPKtPo185Mj98cNKMMneV9XS3BYxOOGmMf7L3bGV9LU/HMX4FB0LSd+I/7KGxH/o+wil1/IklDP
QxsyOsMcXaD0OCxQD5kO4x1I2aDkvH22/IuJpL9zDGoiSJw0QfNjYcZe1uLlrpRTE7RCgLiv6oee
fD43krjggCzCLcb82aIp5HjahuWa0U33NpALMYyxcl0UlsS1LM4NflW2IoDOVjkRGJtA1WShA6vw
QFwn1E+fELtp50PddLipzAiQ467NKd9X+RjwcZ35c5IZxety5qkFFhLFZG/2NKTjlghcER/8Ihd9
0No3r58db3Sww6/MN+Zeis2cB8RwYMV0DdqUnWFzHaLT9BbPzmdzqPX6RXD1Fl8i/YdSYBtTDG8U
w6LEiNITPaYM+ULPjrtlKV/PdRtUf/Z7cp/ZILyHf+emugvErh8i5gjJ6B0cUm/M7De7hJZTvw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23535302299F180"
last-modified: Thu, 12 Nov 2026 00:44:59 GMT
content-md5: 5dOZAky4KL1MHXrc8eoMZw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 37dc6056-bd19-4a2b-8241-313a52429dc0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-55b4a755-4a3d-5b88-a875-a1e03ff8de28/baz/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
KCzt/AwGjoG9A0rIaPvukLmFQ/TJxNN7d5S4H2wWQtZgR0pz/ufcTxgzmDoAwPKthxEnubXqX2NZ
coV4TW8Up8BzZyCxe5LSqPTcliuZerahC5db74ghdujmGYtiYwGoHvF5jFjR+wx/VBHADck3v/fO
10LYubg3UvE4ymEGb0XyM3c6H+1dzw+L3Jp3YGgfrlqUk4y/0GU5QjpmmTCreeXLzdpR/aAJcQcy
Td0dv/GJGBsHcdy5M2ISAN2z9jbf4GK1q5KNzbG6iiKEjIOIG4JJ3YAUowcIEpp3P/zCVnrRU2x6
aBNe+0pqTee6NKbfieVbahm1yjxbrJn4Fo609zOoszkWDrJu6uE1qlYfTt7zmLUXZ+xgG4kwHrx6
ZuW8tlWzEYFtyHsy7H84gCDlPF26BH3ZnJBGR5ew5e/284T7efMAazxdhs855HptJ5toS+JewGFn
4hnFbcnpvOKMPPn6PAYs5NAgXX6uoLcV2R/8R5oNlzMjk5baO/5yc8nsraiBcuuUPGYRPWLiuUJh
r5Oq7XVIf6TF16lwUqjSruq0wvMPlGc0Zwo0+1nQQNpUeIxryIVUpC0Du5pCJOq9P494LvZOURor
dYVqE4NK9ZfOG9kcZuVkYB3FDNnM8kMgd7vKWBLjBSZxP1MA6pCpuMUDcwgRoNmqE83ZiUVAX4JB
SZzIgJyF6hayqieRZHaNG1MTyX47D9biH0RECnvgMODQvqD04TcpfYnxXvWxGK9XS27yLZUEBjrG
5WBYQd+a0XpHwKbVmTkb6kv1SbDgMAeU7L4N7gNKzLdmLfvX0DypV417algJgbI01kJJDryJ5bVZ
w1UhjOJ2/PTub2s+RBoPS/EjZMavi2oL2RjBAb763EdGfQ3niMqqBW5jGxFH9pEoOcLKZYHvqjjq
FbPKtPo185Mj98cNKMMneV9XS3BYxOOGmMf7L3bGV9LU/HMX4FB0LSd+I/7KGxH/o+wil1/IklDP
QxsyOsMcXaD0OCxQD5kO4x1I2aDkvH22/IuJpL9zDGoiSJw0QfNjYcZe1uLlrpRTE7RCgLiv6oee
fD43krjggCzCLcb82aIp5HjahuWa0U33NpALMYyxcl0UlsS1LM4NflW2IoDOVjkRGJtA1WShA6vw
QFwn1E+fELtp50PddLipzAiQ467NKd9X+RjwcZ35c5IZxety5qkFFhLFZG/2NKTjlghcER/8Ihd9
0No3r58db3Sww6/MN+Zeis2cB8RwYMV0DdqUnWFzHaLT9BbPzmdzqPX6RXD1Fl8i/YdSYBtTDG8U
w6LEiNITPaYM+ULPjrtlKV/PdRtUf/Z7cp/ZILyHf+emugvErh8i5gjJ6B0cUm/M7De7hJZTvw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x247AED53C065480"
last-modified: Thu, 12 Nov 2026 00:44:59 GMT
content-md5: 5dOZAky4KL1MHXrc8eoMZw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 57e05111-ce0f-489a-b4bb-4b02ccca46a3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-55b4a755-4a3d-5b88-a875-a1e03ff8de28/baz/foo/bar

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
KCzt/AwGjoG9A0rIaPvukLmFQ/TJxNN7d5S4H2wWQtZgR0pz/ufcTxgzmDoAwPKthxEnubXqX2NZ
coV4TW8Up8BzZyCxe5LSqPTcliuZerahC5db74ghdujmGYtiYwGoHvF5jFjR+wx/VBHADck3v/fO
10LYubg3UvE4ymEGb0XyM3c6H+1dzw+L3Jp3YGgfrlqUk4y/0GU5QjpmmTCreeXLzdpR/aAJcQcy
Td0dv/GJGBsHcdy5M2ISAN2z9jbf4GK1q5KNzbG6iiKEjIOIG4JJ3YAUowcIEpp3P/zCVnrRU2x6
aBNe+0pqTee6NKbfieVbahm1yjxbrJn4Fo609zOoszkWDrJu6uE1qlYfTt7zmLUXZ+xgG4kwHrx6
ZuW8tlWzEYFtyHsy7H84gCDlPF26BH3ZnJBGR5ew5e/284T7efMAazxdhs855HptJ5toS+JewGFn
4hnFbcnpvOKMPPn6PAYs5NAgXX6uoLcV2R/8R5oNlzMjk5baO/5yc8nsraiBcuuUPGYRPWLiuUJh
r5Oq7XVIf6TF16lwUqjSruq0wvMPlGc0Zwo0+1nQQNpUeIxryIVUpC0Du5pCJOq9P494LvZOURor
dYVqE4NK9ZfOG9kcZuVkYB3FDNnM8kMgd7vKWBLjBSZxP1MA6pCpuMUDcwgRoNmqE83ZiUVAX4JB
SZzIgJyF6hayqieRZHaNG1MTyX47D9biH0RECnvgMODQvqD04TcpfYnxXvWxGK9XS27yLZUEBjrG
5WBYQd+a0XpHwKbVmTkb6kv1SbDgMAeU7L4N7gNKzLdmLfvX0DypV417algJgbI01kJJDryJ5bVZ
w1UhjOJ2/PTub2s+RBoPS/EjZMavi2oL2RjBAb763EdGfQ3niMqqBW5jGxFH9pEoOcLKZYHvqjjq
FbPKtPo185Mj98cNKMMneV9XS3BYxOOGmMf7L3bGV9LU/HMX4FB0LSd+I/7KGxH/o+wil1/IklDP
QxsyOsMcXaD0OCxQD5kO4x1I2aDkvH22/IuJpL9zDGoiSJw0QfNjYcZe1uLlrpRTE7RCgLiv6oee
fD43krjggCzCLcb82aIp5HjahuWa0U33NpALMYyxcl0UlsS1LM4NflW2IoDOVjkRGJtA1WShA6vw
QFwn1E+fELtp50PddLipzAiQ467NKd9X+RjwcZ35c5IZxety5qkFFhLFZG/2NKTjlghcER/8Ihd9
0No3r58db3Sww6/MN+Zeis2cB8RwYMV0DdqUnWFzHaLT9BbPzmdzqPX6RXD1Fl8i/YdSYBtTDG8U
w6LEiNITPaYM+ULPjrtlKV/PdRtUf/Z7cp/ZILyHf+emugvErh8i5gjJ6B0cUm/M7De7hJZTvw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2551BE77326D4E0"
last-modified: Thu, 12 Nov 2026 00:44:59 GMT
content-md5: 5dOZAky4KL1MHXrc8eoMZw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4cbaa181-b713-43ea-af9a-bba3dd0873e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-55b4a755-4a3d-5b88-a875-a1e03ff8de28/baz/bar/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
KCzt/AwGjoG9A0rIaPvukLmFQ/TJxNN7d5S4H2wWQtZgR0pz/ufcTxgzmDoAwPKthxEnubXqX2NZ
coV4TW8Up8BzZyCxe5LSqPTcliuZerahC5db74ghdujmGYtiYwGoHvF5jFjR+wx/VBHADck3v/fO
10LYubg3UvE4ymEGb0XyM3c6H+1dzw+L3Jp3YGgfrlqUk4y/0GU5QjpmmTCreeXLzdpR/aAJcQcy
Td0dv/GJGBsHcdy5M2ISAN2z9jbf4GK1q5KNzbG6iiKEjIOIG4JJ3YAUowcIEpp3P/zCVnrRU2x6
aBNe+0pqTee6NKbfieVbahm1yjxbrJn4Fo609zOoszkWDrJu6uE1qlYfTt7zmLUXZ+xgG4kwHrx6
ZuW8tlWzEYFtyHsy7H84gCDlPF26BH3ZnJBGR5ew5e/284T7efMAazxdhs855HptJ5toS+JewGFn
4hnFbcnpvOKMPPn6PAYs5NAgXX6uoLcV2R/8R5oNlzMjk5baO/5yc8nsraiBcuuUPGYRPWLiuUJh
r5Oq7XVIf6TF16lwUqjSruq0wvMPlGc0Zwo0+1nQQNpUeIxryIVUpC0Du5pCJOq9P494LvZOURor
dYVqE4NK9ZfOG9kcZuVkYB3FDNnM8kMgd7vKWBLjBSZxP1MA6pCpuMUDcwgRoNmqE83ZiUVAX4JB
SZzIgJyF6hayqieRZHaNG1MTyX47D9biH0RECnvgMODQvqD04TcpfYnxXvWxGK9XS27yLZUEBjrG
5WBYQd+a0XpHwKbVmTkb6kv1SbDgMAeU7L4N7gNKzLdmLfvX0DypV417algJgbI01kJJDryJ5bVZ
w1UhjOJ2/PTub2s+RBoPS/EjZMavi2oL2RjBAb763EdGfQ3niMqqBW5jGxFH9pEoOcLKZYHvqjjq
FbPKtPo185Mj98cNKMMneV9XS3BYxOOGmMf7L3bGV9LU/HMX4FB0LSd+I/7KGxH/o+wil1/IklDP
QxsyOsMcXaD0OCxQD5kO4x1I2aDkvH22/IuJpL9zDGoiSJw0QfNjYcZe1uLlrpRTE7RCgLiv6oee
fD43krjggCzCLcb82aIp5HjahuWa0U33NpALMYyxcl0UlsS1LM4NflW2IoDOVjkRGJtA1WShA6vw
QFwn1E+fELtp50PddLipzAiQ467NKd9X+RjwcZ35c5IZxety5qkFFhLFZG/2NKTjlghcER/8Ihd9
0No3r58db3Sww6/MN+Zeis2cB8RwYMV0DdqUnWFzHaLT9BbPzmdzqPX6RXD1Fl8i/YdSYBtTDG8U
w6LEiNITPaYM+ULPjrtlKV/PdRtUf/Z7cp/ZILyHf+emugvErh8i5gjJ6B0cUm/M7De7hJZTvw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x259DD6775D62B80"
last-modified: Thu, 12 Nov 2026 00:44:59 GMT
content-md5: 5dOZAky4KL1MHXrc8eoMZw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f33d8d6f-c112-4ee3-9c0a-ab16c7c2c643
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-55b4a755-4a3d-5b88-a875-a1e03ff8de28/foo/foo?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2408AF36BEBAB60"
last-modified: Thu, 12 Nov 2026 00:44:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 554a3443-a81f-4ec0-93ee-83448698d7d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-55b4a755-4a3d-5b88-a875-a1e03ff8de28?restype=container&comp=list&delimiter=%2F

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1bcd41f6-15c0-4355-9ee6-520e899b5884
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-55b4a755-4a3d-5b88-a875-a1e03ff8de28"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>baz/</Name></BlobPrefix><BlobPrefix><Name>foo/</Name></BlobPrefix><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:59 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:59 GMT</Last-Modified><Etag>0x20A5C436FAF4C60</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>5dOZAky4KL1MHXrc8eoMZw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:59 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:59 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:59 GMT</Last-Modified><Etag>0x2220B4875BC48E0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>5dOZAky4KL1MHXrc8eoMZw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:59 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:59 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:59 GMT</Last-Modified><Etag>0x266E549F778A840</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>5dOZAky4KL1MHXrc8eoMZw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:59 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-55b4a755-4a3d-5b88-a875-a1e03ff8de28?restype=container

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
x-ms-request-id: 8e6af28d-1ce7-4134-8ce6-3239252eda49
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

