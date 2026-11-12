## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9d497697-8601-e7ee-dcc0-cd6653eb0465?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_Streaming_Disposal
now: 2026-11-12T00:46:41.6883867+00:00

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
etag: "0x265B41B5C53D540"
last-modified: Thu, 12 Nov 2026 00:46:41 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6ff2e948-46c7-4487-a4c5-fd3b5d3571c6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:41 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9d497697-8601-e7ee-dcc0-cd6653eb0465/test-blob-e8186d2f-77b1-2b0e-ade6-763d25122fdc

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
+uRn37bSOvEIyPwAm+tWPzQH7xkvUa0tuFVTUS/3teBCk49mzJa+xTtYlTiJ7kzwaY4xTPzrNak3
OiZgfunCEBMbvgdb8HKdSCnd17x0o8oJYuegxWjkVl7mL5FwXUZSlYQlbjBFlXkblATSDl3swpdb
VxwCIUqqN2epdcHhLOrjikI3TjWaxM1thTFkEkgB+Wz6FQYqUHQ6ejfImx+3OmcZ7oMbtHRiwJNO
lJsYRiQfp3tV5xfkuTrN/dP+0iittkvJSyPE5kT3l1Ry27zYITQSqfSjYlJQNDVJTbegZO5rod5Q
T/oBW8E2XU/Cct199duf6yk0CVP4eBbtepiNVjNmBzreiNI5EE4ybQUCjcJXzFjcAXjFNpeKV9bk
E+ApqQYcXGqjn20JZdvaAZxO9utUlq5AsVW6odCjUzD7Vf1tCcP+5jFXtCzr0pyd6jX6PGHrj30x
6PixYbuaAEs8DQ/dbffYTw+5/OGCVN64HbabqBfOEMV/OyDLTYR2vbPgrsSMv309IexRMZObr5QZ
+EQE/lg0bv1KXjHXDQKLQz8toaUaLF05XYYqfN4y5IyMsVQ/cb5bq0DGQWFMZhPpxu5UbQ7u/8vm
y6HRCvEfGHqkS1ytS9GA0fVlU+r87PdyQLbv3XZ+nbKJWaUdiqFPpynmpxq3PHoc05sYiazh6d6p
Xsk6LzoEJq2pJPIrYkdTFazBFUXcugQ80graZRQFqG/HcyzYFHfv4oBtDReH8HFUxHP/H9OZzaPE
/V0wKcGZpHyDZO8bewE10jPFb6ztteKYhaGgBoibLaaIFBYavri/02mbA4uBOUlyyk2g1F3310h6
l6Qg+Z706DdIk2bqGxN6BZtCUbFWF0xXLTs6+llIkT3OnycUn9rLpxtUOabiiK86Js7CtIWWJIBY
yMtiue3d/wEpHHvsZmbBdqqWAd2ldaWLANSLhty4N3qmu9cOae0tdzmkuGwzTr9nAD3aACKislIm
17kYUnklceQBRaqPsw28aIqkAbw5V7IUI4af3TdXBAmE55E0FCS/f0eHMggV2E0vHpeY/bCV7X8H
Ay/zhZStqUCgCst7iFRl5IJ1sSWp/0o4b7+gvwZY7voSLRH1zPmz2YjIdM6Cs5ZCMhguIDtZXQTk
uhXVDeo6SBvQaVpCbxiIwdic4Yp8trwpXYztKc6/uM8MEBLk3syejSyysUo7AMIApl5jvXx5aANZ
q69eTB5NEbCKNl8FpOML/lNeyQVx7V3J7YNvW/tSk6gOijIcQEEOZZ+ZsMlj+gF6V74pG5/+575S
lF+a3bW0N6K29hmx774RT2Nl2DyTZfKC9AQ8KXcJEKN0yavic4jq5XkmrQPnyWgAGMs7mA+Bvw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F747951120B4E0"
last-modified: Thu, 12 Nov 2026 00:46:41 GMT
content-md5: 9Q9CdFkqo26z9SYog2ULOw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b3909f69-8e98-48d7-8b0f-c366f231778d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:41 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-9d497697-8601-e7ee-dcc0-cd6653eb0465/test-blob-e8186d2f-77b1-2b0e-ade6-763d25122fdc

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
last-modified: Thu, 12 Nov 2026 00:46:41 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:41 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1F747951120B4E0"
content-md5: 9Q9CdFkqo26z9SYog2ULOw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91182151-35c2-49e7-94a5-21d52a4deba3
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:41 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 9Q9CdFkqo26z9SYog2ULOw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
+uRn37bSOvEIyPwAm+tWPzQH7xkvUa0tuFVTUS/3teBCk49mzJa+xTtYlTiJ7kzwaY4xTPzrNak3
OiZgfunCEBMbvgdb8HKdSCnd17x0o8oJYuegxWjkVl7mL5FwXUZSlYQlbjBFlXkblATSDl3swpdb
VxwCIUqqN2epdcHhLOrjikI3TjWaxM1thTFkEkgB+Wz6FQYqUHQ6ejfImx+3OmcZ7oMbtHRiwJNO
lJsYRiQfp3tV5xfkuTrN/dP+0iittkvJSyPE5kT3l1Ry27zYITQSqfSjYlJQNDVJTbegZO5rod5Q
T/oBW8E2XU/Cct199duf6yk0CVP4eBbtepiNVjNmBzreiNI5EE4ybQUCjcJXzFjcAXjFNpeKV9bk
E+ApqQYcXGqjn20JZdvaAZxO9utUlq5AsVW6odCjUzD7Vf1tCcP+5jFXtCzr0pyd6jX6PGHrj30x
6PixYbuaAEs8DQ/dbffYTw+5/OGCVN64HbabqBfOEMV/OyDLTYR2vbPgrsSMv309IexRMZObr5QZ
+EQE/lg0bv1KXjHXDQKLQz8toaUaLF05XYYqfN4y5IyMsVQ/cb5bq0DGQWFMZhPpxu5UbQ7u/8vm
y6HRCvEfGHqkS1ytS9GA0fVlU+r87PdyQLbv3XZ+nbKJWaUdiqFPpynmpxq3PHoc05sYiazh6d6p
Xsk6LzoEJq2pJPIrYkdTFazBFUXcugQ80graZRQFqG/HcyzYFHfv4oBtDReH8HFUxHP/H9OZzaPE
/V0wKcGZpHyDZO8bewE10jPFb6ztteKYhaGgBoibLaaIFBYavri/02mbA4uBOUlyyk2g1F3310h6
l6Qg+Z706DdIk2bqGxN6BZtCUbFWF0xXLTs6+llIkT3OnycUn9rLpxtUOabiiK86Js7CtIWWJIBY
yMtiue3d/wEpHHvsZmbBdqqWAd2ldaWLANSLhty4N3qmu9cOae0tdzmkuGwzTr9nAD3aACKislIm
17kYUnklceQBRaqPsw28aIqkAbw5V7IUI4af3TdXBAmE55E0FCS/f0eHMggV2E0vHpeY/bCV7X8H
Ay/zhZStqUCgCst7iFRl5IJ1sSWp/0o4b7+gvwZY7voSLRH1zPmz2YjIdM6Cs5ZCMhguIDtZXQTk
uhXVDeo6SBvQaVpCbxiIwdic4Yp8trwpXYztKc6/uM8MEBLk3syejSyysUo7AMIApl5jvXx5aANZ
q69eTB5NEbCKNl8FpOML/lNeyQVx7V3J7YNvW/tSk6gOijIcQEEOZZ+ZsMlj+gF6V74pG5/+575S
lF+a3bW0N6K29hmx774RT2Nl2DyTZfKC9AQ8KXcJEKN0yavic4jq5XkmrQPnyWgAGMs7mA+Bvw==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-9d497697-8601-e7ee-dcc0-cd6653eb0465?restype=container

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
x-ms-request-id: aeddb902-35cc-4108-9151-0e3ca6ecee85
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:41 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

