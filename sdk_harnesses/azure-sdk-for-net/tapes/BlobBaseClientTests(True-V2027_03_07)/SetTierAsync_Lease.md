## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-dc942957-0db6-fe69-87ef-05d1b3eabe85?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetTierAsync_Lease
now: 2026-11-12T00:48:26.5002487+00:00

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
etag: "0x1FC8D48F94B7FC0"
last-modified: Thu, 12 Nov 2026 00:48:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f212ae00-1c01-40d2-b03c-9a62a81a192e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-dc942957-0db6-fe69-87ef-05d1b3eabe85/test-blob-58bde80b-6bb8-b828-b4ed-b7348d2c3201

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
MnZ3t5Izu+N6jP+buZ4Nqpwrxa9be7vsAdwoyVU1cFu8BJ48cwby1yza3StrjP4W3w2YYmaDpbe7
i7a2C/KNRRyk37X/0TaVOe6CgJ2PgHTeEulHnA70OV7ngehQO8w6TZgOx61IFg7XAyl4ACQZKwpB
2PkJRagOsKVXGE9ORP0iSDMFgLnHlfvacJnkezg5zlbdDmPSMAfvABYH8f2/iL4rVrfxFKpRekL9
LtQOKTVtHUn5cDaZTxcsFYCiv6T9G+jbuSSASLqri5Mg1QIy4NbhmtO0xReHkgegxP4qr7ud/xLs
M3AQ7NWPTuWieHoV+TWpwCXRSVbQUycd4IO7gdzYg9XvRq1l0a7+JHcy5RmNisvJgO6WzLW8HN9J
8gtR080IyfWkJbOHQ+920yXfnW4NkFa48gDtQrYgMynNHN6irFGpKRsj6GUYQTz/H/iQ3H5xO2K1
meDMG4c+hPKJuScQ1CbUNXNS6qfwoLDE7iO+j1aqXOB77RNw3Q6U5GNzjocU7kvSvKcKHlG6xPkv
By1jgPSb3l1GleYTY1dlvgZDfREpr//Y69Ounz6PwSkZQNXhMGNv168qzVlkvlhQpV9KdkbnBlgt
i5Uh7D4et9O9+iOBhI6j1KVi/uGlcy16XvrfREriMTl9s6TOTetwCxaFp8Q0ziHQp6GghQh2iBhn
po1EP3KJ28jqBNDq1Ie68fPLIMxpRpDYDp2oQawxByuLZqddLMuk/Mz7SspQ5tIa5pMVqmhM/mD9
azHV4JocufylXm3gXcUnJyMAbfzGhyjKjVsYHFzDP2hGX8Cazhsx35DNq4hlOojO7YNETJBkN+MJ
ClI/BJ2g4h4Fmf0FjFgHzo5r+dyfZVPSSS7YfvPY4ijckcTJ8trzLMlpX6GLyWErPX4B+D4HaaX/
bLpux2MrLLbUKPqUPtuzd8wSNgWyRoDMrUF11urq1CgeyoUghWVmPTLqt6Bmlv6iToFx9DKgTSY5
oRkhtlbM6VPSdXNVkvJnrPjSx4/gZRdC0ohoed/2fn1f5uNLRIfcHs1MlCCKTbuOCkg5zYWXWTwC
3uTOY3Bz3Pf29asPG2hx9qnBk9H2t4TM2W6XvLD3yI2nSGWiDbpd2bgplFgPf+7fx9fc1cZrDCdg
AYoB3B9H/y0eZ9MCzujvZLoYzSMsvVmAt/TYG/LGPDw+QgwwW/yZ4pQq8Bcb3Pnv7HEMUj8DM0Qw
gSQrbuM6VyuWxIzcvwi9f+qPAcxCZdr76C6Buun8Ow7H/9rYbnOw8JnrhBhtEy1oTtNUdDJ37hxJ
L4W1uJxCmYl9FL8t5BF33hEzVuDCjtUBGWsWqMfcUBG+jz7t+zf8qeqP7/9uO2rC3JUhQ5c7hw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21C274BD9736460"
last-modified: Thu, 12 Nov 2026 00:48:26 GMT
content-md5: 9Eg+aHouqogwL2h0wdLUGw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 461d19be-75bb-4266-a8d0-f30552018a15
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-dc942957-0db6-fe69-87ef-05d1b3eabe85/test-blob-58bde80b-6bb8-b828-b4ed-b7348d2c3201?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 9fb4b0a1-2c31-c2f1-a0c3-ad6e55d28ae3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21C274BD9736460"
last-modified: Thu, 12 Nov 2026 00:48:26 GMT
x-ms-lease-id: 9fb4b0a1-2c31-c2f1-a0c3-ad6e55d28ae3
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5aa6a726-c0a3-4085-8dcf-6be5d2f73513
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-dc942957-0db6-fe69-87ef-05d1b3eabe85/test-blob-58bde80b-6bb8-b828-b4ed-b7348d2c3201?comp=tier

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-access-tier: Cool
x-ms-lease-id: 9fb4b0a1-2c31-c2f1-a0c3-ad6e55d28ae3
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
x-ms-request-id: cb7d0093-41f3-44cc-b8b3-81b54382e720
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:26 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-dc942957-0db6-fe69-87ef-05d1b3eabe85?restype=container

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
x-ms-request-id: a4757742-6ac4-494c-a23f-440e2c22b1b9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:26 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

