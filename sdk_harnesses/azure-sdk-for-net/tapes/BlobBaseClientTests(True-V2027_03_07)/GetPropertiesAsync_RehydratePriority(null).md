## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a3caca69-4c48-e6ef-54f0-660fc553ccac?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetPropertiesAsync_RehydratePriority(null)
now: 2026-11-12T00:47:28.1454787+00:00

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
etag: "0x250D81562431620"
last-modified: Thu, 12 Nov 2026 00:47:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1a509b4e-5e35-4bbb-8984-01a873fb17cb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a3caca69-4c48-e6ef-54f0-660fc553ccac/test-blob-b85da49d-29e3-4a50-624d-d19ba93dc12c

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
cs8mkjQZRrsTD1gfT2RPyO26/Q/vEOJAen9A+3tUPBcuOZ32LDp4hF2ipNTRMfv+/Qmt7z+yPWHt
5hi02EtAvtJA8BbHWZuzQXmyTWsOb0iEQv1yp03YfPw7CUYhw6sSYeUBkEDkN6Rt+a7FAO/13nbP
MJZNzheFaHQai1BUkX3OoOuGDN8InwpYBK2fEnwMRSrPUpMUxJPNfCjMyqtUGGgw92AEb9KXx5GL
9Mpq5VX4DUYmhT/qudtYuI+2PNRfBOtFbhscB9VXOIsCic/JY5fS07xlLpMoRj2ErLdC4Iq8LPDe
JXY53AZxzky05zAMjlT45GgX+tZXHCjel1seFVcARVzf6j4gmfe29F9HdF4Ndx1iSfwipTIZhghO
W0SqUrj0tKLTLaQW2EpwYQZ2EKjJ0SA9u8tb3Z8qxWM10j2zC6GnUsC7OUp4S3GxskQronVghIok
bJfsmdYCqGdA4QUNvVVkz77oDZfVxXBaqStb/iPt1E2zjp4JurnpuZDiOGlrpPTux9K3eHfzTqcm
ku+rpqpEUwy4WS62WhUF/lQG8o0G7gU2bTdQNlzWwD/24yfJPhLmnuRcs0rFN2y9snki7FwaIKTp
dDly8x2w4ZnvwHftO8BCIFSoqTq6cTXLk4Tjs9Tj28KD4MrYc6rHrNKx1nf0z3a54MsHcnZpLwME
pmCYzS3FC+S1alv2aayp4P1oCZq+18QNKdMI22lLGbDG1M1JLt6k68uSPmQbw3YfXZJ5ASZoRc+c
i6NavS97aVCqL5XfX7Eewx3PK5hf8WZc6H3W0hiKXo79raM7Si6bF9UTcJThQP7gWj0ImRk2PJk9
/dSxpJY4INEG4bIO43nvMxTDS4HSeqh/9XfbgsR0x3AJ/UxZ6XI+21DD215L0nfDGWUFc/EYa4Ms
Mq4fXJ0MkRpBBOUtlUqihW8wD59JNCP/GGheb1N/8ZLJLLfDHn+ytklECs2SlYMbY+6B51zj4/2L
H0Q0rSHGwRNSZGiS3mbwfVhVBClVbYLlQwxl/gk25Um5OP86fQgofUi5QDAaiISIkGkDjd7UNbLC
T2oVYcMKG38f2aZmtgBPLYfgnCxRyruH3W2fM1dr5QJMeC6eEhyFrySx+67eIdpps19X85mFcISu
joNVa+gns/SjGj3RsRtqWuwHoM8MqLyTNX/4FPFoxgip8ISYMEM8ike6OgeclwJE7Jisfs+1oeXH
wjVoL58COlM1KMGW0SqpyxWHUm209p19sydZvEg4806f0W0O01unuACzZ29BrRptA7K5LU93EsyX
63t3qX4K/TRy9wC8mvi635ptAY4uPAUN67iWfsb/J76hduffMA6BqGo6zrUasWi5/061CRE9aA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2692225B15F5D20"
last-modified: Thu, 12 Nov 2026 00:47:28 GMT
content-md5: Zzz4nbOjWcdU+Gzsfh2QbQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 57a7a323-1b13-48f4-a2ec-77cc9e715677
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-a3caca69-4c48-e6ef-54f0-660fc553ccac/test-blob-b85da49d-29e3-4a50-624d-d19ba93dc12c

### Request headers recorded for playback:

```
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
last-modified: Thu, 12 Nov 2026 00:47:28 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:28 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2692225B15F5D20"
content-md5: Zzz4nbOjWcdU+Gzsfh2QbQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d45693d0-45c1-41b5-97f0-f3d9c3dbb02a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:28 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:28 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a3caca69-4c48-e6ef-54f0-660fc553ccac?restype=container

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
x-ms-request-id: 1de86cfe-6037-4a2d-acbf-25f6f4d1dc4a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

