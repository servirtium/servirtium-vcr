## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1ac6b7f5-6b19-59c0-bf20-596f43201e5a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).RenewLeaseAsync_IfTagsFailed
now: 2026-11-12T00:48:20.0428503+00:00

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
etag: "0x259CEBBA71271E0"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 23f9ea55-6c76-42de-a617-79ec1db19788
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1ac6b7f5-6b19-59c0-bf20-596f43201e5a/test-blob-16b875ab-2029-2d24-6871-661643f623f8

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
iLrNyK7MFs8X7Rx2FFy43xBoG1yWsFnUkpmxqASqFcj9YeaIU1Ws317o/zsErhgMuIcF29vGYdhg
+TUUGm7LbNhTeLN1L4y6uzz9rrAez+SApO99pDntNv8OJ1ofl8TwHZJjsTVllon6SiCeybMnQilR
lHV/TcieZkK0ZwcxmiN3DZAeux6uGg1lglkYTm1L5+UxzgNPcM/KxEvysS+Cya/9J7sjCYYKonln
GcpuhRfVaIAiAMwfKJzAU/fTu2ne47mpGyexJ91eJiuJ51YEWz4zHUivYMjj3f8eYrWPN+cQiTYR
xGrwI0Ciw9mhlkBGu/i4n54gLoPwxj0nk8Qozu9EeF4g85bUQ/kIDZzuQke+2Ke815dI8FqzIP4s
yJB8efXqXB3iJsdh5FylGCHmAYP2absda/ZX/IgDbNKXqHtpi5OnA+Up3LHfWvM7o9g5zB57NV7U
Xg3+k2CU37n1yjvgPIyNP/2dzIwJPRADG1mvyZ+0HHIclC2FqHCFlP346pC3WmZMrIwg3WjSyyD9
+3cH5RUZQK3JxKdeB5eNGDePEVOAS8HyYx0Tkz8JSskMiK35fq/n3qni7pa/7aT1k8QwQrnNfa+2
FYH4Bq1uv3neUn/plJqIpzKpnV0qM3V5HQB62AcPPwv9Qmgt79f8dC4d4JslC/4qqJqHI99SjOIL
f+mt8+dxzxJz61ExWrhbrSgvDFLaUxEBTy9siBsrq7aGIXDuT4FGqxGIsR+t+U7iK3a3In+PMSvX
q6O3BUf3R0CaqjhHbF6n6GFBUaLxVFbhilyldIg39/BFFqPdj6bJkWnfEk4Wm78YEDodTt+J5ldM
1nvrUdO3Y7NHAlW6yli7d8A4EkEIyu+djWROGqgQvDBLkLkr3j+VKK6azphpXUbhYdYfUNQVRAuL
TsRvaUkKN0YlbjmfkJmBouqSbvtWMy8ebLjS8GtcNkutn5B6Jr5lj5dSRO4MQtE8nq3qgtYQNRqU
UfyROEbayDjt8vEIBnwrLd5kBO9AESrmlVK9crN1nWl15dTC1FdQd3u2HlDgM5cxvlX3qzEqVD/S
qqLzHFWFeFSHkyCnaViGE4xzivPaBWK7jLNdffE4S5GV8Cq1XFolMab7WaB2iVX8cZektslM96Q/
OJChJ/piT0ePEngu0bcxTlhN36zBRANeYQxak5THSPiFdSTKgwqrmAlY53bczp/gc2hw/xj3fvON
Q8buCLuzx8qAqVuSZ8pOoUaiaF2MgZJseSArVkjgjfcwPUBEvI9NpB+sXCVETQueIl3RVBWWAMIz
gY+biHCBoBtkYimKCuS2VcM+3yVtKCsUjDTrDjnhmTx9EDsAshyuK7sK4OviFBh4G/9SWCGdxQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DA40EBE164AD10"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
content-md5: Lpn+6njXXd2WiRr+0djqoA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dab71916-4010-49ed-af16-c4c78a543f3e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-1ac6b7f5-6b19-59c0-bf20-596f43201e5a/test-blob-16b875ab-2029-2d24-6871-661643f623f8?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: fb876359-963c-e192-82c8-ec0cf9a9b5a2
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DA40EBE164AD10"
last-modified: Thu, 12 Nov 2026 00:48:20 GMT
x-ms-lease-id: fb876359-963c-e192-82c8-ec0cf9a9b5a2
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8f930675-3915-4fb8-8c4e-edd6cf5dc0ae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-1ac6b7f5-6b19-59c0-bf20-596f43201e5a/test-blob-16b875ab-2029-2d24-6871-661643f623f8?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: renew
x-ms-lease-id: fb876359-963c-e192-82c8-ec0cf9a9b5a2
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
x-ms-request-id: 6c6c9d29-7106-4ad0-b59d-b8f68267c229
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:20 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-1ac6b7f5-6b19-59c0-bf20-596f43201e5a?restype=container

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
x-ms-request-id: e83e2bf9-ffdd-43d1-8fe2-10435f6aecda
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

