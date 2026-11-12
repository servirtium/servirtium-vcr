## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d080c331-59d7-3564-6029-a977ca865c9a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).BreakLeaseAsync_IfTagFailed
now: 2026-11-12T00:46:19.3329404+00:00

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
etag: "0x242334986F6D3A0"
last-modified: Thu, 12 Nov 2026 00:46:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3070081d-e928-43d8-8898-697f4b2a6dd3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d080c331-59d7-3564-6029-a977ca865c9a/test-blob-1e1687ba-f8c5-eca1-7fdb-064286526071

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
s/vXhlI+VnYHhTtow+rq7vvhSRW3RxU5IpNR+1Mirg7JOMPOr9ZHezCfFkC8OSiU8BdGpQlKumvl
nmO/7Vsj5dYtnosmHD8lmc3kFzDVfOlqvAo72wgFfn1X6BByiI7VfDFpj5qdbdTXIQs7ZqI7ECF6
VDBQ5wnNJyANzzMusxE/Dpr+a+xPzU82Y7r9yRfbHNjv+DNdhZQnnGd5kJ6gqG76+1cHPKU1Kofh
GYNP0F0IMrJbP7rd4YkG1s6E1T2xlbpMAs7A098yuc2sfGsQ2MsJcF3rRWmzHBnOAWXWsFRKMITI
A86PSF7SKIXsMWUd9f4DemXfxU9RmOW08dJ6XAl4YkzmR9T9eSf/GBzjxuu0sAxm0zXvamo0d2vo
21eMWMt8c88ZN60qBQA94KwzbtH6/0HFE4nUiffhstBoFZ7QcsBQZ1IbmnlePM00sYq+AQiZ7dsV
xkVCqOrYOIXcwe9ibW3s4gd/32XHZ9e7n9hsI7DHzyjCuqt7Dr9oQmL0gnrd0UMd0R8BGg52TV9t
hggSbBXUFPLHoLLBcdNIF5wD0+Rd3c2UTlGRxbUaS2xMDYe2VtZNH22IFjGRW2BLuQNxc3p6EKk6
fR3DQ048rVVGdWNLkcDFtbN31MecA/LwRQyyqNfy0fzee9i5idweS2jcSub9/yhCq73GAzvhnnoq
0/1CigV9U6NmbRXoDCzXWYhfwLgM80XjcPwaK87A/d1djrbe28FiXvZDlpISWZ+R7qmzgt3CHuC3
XhkIYyjVpW83in12+H3H/GHByFyz0BZdiD0kDXv/m3DWJnyoWvvObfAi2s4hGvUs64V8AFWDBI0C
q9rqsZf0OO8NoNIAH6Fl8ltrkPVHO25H9yH1g5oaUiLupa8h47xYLqLfFHojK8zkFg76F3OXum9s
o7l2/7RV8k2vEXnyRA6eE2JTaCfzI8tVEWyLIDuuV+o/tUAD4i7uiSIscxpT8dL/WwQRRFJHeH/t
Ie5HydESAbqPso/OmzAzZd8FxrCxAR+ajMU2nBKY9zzAFcFApsBQGnJfwz5DMb/U3t9yQrHPOx/O
rT0L22So97tSDYVu8r8etKw9Uj7hV1oFYr4yJbSK8dqicviDRT4NtsuD8CQ5ZesgU44Fkujg7FXi
BXmlddEGyByry4DGm29tL5tyXmc2zPzTEtEmhV/xwoWioD/FaEH5fScIjplqWrgfl2JNbY7urDl8
0WMA30O9uQn7I/ovqMdaeOE/Lj1jabcZBu38pFT2s/QFSZbd+Z3kStSQbza98O+b8vWtr337GWir
5thVwBW0BG8GKV8wfX9DWuNp0vqBXBb+YbJfSQR2Ci8uMRLEj4q/22rGtsaQanV1aVSakkZtKg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BF4CA874D803C0"
last-modified: Thu, 12 Nov 2026 00:46:19 GMT
content-md5: JL7GXvgBTf6gbGJFHc3a/g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 553f6ad9-5247-4491-8c71-1341b2a2e975
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:19 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d080c331-59d7-3564-6029-a977ca865c9a/test-blob-1e1687ba-f8c5-eca1-7fdb-064286526071?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 5e57c28a-5563-6bba-8f1f-2f014c6c7fcb
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BF4CA874D803C0"
last-modified: Thu, 12 Nov 2026 00:46:19 GMT
x-ms-lease-id: 5e57c28a-5563-6bba-8f1f-2f014c6c7fcb
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fbdffa74-2862-4807-aa90-3231951bbd9a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-d080c331-59d7-3564-6029-a977ca865c9a/test-blob-1e1687ba-f8c5-eca1-7fdb-064286526071?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: break
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
x-ms-request-id: 3de7a844-2ce5-41c5-aef8-4a9dd10989f0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:19 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-d080c331-59d7-3564-6029-a977ca865c9a?restype=container

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
x-ms-request-id: 42796dfc-f973-4fbe-996d-0172690fe2c8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

