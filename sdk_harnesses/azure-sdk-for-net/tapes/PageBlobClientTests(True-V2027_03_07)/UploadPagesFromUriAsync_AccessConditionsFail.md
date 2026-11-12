## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-50f90006-2491-04e0-ff1a-0f4c218c0c60?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).UploadPagesFromUriAsync_AccessConditionsFail
now: 2026-11-12T00:52:04.3152957+00:00

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
etag: "0x264A53781934BE0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 29f5e7a9-4e3d-4fd6-bdcb-b610994a3e30
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-50f90006-2491-04e0-ff1a-0f4c218c0c60/test-blob-88323bf4-d1b6-b69e-4c0b-a68b105cfc7f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E7BE54346A6B40"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a884f9d5-5848-4b81-9b1f-90b7d5d41954
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-50f90006-2491-04e0-ff1a-0f4c218c0c60/test-blob-88323bf4-d1b6-b69e-4c0b-a68b105cfc7f?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
+0e3BhGxhMkL2jlqObNinq35ShfszGATse7gX0WeqjTsGL7ZjlxBVXsvRLfqdcpMt3GeKEH1cy7n
pFUj0CWEbS8FfiH0iBBRt/SbvYepKDsjlKfT/4Ly96WP8ukGHYRWqteH5feoVy9hTHBNWbWnPXwZ
/zt+sG2sE4Z8ZJUmSplwRRKwIUNEez13crISpZ3v6LRt7R5I2Ppp2tJwLPKZOgLW3BSj9hw41YT+
Bj66mm3pjHvguV17J20YRkZx005K3jewO8iJTPKYNBeZSdG8rkBkh592uIGkWrSnirDWxwI2tCgG
Cl+kYECJSIRF4t6bXJcGDUyu0yW1C+AU4cFCwm0VY5WptaTgvydf7XD9X3jWCy4Yz7q1h+ADUP5+
kH5/R4YWMH9I8qbzJU0lT+a0uKxoPdaSKfKzX9y1pWSlYS6o36Xp5i75jhmHJKlskDf5TphSFlOo
7B2TYtCjkkxBTsMefHBAy9F9b6+9CgRIR8+ku1fMUkvbAPOHVYNeVvvMRtblTRPHuYPG1Kaj6+EY
SxsA/tb1dft4Qnx8uHVNHxmz8MQuYvm73QLUBn2kNxQRbwpoXVck19HbbQuXSgANeLWN8Poc6ugi
RCDUIW590wtnaklq5cHBjhnzU/XtJJIBxo3IF0ca9IQiRRg2ULViXZoAL9+3o5P0y2HhKZfyNCCO
01rhtbvDTXXFR5+oij5jkfVa7fWzSiL51EvlOcvsLxH4qHxbgKjfPOJp8VvzS0EjfZehmEYr24g3
5+Fw3hSq2BiOsOLBCBFNe7ESSVjHBogKwrs0SpfKzc30I5jHbl7OvxlDZJteYXWGVB2VGJEwcOFY
ZRxYdY2AxOMVzeR4hgxTRIk/g6Htq2BGrvZ5NLQ7xLK3bghCdkqLwqC4SZSQDs4QQtMH8OxAa7q7
EceXBo8u2QkywBcDEM4/s8AANWLMtqAnafLgM9PFdwNOhmSC9LsQiXCLXk23DDEFyD0sPzZX71on
b52cTaU1bEkUtIppvL4F8KvyQFhScFzB22uVmTjN9pcKW4UeczzKVfEDolennAt/Jk+KZa4C1P5A
23E6oNIRRr3zX2A453xuKOtmT80EGT9fFnPoQpHoB4eH3ZjLj7Qf8luZtDyrRj/THD3Cm4UwPMEy
2olfKAQsClfYsQnjo5g2R1xxamUCtNAzFSVUJWwCVqDWmLQrwMpXbanl0pQ173mli1Qov9FbLya5
KxLf2OXq1VtpDQrjC4aSGv28HeI7/Sasr5kX2pfPemiOcZS3eJXE+vw5zOJuwYDNlaTUnxJEfi7s
MilL0vvDmZKiVZnx26Jo+CLlATBDPu0ZSkTy+9tVSvNmykVreCcAdTNQzGzm27oCbKfwXnz9qA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x275B97250CE63E0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-content-crc64: cToTjLP6gwA=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 08b8d542-886f-46c8-a62c-1305ed1f466a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-50f90006-2491-04e0-ff1a-0f4c218c0c60/test-blob-fd8ce4fb-71f3-3381-6e8a-f08f3465eb77

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x208364C5DD83D00"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bdb74fde-8f44-497a-b988-b116087c7036
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-50f90006-2491-04e0-ff1a-0f4c218c0c60/test-blob-fd8ce4fb-71f3-3381-6e8a-f08f3465eb77?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
If-Modified-Since: Fri, 13 Nov 2026 00:52:04 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-50f90006-2491-04e0-ff1a-0f4c218c0c60/test-blob-88323bf4-d1b6-b69e-4c0b-a68b105cfc7f?sv=2027-03-07&se=2026-11-12T01%3A52%3A04Z&sr=b&sp=r&sig=fnzIYyKsHfvJSncMqubIaBh6mUmfntSw56Pf%2F0vSfIw%3D
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 26fc0706-94f4-441d-98c8-1d1ae32fd38e
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:04 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-50f90006-2491-04e0-ff1a-0f4c218c0c60?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: 4b789d2c-581c-41a1-aeb6-27e42483ec6e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-30512269-9e46-a44a-9499-80603f50aaa5?restype=container

### Request headers recorded for playback:

```
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
etag: "0x272B57E1A5488C0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2946f7da-2ec9-4a2f-aea3-02a2eab1ff9b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-30512269-9e46-a44a-9499-80603f50aaa5/test-blob-76c5062f-9d67-41ad-55ba-8413718dee15

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x203F5BA9EB1C3C0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 54219b05-91bb-475e-b832-71a07817eb69
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-30512269-9e46-a44a-9499-80603f50aaa5/test-blob-76c5062f-9d67-41ad-55ba-8413718dee15?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
byj1efD/tIK6/hos4A+C5h8vIu0LzDhcmudoWvEg8x3fSx8McHKGaW3OdkeEHcSFFplBEC68maPv
mN4IllqRmQv9TJTwdnWtqLiAPVXw2H0j40NX3+LvI7F7HNiTfdITPdw8h9AvlaAkk2h1O1xN/sBg
5bIXObooDSjjdFqdGSrlbQB5tFCs806jM0t6eedVLh0XMpgf+wMiE3mnTCBGhnk9j85b1EpvtPFk
dAZurpRBjUY8hueSxnH8VqHXBactXazSPekZ+lnTp36mu4f9tGTkZr/aCQCSqslcXn2ol65KNxdZ
nHCqJ5Lsad5o7Arp/6I88p7oUlOrP5IgvJvcKg/PW4RwpBjzOj4s7qAhKb6+c1/abKUQYuTDrVze
iWv3ED7PmZCGeVuKSLhfu2SzihbTYUk8Ab1qv/mfrPa7FbDTNd5hUpAtOPkEUCTssKZ/ECNGCigi
uw6BZNqW5sxkzjIHjIaGUTeFpihPN7GZfQ5TIJzSdQqHsXnP4O22l1Isn4Lx5SQf+b/swGT/0oNd
5+fLQ8YwkVgof9sMtnBJzw7WIpguqJjqNCbd5rWmiN72cvgG6lOL/A0pyWVJEkJOovFVKa/rLj9O
4Q+fU6ujgff8FkR4QuS6SyaKBd4yoSHkjkPEUF4vCkO5twlE7KlihUduTPz+1WAMmt6JYChgHD/t
u8Rn3zCYzQsAv4radV58KH+XxFQl5rjjt7aApaoaWJvJVzDk+6YW1X/w/RbVMSR/DDioyVjrx9QL
gyd6Fydh5mfvER4tlyzZgO7VNemiDoaRAZlxcY5D3o9b2Xd+m71Yjxav5iAGUXQLz0lpFpLraXWh
6RaN73TYqzKO0b61W+QwfKbS8idli7AkZaJE2cj8cHAC3LKnyp+i1jrtd3+2VnNlOZnsGXdNO15l
aIrRlNJqkWFOs34xibEGLxvteBMxbg8v36AuEFb5tKBUQWIU0UJng+UdaKP0M6/o5epbYMNKNPp6
orQyO4ELVf7d3UdP8l7YhfQuEwZsOqvwRipsnVTdCQxnmS6NNUdjEhKkFlVnmPOLgtrOHCHzDmgI
QfVXnreqANQ751gvS0+tygHzxyNWiK424Bt5Duzrc4vGhPNSDHNb+hWBLLCbWzeKIVIfAEZEsrhH
IL2cMPLoT3TNacZcW72OmM0N1Vz9m4Xj7+yazHNEgtE7C+y1vsojmdw8zvJwLsaUkWd5Nt1cSYQ4
uEAFTYMAiOf0IFDR2NkD6jx/wc2Tc8AmBTsMy0v03sFnfAaJHUtZPEUKfA12w7iNdUyh3Yi3pUWA
30hI9L2cAEKOalzTeszwJoSHiPeysEGCflX+UgE5r9fACD4CEEeIbnvL51lcuvuAsLcDLxxOzQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C89EB8358ACD10"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-content-crc64: aqodSFUZHd8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ccb23878-498d-4a5a-aac5-f236a8a1e39d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-30512269-9e46-a44a-9499-80603f50aaa5/test-blob-7b1aff3c-c8e7-26e8-c359-7da24a357fba

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24BA45D29AD3840"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 89317f86-7caf-4d01-a24f-e46ce19a0948
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-30512269-9e46-a44a-9499-80603f50aaa5/test-blob-7b1aff3c-c8e7-26e8-c359-7da24a357fba?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Wed, 11 Nov 2026 00:52:04 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-30512269-9e46-a44a-9499-80603f50aaa5/test-blob-76c5062f-9d67-41ad-55ba-8413718dee15?sv=2027-03-07&se=2026-11-12T01%3A52%3A04Z&sr=b&sp=r&sig=BS%2B9v8mKovF0LDNEOKxX8j8MNKOBcLR9rTiM8JBs9u8%3D
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 35738cb4-919e-4802-bb7a-33fe67db06ea
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:04 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-30512269-9e46-a44a-9499-80603f50aaa5?restype=container

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
x-ms-request-id: cf47b87d-6809-445b-b454-10d9d461dced
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-fb0f3b72-d14a-d020-ce8a-929ed7a68af2?restype=container

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
etag: "0x26441A99AE174A0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 117f56e1-910d-456f-814f-85445cfacc41
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-fb0f3b72-d14a-d020-ce8a-929ed7a68af2/test-blob-64a6f867-0483-6bbf-baba-c0ed9668bcec

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25B1BB022F97BC0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7fe40895-89b8-4489-acd0-fe7d194f34ca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: PUT /devstoreaccount1/test-container-fb0f3b72-d14a-d020-ce8a-929ed7a68af2/test-blob-64a6f867-0483-6bbf-baba-c0ed9668bcec?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
wqHGMALS5WYenrIOIAv2IDrJoTV+88pr3kmtXTZJTxzPi9+obk+4n1Wo3awfErDCk3JkDgVVc8/X
W1G4JYgw1E+VP5QrTrHrEQLf1hUeS8yZ6snE5UEXeRcQ0RP9/3nNdwlcitMbl0XAeP0DdZ25uBCE
Hzu+bO4OfsV9Gnyd7RGIEl4MwcH5fVKEA2xEEwR5VxgDed89DgoaTgwNnnzIIovre2M+rPdOiqHo
OWmBymrAA8NjmnQxSgNU8XO069/WvODhWJihO6ohtO4+VdShmYShTZq5ZIgWuTBf6rqDmZ7BEn2I
n3HSH8cYQuaG8/UusljvE55FHFdYyp5oQlHvnRpPfEJXGfkSzi7SoSKhkMY6MDhilIYAfPUlMNXS
atx2KKTLN3ay15lf3ERwcno1tjrYLREZjQiUTgBMMekkP2RRW3h91VlQh1meA7dBjwl68Hmb+jzL
XZucN+h2ZqWwOp3fHxYCuODgiKa3eopQUr/20UBviUQohf3d4J5w2SGz7sgaYW/yeDeYunKVFOMQ
S+Uof5RkQLFYt5oZJNdCb66FA4vBNvBPA1gJ187SknEazJW4R1qNTq4WwqrV2VRgVUrEEBBYThX0
2Xs7W2nihSUp/ldCiShU97Tcq3NGeSoEqIGEDoFgwn1/w27eUvNFMzyErNr9Hcwibxlbe6Ohrl9R
NrPoXnejyDzZwsa5daXBl3g3wcxPBou1Yp5oBUba3RUOjBs/XdXF4eSeI1oFaPpzmeMrau2TAjAn
MvvYO8L1/+Sxq+iKgTqicuDoseMwr/mk9Gxjr3Mne4rrGCrZ7KUhqCR2VL0R6RepiPcNqlFM94MB
NEZWkk9xiS9en2kQyYY6xgi+ulo8kwtUuid7GtA5niCm17heyxbUBMuNs0mtmb5x0uRIjj0pxaE6
Adco9W5fJAFJafHN2/ry6bWPr+DBpyFoCUjs8Q/jfRIWJMk+rA9cLo5IZC/No/fpVqSHmRbBeVq2
wOsmcjPxZuzftrcwsz2mMoBReUPxm2VRApprW+P8Vapvh+wjNbtbV/5D7e0/uKJn4WeVb/8XxCWG
1W+YhgoI42AMwStRgvzF9SFFrq14EUr3A3l8ZuarWMPGnWBLwtHzOgqMMvd3Fl5qz3ne0RZ3DcQl
oIKRjHx6YWhoiuWceTJPUXOj7N5SgO0aEZZszIasT4+bJiJPYa6OEdGODot4zVZGjn+i1CDl0iCV
dnrlDpThuzpWAFMQAPDFFNsNxHFhoURAJT0GCnputlMCuuszqAM8rFNRIswCNo2P3L9F1w6uM9Q2
pOhX27G/6Er/DkYEkmzX0RceEH93Pe+wdi27KN5FU4YW/AMa5dGhkTqCAydHi0lTbQb3kCNUvw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27C2346D99CE8A0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-content-crc64: f6/qIOFXYKk=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3e0ccf15-9c17-456c-b304-0e7f65ac546c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-fb0f3b72-d14a-d020-ce8a-929ed7a68af2/test-blob-457f7c45-3af5-69c7-ebe4-68bad74dc363

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DB47B1D87E52E0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4a4aa5b3-dd3e-46e6-a6b6-c8fc1dcfb379
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-fb0f3b72-d14a-d020-ce8a-929ed7a68af2/test-blob-457f7c45-3af5-69c7-ebe4-68bad74dc363?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
If-Match: "garbage"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-fb0f3b72-d14a-d020-ce8a-929ed7a68af2/test-blob-64a6f867-0483-6bbf-baba-c0ed9668bcec?sv=2027-03-07&se=2026-11-12T01%3A52%3A04Z&sr=b&sp=r&sig=aheV6ykjYagMgGMG9fA%2BWVjZiCQLCneQUujD9pNFnr4%3D
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: a5af8433-5f21-454b-9cfa-8d2b3ab842ec
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:04 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 17: DELETE /devstoreaccount1/test-container-fb0f3b72-d14a-d020-ce8a-929ed7a68af2?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5f577fc2-994b-44fb-bae0-c0ab117deb8d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-219c3dc2-6d3e-8c1e-7a16-486c869db3eb?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24175FFD1632380"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cd91e345-f45a-4b89-bb97-df75497a292c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-219c3dc2-6d3e-8c1e-7a16-486c869db3eb/test-blob-2d46e063-90cd-10e7-677f-670d3f3dd58a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x265D4C6A1C66080"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cb0ae200-b2f6-4401-81d8-1684f2fe4ad2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: PUT /devstoreaccount1/test-container-219c3dc2-6d3e-8c1e-7a16-486c869db3eb/test-blob-2d46e063-90cd-10e7-677f-670d3f3dd58a?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
sBqyE6MPyiwxPXifnASTbfdcK1jLmq3YXvLK3vJa4k4wfQm9m6+/snNw8AD0fvB2gtp1KnFaHxVs
2rSxRes51lsqbh/61tFHnXnlW6qt4+ACU1sX5bfc1V3zUMH7Dm2HNhmkyQ/Re6wILYz4dcNrv/bU
r/GPIvGjTpnBB4YQTI8MXiWRCBrQMdivDrcr42CZiJDKJ1979xMnAHt2D3Ql+OH97Bae2rfcA34Y
3xM5eGo4J371RiQvkGYRaQefWSFkiRbWLfdJ+63Y7iPgYhcA7ocQPef1MLK8zVywjXGwPalctFb9
Yktz7yzRHFcBTy1OEXp/jhs5bllkGl+bmW08KLF5hK3BAos8nE66JBNau34uYXz2MK6NIkX8mUjs
2Fa/lPOmh8p/jQ7vQ/LNfkpFCV7gbDfxRfgD62FnxGlCT8P4+48ftDSzrtNtB+27wKP7to/qC2se
zU77o5tpF8ikrPMu1YO6JVUqLL5jgz4LRyu9bA7aWERY2S5BJBCYSpYLyVv5jesgQJA5v9+tukoQ
71xwq6u6ylSv1vtUeQFEkuEnWLrjEblAnSt9oJhlqh/jMDS0KJ/qUP8GSrfvy8eP9S39hWGQLd2i
MA1/PSm7SivbcEjMj2pCPAi73McCUNFk7atrZyS+UwNWEveRaxPVSwCLFFt+wmXDukhZ1FAWn988
G099UOIGHRxFdX1ysNH05ZDHdzx25ipGp6zcZH+yQHIXVE/DV/sdhPY+OE3nUQp2ZO/ATyijxjUk
N6g1KrmdkzUKWluBMY6VqfNFOK3dXlaiZQCP8vFKc44anyBT51k9oKUX3feu9TNhKqU0Xo2IR9lR
ksW4DaFEwObNZ5JuQsGaCJcHxYFf9HDMLsdLFRUAklhGAVWUhJIE0x0R4Y2h8+jjmlb2gIFX8p5V
697Z+KrQzNQ6J0BsBoMFA/FkThPiKzveaHu/ChLW7g62PpizKttzQBS4Z8uodpTS8HyP86SLcr+j
+48uEcHCYzgxtsfqUdgW8A3+KcRwNvLm7BqVR/tqK8zYEC9MRC5T9QOTdsDN6J6keQKXjEj7MsSd
RyWnLRs9x4r6EkGpyazeqjPB3MAyGQR78M740p6D3d1qr/wJrMfnVq410tVd+q9WuOEVOlYEay4h
Kz1NRfTsdzRjPhqw1f5r2YUR/EYuHvUeoRq8bqOGZUPO6ICKmhG5SVuh+byUpuPjqWDQ827n8gxH
LqPaLwiR3dnW4ex+4D90WLPrjCU5ivs32cVCtnLV5vVzQ2tu3hlSEBzivcT2ZMghXJu7/GXnDaSn
o1VDTidnAfv3C53TBnmZmHwJV8w3QHX9IVnWGuqPizbGxjvDDsL0e7zJ/1kqTVYiIWPp3bbXcA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24B0AF3CDF456C0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-content-crc64: kPM0u8DZL4g=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf0690d4-0db3-426b-a0c6-d6f16f04415e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-219c3dc2-6d3e-8c1e-7a16-486c869db3eb/test-blob-10db14ba-416d-d21b-d303-b4f887a6ae7f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21EE0317CA25500"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 01a8e0d2-31f1-4b52-83a2-f08aeebfd1fe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: HEAD /devstoreaccount1/test-container-219c3dc2-6d3e-8c1e-7a16-486c869db3eb/test-blob-10db14ba-416d-d21b-d303-b4f887a6ae7f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x21EE0317CA25500"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a858c928-cc27-49dd-a284-5a09a458965b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-219c3dc2-6d3e-8c1e-7a16-486c869db3eb/test-blob-10db14ba-416d-d21b-d303-b4f887a6ae7f?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
If-None-Match: "0x21EE0317CA25500"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-219c3dc2-6d3e-8c1e-7a16-486c869db3eb/test-blob-2d46e063-90cd-10e7-677f-670d3f3dd58a?sv=2027-03-07&se=2026-11-12T01%3A52%3A04Z&sr=b&sp=r&sig=ps2D1%2BWM8MKBpBewk66Yy4SvQ3DUN9tsSbGF88sK8qs%3D
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 80c59e5e-80f1-4baf-a223-d58b520451ef
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:04 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 24: DELETE /devstoreaccount1/test-container-219c3dc2-6d3e-8c1e-7a16-486c869db3eb?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
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
x-ms-request-id: 4b148345-549d-47df-8039-a07041fac9a9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 25: PUT /devstoreaccount1/test-container-e3d855ee-94c8-eb27-d4b8-97dac34016e4?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FA2C8CFBE13290"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5201bd3b-1664-4c16-9cc1-16c6a2160e2e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-e3d855ee-94c8-eb27-d4b8-97dac34016e4/test-blob-178619f7-feae-f401-1e29-7e223dbdbe74

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_27
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DC121142D22110"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 25fb4c2f-d11e-4035-a990-73fb055a6938
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-e3d855ee-94c8-eb27-d4b8-97dac34016e4/test-blob-178619f7-feae-f401-1e29-7e223dbdbe74?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
TNkuydvHAiLEdFnK2++IwdHnHull8sEl7O87tKlBDpLs0Kuud+SkJ1O2HlM6XRDlL9YJ3CIsfloX
CNzri014g2XH3QpD2knsQvaWr9Rt64/fVYTSODFwv1JRl24IuZwFPZrtc38GolWMHJorls+GqR1M
DDXIpUs0Vh248UPa5IlakXE5f3cP2LMvRRuXRSmDy+1Ru6xmPJdPuR1iTbESsjgQ0QVdTCmmPTOC
mWAvnBH0NSZViSnc81Ta6cZarYsBHZPjhnMjJX7Eq31446M3Hx0MbRiKvCgOM92wgmJjTI+ogHvM
TBWd0A+nkd6rZA+xosqpTT9yd2Bq1FOVc6McYV7t0GMna9MHb50J4ytKY8/O/+CYuv5PNgkaYXfC
B11sizB/vZOsiTf2od6iaJM1H3GDx3PCg6ZgnppZDAlbRGc/nVj7y6U8IXaooRgfrc125UEGPj/q
qQeJHh/5Unwumlx2Y8s6OlTMR6X9GuGOQPDM4yfHVQYnVfNRcayFQs/5ega7qUkBO6rtOfea7Y4l
+t4uLG9VZkVWTg7X6cmoRwTWBKDa05eny6d92hsOjWhlK3bOVhZfoxPBZFo7KVHhRfLyw+juSidH
h2HH2IwpSMGlcr5S2vDudmCNGW48a6FWm5UpG8l/duBPhs61l8uGmByZlbeTj2sCBEyIYTG5Chy/
cTz3ACz3JvvdA1MhOd+UBoFRotXpwgwqJxZ89hWvlXyy9SaPj5jvom+7towX4Mtt9FqwZ2dH1q4v
zdkVejDmLW3Xb0O4BHbpYQBlLguAEkZLDwG6/y4Uah93YMK+2ic/1YkeQHCHtPDjxgVn4aeir7qS
ymsuKy0/wwUkQaS0KofYJlmCYdHWw1oR1jgorIl31LAHLA+8Ealb331rY3NLL5x9j7pOIE7pvAcR
HFT1FhZ7rWzzrf14GxWvJ4FUal/mxaebqh3OKLRiHXAIq/RVZslm77YHV4GfBXOln/jMlFGnK1as
WWv5rYS3kY+Nb3AhWsG47Xqp3m4m/KWqKIm8logeYYCdqAxdbUIxT8bxEZUChEU3E6fW/UzohlzG
T4T7+/sGbg7wg7G0W4A4eI6nNOoPp6REhILhSGMztCKwlh2+NlTL6qOHEgCTg7gmnoW9QVFxtqff
t3Z5JSaqvM+PA8RiekE63ElHiJWksAHJu6nednPQPuB23n/dUcV93FUxBH/0wyNEg2QHKi0ROwZ1
r2l8zEZbvsXk7JzBXIqEyaxAc6yB1PeGmvMPyROyZKJ5aKFcAQ8P1UW6ENeHgifZg2CB0chZ89tx
9jJSTPSxMYf5SPPoJ8icMJ1mx8Qg/hjLNUayMJPaH3XG6gvdvIhQCN5Pjjkz8FuY5aAq8isWUQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27035BBD5DB61C0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-content-crc64: 9fOUMbDQCd0=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 265b71ff-5351-4fc4-9574-a8bcbfcfdf66
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-e3d855ee-94c8-eb27-d4b8-97dac34016e4/test-blob-e5be1615-6fd1-98de-44ea-1a4bf2b02c49

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x204E0BE12C310A0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f4aabc6b-d417-452a-b251-c5c9b9f8c227
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: PUT /devstoreaccount1/test-container-e3d855ee-94c8-eb27-d4b8-97dac34016e4/test-blob-e5be1615-6fd1-98de-44ea-1a4bf2b02c49?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-e3d855ee-94c8-eb27-d4b8-97dac34016e4/test-blob-178619f7-feae-f401-1e29-7e223dbdbe74?sv=2027-03-07&se=2026-11-12T01%3A52%3A04Z&sr=b&sp=r&sig=56gcX%2Fgf1YcloKv6jpCpgSFSYVOW08dq4lJ3pmRFEog%3D
x-ms-lease-id: e0f29137-5479-ccea-c0f9-78b921466253
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 79ba54ff-5c22-45a5-994e-25efd820b047
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:04 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 30: DELETE /devstoreaccount1/test-container-e3d855ee-94c8-eb27-d4b8-97dac34016e4?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
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
x-ms-request-id: f0f036c9-e2f4-4b1e-9303-aec0bf6ff4ad
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-c41399af-7135-0aa1-dd5a-6f10b5ce1ddb?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26C2E49261FEE00"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b8182d6-9eeb-469f-b736-4334e654dd06
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-c41399af-7135-0aa1-dd5a-6f10b5ce1ddb/test-blob-469192ee-8ab8-caca-d224-ce52ce73193b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DBAB3FC10BBB80"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f4cec903-7f56-47b8-92f4-4e6e5cfa972e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 33: PUT /devstoreaccount1/test-container-c41399af-7135-0aa1-dd5a-6f10b5ce1ddb/test-blob-469192ee-8ab8-caca-d224-ce52ce73193b?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_34
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
JiwV3GwxgIg77tPD5LUBbvw1cqSp+j6jdLQIdv/O43XMPyTGmk/cfhmLiEee3iUnWAETf1x5MSzt
cWi3KAmIbQpd96WRO9OsWPSLHnH3BZaP4R3+umMZUw342CnnJFUPAxs8QeeAlh0tZidn7hO69mvR
KEfsibKnQ6OXmGOqxDSeextWu8SvDksA0VM8sWT6PeG9FvsNInlplP1D6P25gqHyyXL4ZDunIhr8
7LheapE+nVuC7a44kFmh7CbGbCVOR06xSejyAtmmFvPhETbBCypsBEuhN5XzujkZVncU4Lb0rqVp
rCCpTJuB29a6Vn8i4OH8WmfarA+5vo+v2atikTU97WKRV14Jw7iwIFu+OGO69naVGIVOGgKVsO2R
+nLvH0mgfGkckYiD8pevKYu0+oYr9OM1zHmw7tNf/KdweMlFwAERHbv6nWTuEibun/B34LVnZQWP
ulPQ8I2WvJXgEnrOaWiKot3KMFd+RrlTwU/i6BvyCRLDtgatQSwtZODPDQCrIDaH7T7XnTWtEXOa
fS8+s9R67QlnCrJi3GGwnMt2rji4p6EYWvvdGmvdFqSSE8P97rEMVR/3RBaDJRDcJwBpN2I64taO
JVnYnNOdivQOz8ids60aalkZwGOLlTTqAPNqdN5CVzHtb8lXM7hMWrkhdVVIPnNTTs0JISFyA5Ak
7pzfMhYVy3iWsETkwjagzGWpaR/fosGAFyUROTYQems4M0UcbSijDKrdsY4ubouXaFW7yZlwRUva
XxrwA5FChjXYq4/whF89BVx1AvEyUamaetHgVLHSx+76QQ0NswgYmypZVsL7puP1fcM8+kNapw5x
VYnAYTKDBuOh9kJRMFJUXWbG2frmntPt6tbtlc2rn5n/m11/Vzn31U/eWrCgpE1x6Jzck84Ti7e1
0nZblXEW9lapUpX01QYtzgOrB0QiTUaJfKwwzwvL7BCmyYTDnD/eyGRa91K4fBOWr8XLZ4NzkoUv
0hnE5idK3mWETQuBaTLDzD/fyFX00f+ZmR9G/4SMMzb/k8kmGeE9DxnsMy8HFUWSB5pEk8ovOgAZ
KkwHBN7h+BnVgdVonbNdorg8CJ7QkoTas/jpR6Bsz1nJDe+VNQs6CjoVMZNwKWrn5vAR8zJiSJjH
LVDl+LB5abJ8n5DDyGytAf5ku2DxaoqOAWGvWtwmZsRXzQi7VRKJm8jg84rZJB6DY/E0/o031sLG
V/ZPyQ7WVTjLbPpj8qzr2h+YEHb/tN1CK/fq8mg3IPdF9f4bOdG5Cp5RDrckIHFFSCNtnsZMxqIZ
DZ0X62LPlEwDHf2u0KBN3gXYraYlHguFpapFyYEx+S5bAiw0oh87gnpqIAJzl3iCH7/AdBj88w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x253FCB39F221B40"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-content-crc64: lFdHM6URnTM=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1894a099-0e93-4ac0-b557-09077f41d132
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 34: PUT /devstoreaccount1/test-container-c41399af-7135-0aa1-dd5a-6f10b5ce1ddb/test-blob-2b2b9de6-fdba-1109-0e32-c2a9c1708516

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_35
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x230C6F4B87E74C0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 41cff361-800f-4956-8a40-698419c5366d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 35: PUT /devstoreaccount1/test-container-c41399af-7135-0aa1-dd5a-6f10b5ce1ddb/test-blob-2b2b9de6-fdba-1109-0e32-c2a9c1708516?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_36
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-c41399af-7135-0aa1-dd5a-6f10b5ce1ddb/test-blob-469192ee-8ab8-caca-d224-ce52ce73193b?sv=2027-03-07&se=2026-11-12T01%3A52%3A04Z&sr=b&sp=r&sig=PoNSJhTdx10P7qOvBxTRf90%2FaYggQP6s8lx82Fcc1Yc%3D
x-ms-if-sequence-number-lt: -1
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 27dce7ce-b5a4-466d-b89b-419653a86c1e
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:04 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 36: DELETE /devstoreaccount1/test-container-c41399af-7135-0aa1-dd5a-6f10b5ce1ddb?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_37
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
x-ms-request-id: 4027fd92-5546-4b1f-9ba5-c55725478507
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 37: PUT /devstoreaccount1/test-container-a23d0e5f-d810-f782-afa0-4edda544aa0e?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_38
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x268E5C943C08560"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 24cccb17-3f9d-4cac-b3ed-36df8d111779
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 38: PUT /devstoreaccount1/test-container-a23d0e5f-d810-f782-afa0-4edda544aa0e/test-blob-a99bb932-c0c4-42a0-356e-68cbd9e84377

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_39
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x221C1DFDE3D8E40"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c124740b-058b-4505-9c53-330e2f475855
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 39: PUT /devstoreaccount1/test-container-a23d0e5f-d810-f782-afa0-4edda544aa0e/test-blob-a99bb932-c0c4-42a0-356e-68cbd9e84377?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_40
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
BoPa1uzQOPGIfziGyCAJYZ+48782dysNGjR8Gq4sbMmHs6M9lq4pjtVMGZCg/C+Plu0+7FDq2I5Y
zLy4VB1CWxNu/hR8y8rwj2Xp6V2abB4F7ITB7YB5ndoV5MnycTm3Cb19Mf0aEssiTV3rAO4wvl+d
smeZgW6T9WE6Z+YB/h0rMuCgHDog6tq4n6AjjZzr5CZpVL7SHYdP6jyc4KvlIU8/wM4OkKIkfMeN
4eLOcGfEToLAl6lfWBRYUDL+hAov031Q483N3VSERdj2RTylgXnU15EoJIqm32e6tUBvJvi9XQ1k
fYya9nAtO1LQaBPXs864Kqx5Bq7zqQNmEygUFB7fOecuQAPtOuEg++k31XdT4gJxt/xMRFdfcNSI
M+NIGScz8C8sqXLLyu/LWAvFu9OMEzAlo10ik/WPz88vZAb92OHBBORHJjmPpuwMgetMmbUA+yCy
InXJEF05nNmim2XpzX8pA7fuROz3lf1xFhIJQzUaLmnmS7Vr+POHDYlf7QqGIrNrI5b9ErYzuo14
WPpKMFmjh238AoHKvQvDZjZil6jy6/NenR+fHRuyspAo86D5Pd0wu2aciR8yoWWKOqt/0SLlhmwG
65I5A2pRSlDwospqySlZMttCVWLULPy6FOJwMuFtQ2wz81FL9rj7Sz7PQf6bIHCBJp5GojAKMr+V
f+6H4Rdvg19dNtXYDTwjRgojBOv+HvRx7gtCJqA8KcGRtXbJc2onX76ePumbqRhiI1wm5y3Ul2H6
FvILLVy/IQ0URljFWtKg/KQsX+AL1kXz3wNDFUGTvR0Vz113GzJh3xzbhmLAnciJhuuIpziB7j+s
GE1YewvLgIg6sIt0KOBxy3/DL0/iM0I6uY9WCxbkk+AeywLlCWMRDwbZhew9FV0KFty5vr/vyuUL
HcJ7dXVyVRyqVl3ejMEbsR9JCK1V/aQxS/Q6K9UhLgEc2euhlZqRZy/Qkr4AK4kanQyfpsE4tiAd
SSmANylHiShcwrPVehuFuKF+hWrlMR9qH47Igog/5CPLhExwEDAFiAmWpGnWRCLwGe0guTC2NxgJ
FhebfgafHN2QCvbPFahwePxgT4y2k9ts12iaHyryFUwzZvkYagoD9oiLRjksIQRFr0A0VeiLU4I8
LqadBfyznfWpm66uWA7yXVgEKk2hP7ZkVHDpvb9kqBN33DtjZfGM2KhEg4VWl1YyQviPhyk1mu/w
ObCLyd82RPObN3zSjvdneFGkXbswDr0Zt3vG1CDpQkFLcytAAA/IDT6Su2DaX7MAKA/YkD0zvyvz
cRFjb3DSsfQ6hxvLJndB3E99nlJcPljIxawREbIEGLMATY79ZJ7OvwlroNiXNAKXlrPttiDYlg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25CE4A8A05F14C0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-content-crc64: 5xG35K/Q6JI=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2504c8e6-f7ec-4592-9916-8ac7a2e61959
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 40: PUT /devstoreaccount1/test-container-a23d0e5f-d810-f782-afa0-4edda544aa0e/test-blob-49deafb1-9ef1-317f-91aa-797afe176192

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_41
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27BD00AF853CEC0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2e126d73-4ccf-433b-8b39-86cf0b0938df
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 41: PUT /devstoreaccount1/test-container-a23d0e5f-d810-f782-afa0-4edda544aa0e/test-blob-49deafb1-9ef1-317f-91aa-797afe176192?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_42
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-a23d0e5f-d810-f782-afa0-4edda544aa0e/test-blob-a99bb932-c0c4-42a0-356e-68cbd9e84377?sv=2027-03-07&se=2026-11-12T01%3A52%3A04Z&sr=b&sp=r&sig=%2FrgJx1DHx0ZceEmRa00zf%2Fk2JqixipBW2MiIRBAZEbI%3D
x-ms-if-sequence-number-le: -1
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 3f0e91e6-8be3-4bf4-b0c3-7457db40f811
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:04 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 42: DELETE /devstoreaccount1/test-container-a23d0e5f-d810-f782-afa0-4edda544aa0e?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_43
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
x-ms-request-id: 43a139ed-d7cd-437a-92c9-97086674c15a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 43: PUT /devstoreaccount1/test-container-445bb627-f4c9-ff0a-6928-6a692e6928af?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_44
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2248FF8A061D900"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 248ac8dd-d026-4a4e-aae4-e2d243e419aa
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 44: PUT /devstoreaccount1/test-container-445bb627-f4c9-ff0a-6928-6a692e6928af/test-blob-e49ecd0d-1f02-c7e9-bc83-d177851d2750

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_45
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F80EB6D1369480"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2725d714-e462-4033-8df0-71366f4b03a1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 45: PUT /devstoreaccount1/test-container-445bb627-f4c9-ff0a-6928-6a692e6928af/test-blob-e49ecd0d-1f02-c7e9-bc83-d177851d2750?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_46
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Ujw7B0KOpZQ5aRgZRiVEHg3VpCKM/629pN/gyDMWAieByijB21pQmBHHCmDb8LhD5ExcWcQGIlOP
fmJirtxgI2bwmHz9g0KyhAsQxPRM4bQnnOTnuqhieqjUMV347uo1Z+b56lc8RmAJqdS59l1eQp2t
OxL4eWm9jR7UKFHlupYh210NU/Zc61WD3RDUqYNKdu/ASrLXPe19O105Zx4PJO8+mBv/UO+mUVC8
dJxZ6eSaibJiJXDkSZ1wkBeZI4M3c7gglRFoSiX/GflhG8hRJFF4nt5rrf9/Wk59j8DXDS3NhADj
OFTSMj+NYgt3gi7VHmzFIIWkzMa5oTvC6rplJwzLlJbHbuz9pmye3krzCNcgp3FUEu2oKLg6KZYY
EEeEKDr/q+2XDq+Ax3oYBe17xpljokJJERUfI2zdjURV5ZUkGrYQ81zqiZnB1EpyjyLKvmP8tG4E
OhYk4IeBuYFrKuLk9Os3a9I8eRmphz3LrJRJEs7hWDAnIN+f6xPVaM8YVqlnjps3k1OQwDtVWrLZ
WTTzOKayidGyvNMLmH+/ZxBJkTGTYx34En97UZj00sUsxZHe4TAoZc3YtdHHK/vT0VgrC8mBRvYW
+iUnNjg4veoO3tLt4IXgIStku61MMeaEqIBAycf7q36byOcKAS6Un/jmuU0o5fDTSuqeHItIysk/
oo64+PQjEjJUUhie1R/8zxu1ZXeZW8KPbX7cXY7zUv0dy16g3KcDw6Ya1JPYNHTKoU1wk2VRpkfL
KIt1RrWjYP8agArBXPJ0saLRfocvtzgJErxBg7+YyyQX1LQcjnzxdnOTvbRqCEVa++LCgCe/nHFS
azT4Yt1AgbTlqoc+WCMl4AgUm/mEnwp354fc1Uv9VzhCySJI+BSWUjv/hF69G6O+nZ8fqwB4zssq
gXpVY6xo6FJO+44A3efzfUi9hRurucvjHjis3qw4yvpWHnaZQO+PlpwLbyAVvr+3Ky23ukmwfsiv
ckVzvAmmFjCUqb9xWj1ZLu5/oEqrzl949LN+gRCxpp+u6s2pG9mSZVjvgBUARtDvXYxaMd1+A6Pm
+8hWJ5Ug4gMfwm9vsBIV7Drxu01KeK3ijyOEVnXCMOYqwyAQPD7Dz54R4INggK15RUSijEdWm4Ia
c5hxnIyOXZKIRezyBLD8LuyvOJcpgQ52ChEwH6Of0yid9simUTIRg4Px2DrBh0CTpl5apmPr8PGJ
+5F7XT7u6XHEVA7oVdy5nbQUOKnTtIPQnXhFRC3EsgXWHVWhliZEAu7J/DIyqlCBoAiu17hItUYO
q7/FqKVE/6IJETiGGAeNzzW7CrdQnfInxKMkFtpMjmcPkupmflpIhf2QKZgX+ogAIAiDjKqPvg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D6A39233404EC0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-content-crc64: EoTHW7FF3jc=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 99783608-b0e6-4a52-8ee3-c0a1e6ee0a4a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 46: PUT /devstoreaccount1/test-container-445bb627-f4c9-ff0a-6928-6a692e6928af/test-blob-ba8573db-74bf-0f5a-c91a-23f5d2c902bc

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_47
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x200F0249D55D7A0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d5bb350a-aad8-4c37-9293-59e62d672cbe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 47: PUT /devstoreaccount1/test-container-445bb627-f4c9-ff0a-6928-6a692e6928af/test-blob-ba8573db-74bf-0f5a-c91a-23f5d2c902bc?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_48
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-445bb627-f4c9-ff0a-6928-6a692e6928af/test-blob-e49ecd0d-1f02-c7e9-bc83-d177851d2750?sv=2027-03-07&se=2026-11-12T01%3A52%3A04Z&sr=b&sp=r&sig=vynC4qAiQlLhmjjFpyeuDO%2BcQGp7IkW1iT2q1dX%2FYbc%3D
x-ms-if-sequence-number-eq: 100
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 74829a91-0563-457f-8c66-14e6050cd4e8
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:04 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 48: DELETE /devstoreaccount1/test-container-445bb627-f4c9-ff0a-6928-6a692e6928af?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_49
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
x-ms-request-id: 2b2a209f-53f4-46a0-9533-816d36aa5115
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 49: PUT /devstoreaccount1/test-container-99ddd480-75e0-6545-14c9-6d15468302e3?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_50
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D905F40B4B14A0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bcff3efa-4fc7-46f6-a3e7-65c3253de78d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 50: PUT /devstoreaccount1/test-container-99ddd480-75e0-6545-14c9-6d15468302e3/test-blob-6d6efe53-fa0c-4095-cde2-26b1b0076520

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_51
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20B389ECA3F42A0"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e2de9d26-80c0-4edd-91ca-f34da3188be8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 51: PUT /devstoreaccount1/test-container-99ddd480-75e0-6545-14c9-6d15468302e3/test-blob-6d6efe53-fa0c-4095-cde2-26b1b0076520?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_52
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
+binGSXU/plyjhrn/PP08oEU97A/jW9lLSCl9gdEyUUYP/waIemXq9ZDJlJaXWkh1HqTMotRo2tI
QusFLgeSLsTUz7z22dCYfUza/GYcCs+3hCKMsJe6xpyQ0d/9knzPsfiNhY6tKvqp+7Q/d6cELDcb
TqrlBX0tGggfZgjxmuvPC0tujoRBCVon47Xiek/0i6Wn4UTS6at7YGqFjcPyuGHJcGxclp2z2kRP
vSLISqC5K9piSbim/CGf8i4Zu3yWNCtUGAnjmPUI9Af/gyuJsxXJzGHpkG6oInNKvKNvmR/HuIn2
czGX1pLlWVSxp3n1Fj8YT+4araS8q/aVmNxRmVvnOMqikj/kMvbPAzYa9nv6VaZkVkkwrArkOsc7
AT62lMD5ym6uUoP/NB34S6ptobV6m0I27EIRtovAvVh3qDG4GW52ICwMSwIiZCIsOGFfd5gSwGX7
f6d96BPj7pQriIvsPzE794GJbVA/E4gg5H4pYEa/ZefLvJnH+DgZKV1t99yXQPgwJH8XiVMVu2wf
XQOUuY1OayOjIIKXdP9Ib0Py0RysiaOF+TzHqNyUtQEtp5o0hHDPH4u48x92mK+AzhkPIulQc9Rf
D79RhsNHD2uBas1kE+vTI7GQ85WED2GMRtnChJIX3TTG1XWwfZnHceS09C3iHLouPP44v4A+2/9e
xT/qhIrZaoyYnT52IqYYyIGx0BszqSoelEiT3x60iPl1UrdZ3e1a24qhSX58uBlYH/b+jQvkKhwU
y+9BRYtu5BVEANDvvuuTV/SRkl+sodwvO78ntfrukCebRBH9GJX+MmVoN7dIaWALazUWU5i8aCkT
EgrLRy8aVnCpU3rZlT9fkl/6RGkl5tJfHErF1zyO3tzn6gaLM+s2TeFGnxXmMdX2t8E4wiO/7Ss3
bCrlVX40GnSd8as40150xPaI3ka8eOp0ziB6VRy4KPzaU8bAUfhjEoSgSD8qveNiw/0tNw/le/M/
cIZducRX5MmuXoCXtHP+JczBGy+qShE9F5Iei/Dt9NjTgOBxBVjASGR2e15jyg+KLxJCI1/ElCV1
IKEyOFjZwWqnxDOSjB90AdPLNM+y2kyCk1zdq9F4D+u7++W2jQ8Lnbn0uwbb+KLzzSGM+GBWw0ZU
sKX8+xaYL7VI15E6vXPDv5cVvR5Gppu66t2v7BaLZDifYd1qDqKjW4xQkyERuBCuyTnJQQUnDgkJ
QhA46UKfvHJYm1uWWLD1cWKS9hN5qTHMASLdwiMyd1PUYcyRa3JJsdauuB20F3GI1M+jlBj1kJne
a+gfwvpPJSMIwffkYwbvSUQ9yvAUGOmxVe5Uj+M739Ays/+KKe/bX5L6rFZ6o3DIs0rTuMWoyg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x215DC7DDCB3BF20"
last-modified: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-content-crc64: h9BXmbl01mI=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 63c83e82-0d40-4843-bc12-7101627cc52b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 52: PUT /devstoreaccount1/test-container-99ddd480-75e0-6545-14c9-6d15468302e3/test-blob-5e6a6155-6b1a-3792-b17d-8bdc9867260b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_53
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26F40ED95B16620"
last-modified: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9555f325-32f6-4410-8460-9ca992fff843
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 53: PUT /devstoreaccount1/test-container-99ddd480-75e0-6545-14c9-6d15468302e3/test-blob-5e6a6155-6b1a-3792-b17d-8bdc9867260b?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_54
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-99ddd480-75e0-6545-14c9-6d15468302e3/test-blob-6d6efe53-fa0c-4095-cde2-26b1b0076520?sv=2027-03-07&se=2026-11-12T01%3A52%3A04Z&sr=b&sp=r&sig=sqC%2B%2FIknKeTLPsvkuCENbsynjiEZAOrVdfzIG46ImXI%3D
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-if-modified-since: Fri, 13 Nov 2026 00:52:04 GMT
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 213bdab9-f111-4779-8cc9-75a6214b771d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:05 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 54: DELETE /devstoreaccount1/test-container-99ddd480-75e0-6545-14c9-6d15468302e3?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_55
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
x-ms-request-id: fdeef24a-1be9-4e30-b8ef-64d6c7554657
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 55: PUT /devstoreaccount1/test-container-8babe88a-82bb-65ce-fcba-df7354f1bfc1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_56
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2728CB1131DF1C0"
last-modified: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8c7537e5-23f6-43e5-82e2-4a002835781e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 56: PUT /devstoreaccount1/test-container-8babe88a-82bb-65ce-fcba-df7354f1bfc1/test-blob-71c65285-7a2c-d225-59c4-3face6c2d6c4

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_57
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x227839AD3914500"
last-modified: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ddafaaa4-05c2-45e8-8e1f-ba56b0d72ef0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 57: PUT /devstoreaccount1/test-container-8babe88a-82bb-65ce-fcba-df7354f1bfc1/test-blob-71c65285-7a2c-d225-59c4-3face6c2d6c4?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_58
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
TSp9V1pJsOhrNruPb7mnZbsaJ8db2mXTkgViX4we47+9yo9u6c+wQDjDH4TGP/VDEnq4Ocr4ZXPE
qsRV51BcTFL80aUpOXvsaeaPmLrgDVMPH00RZqn0xWQcqT8LW1noZ9Ixym1QGdn+y8/jaM245J1x
RccCSuWpBwtADY884Q6NpzHnr0LlvwZ0E5vaEV2XY8WimhWR5R3siMJiDwtJwurBVcGc0TVai4bB
jjZKzvauqarKmUf4/MIT+iaAg6/6K1GwGLuc+pGPSA6Pz1fmornMs2ZgfiijyFj/iNYO2gjXxmLl
mbU6Eq4YOlE4aC1qLVhss89ImqwoDU9inHK6gW4GuAj0AQgDkaG3R0PXamArlFt+oiY4jiy2vItm
13U8XbniMrAkditPaCEukVJpUKPvNwgXPN9HzSrcPkR8nbore+mJ9DevBh0vLjkFCvzZTGvodqBs
JSHam2WGSDjm08tnAhVo31xsQDDr5w6lQsItAvHZlCcZvlbIr1nSKb7kSVptnQfncW0PfDVvgT0T
NFiiWEVHDT+jTkO/oC8CmRZyBp6zOKS7RpGDyRfxqTwYtXoAL9B5nTsbyk/DKNE9DeIf/XufYPy0
5xKzxEQnsqQGpuq1AmlF+Glil25U9x7ARbw00qvBeVV+TEi+xdj38xirvIHmiAp42QURPMiOX/D0
836H8t/5RSyVN7UhhzOQa6RVqTqc2r2xvPimrz2M7+1YydFabwA4sndUUFFVV1LRgdAjOLW1WBjB
1jbnUpXvCEfIyL1hNvykHffCR4psXGSm1S5sabc3onG5mJjJUV/hZUcJjI6Ub0vTfxq98hCOVXrS
QH1ngp+QkCZMqJ1j2syY4OJCYs/WEWXimOmceq9hKkMe9xDheuKoefxoSMeucKROJREuTPKr+y4Y
hOq19BZ26n5ZReO7tmYAmunSbcmeNChFTVSdMt1Rc/vhyfX48oXm8l1IVCrBk26rLbIJ2I5lelDB
cKbB2LegCNLn2u1wB6dj7HtrVd/+g7rm8gUrR5ptfE+lNoLeJRmlqExY2rmBOiYKpewS+SVwwuzs
2uWydMA4el2dy9EkhcdhxqyTpqkBZLjeIKGtWoIqNXOV8ko08jOLIF9b429U5SAlsDJ43BxD6nYt
1FMfih/bc5Vdj5J9LdR4B4ZJpoBIiTuAiKlPsVhXUgfTBh7fbJZAgHDZ91aNp4Ne/9WW+UT15EoY
ngF1i8I9BjyLqSa1mJvwCSYQb5Lk8uAm8LGDwFnC3iHUx82UyvSum/EaAv5cqWc5pvAe5XW3NKsg
T5oQukXjycsF4dHOWz4xYtOgyvDiyUdKSRloo/mrHJIhdHtaneGrNjkzV8iVa0uy7YKiF2q7PQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x240DAF4AA6D1180"
last-modified: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-content-crc64: GYH0uGUgsrs=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e6afeab0-ee2f-478f-8d21-6dadc54a97d7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 58: PUT /devstoreaccount1/test-container-8babe88a-82bb-65ce-fcba-df7354f1bfc1/test-blob-b793f4f2-72af-b47f-ddcd-b6b676090528

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_59
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x230599C030B16A0"
last-modified: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 57f8da92-7317-4591-a8df-0ffd55522322
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 59: PUT /devstoreaccount1/test-container-8babe88a-82bb-65ce-fcba-df7354f1bfc1/test-blob-b793f4f2-72af-b47f-ddcd-b6b676090528?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_60
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-8babe88a-82bb-65ce-fcba-df7354f1bfc1/test-blob-71c65285-7a2c-d225-59c4-3face6c2d6c4?sv=2027-03-07&se=2026-11-12T01%3A52%3A04Z&sr=b&sp=r&sig=meEqsVH787KColVmckDLq33mzBsGqMD0%2Fiu4iCBG7xA%3D
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-if-unmodified-since: Wed, 11 Nov 2026 00:52:04 GMT
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: d35afb0c-643c-47c0-9256-7790e9bff081
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:05 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 60: DELETE /devstoreaccount1/test-container-8babe88a-82bb-65ce-fcba-df7354f1bfc1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_61
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
x-ms-request-id: e21e371f-c6c0-49e5-98f9-d852ead6da28
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 61: PUT /devstoreaccount1/test-container-07f63766-70d7-bb7f-1460-fd0356bf65ef?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_62
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F035ACE7612F40"
last-modified: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 89ec154c-6ae9-403c-8520-0398047abdb2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 62: PUT /devstoreaccount1/test-container-07f63766-70d7-bb7f-1460-fd0356bf65ef/test-blob-505eb470-5445-449a-1aad-73419c1fd27c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_63
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25800E2B6880680"
last-modified: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 34d6ca56-345c-4e6d-a6e1-65049ddabf8e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 63: PUT /devstoreaccount1/test-container-07f63766-70d7-bb7f-1460-fd0356bf65ef/test-blob-505eb470-5445-449a-1aad-73419c1fd27c?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_64
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Fr6vItYEjhLTEZNexG5bT78WRq/Mz+yCdNijTnR7XR5ox6C4WuJRYqnjNMbcIfelBa5EP3m2IkfR
La7+YD+dV7N09f3Oo/XcxOMG6ZompVLh/UnGNx2lsqRY5yw0UwFpRd0SZyz512K4Z3uVsDmtqohb
HWP21h+Vz0NYdbvJqHDinKO8Ez0m5ybmDs+iEAJrqzyk2Daecm6+fZjooGGm778KshOV8JdKNDU8
D8hP8r5B7cl/Jc86RCk1/palPUbFQB8QmF3u1bulWaQAYWOmborZp7OXJsrv0G3pYPIApfbvd8+p
PlphUhcO2ssrOePGj48My5aTLRlUIcjvBXXJpLStEemT/DAveFWbiEz+xJaKItBi9NlgXEm1VB2S
cU2hRTUXfSj5M5Jf3FNA+KTMVlwxZeKkZrDaTLWg3qgSnQcH+UMX50duke8+AxiGIGSk6P3BYQxr
/N6FPDByWVTqTD9MOP5htW8VwtPyZmOXUyxR+/WqUTv6nPxkkqoW+ziaVLbZOudlQzOOq544eJZ7
7egDIV1eP/sDUZwC/CPF/8abVxKtvhlF67fCG6WdwiRl6aTBEtraPBS61uhLYkcPyazXnCCEzi/P
vjWmnCNVZY53nBJ/A+zswRv98ugw+olws1L5xSUD4Rt08VSkNJ/wZXBa08Y0kMXA6tsEh9xHnsOs
NenRW6Boc7v3ChGXSI17DIx31ifCPCKMOdpK/1o/LVOR9/62HwnQ8V8LPIazKKJOiHtPz8ec6vnG
RSLFHnRguNy+BlCOxOyDp+XHt/+c2BE4/Hbf716L9Q0F8NrmCtPrqoOp9SFSv8OOyyfi1DL5KmwR
jSH+gch+MhFCidQSnJwS3Ax78uPv5jyyUCQ2qSHbC8Zt1X2x7Ci7K8IQDzbvey6L0PcmfjiIIqfk
SzGkSInwZ30OpccfYO/kwMYh3tYGw9X1q9gptY2N5LLWzKH3FuI4IKe54NZna28HQb1xZ0PQ3ohb
r52xxrLwgMAUSJRO7Knj6b4uTOL/jT9pInPPHH1vBe0Zm2dFh1n1yGAVUyPbuFQUjX6EopKlXCFd
SKM/IGNCpUKmNFFCnmFlOYSB6TocjWkeu4//6mNbcz5G5z+1tqf8067gNIQD0e8cH2kNI3PmQbo6
IWXUQ7rfS8ES/LYir4LchRWMO1nlGumg48v6TU/LX6aFe5VCKJDzAenC8dU4+W/mMZ5dWgVgVAZ7
NGDu5P1xR5wQnTTtmV2FmDpwIikTZ+lcFBuxbQWgJCaOxvMwBRzrUak5J1w6+JhB2MHK8DLdZ8x2
ktDiwNqXcHkOX9JpVZMehdF/2j+MIRyDb5RD1TT0sV4nuXNMCZDPobfjLJnF14MurGpgXY2M6g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24557E914191B60"
last-modified: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-content-crc64: 54rlhwvgkOQ=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 374b1863-b8f6-408b-b317-c7067b234ff4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 64: PUT /devstoreaccount1/test-container-07f63766-70d7-bb7f-1460-fd0356bf65ef/test-blob-8839af41-f5a9-bd82-9711-1429c99354d1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_65
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C934DDFACA2430"
last-modified: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ac9a1f89-352d-4180-bd9a-5614753789e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 65: PUT /devstoreaccount1/test-container-07f63766-70d7-bb7f-1460-fd0356bf65ef/test-blob-8839af41-f5a9-bd82-9711-1429c99354d1?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_66
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-07f63766-70d7-bb7f-1460-fd0356bf65ef/test-blob-505eb470-5445-449a-1aad-73419c1fd27c?sv=2027-03-07&se=2026-11-12T01%3A52%3A04Z&sr=b&sp=r&sig=8DagQjUdCKzX9zlKWUS%2F7Q36RR%2F%2FOfgpH92lQ4JBbHg%3D
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-if-match: "garbage"
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 28cffdd5-061a-4ef9-9222-ff5ba71a8b5b
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:05 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 66: DELETE /devstoreaccount1/test-container-07f63766-70d7-bb7f-1460-fd0356bf65ef?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_67
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
x-ms-request-id: 01ae23e7-f81b-43d6-a6ce-1c80ec2eb0df
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 67: PUT /devstoreaccount1/test-container-9702ce9a-3faa-4d8a-1c9e-11eb5295e60e?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_68
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x202C96F1E59CE60"
last-modified: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 63312898-33d6-47ed-b30e-5e0c8b77e8d3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 68: PUT /devstoreaccount1/test-container-9702ce9a-3faa-4d8a-1c9e-11eb5295e60e/test-blob-fdc3b48c-b2bd-e106-cf8f-7161d64c535a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_69
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CCA145810C0FA0"
last-modified: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e28d3f95-d3b6-48d3-83ed-625b7a13d729
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 69: PUT /devstoreaccount1/test-container-9702ce9a-3faa-4d8a-1c9e-11eb5295e60e/test-blob-fdc3b48c-b2bd-e106-cf8f-7161d64c535a?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_70
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
2e4frVMEQHoxobgzP3F7hlmhp80cOtEBJOxrC+SXawErBU/adKZ+lo6HZgiHVw2rIoqSsO4Z8Z8c
HohnmDSWmTW2CDkhoRKzIxA+ldPJes3ev+hZBboTERSwvVUdFv1Z8czS0E7TiYF33oze2lzLU6S7
iNhMPZR6o/YlceO8lg0S5aQG9ql/CzZn4SYuNDa35GmxYo4kDbM4VyxXrRidukh/y/W4xF36O32i
5FtuTG+/box5CzR+7dfwzp59J10eySbdrmhB/iALtyYQgilXyQu8mD+LJK8UAN4dyPa/fBQfhBo0
kZ4GfnBsbVMObWuumASSwI8ek6V3yK2KIzYpTDoR8f0OIzhttRnPHrZbBpJyby/xLbuFAfF1vcjw
fFo5QiEY/HxtoHXMJQt1T3TvG8IaF7QGOB9/jO8MmGVwfDm+lduUQgoWBc66JAewD7J8hqEG1WSm
MwkCmXCMYAcPW6nRtrmYWti4BBLlTBQXznw9jxLDaqbUGGLSkqmZiaTHqshe31n45CvJTdFSweb1
6sv0T9D1TPEC/Z5XxsgvHnpuHaFLue8jRKvm+hzVglZ73KfdpTrT0V7XW+G6oR1jmS9W46NFqjDb
0AolD1HULXpI2+ogUXlAm0xDc14NaKONgmDtfp+yNjF2AdQwrcIMAi5ncsUzQke2FkhXATbSzmhn
l4zw567blaW4qlCkD+2JNnEvpvbdWT8ZNmdWWzT6ozNsyRU2HBp/i9wgepj3EQdazcvFoyhxiT5M
17BHhDpwvgYcOEbXUxpWsBoZvd+mISVg+41pNAAL+j/X6URpOAeir7yS2tnAg3mwb/MNV8xepbWL
5oisB4kGET4G/2nV7HcTdw0iFEZMn3gTuMUN/aJzeESO3VF+9agyjMmbuoMP24J7+uC/PJBvP0YQ
mU7D+BSbk4YlRg4mlYJl74h9seX0BN1DkgLCszyzH54KbVxZbpO0/yb86pRzVGVdWUwI8Y5gG5Rx
gGYS2d9KcidwGycmC4D0yLG/9xlJ0D2cZFrvqi0QqVLH6O4soiZGsndsAjk+Nk7MFCndoSN6KLAp
dXSFWsf5YHHVXyOSxyWKeEWi3M0EXi4LI5YEMgguTMA+Ay2ywViwcqLHaNcqOkwDUine2EviJRZG
eTcw9S1ppxNjVMT42Lbs8WkrPPVW4OlKAeDeT3N0W94WbEcgf310XsHEx+WHCnly8ufht+gg75hO
5vRMilef7vjm4Wxuy3Hstt40khkDwvZmbF2Lk6P19nyv0pmJJ9RpJNntoSkNAyZ19QAK7Fx/SiP9
5R36E1tV8evvv/nYYo4Kym5AFiHNWWg3Fp2i6gkfL4h2jEG2bxB+l7A9HkMtnZJyACLuPzQBLw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x254DAA8AA8587E0"
last-modified: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-content-crc64: ox4vNxYYUkE=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ab3f65d0-699a-4986-8454-b5e4fd1a0d1a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 70: PUT /devstoreaccount1/test-container-9702ce9a-3faa-4d8a-1c9e-11eb5295e60e/test-blob-717ec15d-3b8f-0a25-780b-30e9e731f053

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_71
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CC80A178778BC0"
last-modified: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 543d72ff-fc64-4180-b740-6bfc7e8f94c0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 71: HEAD /devstoreaccount1/test-container-9702ce9a-3faa-4d8a-1c9e-11eb5295e60e/test-blob-fdc3b48c-b2bd-e106-cf8f-7161d64c535a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_72
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:52:05 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x254DAA8AA8587E0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eeb22648-7acb-486a-8788-c446a856d7c8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:05 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 72: PUT /devstoreaccount1/test-container-9702ce9a-3faa-4d8a-1c9e-11eb5295e60e/test-blob-717ec15d-3b8f-0a25-780b-30e9e731f053?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_73
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-9702ce9a-3faa-4d8a-1c9e-11eb5295e60e/test-blob-fdc3b48c-b2bd-e106-cf8f-7161d64c535a?sv=2027-03-07&se=2026-11-12T01%3A52%3A04Z&sr=b&sp=r&sig=fCMYTe%2FGODb8kcb4CHVa5iLuadDX6qHfV36vL5m45ZI%3D
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-if-none-match: 0x254DAA8AA8587E0
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: d977831a-d2a9-48bb-8ff2-911811c2e9be
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:05 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 73: DELETE /devstoreaccount1/test-container-9702ce9a-3faa-4d8a-1c9e-11eb5295e60e?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_74
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
x-ms-request-id: c8b08bec-79db-4c53-a58b-cd83fc593854
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

