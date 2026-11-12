## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0920e25d-aedc-f16f-51d9-a993e96a902a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_CreatedOn
now: 2026-11-12T00:46:37.5029652+00:00

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
etag: "0x1D7F703506A6110"
last-modified: Thu, 12 Nov 2026 00:46:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d730efef-f65d-4bde-a2e8-114e20991a58
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:37 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0920e25d-aedc-f16f-51d9-a993e96a902a/test-blob-075b5aa5-73cd-f7cd-7209-cabd7c32d940

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
gVkbBhWsEsBnk4eEGSuFETQPifAIfgRoVjm5/vkBRfBDuqcHw/1EsNBgokkn69cmU5de2eCgIgNV
s6/b8xTGZU2WQF+Efk42y9gfp9y6QWtikqphomwQo5ejsQ9Oab27mjz8kap4otVJKA4HgHsnmnJD
eWBpZcPhhp3H4Mw+6GEbZA2fvq/B6vDVGHpdCCIcfBedCvBcUjR5GwoMsMIICz+s7Bxth9zCgo9v
k01Ig317qmO1od1xvhHYJqOltTkuzQw6sRsGrvU62ohg7b7nMJeNkAZeUmliOy4KlWA5HcxVQcZA
DdJhdPtuesZVENFT8PYLFyQyz3qi2HXt+xmUAb27Cqv3pyLFKxsK8NejDCpdt6RqLQWoI3FMnTVc
dHni2XkJmgUlW0nTRewIKN+i/8xLkER0KdO3E+c5qwntabaiJxZemXEkN1xbl+gZn/qSqp1oEOQ0
bq+lUocd7K8/5dw1ZQDJQ2ZaJ1jnGJLrnXPtpwFrhFjSbblmuUfqBkusHLEL5Dn6yWY3DumLTVUd
ubUTMESu02GDYvhHYooecCANO/zg4Lk5892aNHZvRiBjSQCS1tUG/khQiIFBs2fcGJ7IfhFZPNn8
2j1nE5/qExzX4xiJjJlLBz2zkFg39z92vhvYp8gPCg0nlvyYn+qpZXRlas9OUowEfXfUpauAxOL9
8FWEEmxUyNkLYvads2dSCirj0Y1wKGuP0ypQOmRhptEamq+VJFMHEaL2Qu+VZsoPgZqBnfJUjcfp
9T5CA410qbwlgxi4vebX28DreeV8+WxfQbjK4AjexQznrC8UxQ4UgZgyb+OxVsS0qcEyaRPhbfvS
4sLUqsmzRr4M0RG2wxay1/hMSYqJrur0FTZHrFz4BT80QeNLP9fPfiglpIWz/eWqgJEblSNxSDPX
4JSTbJphE8vSgoEzZpchfcphYwlkQRhQnCzK3XAbw/ivc19COxKOw5G64Xtkdxn6+hdYD+Upc558
Qs9uljZatr+Ig/I43kG40594qWCc7CUS0ONZwrMThQDAxvlDHyxbYCq82/QnwhvVoDxFsco+31aq
XMZSAPMLdP3ydxdIdbNyHEk14BAw6g7HgyJ2ztM2guejmMJmCF82sGb2NUoEjSuI0pWBCP5FeXG4
i33RlaYpu/UwpdzxDBPp/y+qOrXDwvb27fw+tXnoXR9QrnziZBvAzHlV0+hPl8WBlwjOmz+89MiH
26eq6wZ7R0e9oF6XB5oU6m48be4NplY2vR1wGsLglLmzW4l0FeFy2oygkvdn6pBuurHQgIfaeTRQ
dC3pCiyF3Auk46wRoNSNyZNibBRfztONAl8RDxQy2eFUI6GzidBfG7XrwgbjXBrcQ7b0dwwf8Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x278D77BCD727AC0"
last-modified: Thu, 12 Nov 2026 00:46:37 GMT
content-md5: AZn8DgMQv1TLdtGwoubs3Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1f5e5add-39b8-436b-b206-4611216ef103
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:37 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-0920e25d-aedc-f16f-51d9-a993e96a902a/test-blob-075b5aa5-73cd-f7cd-7209-cabd7c32d940

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
last-modified: Thu, 12 Nov 2026 00:46:37 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:37 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x278D77BCD727AC0"
content-md5: AZn8DgMQv1TLdtGwoubs3Q==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 57b37851-31cc-4862-b682-58c2bfafedeb
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:37 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: AZn8DgMQv1TLdtGwoubs3Q==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
gVkbBhWsEsBnk4eEGSuFETQPifAIfgRoVjm5/vkBRfBDuqcHw/1EsNBgokkn69cmU5de2eCgIgNV
s6/b8xTGZU2WQF+Efk42y9gfp9y6QWtikqphomwQo5ejsQ9Oab27mjz8kap4otVJKA4HgHsnmnJD
eWBpZcPhhp3H4Mw+6GEbZA2fvq/B6vDVGHpdCCIcfBedCvBcUjR5GwoMsMIICz+s7Bxth9zCgo9v
k01Ig317qmO1od1xvhHYJqOltTkuzQw6sRsGrvU62ohg7b7nMJeNkAZeUmliOy4KlWA5HcxVQcZA
DdJhdPtuesZVENFT8PYLFyQyz3qi2HXt+xmUAb27Cqv3pyLFKxsK8NejDCpdt6RqLQWoI3FMnTVc
dHni2XkJmgUlW0nTRewIKN+i/8xLkER0KdO3E+c5qwntabaiJxZemXEkN1xbl+gZn/qSqp1oEOQ0
bq+lUocd7K8/5dw1ZQDJQ2ZaJ1jnGJLrnXPtpwFrhFjSbblmuUfqBkusHLEL5Dn6yWY3DumLTVUd
ubUTMESu02GDYvhHYooecCANO/zg4Lk5892aNHZvRiBjSQCS1tUG/khQiIFBs2fcGJ7IfhFZPNn8
2j1nE5/qExzX4xiJjJlLBz2zkFg39z92vhvYp8gPCg0nlvyYn+qpZXRlas9OUowEfXfUpauAxOL9
8FWEEmxUyNkLYvads2dSCirj0Y1wKGuP0ypQOmRhptEamq+VJFMHEaL2Qu+VZsoPgZqBnfJUjcfp
9T5CA410qbwlgxi4vebX28DreeV8+WxfQbjK4AjexQznrC8UxQ4UgZgyb+OxVsS0qcEyaRPhbfvS
4sLUqsmzRr4M0RG2wxay1/hMSYqJrur0FTZHrFz4BT80QeNLP9fPfiglpIWz/eWqgJEblSNxSDPX
4JSTbJphE8vSgoEzZpchfcphYwlkQRhQnCzK3XAbw/ivc19COxKOw5G64Xtkdxn6+hdYD+Upc558
Qs9uljZatr+Ig/I43kG40594qWCc7CUS0ONZwrMThQDAxvlDHyxbYCq82/QnwhvVoDxFsco+31aq
XMZSAPMLdP3ydxdIdbNyHEk14BAw6g7HgyJ2ztM2guejmMJmCF82sGb2NUoEjSuI0pWBCP5FeXG4
i33RlaYpu/UwpdzxDBPp/y+qOrXDwvb27fw+tXnoXR9QrnziZBvAzHlV0+hPl8WBlwjOmz+89MiH
26eq6wZ7R0e9oF6XB5oU6m48be4NplY2vR1wGsLglLmzW4l0FeFy2oygkvdn6pBuurHQgIfaeTRQ
dC3pCiyF3Auk46wRoNSNyZNibBRfztONAl8RDxQy2eFUI6GzidBfG7XrwgbjXBrcQ7b0dwwf8Q==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-0920e25d-aedc-f16f-51d9-a993e96a902a?restype=container

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
x-ms-request-id: e3a94cb5-fb8a-4a28-b628-5d7688b757b3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

