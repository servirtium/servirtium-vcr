## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-20ee65ce-7228-1481-b77f-6bd95acb5579?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).StageBlockFromUriAsync_Lease_Fail
now: 2026-11-12T00:49:45.0047308+00:00

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
etag: "0x1D5D10760945110"
last-modified: Thu, 12 Nov 2026 00:49:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d1bf0ff6-827f-48d8-87f9-de8247f72f83
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-20ee65ce-7228-1481-b77f-6bd95acb5579/test-blob-dc847a91-34fd-13ae-b2fd-ca7c69f91f13

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
cg6wHog46OEt3ErF2XQ9IYFmue2DwyhdgdfMq66n3DNXhXAD1L55ln0N8kwouztCQklX9BJn9q7l
Up2xazwyhgAWbVMEOUzD7CNwdtHcNcWcimlkUOgh8I/BHYEhyCpB2mtMEU3oPQj9lAfu94DdCRzX
FeHTzTYY9X3DQxzKoiT5LptlkCN3s01gZ7zgMvkP4xRlSbNIbQ01NBzQJPrsMvHi9cjkeHn5X2GU
cmV6N8KEtF8IZVhxsMGOL1wHp49SdDXK/jwxKmuabOlStPunu/xZTHCa5MyYcUUHVkgd8bjRQf0w
rziGUorzbflvH/vF53NfrlsfuJBoMY32KdQifXoxgHP9dgzE0/nlp3bTKVJKQW/UvkJdsoltyH2r
jym10PB+PZ6Ix3Bnm9tiORAZlQg6rOhkTb431M7qkK2OGEPQMNaGVOuzwnn+bSNn+3h4UzN1cOJA
UYIxR2nPnjfC2YKXkQk6k0Ach+puZuCb0NlVcT16GKdgj95TVA2C4yRCO5Sgz2lvPb/yWen40uqi
lnaQeiz5SMDbNwIq5z8zmaPFKytM+wFw5jR9h7+9Z730sL2W8mn3SPLTxJhmRFWAv79GMqa/VZt1
H5P4fMEAHc9FNjaBnKc5zuM4eDZoCaLe/cgAdzUXNFsiIdLW/8wx06bIIQ4f/iIXDGTDh91lDBbx
GX/5/6aaLgHbXnrVY84WB6WPoOeTv/6l6WrQU61+vRW75eVNONQALvMNQ6CnQqmWrIA31WwvXVqB
UxU8ydpTXaFlGX7oyc7QjnHzhnte/afAOqctRuepjIeLzOS+w2UZueX+QigrreKxZ0b6O9ffI1Zu
e48yJhe5vI32Xf3qEssM2s2VX7t+lYzEfN6grlCwrKmOT0jV5pPORYWbNFDlxlR77mEJScOa8OYD
bqk4GA08RrFUXMKCNvM6xxo142A73raKJMDupmLl819h0njplix4Xu6fkWqR+Lhuz4KpZAyGx4/z
rvRNTqBObmhjIWN7UDDtvYRxnE1L+CsHgNbgO49S2gvo9ec4KhBOUSIBLtdU835Ru6eHFStCp7bI
Rc3JbTPZEEZYklpItZJ0IkoqSslUs4xXj3/oysXfpU4xb+VChePvKB2Q/GAjCAYUE/LgGF3sc5JA
cd6z8UWBeOwMF0WtMp1nOiKsw7csM4Z507fT/o3xRfxSARMEOzbXD4NzF/HAZuBUed06QLDbFD1X
Oh2OrXleG9FJWzCJYv/r1LMzuByVuW3WfoWwtgRLd+3WrQEZSWEJFfsfdguwyhbeT2z8p1wgwYCw
ty7zrmTN/uNDs7X90opSKaMgdkJiJrRv0meYT8+QteuAaZEyFmaXUngnbRdg4Xzhqn65AEs9TQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2315690680C5500"
last-modified: Thu, 12 Nov 2026 00:49:45 GMT
content-md5: jgkNQT9jxi05gNGfRAd9eA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a2c237ca-8d9d-4f17-83b5-104e72bf74a5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-20ee65ce-7228-1481-b77f-6bd95acb5579/test-blob-ca24893c-b93a-0e9d-f1ea-b7a551d7b5a0

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
cg6wHog46OEt3ErF2XQ9IYFmue2DwyhdgdfMq66n3DNXhXAD1L55ln0N8kwouztCQklX9BJn9q7l
Up2xazwyhgAWbVMEOUzD7CNwdtHcNcWcimlkUOgh8I/BHYEhyCpB2mtMEU3oPQj9lAfu94DdCRzX
FeHTzTYY9X3DQxzKoiT5LptlkCN3s01gZ7zgMvkP4xRlSbNIbQ01NBzQJPrsMvHi9cjkeHn5X2GU
cmV6N8KEtF8IZVhxsMGOL1wHp49SdDXK/jwxKmuabOlStPunu/xZTHCa5MyYcUUHVkgd8bjRQf0w
rziGUorzbflvH/vF53NfrlsfuJBoMY32KdQifXoxgHP9dgzE0/nlp3bTKVJKQW/UvkJdsoltyH2r
jym10PB+PZ6Ix3Bnm9tiORAZlQg6rOhkTb431M7qkK2OGEPQMNaGVOuzwnn+bSNn+3h4UzN1cOJA
UYIxR2nPnjfC2YKXkQk6k0Ach+puZuCb0NlVcT16GKdgj95TVA2C4yRCO5Sgz2lvPb/yWen40uqi
lnaQeiz5SMDbNwIq5z8zmaPFKytM+wFw5jR9h7+9Z730sL2W8mn3SPLTxJhmRFWAv79GMqa/VZt1
H5P4fMEAHc9FNjaBnKc5zuM4eDZoCaLe/cgAdzUXNFsiIdLW/8wx06bIIQ4f/iIXDGTDh91lDBbx
GX/5/6aaLgHbXnrVY84WB6WPoOeTv/6l6WrQU61+vRW75eVNONQALvMNQ6CnQqmWrIA31WwvXVqB
UxU8ydpTXaFlGX7oyc7QjnHzhnte/afAOqctRuepjIeLzOS+w2UZueX+QigrreKxZ0b6O9ffI1Zu
e48yJhe5vI32Xf3qEssM2s2VX7t+lYzEfN6grlCwrKmOT0jV5pPORYWbNFDlxlR77mEJScOa8OYD
bqk4GA08RrFUXMKCNvM6xxo142A73raKJMDupmLl819h0njplix4Xu6fkWqR+Lhuz4KpZAyGx4/z
rvRNTqBObmhjIWN7UDDtvYRxnE1L+CsHgNbgO49S2gvo9ec4KhBOUSIBLtdU835Ru6eHFStCp7bI
Rc3JbTPZEEZYklpItZJ0IkoqSslUs4xXj3/oysXfpU4xb+VChePvKB2Q/GAjCAYUE/LgGF3sc5JA
cd6z8UWBeOwMF0WtMp1nOiKsw7csM4Z507fT/o3xRfxSARMEOzbXD4NzF/HAZuBUed06QLDbFD1X
Oh2OrXleG9FJWzCJYv/r1LMzuByVuW3WfoWwtgRLd+3WrQEZSWEJFfsfdguwyhbeT2z8p1wgwYCw
ty7zrmTN/uNDs7X90opSKaMgdkJiJrRv0meYT8+QteuAaZEyFmaXUngnbRdg4Xzhqn65AEs9TQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2360E45A7FD2EE0"
last-modified: Thu, 12 Nov 2026 00:49:45 GMT
content-md5: jgkNQT9jxi05gNGfRAd9eA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 02cbdb6b-87f7-493e-ada1-e3a0dd9c28b3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-20ee65ce-7228-1481-b77f-6bd95acb5579/test-blob-ca24893c-b93a-0e9d-f1ea-b7a551d7b5a0?comp=block&blockid=dGVzdC1ibG9jay1iODAwMWI0Mi04YTkxLTFkOTktYzkxNC1iYTE5OTY2NDEzZTc%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-20ee65ce-7228-1481-b77f-6bd95acb5579/test-blob-dc847a91-34fd-13ae-b2fd-ca7c69f91f13?sv=2027-03-07&se=2026-11-12T01%3A49%3A45Z&sr=b&sp=r&sig=j02nocq8C1QJ2K07LxTx4%2FukhOeThx59Y03rV%2Fa1HIQ%3D
x-ms-lease-id: 83ec02d0-192a-3780-fead-ffe21184dc02
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: 4879b1fc-249c-46f2-8b94-e66abaafd22a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:45 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseNotPresentWithBlobOperation</Code>
  <Message>A lease ID was specified, but the lease for the blob has expired.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-20ee65ce-7228-1481-b77f-6bd95acb5579?restype=container

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
x-ms-request-id: 431f61c4-bdd7-4812-b709-3debac8717c6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

