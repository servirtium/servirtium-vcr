## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5c25cc1f-34cd-b1e6-88b1-2403d70765da?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_Uncommited
now: 2026-11-12T00:43:54.0429614+00:00

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
etag: "0x1D8026D1B98E010"
last-modified: Thu, 12 Nov 2026 00:43:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dbfbd526-2e22-4d67-9319-395269193bbf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5c25cc1f-34cd-b1e6-88b1-2403d70765da/test-blob-a4d9f931-fd33-f03d-cdd8-e7093d517b61?comp=block&blockid=dGVzdC1ibG9jay04MjJmMjFmOS03YzNjLWFlZjYtOTkzOS01NGI4MTU0ZTU5YmY%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
U5iP2ua9O/Psen8FMi9FWsL5yGlxL28hjjWO9E3cczY1w7A/eIv0dL7luLl+OL2ek41HRIkS7yMp
bUuwLkamEAZIz25/BuI3BVSqi3e2olZ48GG/lS+tItOMFQo/Q0V3P6iyNWhOH4yqDz40Z2Sscsr1
OD7k5nrWm62b8vHY+MEOM0vPA23tKdHVFYbxeLpv4KI/SQoHklkt25q7syyb0hZ8JjQY3G9dBw9t
D9D05SLyKxJOmK+2B6DyoifTMnWkOkJvdFKGVwMz4kH7mYOIOPZ3yYcZTTpnxR6TJTpHitWZyNWO
hXHQa9QOGrZtu20daWkxW2jti+0IB64z8jHI7FhrYdGu+rOEp12zCjKE+gqwdrzRFS5srD3nhX3D
nHmjRi1dAVmcb2+2rbQLOoC6hA2jgnx199cp/7WTxnQ1wQrjD8QEJvixFAZMGmh5YXK9LAFwHxn9
Lk5WMwKkCKj6geupJyq7tV0U8m51KNxvsJ5C1plyxKHx5uF2rvL2DAtdUZl80DlIAnekWyyqhwVy
54NkYTIPiLxJt0BIRQdrHuVjF9dC8t9k+tMizml0Rl/cBMZukqvYTsncMhj4/71vOTxHR3AuL/Sk
/2Ze7bpT1XHhbEFA/Iw6iskNZsDHbPsWspUsLf/vrtTRypJFemEPiV2nF5N8LjywDb2mIMk03JNr
RzokJ6dy8r5sbjL59RBn/txiIFRnmoNYeyBBSI0Lne3/2jIn6mG1NCTVD8AKtxitPiHs0bw+A622
zKyHMKowYNFE+RrdQBR7reswkorDTsQIlAlrH8sxwdaFcB21LgR6pK/uxb39z/0NcCTRDXEi8n7n
f5ygxEAGEzdEWND2xn/mte3b1YgGC8QLXq+nYLNlYn6fza9n2t9v6LKFuHYtFqql6liDRx314XPY
lWaRXrOE3vZRVvjPf9sNa+zWgVJN3UcEAnVb4Rthquw7j0V53Yn+AdqA28Cy1Wt8dtswHl8hircf
jVw9KPzb8KwMlO+WlI5j2H94zQGGUiwK3ms/MIuMGQWNWVAswNjdpesUpUB75uFNzEbfqb21mDov
MkqRm78gf3vqCDs9NhenmicWcqzsj/iJ8mRFrG9I2MAV/Y2OTAkr8ybFkd2mD5YvOA+VniaOQ6NR
B6lb29ILoTB7KDmJGE4e63+FJv0a4uLNFXRgsjmZh7nqPERgzxhUue+sK+ddph/AdrOnCBymNyTG
jsVequ734aF/ntsJvRxmMWwObrb7cG9UnzyF8n6cRAUfmkBT9g8AtUpG3QdEtrmXQNevl8huyh5V
CQqyce4j41rW6iPbEztdDblstZJoEOmD7rGm7Kw8sc8i/ewETUNcI/qsbcyVuy2cUooPARWL7Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a68a8e15-6b0e-4c69-adbb-2e219dd864dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:54 GMT
x-ms-content-crc64: HHAcZaJPsDs=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-5c25cc1f-34cd-b1e6-88b1-2403d70765da?restype=container&comp=list&include=Uncommittedblobs

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 69ead6dc-547d-46dc-b0e1-acccaa9102ed
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:54 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-5c25cc1f-34cd-b1e6-88b1-2403d70765da"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-a4d9f931-fd33-f03d-cdd8-e7093d517b61</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:54 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:54 GMT</Last-Modified><Etag>0x1F953744D405080</Etag><Content-Length>0</Content-Length><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-5c25cc1f-34cd-b1e6-88b1-2403d70765da?restype=container

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
x-ms-request-id: 8141e1ac-de0b-48cc-9098-c439c2e001b8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

