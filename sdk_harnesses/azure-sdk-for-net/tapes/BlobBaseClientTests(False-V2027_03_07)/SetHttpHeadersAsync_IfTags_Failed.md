## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c7b0c58a-cca5-fbce-999b-b267c07f77ac?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetHttpHeadersAsync_IfTags_Failed
now: 2026-11-12T00:47:07.6503615+00:00

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
etag: "0x215CDC7D96DF300"
last-modified: Thu, 12 Nov 2026 00:47:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5bfc0529-b052-407d-8ff5-dc2b7972a0c3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c7b0c58a-cca5-fbce-999b-b267c07f77ac/test-blob-639c112b-71cd-cd24-7902-e809710c5133

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
t2kygtnNP2KmGRIFF4nqzBArEzNCx1EYoOJOo+TEio1Kfq9XTfTTXdI5vbNfH7bvFxv5Rvgd8O8X
GuL2f5x+4o+Eu5jak38cV7VhCQqeuYEsX4vIy0SVLI2/PzMS3d42u9oj2mQeFISc3O5CvOfleGBg
ySAQtRdK744KG1NMCXrXK00wet8dDkoHLO5WUm+l2sbSshO+JQbC2erVE/kwT9J0a5GatP6BQ7vV
CYgp9J0eZEGNeldmGAVHbqH0R/tR1twb4ubeCyXIUG5Y6Bx9mOVNtq64o9V7DVOMUkZdjfvAhDOs
DhK2QFkbxSnpDjDpytW8p5BMmDIGoNSTUrnfa8NzmGPo0IrTl3ZVnN6skv4ioohxoeVqc+sApW49
Iu2gPFlmdXbMAPlK6BAa9/xUWg3Wca8wbsndCCR36CsclXSJtGCERhyIVaKOJrjVUHvvrEpgZrE9
b82QiG1RVRfNLlKbkEKbzxTxThsNokcRCLephzzgvC/DS0WS9L2uNgCKwPhlOb84U9w2bhiVMM2F
fn+1qM3b7HIj2EX9CNtWQhgaguFPrM/3cDNfqk0WLRp4DHU++I0zr9OGQWB6O0sB3ysAe67rNtKw
vjiZfEIkDasrhPtlGEqK59MNyWtufTToXsshFbJrjNajjTpUmTORYTO1TrZPnMbhdZPb3m1nQkAE
sB13Avf4v/glwYsPNk2fe2c3uC99mcIEQKAej65pPEr6UOkVGl48vI6+Kto70j5GO2IFL4kQhhdb
c8JX2jBKu4RAFOZkimEI+vugv2/nyG5h2FRLYwzB6cnSuqec5eJedG5V+71Y4rEB/TWOcMeoc6pU
9QHb/lh3fysckdC5bBUZQUoAkc2wCPaiSWbXM3kCKkb8R+/ggnUW3nyRPFDgR5AfdC58p+Hdo+wL
ObXxn0uyGmeJvSQlOL/V6rNQH8ymwQLVuL5LhYJkH6MD1UnAJD4w3yHoV4ps+Txvp70ujIQfZXey
HOeNZ5XkJZ2BImJ1FMV1ID+rvWp3ab6B293FNpIf43DSDQdWoniMBDHs69fZ+ZL3uGxEdKgMO7Mo
DIu3H+4KYT7yowe9Hn3GHrg5i37np+JKzn0m2m/IxtJULZbt1OVD4YmY51aLOZnufVXv0680QWSo
bVBw5IfPKdw1afDm2UrT9an0T8CLv5XkN1wa2fIiH+wyRGeU0v0CyL55VtCpB6QLG90GQPGkHa67
jKwqtVDqEkkEtJXiPyOr8oYBEWjEOzC4Dr0VG9/6jie52EVQ1xNtj0OGpFMPKNy5W01rogtF9lF8
cqaS1PdpCSZuKWbdWhpzlIIlPpbcqebgW8CSj+sbdOH01GVs2rtMHJssof523AAy9w2JH7i7nw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x239DFD997692420"
last-modified: Thu, 12 Nov 2026 00:47:07 GMT
content-md5: 45KpJxsWwwqjjjD8vSHh0Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c2e32d1e-a8b1-4a5d-91ef-d7c844f7e370
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c7b0c58a-cca5-fbce-999b-b267c07f77ac/test-blob-639c112b-71cd-cd24-7902-e809710c5133?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-blob-content-encoding: deflate, gzip
x-ms-blob-content-language: de-DE, en-CA
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
x-ms-request-id: af9af449-cb1d-43d4-ba87-d4c5390aacd9
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:07 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-c7b0c58a-cca5-fbce-999b-b267c07f77ac?restype=container

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
x-ms-request-id: bec16b74-8011-4497-a75e-e587ab906aab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

