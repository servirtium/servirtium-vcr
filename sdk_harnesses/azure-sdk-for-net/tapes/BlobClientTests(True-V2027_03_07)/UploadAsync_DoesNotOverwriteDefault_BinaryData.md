## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f235c54e-5481-8054-a8b5-4d34df6b2cdb?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_DoesNotOverwriteDefault_BinaryData
now: 2026-11-12T00:49:11.9561837+00:00

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
etag: "0x244C5033FE0ECC0"
last-modified: Thu, 12 Nov 2026 00:49:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c5bce3da-65d9-4940-abe5-5199a550a171
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:11 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f235c54e-5481-8054-a8b5-4d34df6b2cdb/test-blob-fdeda8c8-469d-3760-390a-d2ea5e6d67e8

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
VM8Bak3OSfPrKm+Ej2PwK4icS0qWvH8IZP24doJpITtOZd8PacKN+V76EnLW26jWGqdhwiIdUZhQ
+QVQFtNxgQk0NimD4cHFDlLrnKoMMYhU4lvbB18ZMBNHvnC9PeKKiJBpoaV/Ujnlm7PPMbXtRMd8
+zN4lnmqGwUVPCJRCNFvYRMZo5Dj1Y8i9WurSf5dWXqpQEKuEvIWv4afaRYXlJPiYNCi1KE2mSWk
VaAO/tEGuOKnp8ePwE8hAuMKQ2x5C2HYyekuu4XZcqccCrxRCMC0mLEzb+zLUp+AgNG9LFW5Kko/
NjXo2PxdzjQfcrWTz/oiVaq7RZt0DHZJrjqzHEZRY+BxEtKLzMC01qG4q+Dq7bHXmter/uSvyim+
nynBqbLuzg/VIb0nlonpBm76vGCWXsCJ3IFupmT7wUeozSyW8i3vyt3QFcvzsANNwfh2tQ7JKEBp
OM0wfyeq2WB1fslcUhNBC/GCxUn0lSx9IeRshQw536XsLbpgvkq2JTtrfjE68W7kNKkcRmL2dKKg
s15CPVRTPJ8kbyVY4U2mzKAOiRf6Qy91iFBjHJlC9rkXvwrsc+fmGEGSFoJJi1NcdXnC5+qLpnAu
zbUD8B8F4XlrQSFCulm4J3HWaC2tLPz9BqYfgA7OjBmavaYx4ichjDQI3UoxGrsgCb95tD1DgaG5
Bul55mFqnbQIp/yzhkVJtNz4pE6xy+vq/nZPVNfbVzwEd9w9qKXTnkCWKHO/bYN6MABhSt1SCDr9
jufqGkjcLU/Arg5pCws2JQUNGqN4K5Hz1CTXeg1fsW+hQBm96IP3ufsj/r50EST0KiTXRe2XhWNW
90YjBbJCYfyfyMvyeDyBFmGnVSzTfsP/4k/oh2yBCbq2Z/E907NJ4Z3C1UhZArLnVS+M8C82g3iC
JCNjWdmPHb4QOxBLREKtXnSPEKl6pt+dADI99BmLgOR4u6+Q5YfEMreKSMahnBHs35G7p3LPB31D
xlinUSmlhbss0oiSHHjsyt7x8F0Z+2QgUBWH0NlyqbMxTR8uHeCO5cMLdcmIWsIZztyT3RcgKsr0
hgETHbTiuSnVYM9Yva39YwuZDoWal/ZSbgH83sucESJUOpbfescPKbugs/nzwBAvlXoMhhxEWu8K
wK+y5dpdOE+sA4MWHuhDiuXJ+eP9X67xzUhRkIoGD9+n1bkXXEPhQnqqRryNGHeRyPw3e2ALDGEB
wRiSDKjEpvOjb0kuLC2h6LZoUxnxZLTRv8iOz5R+m8hYFpsrTjbS5aDI6akuY5zOlZKqorlID1xj
wU3gNtZfJNOA1RWSdpmAlm14KHsLolssvzkC1PgOEAc+x43p8a/JacTVrY2GPB/4KgxLz+bhWA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F7E1012FCEDCC0"
last-modified: Thu, 12 Nov 2026 00:49:11 GMT
content-md5: nizQrCnF1WqYlwWQOk45WA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4b8e02d1-890f-46d7-8700-813646ec9c02
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:11 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f235c54e-5481-8054-a8b5-4d34df6b2cdb/test-blob-fdeda8c8-469d-3760-390a-d2ea5e6d67e8

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
HvG0dpxcUNtxxQ5UrgyWpL6vv7Y29c6lghoJquzDQSBcb2/3PTgtDHT6O8d46HDsk2iNHycrISki
D/SBUqbvroTt9z+cnmeFgrJBPLkGLJqqHRaENSH5ME1G1S1Eq7rOC4xDivAwT/QAB5106eVvHOJZ
1zWPa3li9MbxVck5Qdb4czEswqKpec0hgy2DhEdo1rlL6tOEPqAT4JUpP/oqx8bHfHW0Qlk/r15o
bedL33B/iX4Q7VYCdDWQGOINgDrT97xmvAjRs5RgCzp1HNG4xwEkqbV7GtlvxAhAIyp3Mi8jlHYr
5CJortXqsOEbjVdk2FHg6NaEWNzi9vgAkI9q6NkLUodajOPevPvfkGr3VDew3EvYlkpZnzyaSO0q
aB1FgMcIEDvPCUtuASvapMdy66LBT7NEkVKOsrJLwET1tFTdmQ+i7kP74NP/apQefvp0J11KaRlq
Ae91el6IhEkHeE3X/Qq4z/xfxW7gRSa9bzO41pjmqko7c5gfLXTkc1yJ+PFHR4HvvFdg66OqirzJ
twor0K6wIM4CnIlymKKIelESVkw0diixyBlBhr6mkOncVnVquaOt2dgjRKv3fSO12HBSlzNvlUHi
eQeVb5kQXAuglUIsHcCuZXx0ETF9ukv1i65NVPi1bcA0iECbGGo+EuifVufhibqvozK2+oQQZb+8
n+PrwgcS6yiB+JWAEk0SNv5J3WNjFALznbDG/nM8JCKB3niGUlDgjGu/X5EkL5DlpMOFxodbWYvg
+CRWTO21RdNz/zTUi+StaFD3o7Rxz24g4Fmvtl2bJYXsplorij9+Chq9sS9cEBjf1142ZLXWbyi2
NmyTBo5219qu5+WJgt4QeZmatB4+w89Az97+ZMDQFjYxdVTT6gSLRtlVrigzVlWAJeobPLsKd3Kc
Ujavd3MZ3dGuVw2KPY+VD21E6RWmDXmJfj7WtNp7J/3hN5jN289lO9BXhP5I9uhbhixNxo1c9UW9
Jvk0Qin3MzAPqAb2xzOe3q5FT4h6QIhWey6tLWFwhEFTELTVMfinX1HNOU3iZL74r+ffF6a8Q+Zw
3sf7SgXPniPEo7d/yK22ne82rAc6cxZvtH55kWyblszOZFIwrBVM/popHsAHeec5KXm2hZbeNmuw
i5aHVQ22KA3qsWNbhfHa6q5sEFVVaDqWP2jz5RA27y7ngCB+xKiMcvWzHMiD3qOH25vnciUVWiNb
8BWlw0P9s8E1dATRWyYG351goktxE2HEawl1T30J0SX8I9OS56+xtmgGTmqftn904JKHtbjY6d20
4Vg5iGRELKLf1DhSdPjuruzia8X2JbSKAG/qgRttJDn23QZWdy4EwiLHwOJHImuamAbL9X4YvQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobAlreadyExists
x-ms-request-id: 142729a4-4fcd-4b38-bdc3-6cc87f44055b
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:12 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-f235c54e-5481-8054-a8b5-4d34df6b2cdb?restype=container

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
x-ms-request-id: 907bba9a-685e-4a14-9bd6-e2728631b15b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

