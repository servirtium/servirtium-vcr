## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7891569a-03c9-42a2-f81d-da4d82a2acf0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_AccessConditions_Streaming
now: 2026-11-12T00:47:50.5576286+00:00

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
etag: "0x1DA513D62DE27A0"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 76d28409-6250-4c4a-af63-78aa2b6fd989
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7891569a-03c9-42a2-f81d-da4d82a2acf0/test-blob-885da9f5-bd28-f0c1-1b03-46c071ecbf1d

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
uR35u1KAXKqi1W/ASAdptBL0Vj4DhP4VRh9F3OMds5Acfyd/sMWOGvnn1fST4frxsyU7jUxt7TQe
43QyOoDGhCHfo8jf6QRMZTtFHK4KgWQlVCi+4iZDrpLzYM1QXN94IFHStD4xEckh7ycRKNGFE2EQ
DeZYCKL7m/Q27Ik3+wlbzftdOM0m80NenfL+MobAbU1rQE/5Hxiv1xhJ+yRA6fMetVvVKNuU6Rmj
+mqv/GludX47zLu6Yq3jrmG13fgeHbP/4H0r60Rx11Y1VSWt/9qu2oWmBB03Y1Kt8Xp53gwhhd23
sBzrQok5yvRlhAyINa6GBgJyeBiVx3wqffnK+PhJFNBI9k++wpf8bDoo0t5FJbzL8tcKrgzEIeif
wcWQb9L8G3A7QD5fyERqdgvdbPSe5Vg9/gUhPmXDg9VnHwHSbPxoLLduCeV9bCqToDgB57TzAdxs
UnDM29wLeLxp96lClwoOdEA9MNtzv5HbjZ4swpwgcx4lZhmMm1HaYpEoFHWBUQgu8nJ0tdEA+ZLf
8U093rUgSISLHDHwgtjuY81JSqscWTyW/tAprL5NJG2GrKoDnITcCMzx9TTWPm+ZhVIDt67nw5cR
p+Dl9pvFPffEadYu68ZIbELfK2QHv79gkCdsSW2+n+kS8vWj9xEwK7g8EtSZapqLukpsCJczCecg
hWZ0WfSKBcrsHPnRpHUwrv+ryq3rxiWN4Y4iUpZR3ugNg3Kru9LDsgwKrE6guRbUO1mYhz45Nb5A
53hmZ7Mzmz0QwyEDhPMt6Bih4RnW7Cd4ThY9uVap006za9NZXUtY1hEQkPX00bdmap8mmFOkaftQ
7Rmc9uLnZu/TTxkf1IrMSAoIxlsyg3xf1062gzv6DwHXCW8yu+AvKSkFIYGdRpYUWlBIm6OgHmmc
PR+TMOO02EAYR8obmowq2ZwxLGL7wZC4oijrsXNdN+oFlX7Bm/hGUUhBhf7L+b/DHsIGbvEHoXuO
2o66ySfMug/gFQQOaT2j69saujyS7ahoJ5OxV8n4/vQCM8Fqi4chdMru6+O7tbSEYoMW7Oc+/O3l
UaGTG2NG5xcQCzZ8OV9T+UVyowHFrXLeLPRG4hENxDfThTnmjVhmqATMqqp+CCkjw/Ohy1jrH6Qv
te5v/wUFA0f/qLMmbWzsDPv9+QLHXyTKIx4ea/je52aVtthq96j+xqdjf192/VaGtL9d7iahZ1XK
pNzm5phOIMFNkLaTghVS/zJbZODFVCXIl7Y4gfk/806CoFLLGOAPFF6dKWyf8zKqCu/zRgN1BFC2
Hk7hFp/HDZ1nEeLChuZSS1CBJyu5KKSEjXYKTKxLDZsCFfmSLf6/1hvPN+JP6IMIofuy9Nwk/Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26E55E45A726000"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
content-md5: CluMqcCi29zakr92f+TBUQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3f6142e7-edcb-45da-8ac5-c7d5dee2108a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-7891569a-03c9-42a2-f81d-da4d82a2acf0/test-blob-885da9f5-bd28-f0c1-1b03-46c071ecbf1d

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
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:50 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x26E55E45A726000"
content-md5: CluMqcCi29zakr92f+TBUQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 82a8673b-425c-4e0c-9935-4a0051e4ad9e
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: CluMqcCi29zakr92f+TBUQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
uR35u1KAXKqi1W/ASAdptBL0Vj4DhP4VRh9F3OMds5Acfyd/sMWOGvnn1fST4frxsyU7jUxt7TQe
43QyOoDGhCHfo8jf6QRMZTtFHK4KgWQlVCi+4iZDrpLzYM1QXN94IFHStD4xEckh7ycRKNGFE2EQ
DeZYCKL7m/Q27Ik3+wlbzftdOM0m80NenfL+MobAbU1rQE/5Hxiv1xhJ+yRA6fMetVvVKNuU6Rmj
+mqv/GludX47zLu6Yq3jrmG13fgeHbP/4H0r60Rx11Y1VSWt/9qu2oWmBB03Y1Kt8Xp53gwhhd23
sBzrQok5yvRlhAyINa6GBgJyeBiVx3wqffnK+PhJFNBI9k++wpf8bDoo0t5FJbzL8tcKrgzEIeif
wcWQb9L8G3A7QD5fyERqdgvdbPSe5Vg9/gUhPmXDg9VnHwHSbPxoLLduCeV9bCqToDgB57TzAdxs
UnDM29wLeLxp96lClwoOdEA9MNtzv5HbjZ4swpwgcx4lZhmMm1HaYpEoFHWBUQgu8nJ0tdEA+ZLf
8U093rUgSISLHDHwgtjuY81JSqscWTyW/tAprL5NJG2GrKoDnITcCMzx9TTWPm+ZhVIDt67nw5cR
p+Dl9pvFPffEadYu68ZIbELfK2QHv79gkCdsSW2+n+kS8vWj9xEwK7g8EtSZapqLukpsCJczCecg
hWZ0WfSKBcrsHPnRpHUwrv+ryq3rxiWN4Y4iUpZR3ugNg3Kru9LDsgwKrE6guRbUO1mYhz45Nb5A
53hmZ7Mzmz0QwyEDhPMt6Bih4RnW7Cd4ThY9uVap006za9NZXUtY1hEQkPX00bdmap8mmFOkaftQ
7Rmc9uLnZu/TTxkf1IrMSAoIxlsyg3xf1062gzv6DwHXCW8yu+AvKSkFIYGdRpYUWlBIm6OgHmmc
PR+TMOO02EAYR8obmowq2ZwxLGL7wZC4oijrsXNdN+oFlX7Bm/hGUUhBhf7L+b/DHsIGbvEHoXuO
2o66ySfMug/gFQQOaT2j69saujyS7ahoJ5OxV8n4/vQCM8Fqi4chdMru6+O7tbSEYoMW7Oc+/O3l
UaGTG2NG5xcQCzZ8OV9T+UVyowHFrXLeLPRG4hENxDfThTnmjVhmqATMqqp+CCkjw/Ohy1jrH6Qv
te5v/wUFA0f/qLMmbWzsDPv9+QLHXyTKIx4ea/je52aVtthq96j+xqdjf192/VaGtL9d7iahZ1XK
pNzm5phOIMFNkLaTghVS/zJbZODFVCXIl7Y4gfk/806CoFLLGOAPFF6dKWyf8zKqCu/zRgN1BFC2
Hk7hFp/HDZ1nEeLChuZSS1CBJyu5KKSEjXYKTKxLDZsCFfmSLf6/1hvPN+JP6IMIofuy9Nwk/Q==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-7891569a-03c9-42a2-f81d-da4d82a2acf0?restype=container

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
x-ms-request-id: 05cca5db-ff2e-4785-989a-3aeefab36be0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-0f51c152-f0ea-34c2-a5f3-02aab19919be?restype=container

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
etag: "0x25A56308B359C00"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aae6d9a9-f6b3-41db-863a-e363e27a7f00
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-0f51c152-f0ea-34c2-a5f3-02aab19919be/test-blob-f4240c1d-310d-e27b-b047-550c1c0fbe25

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
3RcE6NB1lxha3hzeCCgRG+HdYDKLFRME5iniNLsWP4LqiOJa6NdM3Co5tAvU5Ct94ebI0znmM8gE
AAGnkmJdRJ+Z9IBFtzMKkIMIUmAHLwL9ZVPUTWtJA1QZVefVpUnH23BsO++qNyqzvkK13uFo/dD+
qS0PifYzT/AsK2FLNOs5QHbwmvQTUy0oII8olCVysVgX1vscuFJ5Oev+fgzIaIlXe51rd2Lc61YA
5mhnCrvLuXkJM13vHYgjdmAIFNQhX7cG0RiIBzn1OuulHNHpEi8wM8WSvzQraF4URwEB1NeB3oaw
YTiiQ7FAE/lySgG3OWMx1+EPj6CD2mm6c8A482YUIz1KObH2je8TUqs7uB1cXA2d0Pz1ck/mLYbP
6M/xByCSXibDbQCyO0rx+z30RyFLXReymiNpHrDuYwsrJ6QfIkqLqFr3me8M65WxBHcS8eZkg4q4
Pm38KD911Qn1hxSl0dnyaZ7HVMQnpa+OuBo53HIlxqMaZ+Pdjn8bgcTlF2OBDDKeH4dHnS/GkJi9
bnAkPPmXz8Bxi2r1Fdsfq9IAQo1LDavnm7zq3ilzU9ZKHx8O9kXLTUiiD4HIqAmsJ/Fdxk4LcWHF
PaA8rPGX/TiUqva7ELWNNfRFqf0qH/KzPbY3FoyIP629Sbmkj6BWChJJM/4T8Bc8z5FZxchkmh2u
iG87YOerDGpI/sf76aVT757q4evzoE2e+kb7LnrlWK6c9QYxG6oqnSeTyvJPQebrBtYqerkxuuch
nGagsN3wYqUZX/OfIdP0wEPEYNZbT7lgDyeju970azseEH5Die1Jo2dMNuHyTOQCNbl1bVoRxk2t
QKC2TKfHJPS4gBFUsDZWer1uDhjXbcNDoYUkf/3hDUkxlklMk1bAhRLtOsvTrYWDH/Kco7g01dLd
c6shoqX21nPHIxntCeZnrokG6jP3b/MAoV8LRGmR/MF2byCqnuNt9mNYC4prlRUMNfUvLuqf5gO4
IQBF65IJNiZYdpnFvA+lmPPPn2NolQtJ/g50Ys7W14kc8n3iJwvRTtVkEh97RnnliZX3z0efT4z1
++yDldNXgp4QqcqSw3Ho/VCOBILszbiVjtg43wdCfKLx7SweTrkBDJCAa52uU8UkDtH2EUoJCC00
7gb6H6KWziwnodZEya+XjPjxa2Ia5jsTFNA1S2tX5+T/6V+yBu3u6Z1xh7Lv30QiX4VSGJzKGQfK
5wvRYILAz7nxReBP5IUKA4LFqV+JIzSME+zlBc5INNBY5x7iHIgasLf4/ppk0nr/SBUaBXCoQcTW
RU2V28rrqREQ9/xmKOb5qviokSWaJ0Bx5ry5LS5fsKZaC9Y7hdXsDVSIVNt+mB8uIFp3/6+fPA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F77F13971CC450"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
content-md5: 2pWN4p5XFkWCJwV/nqvzFw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 79cc7cfd-d8ec-4609-9f5d-91b81a09e172
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-0f51c152-f0ea-34c2-a5f3-02aab19919be/test-blob-f4240c1d-310d-e27b-b047-550c1c0fbe25

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:47:50 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:50 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1F77F13971CC450"
content-md5: 2pWN4p5XFkWCJwV/nqvzFw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f6766ea2-350e-495a-b2d0-40579862d4a0
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 2pWN4p5XFkWCJwV/nqvzFw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
3RcE6NB1lxha3hzeCCgRG+HdYDKLFRME5iniNLsWP4LqiOJa6NdM3Co5tAvU5Ct94ebI0znmM8gE
AAGnkmJdRJ+Z9IBFtzMKkIMIUmAHLwL9ZVPUTWtJA1QZVefVpUnH23BsO++qNyqzvkK13uFo/dD+
qS0PifYzT/AsK2FLNOs5QHbwmvQTUy0oII8olCVysVgX1vscuFJ5Oev+fgzIaIlXe51rd2Lc61YA
5mhnCrvLuXkJM13vHYgjdmAIFNQhX7cG0RiIBzn1OuulHNHpEi8wM8WSvzQraF4URwEB1NeB3oaw
YTiiQ7FAE/lySgG3OWMx1+EPj6CD2mm6c8A482YUIz1KObH2je8TUqs7uB1cXA2d0Pz1ck/mLYbP
6M/xByCSXibDbQCyO0rx+z30RyFLXReymiNpHrDuYwsrJ6QfIkqLqFr3me8M65WxBHcS8eZkg4q4
Pm38KD911Qn1hxSl0dnyaZ7HVMQnpa+OuBo53HIlxqMaZ+Pdjn8bgcTlF2OBDDKeH4dHnS/GkJi9
bnAkPPmXz8Bxi2r1Fdsfq9IAQo1LDavnm7zq3ilzU9ZKHx8O9kXLTUiiD4HIqAmsJ/Fdxk4LcWHF
PaA8rPGX/TiUqva7ELWNNfRFqf0qH/KzPbY3FoyIP629Sbmkj6BWChJJM/4T8Bc8z5FZxchkmh2u
iG87YOerDGpI/sf76aVT757q4evzoE2e+kb7LnrlWK6c9QYxG6oqnSeTyvJPQebrBtYqerkxuuch
nGagsN3wYqUZX/OfIdP0wEPEYNZbT7lgDyeju970azseEH5Die1Jo2dMNuHyTOQCNbl1bVoRxk2t
QKC2TKfHJPS4gBFUsDZWer1uDhjXbcNDoYUkf/3hDUkxlklMk1bAhRLtOsvTrYWDH/Kco7g01dLd
c6shoqX21nPHIxntCeZnrokG6jP3b/MAoV8LRGmR/MF2byCqnuNt9mNYC4prlRUMNfUvLuqf5gO4
IQBF65IJNiZYdpnFvA+lmPPPn2NolQtJ/g50Ys7W14kc8n3iJwvRTtVkEh97RnnliZX3z0efT4z1
++yDldNXgp4QqcqSw3Ho/VCOBILszbiVjtg43wdCfKLx7SweTrkBDJCAa52uU8UkDtH2EUoJCC00
7gb6H6KWziwnodZEya+XjPjxa2Ia5jsTFNA1S2tX5+T/6V+yBu3u6Z1xh7Lv30QiX4VSGJzKGQfK
5wvRYILAz7nxReBP5IUKA4LFqV+JIzSME+zlBc5INNBY5x7iHIgasLf4/ppk0nr/SBUaBXCoQcTW
RU2V28rrqREQ9/xmKOb5qviokSWaJ0Bx5ry5LS5fsKZaC9Y7hdXsDVSIVNt+mB8uIFp3/6+fPA==
```

## Interaction 7: DELETE /devstoreaccount1/test-container-0f51c152-f0ea-34c2-a5f3-02aab19919be?restype=container

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
x-ms-request-id: bb85177d-039b-4e43-aa0c-e62a1b2ae6e1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-d084bb23-d311-f365-4d9d-8b0dd4e8b0f6?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x214AE8B9894C260"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 36624956-e6eb-4803-a7a1-8e96aad75e3e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-d084bb23-d311-f365-4d9d-8b0dd4e8b0f6/test-blob-b108ad81-14c1-944b-627c-4e2c32014f67

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
u8+5LmDg3tvZpqSUKIwDHmE1U0QrzypKpjCncKZuDsiWX1FNVo/EQ9yo9msv0crBmWyrnpRsyuyk
bocvOW01a5fc/ck6tcfRcBBng9i+G9Vm5dY5wm8zKpRkqOgHlApucovTU9MBhuSl2S6DBEcU5VOy
yVOX/KgoqNM11g3fydwG+BBM68gBZV/ylOhBryZNUMKVVcq213bjq6oAy7DWxRBSfQs2x/qKsGT0
pGi/5/is6IVKSnQRTyGaaD8dAZmuG87Y7zIaFojHCqRmwjMNI8SyU+MqjHubQC3qm167bK/KRYiZ
5/jGktH8gkDPqo3ujEV7a621g49TPK4EL3spDJ31m3yqdDvM7MESLgk6zJaf/A4ZPwABFMH5RqtJ
wWJW0nWi2g4QQxgJrn/so1WGGG8YZTNsEMyc84a7sS2QgipevFuTmPKHj7j2D5GBFXFrci07MVwv
6cKoBeaIVZLqeCxUjuf68n99kNV6dgA7G94VTz7/VVDOL9KZ6pML/zklC5ZkLIeJcYCtvaGGtHPB
bekIcgVU6iPbhl8UYQfscpGbVWtq1+9Xi969UZevSHpf132pAow00SBziKYndA94wUsP6l8IV5X6
seYnlpiLLD3ktYmKQ28EZ4NK9k5ILxbORZBMn10bVoDnrlGlDDqH51xoQ76G7X7bCoLbvWBHsoLQ
WFEIPozfyF8IopQeX1pIww/x3+tXSFcScJXbQJkgoPzO1bPpfqjQiXtffUvpvasnkvpQVdKXeBD5
9c73BIjG6AKYT4mmX0RmIVZv98oMKbLps62ez0opN1yj8Ina2YTzmZVIUG4hgDO16jN7J4BF7cwb
DVHaJxi3bxcsA267jEjRfF41w9hEyDJ56eUWrRDcXQO8vsszGHJ8kOBX9H3E+V7rqqsiECn010Qe
YD0zoMIHUKZr/818nmPsuDL37NO1tO+HKwNluk3ZyOeHFLc0SfAeUKTWWfqRbgtHNVf3/OpxaaxO
q3W+oZZZkjfl9Ymrt29C2Jwv3lv09r33HYT14sv8FqsL5p17YK4OfcbDq3iBnH7otCNOQYtQWbW3
xoQRY69r6d/en9HRx3juIWCUMUpEdoEFDS2ortQgu4zow5kp/BoWWMKZo/ytF+2qXyAquyhqclAD
C1WCwjoLveNE6ATfxCRGftiIq9KEWPZA/U609QBkfVBIJvDElJWHjeUYaC7oy5v75D1P4cd+frNf
QcTrV8jj32uzlp40gelDAR3sa+/IVzKzuBHCFZuJyqc9ZVPRmzYdNYjCNTT8x2NTDOCpkRPDl+mR
OJ62IMrPKsz29hyWcmXnzjZnBSL+tvGubwi73ziUes5pP2OXZxS+8wpnBtBGvZp7wsLdXJHGkw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x222F7F11E681300"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
content-md5: HlPgDLvgHvAcRzIw3up1wQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a06ecaa5-4e49-49e2-aa45-06e9fe4bb16f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-d084bb23-d311-f365-4d9d-8b0dd4e8b0f6/test-blob-b108ad81-14c1-944b-627c-4e2c32014f67

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:47:50 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:50 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x222F7F11E681300"
content-md5: HlPgDLvgHvAcRzIw3up1wQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aec4f9d4-95a5-4e42-b8ee-2dfc1407962e
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: HlPgDLvgHvAcRzIw3up1wQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
u8+5LmDg3tvZpqSUKIwDHmE1U0QrzypKpjCncKZuDsiWX1FNVo/EQ9yo9msv0crBmWyrnpRsyuyk
bocvOW01a5fc/ck6tcfRcBBng9i+G9Vm5dY5wm8zKpRkqOgHlApucovTU9MBhuSl2S6DBEcU5VOy
yVOX/KgoqNM11g3fydwG+BBM68gBZV/ylOhBryZNUMKVVcq213bjq6oAy7DWxRBSfQs2x/qKsGT0
pGi/5/is6IVKSnQRTyGaaD8dAZmuG87Y7zIaFojHCqRmwjMNI8SyU+MqjHubQC3qm167bK/KRYiZ
5/jGktH8gkDPqo3ujEV7a621g49TPK4EL3spDJ31m3yqdDvM7MESLgk6zJaf/A4ZPwABFMH5RqtJ
wWJW0nWi2g4QQxgJrn/so1WGGG8YZTNsEMyc84a7sS2QgipevFuTmPKHj7j2D5GBFXFrci07MVwv
6cKoBeaIVZLqeCxUjuf68n99kNV6dgA7G94VTz7/VVDOL9KZ6pML/zklC5ZkLIeJcYCtvaGGtHPB
bekIcgVU6iPbhl8UYQfscpGbVWtq1+9Xi969UZevSHpf132pAow00SBziKYndA94wUsP6l8IV5X6
seYnlpiLLD3ktYmKQ28EZ4NK9k5ILxbORZBMn10bVoDnrlGlDDqH51xoQ76G7X7bCoLbvWBHsoLQ
WFEIPozfyF8IopQeX1pIww/x3+tXSFcScJXbQJkgoPzO1bPpfqjQiXtffUvpvasnkvpQVdKXeBD5
9c73BIjG6AKYT4mmX0RmIVZv98oMKbLps62ez0opN1yj8Ina2YTzmZVIUG4hgDO16jN7J4BF7cwb
DVHaJxi3bxcsA267jEjRfF41w9hEyDJ56eUWrRDcXQO8vsszGHJ8kOBX9H3E+V7rqqsiECn010Qe
YD0zoMIHUKZr/818nmPsuDL37NO1tO+HKwNluk3ZyOeHFLc0SfAeUKTWWfqRbgtHNVf3/OpxaaxO
q3W+oZZZkjfl9Ymrt29C2Jwv3lv09r33HYT14sv8FqsL5p17YK4OfcbDq3iBnH7otCNOQYtQWbW3
xoQRY69r6d/en9HRx3juIWCUMUpEdoEFDS2ortQgu4zow5kp/BoWWMKZo/ytF+2qXyAquyhqclAD
C1WCwjoLveNE6ATfxCRGftiIq9KEWPZA/U609QBkfVBIJvDElJWHjeUYaC7oy5v75D1P4cd+frNf
QcTrV8jj32uzlp40gelDAR3sa+/IVzKzuBHCFZuJyqc9ZVPRmzYdNYjCNTT8x2NTDOCpkRPDl+mR
OJ62IMrPKsz29hyWcmXnzjZnBSL+tvGubwi73ziUes5pP2OXZxS+8wpnBtBGvZp7wsLdXJHGkw==
```

## Interaction 11: DELETE /devstoreaccount1/test-container-d084bb23-d311-f365-4d9d-8b0dd4e8b0f6?restype=container

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
x-ms-request-id: 4f147415-ce7e-4114-bef9-620a15f50f43
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-1712a921-b096-6720-b16e-401c75b71e3c?restype=container

### Request headers recorded for playback:

```
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
etag: "0x1CFCABED8DD3C40"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5f7cbe44-fe58-4e2a-9887-27174e7e77cb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-1712a921-b096-6720-b16e-401c75b71e3c/test-blob-90e226a9-5d65-fb9a-232c-af598bd58795

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
o6vh6l5j/N+/06RU+JFneXNbu7N/rvzRjaEAUtMuHqteEYiGH2QJvqwyWMMLy24fB8apGvtrvPSv
EFy9YqkLkbT59ucJ4FkOUf0GTFY4xcEy4EsMhASv8lSU1w8IS1sDJ8cPEtWHFiZtmsj9ZHCedkqa
ioFd/gyvSQOSdAlJBgWiAiWOKbLsq8okn+o8sY7k9mDEbcHZpSi7X8nR9KEdI5TCW2JKD02Yrt+3
OV8ic5d1rn6phZlEyVz808npGrYoB3tVeVYrmecSLL7iIWzJmesxXEYjdJ77fZIFTTuErpMojjHk
zPpBSRSXllnaYqfwMzrduL5vBZPcWvvDJkurjn0ruZM75czx7xIyjN1FIBvrFRoBpvbUuYmeB3L+
fiLI6wjbr6kTtU1t7MirPHi1ljng2BExqeiGVgAKnN1a83HwaqDVaXFy12DMk7kuKXwQ6HA5HaUR
l0EfVVioCRhwE/lXu9LX4CzHbgGxZBYuWCyD+rNsINXM3tJftRQYyc1HXH/A122pOAhEca+jXzMr
8PwrJQ9lA/Ikitz/eCsYrqUzageWboG/2sGqKK8lKH6fM8QX7KS+4lmMm0yRqb/dK8IKcPUrlIJ7
bEpNutpD/mJdYERmAMEBdYiuCdI1LTACzfzsG7iJdJ5CnIBZcSd+SZ3pM0l6disBCPptfYuvRj4a
S+3dV+Kq1OylJGRBpwNgL8A1S/rmh1bR6xK9G/YTklVBPiY6oPK6P15d1FLHv2H2DE3LevpEM8OW
DGvQ7Lj1kpEOAGndJY/OegybibIECSyxxg6pSBha/AtipJOG6lKmZ0LAuL73Gee9/f/uqKkRkgM/
HiapS0p5swNde4H7R4+69SFvRFFtua0n60sYbFRhUBKQR8wr/Bv4RgS7mp1lwrVwM7OHoU2y0mR4
gWD+YUev+ypvawDDjvgFd/1Msh8PwimVqDmg2q/E3nRnsnq7+eW9C55z9Va1raS6gSpQZR9Fab83
abgODiF7q42LW9t9Sn4XjqaAnMzS3/qU5ViFc3hUIUm7hI8sr/1990rJKlHJPTerOdZ5xczyZIm+
eijJ9TgUNjmRwsbu6t+pAqSCCLWpyqgh2Tmh21x9yB8GbjTUtAEStPMXN3twvU/20MIncFzTFK9/
qBz+c1rdFPmn53ur1E6icFPBkpMtsBvqqguaVljDMlqFVAvlE0GYOSKCydXTS/tzhP8IEYIbUvgA
E8hPQ76g5LUhJYBCvVwSKVhwq+ZFFl4QJtFZuiDYagET5AB4SfZk4eUgsiZ6MMei9ugpqqcRu/xq
PxzsRimVSLt+L9lcmd9hDMkAJWQ4lfUKtsQ3rr9aAikDDgrad5q8i2lr/AHtRlwJyJ7eEJWYMg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C1EEB20931A500"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
content-md5: VoFPGQoDUd7uQwgPSfsPeQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf0ef2cb-701e-455c-b55d-d1537cc00ae1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-1712a921-b096-6720-b16e-401c75b71e3c/test-blob-90e226a9-5d65-fb9a-232c-af598bd58795

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
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C1EEB20931A500"
content-md5: VoFPGQoDUd7uQwgPSfsPeQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b6607286-422e-4bb1-9020-47f138ad54cd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:50 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-1712a921-b096-6720-b16e-401c75b71e3c/test-blob-90e226a9-5d65-fb9a-232c-af598bd58795

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x1C1EEB20931A500"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:50 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1C1EEB20931A500"
content-md5: VoFPGQoDUd7uQwgPSfsPeQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c813aae3-06d1-495d-99c3-568fd16f5515
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: VoFPGQoDUd7uQwgPSfsPeQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
o6vh6l5j/N+/06RU+JFneXNbu7N/rvzRjaEAUtMuHqteEYiGH2QJvqwyWMMLy24fB8apGvtrvPSv
EFy9YqkLkbT59ucJ4FkOUf0GTFY4xcEy4EsMhASv8lSU1w8IS1sDJ8cPEtWHFiZtmsj9ZHCedkqa
ioFd/gyvSQOSdAlJBgWiAiWOKbLsq8okn+o8sY7k9mDEbcHZpSi7X8nR9KEdI5TCW2JKD02Yrt+3
OV8ic5d1rn6phZlEyVz808npGrYoB3tVeVYrmecSLL7iIWzJmesxXEYjdJ77fZIFTTuErpMojjHk
zPpBSRSXllnaYqfwMzrduL5vBZPcWvvDJkurjn0ruZM75czx7xIyjN1FIBvrFRoBpvbUuYmeB3L+
fiLI6wjbr6kTtU1t7MirPHi1ljng2BExqeiGVgAKnN1a83HwaqDVaXFy12DMk7kuKXwQ6HA5HaUR
l0EfVVioCRhwE/lXu9LX4CzHbgGxZBYuWCyD+rNsINXM3tJftRQYyc1HXH/A122pOAhEca+jXzMr
8PwrJQ9lA/Ikitz/eCsYrqUzageWboG/2sGqKK8lKH6fM8QX7KS+4lmMm0yRqb/dK8IKcPUrlIJ7
bEpNutpD/mJdYERmAMEBdYiuCdI1LTACzfzsG7iJdJ5CnIBZcSd+SZ3pM0l6disBCPptfYuvRj4a
S+3dV+Kq1OylJGRBpwNgL8A1S/rmh1bR6xK9G/YTklVBPiY6oPK6P15d1FLHv2H2DE3LevpEM8OW
DGvQ7Lj1kpEOAGndJY/OegybibIECSyxxg6pSBha/AtipJOG6lKmZ0LAuL73Gee9/f/uqKkRkgM/
HiapS0p5swNde4H7R4+69SFvRFFtua0n60sYbFRhUBKQR8wr/Bv4RgS7mp1lwrVwM7OHoU2y0mR4
gWD+YUev+ypvawDDjvgFd/1Msh8PwimVqDmg2q/E3nRnsnq7+eW9C55z9Va1raS6gSpQZR9Fab83
abgODiF7q42LW9t9Sn4XjqaAnMzS3/qU5ViFc3hUIUm7hI8sr/1990rJKlHJPTerOdZ5xczyZIm+
eijJ9TgUNjmRwsbu6t+pAqSCCLWpyqgh2Tmh21x9yB8GbjTUtAEStPMXN3twvU/20MIncFzTFK9/
qBz+c1rdFPmn53ur1E6icFPBkpMtsBvqqguaVljDMlqFVAvlE0GYOSKCydXTS/tzhP8IEYIbUvgA
E8hPQ76g5LUhJYBCvVwSKVhwq+ZFFl4QJtFZuiDYagET5AB4SfZk4eUgsiZ6MMei9ugpqqcRu/xq
PxzsRimVSLt+L9lcmd9hDMkAJWQ4lfUKtsQ3rr9aAikDDgrad5q8i2lr/AHtRlwJyJ7eEJWYMg==
```

## Interaction 16: DELETE /devstoreaccount1/test-container-1712a921-b096-6720-b16e-401c75b71e3c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
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
x-ms-request-id: 8296474c-1836-45dd-a83b-1923cb896e0b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-fa9a442e-99cc-1cf4-7067-2ee5217cf193?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26ACF600A6C7700"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 963d0d61-607e-4347-93f4-5624e5dfa69d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-fa9a442e-99cc-1cf4-7067-2ee5217cf193/test-blob-22a2817d-9ece-b59f-1a6b-0ee5d6b09144

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
a9xgs5QKVi3Ob9jUPu3RM0AJr8z7nWUQMsUg/S602qc7HO2vddQAI+1sK1zAH96DlvukGMwkl812
T4DP6ln+GpUwmSH/Ir5sCYvej3EIUBPnnGczD8LbFoUgOCZUMTmUbRHHkIa9hHM9OA9ARghcbf9s
503xygrTVYKc3umXGNhSSiFfQMCNKhjz9tezmtB8w8om50nsoqIH9DoDIKWJpR837vvm/Sw+3700
/dMyILqyHxsecDGOZqd+WEyFiglzalG3e6zUlsad6AiMt6XO1NR/UQGJazTuqIdTZ6TguVWzwZOC
e6QO3YlUgYgpAq4CsIN4BTgI6f8dyNMkgS4hvS6z2PURTFkwcXR3NOmrxabZULchaLMcq9eUZLLQ
6VxaM8Radiq48WMpSJTEkLQVcgMtSzB3/1R7liwefOenX4cYHQElUU97IF9T9yAfVxsjf/Kvo54r
4zNv39/9mnR7gugMrHOz7yCzsSvQIwg0Wz8R+v3197vp7DnNtnJwfoXr2HQ3E6qocI/R+/JyW8Ar
OoOg6592hostIsA55TiuQzKm5UuT/UiUaYptI/vJdpF5onvu0JPldFHpCvHqbopWIri/zHV1mD07
C4IVCWKPY6svwEK9wHKfwHH5qfJWqvv/FgBDCqobBAo+s8QR0GvvWqZFu65ImWJGIAwEe+9K5GGH
FfJhS1kBE7w4fg2ujvAFCU5MEe9Mt32e/emdF4ga885iirp5jg5NRKfxDxtVl5Eb/nGg/tNyOl11
w05vY/wzHYs+SwQ1jHs//8xHW6dhSGVYghgWefX78FBdA8rA3eCqvfGQF0yN5nH2Yf8GKt61E3rp
F+HkHaOVQ1q02IiwfyHrnJ220TEYypymIBj19MVxp/BQ1sX/xqBN+tPx2Q3pReHdGo5B/0FI0E1E
Pf2LoE+VQzCYYKhc69b8aNdeJvGOvds2GNk3L6euBwZ4uoijwlmEXJbdUOQ5gS+3RZdq6qlctoAh
VIh1XROI6Vii4zFNWaV92cpasWz2/Zaqf+oQRB1cHAQIgW7RDv6CVGaMlp3+auzx7BDfAQUTK1bx
y94peKU7RscsRdc3q8vL2FwGaWf4rBT9HlgMfBr/9FUX4EIgWNzBUU/W0SUUukBEFCmoDcLv+B/J
K1lNLsqsLVCBIMuIqn+ARBgXItrv6WQXx2fxVueTJ+cjVyyCdCOFKaPVkpp0vGqpJ8ip19ZE2kL1
NWZiu9Zo7fjkZVNT/tD1kvk3GVbKogv9SC4f6k8Q3nzpjT68I23NbKShkFYWVin4tEXcDcDsK5Na
ZHOnSQOo04bWaXCROG6Laa2xKBK15/EFJjUKNNG8/WKrYr76JSKh+LzQP+25ZnzXUKMSOwKApQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F8F9B59453A860"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
content-md5: +cUfdxaRla8qBeLCJ96tgA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6158a3df-606d-4623-8841-746d5274d19f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-fa9a442e-99cc-1cf4-7067-2ee5217cf193/test-blob-22a2817d-9ece-b59f-1a6b-0ee5d6b09144

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:50 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1F8F9B59453A860"
content-md5: +cUfdxaRla8qBeLCJ96tgA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a80569ea-85ee-4254-8635-9ccd399ba4c7
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: +cUfdxaRla8qBeLCJ96tgA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
a9xgs5QKVi3Ob9jUPu3RM0AJr8z7nWUQMsUg/S602qc7HO2vddQAI+1sK1zAH96DlvukGMwkl812
T4DP6ln+GpUwmSH/Ir5sCYvej3EIUBPnnGczD8LbFoUgOCZUMTmUbRHHkIa9hHM9OA9ARghcbf9s
503xygrTVYKc3umXGNhSSiFfQMCNKhjz9tezmtB8w8om50nsoqIH9DoDIKWJpR837vvm/Sw+3700
/dMyILqyHxsecDGOZqd+WEyFiglzalG3e6zUlsad6AiMt6XO1NR/UQGJazTuqIdTZ6TguVWzwZOC
e6QO3YlUgYgpAq4CsIN4BTgI6f8dyNMkgS4hvS6z2PURTFkwcXR3NOmrxabZULchaLMcq9eUZLLQ
6VxaM8Radiq48WMpSJTEkLQVcgMtSzB3/1R7liwefOenX4cYHQElUU97IF9T9yAfVxsjf/Kvo54r
4zNv39/9mnR7gugMrHOz7yCzsSvQIwg0Wz8R+v3197vp7DnNtnJwfoXr2HQ3E6qocI/R+/JyW8Ar
OoOg6592hostIsA55TiuQzKm5UuT/UiUaYptI/vJdpF5onvu0JPldFHpCvHqbopWIri/zHV1mD07
C4IVCWKPY6svwEK9wHKfwHH5qfJWqvv/FgBDCqobBAo+s8QR0GvvWqZFu65ImWJGIAwEe+9K5GGH
FfJhS1kBE7w4fg2ujvAFCU5MEe9Mt32e/emdF4ga885iirp5jg5NRKfxDxtVl5Eb/nGg/tNyOl11
w05vY/wzHYs+SwQ1jHs//8xHW6dhSGVYghgWefX78FBdA8rA3eCqvfGQF0yN5nH2Yf8GKt61E3rp
F+HkHaOVQ1q02IiwfyHrnJ220TEYypymIBj19MVxp/BQ1sX/xqBN+tPx2Q3pReHdGo5B/0FI0E1E
Pf2LoE+VQzCYYKhc69b8aNdeJvGOvds2GNk3L6euBwZ4uoijwlmEXJbdUOQ5gS+3RZdq6qlctoAh
VIh1XROI6Vii4zFNWaV92cpasWz2/Zaqf+oQRB1cHAQIgW7RDv6CVGaMlp3+auzx7BDfAQUTK1bx
y94peKU7RscsRdc3q8vL2FwGaWf4rBT9HlgMfBr/9FUX4EIgWNzBUU/W0SUUukBEFCmoDcLv+B/J
K1lNLsqsLVCBIMuIqn+ARBgXItrv6WQXx2fxVueTJ+cjVyyCdCOFKaPVkpp0vGqpJ8ip19ZE2kL1
NWZiu9Zo7fjkZVNT/tD1kvk3GVbKogv9SC4f6k8Q3nzpjT68I23NbKShkFYWVin4tEXcDcDsK5Na
ZHOnSQOo04bWaXCROG6Laa2xKBK15/EFJjUKNNG8/WKrYr76JSKh+LzQP+25ZnzXUKMSOwKApQ==
```

## Interaction 20: DELETE /devstoreaccount1/test-container-fa9a442e-99cc-1cf4-7067-2ee5217cf193?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
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
x-ms-request-id: b371b972-1fd8-4dec-bd3b-f19e83f1f4ee
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

