## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f8211416-be66-72c7-eeb0-dac16c337098?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).BreakLeaseAsync_IfTagFailed
now: 2026-11-12T00:47:35.1094793+00:00

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
etag: "0x1DCCC19F69FFA70"
last-modified: Thu, 12 Nov 2026 00:47:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3303e8fd-fb90-4434-93b7-efe42395dd71
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f8211416-be66-72c7-eeb0-dac16c337098/test-blob-1db04c13-12a1-2646-2190-99bfefe7811a

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
CjwExum0rcsXJqJHZPX8t92BhbCfSawEzvvW1iUIgwYvv7cvLqquXp7kBXtv/8EslOHibWLQe8CP
APfu3temD6KbF6U+zIky0yYSukQxlc85qUFDJhWkX0T2ny2yv4DGPvbY0+cc7sdYr5k7vsB8Xmso
tTSVYuiN97dhRy1bfxSmS3xOWcHnHLt663d7aKGDeUHCigpLMNsNS9wvu6aa/C+FlXNDLgWpQZh5
G3dxEY4W3c3smPUJWhqhQA3lt2EU3+9H9dMtQEs7GEhx0hVkmzlNGd7YrmM6ezpYou33xIo3ZDyI
Khu76J2BsH+smIgFPKTTmJ6COzGLDHqY1Z1eRFS+OW3Z3HEekTBBVv7jjeOyU2VIIyzstCgK/B2h
IxP/I2sr7l8aLGAztQZuQeQzp3+W5oE3FSAn0YRFzt9TfG0cQTOSuJ6DlycFFW0lfnND11WeCj2S
xw5KAx3a1V2A3ziZUf+xoO/gE05aMv+yAlMRAfaKtXIwinokR7WBqcLJhTY1jCxzkTZmvvfuOJUO
lwHJydNn9SnGaMeFjVk5XmmMkK3JfXUmnnDAJPd6QVHkFa+zuODuYo8MbyNk7QTdLF+NYqfoRRqL
oipjp9AySyd1oXephqaJnS4dvA5RwbFr4viX7d6q/M+UKBW1i7u+2iT87kyNM6a5BMR5yokMOeB5
98TYm11Iy6SnFF2R1BJyX+LpVdNk3q9S3ukaMDJGiO40O5P25j/GsyOo5R5IJy+xBmqnIuQNFRkV
hbx0LppxYYxvXZh+fHiiI6KvvPiQCra5aCrHnmUJJiZ64WCCUoSINoOS2MqWMorxBP9BXlgghHsF
usVwqcMmZTdyBJoYINEdJoZ1/jLsIzWg1ZlmyMfNWV3lfJe/GIzAa3KTIy7v2eQuJDfSq4VIGZeQ
z9Qpv51vpKo9MqM6Xg75tJO/Wf8HsPu1OKSQ+67XnWP/L0i4l6vUI3+DsqdA9MUp2PbyicCYiR/Y
dIf536n7ZZVAOi/FQR3n6jV/g/5UdETeZiK35BOiZqYp4CMk20TVh0wS/7mWZJfZC56KGAUgg/9D
GniGRICBndOJm2H5ww/wqvuyQXWKRwKL3dl1GE2gCFwj4cDMT0PLkWHlDcg24EiOmW4KbkGKuNN1
+manC4WF6JIE1uJOJFq35rATpTo5Vf2R537flpoamSjtVlTdJIXcXyQ1MQllP3UUUoiRdxOYPKVo
FSQGplL46jy5Yc4F2sIqNkUWAyTzK6cJykMRiSIVVRqvdQ5h1bnRPUbNrN6mDnjFZkDNgTiAdOl9
/NsO5mEaowyzVmSzyWCLRMbdJn/IYrzLTCLhR9PiLgAk5NjdwlblsgjS87gTEp3gQj1xo01qtA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x232B712E6C0C900"
last-modified: Thu, 12 Nov 2026 00:47:35 GMT
content-md5: kJtZ50hGNEXcLRwr3sTEeQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 576cf4b2-9dfe-44eb-88e4-2c00223bc496
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f8211416-be66-72c7-eeb0-dac16c337098/test-blob-1db04c13-12a1-2646-2190-99bfefe7811a?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 9a431f9a-393e-395b-d127-638ee487ae81
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x232B712E6C0C900"
last-modified: Thu, 12 Nov 2026 00:47:35 GMT
x-ms-lease-id: 9a431f9a-393e-395b-d127-638ee487ae81
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e92c7c4c-263f-4a04-837a-f9a54d82f683
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-f8211416-be66-72c7-eeb0-dac16c337098/test-blob-1db04c13-12a1-2646-2190-99bfefe7811a?comp=lease

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
x-ms-request-id: 53868ec9-ac84-4b4f-bd66-f0202390e5e2
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:35 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-f8211416-be66-72c7-eeb0-dac16c337098?restype=container

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
x-ms-request-id: c4d0fdeb-cf0f-45b2-954a-ffc5cc13587f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

