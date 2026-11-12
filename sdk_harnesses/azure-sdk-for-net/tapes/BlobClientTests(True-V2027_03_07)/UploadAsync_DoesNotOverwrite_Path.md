## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-383b1a6f-0916-24ad-3c2b-9f3309b2ddc4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_DoesNotOverwrite_Path
now: 2026-11-12T00:49:11.3726909+00:00

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
etag: "0x234A738972169E0"
last-modified: Thu, 12 Nov 2026 00:49:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2cf4d021-e6a2-4c6a-85b1-276cecc9e6a5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:11 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-383b1a6f-0916-24ad-3c2b-9f3309b2ddc4/test-blob-c0428700-caed-592d-855b-3d933660a862

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
2Y6dHmUaQ/4JI3bCxd1+LKTtnK2sVyal7OGzu8sa7duDPVp6Fb5e5URDtspTapSn3RHvScT6toJo
+DGDZ4gy7zWbP4eDAxfljrdpaKBbUYJNC926K6QWiIfYEhyN2327EMeUuCsMI9n5CboNkU3hDKav
NVuqd8ORhLYAq/H6WLM5rVjZx5lWQecDwSHpCfc59wV23aUhEZgDAzN1DHjo/7EH0+T1B0UNWfR0
praip3q+xrTrg3oNF5u/1sNl4TRvG8Fv4TYTRO/AaYSwrWvhYFu5tkbD/Hs3+rtINTGBp3jABIv1
M8VEq4HEKxr2XGow3XVorCruqx5FOOd6yg6+PsEM8Kjf7C2VdArE/9FhQJ1RF1i7GftN0VlssPre
yuByBuxY6mvBUPFI0jcfKaxN4/dKKLO2AiXGvh5Pczwyt6oqUfjkCVYxkMdnc0bELaitH8wDlKEt
vAPHkitNcd21FRuM9dizadqgGJjsT4/eApB2olRvLyIJ/JT0HHYr5B7psl4qNzjQ+bXxYnwIQW10
6JCa1s+IReb4g/hDvkxjdTN6Ap0wtMpXpqmefsymAbsngDTmkA5OYGx4MrRAjDpoje1IjT/QQzTF
QjAm6sYZUYE9Gz4YfeUlK6EwuIEWFxluNfDfXnN8Vjz/IE3dKHamXuAyA3H8UBAHI2KdoIuyrysW
t7TWOvMOwMQBGVyXRwIqilqh4xSocuXf1zoR3raxTHEix3HCzyTtI0Ks+ja0cNtfcxYwEcwWbkXO
92K4/eIOUMzqdYCRaLo1s7/S/HeuK2dfsmuggDqlDFgs89jCNCZgnapqyftbzQpb+10MRHLNIMv7
WUt2bs+RRWknZXXic3+ZcV7NRGFrBORgRIXdmMfmXtIMxtvb6S/a2IOSM2iVeYfec9IT/9tqj1Vn
FSlKtKyhQQai1ayjvogv82vd2dB7y8r9/iX10l/2oTeGc9MFkCTW8PFi86PbOrRJ5AtwjLWE60pe
TLWHq2+mqzN0HUq0KWNHBujfGdgnIcRxq+5ThhWBAYiIpkNuT0SCu0dvZhxqlbqoKIbMpdFyNyvx
FgCBUiQe8hzBK4Mg2bajXF6Qt7unBhYzq12OtVy2Fm4XfDlEAWgjUHMAqGk3h0/PKEhz4oBvSg/p
TafGjz2/CxUUCFx8X1v1bGZHp16t+yQOv4wUQzTuqDIqWrPBXMA1QJ1TI3/yUsnsfXUZKKOxPFKD
uNCxq8jhJWAqUgSnNBClEmbAWdilG23CJ8W+1X+OeR5hPqTwg5TVcv0eyADERUllcxY88OJ53p1j
74QCIlDgm9nmRvZrtY7R6+fbhlJt/eJ8WWFpUok752AHjZQQ0lCsPSwn3v5T+b6IagT7nldK9Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21699CB78BC28C0"
last-modified: Thu, 12 Nov 2026 00:49:11 GMT
content-md5: w/0tSfhS8OqKUm0zI75GOQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7007950a-fc93-4529-a6e0-9a7909aa20f2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:11 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-383b1a6f-0916-24ad-3c2b-9f3309b2ddc4/test-blob-c0428700-caed-592d-855b-3d933660a862

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
2Y6dHmUaQ/4JI3bCxd1+LKTtnK2sVyal7OGzu8sa7duDPVp6Fb5e5URDtspTapSn3RHvScT6toJo
+DGDZ4gy7zWbP4eDAxfljrdpaKBbUYJNC926K6QWiIfYEhyN2327EMeUuCsMI9n5CboNkU3hDKav
NVuqd8ORhLYAq/H6WLM5rVjZx5lWQecDwSHpCfc59wV23aUhEZgDAzN1DHjo/7EH0+T1B0UNWfR0
praip3q+xrTrg3oNF5u/1sNl4TRvG8Fv4TYTRO/AaYSwrWvhYFu5tkbD/Hs3+rtINTGBp3jABIv1
M8VEq4HEKxr2XGow3XVorCruqx5FOOd6yg6+PsEM8Kjf7C2VdArE/9FhQJ1RF1i7GftN0VlssPre
yuByBuxY6mvBUPFI0jcfKaxN4/dKKLO2AiXGvh5Pczwyt6oqUfjkCVYxkMdnc0bELaitH8wDlKEt
vAPHkitNcd21FRuM9dizadqgGJjsT4/eApB2olRvLyIJ/JT0HHYr5B7psl4qNzjQ+bXxYnwIQW10
6JCa1s+IReb4g/hDvkxjdTN6Ap0wtMpXpqmefsymAbsngDTmkA5OYGx4MrRAjDpoje1IjT/QQzTF
QjAm6sYZUYE9Gz4YfeUlK6EwuIEWFxluNfDfXnN8Vjz/IE3dKHamXuAyA3H8UBAHI2KdoIuyrysW
t7TWOvMOwMQBGVyXRwIqilqh4xSocuXf1zoR3raxTHEix3HCzyTtI0Ks+ja0cNtfcxYwEcwWbkXO
92K4/eIOUMzqdYCRaLo1s7/S/HeuK2dfsmuggDqlDFgs89jCNCZgnapqyftbzQpb+10MRHLNIMv7
WUt2bs+RRWknZXXic3+ZcV7NRGFrBORgRIXdmMfmXtIMxtvb6S/a2IOSM2iVeYfec9IT/9tqj1Vn
FSlKtKyhQQai1ayjvogv82vd2dB7y8r9/iX10l/2oTeGc9MFkCTW8PFi86PbOrRJ5AtwjLWE60pe
TLWHq2+mqzN0HUq0KWNHBujfGdgnIcRxq+5ThhWBAYiIpkNuT0SCu0dvZhxqlbqoKIbMpdFyNyvx
FgCBUiQe8hzBK4Mg2bajXF6Qt7unBhYzq12OtVy2Fm4XfDlEAWgjUHMAqGk3h0/PKEhz4oBvSg/p
TafGjz2/CxUUCFx8X1v1bGZHp16t+yQOv4wUQzTuqDIqWrPBXMA1QJ1TI3/yUsnsfXUZKKOxPFKD
uNCxq8jhJWAqUgSnNBClEmbAWdilG23CJ8W+1X+OeR5hPqTwg5TVcv0eyADERUllcxY88OJ53p1j
74QCIlDgm9nmRvZrtY7R6+fbhlJt/eJ8WWFpUok752AHjZQQ0lCsPSwn3v5T+b6IagT7nldK9Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobAlreadyExists
x-ms-request-id: b10b702d-b9a2-4eaa-b925-73b0a953e55f
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:11 GMT
```
### Response body recorded for playback (409: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>BlobAlreadyExists</Code>
  <Message>The specified blob already exists.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-383b1a6f-0916-24ad-3c2b-9f3309b2ddc4?restype=container

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
x-ms-request-id: 0353f7e4-60a7-4225-a9ee-ee27e9c404ec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:11 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

