## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9b0282d1-4118-9ec3-a6ab-43edaeb6b027?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).ChangeLeaseAsync_IfTagsFailed
now: 2026-11-12T00:46:24.0471405+00:00

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
etag: "0x1EBA86059DD57C0"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 86a05b13-b8c4-420f-85a8-eefb0300359c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9b0282d1-4118-9ec3-a6ab-43edaeb6b027/test-blob-2fa4f3f7-c59c-633e-8e91-5d32a6c5e9b9

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
cs0gEfblQtuAVga2zFoElo2VupP1QCUMRJ8Nh+SR9+HBiXrhlZ8wErHIr0W+iJYzjcekEQpWwzGn
E81W2Lv27l8l9ELfIgDuZKjhLJDgTrwJ2fkd7ebWa8VJOYHS2Tn20cDmmJNTVGrGtqxhdJahx8UR
Tf7B2QF4Tol9lul+HIpu61vQ+bUotYWPVjc6dfYuqHK8wYw7Nfe/bUoK1r2BR5kh84k70M0Q6Jh5
MYLKPtmSTu53wlr+M7VjEIxqHt/HDg+dGIFt89ekrNjzwQN09S9xeIjPCoQ+Ir/T2MBBpcq5siNz
LSVXJFsX0haCC3Ky7htc+aZW9wSKXvbBmhoWYwYOOg7gAccJGVMtuDduvBdNIeqk5KskYrsf6M4v
lYpAAG4Pc9Bj0exTU99SKT/MHKHedHkwcn9b6dhTwRj52YPJ7LfJX0hH6k/9UZDL0Th7UswtUSER
D47vtIr3DxDUWnpciDyHA71Yl4opMyHujxeg125My4hiuN0p2au+T9o+KPYWb0n79E8P1LmX59tt
ASRyVzeiiI7x+dBfXikRmkiv6woq1x/OpOMePPfOytEBu9iGTPeinKBnJXV4nJYl/Tpx5/zQQikE
o7JUg0uXIi//XaJQi01QDU9qw7KpVQhN+D+9XeLUMHmvgalETRhVzwJGeT7z1HHsIdqtZn92Wk2q
B4oM2sVMKiwooQqkC782FfOvY9zKWSPN0DwIJ8r5OCZcmkaNSPU9+k8RyzNnSBUbdlGLxvdx4K1m
PgmIQwJiLmjjSHB4qMz+cmiMuI7wZYgm7bF5bnEu6rqZJgnrtLZNr5zKhACkos2EjVSO5CgfdtmB
YlZQ6MD2tF2234LCE72xPwjyJuCHgUrk9OAdnwWSebAwaVJf/Mbb08+i7sNLwnqX3aUfLVD4+uAM
bPPf2RRXJGbRkqlqUUJBFlIR5JOHmDJmhsJgcktgN29yU5DT+/m7S8ldeS/QLItj3Rf95xVNhdPA
eVNR97EacVo6+P6xbhpYVpnJKR8DlVk3/ZU0YlBaJM68EoKmaVQXQwjVljSMsW78pZF7g1u0veP5
Gvoc5Q4K39Mw9VyYsexFsuYWLf8lq0smOL2/3qFyCFSfrE9a+l35y7ZgXLwSZPOkNtB0nY/k1G+u
9a1RSwEyvewH+QWd67eJHWJIxU6PFNPKGqjQ/mrEutjgqwWwp4C1Lp/PCmvtBksZ64Asmw8gHuHZ
hzBZYb6BQz4svT+y2HXik5avvwpo3BNctxPqlx/Jv4wj1iBPXMzgTsYtwUgMZxIKSgh4cV/Wcasc
/KqrlqsfY/6yjgFUkzbKznFDOxvKUE8A300WUU4tTGV1M2AiNLcbDl1KWdgQtbfRraLtkzaQUQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25AC1E58C3E6FA0"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
content-md5: UXwqR4xEsXPC9dSsjFSAQw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e171bb5f-5418-4d9d-8c8d-0109a980e375
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-9b0282d1-4118-9ec3-a6ab-43edaeb6b027/test-blob-2fa4f3f7-c59c-633e-8e91-5d32a6c5e9b9?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: b6ab5aab-085d-b011-8441-9cdf5fd6a79a
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25AC1E58C3E6FA0"
last-modified: Thu, 12 Nov 2026 00:46:24 GMT
x-ms-lease-id: b6ab5aab-085d-b011-8441-9cdf5fd6a79a
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf85d1f2-15c2-49fb-9f24-184d943417c8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-9b0282d1-4118-9ec3-a6ab-43edaeb6b027/test-blob-2fa4f3f7-c59c-633e-8e91-5d32a6c5e9b9?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: change
x-ms-lease-id: b6ab5aab-085d-b011-8441-9cdf5fd6a79a
x-ms-proposed-lease-id: bd2c27b9-f680-ef77-2996-44a3ab3fb92f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 85ef5d60-9c92-4fcf-9441-1efdc065af1a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:24 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-9b0282d1-4118-9ec3-a6ab-43edaeb6b027?restype=container

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
x-ms-request-id: 928f881f-c91b-452b-877f-1f8a61871b7c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

