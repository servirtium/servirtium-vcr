## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a8a07976-1cdd-e187-7a9e-9996fb20869b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_Stream_Overloads
now: 2026-11-12T00:49:02.7188791+00:00

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
etag: "0x245598701997B40"
last-modified: Thu, 12 Nov 2026 00:49:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6fb309ba-0d83-4f4c-bd15-1e9f16f15363
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a8a07976-1cdd-e187-7a9e-9996fb20869b/test-blob-46f4d7d4-a877-7a36-d579-0fe93ff912a4

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
Hd2mMsYuPQpcND5RBsesj3NO7kL1lCPOQyXTYw2eoYGL9HkeeVPUpZrq6kNp5XMOzYB18QvProi5
2O+hW9n8vpO9xRJOjhUfeUioC6rgZF6xxJaNKa92u0XwZKBkM0nA7SywrB9hvz5qVXjCJ6Pe2XSR
8JZCb5TjRwnMXSl0u0X+5x1+L7g+TwRXItM3s5SiEoos0kOyfX6XzWQVlGEV9Zkywz+FYKm7UqCR
603BrJN1KkueSOgCTGmf5mJTKbuiQiw5BPBUHLLgcICjIJIw1iHQoGoWdq2xL3fV5nlGZynl76kg
h6ejIA2ZvtdoXyvXbhBBg4hQjMt+iNV5fzY4mghWvTHpEE55LYBdfLjVSNBM/ndoBeSglGLdof/S
KqHWYCPPEaH57V7Cx1UI8hATqT8ELYC/0JQktinPDG5PpwPfhxuUBjcuUhAZpj2PmKFRyfi/zfwg
F5CPqlt4KeHwch9RKWv0f6II1tpwpSpXlB6HfUJ1kNoGvm+LBVvbtikuKTMdPW42XUpVtvcisHFl
NxY98aufeuJFS2r7aXpHLB+xQXz3OVevUCD4H9nj5A7+Jc1FnsR9j65Q1/IDOvPPDorXcW70bv2+
jaCLploJYmZc/UOtAY1bM7HOp2JlqxYsKBFOC3KfCrfPhhAk8ulTRnWLpzywIgz8fD69JsebWeKJ
Xn1Julb0vPOM3Xp8NkHIemDs2QTZfAYEUo804uPwMy0umpRrCowfl+tJI0SSf0X89Kxmr3/esOF3
RWjGv9kPnKlNTpytXW/UzUIYkFnBcdJJN+43iYSuUOqy9MQjWNcROYeaRDGpT5Y8kuI8xSCItdOW
fYfr2BMln/2x+mmrsHRrB1bRJiyhoOdX+/aicYrKKT7xjdtPJmFzdaUz+FUtkOJt0L7Jto+m9Nyg
k90dgy1y5tEquSKZHOD0XrGHbaiSKmoTNKDMAHKvSpj+r5KEVvF4wBGEAte/07Td1VjdH4c0DWly
CU6MpuZee2+Km2xNcAe/Dq2WDieTVGHs7ysa0SsRyaEpEU2j7BoqJoZnNTdHj2VQHhHZnf9C37Xs
oLa7Q6pEeNLLJF66HCKTa+igKx4ppF/FybMZNyui5zGXtktjb+LcI71lfGoGlQHuRjEWobSWwvtW
9Xn3KkCmKD0sImbWMPwFxAhhxCf1vjOxK/H5i0V9APNPDHpp5Ph8v1Mt2nObGBY1Ed2rNf7UYTdF
Rv9OrJ34ryJzhiOCnN8P5ATUyOTAFhLbw3po0cv0e6pCI575LhO2NCpRKJHys3T9nFH5AJlShC/s
c+gjkN1Xfgp5P3lBFrbxHZO5b+6A6BAFajV5+nsQ8J5uDLoqk6RN+amGeXT7u4WbB+IGmRVBaw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2231552FCD8ADE0"
last-modified: Thu, 12 Nov 2026 00:49:02 GMT
content-md5: Eg43Gly3OZlH8WdSyVUAUA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6be6b3fc-7e12-4074-9b09-1c1773becb12
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-a8a07976-1cdd-e187-7a9e-9996fb20869b/test-blob-46f4d7d4-a877-7a36-d579-0fe93ff912a4

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
last-modified: Thu, 12 Nov 2026 00:49:02 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:02 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x2231552FCD8ADE0"
content-md5: Eg43Gly3OZlH8WdSyVUAUA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5fddd044-4ed2-4b87-b782-fb4b55ee298e
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:02 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: Eg43Gly3OZlH8WdSyVUAUA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
Hd2mMsYuPQpcND5RBsesj3NO7kL1lCPOQyXTYw2eoYGL9HkeeVPUpZrq6kNp5XMOzYB18QvProi5
2O+hW9n8vpO9xRJOjhUfeUioC6rgZF6xxJaNKa92u0XwZKBkM0nA7SywrB9hvz5qVXjCJ6Pe2XSR
8JZCb5TjRwnMXSl0u0X+5x1+L7g+TwRXItM3s5SiEoos0kOyfX6XzWQVlGEV9Zkywz+FYKm7UqCR
603BrJN1KkueSOgCTGmf5mJTKbuiQiw5BPBUHLLgcICjIJIw1iHQoGoWdq2xL3fV5nlGZynl76kg
h6ejIA2ZvtdoXyvXbhBBg4hQjMt+iNV5fzY4mghWvTHpEE55LYBdfLjVSNBM/ndoBeSglGLdof/S
KqHWYCPPEaH57V7Cx1UI8hATqT8ELYC/0JQktinPDG5PpwPfhxuUBjcuUhAZpj2PmKFRyfi/zfwg
F5CPqlt4KeHwch9RKWv0f6II1tpwpSpXlB6HfUJ1kNoGvm+LBVvbtikuKTMdPW42XUpVtvcisHFl
NxY98aufeuJFS2r7aXpHLB+xQXz3OVevUCD4H9nj5A7+Jc1FnsR9j65Q1/IDOvPPDorXcW70bv2+
jaCLploJYmZc/UOtAY1bM7HOp2JlqxYsKBFOC3KfCrfPhhAk8ulTRnWLpzywIgz8fD69JsebWeKJ
Xn1Julb0vPOM3Xp8NkHIemDs2QTZfAYEUo804uPwMy0umpRrCowfl+tJI0SSf0X89Kxmr3/esOF3
RWjGv9kPnKlNTpytXW/UzUIYkFnBcdJJN+43iYSuUOqy9MQjWNcROYeaRDGpT5Y8kuI8xSCItdOW
fYfr2BMln/2x+mmrsHRrB1bRJiyhoOdX+/aicYrKKT7xjdtPJmFzdaUz+FUtkOJt0L7Jto+m9Nyg
k90dgy1y5tEquSKZHOD0XrGHbaiSKmoTNKDMAHKvSpj+r5KEVvF4wBGEAte/07Td1VjdH4c0DWly
CU6MpuZee2+Km2xNcAe/Dq2WDieTVGHs7ysa0SsRyaEpEU2j7BoqJoZnNTdHj2VQHhHZnf9C37Xs
oLa7Q6pEeNLLJF66HCKTa+igKx4ppF/FybMZNyui5zGXtktjb+LcI71lfGoGlQHuRjEWobSWwvtW
9Xn3KkCmKD0sImbWMPwFxAhhxCf1vjOxK/H5i0V9APNPDHpp5Ph8v1Mt2nObGBY1Ed2rNf7UYTdF
Rv9OrJ34ryJzhiOCnN8P5ATUyOTAFhLbw3po0cv0e6pCI575LhO2NCpRKJHys3T9nFH5AJlShC/s
c+gjkN1Xfgp5P3lBFrbxHZO5b+6A6BAFajV5+nsQ8J5uDLoqk6RN+amGeXT7u4WbB+IGmRVBaw==
```

## Interaction 3: PUT /devstoreaccount1/test-container-a8a07976-1cdd-e187-7a9e-9996fb20869b/test-blob-46f4d7d4-a877-7a36-d579-0fe93ff912a4

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
Hd2mMsYuPQpcND5RBsesj3NO7kL1lCPOQyXTYw2eoYGL9HkeeVPUpZrq6kNp5XMOzYB18QvProi5
2O+hW9n8vpO9xRJOjhUfeUioC6rgZF6xxJaNKa92u0XwZKBkM0nA7SywrB9hvz5qVXjCJ6Pe2XSR
8JZCb5TjRwnMXSl0u0X+5x1+L7g+TwRXItM3s5SiEoos0kOyfX6XzWQVlGEV9Zkywz+FYKm7UqCR
603BrJN1KkueSOgCTGmf5mJTKbuiQiw5BPBUHLLgcICjIJIw1iHQoGoWdq2xL3fV5nlGZynl76kg
h6ejIA2ZvtdoXyvXbhBBg4hQjMt+iNV5fzY4mghWvTHpEE55LYBdfLjVSNBM/ndoBeSglGLdof/S
KqHWYCPPEaH57V7Cx1UI8hATqT8ELYC/0JQktinPDG5PpwPfhxuUBjcuUhAZpj2PmKFRyfi/zfwg
F5CPqlt4KeHwch9RKWv0f6II1tpwpSpXlB6HfUJ1kNoGvm+LBVvbtikuKTMdPW42XUpVtvcisHFl
NxY98aufeuJFS2r7aXpHLB+xQXz3OVevUCD4H9nj5A7+Jc1FnsR9j65Q1/IDOvPPDorXcW70bv2+
jaCLploJYmZc/UOtAY1bM7HOp2JlqxYsKBFOC3KfCrfPhhAk8ulTRnWLpzywIgz8fD69JsebWeKJ
Xn1Julb0vPOM3Xp8NkHIemDs2QTZfAYEUo804uPwMy0umpRrCowfl+tJI0SSf0X89Kxmr3/esOF3
RWjGv9kPnKlNTpytXW/UzUIYkFnBcdJJN+43iYSuUOqy9MQjWNcROYeaRDGpT5Y8kuI8xSCItdOW
fYfr2BMln/2x+mmrsHRrB1bRJiyhoOdX+/aicYrKKT7xjdtPJmFzdaUz+FUtkOJt0L7Jto+m9Nyg
k90dgy1y5tEquSKZHOD0XrGHbaiSKmoTNKDMAHKvSpj+r5KEVvF4wBGEAte/07Td1VjdH4c0DWly
CU6MpuZee2+Km2xNcAe/Dq2WDieTVGHs7ysa0SsRyaEpEU2j7BoqJoZnNTdHj2VQHhHZnf9C37Xs
oLa7Q6pEeNLLJF66HCKTa+igKx4ppF/FybMZNyui5zGXtktjb+LcI71lfGoGlQHuRjEWobSWwvtW
9Xn3KkCmKD0sImbWMPwFxAhhxCf1vjOxK/H5i0V9APNPDHpp5Ph8v1Mt2nObGBY1Ed2rNf7UYTdF
Rv9OrJ34ryJzhiOCnN8P5ATUyOTAFhLbw3po0cv0e6pCI575LhO2NCpRKJHys3T9nFH5AJlShC/s
c+gjkN1Xfgp5P3lBFrbxHZO5b+6A6BAFajV5+nsQ8J5uDLoqk6RN+amGeXT7u4WbB+IGmRVBaw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EDFA73030CA0F0"
last-modified: Thu, 12 Nov 2026 00:49:02 GMT
content-md5: Eg43Gly3OZlH8WdSyVUAUA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4c255296-9040-4ed9-84eb-60abe285ea2c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-a8a07976-1cdd-e187-7a9e-9996fb20869b/test-blob-46f4d7d4-a877-7a36-d579-0fe93ff912a4

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
last-modified: Thu, 12 Nov 2026 00:49:02 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:02 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1EDFA73030CA0F0"
content-md5: Eg43Gly3OZlH8WdSyVUAUA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 996a703a-23dd-44dc-9be6-7273e0982be7
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:02 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: Eg43Gly3OZlH8WdSyVUAUA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
Hd2mMsYuPQpcND5RBsesj3NO7kL1lCPOQyXTYw2eoYGL9HkeeVPUpZrq6kNp5XMOzYB18QvProi5
2O+hW9n8vpO9xRJOjhUfeUioC6rgZF6xxJaNKa92u0XwZKBkM0nA7SywrB9hvz5qVXjCJ6Pe2XSR
8JZCb5TjRwnMXSl0u0X+5x1+L7g+TwRXItM3s5SiEoos0kOyfX6XzWQVlGEV9Zkywz+FYKm7UqCR
603BrJN1KkueSOgCTGmf5mJTKbuiQiw5BPBUHLLgcICjIJIw1iHQoGoWdq2xL3fV5nlGZynl76kg
h6ejIA2ZvtdoXyvXbhBBg4hQjMt+iNV5fzY4mghWvTHpEE55LYBdfLjVSNBM/ndoBeSglGLdof/S
KqHWYCPPEaH57V7Cx1UI8hATqT8ELYC/0JQktinPDG5PpwPfhxuUBjcuUhAZpj2PmKFRyfi/zfwg
F5CPqlt4KeHwch9RKWv0f6II1tpwpSpXlB6HfUJ1kNoGvm+LBVvbtikuKTMdPW42XUpVtvcisHFl
NxY98aufeuJFS2r7aXpHLB+xQXz3OVevUCD4H9nj5A7+Jc1FnsR9j65Q1/IDOvPPDorXcW70bv2+
jaCLploJYmZc/UOtAY1bM7HOp2JlqxYsKBFOC3KfCrfPhhAk8ulTRnWLpzywIgz8fD69JsebWeKJ
Xn1Julb0vPOM3Xp8NkHIemDs2QTZfAYEUo804uPwMy0umpRrCowfl+tJI0SSf0X89Kxmr3/esOF3
RWjGv9kPnKlNTpytXW/UzUIYkFnBcdJJN+43iYSuUOqy9MQjWNcROYeaRDGpT5Y8kuI8xSCItdOW
fYfr2BMln/2x+mmrsHRrB1bRJiyhoOdX+/aicYrKKT7xjdtPJmFzdaUz+FUtkOJt0L7Jto+m9Nyg
k90dgy1y5tEquSKZHOD0XrGHbaiSKmoTNKDMAHKvSpj+r5KEVvF4wBGEAte/07Td1VjdH4c0DWly
CU6MpuZee2+Km2xNcAe/Dq2WDieTVGHs7ysa0SsRyaEpEU2j7BoqJoZnNTdHj2VQHhHZnf9C37Xs
oLa7Q6pEeNLLJF66HCKTa+igKx4ppF/FybMZNyui5zGXtktjb+LcI71lfGoGlQHuRjEWobSWwvtW
9Xn3KkCmKD0sImbWMPwFxAhhxCf1vjOxK/H5i0V9APNPDHpp5Ph8v1Mt2nObGBY1Ed2rNf7UYTdF
Rv9OrJ34ryJzhiOCnN8P5ATUyOTAFhLbw3po0cv0e6pCI575LhO2NCpRKJHys3T9nFH5AJlShC/s
c+gjkN1Xfgp5P3lBFrbxHZO5b+6A6BAFajV5+nsQ8J5uDLoqk6RN+amGeXT7u4WbB+IGmRVBaw==
```

## Interaction 5: PUT /devstoreaccount1/test-container-a8a07976-1cdd-e187-7a9e-9996fb20869b/test-blob-46f4d7d4-a877-7a36-d579-0fe93ff912a4

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
Hd2mMsYuPQpcND5RBsesj3NO7kL1lCPOQyXTYw2eoYGL9HkeeVPUpZrq6kNp5XMOzYB18QvProi5
2O+hW9n8vpO9xRJOjhUfeUioC6rgZF6xxJaNKa92u0XwZKBkM0nA7SywrB9hvz5qVXjCJ6Pe2XSR
8JZCb5TjRwnMXSl0u0X+5x1+L7g+TwRXItM3s5SiEoos0kOyfX6XzWQVlGEV9Zkywz+FYKm7UqCR
603BrJN1KkueSOgCTGmf5mJTKbuiQiw5BPBUHLLgcICjIJIw1iHQoGoWdq2xL3fV5nlGZynl76kg
h6ejIA2ZvtdoXyvXbhBBg4hQjMt+iNV5fzY4mghWvTHpEE55LYBdfLjVSNBM/ndoBeSglGLdof/S
KqHWYCPPEaH57V7Cx1UI8hATqT8ELYC/0JQktinPDG5PpwPfhxuUBjcuUhAZpj2PmKFRyfi/zfwg
F5CPqlt4KeHwch9RKWv0f6II1tpwpSpXlB6HfUJ1kNoGvm+LBVvbtikuKTMdPW42XUpVtvcisHFl
NxY98aufeuJFS2r7aXpHLB+xQXz3OVevUCD4H9nj5A7+Jc1FnsR9j65Q1/IDOvPPDorXcW70bv2+
jaCLploJYmZc/UOtAY1bM7HOp2JlqxYsKBFOC3KfCrfPhhAk8ulTRnWLpzywIgz8fD69JsebWeKJ
Xn1Julb0vPOM3Xp8NkHIemDs2QTZfAYEUo804uPwMy0umpRrCowfl+tJI0SSf0X89Kxmr3/esOF3
RWjGv9kPnKlNTpytXW/UzUIYkFnBcdJJN+43iYSuUOqy9MQjWNcROYeaRDGpT5Y8kuI8xSCItdOW
fYfr2BMln/2x+mmrsHRrB1bRJiyhoOdX+/aicYrKKT7xjdtPJmFzdaUz+FUtkOJt0L7Jto+m9Nyg
k90dgy1y5tEquSKZHOD0XrGHbaiSKmoTNKDMAHKvSpj+r5KEVvF4wBGEAte/07Td1VjdH4c0DWly
CU6MpuZee2+Km2xNcAe/Dq2WDieTVGHs7ysa0SsRyaEpEU2j7BoqJoZnNTdHj2VQHhHZnf9C37Xs
oLa7Q6pEeNLLJF66HCKTa+igKx4ppF/FybMZNyui5zGXtktjb+LcI71lfGoGlQHuRjEWobSWwvtW
9Xn3KkCmKD0sImbWMPwFxAhhxCf1vjOxK/H5i0V9APNPDHpp5Ph8v1Mt2nObGBY1Ed2rNf7UYTdF
Rv9OrJ34ryJzhiOCnN8P5ATUyOTAFhLbw3po0cv0e6pCI575LhO2NCpRKJHys3T9nFH5AJlShC/s
c+gjkN1Xfgp5P3lBFrbxHZO5b+6A6BAFajV5+nsQ8J5uDLoqk6RN+amGeXT7u4WbB+IGmRVBaw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27B24A9912075C0"
last-modified: Thu, 12 Nov 2026 00:49:02 GMT
content-md5: Eg43Gly3OZlH8WdSyVUAUA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1dcd901c-2e3f-48cc-a154-02483f61102a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-a8a07976-1cdd-e187-7a9e-9996fb20869b/test-blob-46f4d7d4-a877-7a36-d579-0fe93ff912a4

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
last-modified: Thu, 12 Nov 2026 00:49:02 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:02 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x27B24A9912075C0"
content-md5: Eg43Gly3OZlH8WdSyVUAUA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f8c94f00-13cf-4663-98d3-66631e55a20d
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:02 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: Eg43Gly3OZlH8WdSyVUAUA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
Hd2mMsYuPQpcND5RBsesj3NO7kL1lCPOQyXTYw2eoYGL9HkeeVPUpZrq6kNp5XMOzYB18QvProi5
2O+hW9n8vpO9xRJOjhUfeUioC6rgZF6xxJaNKa92u0XwZKBkM0nA7SywrB9hvz5qVXjCJ6Pe2XSR
8JZCb5TjRwnMXSl0u0X+5x1+L7g+TwRXItM3s5SiEoos0kOyfX6XzWQVlGEV9Zkywz+FYKm7UqCR
603BrJN1KkueSOgCTGmf5mJTKbuiQiw5BPBUHLLgcICjIJIw1iHQoGoWdq2xL3fV5nlGZynl76kg
h6ejIA2ZvtdoXyvXbhBBg4hQjMt+iNV5fzY4mghWvTHpEE55LYBdfLjVSNBM/ndoBeSglGLdof/S
KqHWYCPPEaH57V7Cx1UI8hATqT8ELYC/0JQktinPDG5PpwPfhxuUBjcuUhAZpj2PmKFRyfi/zfwg
F5CPqlt4KeHwch9RKWv0f6II1tpwpSpXlB6HfUJ1kNoGvm+LBVvbtikuKTMdPW42XUpVtvcisHFl
NxY98aufeuJFS2r7aXpHLB+xQXz3OVevUCD4H9nj5A7+Jc1FnsR9j65Q1/IDOvPPDorXcW70bv2+
jaCLploJYmZc/UOtAY1bM7HOp2JlqxYsKBFOC3KfCrfPhhAk8ulTRnWLpzywIgz8fD69JsebWeKJ
Xn1Julb0vPOM3Xp8NkHIemDs2QTZfAYEUo804uPwMy0umpRrCowfl+tJI0SSf0X89Kxmr3/esOF3
RWjGv9kPnKlNTpytXW/UzUIYkFnBcdJJN+43iYSuUOqy9MQjWNcROYeaRDGpT5Y8kuI8xSCItdOW
fYfr2BMln/2x+mmrsHRrB1bRJiyhoOdX+/aicYrKKT7xjdtPJmFzdaUz+FUtkOJt0L7Jto+m9Nyg
k90dgy1y5tEquSKZHOD0XrGHbaiSKmoTNKDMAHKvSpj+r5KEVvF4wBGEAte/07Td1VjdH4c0DWly
CU6MpuZee2+Km2xNcAe/Dq2WDieTVGHs7ysa0SsRyaEpEU2j7BoqJoZnNTdHj2VQHhHZnf9C37Xs
oLa7Q6pEeNLLJF66HCKTa+igKx4ppF/FybMZNyui5zGXtktjb+LcI71lfGoGlQHuRjEWobSWwvtW
9Xn3KkCmKD0sImbWMPwFxAhhxCf1vjOxK/H5i0V9APNPDHpp5Ph8v1Mt2nObGBY1Ed2rNf7UYTdF
Rv9OrJ34ryJzhiOCnN8P5ATUyOTAFhLbw3po0cv0e6pCI575LhO2NCpRKJHys3T9nFH5AJlShC/s
c+gjkN1Xfgp5P3lBFrbxHZO5b+6A6BAFajV5+nsQ8J5uDLoqk6RN+amGeXT7u4WbB+IGmRVBaw==
```

## Interaction 7: DELETE /devstoreaccount1/test-container-a8a07976-1cdd-e187-7a9e-9996fb20869b?restype=container

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
x-ms-request-id: d42f46cc-c065-4a99-bef6-4ea0fdf37944
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

