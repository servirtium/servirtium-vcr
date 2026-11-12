## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-41cd93a4-4f72-0643-f6a4-69769866eb2e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SyncCopyFromUriAsync_IfTagsFailed
now: 2026-11-12T00:47:21.6559534+00:00

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
etag: "0x1FD56055F7A0D90"
last-modified: Thu, 12 Nov 2026 00:47:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b77734fd-8e91-4708-985a-4be70367427f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-41cd93a4-4f72-0643-f6a4-69769866eb2e/test-blob-67b4ed82-cdc1-3192-de6c-8aef6de76f98

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
RQjeZwjxy9lqoFkzMc/5NTVVthWJtUDXAJtiBcRTmA800DGPiIMmkCHa/CBzX/8PclW6FzBaD4/I
BmZsjsUVFwhK/mCeaqyxLyXzrrgfY6GcU5NumYDe2sGhx4EduQJbxeUYKGGecAipCOgLZmDXqaLF
0Doypn2HbCOf/aIqlHYjl+nSBjtA/eOKxZGY03NgyR7fWOnHKB5okbw9/3Nlf3Nx5893BKJnhdJX
qOHs7piwPzOESzyMW27KanR+Av5vJEUdJuuk6MR7d9MWb4A9e6MjjL8/4TQ35YtgrZou6ILU54Ob
z8etDFduCNNpduzujO7RW3U+MEMR5UFfRDoqTY5QQof9oavbdoBo0dlgzm+fcSCrXI0Mlbc/ieqG
TcgcRLpEGDNk8epD9uT01l5qsRbSwNIafvEBQ6zQvRjBVCi4S40eHLU7O4A1aGapF79Y1djTtIz1
AsXJQ9SHlDPSgaG7PIrRTJRhloVR5BaLWCvtd+c/7qCcwknHVNnhs6dNY+bE7ds0h4lDcR0HpB2u
PuuomhxLkpIBH3lACfe7gOPeBIAvxmpQuPBe+3yDlB4rGRXtOBmKAdBUw81i9H2RiPE6KKCcf3iA
WOIs7ZYWfYtbFPDizkfJUwKw2wOd7cNyzXOKSWt9j5mdbd83XhQ5PUVCB9+Nr7qpcNSe7KN042oe
uR8jizQf3YVWRGBokfXtdp2+W+bk5R654NiW36L1KYl1GaT0FrIRIylaNmpZQd7fsHYGtYiDOtQB
aapbiP7jYBvW83hR+WDrrTe9ia+zYJ/5ty8s73MB8d/P86wHtZoqd9VOgk5mjbYWGghQxbAlTQkL
YdDPtnGo1QGZggaz4/edkhLaZd1Qkyp4FtVrsSsuqqWj/FPKW8Bkpq1MzQuwYjcQsjKdS+grus6m
VqCbPCPVatdgEOak0zdSdb4wBMUfx7OeWv74kV+8d0KEIwUgyGmJdmIzUFJQa9/7S9Up+rYIho/s
/eIk3dl4o5ikH68xMa1Up41j7HdhTe4f/EWJk3yMe512M8qHZJmJuqy5rEwwyRko1FMopZoXi7Dz
BeCU7hAcF6QRu/3izULz2jHLp6Gi7jIrYb4oY9YDXqgalF+59MybnZSoHg4bRQcRNctpS+QOUBat
aIxS87TNDl1VyDniOeVkMAkN+tAkDxy2Fy0KmRLEC0NIDIw/SKrf2g+wxnzNLvzlBBvaAVZGiFhw
m9uGw3RKkLz1mi1YJOdfLSDAdEmf6egxJJX26grtAYQ0z6zOWReaZTXA15POjd80e9Q1hhQP0LLy
VZ7fVKayCJmpJFU6kNMJJQ4T3xFVYpe1wm41t3pwJP/62wR5uxGODc/6JWiK+esALGEF+/ChnQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2747E70183945E0"
last-modified: Thu, 12 Nov 2026 00:47:21 GMT
content-md5: Sg3ijBMIDl+Csvyc4xLjCw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 48c6fcc5-d4d7-43af-8185-1fcd81be2539
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-41cd93a4-4f72-0643-f6a4-69769866eb2e/test-blob-912906f2-7c38-1e50-39ff-5540b4cf9069

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
/ITRQVo8LivJgzWLGWopD1g+EXKRgFaRftzsaDS5NjGb9wh2Hl9Dtdf+yLRHxAXO1kbndr0d2Hwu
QMN+UMb3EEwD8CFhsvD4+lyak7ihSbnWHZLt0cBzfR+MSN2cxGURBrhnQ9TjbSNW7nthgkTEjPcJ
pzIzCT6MkHIC1WoSWzX3iYwAOgXl87Bvl+JEEfrayLvmkx0y3v1527Ni4Ze4Q5JFavm3xFLxJLSB
xHFcR353JwyvLMgYxKuPhl5SghIZtlRP/6cBIwRp9G9psRmLHZM06rmLCRbKLKZOKD3zn6GiaA0d
DEjXdQQIRThZrxKRA2nLHpdYjqw+hNIBs/rGdVXOxkgLbhBLXXW1gsPdcX2TvCTUKIAJSdph34d1
1sIJQdDjiujKhZVZgMEiowvoYBNVbffV8k3UxH1uqo+I1Yayq0Dz+uaUyTaPeqi/5qbPeH50IGjL
NE6CDsZrXNsG0Ko6cPfK9WYswKTARXekFd7WnzEQE7Qe53fxcOsgKGxbiar9hHauBIMYR1/DCu7X
3fnolLyp9bz1HIiA2IR6DJc3ZbzNp5BnKJqu98xUWtyJGpLxOJSwspPtB2jtLSv/njvIi6UxCTZp
gGsi+v7wocGs977xiNQDh7Io4J8nefpvr1mRjM42VxFciLcojreV/GanQTZtDRVmxATyCSmXQQZx
skulXxTydZ+slQAd2/n7k+M4fzjEAaJDKsfKQ07nxUawt9ts751StcuWwHgUSekK93VGXsHOrLGp
YTRMJzJRxc+5bCMej6NF5spsLUApLuHev0zYoWeE4gopw41pBY2ZRfuoWtzF7GjSAHf2YX9wfzNT
bmjleSNoNYoZ9MsW3OE90+hFgdMEGNPjBaDwjYGKuUNaFpcks8vXPyVSrPecvCSVuI6XKv5fTlWU
AnODeKcIjjqIu8VKGR8cbUGusWzbR0l7WtTz845F+8dBkLFYVMZ+SR29FABeS59ue728sZzpubop
Bx7SFZusQr/+CIltwxl6L2dOHjJIHA41hHfRiUoqV9b2L0yoqzOBENJBYEIWAbijQYE0mpqH4OsP
nZEj2rh107CydpTN0YQ0zA1gB7zMHoO/LUfJ9b07b05hmQ2iXjUZy42SZIoj1m/8AM2NJ9gvQ38O
ZKxxrN3zdgdFbDh2kW7XRzsuOrn4nFfYzPXvrkh1MlaOk/mJqB+vnu2C3Wo3hm5ftd+dAAnFFchV
mN/oBMi/0Dni5/50Tp8bf5vMdb7toUWGkPho2DJMyX4xNA8/x5olww0wVJ5w6mc/gYBt+Z8JZ/ea
YnTPVvgHlR5/QxqQ27gBprKxvUymFaWRKFax38/eJ8wXpWQlVWwUKL9/8KdNr6XIbFLtWKmr8w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x265247DB6465B40"
last-modified: Thu, 12 Nov 2026 00:47:21 GMT
content-md5: TKHZrVclnIsa8HcFp50wtg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f66c2f05-e2ae-4350-bec5-24e879ce73b6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-41cd93a4-4f72-0643-f6a4-69769866eb2e/test-blob-912906f2-7c38-1e50-39ff-5540b4cf9069

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-41cd93a4-4f72-0643-f6a4-69769866eb2e/test-blob-67b4ed82-cdc1-3192-de6c-8aef6de76f98?sv=2027-03-07&se=2026-11-12T01%3A47%3A21Z&sr=b&sp=r&sig=oFzDygmSa0sGPGyDVk8NpQIcCeqipknX26V%2B%2BpPQ5%2BQ%3D
x-ms-if-tags: "coolTag" = 'true'
x-ms-requires-sync: true
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
x-ms-request-id: 97fdb6f4-3b13-41d4-9aea-81e34b3c4007
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:21 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-41cd93a4-4f72-0643-f6a4-69769866eb2e?restype=container

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
x-ms-request-id: dc0a5689-4201-4a6f-9822-cac86ddd6aed
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

