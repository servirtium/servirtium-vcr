## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-189185e5-5cb2-5bfa-99a4-86ccf3a235c4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_StartFrom
now: 2026-11-12T00:43:56.8923363+00:00

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
etag: "0x27BB5E2D0291A60"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8ec8929a-4e0d-44df-b567-da4bdc15f4d4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-189185e5-5cb2-5bfa-99a4-86ccf3a235c4/foo

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
tkJhvj+aAT7z9de1pP2C67UgOtzxZrQ21ZZpWyhFDZsSaTELuThHSoNTJLyFRLacIZsW02hY00+N
KuioMaYWreg7ozvMdjJ92fBYnkH3sZDgzDmNLzozuZXhfo5PnxjdPXfUSaF7z6tpmfp3/zUNlXlY
yGRtiH6uCOql6vijLTnXe2DKI2fvZPyNJJVAu7lg0+gU99e0b7T4JkG21eSzxWzAoITUQnISaGNn
4GTobUwxRRYPjjViIgys0v0mOI8X2l4pfxs1i5F2Ao50TI9PD7j0hY/OozY2XX13KHB17C/TTwUG
v+4x/LmFmYym7tV9XcJEMbP/STcn8iKdvWMgARZeoP2JSVDKw4nVSAmqj26n+suuMLt80wXO3szL
lD5WZZh1SE3Y8xNxem0qKQEtfGKz9cOYctBb4sz3umqD/i9Kf+NwNEchzga3PLZNUakEoWFqGJ57
vfLIGmWB4Tmp7ns+4KoevUcakia84TUaDZAj8xkIGeWQz8HwqBnin+3NDU46DnH/5eMaT4Z3vty9
rQzUXu0foNSWrhDoLRQtOPI479Pn4P8fIw017spfGRDlM/oNDUEArW16o2BgF7fP7BaUPs8J1c0N
tTrf6bIJN5QAAvoaICqwOEFmbTyfvgtWZgKzytpB3F0t/1gHIMO6cGzLYBS9tcvs4wWNomiRbfYu
iYOwVmy6viad7CDRqRh+q/zP1F73mbE3x+fUtDn0nJJi2JZAChoAEKLuH8iqGjrsD/drwZmYN/DS
eY+F5grtqFCOb9CCPaDizsO7CHnojKys56VCiNr4yaClbZGKeyqYAXd3G6pqatFWifLV3C536ezi
2P5kqx92lqYw3NAPV1OZIwcBcXEBQnzU6//nIu1xLoSlqKIrM1VYAYUEOY0BRzGfPLgndXh74ZaB
kL8fjnO4vq5Laa+wbfCxqXDr/Ajv0qTOSOY0SrgLKscMqaKWOHIRS3vetd2B787IdcwIj+SOkr0b
UUWNhHP2QD/oo8RNG3D92bCMER3GTFkXbNXrA5rifhfke+cthMcI53WdmUsKellbCrU0AYGgVATs
dhidCzylBiWsaJ+J0FXphCmoKbINDPF7kPjlrnyWRCfiQA6vatw4+JMmXRG60TpfSn1X+CpS3mkm
InpEwFeoFiR4p49HORpMbzAf56/gwb6+hWP/Pkv8kGGkiEhh9Dg7fUbtQSmqGBBjC4j5Mve6RmC8
hjr0qdjYfBcuorHS63v45Gpo8oCUE21SnDPCAl1q6kLnpW79RtRuFMUSfHVfkB8NAU2MUVPgJ3LN
ogylFXm5w7hu6kUN+p2W+t66gpb38gsTtQEQ3ZjvBn77L6THyP5MWLi88abaAAav9ld0JqTc1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24498EBEC6A8600"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
content-md5: UssFK4ICk73gbEMtqpiAkw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4b1a3b37-772f-4da6-926a-06aaa0795986
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-189185e5-5cb2-5bfa-99a4-86ccf3a235c4/bar

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
tkJhvj+aAT7z9de1pP2C67UgOtzxZrQ21ZZpWyhFDZsSaTELuThHSoNTJLyFRLacIZsW02hY00+N
KuioMaYWreg7ozvMdjJ92fBYnkH3sZDgzDmNLzozuZXhfo5PnxjdPXfUSaF7z6tpmfp3/zUNlXlY
yGRtiH6uCOql6vijLTnXe2DKI2fvZPyNJJVAu7lg0+gU99e0b7T4JkG21eSzxWzAoITUQnISaGNn
4GTobUwxRRYPjjViIgys0v0mOI8X2l4pfxs1i5F2Ao50TI9PD7j0hY/OozY2XX13KHB17C/TTwUG
v+4x/LmFmYym7tV9XcJEMbP/STcn8iKdvWMgARZeoP2JSVDKw4nVSAmqj26n+suuMLt80wXO3szL
lD5WZZh1SE3Y8xNxem0qKQEtfGKz9cOYctBb4sz3umqD/i9Kf+NwNEchzga3PLZNUakEoWFqGJ57
vfLIGmWB4Tmp7ns+4KoevUcakia84TUaDZAj8xkIGeWQz8HwqBnin+3NDU46DnH/5eMaT4Z3vty9
rQzUXu0foNSWrhDoLRQtOPI479Pn4P8fIw017spfGRDlM/oNDUEArW16o2BgF7fP7BaUPs8J1c0N
tTrf6bIJN5QAAvoaICqwOEFmbTyfvgtWZgKzytpB3F0t/1gHIMO6cGzLYBS9tcvs4wWNomiRbfYu
iYOwVmy6viad7CDRqRh+q/zP1F73mbE3x+fUtDn0nJJi2JZAChoAEKLuH8iqGjrsD/drwZmYN/DS
eY+F5grtqFCOb9CCPaDizsO7CHnojKys56VCiNr4yaClbZGKeyqYAXd3G6pqatFWifLV3C536ezi
2P5kqx92lqYw3NAPV1OZIwcBcXEBQnzU6//nIu1xLoSlqKIrM1VYAYUEOY0BRzGfPLgndXh74ZaB
kL8fjnO4vq5Laa+wbfCxqXDr/Ajv0qTOSOY0SrgLKscMqaKWOHIRS3vetd2B787IdcwIj+SOkr0b
UUWNhHP2QD/oo8RNG3D92bCMER3GTFkXbNXrA5rifhfke+cthMcI53WdmUsKellbCrU0AYGgVATs
dhidCzylBiWsaJ+J0FXphCmoKbINDPF7kPjlrnyWRCfiQA6vatw4+JMmXRG60TpfSn1X+CpS3mkm
InpEwFeoFiR4p49HORpMbzAf56/gwb6+hWP/Pkv8kGGkiEhh9Dg7fUbtQSmqGBBjC4j5Mve6RmC8
hjr0qdjYfBcuorHS63v45Gpo8oCUE21SnDPCAl1q6kLnpW79RtRuFMUSfHVfkB8NAU2MUVPgJ3LN
ogylFXm5w7hu6kUN+p2W+t66gpb38gsTtQEQ3ZjvBn77L6THyP5MWLi88abaAAav9ld0JqTc1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25B99501F17D840"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
content-md5: UssFK4ICk73gbEMtqpiAkw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c60403a5-5958-4587-afcb-892c412a4c1a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-189185e5-5cb2-5bfa-99a4-86ccf3a235c4/baz

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
tkJhvj+aAT7z9de1pP2C67UgOtzxZrQ21ZZpWyhFDZsSaTELuThHSoNTJLyFRLacIZsW02hY00+N
KuioMaYWreg7ozvMdjJ92fBYnkH3sZDgzDmNLzozuZXhfo5PnxjdPXfUSaF7z6tpmfp3/zUNlXlY
yGRtiH6uCOql6vijLTnXe2DKI2fvZPyNJJVAu7lg0+gU99e0b7T4JkG21eSzxWzAoITUQnISaGNn
4GTobUwxRRYPjjViIgys0v0mOI8X2l4pfxs1i5F2Ao50TI9PD7j0hY/OozY2XX13KHB17C/TTwUG
v+4x/LmFmYym7tV9XcJEMbP/STcn8iKdvWMgARZeoP2JSVDKw4nVSAmqj26n+suuMLt80wXO3szL
lD5WZZh1SE3Y8xNxem0qKQEtfGKz9cOYctBb4sz3umqD/i9Kf+NwNEchzga3PLZNUakEoWFqGJ57
vfLIGmWB4Tmp7ns+4KoevUcakia84TUaDZAj8xkIGeWQz8HwqBnin+3NDU46DnH/5eMaT4Z3vty9
rQzUXu0foNSWrhDoLRQtOPI479Pn4P8fIw017spfGRDlM/oNDUEArW16o2BgF7fP7BaUPs8J1c0N
tTrf6bIJN5QAAvoaICqwOEFmbTyfvgtWZgKzytpB3F0t/1gHIMO6cGzLYBS9tcvs4wWNomiRbfYu
iYOwVmy6viad7CDRqRh+q/zP1F73mbE3x+fUtDn0nJJi2JZAChoAEKLuH8iqGjrsD/drwZmYN/DS
eY+F5grtqFCOb9CCPaDizsO7CHnojKys56VCiNr4yaClbZGKeyqYAXd3G6pqatFWifLV3C536ezi
2P5kqx92lqYw3NAPV1OZIwcBcXEBQnzU6//nIu1xLoSlqKIrM1VYAYUEOY0BRzGfPLgndXh74ZaB
kL8fjnO4vq5Laa+wbfCxqXDr/Ajv0qTOSOY0SrgLKscMqaKWOHIRS3vetd2B787IdcwIj+SOkr0b
UUWNhHP2QD/oo8RNG3D92bCMER3GTFkXbNXrA5rifhfke+cthMcI53WdmUsKellbCrU0AYGgVATs
dhidCzylBiWsaJ+J0FXphCmoKbINDPF7kPjlrnyWRCfiQA6vatw4+JMmXRG60TpfSn1X+CpS3mkm
InpEwFeoFiR4p49HORpMbzAf56/gwb6+hWP/Pkv8kGGkiEhh9Dg7fUbtQSmqGBBjC4j5Mve6RmC8
hjr0qdjYfBcuorHS63v45Gpo8oCUE21SnDPCAl1q6kLnpW79RtRuFMUSfHVfkB8NAU2MUVPgJ3LN
ogylFXm5w7hu6kUN+p2W+t66gpb38gsTtQEQ3ZjvBn77L6THyP5MWLi88abaAAav9ld0JqTc1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EB32DBFEA62090"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
content-md5: UssFK4ICk73gbEMtqpiAkw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ef39197e-297c-4c3b-a84c-839affcf7e20
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-189185e5-5cb2-5bfa-99a4-86ccf3a235c4/foo/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
tkJhvj+aAT7z9de1pP2C67UgOtzxZrQ21ZZpWyhFDZsSaTELuThHSoNTJLyFRLacIZsW02hY00+N
KuioMaYWreg7ozvMdjJ92fBYnkH3sZDgzDmNLzozuZXhfo5PnxjdPXfUSaF7z6tpmfp3/zUNlXlY
yGRtiH6uCOql6vijLTnXe2DKI2fvZPyNJJVAu7lg0+gU99e0b7T4JkG21eSzxWzAoITUQnISaGNn
4GTobUwxRRYPjjViIgys0v0mOI8X2l4pfxs1i5F2Ao50TI9PD7j0hY/OozY2XX13KHB17C/TTwUG
v+4x/LmFmYym7tV9XcJEMbP/STcn8iKdvWMgARZeoP2JSVDKw4nVSAmqj26n+suuMLt80wXO3szL
lD5WZZh1SE3Y8xNxem0qKQEtfGKz9cOYctBb4sz3umqD/i9Kf+NwNEchzga3PLZNUakEoWFqGJ57
vfLIGmWB4Tmp7ns+4KoevUcakia84TUaDZAj8xkIGeWQz8HwqBnin+3NDU46DnH/5eMaT4Z3vty9
rQzUXu0foNSWrhDoLRQtOPI479Pn4P8fIw017spfGRDlM/oNDUEArW16o2BgF7fP7BaUPs8J1c0N
tTrf6bIJN5QAAvoaICqwOEFmbTyfvgtWZgKzytpB3F0t/1gHIMO6cGzLYBS9tcvs4wWNomiRbfYu
iYOwVmy6viad7CDRqRh+q/zP1F73mbE3x+fUtDn0nJJi2JZAChoAEKLuH8iqGjrsD/drwZmYN/DS
eY+F5grtqFCOb9CCPaDizsO7CHnojKys56VCiNr4yaClbZGKeyqYAXd3G6pqatFWifLV3C536ezi
2P5kqx92lqYw3NAPV1OZIwcBcXEBQnzU6//nIu1xLoSlqKIrM1VYAYUEOY0BRzGfPLgndXh74ZaB
kL8fjnO4vq5Laa+wbfCxqXDr/Ajv0qTOSOY0SrgLKscMqaKWOHIRS3vetd2B787IdcwIj+SOkr0b
UUWNhHP2QD/oo8RNG3D92bCMER3GTFkXbNXrA5rifhfke+cthMcI53WdmUsKellbCrU0AYGgVATs
dhidCzylBiWsaJ+J0FXphCmoKbINDPF7kPjlrnyWRCfiQA6vatw4+JMmXRG60TpfSn1X+CpS3mkm
InpEwFeoFiR4p49HORpMbzAf56/gwb6+hWP/Pkv8kGGkiEhh9Dg7fUbtQSmqGBBjC4j5Mve6RmC8
hjr0qdjYfBcuorHS63v45Gpo8oCUE21SnDPCAl1q6kLnpW79RtRuFMUSfHVfkB8NAU2MUVPgJ3LN
ogylFXm5w7hu6kUN+p2W+t66gpb38gsTtQEQ3ZjvBn77L6THyP5MWLi88abaAAav9ld0JqTc1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20FF04AA7AFF240"
last-modified: Thu, 12 Nov 2026 00:43:57 GMT
content-md5: UssFK4ICk73gbEMtqpiAkw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a8dd9db1-8613-4d72-95eb-22ab98c85f82
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-189185e5-5cb2-5bfa-99a4-86ccf3a235c4/foo/bar

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
tkJhvj+aAT7z9de1pP2C67UgOtzxZrQ21ZZpWyhFDZsSaTELuThHSoNTJLyFRLacIZsW02hY00+N
KuioMaYWreg7ozvMdjJ92fBYnkH3sZDgzDmNLzozuZXhfo5PnxjdPXfUSaF7z6tpmfp3/zUNlXlY
yGRtiH6uCOql6vijLTnXe2DKI2fvZPyNJJVAu7lg0+gU99e0b7T4JkG21eSzxWzAoITUQnISaGNn
4GTobUwxRRYPjjViIgys0v0mOI8X2l4pfxs1i5F2Ao50TI9PD7j0hY/OozY2XX13KHB17C/TTwUG
v+4x/LmFmYym7tV9XcJEMbP/STcn8iKdvWMgARZeoP2JSVDKw4nVSAmqj26n+suuMLt80wXO3szL
lD5WZZh1SE3Y8xNxem0qKQEtfGKz9cOYctBb4sz3umqD/i9Kf+NwNEchzga3PLZNUakEoWFqGJ57
vfLIGmWB4Tmp7ns+4KoevUcakia84TUaDZAj8xkIGeWQz8HwqBnin+3NDU46DnH/5eMaT4Z3vty9
rQzUXu0foNSWrhDoLRQtOPI479Pn4P8fIw017spfGRDlM/oNDUEArW16o2BgF7fP7BaUPs8J1c0N
tTrf6bIJN5QAAvoaICqwOEFmbTyfvgtWZgKzytpB3F0t/1gHIMO6cGzLYBS9tcvs4wWNomiRbfYu
iYOwVmy6viad7CDRqRh+q/zP1F73mbE3x+fUtDn0nJJi2JZAChoAEKLuH8iqGjrsD/drwZmYN/DS
eY+F5grtqFCOb9CCPaDizsO7CHnojKys56VCiNr4yaClbZGKeyqYAXd3G6pqatFWifLV3C536ezi
2P5kqx92lqYw3NAPV1OZIwcBcXEBQnzU6//nIu1xLoSlqKIrM1VYAYUEOY0BRzGfPLgndXh74ZaB
kL8fjnO4vq5Laa+wbfCxqXDr/Ajv0qTOSOY0SrgLKscMqaKWOHIRS3vetd2B787IdcwIj+SOkr0b
UUWNhHP2QD/oo8RNG3D92bCMER3GTFkXbNXrA5rifhfke+cthMcI53WdmUsKellbCrU0AYGgVATs
dhidCzylBiWsaJ+J0FXphCmoKbINDPF7kPjlrnyWRCfiQA6vatw4+JMmXRG60TpfSn1X+CpS3mkm
InpEwFeoFiR4p49HORpMbzAf56/gwb6+hWP/Pkv8kGGkiEhh9Dg7fUbtQSmqGBBjC4j5Mve6RmC8
hjr0qdjYfBcuorHS63v45Gpo8oCUE21SnDPCAl1q6kLnpW79RtRuFMUSfHVfkB8NAU2MUVPgJ3LN
ogylFXm5w7hu6kUN+p2W+t66gpb38gsTtQEQ3ZjvBn77L6THyP5MWLi88abaAAav9ld0JqTc1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CEF1AB467F2D70"
last-modified: Thu, 12 Nov 2026 00:43:57 GMT
content-md5: UssFK4ICk73gbEMtqpiAkw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cdac89e2-dc86-4e5f-bf70-e5e245aa8f8b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-189185e5-5cb2-5bfa-99a4-86ccf3a235c4/baz/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
tkJhvj+aAT7z9de1pP2C67UgOtzxZrQ21ZZpWyhFDZsSaTELuThHSoNTJLyFRLacIZsW02hY00+N
KuioMaYWreg7ozvMdjJ92fBYnkH3sZDgzDmNLzozuZXhfo5PnxjdPXfUSaF7z6tpmfp3/zUNlXlY
yGRtiH6uCOql6vijLTnXe2DKI2fvZPyNJJVAu7lg0+gU99e0b7T4JkG21eSzxWzAoITUQnISaGNn
4GTobUwxRRYPjjViIgys0v0mOI8X2l4pfxs1i5F2Ao50TI9PD7j0hY/OozY2XX13KHB17C/TTwUG
v+4x/LmFmYym7tV9XcJEMbP/STcn8iKdvWMgARZeoP2JSVDKw4nVSAmqj26n+suuMLt80wXO3szL
lD5WZZh1SE3Y8xNxem0qKQEtfGKz9cOYctBb4sz3umqD/i9Kf+NwNEchzga3PLZNUakEoWFqGJ57
vfLIGmWB4Tmp7ns+4KoevUcakia84TUaDZAj8xkIGeWQz8HwqBnin+3NDU46DnH/5eMaT4Z3vty9
rQzUXu0foNSWrhDoLRQtOPI479Pn4P8fIw017spfGRDlM/oNDUEArW16o2BgF7fP7BaUPs8J1c0N
tTrf6bIJN5QAAvoaICqwOEFmbTyfvgtWZgKzytpB3F0t/1gHIMO6cGzLYBS9tcvs4wWNomiRbfYu
iYOwVmy6viad7CDRqRh+q/zP1F73mbE3x+fUtDn0nJJi2JZAChoAEKLuH8iqGjrsD/drwZmYN/DS
eY+F5grtqFCOb9CCPaDizsO7CHnojKys56VCiNr4yaClbZGKeyqYAXd3G6pqatFWifLV3C536ezi
2P5kqx92lqYw3NAPV1OZIwcBcXEBQnzU6//nIu1xLoSlqKIrM1VYAYUEOY0BRzGfPLgndXh74ZaB
kL8fjnO4vq5Laa+wbfCxqXDr/Ajv0qTOSOY0SrgLKscMqaKWOHIRS3vetd2B787IdcwIj+SOkr0b
UUWNhHP2QD/oo8RNG3D92bCMER3GTFkXbNXrA5rifhfke+cthMcI53WdmUsKellbCrU0AYGgVATs
dhidCzylBiWsaJ+J0FXphCmoKbINDPF7kPjlrnyWRCfiQA6vatw4+JMmXRG60TpfSn1X+CpS3mkm
InpEwFeoFiR4p49HORpMbzAf56/gwb6+hWP/Pkv8kGGkiEhh9Dg7fUbtQSmqGBBjC4j5Mve6RmC8
hjr0qdjYfBcuorHS63v45Gpo8oCUE21SnDPCAl1q6kLnpW79RtRuFMUSfHVfkB8NAU2MUVPgJ3LN
ogylFXm5w7hu6kUN+p2W+t66gpb38gsTtQEQ3ZjvBn77L6THyP5MWLi88abaAAav9ld0JqTc1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DFB10818D7E5C0"
last-modified: Thu, 12 Nov 2026 00:43:57 GMT
content-md5: UssFK4ICk73gbEMtqpiAkw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d62a7f77-05f4-414e-bc7d-77fb1db6d916
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-189185e5-5cb2-5bfa-99a4-86ccf3a235c4/baz/foo/bar

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
tkJhvj+aAT7z9de1pP2C67UgOtzxZrQ21ZZpWyhFDZsSaTELuThHSoNTJLyFRLacIZsW02hY00+N
KuioMaYWreg7ozvMdjJ92fBYnkH3sZDgzDmNLzozuZXhfo5PnxjdPXfUSaF7z6tpmfp3/zUNlXlY
yGRtiH6uCOql6vijLTnXe2DKI2fvZPyNJJVAu7lg0+gU99e0b7T4JkG21eSzxWzAoITUQnISaGNn
4GTobUwxRRYPjjViIgys0v0mOI8X2l4pfxs1i5F2Ao50TI9PD7j0hY/OozY2XX13KHB17C/TTwUG
v+4x/LmFmYym7tV9XcJEMbP/STcn8iKdvWMgARZeoP2JSVDKw4nVSAmqj26n+suuMLt80wXO3szL
lD5WZZh1SE3Y8xNxem0qKQEtfGKz9cOYctBb4sz3umqD/i9Kf+NwNEchzga3PLZNUakEoWFqGJ57
vfLIGmWB4Tmp7ns+4KoevUcakia84TUaDZAj8xkIGeWQz8HwqBnin+3NDU46DnH/5eMaT4Z3vty9
rQzUXu0foNSWrhDoLRQtOPI479Pn4P8fIw017spfGRDlM/oNDUEArW16o2BgF7fP7BaUPs8J1c0N
tTrf6bIJN5QAAvoaICqwOEFmbTyfvgtWZgKzytpB3F0t/1gHIMO6cGzLYBS9tcvs4wWNomiRbfYu
iYOwVmy6viad7CDRqRh+q/zP1F73mbE3x+fUtDn0nJJi2JZAChoAEKLuH8iqGjrsD/drwZmYN/DS
eY+F5grtqFCOb9CCPaDizsO7CHnojKys56VCiNr4yaClbZGKeyqYAXd3G6pqatFWifLV3C536ezi
2P5kqx92lqYw3NAPV1OZIwcBcXEBQnzU6//nIu1xLoSlqKIrM1VYAYUEOY0BRzGfPLgndXh74ZaB
kL8fjnO4vq5Laa+wbfCxqXDr/Ajv0qTOSOY0SrgLKscMqaKWOHIRS3vetd2B787IdcwIj+SOkr0b
UUWNhHP2QD/oo8RNG3D92bCMER3GTFkXbNXrA5rifhfke+cthMcI53WdmUsKellbCrU0AYGgVATs
dhidCzylBiWsaJ+J0FXphCmoKbINDPF7kPjlrnyWRCfiQA6vatw4+JMmXRG60TpfSn1X+CpS3mkm
InpEwFeoFiR4p49HORpMbzAf56/gwb6+hWP/Pkv8kGGkiEhh9Dg7fUbtQSmqGBBjC4j5Mve6RmC8
hjr0qdjYfBcuorHS63v45Gpo8oCUE21SnDPCAl1q6kLnpW79RtRuFMUSfHVfkB8NAU2MUVPgJ3LN
ogylFXm5w7hu6kUN+p2W+t66gpb38gsTtQEQ3ZjvBn77L6THyP5MWLi88abaAAav9ld0JqTc1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EB313A32485A10"
last-modified: Thu, 12 Nov 2026 00:43:57 GMT
content-md5: UssFK4ICk73gbEMtqpiAkw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4a007fc8-d484-445e-929c-f447c3e03038
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-189185e5-5cb2-5bfa-99a4-86ccf3a235c4/baz/bar/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
tkJhvj+aAT7z9de1pP2C67UgOtzxZrQ21ZZpWyhFDZsSaTELuThHSoNTJLyFRLacIZsW02hY00+N
KuioMaYWreg7ozvMdjJ92fBYnkH3sZDgzDmNLzozuZXhfo5PnxjdPXfUSaF7z6tpmfp3/zUNlXlY
yGRtiH6uCOql6vijLTnXe2DKI2fvZPyNJJVAu7lg0+gU99e0b7T4JkG21eSzxWzAoITUQnISaGNn
4GTobUwxRRYPjjViIgys0v0mOI8X2l4pfxs1i5F2Ao50TI9PD7j0hY/OozY2XX13KHB17C/TTwUG
v+4x/LmFmYym7tV9XcJEMbP/STcn8iKdvWMgARZeoP2JSVDKw4nVSAmqj26n+suuMLt80wXO3szL
lD5WZZh1SE3Y8xNxem0qKQEtfGKz9cOYctBb4sz3umqD/i9Kf+NwNEchzga3PLZNUakEoWFqGJ57
vfLIGmWB4Tmp7ns+4KoevUcakia84TUaDZAj8xkIGeWQz8HwqBnin+3NDU46DnH/5eMaT4Z3vty9
rQzUXu0foNSWrhDoLRQtOPI479Pn4P8fIw017spfGRDlM/oNDUEArW16o2BgF7fP7BaUPs8J1c0N
tTrf6bIJN5QAAvoaICqwOEFmbTyfvgtWZgKzytpB3F0t/1gHIMO6cGzLYBS9tcvs4wWNomiRbfYu
iYOwVmy6viad7CDRqRh+q/zP1F73mbE3x+fUtDn0nJJi2JZAChoAEKLuH8iqGjrsD/drwZmYN/DS
eY+F5grtqFCOb9CCPaDizsO7CHnojKys56VCiNr4yaClbZGKeyqYAXd3G6pqatFWifLV3C536ezi
2P5kqx92lqYw3NAPV1OZIwcBcXEBQnzU6//nIu1xLoSlqKIrM1VYAYUEOY0BRzGfPLgndXh74ZaB
kL8fjnO4vq5Laa+wbfCxqXDr/Ajv0qTOSOY0SrgLKscMqaKWOHIRS3vetd2B787IdcwIj+SOkr0b
UUWNhHP2QD/oo8RNG3D92bCMER3GTFkXbNXrA5rifhfke+cthMcI53WdmUsKellbCrU0AYGgVATs
dhidCzylBiWsaJ+J0FXphCmoKbINDPF7kPjlrnyWRCfiQA6vatw4+JMmXRG60TpfSn1X+CpS3mkm
InpEwFeoFiR4p49HORpMbzAf56/gwb6+hWP/Pkv8kGGkiEhh9Dg7fUbtQSmqGBBjC4j5Mve6RmC8
hjr0qdjYfBcuorHS63v45Gpo8oCUE21SnDPCAl1q6kLnpW79RtRuFMUSfHVfkB8NAU2MUVPgJ3LN
ogylFXm5w7hu6kUN+p2W+t66gpb38gsTtQEQ3ZjvBn77L6THyP5MWLi88abaAAav9ld0JqTc1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x223C3EDA7D452E0"
last-modified: Thu, 12 Nov 2026 00:43:57 GMT
content-md5: UssFK4ICk73gbEMtqpiAkw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2ca3979c-ba0e-4fbd-8b8e-ca8f5f45011d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-189185e5-5cb2-5bfa-99a4-86ccf3a235c4/foo/foo?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2005D395588A640"
last-modified: Thu, 12 Nov 2026 00:43:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6fb03fab-4ccf-4a3e-b890-db0e21038072
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-189185e5-5cb2-5bfa-99a4-86ccf3a235c4?restype=container&comp=list&delimiter=%2F&startFrom=foo

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_11
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ef2f6591-ade2-499a-a171-dfd209ed27ef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:57 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-189185e5-5cb2-5bfa-99a4-86ccf3a235c4"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>foo/</Name></BlobPrefix><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:56 GMT</Last-Modified><Etag>0x24498EBEC6A8600</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>UssFK4ICk73gbEMtqpiAkw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:56 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-189185e5-5cb2-5bfa-99a4-86ccf3a235c4?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
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
x-ms-request-id: dccbf6eb-34fc-4333-b388-12f9acd1cf65
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

