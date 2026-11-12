## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1bf27ecc-8372-1e1b-ca7c-ff039790b8e1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SyncCopyFromUriAsync_EncryptionScope
now: 2026-11-12T00:48:35.2824113+00:00

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
etag: "0x2132A1FAA69B580"
last-modified: Thu, 12 Nov 2026 00:48:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5e9c5d4b-0bac-42b0-aed7-280037e1af2d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1bf27ecc-8372-1e1b-ca7c-ff039790b8e1/test-blob-6229bfe4-107f-b603-fc3a-77fceccab7fe

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
UbpKYY50gbx6Ox84DB8y/8QAnNA8TqTOyxTaz0MAMjBAfKsygFZw8kWX7wD3ughpfsw+gi8ovQIV
fJV5mrF4eQjv+I90/39ukKmLpV6j1hEMcFF3wq8AF7+oHQPA9leTHnb4B8J59X5N0PKFnRikcaWE
bSlgAbdZ7uDQy+F7rZlR+Ifoq85OknvSKvK9enqnBKxePIktMx2+nhniqSmd0SJYNKWQu8XWNdqu
jdbFm3RmKcc0HXEPI8VpKQ21bOlSNVnPZEbVFkjnhwavf6VG+QKle4BhaLOxSBDfJ5K4IcnxW1h9
9TctkBJ/TZZqYKQfIzAKEPBp8c2lHhs29e62L2Y9viRNyAPLd+pt4RodRuhswANhrhDYh2qL2Ncb
9psjyR4wLaJ/0losPpgF+w+yiNczyjXrVIBVZDa5wvAsr4BPSRf77BlF7O2oNW9304ta2E8A6Cxm
OHWd2shsxhBq/48XtrL3tpu97t1HQh4R3ZGqX+mgLMdU6BCiXhJR2SbcPjXfYBzZYiGzQvpOH/ZX
i/w2wWcmydPIw82iVViJbBW3agToMX100fzI7OnNBckaS9IVGhe/tnRhF5xONw3JKtbklrTyblp/
wvBqXt3q+74EhwqGc1H9+LSPhhrhJpnu/sIS6G4UJ914llgmVFeXdxzdSq8DQ7aF557/YudAnZtX
fF8b2BJP718sDt3516Rc+A/9A9vq67sLjQHQFcX1N/i8z9j3e58JjlpP1jTZiw/5omnXQprAbJCk
EEoRf9qaN9blPQjMZXxw83WBmhSGMQHx1nJcHfVd/GJHU2tU+A6AtZ9e804HLT3sZ08lPtJ7Hd5I
IKhoPhngh0ClhBERG/tmAeV1Jz2z6ak0b7amOL2PyzaNC9hmF3eFfmwNYags20tTvj3tBfWglTb+
NM5jOk+DFbjbgxAjAOlu8KnRpogACJNqUnmAosVB7XWhZ+OoIkMcikvvUFg7ML5UfxVLzu+u/Ss7
+OjVA3PymZWagZgFxs1mtRs8Ebc7LyG7KyOw9R+G82m3bSlbR4bY/LfCoK8lTrhI5RnTcux0/8nG
GddPQqR2E40uTlmjC22VYxQAeY5ylt1qZxAFs4F9Q21glC2vibkSS4wh9v9fpNmrPg7XdIY6VIP5
5dqTcGALsQrrQ3Y/5dpa7S0CUJ/dCsM2WnVzpc7nJkCptqPff9ssFUT0dGFja1g0fYZYNwPkG9oX
XBbrmAw8Axw2lS82e21S1jpa6JZh0+4cPidIj+48xZrJxyPEQX04uHBELdUp/QIZBmHJijJEtYkn
zlnk9HQu+dCVbbNKjZW9IS8lHaUY80ElLoiMcztnhRKZnHIjVMT7FjMFlJBOznjMDGgCHpjjDw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C7A844AB270430"
last-modified: Thu, 12 Nov 2026 00:48:35 GMT
content-md5: 8TFRwksi1gikk5j/gUmWmg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ac1ae53b-159c-4201-bddf-933efd4a513f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-1bf27ecc-8372-1e1b-ca7c-ff039790b8e1/test-blob-6a53c667-163c-14f3-88b0-cc0283ccf9fa

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-1bf27ecc-8372-1e1b-ca7c-ff039790b8e1/test-blob-6229bfe4-107f-b603-fc3a-77fceccab7fe?sv=2027-03-07&se=2026-11-12T01%3A48%3A35Z&sr=b&sp=r&sig=tar4zgOxRhcnuSAMLtrXymLdIymm9zXUrngPyh7ybOY%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2329811E83E0FE0"
last-modified: Thu, 12 Nov 2026 00:48:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8db6a176-6996-4ab6-bed1-52c88c41875a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:35 GMT
x-ms-copy-id: f455b5ec-bc79-40cb-afba-0db7babf97ff
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-1bf27ecc-8372-1e1b-ca7c-ff039790b8e1?restype=container

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
x-ms-request-id: 006a1e4a-4c8b-4453-a013-72d1d985b7d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

