## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-494a631c-bd8c-aec1-402b-f871a3e8cf52?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_Stream_Overloads
now: 2026-11-12T00:49:17.0059690+00:00

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
etag: "0x1D8075814874940"
last-modified: Thu, 12 Nov 2026 00:49:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1506afc1-4e4d-4f36-afb3-449328d8a7f1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-494a631c-bd8c-aec1-402b-f871a3e8cf52/test-blob-8fdf8fdf-e456-7ef4-fa18-80c6549a9026

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
0wIKHed6fT1oqYnguNPNC1tudgy/bL04bsxPczz7WaWb0p2h3rFrZRGiJq1aFMYmS3Vr5iSEZ2ZF
0q4bKwkBbVDkReY2KyypAhD6HUUQ3VoGKCfGkHKAF2o2XAwDTzoHoLlcds/f8B9IweMTiUkhNPRU
FQLhO93dYy57/88gprPW8nyMs2aLJjgIfc6ObI0hFScXrjo3JmXbfhOgZPFQJxswPZbNlIGNye/K
2b0PT/agWumnCfd5n8wXsDRT6sFHt1WyXi/2VICmieVKbEynzC8dAAoHqB4kt53KteRMOt4tgyJo
XPDGqgZoAX8RLjKAcOQFNuq3Pw42jqeSLJ6cWk8HHekpP3A/VlUEnqefEohrSUUARwP0dkMTMc1J
NH1ny6YvChFJVjBzxt+Us6Bml3weJuJZnBNMEqalFg6i9SLYnNIAbwd2IfIUjIEkYMKjrJlRKg2b
DS+T4/hqo0Ai0dC9vBbOZSh1pwTvRRCRJ7LjAml0UcoVPY6jbYsPDH6y8buwZqSs1EZw24MIq8ge
ArtFhqHXrn8FqH+HKvicZZuGPVRV4cEONy0iA3VHDJLGhWrQyYXd2kM7qr4lJKpO1HbngW10ySD6
N09ztaoJvpvtwKWNzJwWqWMRGTYC6RKC1C//YIskUrtK1ZE1aSSYMuwjOGMFwAfZ0NgJY7Dq+E48
8OF6Cl0QyG7pQ/YK4T8+eOdJ3rGufRMnJY+yG+8LX91D+HlDHiiOE2/1G3wRz++YyurJoBmdjnPN
UuTOXax/3uQYx+jG+1m/u8tBuWKXFlagGlAEQr7EpWoFdctDwLbDdj2X+QgH0c+QCeVNXNQQNTyO
LkJcepwlUyF+wIWOe/sVfUMl/xxOmUiAczjZdkmV9ECPtZJzZvugcqXmiBBKAo7pON6R6zYfP5T6
2wdjS93Y6MtF/8ZooRZHhI13ZxA3NnCq7z1qAwkKb3X9eYvzPSbIDqBFBQPIgZfHSmeoqNiEwqWW
uVyfbeXCOpBQayeLU0Znrllv8jBt4m6mormhYcadeLflXYPKKaC7gspzdxVvPPYgQfl+FM91Kdft
+MorIdnJs/JwpfbDnIW4tHBl+mtZN2bDgCDMHmPncDOr3THWj2DxqcMi/pb/XaR0xmBfDy9slMBk
aKG5/JWPiTXCF79U4iUPdFCnNjnQwyN7WFgDh2EEP0lwcSe/OK0tk3RhPEXlH+M6UJrexF2Hk6R+
PaM9iwHTvdh25HD+TzujeqPEb4fdlTh0yDfGJXrr6N6CQfoJ8AdzjX5tbztzPABfO0q5wyQdoKhr
ycPKDZhdivuSew5BmYmcUeEIbyX9AIs2Z+kvMiS5ZaBSniZEqIDmD+U/4cHyHqLAHXJCFDCCbQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2769C48E67EA740"
last-modified: Thu, 12 Nov 2026 00:49:17 GMT
content-md5: wPkFym+/3kZTVSwC37WlUw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b7c10e62-3ecb-4188-a61a-843a47abf980
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-494a631c-bd8c-aec1-402b-f871a3e8cf52/test-blob-8fdf8fdf-e456-7ef4-fa18-80c6549a9026

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
last-modified: Thu, 12 Nov 2026 00:49:17 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:17 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x2769C48E67EA740"
content-md5: wPkFym+/3kZTVSwC37WlUw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 598e8a97-bdb8-4345-81e3-c30a712fe0ed
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:17 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: wPkFym+/3kZTVSwC37WlUw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
0wIKHed6fT1oqYnguNPNC1tudgy/bL04bsxPczz7WaWb0p2h3rFrZRGiJq1aFMYmS3Vr5iSEZ2ZF
0q4bKwkBbVDkReY2KyypAhD6HUUQ3VoGKCfGkHKAF2o2XAwDTzoHoLlcds/f8B9IweMTiUkhNPRU
FQLhO93dYy57/88gprPW8nyMs2aLJjgIfc6ObI0hFScXrjo3JmXbfhOgZPFQJxswPZbNlIGNye/K
2b0PT/agWumnCfd5n8wXsDRT6sFHt1WyXi/2VICmieVKbEynzC8dAAoHqB4kt53KteRMOt4tgyJo
XPDGqgZoAX8RLjKAcOQFNuq3Pw42jqeSLJ6cWk8HHekpP3A/VlUEnqefEohrSUUARwP0dkMTMc1J
NH1ny6YvChFJVjBzxt+Us6Bml3weJuJZnBNMEqalFg6i9SLYnNIAbwd2IfIUjIEkYMKjrJlRKg2b
DS+T4/hqo0Ai0dC9vBbOZSh1pwTvRRCRJ7LjAml0UcoVPY6jbYsPDH6y8buwZqSs1EZw24MIq8ge
ArtFhqHXrn8FqH+HKvicZZuGPVRV4cEONy0iA3VHDJLGhWrQyYXd2kM7qr4lJKpO1HbngW10ySD6
N09ztaoJvpvtwKWNzJwWqWMRGTYC6RKC1C//YIskUrtK1ZE1aSSYMuwjOGMFwAfZ0NgJY7Dq+E48
8OF6Cl0QyG7pQ/YK4T8+eOdJ3rGufRMnJY+yG+8LX91D+HlDHiiOE2/1G3wRz++YyurJoBmdjnPN
UuTOXax/3uQYx+jG+1m/u8tBuWKXFlagGlAEQr7EpWoFdctDwLbDdj2X+QgH0c+QCeVNXNQQNTyO
LkJcepwlUyF+wIWOe/sVfUMl/xxOmUiAczjZdkmV9ECPtZJzZvugcqXmiBBKAo7pON6R6zYfP5T6
2wdjS93Y6MtF/8ZooRZHhI13ZxA3NnCq7z1qAwkKb3X9eYvzPSbIDqBFBQPIgZfHSmeoqNiEwqWW
uVyfbeXCOpBQayeLU0Znrllv8jBt4m6mormhYcadeLflXYPKKaC7gspzdxVvPPYgQfl+FM91Kdft
+MorIdnJs/JwpfbDnIW4tHBl+mtZN2bDgCDMHmPncDOr3THWj2DxqcMi/pb/XaR0xmBfDy9slMBk
aKG5/JWPiTXCF79U4iUPdFCnNjnQwyN7WFgDh2EEP0lwcSe/OK0tk3RhPEXlH+M6UJrexF2Hk6R+
PaM9iwHTvdh25HD+TzujeqPEb4fdlTh0yDfGJXrr6N6CQfoJ8AdzjX5tbztzPABfO0q5wyQdoKhr
ycPKDZhdivuSew5BmYmcUeEIbyX9AIs2Z+kvMiS5ZaBSniZEqIDmD+U/4cHyHqLAHXJCFDCCbQ==
```

## Interaction 3: PUT /devstoreaccount1/test-container-494a631c-bd8c-aec1-402b-f871a3e8cf52/test-blob-8fdf8fdf-e456-7ef4-fa18-80c6549a9026

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
0wIKHed6fT1oqYnguNPNC1tudgy/bL04bsxPczz7WaWb0p2h3rFrZRGiJq1aFMYmS3Vr5iSEZ2ZF
0q4bKwkBbVDkReY2KyypAhD6HUUQ3VoGKCfGkHKAF2o2XAwDTzoHoLlcds/f8B9IweMTiUkhNPRU
FQLhO93dYy57/88gprPW8nyMs2aLJjgIfc6ObI0hFScXrjo3JmXbfhOgZPFQJxswPZbNlIGNye/K
2b0PT/agWumnCfd5n8wXsDRT6sFHt1WyXi/2VICmieVKbEynzC8dAAoHqB4kt53KteRMOt4tgyJo
XPDGqgZoAX8RLjKAcOQFNuq3Pw42jqeSLJ6cWk8HHekpP3A/VlUEnqefEohrSUUARwP0dkMTMc1J
NH1ny6YvChFJVjBzxt+Us6Bml3weJuJZnBNMEqalFg6i9SLYnNIAbwd2IfIUjIEkYMKjrJlRKg2b
DS+T4/hqo0Ai0dC9vBbOZSh1pwTvRRCRJ7LjAml0UcoVPY6jbYsPDH6y8buwZqSs1EZw24MIq8ge
ArtFhqHXrn8FqH+HKvicZZuGPVRV4cEONy0iA3VHDJLGhWrQyYXd2kM7qr4lJKpO1HbngW10ySD6
N09ztaoJvpvtwKWNzJwWqWMRGTYC6RKC1C//YIskUrtK1ZE1aSSYMuwjOGMFwAfZ0NgJY7Dq+E48
8OF6Cl0QyG7pQ/YK4T8+eOdJ3rGufRMnJY+yG+8LX91D+HlDHiiOE2/1G3wRz++YyurJoBmdjnPN
UuTOXax/3uQYx+jG+1m/u8tBuWKXFlagGlAEQr7EpWoFdctDwLbDdj2X+QgH0c+QCeVNXNQQNTyO
LkJcepwlUyF+wIWOe/sVfUMl/xxOmUiAczjZdkmV9ECPtZJzZvugcqXmiBBKAo7pON6R6zYfP5T6
2wdjS93Y6MtF/8ZooRZHhI13ZxA3NnCq7z1qAwkKb3X9eYvzPSbIDqBFBQPIgZfHSmeoqNiEwqWW
uVyfbeXCOpBQayeLU0Znrllv8jBt4m6mormhYcadeLflXYPKKaC7gspzdxVvPPYgQfl+FM91Kdft
+MorIdnJs/JwpfbDnIW4tHBl+mtZN2bDgCDMHmPncDOr3THWj2DxqcMi/pb/XaR0xmBfDy9slMBk
aKG5/JWPiTXCF79U4iUPdFCnNjnQwyN7WFgDh2EEP0lwcSe/OK0tk3RhPEXlH+M6UJrexF2Hk6R+
PaM9iwHTvdh25HD+TzujeqPEb4fdlTh0yDfGJXrr6N6CQfoJ8AdzjX5tbztzPABfO0q5wyQdoKhr
ycPKDZhdivuSew5BmYmcUeEIbyX9AIs2Z+kvMiS5ZaBSniZEqIDmD+U/4cHyHqLAHXJCFDCCbQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D979D1101D5D80"
last-modified: Thu, 12 Nov 2026 00:49:17 GMT
content-md5: wPkFym+/3kZTVSwC37WlUw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 07ae4436-796f-4149-9e5d-2357359b303a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-494a631c-bd8c-aec1-402b-f871a3e8cf52/test-blob-8fdf8fdf-e456-7ef4-fa18-80c6549a9026

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:49:17 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:17 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1D979D1101D5D80"
content-md5: wPkFym+/3kZTVSwC37WlUw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 92a610bc-4bab-4a3e-b5b4-50a264626fd4
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:17 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: wPkFym+/3kZTVSwC37WlUw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
0wIKHed6fT1oqYnguNPNC1tudgy/bL04bsxPczz7WaWb0p2h3rFrZRGiJq1aFMYmS3Vr5iSEZ2ZF
0q4bKwkBbVDkReY2KyypAhD6HUUQ3VoGKCfGkHKAF2o2XAwDTzoHoLlcds/f8B9IweMTiUkhNPRU
FQLhO93dYy57/88gprPW8nyMs2aLJjgIfc6ObI0hFScXrjo3JmXbfhOgZPFQJxswPZbNlIGNye/K
2b0PT/agWumnCfd5n8wXsDRT6sFHt1WyXi/2VICmieVKbEynzC8dAAoHqB4kt53KteRMOt4tgyJo
XPDGqgZoAX8RLjKAcOQFNuq3Pw42jqeSLJ6cWk8HHekpP3A/VlUEnqefEohrSUUARwP0dkMTMc1J
NH1ny6YvChFJVjBzxt+Us6Bml3weJuJZnBNMEqalFg6i9SLYnNIAbwd2IfIUjIEkYMKjrJlRKg2b
DS+T4/hqo0Ai0dC9vBbOZSh1pwTvRRCRJ7LjAml0UcoVPY6jbYsPDH6y8buwZqSs1EZw24MIq8ge
ArtFhqHXrn8FqH+HKvicZZuGPVRV4cEONy0iA3VHDJLGhWrQyYXd2kM7qr4lJKpO1HbngW10ySD6
N09ztaoJvpvtwKWNzJwWqWMRGTYC6RKC1C//YIskUrtK1ZE1aSSYMuwjOGMFwAfZ0NgJY7Dq+E48
8OF6Cl0QyG7pQ/YK4T8+eOdJ3rGufRMnJY+yG+8LX91D+HlDHiiOE2/1G3wRz++YyurJoBmdjnPN
UuTOXax/3uQYx+jG+1m/u8tBuWKXFlagGlAEQr7EpWoFdctDwLbDdj2X+QgH0c+QCeVNXNQQNTyO
LkJcepwlUyF+wIWOe/sVfUMl/xxOmUiAczjZdkmV9ECPtZJzZvugcqXmiBBKAo7pON6R6zYfP5T6
2wdjS93Y6MtF/8ZooRZHhI13ZxA3NnCq7z1qAwkKb3X9eYvzPSbIDqBFBQPIgZfHSmeoqNiEwqWW
uVyfbeXCOpBQayeLU0Znrllv8jBt4m6mormhYcadeLflXYPKKaC7gspzdxVvPPYgQfl+FM91Kdft
+MorIdnJs/JwpfbDnIW4tHBl+mtZN2bDgCDMHmPncDOr3THWj2DxqcMi/pb/XaR0xmBfDy9slMBk
aKG5/JWPiTXCF79U4iUPdFCnNjnQwyN7WFgDh2EEP0lwcSe/OK0tk3RhPEXlH+M6UJrexF2Hk6R+
PaM9iwHTvdh25HD+TzujeqPEb4fdlTh0yDfGJXrr6N6CQfoJ8AdzjX5tbztzPABfO0q5wyQdoKhr
ycPKDZhdivuSew5BmYmcUeEIbyX9AIs2Z+kvMiS5ZaBSniZEqIDmD+U/4cHyHqLAHXJCFDCCbQ==
```

## Interaction 5: PUT /devstoreaccount1/test-container-494a631c-bd8c-aec1-402b-f871a3e8cf52/test-blob-8fdf8fdf-e456-7ef4-fa18-80c6549a9026

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
0wIKHed6fT1oqYnguNPNC1tudgy/bL04bsxPczz7WaWb0p2h3rFrZRGiJq1aFMYmS3Vr5iSEZ2ZF
0q4bKwkBbVDkReY2KyypAhD6HUUQ3VoGKCfGkHKAF2o2XAwDTzoHoLlcds/f8B9IweMTiUkhNPRU
FQLhO93dYy57/88gprPW8nyMs2aLJjgIfc6ObI0hFScXrjo3JmXbfhOgZPFQJxswPZbNlIGNye/K
2b0PT/agWumnCfd5n8wXsDRT6sFHt1WyXi/2VICmieVKbEynzC8dAAoHqB4kt53KteRMOt4tgyJo
XPDGqgZoAX8RLjKAcOQFNuq3Pw42jqeSLJ6cWk8HHekpP3A/VlUEnqefEohrSUUARwP0dkMTMc1J
NH1ny6YvChFJVjBzxt+Us6Bml3weJuJZnBNMEqalFg6i9SLYnNIAbwd2IfIUjIEkYMKjrJlRKg2b
DS+T4/hqo0Ai0dC9vBbOZSh1pwTvRRCRJ7LjAml0UcoVPY6jbYsPDH6y8buwZqSs1EZw24MIq8ge
ArtFhqHXrn8FqH+HKvicZZuGPVRV4cEONy0iA3VHDJLGhWrQyYXd2kM7qr4lJKpO1HbngW10ySD6
N09ztaoJvpvtwKWNzJwWqWMRGTYC6RKC1C//YIskUrtK1ZE1aSSYMuwjOGMFwAfZ0NgJY7Dq+E48
8OF6Cl0QyG7pQ/YK4T8+eOdJ3rGufRMnJY+yG+8LX91D+HlDHiiOE2/1G3wRz++YyurJoBmdjnPN
UuTOXax/3uQYx+jG+1m/u8tBuWKXFlagGlAEQr7EpWoFdctDwLbDdj2X+QgH0c+QCeVNXNQQNTyO
LkJcepwlUyF+wIWOe/sVfUMl/xxOmUiAczjZdkmV9ECPtZJzZvugcqXmiBBKAo7pON6R6zYfP5T6
2wdjS93Y6MtF/8ZooRZHhI13ZxA3NnCq7z1qAwkKb3X9eYvzPSbIDqBFBQPIgZfHSmeoqNiEwqWW
uVyfbeXCOpBQayeLU0Znrllv8jBt4m6mormhYcadeLflXYPKKaC7gspzdxVvPPYgQfl+FM91Kdft
+MorIdnJs/JwpfbDnIW4tHBl+mtZN2bDgCDMHmPncDOr3THWj2DxqcMi/pb/XaR0xmBfDy9slMBk
aKG5/JWPiTXCF79U4iUPdFCnNjnQwyN7WFgDh2EEP0lwcSe/OK0tk3RhPEXlH+M6UJrexF2Hk6R+
PaM9iwHTvdh25HD+TzujeqPEb4fdlTh0yDfGJXrr6N6CQfoJ8AdzjX5tbztzPABfO0q5wyQdoKhr
ycPKDZhdivuSew5BmYmcUeEIbyX9AIs2Z+kvMiS5ZaBSniZEqIDmD+U/4cHyHqLAHXJCFDCCbQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23B3EBFA5B61480"
last-modified: Thu, 12 Nov 2026 00:49:17 GMT
content-md5: wPkFym+/3kZTVSwC37WlUw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0afd672c-b767-4344-b4bb-1e68e1989f3a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-494a631c-bd8c-aec1-402b-f871a3e8cf52/test-blob-8fdf8fdf-e456-7ef4-fa18-80c6549a9026

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:49:17 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:17 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x23B3EBFA5B61480"
content-md5: wPkFym+/3kZTVSwC37WlUw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ae45e3ea-fbd4-4ad9-aabe-1675edbea72c
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:17 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: wPkFym+/3kZTVSwC37WlUw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
0wIKHed6fT1oqYnguNPNC1tudgy/bL04bsxPczz7WaWb0p2h3rFrZRGiJq1aFMYmS3Vr5iSEZ2ZF
0q4bKwkBbVDkReY2KyypAhD6HUUQ3VoGKCfGkHKAF2o2XAwDTzoHoLlcds/f8B9IweMTiUkhNPRU
FQLhO93dYy57/88gprPW8nyMs2aLJjgIfc6ObI0hFScXrjo3JmXbfhOgZPFQJxswPZbNlIGNye/K
2b0PT/agWumnCfd5n8wXsDRT6sFHt1WyXi/2VICmieVKbEynzC8dAAoHqB4kt53KteRMOt4tgyJo
XPDGqgZoAX8RLjKAcOQFNuq3Pw42jqeSLJ6cWk8HHekpP3A/VlUEnqefEohrSUUARwP0dkMTMc1J
NH1ny6YvChFJVjBzxt+Us6Bml3weJuJZnBNMEqalFg6i9SLYnNIAbwd2IfIUjIEkYMKjrJlRKg2b
DS+T4/hqo0Ai0dC9vBbOZSh1pwTvRRCRJ7LjAml0UcoVPY6jbYsPDH6y8buwZqSs1EZw24MIq8ge
ArtFhqHXrn8FqH+HKvicZZuGPVRV4cEONy0iA3VHDJLGhWrQyYXd2kM7qr4lJKpO1HbngW10ySD6
N09ztaoJvpvtwKWNzJwWqWMRGTYC6RKC1C//YIskUrtK1ZE1aSSYMuwjOGMFwAfZ0NgJY7Dq+E48
8OF6Cl0QyG7pQ/YK4T8+eOdJ3rGufRMnJY+yG+8LX91D+HlDHiiOE2/1G3wRz++YyurJoBmdjnPN
UuTOXax/3uQYx+jG+1m/u8tBuWKXFlagGlAEQr7EpWoFdctDwLbDdj2X+QgH0c+QCeVNXNQQNTyO
LkJcepwlUyF+wIWOe/sVfUMl/xxOmUiAczjZdkmV9ECPtZJzZvugcqXmiBBKAo7pON6R6zYfP5T6
2wdjS93Y6MtF/8ZooRZHhI13ZxA3NnCq7z1qAwkKb3X9eYvzPSbIDqBFBQPIgZfHSmeoqNiEwqWW
uVyfbeXCOpBQayeLU0Znrllv8jBt4m6mormhYcadeLflXYPKKaC7gspzdxVvPPYgQfl+FM91Kdft
+MorIdnJs/JwpfbDnIW4tHBl+mtZN2bDgCDMHmPncDOr3THWj2DxqcMi/pb/XaR0xmBfDy9slMBk
aKG5/JWPiTXCF79U4iUPdFCnNjnQwyN7WFgDh2EEP0lwcSe/OK0tk3RhPEXlH+M6UJrexF2Hk6R+
PaM9iwHTvdh25HD+TzujeqPEb4fdlTh0yDfGJXrr6N6CQfoJ8AdzjX5tbztzPABfO0q5wyQdoKhr
ycPKDZhdivuSew5BmYmcUeEIbyX9AIs2Z+kvMiS5ZaBSniZEqIDmD+U/4cHyHqLAHXJCFDCCbQ==
```

## Interaction 7: DELETE /devstoreaccount1/test-container-494a631c-bd8c-aec1-402b-f871a3e8cf52?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: 40b758bc-f2cc-4dd0-a98e-4d0ee272c146
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

