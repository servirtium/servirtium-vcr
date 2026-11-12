## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6c1b4530-0fd9-6b00-8555-b5af99d1f147?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_Stream_StorageTransferOptions(8)
now: 2026-11-12T00:49:06.1687841+00:00

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
etag: "0x20FB7318E853FE0"
last-modified: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 85d973fc-b24c-4dd9-8702-b4c561fc38f9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6c1b4530-0fd9-6b00-8555-b5af99d1f147/test-blob-b16c7717-a8e0-43cf-d919-f63b1277733d

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
13f3D8oPaVCdBgiJe4/8TnP8lLoJtZSHdtiSvxnFWA3heNch2uF9CA4bE9mgRcdKHafIFuK5NCLj
b5nyfKk32K36qAO32nSRf4yr7aK65zAQR6Jx/UIrKEO1PmtIiotl5Dorpp3Dk0IzNpZWDUZ/KYdp
4TUHxdtrz4C/ApwJSfQARglnjkGTTLRfPsas1Br9NRXj36lWXR5fwNYdBJCmKe2hVcc9F5pG1ZSB
p4cUvvplws2GJWpLqujrCM1qdkgjuRTZCn9Tvx16nQkU1baXSgHct0HDHwSCVqreUQ/N215LXe5y
O7R6EgKvDIhgNtUyVL7Ljr8HX5kQVrPUdG4OrcGqyXfIJA9NYaU+FBN7IiDUrP1QAU2fRP5UYeUA
pZ2UoV/Gtm1eaS+vfiwayUuGlDSTAMhwvat0CoV5dMIpTLsHqXO0tWuydkLNoYIghXqzzs2wbaXU
JOOzUavo5fVshTJwEh/Y0d/I4ImGohsoU4UKxqX1ed8VM4WPAWPAypFMYRxQr3Nb2vzt6IwcToHI
iv0m3R5PdwxTWt6aSNB7Bxb3OUH/2KMRruupB5BT+eQDx3Zmmu1y/OkQ/VWUwZErcuF1JBVAybJa
FC8zpm97/2H6loFaFW0phDxX7tpOfe1ZfZSv3dTPwv3EDIa9P1Z6lP3zmioQ0V1zTKDZ6NrXC5dB
2inazCKNK9SElQnna0Xl3VndW+PDSas3O5A09doj7QDufGQtn8jbZW5WizxUjOFa8wuB+q+0fpF9
o5CSWTX6YKgI+O7huD2RAfV0bb1v4q6u2gLOovJROv7TsPw3SAw5WyuTTJTyeDrN7/i5PxDUDcDh
434yK761t73wDghBWbjoOhGS3JYau2HHAbL6l/rt/qI7VWWNBjBs3pTWAmoyi5Y/0QX/QjEpxycd
ayoMux/CAw9lBQNTWzPhJf0BRLn3lXUbusb17bxxEY49cJsFXyN1E/9azIaS7HbRHhwzJ4JuJtW1
8ABZzRVT9PN0FuqX28bajDC5nMjvic5QI8+fPuoMzkrFUG8iG0bpB9iSHtWLOUNWWJpStIkNxmcx
CapFs7UJaEeg0opWt3Hq0JXwXGr5xOmMSeVPuRnAuIkH8RGbpFMiiLWO62e4/6ApZ+T0HWn8OEXA
uWnQuq4t3xkBT8ZgTitBzdS1atmB1EpEJVE1zJsgC7jM2+rpUs0GYAtOtrDayRm4sk+UR81rPuUf
i5Rd+BN+4EMNk3NBV3sHrgrNMx2Zalw4fBlLi8PrYJwFycY4qWf40NZszDWmd1rTjZjCngvHhiE4
JHz5MlR/IjPWO461zgSj1WNHLZ0nkQS/d/4qKMGQPUOlAITq/52B7KoBzzzMHr+UHsiogFmDEA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20E56AC64EA5D00"
last-modified: Thu, 12 Nov 2026 00:49:06 GMT
content-md5: b0TubdByt1mNC1FlpQHcOw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 47db1028-b0ad-4375-979b-8247372b8fee
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-6c1b4530-0fd9-6b00-8555-b5af99d1f147/test-blob-b16c7717-a8e0-43cf-d919-f63b1277733d

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
last-modified: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:06 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x20E56AC64EA5D00"
content-md5: b0TubdByt1mNC1FlpQHcOw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 535b07dd-7fd7-44cc-9287-af6c0738ad6a
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: b0TubdByt1mNC1FlpQHcOw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
13f3D8oPaVCdBgiJe4/8TnP8lLoJtZSHdtiSvxnFWA3heNch2uF9CA4bE9mgRcdKHafIFuK5NCLj
b5nyfKk32K36qAO32nSRf4yr7aK65zAQR6Jx/UIrKEO1PmtIiotl5Dorpp3Dk0IzNpZWDUZ/KYdp
4TUHxdtrz4C/ApwJSfQARglnjkGTTLRfPsas1Br9NRXj36lWXR5fwNYdBJCmKe2hVcc9F5pG1ZSB
p4cUvvplws2GJWpLqujrCM1qdkgjuRTZCn9Tvx16nQkU1baXSgHct0HDHwSCVqreUQ/N215LXe5y
O7R6EgKvDIhgNtUyVL7Ljr8HX5kQVrPUdG4OrcGqyXfIJA9NYaU+FBN7IiDUrP1QAU2fRP5UYeUA
pZ2UoV/Gtm1eaS+vfiwayUuGlDSTAMhwvat0CoV5dMIpTLsHqXO0tWuydkLNoYIghXqzzs2wbaXU
JOOzUavo5fVshTJwEh/Y0d/I4ImGohsoU4UKxqX1ed8VM4WPAWPAypFMYRxQr3Nb2vzt6IwcToHI
iv0m3R5PdwxTWt6aSNB7Bxb3OUH/2KMRruupB5BT+eQDx3Zmmu1y/OkQ/VWUwZErcuF1JBVAybJa
FC8zpm97/2H6loFaFW0phDxX7tpOfe1ZfZSv3dTPwv3EDIa9P1Z6lP3zmioQ0V1zTKDZ6NrXC5dB
2inazCKNK9SElQnna0Xl3VndW+PDSas3O5A09doj7QDufGQtn8jbZW5WizxUjOFa8wuB+q+0fpF9
o5CSWTX6YKgI+O7huD2RAfV0bb1v4q6u2gLOovJROv7TsPw3SAw5WyuTTJTyeDrN7/i5PxDUDcDh
434yK761t73wDghBWbjoOhGS3JYau2HHAbL6l/rt/qI7VWWNBjBs3pTWAmoyi5Y/0QX/QjEpxycd
ayoMux/CAw9lBQNTWzPhJf0BRLn3lXUbusb17bxxEY49cJsFXyN1E/9azIaS7HbRHhwzJ4JuJtW1
8ABZzRVT9PN0FuqX28bajDC5nMjvic5QI8+fPuoMzkrFUG8iG0bpB9iSHtWLOUNWWJpStIkNxmcx
CapFs7UJaEeg0opWt3Hq0JXwXGr5xOmMSeVPuRnAuIkH8RGbpFMiiLWO62e4/6ApZ+T0HWn8OEXA
uWnQuq4t3xkBT8ZgTitBzdS1atmB1EpEJVE1zJsgC7jM2+rpUs0GYAtOtrDayRm4sk+UR81rPuUf
i5Rd+BN+4EMNk3NBV3sHrgrNMx2Zalw4fBlLi8PrYJwFycY4qWf40NZszDWmd1rTjZjCngvHhiE4
JHz5MlR/IjPWO461zgSj1WNHLZ0nkQS/d/4qKMGQPUOlAITq/52B7KoBzzzMHr+UHsiogFmDEA==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-6c1b4530-0fd9-6b00-8555-b5af99d1f147/test-blob-b16c7717-a8e0-43cf-d919-f63b1277733d

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
last-modified: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x20E56AC64EA5D00"
content-md5: b0TubdByt1mNC1FlpQHcOw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a7e7298a-fd60-4e72-9c66-9f563b0270f8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:06 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:06 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-6c1b4530-0fd9-6b00-8555-b5af99d1f147?restype=container

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
x-ms-request-id: db5c77b9-2332-465f-abed-a9e8afd38c7e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

