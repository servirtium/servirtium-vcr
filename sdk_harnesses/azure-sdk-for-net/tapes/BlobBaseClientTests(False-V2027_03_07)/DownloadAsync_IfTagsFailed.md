## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a47c747b-265d-9a1d-3fd8-40cdffdcae1a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_IfTagsFailed
now: 2026-11-12T00:46:39.1389588+00:00

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
etag: "0x1DBE5FAF4FE35E0"
last-modified: Thu, 12 Nov 2026 00:46:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b0948715-2393-4d4c-bac7-f9d66e81b065
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a47c747b-265d-9a1d-3fd8-40cdffdcae1a/test-blob-207eb5bf-9091-ba8f-2c95-66239d640291

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
wN+sAcxlSgrC3v/6T6EwI+0UwRlJDUm4USXm8gJIrPkE3Wyj+77gFSpy4n8mIkqdqB3f6xqV0bOV
9LCnf1cHeTEG9nI1jCcvM6zv1yvJkS/aSErlacDebwy4DgYOOZXSamhNICzYaBv1sLdupfmIy2OA
zDcMIhBwJ4dmfX4gIPoWHGzCfHEDAuAu77gJcMkSMEKjjWxexkhY3Pikcuqd1Y+8WImNxk/xfclX
3TJXZ7e9U0w8fJOOuFYjaZ94XpD1kRopTBhAhGrysg+iBugVAXVB5x6eYFj8Lp8yaVyweB85YksY
Lhqffc7iScqD67FtDWcpN3dyVzDBLB54DRsNQTnwaaSc/dNaomlPuxaNeELuxFv1hkGnxwsaVgH7
J2+z1QiQkoIM0RCUz5UNIpsaNLPciUi/GLv4SKGZgabSX3v6m+YO/Oa/4vNLYbermqRvACJNH50m
9L1MmErgck9qwW8aE4a0CzfNHKdVc7YDTa79KYCDhD/d06cpwmSc32+k4Z9HkYYduvXrfwP20YAG
SUub40jO5jwwPD/fi0jTMT03sJIXvLsn326LmAU85wImI3kZAPsn1ftiF1RHPi+sF03FvyDu7oyP
cwTZQ00381U9uGjPuTFBENuXtaRn4KA/3oC3dijhODTsioz2TZKtKiP+CYXG3F4chK5FVzjoJ5Nj
mmTMgHwtXIAz4y+kSsJJ6YuAadcbeAEim/J5m+H8A2L5k7Mt4aqn0K0Ek/kudznr/G2tZ767SCFj
qeWKtMCfN9/Nq7cPGwjg2ZgqFuUI8yO4jZ9zTpykPUqRyTfFHBvsZVsZYcyB3OBlzI4lkTI7WrXB
0SYgLOhDKG1sfVHRG719PbCJ7pJWN7G+DYIOf6sYVW6BA0r0zDlz1jheFF6OlLHRqFSBsmwja5p1
YR5mNanCVCfiTxdyiHF3Fhha+CJSMHnRPddXl6MCXZiwf2obDaCOnMA3q0SZXiDjCptTyXN4IjGk
lPjSa72D4PF/wggGWwl3y1thG4Q0N962c4wIr5QkN1w4d3iovDADs8tSGZwX3K6S2/4XFgetb1wZ
G/cwezBdWoqszuSRzw4rXWi44h5Bn5feddSWDSBViwcbjqA50zea9b8Saw7JAQvv7Lme9I0+2Hxf
UQVcx01pV0LddUBu8YowHexeLzSJFHTIpiFntpd63bYk2YExPi5yqBTL7IvLgPoubdag36hI1j2R
lCArAaCrY5iKShgI/9++7IYfvSjo/SUnOUjA2f0O2wJEoKkNRqZzIInzQDbhJW734fIhKBkVqJf6
BMhY6ombfG4VxF41sabgrJye9bzvRRPZyfgK7LPpL/gSE0HdGzb/WMTIy2EQwTBMQXt8drLbCw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x236F45FD849AA80"
last-modified: Thu, 12 Nov 2026 00:46:39 GMT
content-md5: uHnW7joY1N84UgZYsAUscQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b01ab047-9161-4b36-a8f9-475ebf6e2acf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:39 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-a47c747b-265d-9a1d-3fd8-40cdffdcae1a/test-blob-207eb5bf-9091-ba8f-2c95-66239d640291

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-request-id: 03b533df-bf33-4378-a6df-6214b5444228
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:39 GMT
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

## Interaction 3: GET /devstoreaccount1/test-container-a47c747b-265d-9a1d-3fd8-40cdffdcae1a/test-blob-207eb5bf-9091-ba8f-2c95-66239d640291

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_4
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-request-id: 3dbb3b82-18c2-4c7c-9b70-138b1dc8780c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:39 GMT
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

## Interaction 4: GET /devstoreaccount1/test-container-a47c747b-265d-9a1d-3fd8-40cdffdcae1a/test-blob-207eb5bf-9091-ba8f-2c95-66239d640291

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_5
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-request-id: 352ccec0-2bee-4097-8dce-115ce52b0f74
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:39 GMT
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

## Interaction 5: DELETE /devstoreaccount1/test-container-a47c747b-265d-9a1d-3fd8-40cdffdcae1a?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: 4105e1ce-e9ab-4429-90ac-db7c9f388c05
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:39 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

