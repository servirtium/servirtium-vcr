## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2e159da6-c70e-7da1-c491-03e9b9ac9706?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_Tags_Streaming
now: 2026-11-12T00:46:42.3068751+00:00

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
etag: "0x2340744F48420E0"
last-modified: Thu, 12 Nov 2026 00:46:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fc7520a1-49bc-4f91-97e1-5874d5d82090
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2e159da6-c70e-7da1-c491-03e9b9ac9706/test-blob-85c8c602-8e89-499c-116b-18125eddffea

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
yygMpSL6i5NMjVFzMiBEIWol+hlMoLWxfmtTulk58qs8Smu8NRuOqxKB4oB1LkukTOJ/k7J+uStz
Wie2p9A5EpumNue0iOtOl04Hy700O1Afr253ul75vpA/SNr01wRBSM/kz/dk78T2MPxkd+5tPh/W
lvdiwlg9rXhXdT8QWb9JxYLuT2xZu7+qgIlilUei0Qq7HkAM3oZ3pyF+DXqE5tY8GrFrf+6zfds4
uEHO2hgxtKM1VTt/POf8dqdK2q5FJZqyJXqVNlIbB6Fl1CVEqM0JTVjXTpCbvd3JbwhGaaMs85Kn
G7Wdm35QGk2aGWjBt87aQIxWbdcJF2idzMZJ1J79OOGTnYwXa7HZhjRDAKN1CLc6aygW1oW7nQRN
AM+3B0WvnOCGLhpBw9TafeaixhbEJ8QPD2l152Jb1/+IymviIX/vlGTC7tmc+KhUO1ifGNftiNgL
qPfcObV+Klcaufhp+FtmszGyATjqchbAIasJvL4nm0KS13iIElqvRMSCgj+w6kP8OGWlOoafIDbg
GxcJdG6Y8x621iDj3qDWA710aPDXEDZnDIRYgWC78rZCp/dDpc9W6Y8g+RQiGVnFzzfJK7dFCAvg
omfpP3G++uNqoDepk13tHn9htxYiRPIqk7Io8sf+/Z7rYgNnbKkdYv4wuHkiGzvZ2ww45FH1vl11
v6y+lQgca6OYvjBahrLWQ1QX8ot5CHh3The6xhhM9aSl8qz9X832FE3WiV0Kf1RaYqH93cvR/Lcz
R0bxYaWKTMiMtJMF2OOGIN4+on4abM/CYGN3TxfY1Pb1yReGBbKoTD2VfsrBVYm9dr3tklk4Gdt3
LgBBEv2ws+CcDw/MABsrllZBhO0EAQvZutha60Gdva88DtayZjlA5MvqJEV68XahwvwC95Ttci30
Z1gkVcee/1Jfj/FEeS8dAaAiGtzGX8liuSlFmsYbT5ypvf7gG48DSyTzG2GEXEnM5fb0y1hRLgiO
wpyeWWWLRD9Vm7sxPOUQHs+40kRn3VzfeLTQJoNDWI72UVjyZPG/Z9YhL8CNm6kQ46yImFzEJ+U/
v+Cwux28EUMtOuqMHrnd+GptRa6cUt0Lv0LWu78xMSpzs6UQDqy4ZR18X2C+g8Xzq5/xVuE3o2wD
pfva5VaE+wi/GWoTzOq+tOCQH/J9TDx94w8fQNtJPBA5DWmw3YDH92RX/2pb3961M6EBpoN6hli/
XQFGZbstdt1a2r+BDddfySeNJU3RIgMxaQw5R5WMvocQ8YB/gJKpKoiNAAQfMybKotxb7GAL7Tv9
FPuu9C5HzRs4cBtX4EiV5PvERCH/EjXmb6W4MdImBQNEgWuW+jZZRTPp5sIKc8KUxgdlRqkZ/g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x261E90B654B75C0"
last-modified: Thu, 12 Nov 2026 00:46:42 GMT
content-md5: CmBLxw7NBoQVZaQBIjn3hQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e4010227-457f-49b8-aecb-baad412ffbc0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:42 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-2e159da6-c70e-7da1-c491-03e9b9ac9706/test-blob-85c8c602-8e89-499c-116b-18125eddffea?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2e018972-ea1c-4502-a552-74aa836677c7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:42 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-2e159da6-c70e-7da1-c491-03e9b9ac9706/test-blob-85c8c602-8e89-499c-116b-18125eddffea

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:46:42 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:42 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x261E90B654B75C0"
content-md5: CmBLxw7NBoQVZaQBIjn3hQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1f081ea-1676-49f6-8c92-d59a418a3544
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:42 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: CmBLxw7NBoQVZaQBIjn3hQ==
x-ms-tag-count: 2
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
yygMpSL6i5NMjVFzMiBEIWol+hlMoLWxfmtTulk58qs8Smu8NRuOqxKB4oB1LkukTOJ/k7J+uStz
Wie2p9A5EpumNue0iOtOl04Hy700O1Afr253ul75vpA/SNr01wRBSM/kz/dk78T2MPxkd+5tPh/W
lvdiwlg9rXhXdT8QWb9JxYLuT2xZu7+qgIlilUei0Qq7HkAM3oZ3pyF+DXqE5tY8GrFrf+6zfds4
uEHO2hgxtKM1VTt/POf8dqdK2q5FJZqyJXqVNlIbB6Fl1CVEqM0JTVjXTpCbvd3JbwhGaaMs85Kn
G7Wdm35QGk2aGWjBt87aQIxWbdcJF2idzMZJ1J79OOGTnYwXa7HZhjRDAKN1CLc6aygW1oW7nQRN
AM+3B0WvnOCGLhpBw9TafeaixhbEJ8QPD2l152Jb1/+IymviIX/vlGTC7tmc+KhUO1ifGNftiNgL
qPfcObV+Klcaufhp+FtmszGyATjqchbAIasJvL4nm0KS13iIElqvRMSCgj+w6kP8OGWlOoafIDbg
GxcJdG6Y8x621iDj3qDWA710aPDXEDZnDIRYgWC78rZCp/dDpc9W6Y8g+RQiGVnFzzfJK7dFCAvg
omfpP3G++uNqoDepk13tHn9htxYiRPIqk7Io8sf+/Z7rYgNnbKkdYv4wuHkiGzvZ2ww45FH1vl11
v6y+lQgca6OYvjBahrLWQ1QX8ot5CHh3The6xhhM9aSl8qz9X832FE3WiV0Kf1RaYqH93cvR/Lcz
R0bxYaWKTMiMtJMF2OOGIN4+on4abM/CYGN3TxfY1Pb1yReGBbKoTD2VfsrBVYm9dr3tklk4Gdt3
LgBBEv2ws+CcDw/MABsrllZBhO0EAQvZutha60Gdva88DtayZjlA5MvqJEV68XahwvwC95Ttci30
Z1gkVcee/1Jfj/FEeS8dAaAiGtzGX8liuSlFmsYbT5ypvf7gG48DSyTzG2GEXEnM5fb0y1hRLgiO
wpyeWWWLRD9Vm7sxPOUQHs+40kRn3VzfeLTQJoNDWI72UVjyZPG/Z9YhL8CNm6kQ46yImFzEJ+U/
v+Cwux28EUMtOuqMHrnd+GptRa6cUt0Lv0LWu78xMSpzs6UQDqy4ZR18X2C+g8Xzq5/xVuE3o2wD
pfva5VaE+wi/GWoTzOq+tOCQH/J9TDx94w8fQNtJPBA5DWmw3YDH92RX/2pb3961M6EBpoN6hli/
XQFGZbstdt1a2r+BDddfySeNJU3RIgMxaQw5R5WMvocQ8YB/gJKpKoiNAAQfMybKotxb7GAL7Tv9
FPuu9C5HzRs4cBtX4EiV5PvERCH/EjXmb6W4MdImBQNEgWuW+jZZRTPp5sIKc8KUxgdlRqkZ/g==
```

## Interaction 4: DELETE /devstoreaccount1/test-container-2e159da6-c70e-7da1-c491-03e9b9ac9706?restype=container

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
x-ms-request-id: 3cf1e48b-bdb0-49bf-b58b-f902b2d8cecf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:42 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

