## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d225fb66-577f-1b89-1b1a-cc1bef18b0fe?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).StartCopyFromUriAsync_IfTagsFailed
now: 2026-11-12T00:47:16.2280236+00:00

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
etag: "0x23CD37BEF6A44C0"
last-modified: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dc1dd0f3-a8dc-4328-8030-2f2f46bd0e52
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d225fb66-577f-1b89-1b1a-cc1bef18b0fe/test-blob-3f8aa978-cccb-cc97-45fd-70a576eeab17

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
DDSUKCWHVq2iyCMld9+GufqVVCeLQ2eaZFiMgubjpCxvtA+6g4jY8FPdnAKpcVVmd7er4ZqDjMjN
+sPN+9PGvyT2tsPQyzVyvGTUraZl8fMDJQsvOMOS6ydG7YnEC/V/F93esrqRlqyBOSQ2r94haAnQ
ytXIlodgZMubid6srbFuVJbJhz84cY9frv6fXDtIJIR/80Eft4BVfU3v9gzN1Ityx1tIWOHKmFhG
aeiIwAiPU2RZLblwTp0VdAnxSXuCkdlzLZXgAMyjtFvo2U2YzbxFX6KodKfRAXi9MuPX2U/dw9gO
FZNzr1OYtnheiHVPfaZMq+nY2h0yoSscIs3oy9sMCxZ1irco0rBPEL0vcnkDbbU9iy1lBOm723No
VoyFr+qcUn1e2vLuI9k5iMpfAy6yGbQXq0CupgYtuq5EwHskymDTkiD8pJPDTmdTLHweXNhFtj3X
bgOq7at2MSBEqmNdFb5pi3AOtXUhVF3ZWnqKDl7V/wo+TFxcKKR0hXJzfqMD9he9tdBoNgDHtRmm
0ZIx7CPCbqtYHshiDGPLmjACrtW61WRjzFiObcgKdpZCtlcRQplOsRD3q9dOW6hsnJzQxQdD7Pwt
ziDKMwDjTqcxH1UMuVeXs/3FwimNFHCvIdErOrGP/spa5HR4g30PFFwvHTxSYOJFOBEJfinSoLmv
GxIvtxT2oiCLsdXiHi+Ata7NXfc0XMDu5gGfhYCgiEO7yGhq31xIOXobx64NYhrhicl7BULBe75S
QdETVhyg6imRJ1XGFtVShCR8GJUR4IPmvvu3JYIA+U2qGJ6KNeNeet2FezvFGnPzKIAeRWIoQGBO
LJgg6cSmkC4HHP03x09AHp24jGVHIaOIw/0C4rTqgtg9PAhLPZEY3uoNvf51vGAw3SbEcLP7Bgv1
mCXHpK55HZkl+YtH9eEMn616OmOkEgec0QSNJRIkQTX9VqRrUTk8k6BlUMLU6ehFuNAFgcunUYUe
KtOp7PeHAbdWSZ88oE50PqfDPsJFx+gcSG1CHsBpVgUfTSZmkqao3U4Kfp9ICBeBkUIk4xLD2GPq
jKSJReP37POaHVIoDasAGmFzOkhI1D9WwIx9RXLyW3TCewUCH5hrE5KsrevEWYSWJMiwT54aorhk
M4VWeaeAp8HeZZGl/fvICCe2myZUkWYI5yCpQgzWqNlNnesTFJnqLAYp5vTy8SbN50d2ZAaSEKEe
TpKG1mW1B724WF8PtfONy28gKqtyFvX53FrEX0PSuoxJ9MYHZFWgdN83OZjHvTJT6ZmXcub2qzic
jPoL8Kd55p3SxcAthmYZf7XLO9xdMh4ocXaqOkimUkmNa9dblYM3vVL69PhxJmMyfvIwK29bPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25E6287D652A8A0"
last-modified: Thu, 12 Nov 2026 00:47:16 GMT
content-md5: X1V5nixYKk1ozmRyXosQAw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b0e3b4a4-feef-4c6e-a5c5-4f8b6c6ee05c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d225fb66-577f-1b89-1b1a-cc1bef18b0fe/test-blob-7fe3db59-cf30-55ac-2c72-779f1a8fbeea

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
MpR+iWM+JrZLE3i8VXUn2TIsfn+xBAfupqTHhfmGSKLACP6W8dHbGrUsNBxW7/+2S51t7RA+OC2M
j+O+dqG9xMvV/Ex2kOdgUWPKhdDql7alEDpbGVqSgdDRCWLuHKQUb29RgfOyP7q1DJytc7Ncovcs
GWVnYatxQ3p8pYeFcjW/thZhmRbD8tF/pgy+5A4ddGdqwgM+rA3D3z15NpozMJpn7b2c+wjgaSaU
57ufsl5sXzAfGrAxgQkInbnZSbw2THVxV/ZQgHlfiljcqcVSJC3fDddpExXqNWy0lF1OBx9qXppF
LVtnG963wJBXVNdDtXmM+jzkzDlghiGKnOsbEII4cUorDfbRd/H4slOEk+CUcN/kwg3jhZFh5Kc5
3X/ym7AOHuOMGKeDuoJK7Brl3PNB9SsMN011Vey5yShPl5pyBRaidnX9CFc3YQeKmJl3ewiz+OhT
5mNimMj2009+MyLn1+cDQ2V+Q+3U1NZF6rxTQU4gm5+yHx6yP92sBjQIuC3losGxdDiiNbT7fhGN
Ha4Mo5IAXpiDNbjIUAOI0j24yxypYEf7oc0WfWXrt6ANJSIvoGOiB1mUYW0I6SM1GmN3QrP15Lxm
EAHE6uAyl34XuyvgWDLaFsPCFP7a8riq4WMCdHTtF0FlyY9h3R15Ycnu8C74VMExnSvvMs++ix5J
Ggl9MCMJKqPqeo+ieDimSbI07AGJsYyi0NdJ/uVxpz1xF8MU+zGm5MaLDtkxjiTySOkciZ8cwGh8
219MwCy+eNNSMWF1kk2Bjgg7/qOzcEKyVrX7VB2dVFdblyDRWSOazJUG313Cfbabm/uX4MHEyWod
mWl2wiS1tNwKGvotrzTkoTEOrJDl8Nn/X7kiBnSWls61s8C5IwpxUCuAuGO7buvGsz+PthzaOKmQ
d2Nrkq1oc4Qsd/x0Kn0nnFtlZDd1Q/HNXFM0Bt+x23sWKKunBr59F0Tfj/bvUYjCZxnAddNyGzRx
nTZaNGyke5yAXQHRgJad50zylrT63grKcp/F8GWnpA13NWiHIuPYOhNZbvOG8OaCI42Gf4SAd78s
j8HN3oo22Ln0WksuFsRpGlugoG8WRIG4Qs3YICWI972pWpMhCluJI5U6kpabVAzIHWUp39ZPFks/
FJu9XriUa2KNhbsxRw//F33Z27LrHe7AEAO/XxjnWURH4va/y8TdpiYzDs9QltZWKchYdjqZVPet
/E601AxKpSt36WUZP0u4+zWLtw4fb3ktaTVPjuIJro7+Es52KNEa6Wij2a1xPOl8oHoFDZzojo3V
h2vW+hdIbjvWGi19QtNjcc6me5bLuyxL0+5oA6DyFYRBoaFmQ+5QWmtymiK8/12noZzNQhP2CQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x211F266047B8A60"
last-modified: Thu, 12 Nov 2026 00:47:16 GMT
content-md5: S1XMO7cp74PYpwCzAfoXhg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bcf83ae9-364b-4eb1-9d53-d5caacd6691b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-d225fb66-577f-1b89-1b1a-cc1bef18b0fe/test-blob-7fe3db59-cf30-55ac-2c72-779f1a8fbeea

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-d225fb66-577f-1b89-1b1a-cc1bef18b0fe/test-blob-3f8aa978-cccb-cc97-45fd-70a576eeab17
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-request-id: 5d40b701-dac4-409f-948a-c6e4fe5d2ad5
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:16 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-d225fb66-577f-1b89-1b1a-cc1bef18b0fe?restype=container

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
x-ms-request-id: 77d18f3d-9a56-4489-8a65-331822c12804
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

