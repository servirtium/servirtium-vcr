## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-87f9d3b8-d615-1dd7-b120-a0c6a0c3a82f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).UploadPagesAsync_IfTagsFailed
now: 2026-11-12T00:52:03.1965287+00:00

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
etag: "0x2622D9E37304340"
last-modified: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1bac68e1-ee1b-4e88-9584-e84da7b0972c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-87f9d3b8-d615-1dd7-b120-a0c6a0c3a82f/test-blob-47be1619-19e7-cac4-1869-13fc283c1e18

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x252DF1849486B00"
last-modified: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d14da41f-bb79-4cc9-90bd-4e96ecc98102
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-87f9d3b8-d615-1dd7-b120-a0c6a0c3a82f/test-blob-47be1619-19e7-cac4-1869-13fc283c1e18?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-if-tags: "coolTag" = 'true'
x-ms-page-write: update
x-ms-range: bytes=1024-2047
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
xU1hmiSg0DVd9MCQJNaD+HKylIzLfq2fDi9vrMLb9HUCiAFSYQ0LeEaI6fNYNKVB5huJdqeRTEaf
woz1MCNygv9LjpzVMJZkphtGQpS6R9qJLcWnUX7OcDy7sp+BFkgiFmfzDaYJbLWEJc+LSwmx5Xux
awNeyzCBfR1fGX734pDTIywtxjo0f8EQIyuvQiUyCswkz6pExEo2co+IqVI3jEI/tyfchB5AfexB
TagF0Tr3LQ+x0xLljl/i9lOqq9Vu2Jbob4v+VoWu41G9A3aiMaBVkHxDhbgwWijI+o3KltIX03QR
HGKv+daJA/DBJ4voQMWyVRpYK1PduBViNVz4401/pi8CkBQ+pZaluYLIbzKc4LnHF0C3v6chNGNN
TMR6kB+iQYBc5rCwdK+DsnLQFEnixlWiMcsMx+eI4Fux8VnSKihiJS2xQPkJF6ORMww1UR8ZaoZu
2F9UlnqZ1AVU/4NWsYdJbe8cMIVbmRooe5PbUo88l4fSZFLIDo+yGGz0tRcgO4KE6+Mw/TkAEz9F
LBvmvoF2F2j8g0w0gF9faRgZZ+MCB0AQVmarDJlN0lATguJzzFrqfZ2vJLc2T2uE0JMh5qtbQyTb
1mcbywvOrrH7If197J2+L+pGUuOI2gb7JjsFLOuluD+9mPbyzrGR4XUGOi5tB+T2YrfBFPBAUvth
IKTPyIHGVmm+v1Ony2A4tXFugqDYjh9XD8k046NOfUX6ka4NwRjzQOPErkiQT5dWiV9/0s9biZKF
d7m4kXPGb0INrDqyK/NYekK9E9/Xx78y3VlDz6p1nwgch0pfO65v/j8FgqJcpF5sJleNnXWyrq/5
hbMZgqCXmA0ylaOo+D+UTRWf0UUd1Tn716hT6AGSadmaZrX6VXyfbuqVKQ67wy4Y+FBgE9xq3LB6
Hqr3RK8LnyvJDpKJmveZAGNbh6sqPxN6Ou+xMlb9MIoFfzfRpyo6iorj8bWcjl5YxxJ5D1QET96X
fAm/Wm3UzN4HhBrAx1k5IP0hR05e3qyRWGtEgyE1AC9YOSogey8cDiXWlAlEl/+5QO5X4giQOJ5c
LgECkEi90YPqaI0uGKXNBTgoh0miTcBsi0My3h4mxwGMw0wuGn3dGcKFWS9xiihJit3QaLBVueFB
lQUEivNlw6CMolRYn+q6Sm6GHfOR+gAb6VRAVl9QNgpr7YR42Y7PIJWO5OjT8OryFR5Czpztr5sE
6aGfJGxBPGtK7bJlQnHft/1eAhYXR/lpTUFADWhtfT3pc/DtMPsoTKh9iQI4jNOtYxefj62E7aGn
NdYrAC4C3HB0fM6A8YYBNbVtmr32MMBuk6lRze2PZIZORvok/Ux5eq2SxBAFLHKQnVr4FlLjsA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 5095cc45-99f5-4c8c-8a1f-3fad2bc96d45
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:03 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-87f9d3b8-d615-1dd7-b120-a0c6a0c3a82f?restype=container

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
x-ms-request-id: 78d4eec4-3de9-4959-9655-6865a5435a57
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

