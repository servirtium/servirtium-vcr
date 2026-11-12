## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-710d866e-e4ec-8114-9180-85327f2e4654?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetTierAsync_LeaseFail
now: 2026-11-12T00:48:26.7056548+00:00

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
etag: "0x1F50E0236D8F800"
last-modified: Thu, 12 Nov 2026 00:48:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2868fabf-ab43-4e50-9972-a150f6a276a9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-710d866e-e4ec-8114-9180-85327f2e4654/test-blob-895f63ce-7136-696c-3817-38b033c6ff49

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
KIwJZ7TaQ3Ck24QpMMTiB6KM5QnY2E884CnPPcAWBDDdOVOeF38sk0KdzBFf6lDNnn2Q80g9e1A8
zIaKCgavjtdTTPdxQ/AiX1HHOws+3PbZAp9DhhDon74CYkr4oYk77T45DJ1ZW1qNbZP3dj9E/fCQ
sQhnbAfGa6w5b+ClKr7Ii03NBNBYf6ZEtRh98Sl+vWRaaO+A1IE2c6HwIOx650PVLurxd/kfNzJh
IrbvSXmDurF8S8HOR7bMl5EuZ1+5ys7UqMI+jEVrOjG9H7LKRionbWU6/ZuBBuY0JeBn8c/Sp1jo
G6G3RC5sERGQESgDAlBnBvn5f8wzUqHbCmdlA0lh6nda4iuJcCk3zuuK8fW+MCKPAOrV2CiLtMj/
2znGBg7ILyaxqR8l3ZbQwrDhqGGsHdlE1QJeixJOzi1iiZXvcMjdwcHODIYDaSJUBRZ4qgxnU71f
gjALaaMUY9vyw1QB4FLoA+af3RFTQWvgCob81SQh+zbXj+2X0lgduqmrEKbOUiTDkKclx3WsDEHE
K18dGI220cceKVFkUDCOgiNnpzDFEbdhOEV9/DTAK4Ks0qf4/6Ic9D/fsCnTXz92lkRSRGQQ/xmo
vOBHOdSTXf7Ot36JloKAS7Px5WGNjtgGBmXvbecenNKNT0PC1LpqS1IqBafA7P/C0fixHxm4Gi4H
QDNvo+8Xrxur/EY+vnb5hpkOY4gwRRlmLZzubXy51TUVupSH+6hiE1WMFfC4gxKBuJh/qbel1voZ
CHZTKEKe8iYRKQTicYrxrE8zpDAoramJbLTjOSx+cOOZbfIxD+oS7SPKp1oOnkYNjv1ncTLK8FvN
ybuNurn6k7ggSQSYwJxlILYNXgVOe85u1qsvFv6xznyXZEUuhDJqzxSi7VVCdc5gAlB7vZJVfk7t
H+QNy3y6b3qHAFtWNpyEo4/xrI14LGDczhStNRHqQeX3QWVOXAOX537aunRyCcu09xkDZNLBdPOD
MP1oDDlonb52X/U3NUaLWcQOnnHrasRI+D735t0SNcxxyisGL9tFch22+6nWfcHTeAoNstaBmMY4
IBP6cLbhYykpxWsbhCrpyStTNW4acXt8JG7SBIP18DJkzg7HSgFn1JiArbhWt/PgJOmqLmJXHa6Y
fktHDl6mM9U5trYbIn4q7GDWmsTCJm178uCaSsLPDbBgLsy1IMY52nnjHAA9xAFqgEEBgILp1Vfe
yxt+C+gTaqkFuvOydMuancBL3wlsPi7eMMqAzY0td1h011Squ86Q0LJXNwkOuAt2Z+LCnfVOcY3t
n9sek5wb2EOaPZ138OLyuw9WFAck0He+CWaqa9liJWXHvBvycT0WO1/Gc3pu/nYA0OLm91yGyQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27C74DBDF6FD5E0"
last-modified: Thu, 12 Nov 2026 00:48:26 GMT
content-md5: CqEslZTj8nmcTzOWXd4adw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ab3d8f73-f330-4e19-8e3f-d79e2b7fd613
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-710d866e-e4ec-8114-9180-85327f2e4654/test-blob-895f63ce-7136-696c-3817-38b033c6ff49?comp=tier

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: Cool
x-ms-lease-id: a8d840d2-5d5d-50fd-0bef-a99bf77c2e08
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
x-ms-request-id: 565eea0f-faa0-49a3-8dc6-3f7ff4f1fde6
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:26 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-710d866e-e4ec-8114-9180-85327f2e4654?restype=container

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
x-ms-request-id: 06720d80-9c59-4279-a5c8-b8fe6507de23
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:26 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

