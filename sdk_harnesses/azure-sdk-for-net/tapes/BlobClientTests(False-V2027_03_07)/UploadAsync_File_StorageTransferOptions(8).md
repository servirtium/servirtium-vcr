## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9b28cbbd-b2b2-0b25-9b2d-73dd0a198c5f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_File_StorageTransferOptions(8)
now: 2026-11-12T00:48:50.6431546+00:00

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
etag: "0x24EFB8914B0C560"
last-modified: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 413807f1-751f-4aaa-9c63-2b1687655961
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9b28cbbd-b2b2-0b25-9b2d-73dd0a198c5f/test-blob-867f095a-bd7c-8ea5-ff4b-328853a3bb58

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
nbh1kuP0BG4gjo2vMt1B1tjyrdD0CDMAJpmbZoCduPhxGj9SpPl7ZgQRZu4v9VwiCluvYfXqZJWF
dGxKWJ3tgtWVPRid7jLfdkbM4qFE0DA9eVwk7VYCh7WqzS+NMQ5mI+MYmrhEhBsp0OquHoLzQKQ7
DN5ByZV/krZi8iEDUUQ4Zb+9KzZ4+fVB+xxsU2kztoyKUSQvJVpNmQcC4ZH5Jn6ldrjCNhVtwxPp
/855Ej5MLjyVeAAgCUBlb5EvdRdjR9Sext2wcYB3HY4RRiWL1IfItbNVZK5+hW14XcaDPk38hrf5
2kxgnL27HVpxD8Ma2ZoKZsBjDeMlH0BwNxO69N9AFL9tkvk6Zxj2mUZTDHaqXYQreNeNmHnU07sL
8GWpASl7MfoDrUeh0P6nbXOc0RLKxtmPjnsHs3xGmb4+L3ezTJgd2Nt8prA8iqjZ5ioFNwKoQSqL
GXOtc359vRSJYqCG8yHbf/k3Th8oUgTTLsxRQGG8lu1NJzIlcGVd/umcsycHUvIIKrcIcfMKYsdu
2UWxK3yyzMyzOcvvtQ+U2VA2jJ/czNvaSRWqsyT6QsVrtpYfrNJs6uZbVBgmGXSodJej1NYnkg1p
1+JmCBmnuPcGg/94dC19yaG4gHfCsy+hAT6NV27uQySItdTvBeLNs5shIJV1LwBqJQs1bxGVpiSz
xQbbGmGIGEDb779YjsO/683coZOZK9E+IzJjudQS8w6wO0Dc8Zk6mAdVmkBAEZZHdoREuQWRGZk0
nfcuJV9syPywqFKD4/kzogiLQ5GR/RGbG0NPzjoIHyKmp1SiC3Ko6dJDkGlDxJOKEBb9BdYIo6Dl
kgobHPnCqIgw3DulkZeV4lq/TW2oWFewxb4jCxlMnQOzvHhojM3YgefgE+dX5H5/ZyN7SVUzPDqz
a1Y7npxu5D848dUeLVWM58yFx0VvWeA/o6T20FStgH89tSF2nOJLcS6oHvOpYTrO7mGJrXX1QxJ1
+/r3eBTqinBV4Hc0FUrqOVUWxzrtlkJqJ+HyJNMKSHIOAKHnU/kZvZOCU4DCmdgXn3Qf3nvYiGW4
jVAz92adS5gFJRSpAuVc/Aqma0LBp40I24Ve6mr3Nng7L8ao5sYt5AjovXTDbpyOwuFxMRwi9uXC
KhzgP2AtDu+cbdMftBVEeIc62eoZRGzozyeIhQRcGDjg5bypTaWnuq6EJwDJbw7LLLmV6Bz7qeav
9285pYjqQFSaP89Zmivhkx48lBxsH2AZvFhLxjAb5TzV+VU2bhUmmuerLjA/cZKNs1T+vhTJQ9cO
H+gvn3kkflmTg6DVqyUJFfo0wPEw2UrGvRLcHSYnDLZ9J04s9vpuh6/WrO7xuAgv9KgZlYPm3Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CB0C836A50EA20"
last-modified: Thu, 12 Nov 2026 00:48:50 GMT
content-md5: UVvhKnnKJ0iGuYlADxMwGw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 79c04eb5-c9d2-4d59-93c0-511c17c81457
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-9b28cbbd-b2b2-0b25-9b2d-73dd0a198c5f/test-blob-867f095a-bd7c-8ea5-ff4b-328853a3bb58

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
last-modified: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:50 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1CB0C836A50EA20"
content-md5: UVvhKnnKJ0iGuYlADxMwGw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: df55a6fd-b71d-4c63-bd60-69e8da2c1478
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: UVvhKnnKJ0iGuYlADxMwGw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
nbh1kuP0BG4gjo2vMt1B1tjyrdD0CDMAJpmbZoCduPhxGj9SpPl7ZgQRZu4v9VwiCluvYfXqZJWF
dGxKWJ3tgtWVPRid7jLfdkbM4qFE0DA9eVwk7VYCh7WqzS+NMQ5mI+MYmrhEhBsp0OquHoLzQKQ7
DN5ByZV/krZi8iEDUUQ4Zb+9KzZ4+fVB+xxsU2kztoyKUSQvJVpNmQcC4ZH5Jn6ldrjCNhVtwxPp
/855Ej5MLjyVeAAgCUBlb5EvdRdjR9Sext2wcYB3HY4RRiWL1IfItbNVZK5+hW14XcaDPk38hrf5
2kxgnL27HVpxD8Ma2ZoKZsBjDeMlH0BwNxO69N9AFL9tkvk6Zxj2mUZTDHaqXYQreNeNmHnU07sL
8GWpASl7MfoDrUeh0P6nbXOc0RLKxtmPjnsHs3xGmb4+L3ezTJgd2Nt8prA8iqjZ5ioFNwKoQSqL
GXOtc359vRSJYqCG8yHbf/k3Th8oUgTTLsxRQGG8lu1NJzIlcGVd/umcsycHUvIIKrcIcfMKYsdu
2UWxK3yyzMyzOcvvtQ+U2VA2jJ/czNvaSRWqsyT6QsVrtpYfrNJs6uZbVBgmGXSodJej1NYnkg1p
1+JmCBmnuPcGg/94dC19yaG4gHfCsy+hAT6NV27uQySItdTvBeLNs5shIJV1LwBqJQs1bxGVpiSz
xQbbGmGIGEDb779YjsO/683coZOZK9E+IzJjudQS8w6wO0Dc8Zk6mAdVmkBAEZZHdoREuQWRGZk0
nfcuJV9syPywqFKD4/kzogiLQ5GR/RGbG0NPzjoIHyKmp1SiC3Ko6dJDkGlDxJOKEBb9BdYIo6Dl
kgobHPnCqIgw3DulkZeV4lq/TW2oWFewxb4jCxlMnQOzvHhojM3YgefgE+dX5H5/ZyN7SVUzPDqz
a1Y7npxu5D848dUeLVWM58yFx0VvWeA/o6T20FStgH89tSF2nOJLcS6oHvOpYTrO7mGJrXX1QxJ1
+/r3eBTqinBV4Hc0FUrqOVUWxzrtlkJqJ+HyJNMKSHIOAKHnU/kZvZOCU4DCmdgXn3Qf3nvYiGW4
jVAz92adS5gFJRSpAuVc/Aqma0LBp40I24Ve6mr3Nng7L8ao5sYt5AjovXTDbpyOwuFxMRwi9uXC
KhzgP2AtDu+cbdMftBVEeIc62eoZRGzozyeIhQRcGDjg5bypTaWnuq6EJwDJbw7LLLmV6Bz7qeav
9285pYjqQFSaP89Zmivhkx48lBxsH2AZvFhLxjAb5TzV+VU2bhUmmuerLjA/cZKNs1T+vhTJQ9cO
H+gvn3kkflmTg6DVqyUJFfo0wPEw2UrGvRLcHSYnDLZ9J04s9vpuh6/WrO7xuAgv9KgZlYPm3Q==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-9b28cbbd-b2b2-0b25-9b2d-73dd0a198c5f/test-blob-867f095a-bd7c-8ea5-ff4b-328853a3bb58

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
last-modified: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:50 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1CB0C836A50EA20"
content-md5: UVvhKnnKJ0iGuYlADxMwGw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 45a2519c-cb14-4ec0-8211-b017e1c91f39
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:50 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:50 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-9b28cbbd-b2b2-0b25-9b2d-73dd0a198c5f?restype=container

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
x-ms-request-id: 6b3f8efc-c1e2-4afc-b65e-b63acec81c40
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

