## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_MaxResults
now: 2026-11-12T00:43:51.2063974+00:00

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
etag: "0x2287BA2B9288520"
last-modified: Thu, 12 Nov 2026 00:43:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8b8717f1-9b39-4b42-9067-ecb1511315c7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a/foo

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
YtZ3HN/IRfJKwD244Jd+IJmemlu31oKGnPSCsDROjqNDhmm7Cq9uGozzfVkwLGPoihKHbitO4oxU
8H/qRZS+/DGZdVkuwhbqMIDOw1koVm+RmiYixyB49aPdZxkvg9T4NYEnlrcJucf7nT2rfx8yK5kQ
WatunDURIYC1UFv9uqyr1o7YAMC3h+BfJinizHWEqzt/HikpiphLFXQ3U2ls/uKQAKmQWivZWdHL
DnYLL1UKMaUgfZuDgUz1jOpLfzN38idHUczM81AQpcVYXnsiQOYfLSLDTIFGDX5cm81AjdmeUxtO
xN6IPj1UENfWKiPQ0kwEK1IRs6amAENNb1iD0BfruQpf1HwHlu7kbjupcOJai8iBO2KGjZ91p8Ob
Os7l0UC/6nEZcf7P/JVkLEVq/ZBg8+OPAZS1ZSxq6iy4bFwg/5z76YVxQRrJsT7NImFaCqozOkfr
VdCrCYRFrofSFpA5RCyobhMK7rHJxk9W6EPLD9+BhTEUNKrMUN8BLJKS95qulN40spuXKEyVIo+A
VSBBeZ6nUJBeJA+C3B4zCcIeNs61p1Rkll1E6l3lfhIbS/u/v7L066cJT2/OstZ9Yx+KduzAy63M
3eNAY2UzeaX9ZpAidEoPKksmq1flleSHx4Y+WwcmWoBN8uLPs4dB1tbJ0UtFWu/Vekyhmh9W5kf/
uJzf9R2e1wwP1YFoP3bD5NWAG8SYQWyWaOC7hcBh9wya0PvrYuC5K/o/NoVubDrV3bVK1cqDZ3Yv
SIw84lJMrt11zW972IH0x/DJWAvnKPum5acKFiJBF2mEuxpTfEio84in+Z/KWgUzVQ3auQ5rRx+Q
lv2qQZe7M7UG9xxnoEunIWSDQC9c24qi1sAUZ15aGHT7w+VL/bLw7MXqxGPpzLTCMpip6AfvNLty
CGrWpsxXq96na91lXCOyklRqcRYnuQoLUjTGsDBtC44q2fVHGUX5kxiEQWHWXNZ091WyhcKkSk9g
ylSXkPuuOl9PO4Mta3gOcd7+o3ipNPVeUbnauobLhY6m5k7xYQId1QYBhyFSR4vdpBPkpqbWt5Zf
OD9B1H/Yg7X0h4UqHQ/b4M1xp63UCwku/RZz59/nzy64kSjC3AGHKARrXsAGsoYECMXZZQ/oiyw1
E9ZpZZzWDLdWcYvmGQTL6n+paK1JJ0qPbt8ZDmkezwb7jMgrHcJnlVEIsEH7He/BDXuQPyJ/7OuM
2va9vP1NN6GE6ow7oMy8QdNcQXcIlFHvWAHujpDkfKDdnkPLqthTunigdjJihWyu0/5OIqpzg0Wl
zWT8X6kRoG7sXQGJ8Zb6CIb+aB0fjdKVP7qRlVn1aRv9Jt10V1rPj9bEdidqJeJoVBojdBoohg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DE29579BB20F20"
last-modified: Thu, 12 Nov 2026 00:43:51 GMT
content-md5: JH+tredmq5TaN5saKXUEbg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0f7c74d-7fd5-408d-934e-4c96d5e45d78
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a/bar

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
YtZ3HN/IRfJKwD244Jd+IJmemlu31oKGnPSCsDROjqNDhmm7Cq9uGozzfVkwLGPoihKHbitO4oxU
8H/qRZS+/DGZdVkuwhbqMIDOw1koVm+RmiYixyB49aPdZxkvg9T4NYEnlrcJucf7nT2rfx8yK5kQ
WatunDURIYC1UFv9uqyr1o7YAMC3h+BfJinizHWEqzt/HikpiphLFXQ3U2ls/uKQAKmQWivZWdHL
DnYLL1UKMaUgfZuDgUz1jOpLfzN38idHUczM81AQpcVYXnsiQOYfLSLDTIFGDX5cm81AjdmeUxtO
xN6IPj1UENfWKiPQ0kwEK1IRs6amAENNb1iD0BfruQpf1HwHlu7kbjupcOJai8iBO2KGjZ91p8Ob
Os7l0UC/6nEZcf7P/JVkLEVq/ZBg8+OPAZS1ZSxq6iy4bFwg/5z76YVxQRrJsT7NImFaCqozOkfr
VdCrCYRFrofSFpA5RCyobhMK7rHJxk9W6EPLD9+BhTEUNKrMUN8BLJKS95qulN40spuXKEyVIo+A
VSBBeZ6nUJBeJA+C3B4zCcIeNs61p1Rkll1E6l3lfhIbS/u/v7L066cJT2/OstZ9Yx+KduzAy63M
3eNAY2UzeaX9ZpAidEoPKksmq1flleSHx4Y+WwcmWoBN8uLPs4dB1tbJ0UtFWu/Vekyhmh9W5kf/
uJzf9R2e1wwP1YFoP3bD5NWAG8SYQWyWaOC7hcBh9wya0PvrYuC5K/o/NoVubDrV3bVK1cqDZ3Yv
SIw84lJMrt11zW972IH0x/DJWAvnKPum5acKFiJBF2mEuxpTfEio84in+Z/KWgUzVQ3auQ5rRx+Q
lv2qQZe7M7UG9xxnoEunIWSDQC9c24qi1sAUZ15aGHT7w+VL/bLw7MXqxGPpzLTCMpip6AfvNLty
CGrWpsxXq96na91lXCOyklRqcRYnuQoLUjTGsDBtC44q2fVHGUX5kxiEQWHWXNZ091WyhcKkSk9g
ylSXkPuuOl9PO4Mta3gOcd7+o3ipNPVeUbnauobLhY6m5k7xYQId1QYBhyFSR4vdpBPkpqbWt5Zf
OD9B1H/Yg7X0h4UqHQ/b4M1xp63UCwku/RZz59/nzy64kSjC3AGHKARrXsAGsoYECMXZZQ/oiyw1
E9ZpZZzWDLdWcYvmGQTL6n+paK1JJ0qPbt8ZDmkezwb7jMgrHcJnlVEIsEH7He/BDXuQPyJ/7OuM
2va9vP1NN6GE6ow7oMy8QdNcQXcIlFHvWAHujpDkfKDdnkPLqthTunigdjJihWyu0/5OIqpzg0Wl
zWT8X6kRoG7sXQGJ8Zb6CIb+aB0fjdKVP7qRlVn1aRv9Jt10V1rPj9bEdidqJeJoVBojdBoohg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E1D70722A34390"
last-modified: Thu, 12 Nov 2026 00:43:51 GMT
content-md5: JH+tredmq5TaN5saKXUEbg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6ae302aa-4097-4830-945a-e40bef62d272
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a/baz

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
YtZ3HN/IRfJKwD244Jd+IJmemlu31oKGnPSCsDROjqNDhmm7Cq9uGozzfVkwLGPoihKHbitO4oxU
8H/qRZS+/DGZdVkuwhbqMIDOw1koVm+RmiYixyB49aPdZxkvg9T4NYEnlrcJucf7nT2rfx8yK5kQ
WatunDURIYC1UFv9uqyr1o7YAMC3h+BfJinizHWEqzt/HikpiphLFXQ3U2ls/uKQAKmQWivZWdHL
DnYLL1UKMaUgfZuDgUz1jOpLfzN38idHUczM81AQpcVYXnsiQOYfLSLDTIFGDX5cm81AjdmeUxtO
xN6IPj1UENfWKiPQ0kwEK1IRs6amAENNb1iD0BfruQpf1HwHlu7kbjupcOJai8iBO2KGjZ91p8Ob
Os7l0UC/6nEZcf7P/JVkLEVq/ZBg8+OPAZS1ZSxq6iy4bFwg/5z76YVxQRrJsT7NImFaCqozOkfr
VdCrCYRFrofSFpA5RCyobhMK7rHJxk9W6EPLD9+BhTEUNKrMUN8BLJKS95qulN40spuXKEyVIo+A
VSBBeZ6nUJBeJA+C3B4zCcIeNs61p1Rkll1E6l3lfhIbS/u/v7L066cJT2/OstZ9Yx+KduzAy63M
3eNAY2UzeaX9ZpAidEoPKksmq1flleSHx4Y+WwcmWoBN8uLPs4dB1tbJ0UtFWu/Vekyhmh9W5kf/
uJzf9R2e1wwP1YFoP3bD5NWAG8SYQWyWaOC7hcBh9wya0PvrYuC5K/o/NoVubDrV3bVK1cqDZ3Yv
SIw84lJMrt11zW972IH0x/DJWAvnKPum5acKFiJBF2mEuxpTfEio84in+Z/KWgUzVQ3auQ5rRx+Q
lv2qQZe7M7UG9xxnoEunIWSDQC9c24qi1sAUZ15aGHT7w+VL/bLw7MXqxGPpzLTCMpip6AfvNLty
CGrWpsxXq96na91lXCOyklRqcRYnuQoLUjTGsDBtC44q2fVHGUX5kxiEQWHWXNZ091WyhcKkSk9g
ylSXkPuuOl9PO4Mta3gOcd7+o3ipNPVeUbnauobLhY6m5k7xYQId1QYBhyFSR4vdpBPkpqbWt5Zf
OD9B1H/Yg7X0h4UqHQ/b4M1xp63UCwku/RZz59/nzy64kSjC3AGHKARrXsAGsoYECMXZZQ/oiyw1
E9ZpZZzWDLdWcYvmGQTL6n+paK1JJ0qPbt8ZDmkezwb7jMgrHcJnlVEIsEH7He/BDXuQPyJ/7OuM
2va9vP1NN6GE6ow7oMy8QdNcQXcIlFHvWAHujpDkfKDdnkPLqthTunigdjJihWyu0/5OIqpzg0Wl
zWT8X6kRoG7sXQGJ8Zb6CIb+aB0fjdKVP7qRlVn1aRv9Jt10V1rPj9bEdidqJeJoVBojdBoohg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2508E9F9DE17AA0"
last-modified: Thu, 12 Nov 2026 00:43:51 GMT
content-md5: JH+tredmq5TaN5saKXUEbg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 041a00a8-e246-447a-8322-747563c7f3f6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a/foo/foo

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
YtZ3HN/IRfJKwD244Jd+IJmemlu31oKGnPSCsDROjqNDhmm7Cq9uGozzfVkwLGPoihKHbitO4oxU
8H/qRZS+/DGZdVkuwhbqMIDOw1koVm+RmiYixyB49aPdZxkvg9T4NYEnlrcJucf7nT2rfx8yK5kQ
WatunDURIYC1UFv9uqyr1o7YAMC3h+BfJinizHWEqzt/HikpiphLFXQ3U2ls/uKQAKmQWivZWdHL
DnYLL1UKMaUgfZuDgUz1jOpLfzN38idHUczM81AQpcVYXnsiQOYfLSLDTIFGDX5cm81AjdmeUxtO
xN6IPj1UENfWKiPQ0kwEK1IRs6amAENNb1iD0BfruQpf1HwHlu7kbjupcOJai8iBO2KGjZ91p8Ob
Os7l0UC/6nEZcf7P/JVkLEVq/ZBg8+OPAZS1ZSxq6iy4bFwg/5z76YVxQRrJsT7NImFaCqozOkfr
VdCrCYRFrofSFpA5RCyobhMK7rHJxk9W6EPLD9+BhTEUNKrMUN8BLJKS95qulN40spuXKEyVIo+A
VSBBeZ6nUJBeJA+C3B4zCcIeNs61p1Rkll1E6l3lfhIbS/u/v7L066cJT2/OstZ9Yx+KduzAy63M
3eNAY2UzeaX9ZpAidEoPKksmq1flleSHx4Y+WwcmWoBN8uLPs4dB1tbJ0UtFWu/Vekyhmh9W5kf/
uJzf9R2e1wwP1YFoP3bD5NWAG8SYQWyWaOC7hcBh9wya0PvrYuC5K/o/NoVubDrV3bVK1cqDZ3Yv
SIw84lJMrt11zW972IH0x/DJWAvnKPum5acKFiJBF2mEuxpTfEio84in+Z/KWgUzVQ3auQ5rRx+Q
lv2qQZe7M7UG9xxnoEunIWSDQC9c24qi1sAUZ15aGHT7w+VL/bLw7MXqxGPpzLTCMpip6AfvNLty
CGrWpsxXq96na91lXCOyklRqcRYnuQoLUjTGsDBtC44q2fVHGUX5kxiEQWHWXNZ091WyhcKkSk9g
ylSXkPuuOl9PO4Mta3gOcd7+o3ipNPVeUbnauobLhY6m5k7xYQId1QYBhyFSR4vdpBPkpqbWt5Zf
OD9B1H/Yg7X0h4UqHQ/b4M1xp63UCwku/RZz59/nzy64kSjC3AGHKARrXsAGsoYECMXZZQ/oiyw1
E9ZpZZzWDLdWcYvmGQTL6n+paK1JJ0qPbt8ZDmkezwb7jMgrHcJnlVEIsEH7He/BDXuQPyJ/7OuM
2va9vP1NN6GE6ow7oMy8QdNcQXcIlFHvWAHujpDkfKDdnkPLqthTunigdjJihWyu0/5OIqpzg0Wl
zWT8X6kRoG7sXQGJ8Zb6CIb+aB0fjdKVP7qRlVn1aRv9Jt10V1rPj9bEdidqJeJoVBojdBoohg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EAE2E39D6EAC60"
last-modified: Thu, 12 Nov 2026 00:43:51 GMT
content-md5: JH+tredmq5TaN5saKXUEbg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7c8665f4-f44b-48ff-ad9f-a6424931b8a5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a/foo/bar

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
YtZ3HN/IRfJKwD244Jd+IJmemlu31oKGnPSCsDROjqNDhmm7Cq9uGozzfVkwLGPoihKHbitO4oxU
8H/qRZS+/DGZdVkuwhbqMIDOw1koVm+RmiYixyB49aPdZxkvg9T4NYEnlrcJucf7nT2rfx8yK5kQ
WatunDURIYC1UFv9uqyr1o7YAMC3h+BfJinizHWEqzt/HikpiphLFXQ3U2ls/uKQAKmQWivZWdHL
DnYLL1UKMaUgfZuDgUz1jOpLfzN38idHUczM81AQpcVYXnsiQOYfLSLDTIFGDX5cm81AjdmeUxtO
xN6IPj1UENfWKiPQ0kwEK1IRs6amAENNb1iD0BfruQpf1HwHlu7kbjupcOJai8iBO2KGjZ91p8Ob
Os7l0UC/6nEZcf7P/JVkLEVq/ZBg8+OPAZS1ZSxq6iy4bFwg/5z76YVxQRrJsT7NImFaCqozOkfr
VdCrCYRFrofSFpA5RCyobhMK7rHJxk9W6EPLD9+BhTEUNKrMUN8BLJKS95qulN40spuXKEyVIo+A
VSBBeZ6nUJBeJA+C3B4zCcIeNs61p1Rkll1E6l3lfhIbS/u/v7L066cJT2/OstZ9Yx+KduzAy63M
3eNAY2UzeaX9ZpAidEoPKksmq1flleSHx4Y+WwcmWoBN8uLPs4dB1tbJ0UtFWu/Vekyhmh9W5kf/
uJzf9R2e1wwP1YFoP3bD5NWAG8SYQWyWaOC7hcBh9wya0PvrYuC5K/o/NoVubDrV3bVK1cqDZ3Yv
SIw84lJMrt11zW972IH0x/DJWAvnKPum5acKFiJBF2mEuxpTfEio84in+Z/KWgUzVQ3auQ5rRx+Q
lv2qQZe7M7UG9xxnoEunIWSDQC9c24qi1sAUZ15aGHT7w+VL/bLw7MXqxGPpzLTCMpip6AfvNLty
CGrWpsxXq96na91lXCOyklRqcRYnuQoLUjTGsDBtC44q2fVHGUX5kxiEQWHWXNZ091WyhcKkSk9g
ylSXkPuuOl9PO4Mta3gOcd7+o3ipNPVeUbnauobLhY6m5k7xYQId1QYBhyFSR4vdpBPkpqbWt5Zf
OD9B1H/Yg7X0h4UqHQ/b4M1xp63UCwku/RZz59/nzy64kSjC3AGHKARrXsAGsoYECMXZZQ/oiyw1
E9ZpZZzWDLdWcYvmGQTL6n+paK1JJ0qPbt8ZDmkezwb7jMgrHcJnlVEIsEH7He/BDXuQPyJ/7OuM
2va9vP1NN6GE6ow7oMy8QdNcQXcIlFHvWAHujpDkfKDdnkPLqthTunigdjJihWyu0/5OIqpzg0Wl
zWT8X6kRoG7sXQGJ8Zb6CIb+aB0fjdKVP7qRlVn1aRv9Jt10V1rPj9bEdidqJeJoVBojdBoohg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20DC707CD585880"
last-modified: Thu, 12 Nov 2026 00:43:51 GMT
content-md5: JH+tredmq5TaN5saKXUEbg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5044bf56-2413-43fd-a45d-103166219231
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a/baz/foo

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
YtZ3HN/IRfJKwD244Jd+IJmemlu31oKGnPSCsDROjqNDhmm7Cq9uGozzfVkwLGPoihKHbitO4oxU
8H/qRZS+/DGZdVkuwhbqMIDOw1koVm+RmiYixyB49aPdZxkvg9T4NYEnlrcJucf7nT2rfx8yK5kQ
WatunDURIYC1UFv9uqyr1o7YAMC3h+BfJinizHWEqzt/HikpiphLFXQ3U2ls/uKQAKmQWivZWdHL
DnYLL1UKMaUgfZuDgUz1jOpLfzN38idHUczM81AQpcVYXnsiQOYfLSLDTIFGDX5cm81AjdmeUxtO
xN6IPj1UENfWKiPQ0kwEK1IRs6amAENNb1iD0BfruQpf1HwHlu7kbjupcOJai8iBO2KGjZ91p8Ob
Os7l0UC/6nEZcf7P/JVkLEVq/ZBg8+OPAZS1ZSxq6iy4bFwg/5z76YVxQRrJsT7NImFaCqozOkfr
VdCrCYRFrofSFpA5RCyobhMK7rHJxk9W6EPLD9+BhTEUNKrMUN8BLJKS95qulN40spuXKEyVIo+A
VSBBeZ6nUJBeJA+C3B4zCcIeNs61p1Rkll1E6l3lfhIbS/u/v7L066cJT2/OstZ9Yx+KduzAy63M
3eNAY2UzeaX9ZpAidEoPKksmq1flleSHx4Y+WwcmWoBN8uLPs4dB1tbJ0UtFWu/Vekyhmh9W5kf/
uJzf9R2e1wwP1YFoP3bD5NWAG8SYQWyWaOC7hcBh9wya0PvrYuC5K/o/NoVubDrV3bVK1cqDZ3Yv
SIw84lJMrt11zW972IH0x/DJWAvnKPum5acKFiJBF2mEuxpTfEio84in+Z/KWgUzVQ3auQ5rRx+Q
lv2qQZe7M7UG9xxnoEunIWSDQC9c24qi1sAUZ15aGHT7w+VL/bLw7MXqxGPpzLTCMpip6AfvNLty
CGrWpsxXq96na91lXCOyklRqcRYnuQoLUjTGsDBtC44q2fVHGUX5kxiEQWHWXNZ091WyhcKkSk9g
ylSXkPuuOl9PO4Mta3gOcd7+o3ipNPVeUbnauobLhY6m5k7xYQId1QYBhyFSR4vdpBPkpqbWt5Zf
OD9B1H/Yg7X0h4UqHQ/b4M1xp63UCwku/RZz59/nzy64kSjC3AGHKARrXsAGsoYECMXZZQ/oiyw1
E9ZpZZzWDLdWcYvmGQTL6n+paK1JJ0qPbt8ZDmkezwb7jMgrHcJnlVEIsEH7He/BDXuQPyJ/7OuM
2va9vP1NN6GE6ow7oMy8QdNcQXcIlFHvWAHujpDkfKDdnkPLqthTunigdjJihWyu0/5OIqpzg0Wl
zWT8X6kRoG7sXQGJ8Zb6CIb+aB0fjdKVP7qRlVn1aRv9Jt10V1rPj9bEdidqJeJoVBojdBoohg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25B327E7FC78C80"
last-modified: Thu, 12 Nov 2026 00:43:51 GMT
content-md5: JH+tredmq5TaN5saKXUEbg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 357c639c-570e-4c1b-ad5b-0174c3167ed6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a/baz/foo/bar

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
YtZ3HN/IRfJKwD244Jd+IJmemlu31oKGnPSCsDROjqNDhmm7Cq9uGozzfVkwLGPoihKHbitO4oxU
8H/qRZS+/DGZdVkuwhbqMIDOw1koVm+RmiYixyB49aPdZxkvg9T4NYEnlrcJucf7nT2rfx8yK5kQ
WatunDURIYC1UFv9uqyr1o7YAMC3h+BfJinizHWEqzt/HikpiphLFXQ3U2ls/uKQAKmQWivZWdHL
DnYLL1UKMaUgfZuDgUz1jOpLfzN38idHUczM81AQpcVYXnsiQOYfLSLDTIFGDX5cm81AjdmeUxtO
xN6IPj1UENfWKiPQ0kwEK1IRs6amAENNb1iD0BfruQpf1HwHlu7kbjupcOJai8iBO2KGjZ91p8Ob
Os7l0UC/6nEZcf7P/JVkLEVq/ZBg8+OPAZS1ZSxq6iy4bFwg/5z76YVxQRrJsT7NImFaCqozOkfr
VdCrCYRFrofSFpA5RCyobhMK7rHJxk9W6EPLD9+BhTEUNKrMUN8BLJKS95qulN40spuXKEyVIo+A
VSBBeZ6nUJBeJA+C3B4zCcIeNs61p1Rkll1E6l3lfhIbS/u/v7L066cJT2/OstZ9Yx+KduzAy63M
3eNAY2UzeaX9ZpAidEoPKksmq1flleSHx4Y+WwcmWoBN8uLPs4dB1tbJ0UtFWu/Vekyhmh9W5kf/
uJzf9R2e1wwP1YFoP3bD5NWAG8SYQWyWaOC7hcBh9wya0PvrYuC5K/o/NoVubDrV3bVK1cqDZ3Yv
SIw84lJMrt11zW972IH0x/DJWAvnKPum5acKFiJBF2mEuxpTfEio84in+Z/KWgUzVQ3auQ5rRx+Q
lv2qQZe7M7UG9xxnoEunIWSDQC9c24qi1sAUZ15aGHT7w+VL/bLw7MXqxGPpzLTCMpip6AfvNLty
CGrWpsxXq96na91lXCOyklRqcRYnuQoLUjTGsDBtC44q2fVHGUX5kxiEQWHWXNZ091WyhcKkSk9g
ylSXkPuuOl9PO4Mta3gOcd7+o3ipNPVeUbnauobLhY6m5k7xYQId1QYBhyFSR4vdpBPkpqbWt5Zf
OD9B1H/Yg7X0h4UqHQ/b4M1xp63UCwku/RZz59/nzy64kSjC3AGHKARrXsAGsoYECMXZZQ/oiyw1
E9ZpZZzWDLdWcYvmGQTL6n+paK1JJ0qPbt8ZDmkezwb7jMgrHcJnlVEIsEH7He/BDXuQPyJ/7OuM
2va9vP1NN6GE6ow7oMy8QdNcQXcIlFHvWAHujpDkfKDdnkPLqthTunigdjJihWyu0/5OIqpzg0Wl
zWT8X6kRoG7sXQGJ8Zb6CIb+aB0fjdKVP7qRlVn1aRv9Jt10V1rPj9bEdidqJeJoVBojdBoohg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2575095528AACA0"
last-modified: Thu, 12 Nov 2026 00:43:51 GMT
content-md5: JH+tredmq5TaN5saKXUEbg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5148c18-f8fc-4359-9665-ece93ff5d7fb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a/baz/bar/foo

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
YtZ3HN/IRfJKwD244Jd+IJmemlu31oKGnPSCsDROjqNDhmm7Cq9uGozzfVkwLGPoihKHbitO4oxU
8H/qRZS+/DGZdVkuwhbqMIDOw1koVm+RmiYixyB49aPdZxkvg9T4NYEnlrcJucf7nT2rfx8yK5kQ
WatunDURIYC1UFv9uqyr1o7YAMC3h+BfJinizHWEqzt/HikpiphLFXQ3U2ls/uKQAKmQWivZWdHL
DnYLL1UKMaUgfZuDgUz1jOpLfzN38idHUczM81AQpcVYXnsiQOYfLSLDTIFGDX5cm81AjdmeUxtO
xN6IPj1UENfWKiPQ0kwEK1IRs6amAENNb1iD0BfruQpf1HwHlu7kbjupcOJai8iBO2KGjZ91p8Ob
Os7l0UC/6nEZcf7P/JVkLEVq/ZBg8+OPAZS1ZSxq6iy4bFwg/5z76YVxQRrJsT7NImFaCqozOkfr
VdCrCYRFrofSFpA5RCyobhMK7rHJxk9W6EPLD9+BhTEUNKrMUN8BLJKS95qulN40spuXKEyVIo+A
VSBBeZ6nUJBeJA+C3B4zCcIeNs61p1Rkll1E6l3lfhIbS/u/v7L066cJT2/OstZ9Yx+KduzAy63M
3eNAY2UzeaX9ZpAidEoPKksmq1flleSHx4Y+WwcmWoBN8uLPs4dB1tbJ0UtFWu/Vekyhmh9W5kf/
uJzf9R2e1wwP1YFoP3bD5NWAG8SYQWyWaOC7hcBh9wya0PvrYuC5K/o/NoVubDrV3bVK1cqDZ3Yv
SIw84lJMrt11zW972IH0x/DJWAvnKPum5acKFiJBF2mEuxpTfEio84in+Z/KWgUzVQ3auQ5rRx+Q
lv2qQZe7M7UG9xxnoEunIWSDQC9c24qi1sAUZ15aGHT7w+VL/bLw7MXqxGPpzLTCMpip6AfvNLty
CGrWpsxXq96na91lXCOyklRqcRYnuQoLUjTGsDBtC44q2fVHGUX5kxiEQWHWXNZ091WyhcKkSk9g
ylSXkPuuOl9PO4Mta3gOcd7+o3ipNPVeUbnauobLhY6m5k7xYQId1QYBhyFSR4vdpBPkpqbWt5Zf
OD9B1H/Yg7X0h4UqHQ/b4M1xp63UCwku/RZz59/nzy64kSjC3AGHKARrXsAGsoYECMXZZQ/oiyw1
E9ZpZZzWDLdWcYvmGQTL6n+paK1JJ0qPbt8ZDmkezwb7jMgrHcJnlVEIsEH7He/BDXuQPyJ/7OuM
2va9vP1NN6GE6ow7oMy8QdNcQXcIlFHvWAHujpDkfKDdnkPLqthTunigdjJihWyu0/5OIqpzg0Wl
zWT8X6kRoG7sXQGJ8Zb6CIb+aB0fjdKVP7qRlVn1aRv9Jt10V1rPj9bEdidqJeJoVBojdBoohg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x213633937B33B80"
last-modified: Thu, 12 Nov 2026 00:43:51 GMT
content-md5: JH+tredmq5TaN5saKXUEbg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 45b9a64d-27e3-43a9-9c5c-0ab44cb5f778
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a/foo/foo?comp=metadata

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
etag: "0x200A5087F9BB420"
last-modified: Thu, 12 Nov 2026 00:43:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c94168c4-8f93-4a17-b635-ea5d439fbf9e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a?restype=container&comp=list&maxresults=2

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
x-ms-request-id: 25dc8a4d-89eb-4067-958c-39369e721378
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:51 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a"><Prefix/><Marker/><MaxResults>2</MaxResults><Blobs><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:51 GMT</Last-Modified><Etag>0x1E1D70722A34390</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>JH+tredmq5TaN5saKXUEbg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:51 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:51 GMT</Last-Modified><Etag>0x2508E9F9DE17AA0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>JH+tredmq5TaN5saKXUEbg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:51 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker>baz</NextMarker></EnumerationResults>
```

## Interaction 11: GET /devstoreaccount1/test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a?restype=container&comp=list&marker=baz&maxresults=2

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b0d70dbb-6932-4f6e-b138-d6fc3b3dfab9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:51 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a"><Prefix/><Marker>baz</Marker><MaxResults>2</MaxResults><Blobs><Blob><Name>baz/bar/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:51 GMT</Last-Modified><Etag>0x213633937B33B80</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>JH+tredmq5TaN5saKXUEbg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:51 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:51 GMT</Last-Modified><Etag>0x25B327E7FC78C80</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>JH+tredmq5TaN5saKXUEbg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:51 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker>baz/foo</NextMarker></EnumerationResults>
```

## Interaction 12: GET /devstoreaccount1/test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a?restype=container&comp=list&marker=baz%2Ffoo&maxresults=2

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
Authorization: SharedKey AUTHORIZATION_13
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
x-ms-request-id: 30c4c8f9-ca13-474d-9db5-56defaadc90f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:51 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a"><Prefix/><Marker>baz/foo</Marker><MaxResults>2</MaxResults><Blobs><Blob><Name>baz/foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:51 GMT</Last-Modified><Etag>0x2575095528AACA0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>JH+tredmq5TaN5saKXUEbg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:51 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:51 GMT</Last-Modified><Etag>0x1DE29579BB20F20</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>JH+tredmq5TaN5saKXUEbg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:51 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker>foo</NextMarker></EnumerationResults>
```

## Interaction 13: GET /devstoreaccount1/test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a?restype=container&comp=list&marker=foo&maxresults=2

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
Authorization: SharedKey AUTHORIZATION_14
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
x-ms-request-id: c3cc5282-dfcf-4a45-9717-bbfea63d7b14
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:51 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a"><Prefix/><Marker>foo</Marker><MaxResults>2</MaxResults><Blobs><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:51 GMT</Last-Modified><Etag>0x20DC707CD585880</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>JH+tredmq5TaN5saKXUEbg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:51 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:51 GMT</Last-Modified><Etag>0x200A5087F9BB420</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>JH+tredmq5TaN5saKXUEbg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:51 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 14: DELETE /devstoreaccount1/test-container-c7e6d2e2-6d19-44e5-8008-32200cc6a99a?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
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
x-ms-request-id: f6fedae9-56cd-4c01-b8be-1d11a03ef7a6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

