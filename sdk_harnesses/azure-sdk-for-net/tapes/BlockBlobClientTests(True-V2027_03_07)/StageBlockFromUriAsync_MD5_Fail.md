## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a4f0c435-96fc-a3b3-a023-acb7d5594dc6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).StageBlockFromUriAsync_MD5_Fail
now: 2026-11-12T00:50:07.4920219+00:00

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
etag: "0x1FB0F6540DE5050"
last-modified: Thu, 12 Nov 2026 00:50:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3d380bbb-f19e-4ee7-919d-6ecd4a07dd29
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a4f0c435-96fc-a3b3-a023-acb7d5594dc6/test-blob-34a01311-c56a-dc2e-5380-9dc1e4cbf2ab

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
bAJXbPK1BPh6DzmYmbIyLKMbrrPBb9qobRc3IKY7knKLFE3pDDMwf8D3Ku1dGwnu8IAUuqqaBfwn
r//bfeNSPnzGDIRkSR9w6y7zyUXsS1INSDAmJ9jI8Q9QwV00VALdpetxlg6EiadgpM57pju3OmSs
zjSzKxek/ht1FIfCPJYsFiRZe7REiL+IxYMJTErTmYb5h4bNKXnUzJjyD3Ugnmg4T5AXXb+vaEZ1
KmWTmrHRonsAyLQQXuyqhK8bUXlKaCcb0P25uzvHSR5AWP8TQTHnIGz5H9WzKPCkbdkQlBbNK8E+
eMm0GOY/OH+V0AbslkN9NDEMUEhRZ6gMFE5ht7QIci091chnMgiGuudWHVfquNeVkmDlwNp47RAh
pwSY3oDKjV3Yr8F6FQEohpZh+kpQIlx3yyRUI7JSxOe3RooE7dtmjJD6EQgVG31evDpEF/LG0IWn
IRJcdWqrherZws52JJi6+266VhBTYbCn9mZ3Da318XYFXMzJChYmT4sePFiu55ehihyDDHl1VL9h
tH4DM3g85NFYccjM8PBXkweENCVY+A/P1YORceT8kAcMaFWYIhsT4VeHVnXP1ZkrK3hy8B+aCbxv
NF70q3LsW+HAv4ibv3HrcFPN0KGZAP/pZUVsip/ocl6ZKO69HzXlm/uUDhYRkGsHhn/MzTga1TNe
C0Ysf9FB2EwpAZaCLlEd5zWmBPHp19XZZQMfHKUlf1K6XxPvuBsqUzbK547VhFguruUDc9FCdTNx
UhrNIbumBIJDyM89LS8afLC7HvBGBOGr8W3AIguBeOrgfmYBXDJ6I+MMkbuJ8IG26fYgh1ZDKk05
Ii9O5uF3wlDkXa7IGSB+QPsMOXMlIQHsCjkUYPCTnFMYxzoCLDwBlc5rpJPS7dDWokZaNvDaEwAu
YtyoYmFfUMBbsFHlexS+CqSkuX1uGh1oPr6qOWZiPbQ51MlgWDJtDFPSdjx+8ScxmyxMNVqDwEi+
PySjtRda+HKdrKZKXrFxN60pm6Ph6U2XeJ05FghZthSBoRgOyVc8eH7J4USA5z162v6sWiSl3VbX
DDx5IOFqQ/aSybyYY21W7SMkFwgIF5FgvzwJrVvv3MTCN70awlecXp5O7R2A4XaRVm0AgMZOz/Wr
GGCkYZWaouz41SuwOyrLh7hpuSlz4N7FeFfu7lv+dGjIb6n29/0JtEowiAtK4RpCNfgN5BXLNziC
3+g+q7OR+mHD58yB1Y+7YATeQlfSe5c9rLli8JBS/DdwcxgUygiWn46qh/lNwWBpUYQQ7fXhsGNR
Af/6LgnQcOuVEGF2ppX7R6LJJ/Oe7+tZ+Z4LQg9Bj8O1wskJnHGF2RYNuLH+8qvvFKVSF4hwsw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22F7A02C5E9B160"
last-modified: Thu, 12 Nov 2026 00:50:07 GMT
content-md5: tVO9C0Wvjh1V/comjTH6sw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e86be99c-1228-46c1-84be-af8f09c2414d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-a4f0c435-96fc-a3b3-a023-acb7d5594dc6/test-blob-dc4e4431-3790-5a3a-07f3-1b2d69ee773b?comp=block&blockid=dGVzdC1ibG9jay1mNWI3MGY0NC0zY2ZjLTE0MWEtZTgzMS02NDMwNjAzMGM3MjM%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-a4f0c435-96fc-a3b3-a023-acb7d5594dc6/test-blob-34a01311-c56a-dc2e-5380-9dc1e4cbf2ab?sv=2027-03-07&se=2026-11-12T01%3A50%3A07Z&sr=b&sp=r&sig=3uHahcYcDCq%2FGg7ygN15XjELUgbNMuTuun2NkVCqImk%3D
x-ms-return-client-request-id: true
x-ms-source-content-md5: yOjfiVwsrhZrrQJ/3xUzWw==
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: Md5Mismatch
x-ms-request-id: 1d0c06b6-71fe-4f78-baaf-4906dfd644ad
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:07 GMT
```
### Response body recorded for playback (400: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>Md5Mismatch</Code>
  <Message>The MD5 value specified in the request did not match with the MD5 value calculated by the server.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
  <UserSpecifiedMd5>yOjfiVwsrhZrrQJ/3xUzWw==</UserSpecifiedMd5>
  <ServerCalculatedMd5>tVO9C0Wvjh1V/comjTH6sw==</ServerCalculatedMd5>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a4f0c435-96fc-a3b3-a023-acb7d5594dc6?restype=container

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
x-ms-request-id: d0298b1f-f275-455d-8724-53b14644aa24
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

