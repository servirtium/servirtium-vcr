## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a6c3502d-8ddd-90ad-d7c3-417b8c87662e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).AppendBlockAsync_MD5Fail
now: 2026-11-12T00:50:45.6731761+00:00

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
etag: "0x2458599D6934580"
last-modified: Thu, 12 Nov 2026 00:50:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 16533067-8dae-4a6c-aa1c-48a23184558f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a6c3502d-8ddd-90ad-d7c3-417b8c87662e/test-blob-7c5416da-2794-ac31-c0f4-532a0aeeefd1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x200741A33507CC0"
last-modified: Thu, 12 Nov 2026 00:50:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2a7bc406-0ed6-439d-9935-221a3cea0fb1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-a6c3502d-8ddd-90ad-d7c3-417b8c87662e/test-blob-7c5416da-2794-ac31-c0f4-532a0aeeefd1?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-MD5: yOjfiVwsrhZrrQJ/3xUzWw==
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
ZecCN3h4Z+C1jWj/DTsZGm4tR/fYn2gFHxfm6TqChenTbxakhC61Yq5zxga/Mp6E2ji83af4+cV/
/Rhhkn6mMwd/K54ldZVAd+VIZdhhRux4YQ4BxqhB23ZQJYcWU9AwzJP/Pwf/X2Wie2XBr5PtHbYr
6DBvpGxfPU8o1VAOKiQVF5hEYgfleQGoXkpCgCviYwfQ6mqfwCgmoAG31ooVlFFBrJj7qLqvRW8u
xkYiHL0jRnJIPT+5dVZwHsIFLaJ3k8r4AdOT5rpMIaX7cPniBINElJAXzVcSiDZBi4r4qhfNtjN8
KRvpj2C3+xuavQVcjhk+wJkSYMZy5nidUlswVHeNLrnGZdpnWgQwYNI7d8ox5P1wuel+u1ZtCUKi
TD0FhqakDI9Llig+12WU4f/0N2+ubG1dwJqNDnNjWVyYxA7HK9krlmo65U7UMeKD6dlWeNLT9ODP
p8YMF/0c6DzLphJXzbYmyKAEc4YfiI64CSWZDOCJxNAu94QSH39sHv0RCYvQLBwiL68yz4FZsB44
Uw3YgttcQeFCKNUyFKkgl1WIDX8D6NwId9wwV/VO1EZl2ctylJsitcepjQRG8BsGEjcr0KKeNWsx
0Av+K+rs81OPzDrergO6Zli4WVrYwYfBKkW9IwSjx6RfQMSPI4ndvZqwtyPgJ2M0cWpK5tsRWA6E
PQGkLtBP6wWWf20/KkPO25y/Jwpk4ALhibGaWeDITee1C+WIOI/KYcwdSaj29UYmews/UjEDIF3+
w6UetZEkzjGFiR5eRqIN9cU+RpZa65Nqc97Vifu2suuIinXpq6w6+Ht2cGwnyDRoMVxrxdnGo9cR
s0GzT0U2z9cz1bstI0oZA04b43onQqupbFefSuwSwuad2Pdqh6k1QKGV9PJ4Ow4SUcGKqsBd6nGW
CeLul4TqIRPVj0tSr3yl5aLYkU64MDFIjPgrhxcmQO2G1H3GR6kcqtPfo6zCv6JE5cUehFgi3dmx
pQqMv5n7r09dzNr/3p34vOd72I2Fhs1V5qFSB7uUY/akFaKfkOo54/RdZPPHRQcnJchxpwRMKx88
Ntn4qaeTyGjkW8j7WCv8QfWZKCHajqCaKuLzI7vxV+mCYloRQDlMyZuK4+o+K8yddGUPswP+Yqc4
Xn/Fn6Wt8wPeePXQ6wG7TF6FUKu2W/4VVq9V4aTmhACy2OK6hyr23e/mX7LWzIlkVGaleBL8ggKA
r0n1VxFe+PT1HRIeAMU0jnO7z/tLP4kl8Y0+QQvutlbfOtjgAIbeiGe+4a53RlOhcOqfQbIHNHC/
0GWEH7boB2e8P8btU43t3EeUjV7arqs5ndAhTnSj2AVnIDAgWWiw1tlHuwaNtB1csmRrcqcS5A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: Md5Mismatch
x-ms-request-id: 80030fa9-70a8-44f6-9f0a-91eda06e98aa
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:45 GMT
```
### Response body recorded for playback (400: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>Md5Mismatch</Code>
  <Message>The MD5 value specified in the request did not match with the MD5 value calculated by the server.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
  <UserSpecifiedMd5>yOjfiVwsrhZrrQJ/3xUzWw==</UserSpecifiedMd5>
  <ServerCalculatedMd5>3kDH4PpFlBfTRfNj92LEyw==</ServerCalculatedMd5>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a6c3502d-8ddd-90ad-d7c3-417b8c87662e?restype=container

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
x-ms-request-id: 28e73172-2dc9-4a54-9b95-3c26ecbf02f4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

