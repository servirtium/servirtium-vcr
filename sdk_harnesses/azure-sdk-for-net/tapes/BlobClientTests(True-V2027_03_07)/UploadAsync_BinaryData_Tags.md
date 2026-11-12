## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-25ca8660-228f-2ebc-dc36-bb9001ff553a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_BinaryData_Tags
now: 2026-11-12T00:49:10.7849978+00:00

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
etag: "0x1C41E7D53BB83C0"
last-modified: Thu, 12 Nov 2026 00:49:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 60c69358-f5c8-47ca-95a7-34ce2af35ad3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-25ca8660-228f-2ebc-dc36-bb9001ff553a/test-blob-b45b97ec-091b-3c28-5012-0b7eb908d131

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-tags: tagKey0=tagValue0&tagKey1=tagValue1
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Jle0oxh5h06irp2BSFNaLEFGdyMv6K5XXo7VfRY9ddRliWmpSrIicg8MEmxspvP8t988c5CtAT6p
XUSKpAo3ZDnJG77qsOGPJAUUItZB6rea2MU3AAFDuIgq/+1tl80E1a0yoos0EQf9rE+Lmd5oaHKM
78tE/2Q4hWM2v7D0Iow3D00oDkgsZca+OlOyuB+pwZd64KgCwNVJ+hwn/VJWCIrCU4mQP1oqX4kF
hsUQhc1Djf0ZekHkNU943xMrBWd0aDHJ72SVGII9T4Ae/TkPOHRP5HBUPI5I3h46F2BG/1ohkB6T
RpZprnR73CrBxTgVaaaf3CH3ICujgRFFWgEh9lAl/Gwbe/He5jX82GBjhxnmJa65pyI5Km/y8MWE
I1NzWeXam8jL+e20wPbr+kfLQPr4XzVSaE8t7NL8KYosWcLiiX56iOtQGyvABOYsTjAnJ7DLjMQe
IPGWra/2ztBjiGYzCXDJUbcOp0QJkmNoAZ2h1ALaYM3+w2mN49s8WUxbXXyA+EW/XtX5vOWAFI6N
LasRVPnOiCeZNUUHO23b0k33rjTn6AhY4XYs4aPnfq/b/7UvKgRSjdRU5sP/uCJoHeqXiGVZpUWj
uXODoqeDsbaVKzy3q6dIpCFfkwFEWChTw8O4UPZJgVlwjHGRz+ot0DQMao3msXFDTuNE+RJDXmBK
MN7ky2DAS6niRh81t9U2MsPMOO6bbBJRdQISBYhHLC0QRp4MSAXUSx7jBGpSDZYNDcZOdiZyr8PM
klVerkYhmhryJXA3Kuq++OzPuGin/2drBffB+LYGnpfbP7avdZ3XwWlQX+gm1uPckH06ovdaJJPu
86lPYKFj64bZW+o0DoNO+Pb+V59+RS4U5Wg4zPuggBsiwYL0iGHI7HRhTHr4qIL666oAW8zzb616
Ons5Kh6KONrPEU0BWm+VNmsrHPizGzzlPuFRoCROL1HUeU3mjsFW1xSfKZc1+ZA6ayVhyFK1xx8+
U+w8OZi2geH7LOAhrqep1EXkE/KlsEVQFjT/7Gf/H7IuqDvVGZ576ae1OcyvGbx9uPMM0LMtmKKm
6yJjtpR6+wwu8wZs07unaSlK8Hd4of14gjNz8k7/AA+YLy17FzITOj3AgSW1EOU3ZWeJ46grLUok
6zRgBwm9L/L306SNK1H3N7U5uB/Xw3FOO43ndR1mbQHiViv+sjM0AlIzvTxAqjkVkqvy8nUrTSjD
Est71rnVkGajqtQm+YWCBLXNpAU0DpFT0eNxdHuLtwkDOqBnuCyYXSzWnf9k75kmcO2/XakijgM6
KATWZBzrF/PLIr7lGkuINEbYXnCS7uJJSgSNzFlg4aycLZAowfkQ6oYMmc3aQVWiNiliSjCTqA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23D203302C3BFE0"
last-modified: Thu, 12 Nov 2026 00:49:10 GMT
content-md5: nn3+CrdErn6+8pEolg0hug==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 08067c44-232a-42d3-bfb2-469b4febca80
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:10 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-25ca8660-228f-2ebc-dc36-bb9001ff553a/test-blob-b45b97ec-091b-3c28-5012-0b7eb908d131?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6f2f9966-61a8-458b-96c3-bc3fc225e167
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:10 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-25ca8660-228f-2ebc-dc36-bb9001ff553a?restype=container

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
x-ms-request-id: d06c0100-f2f5-4fb3-93a5-243b0e8dfddc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

