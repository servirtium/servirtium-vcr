## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b1a3ad29-1307-9356-0910-2f070f240c69?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetTagsAsync_LeaseFailed
now: 2026-11-12T00:47:01.6021552+00:00

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
etag: "0x1CA3B9AF9E13E10"
last-modified: Thu, 12 Nov 2026 00:47:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d9d23b6-9a0e-4c46-805a-6862936d2760
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b1a3ad29-1307-9356-0910-2f070f240c69/test-blob-0637f15e-88b1-286f-84c6-be2811a701cf

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
O8OkJwVn+SsuwX5/R4FRFOMZ98aISUmgPnosQVUugmIOYMtLgORj9/cM1/AK7+ADdalF9687RvJ6
A+iLO7fWAD4bcOe1BpT+tQDOfHFZlk6ZKMyr6Yqz0xnZ0H382Lw/Ntex7n/5Tm4VRkKubcqAIWyZ
8RLrKhe0aJ3N2zUXAt1EjkWap6jPoNpdlaJIBGVPWK8QYuepVAu//YXhK3I5/kRkad6E5nnEylA3
jpV0a2Q3foKFBp/2mjo62qki7XVnI5Zd45qHynI1S5iWcsV2SpEhqqzwtPelbs+kSgvQodza0Gv+
F4jJsLQPT7sHXyh0xJAYAUPJd2+euHTL4oBnZam7u6JadzMJV/r34GQ8nQ6mL4Z7t6CZEVj7X18T
/c00qOoRS6OGGkxcD6lI0ZcKYhpmJLP57K0IIapJXhjT9Voswzd6K1FrIBU5Hqj3UD/B8P1Erdka
Orw8CCn5PLs0iBlPHA5fkDbI+gSewM0FEdFrh20aj0iBEYh7PSIncuNZBJWOqDQxYmDGe7LUfHrv
N/dYjbVOGfnRzgqF41IUoYggRLs3dmidOSUNVBOVrJQOjAYrz+QuC+ucvdoprH4Nstopsze+t8CO
u1SPQMXlPCF2dldL6NKk8jnQm7iOc42n/6I5a/hdT9VGnROPnsoltoG4szYmwckIhcH+7hsHAEfH
6EAjrNApGSaCBUu+FFNvquU31cBWgD7YMOY2XmG5PpzLyLaJAQqwj5oPpLt9SXBujkM20CqGcGgC
Snvp8rrFyceu8kyd5anahkUmR9yCW+Z2yNAdgm1yRFhOhreOxp3fStr0zlYk0KiaW0nkYCmLgO+U
cynpqEZZPK70T1/xTL+oRv0BjoyQUfcngickjeQuwgbI+VJ09qKUmpKoL4FJqA+JPBkrivJiBCIx
wiUfNa7JxYxYKVJsM1BbbPP65yJ13doXmlDLAjgTZfQwQjN8dWTj32r18H+8HAnI0B3+Zx3/u+RL
B5pe/sJURcReO/Ec3veOFwi3gO1bW35HAjIbFP3XMYdPMW7KheCnoKu7XuAYrPImcFAVSDr38Ksc
FvyQOTDGhgpqzayIxJEnD99Bn/2dL1Y/9KSswuhMWEHDrm7kF2d69NfVrd9Gnau/7ThbtVCtfuel
UESMGcQhHXRqxRUjQ/h3x6smx4F3+Vf47dSw8KLxFS+HPsYj7tsSs5Bq29eWm6pA4+6lh7ZlLlfs
kyvwcSzSebDlmwQxVNjPExPxDB1/YlIqcA20TI15IQ9uNlqwIkJjmGInsP+lDo4V1XSidCI6bDHZ
xQEfHiwjbHr1wh19H/DRjnS7WLJShWF+nncY1q3tNMop1lxAQ3o1A0OFsExxl7WE0eWtfhR/hw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x270E455B3CBF440"
last-modified: Thu, 12 Nov 2026 00:47:01 GMT
content-md5: DbmDaP/deuC94vfm7Qr2mw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96f3bcf9-ec3c-4d57-aaec-fb05639d575f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-b1a3ad29-1307-9356-0910-2f070f240c69/test-blob-0637f15e-88b1-286f-84c6-be2811a701cf?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-id: 7fa0a040-0ab5-cc96-078e-53544893904a
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
x-ms-request-id: 65ba8d9d-64ba-49bb-8b02-ee125d360455
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:01 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-b1a3ad29-1307-9356-0910-2f070f240c69?restype=container

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
x-ms-request-id: 6c2ae4c1-537c-40ab-8fb1-6d14348f4611
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

