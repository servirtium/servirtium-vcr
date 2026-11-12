## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d6000a2c-cd99-f3e3-0a6f-944989bfada1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_DoesNotOverwrite_Path
now: 2026-11-12T00:48:57.1164000+00:00

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
etag: "0x1E8C6B4BDDE6B10"
last-modified: Thu, 12 Nov 2026 00:48:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 95d3602d-9737-40df-8bd8-401a28b31b6e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d6000a2c-cd99-f3e3-0a6f-944989bfada1/test-blob-4d1a8715-a743-4cd3-411a-eb14821683ca

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
WfMEMwvtp1MhzxiRrFP3toaI4BQ3jYaFNrOVf+HOcfPsyvCVu3mWJ+DGLHSPQZ/tIjSO+jZuk8xt
fv1XWCdxUl4kpeJjYfsM8bgzcGER9vQTp1ysQHa9fjcjJzx7P8+5VNkVapy8isA5gQh9OiJrW4gJ
Q7HKxRLnZierPzq/kLLpehyH+4tXVxybc75uQEMUuMuzcvse7o/HLgN1EEuGefFWlMAG41/9suyU
L1FTeSbjl4ZuCx63yoyMwM2H4UbRFPnNF6yDDtVstcAOir89c7XdkXnEGG7Sn8k0eSOSdtCmwhpY
hmF6YIixAVZeqEDNT00Xqk/MDPyL+njiT5Sy2T/vZ8ek5exUYjHxExYXdPaIZirWesyA2rUezIzo
lxHz/ygWbkF5KGlgw0ce2/nlc4WCWuhq3F5zb40Rhhhga8sg/RTuAQa1Dz7AdbeEYv+7OFkGZj0o
iSPJo/+zZ6JQAFd8/d7l9nJ/zEqpqWam7g2OVU2/WQWN93PxJF0HAaibcHVgCGQg1kLmh5nyf9+8
IrTyJRFVkadR7gZq9NEUeMuiDTnxReWobX8L2dFsmniUNAKpFdyXRt/ODxpdtuJw0g/OUHGmyt3O
SbiRSrfV5VOO1r/Pa2PvC8dZIzbLSracmgbCnUoH7Wkl2sskBfwn+CnGz+AjoGas3kWqTKemA/4B
9K+xE0cJh+hVqpCXywXKMioMBHrVefqfFb8FXaHCftfNIhBNduXivUj4zfXWFRM/3xl8mv+DK3u1
Ef2IBClHkyy5yqj1fbxFKUYy3asEyQCrxX2HReTXSfeUmGXoWrkesDrJHEpqSWJdN3C4UU3PsEf8
3D6swE1I4YCxYORXXc+MEyxxOqy1QHsbKQ5zH/epxecd6317cvDtgTvKuel9BdqgKz4hXnaaRpvC
kZY/1MKJCJv9OnFSEaA8hLhx64eSnSMz0/O5iGdxgqThueFara14QLFOgMtoThqd5Nq9KFsUL/Ny
CwDOz38zi7fMcFi/4tYL+arVRBxXy4XZHKONs1lJzInt56KsqnExGvQUm93C3QIDsi+wP+vXG0B7
9bPcptddg6TO0vszXk85pConQi+oFj6giQEqmI2eFstiMbS9VXMdtxg58wsHz1Pgd5vAr9gQ0951
Ox3VM+oWMLwv0SyafE62CosWbyIzmLmuSSHy3WfzUV7VRxlWR4QtIsNP2P4mRvtMCaRM+WS7QqNj
J+nIJFJVO3/OxDQ1YMMH6Exf48C7hwMmptPCplj6GgV28x+aZf5x+px+WIHGFqngRRAXXF7ip6Dl
on1+kpQn1Kouv22kbINO7ukjPS+CX48q4WFH4r2nk0t/tMOA8mcHV4TXmFc7PNiNyW50v2pwYw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DFBFBD9159F120"
last-modified: Thu, 12 Nov 2026 00:48:57 GMT
content-md5: YCt9HZJvmvq+Cwj77ZPfuQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 17ceaea0-7c9c-47f4-95c3-aa3ab152763e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d6000a2c-cd99-f3e3-0a6f-944989bfada1/test-blob-4d1a8715-a743-4cd3-411a-eb14821683ca

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
WfMEMwvtp1MhzxiRrFP3toaI4BQ3jYaFNrOVf+HOcfPsyvCVu3mWJ+DGLHSPQZ/tIjSO+jZuk8xt
fv1XWCdxUl4kpeJjYfsM8bgzcGER9vQTp1ysQHa9fjcjJzx7P8+5VNkVapy8isA5gQh9OiJrW4gJ
Q7HKxRLnZierPzq/kLLpehyH+4tXVxybc75uQEMUuMuzcvse7o/HLgN1EEuGefFWlMAG41/9suyU
L1FTeSbjl4ZuCx63yoyMwM2H4UbRFPnNF6yDDtVstcAOir89c7XdkXnEGG7Sn8k0eSOSdtCmwhpY
hmF6YIixAVZeqEDNT00Xqk/MDPyL+njiT5Sy2T/vZ8ek5exUYjHxExYXdPaIZirWesyA2rUezIzo
lxHz/ygWbkF5KGlgw0ce2/nlc4WCWuhq3F5zb40Rhhhga8sg/RTuAQa1Dz7AdbeEYv+7OFkGZj0o
iSPJo/+zZ6JQAFd8/d7l9nJ/zEqpqWam7g2OVU2/WQWN93PxJF0HAaibcHVgCGQg1kLmh5nyf9+8
IrTyJRFVkadR7gZq9NEUeMuiDTnxReWobX8L2dFsmniUNAKpFdyXRt/ODxpdtuJw0g/OUHGmyt3O
SbiRSrfV5VOO1r/Pa2PvC8dZIzbLSracmgbCnUoH7Wkl2sskBfwn+CnGz+AjoGas3kWqTKemA/4B
9K+xE0cJh+hVqpCXywXKMioMBHrVefqfFb8FXaHCftfNIhBNduXivUj4zfXWFRM/3xl8mv+DK3u1
Ef2IBClHkyy5yqj1fbxFKUYy3asEyQCrxX2HReTXSfeUmGXoWrkesDrJHEpqSWJdN3C4UU3PsEf8
3D6swE1I4YCxYORXXc+MEyxxOqy1QHsbKQ5zH/epxecd6317cvDtgTvKuel9BdqgKz4hXnaaRpvC
kZY/1MKJCJv9OnFSEaA8hLhx64eSnSMz0/O5iGdxgqThueFara14QLFOgMtoThqd5Nq9KFsUL/Ny
CwDOz38zi7fMcFi/4tYL+arVRBxXy4XZHKONs1lJzInt56KsqnExGvQUm93C3QIDsi+wP+vXG0B7
9bPcptddg6TO0vszXk85pConQi+oFj6giQEqmI2eFstiMbS9VXMdtxg58wsHz1Pgd5vAr9gQ0951
Ox3VM+oWMLwv0SyafE62CosWbyIzmLmuSSHy3WfzUV7VRxlWR4QtIsNP2P4mRvtMCaRM+WS7QqNj
J+nIJFJVO3/OxDQ1YMMH6Exf48C7hwMmptPCplj6GgV28x+aZf5x+px+WIHGFqngRRAXXF7ip6Dl
on1+kpQn1Kouv22kbINO7ukjPS+CX48q4WFH4r2nk0t/tMOA8mcHV4TXmFc7PNiNyW50v2pwYw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobAlreadyExists
x-ms-request-id: 210a7dc5-9dc4-4ce8-9cf0-124bc51dee51
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:57 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-d6000a2c-cd99-f3e3-0a6f-944989bfada1?restype=container

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
x-ms-request-id: 549ed82d-0327-4e41-b17f-4bfa0421996a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

