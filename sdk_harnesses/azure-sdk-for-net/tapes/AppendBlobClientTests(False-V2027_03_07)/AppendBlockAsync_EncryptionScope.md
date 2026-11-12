## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-86f5435d-22ec-0071-562e-b90bbf4b9652?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).AppendBlockAsync_EncryptionScope
now: 2026-11-12T00:50:29.7374656+00:00

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
etag: "0x21DB585E50ADD60"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0054fb8c-bd49-425b-9673-8b99cad52964
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-86f5435d-22ec-0071-562e-b90bbf4b9652/test-blob-bc471231-8659-6dcb-2615-6caabd5fd261

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20CA48EBFB41C80"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1c364ddc-f82d-4b65-9dfa-dd36fcba101d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-86f5435d-22ec-0071-562e-b90bbf4b9652/test-blob-bc471231-8659-6dcb-2615-6caabd5fd261?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
BDgpEfTx8flS9xIqmgyMq7LE4M+uuWjWd4hf17XHQvdbVwaHIYVePyFNamFzoNIaiMH3+X8DskvQ
UplskhlDirUbz0IFBYktZaCuYU4GY9a1RE/0z0l3WKW7t87r8q0HCt+sWNGQFII3yZPeVVH8yu/D
tk3KT7pso3ecSk66QnPzp1ZvWQoFJDDMvAW1mQNTvu3fKDtgPLskQLRa88o0fYcf6636jXDlvZId
/ZK0tgp0SIxh2xo4kmqbShlVqzBlmD9+la1VWTB8+mqoQj4ob4mq5ao906Fs51lDX0NWjxJht2VT
NiBdHu9b5OGwj08rc9qPq8WFJ8SdEa5UEfrtJmpXR4vZ1DlpTca74u+/vFcJF+tox+NN24+htiRy
CQ31br12WEjEUp6gJl7+ykXU3VVWS/oOhF6GCWv7Nx4U9kS5xXMxSGMPRMVNyKGFTxFKzNjPHL0S
5+pf8E/cyBqAiy8aRATSo5TxRgY0wLy9AbpasWtGRdmGpt6J0lgUMnuqzTxxawsMeChD3tW33iYu
oe+UghevOUZWk50mSNE83BSKivN/TJWvTTlCAmcEzsi3WzBpf69k+5P1G9dt5S9XBwHBLFMzrlVZ
5TXebDffUcXUb+2g011kJo5gijC9QWcJ6vtmQqJ0hKzaD5p6ho9cFskSmXZBtjOkXAXF0yMkm6TN
1IE7eA4iX+pAxsPC6qD/A3Nnq6fwxzTHwuacr7GItXP1rLINIZ268DmLAfBw4XJlxs+wvfD83QxN
c7YohbA5txBQzT7u8eLWrLttZMZDV+FzN+jh2PiD+M6lwK3mkWqJUkngIBMzd9Xs2RA1jnhFChvV
tE7HV94XzdRvSDE07xtR5BJ8YzfNQMAT9P/oTWpWYLaSEdwbwvpryFM/wy6kuOr046plyKbjCHSO
tGLfL39qGeh6ot4+NSIXEZrkjXyRbzwU82m/8JcPrghojA2Xi5nT1apGKRULtq6ITrYM/3r3/UQm
yzsVqihQa/TV1qgUgIYBELjSSkYmCD27N6LgA66NcI/JccBdviuB9r0hNuAFc80wCu7CJbL+/8L+
WXKGb2hFSGUZSw7Go1KNUFSIBNJdtsTUsPjAy0rdynH9X2W4+4ZV3O566yi/amacNdVddvrvoaKu
sb9vhHwbO4CdyETt1FTOMijk4sqbFUaRJJZ0f1N2Dr3CCknG5VhxXrCnIaEir2CBjkPSC77XEpx5
3mDmprstJrqGKsoKCE3PcoMa9POkb3U18/EQpAL/6vesTAf3i7j0evvnm4SVdob1Apg6vB6p1W7r
sLLKHIK3h0DTXrtG2OfLJnr3vNTwoH1qGqFqxC3ZA3aYC9oGKV15MBNEwhjKryqwb5ajsRma+g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DC893322A9F2A0"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-content-crc64: naO67K1P/qQ=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ec9fce1d-d3af-4f8e-aad4-003cf23fe30a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-86f5435d-22ec-0071-562e-b90bbf4b9652?restype=container

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
x-ms-request-id: 04cb8bd7-575b-45ca-a953-33f96fe17461
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

