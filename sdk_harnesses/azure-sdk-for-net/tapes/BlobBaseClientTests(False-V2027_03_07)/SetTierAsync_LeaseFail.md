## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ddb71e82-ea26-46fd-a088-36ab62dee4a3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetTierAsync_LeaseFail
now: 2026-11-12T00:47:12.4406389+00:00

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
etag: "0x2088B24818C4F20"
last-modified: Thu, 12 Nov 2026 00:47:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4ccb776c-576b-4a2c-a1f5-d568469296b8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ddb71e82-ea26-46fd-a088-36ab62dee4a3/test-blob-23b506d0-6128-71b0-6d80-9e89e8348ec3

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
oTXW5NbM36dfVbbAoQeyV5x/zcnqWnRq9AYHnJgDZY/1i4xeYCxztj4QfdE0PaWZ1d8O4xEbuUbB
bPDQxUMOXO8myhV6VPdwDBaK2d2iNrdhbca59YJ+2tJFnfM8o/H7ASHiDXKPHoDontf6kN9pHjY5
bld8VGdtqO9CNLcDM2kljti7vyhE0U9G0Veqg0nz3H69AzSaf626dGWDTenJ5Gpu1QIHrV4N9J0I
NoIPwiSlT1g5RS80iw4qAUrDwIRlfOzsPK1H7C8frw6XkUkqqrJA3v2Rj586OUrz3KsTSjQYo7mV
I4Z3XWMoGZUhnfnFAFeYg+KG0+1NsQNjUw+DC2Xafu6QlIcsyYCaaHYJGZtRLtxUe8ZRkc/MSHGC
EwpTpQ4vRh4LNWvQbLpi7Gt3RJhnEiUzLpCfiO0fxEwVqbV2RsNn2dJ9RfhwhA4L76RkVQPZGgHk
IHZ9kL4x63EeusMF66aoD2rF6swtwqqBk5hIum5IPI6zkSVM6UkUS1mHUcpLBgP+vEWZEzA1t17M
/Pwl6DEC1n00UVqBWyUgsJ9ypXDfNoyUSv4pryheftrHf+1M7mIohHtMFrSpfGAgeGORwxHt7MVv
kZ4y2SdV1tN/uds31ME8SSH1kyDX682eCDbFzLvI2ZIo3F3E9qtU9z/hKcKE6KShVHnw+FmkmKbQ
k9DxkAkYt99ID/dkd1J1oZvh9sEKGSCRI3dB2OE5g0S382LaY2c1yXLjPNitPd0nele9w6HkxXqw
X2yS1t7+D4yyrIPvmz40qy1OJ91H5OaaGl6Ke7+j0i7oKgP6o/KU5CxM+pFZN98ZiRd0lp6daXuG
97yAc5TMD9lVB3A6Ogg6ukOw+ulVQeN/cfKnLjyPSsGIdKw1FHCYgOu3Ay9u3k8POdtb7W6RMbbZ
AQKiJOGcxb2vssVcBKbSGHr+nT2zEJKjmPVhNFxS9kP1XBJu9VsKGj1xviyJszQ1iNX0k5N4JfBv
/4zsO5BgXLuCZqiTZCIe9IP/QVJmGeXAK6yHXmOwfTYi/vbPHt+tEWFxB0yMoSSy1p4QeeSdCeWn
Kw/k2P5X0ulxcGYrTtakUjDw9RKYNImI1IjFnwRShPQRKPLPyDhjGTRjGjG+h4fIbCa0rRTSDveF
XAR2kjLkHutxGibk1In3jdvdNBlYyU0A/TPdntfgPhn6SWw07IcCfvtFTG1h5JedvB859NneLZK2
dZT+B4AUkNsM6YsdwqBT27UdE3zfnxicQOK3p0k/HBvZfXbzBHd7MbuRVfoLf/l/5RkkwBoV1tZ7
YceeXOmRzMxvQ0UpYNY+oeHATkoekMDoOMEvG1sBw6agd6Kw3dXSAIgumzu0VYVD5R84VIiMXQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27AC45CB5762DE0"
last-modified: Thu, 12 Nov 2026 00:47:12 GMT
content-md5: 4ALnQxJUDRaOtuCQUkP0QQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9011d27f-9a3b-46ea-bfee-40435dd5c2df
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ddb71e82-ea26-46fd-a088-36ab62dee4a3/test-blob-23b506d0-6128-71b0-6d80-9e89e8348ec3?comp=tier

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: Cool
x-ms-lease-id: c14eee0c-f4ef-3484-e23b-ec363cc86e1e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: 6f578173-dfc5-4fdc-91fc-50ea3ed4e410
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:12 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseNotPresentWithBlobOperation</Code>
  <Message>A lease ID was specified, but the lease for the blob has expired.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-ddb71e82-ea26-46fd-a088-36ab62dee4a3?restype=container

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
x-ms-request-id: 004f029d-57f6-4b95-9c18-234a7a4b9048
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

