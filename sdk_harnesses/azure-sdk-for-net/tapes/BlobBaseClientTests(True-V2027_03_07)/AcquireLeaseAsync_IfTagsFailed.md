## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-67effa8c-3121-b2af-8c95-a0f9e4c72ae0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).AcquireLeaseAsync_IfTagsFailed
now: 2026-11-12T00:47:32.8044476+00:00

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
etag: "0x214F7FC52923440"
last-modified: Thu, 12 Nov 2026 00:47:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 33fdea1b-7187-48af-846c-40532104a9a3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-67effa8c-3121-b2af-8c95-a0f9e4c72ae0/test-blob-ee4c5cd4-2497-4695-2458-de542e58fa79

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
Qj+yxMhJgUblxsSu4x4nHN8T7MeHKWFoZalCyFNbhDObJ7akFWUXitsGCdBf52MFMcF0Gmsy8Rnd
SV8fB7jziUKRE7toggZ5+2HrgB+RCX5FPJaR52rHaDWcx8wG+IMjE3+NztOnna+7+h4JR3H6TEDh
2cshYaLYyaqFy7s6cwPeyG2fAzqqnp7n1exLvSDEonqLJR+4AbHdtQQoIdL0gYcaK38DWkgFNjss
Ooy2jAuKwShArk3kJca8wk01gXzL81RkMZKhwEgxhe7kjMclJyj5nmCqs9I6NgW4R5j7z7W+YEc3
UVt56ADgDihe/5n/l5okPOIcIT+BKvqM6XmvNrY5JSt/7dXNf7ZfyaWq2zZruLD91pPSoj4HtSdg
7P6HMNdyJdpuf6nFV7wsvFeZ10/EIDDIsWAiZoPteDeubZO315jOOLVc/TgGOH7WpuXnbt7YnMvN
vn92T79XgQdxFukpdOS+y5+aZyP4wnjhTL+dBglZ1tDH6RkZV+j1BHwwlSKUrTIBKKM/PjSo1fwH
lAIAunv9GEAYYYrLpXO2pGOnxyxWTJ+Mm91mGZicHxQcEsPl9EoBM33hfEunNYMviZnRAQ7PsEdj
cx6dl/6ofEJ2rpKw0K8YppSvdNBU5WVaN5D+yx4FTWF7goEsY5x/Of8IMIfwf7jpuFp5IDt2D464
Ql9tqbAkcGExNU4u60L4MDvRS7TearfXFBLDjCwmBHLzdCA8EY9P5L8mv0pqu80YgfAApcPZ2din
lpSdYOQ0CzDbOnchvB6rgWf0t6ttbVlFqwo8JV6vGppIlHv7sYPb8rMZjoFV9sXRVCNc5CEsOig7
WLXZ9+XSLCDc2SejsNDkGcX3U97X77RFa9E6UjV4G1pSv1jNAfrOR2JgeR2dLqNSeMpcNeZKY2gB
lIwTl9nqY73NUPF4FhfKKAx7d3aXpz0u59pqHOZzCFvwzG1uu7CIdRZf0N2y2mGzkQzazuzyaexO
5a//f0bXWUiVh0qqXG1b8wFgONdffAx5t4vZmTlv/WKAH9YAifbPh3aVHFIWCDWeftvqkjEV72mi
hci7/b8PJYroKjyXWmoLkLBgyl+5Yq9WOxtehGswajBsXgMtFIm2hvfILd34ByNx3wGBtSUJ6CMY
ZMKksKAeuMAMKvxm3XwmqURn8TTRXTT47KVpr7UKYnXgFa/HEtVWqXUd7NwnCgKFWgvhovfuRgaO
q8P7tQgLAceGhsjMX5ZuEUe/tHFX0eKi5FWpKcB+8s6oOGcRWvRtEeoUoIQ6uPp0cpCvL5KVNtrh
WNCzYdcHB5P5IyYvXbZSUaKGQzBdaCxaNLcvzsM8EwKMLwEkubATDZjwQJTTRRXaXd3vDvOqgw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27999B37A404800"
last-modified: Thu, 12 Nov 2026 00:47:32 GMT
content-md5: y2bQ2jbh20zH0zFKulbDMg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 699c7c44-a26b-4528-a486-a4e3fb62c01c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-67effa8c-3121-b2af-8c95-a0f9e4c72ae0/test-blob-ee4c5cd4-2497-4695-2458-de542e58fa79?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 2c59a4f0-d720-d038-bd10-24a32db42e98
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
x-ms-request-id: b74656bb-2696-404e-b1fe-d5e37e63f51b
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:32 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-67effa8c-3121-b2af-8c95-a0f9e4c72ae0?restype=container

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
x-ms-request-id: 582ed3c2-42ac-427f-94e9-bda553b8a514
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

