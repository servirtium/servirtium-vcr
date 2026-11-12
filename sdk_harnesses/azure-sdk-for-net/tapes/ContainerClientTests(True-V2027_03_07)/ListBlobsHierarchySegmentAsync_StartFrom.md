## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-589952c8-4206-137a-3e69-f46f7bf3dcaf?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_StartFrom
now: 2026-11-12T00:45:01.3399607+00:00

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
etag: "0x279A0372DDD70C0"
last-modified: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3dbc9538-284f-456c-a4dd-09efedb3c56f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-589952c8-4206-137a-3e69-f46f7bf3dcaf/foo

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
YDaEn9KAIncFkYH/3r5olgTWBVPrCkE/XnJnW3ImrEPCGs1lgnLKRzAiU3TBejSAAF5qpO6Jw1b1
REBgGccF3+U+PMTwAxOSDL0jybfMfuM951oTuwdUOVZ3bz4yai5oHXOPgz5wj/1L2JgwZfqeKcVc
IjFs8SPd6QNueZPUYKKOuqtDPfulzFddyONuJNRb2EZ51Uf8/CxPsZk7AhVqdnj2oqpPW+zKtlXa
DihAb8UuEqFMW4pakb5+84thaspB81Jrd4IqC31arx7xIu0ED0LUDO90HRvtnBDr0WdgaEyLmBvW
1fdDBAck8qtraG/QeuRJjF7azdY3fdtxPjoV+kbSZonSLTpKkQfoTypvgjOhG1eDFtvusctFn1gb
0cbNDvhlmQHl/Uyp//tW8n2rx/uo0CLjkuNr47W+jY7iL79AGkEyCugxux4K2Rfgl75NmdddcwGk
6nsU+rVMJnC9x887Fdc8eb0SdhQE2LnMi0z2cfS3hbu+nDDFHRAy5ZWuTRFHpIHmEB8ZSv3snxLC
SG5pVbR7BUIUfXmnd1yt35F+VounhObKD2HUnTq+0fwdA9ShyY/hMkfPMycIP5jDa2tsbUmHGsSI
nkZSp2gIVat8iXSHDBYBnSRD2FG/wtDIEDHPUmOzlukQGSpJjorfx918jLUkPF9UatAlQ0FyyNx1
ipY2OANHyfKKdvPruA+ZZBFzQzUapNTSeueTjVOnnVBN0wT0qI7aNcPCmcVrabLBjN4v/4WmWuXC
Y74bszuf49ijneQKpLuDmQ5yWAoOZhE10gF1d57Kp3keMkXQvoGHI7bsyMvNtucirGZ3MwLbs/ys
5uE6Kms62PZr7HJ2stqM6zRTIp5FZxwZUss4U3N2Qn9II9igTfhLsu/VYsl0rPmL6kjNiJBeZ37E
INigAoWD9KnzLo8C7J08CHCucAVSpaXRrGgqqbru6bxa2y0gqq9qUm4fgX5qif6qkX8gsPd5cnsy
zlUcWEvvBUTTqBFwG13AQx2XMiMnZyNqfxc6zTjE4Giy7txZTfkiMHs5luHtOnYiYG3Z4kBXCmcy
stkztDcMDseoviyBZvUkdAKn7dBBfUWhGG3K6/4oWuR0J5sg7ntELYcaRHtJofl3tG09rxyW8TST
kpzKQSPJf2NIDD9ZBIWGY8BIJzjJV3ZzUjaQ6qvH3jVmjFveeuxkUcUYAZS6HrDnt0tcTcn8yjsm
Vu7sOJS3gS4J83cqqOnU5NZzsVbhuTSGqDNfapBsasEguCP+eBgwYH9msCo4vQ5iiGnziRnkRJ25
ZpBgWBadnYm1Ce/G1Wu+QlDWeggKTeol/eIneeGoO3OGRBKIzwhpyRKhgrQenLL9NEbIDsmUrw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2157F6EE8BA2A80"
last-modified: Thu, 12 Nov 2026 00:45:01 GMT
content-md5: bNyWuGBvwAduAgQK90MEnQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 82921d5d-f162-4236-b818-5624a3785da8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-589952c8-4206-137a-3e69-f46f7bf3dcaf/bar

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
YDaEn9KAIncFkYH/3r5olgTWBVPrCkE/XnJnW3ImrEPCGs1lgnLKRzAiU3TBejSAAF5qpO6Jw1b1
REBgGccF3+U+PMTwAxOSDL0jybfMfuM951oTuwdUOVZ3bz4yai5oHXOPgz5wj/1L2JgwZfqeKcVc
IjFs8SPd6QNueZPUYKKOuqtDPfulzFddyONuJNRb2EZ51Uf8/CxPsZk7AhVqdnj2oqpPW+zKtlXa
DihAb8UuEqFMW4pakb5+84thaspB81Jrd4IqC31arx7xIu0ED0LUDO90HRvtnBDr0WdgaEyLmBvW
1fdDBAck8qtraG/QeuRJjF7azdY3fdtxPjoV+kbSZonSLTpKkQfoTypvgjOhG1eDFtvusctFn1gb
0cbNDvhlmQHl/Uyp//tW8n2rx/uo0CLjkuNr47W+jY7iL79AGkEyCugxux4K2Rfgl75NmdddcwGk
6nsU+rVMJnC9x887Fdc8eb0SdhQE2LnMi0z2cfS3hbu+nDDFHRAy5ZWuTRFHpIHmEB8ZSv3snxLC
SG5pVbR7BUIUfXmnd1yt35F+VounhObKD2HUnTq+0fwdA9ShyY/hMkfPMycIP5jDa2tsbUmHGsSI
nkZSp2gIVat8iXSHDBYBnSRD2FG/wtDIEDHPUmOzlukQGSpJjorfx918jLUkPF9UatAlQ0FyyNx1
ipY2OANHyfKKdvPruA+ZZBFzQzUapNTSeueTjVOnnVBN0wT0qI7aNcPCmcVrabLBjN4v/4WmWuXC
Y74bszuf49ijneQKpLuDmQ5yWAoOZhE10gF1d57Kp3keMkXQvoGHI7bsyMvNtucirGZ3MwLbs/ys
5uE6Kms62PZr7HJ2stqM6zRTIp5FZxwZUss4U3N2Qn9II9igTfhLsu/VYsl0rPmL6kjNiJBeZ37E
INigAoWD9KnzLo8C7J08CHCucAVSpaXRrGgqqbru6bxa2y0gqq9qUm4fgX5qif6qkX8gsPd5cnsy
zlUcWEvvBUTTqBFwG13AQx2XMiMnZyNqfxc6zTjE4Giy7txZTfkiMHs5luHtOnYiYG3Z4kBXCmcy
stkztDcMDseoviyBZvUkdAKn7dBBfUWhGG3K6/4oWuR0J5sg7ntELYcaRHtJofl3tG09rxyW8TST
kpzKQSPJf2NIDD9ZBIWGY8BIJzjJV3ZzUjaQ6qvH3jVmjFveeuxkUcUYAZS6HrDnt0tcTcn8yjsm
Vu7sOJS3gS4J83cqqOnU5NZzsVbhuTSGqDNfapBsasEguCP+eBgwYH9msCo4vQ5iiGnziRnkRJ25
ZpBgWBadnYm1Ce/G1Wu+QlDWeggKTeol/eIneeGoO3OGRBKIzwhpyRKhgrQenLL9NEbIDsmUrw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E920739F7BEA30"
last-modified: Thu, 12 Nov 2026 00:45:01 GMT
content-md5: bNyWuGBvwAduAgQK90MEnQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1030976-2aa4-4504-82a2-b2009311a218
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-589952c8-4206-137a-3e69-f46f7bf3dcaf/baz

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
YDaEn9KAIncFkYH/3r5olgTWBVPrCkE/XnJnW3ImrEPCGs1lgnLKRzAiU3TBejSAAF5qpO6Jw1b1
REBgGccF3+U+PMTwAxOSDL0jybfMfuM951oTuwdUOVZ3bz4yai5oHXOPgz5wj/1L2JgwZfqeKcVc
IjFs8SPd6QNueZPUYKKOuqtDPfulzFddyONuJNRb2EZ51Uf8/CxPsZk7AhVqdnj2oqpPW+zKtlXa
DihAb8UuEqFMW4pakb5+84thaspB81Jrd4IqC31arx7xIu0ED0LUDO90HRvtnBDr0WdgaEyLmBvW
1fdDBAck8qtraG/QeuRJjF7azdY3fdtxPjoV+kbSZonSLTpKkQfoTypvgjOhG1eDFtvusctFn1gb
0cbNDvhlmQHl/Uyp//tW8n2rx/uo0CLjkuNr47W+jY7iL79AGkEyCugxux4K2Rfgl75NmdddcwGk
6nsU+rVMJnC9x887Fdc8eb0SdhQE2LnMi0z2cfS3hbu+nDDFHRAy5ZWuTRFHpIHmEB8ZSv3snxLC
SG5pVbR7BUIUfXmnd1yt35F+VounhObKD2HUnTq+0fwdA9ShyY/hMkfPMycIP5jDa2tsbUmHGsSI
nkZSp2gIVat8iXSHDBYBnSRD2FG/wtDIEDHPUmOzlukQGSpJjorfx918jLUkPF9UatAlQ0FyyNx1
ipY2OANHyfKKdvPruA+ZZBFzQzUapNTSeueTjVOnnVBN0wT0qI7aNcPCmcVrabLBjN4v/4WmWuXC
Y74bszuf49ijneQKpLuDmQ5yWAoOZhE10gF1d57Kp3keMkXQvoGHI7bsyMvNtucirGZ3MwLbs/ys
5uE6Kms62PZr7HJ2stqM6zRTIp5FZxwZUss4U3N2Qn9II9igTfhLsu/VYsl0rPmL6kjNiJBeZ37E
INigAoWD9KnzLo8C7J08CHCucAVSpaXRrGgqqbru6bxa2y0gqq9qUm4fgX5qif6qkX8gsPd5cnsy
zlUcWEvvBUTTqBFwG13AQx2XMiMnZyNqfxc6zTjE4Giy7txZTfkiMHs5luHtOnYiYG3Z4kBXCmcy
stkztDcMDseoviyBZvUkdAKn7dBBfUWhGG3K6/4oWuR0J5sg7ntELYcaRHtJofl3tG09rxyW8TST
kpzKQSPJf2NIDD9ZBIWGY8BIJzjJV3ZzUjaQ6qvH3jVmjFveeuxkUcUYAZS6HrDnt0tcTcn8yjsm
Vu7sOJS3gS4J83cqqOnU5NZzsVbhuTSGqDNfapBsasEguCP+eBgwYH9msCo4vQ5iiGnziRnkRJ25
ZpBgWBadnYm1Ce/G1Wu+QlDWeggKTeol/eIneeGoO3OGRBKIzwhpyRKhgrQenLL9NEbIDsmUrw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x209E1DC5B2A5A20"
last-modified: Thu, 12 Nov 2026 00:45:01 GMT
content-md5: bNyWuGBvwAduAgQK90MEnQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2de4e99f-3d8e-47bd-a643-6eb0bdf5b927
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-589952c8-4206-137a-3e69-f46f7bf3dcaf/foo/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
YDaEn9KAIncFkYH/3r5olgTWBVPrCkE/XnJnW3ImrEPCGs1lgnLKRzAiU3TBejSAAF5qpO6Jw1b1
REBgGccF3+U+PMTwAxOSDL0jybfMfuM951oTuwdUOVZ3bz4yai5oHXOPgz5wj/1L2JgwZfqeKcVc
IjFs8SPd6QNueZPUYKKOuqtDPfulzFddyONuJNRb2EZ51Uf8/CxPsZk7AhVqdnj2oqpPW+zKtlXa
DihAb8UuEqFMW4pakb5+84thaspB81Jrd4IqC31arx7xIu0ED0LUDO90HRvtnBDr0WdgaEyLmBvW
1fdDBAck8qtraG/QeuRJjF7azdY3fdtxPjoV+kbSZonSLTpKkQfoTypvgjOhG1eDFtvusctFn1gb
0cbNDvhlmQHl/Uyp//tW8n2rx/uo0CLjkuNr47W+jY7iL79AGkEyCugxux4K2Rfgl75NmdddcwGk
6nsU+rVMJnC9x887Fdc8eb0SdhQE2LnMi0z2cfS3hbu+nDDFHRAy5ZWuTRFHpIHmEB8ZSv3snxLC
SG5pVbR7BUIUfXmnd1yt35F+VounhObKD2HUnTq+0fwdA9ShyY/hMkfPMycIP5jDa2tsbUmHGsSI
nkZSp2gIVat8iXSHDBYBnSRD2FG/wtDIEDHPUmOzlukQGSpJjorfx918jLUkPF9UatAlQ0FyyNx1
ipY2OANHyfKKdvPruA+ZZBFzQzUapNTSeueTjVOnnVBN0wT0qI7aNcPCmcVrabLBjN4v/4WmWuXC
Y74bszuf49ijneQKpLuDmQ5yWAoOZhE10gF1d57Kp3keMkXQvoGHI7bsyMvNtucirGZ3MwLbs/ys
5uE6Kms62PZr7HJ2stqM6zRTIp5FZxwZUss4U3N2Qn9II9igTfhLsu/VYsl0rPmL6kjNiJBeZ37E
INigAoWD9KnzLo8C7J08CHCucAVSpaXRrGgqqbru6bxa2y0gqq9qUm4fgX5qif6qkX8gsPd5cnsy
zlUcWEvvBUTTqBFwG13AQx2XMiMnZyNqfxc6zTjE4Giy7txZTfkiMHs5luHtOnYiYG3Z4kBXCmcy
stkztDcMDseoviyBZvUkdAKn7dBBfUWhGG3K6/4oWuR0J5sg7ntELYcaRHtJofl3tG09rxyW8TST
kpzKQSPJf2NIDD9ZBIWGY8BIJzjJV3ZzUjaQ6qvH3jVmjFveeuxkUcUYAZS6HrDnt0tcTcn8yjsm
Vu7sOJS3gS4J83cqqOnU5NZzsVbhuTSGqDNfapBsasEguCP+eBgwYH9msCo4vQ5iiGnziRnkRJ25
ZpBgWBadnYm1Ce/G1Wu+QlDWeggKTeol/eIneeGoO3OGRBKIzwhpyRKhgrQenLL9NEbIDsmUrw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x259B2F8A928BDA0"
last-modified: Thu, 12 Nov 2026 00:45:01 GMT
content-md5: bNyWuGBvwAduAgQK90MEnQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f05351a9-f9d9-4533-ab17-8972a00d0f62
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-589952c8-4206-137a-3e69-f46f7bf3dcaf/foo/bar

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
YDaEn9KAIncFkYH/3r5olgTWBVPrCkE/XnJnW3ImrEPCGs1lgnLKRzAiU3TBejSAAF5qpO6Jw1b1
REBgGccF3+U+PMTwAxOSDL0jybfMfuM951oTuwdUOVZ3bz4yai5oHXOPgz5wj/1L2JgwZfqeKcVc
IjFs8SPd6QNueZPUYKKOuqtDPfulzFddyONuJNRb2EZ51Uf8/CxPsZk7AhVqdnj2oqpPW+zKtlXa
DihAb8UuEqFMW4pakb5+84thaspB81Jrd4IqC31arx7xIu0ED0LUDO90HRvtnBDr0WdgaEyLmBvW
1fdDBAck8qtraG/QeuRJjF7azdY3fdtxPjoV+kbSZonSLTpKkQfoTypvgjOhG1eDFtvusctFn1gb
0cbNDvhlmQHl/Uyp//tW8n2rx/uo0CLjkuNr47W+jY7iL79AGkEyCugxux4K2Rfgl75NmdddcwGk
6nsU+rVMJnC9x887Fdc8eb0SdhQE2LnMi0z2cfS3hbu+nDDFHRAy5ZWuTRFHpIHmEB8ZSv3snxLC
SG5pVbR7BUIUfXmnd1yt35F+VounhObKD2HUnTq+0fwdA9ShyY/hMkfPMycIP5jDa2tsbUmHGsSI
nkZSp2gIVat8iXSHDBYBnSRD2FG/wtDIEDHPUmOzlukQGSpJjorfx918jLUkPF9UatAlQ0FyyNx1
ipY2OANHyfKKdvPruA+ZZBFzQzUapNTSeueTjVOnnVBN0wT0qI7aNcPCmcVrabLBjN4v/4WmWuXC
Y74bszuf49ijneQKpLuDmQ5yWAoOZhE10gF1d57Kp3keMkXQvoGHI7bsyMvNtucirGZ3MwLbs/ys
5uE6Kms62PZr7HJ2stqM6zRTIp5FZxwZUss4U3N2Qn9II9igTfhLsu/VYsl0rPmL6kjNiJBeZ37E
INigAoWD9KnzLo8C7J08CHCucAVSpaXRrGgqqbru6bxa2y0gqq9qUm4fgX5qif6qkX8gsPd5cnsy
zlUcWEvvBUTTqBFwG13AQx2XMiMnZyNqfxc6zTjE4Giy7txZTfkiMHs5luHtOnYiYG3Z4kBXCmcy
stkztDcMDseoviyBZvUkdAKn7dBBfUWhGG3K6/4oWuR0J5sg7ntELYcaRHtJofl3tG09rxyW8TST
kpzKQSPJf2NIDD9ZBIWGY8BIJzjJV3ZzUjaQ6qvH3jVmjFveeuxkUcUYAZS6HrDnt0tcTcn8yjsm
Vu7sOJS3gS4J83cqqOnU5NZzsVbhuTSGqDNfapBsasEguCP+eBgwYH9msCo4vQ5iiGnziRnkRJ25
ZpBgWBadnYm1Ce/G1Wu+QlDWeggKTeol/eIneeGoO3OGRBKIzwhpyRKhgrQenLL9NEbIDsmUrw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x244E0BC90B716A0"
last-modified: Thu, 12 Nov 2026 00:45:01 GMT
content-md5: bNyWuGBvwAduAgQK90MEnQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 51e882f2-1e8e-4b6b-bdf7-17e45d36b9c6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-589952c8-4206-137a-3e69-f46f7bf3dcaf/baz/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
YDaEn9KAIncFkYH/3r5olgTWBVPrCkE/XnJnW3ImrEPCGs1lgnLKRzAiU3TBejSAAF5qpO6Jw1b1
REBgGccF3+U+PMTwAxOSDL0jybfMfuM951oTuwdUOVZ3bz4yai5oHXOPgz5wj/1L2JgwZfqeKcVc
IjFs8SPd6QNueZPUYKKOuqtDPfulzFddyONuJNRb2EZ51Uf8/CxPsZk7AhVqdnj2oqpPW+zKtlXa
DihAb8UuEqFMW4pakb5+84thaspB81Jrd4IqC31arx7xIu0ED0LUDO90HRvtnBDr0WdgaEyLmBvW
1fdDBAck8qtraG/QeuRJjF7azdY3fdtxPjoV+kbSZonSLTpKkQfoTypvgjOhG1eDFtvusctFn1gb
0cbNDvhlmQHl/Uyp//tW8n2rx/uo0CLjkuNr47W+jY7iL79AGkEyCugxux4K2Rfgl75NmdddcwGk
6nsU+rVMJnC9x887Fdc8eb0SdhQE2LnMi0z2cfS3hbu+nDDFHRAy5ZWuTRFHpIHmEB8ZSv3snxLC
SG5pVbR7BUIUfXmnd1yt35F+VounhObKD2HUnTq+0fwdA9ShyY/hMkfPMycIP5jDa2tsbUmHGsSI
nkZSp2gIVat8iXSHDBYBnSRD2FG/wtDIEDHPUmOzlukQGSpJjorfx918jLUkPF9UatAlQ0FyyNx1
ipY2OANHyfKKdvPruA+ZZBFzQzUapNTSeueTjVOnnVBN0wT0qI7aNcPCmcVrabLBjN4v/4WmWuXC
Y74bszuf49ijneQKpLuDmQ5yWAoOZhE10gF1d57Kp3keMkXQvoGHI7bsyMvNtucirGZ3MwLbs/ys
5uE6Kms62PZr7HJ2stqM6zRTIp5FZxwZUss4U3N2Qn9II9igTfhLsu/VYsl0rPmL6kjNiJBeZ37E
INigAoWD9KnzLo8C7J08CHCucAVSpaXRrGgqqbru6bxa2y0gqq9qUm4fgX5qif6qkX8gsPd5cnsy
zlUcWEvvBUTTqBFwG13AQx2XMiMnZyNqfxc6zTjE4Giy7txZTfkiMHs5luHtOnYiYG3Z4kBXCmcy
stkztDcMDseoviyBZvUkdAKn7dBBfUWhGG3K6/4oWuR0J5sg7ntELYcaRHtJofl3tG09rxyW8TST
kpzKQSPJf2NIDD9ZBIWGY8BIJzjJV3ZzUjaQ6qvH3jVmjFveeuxkUcUYAZS6HrDnt0tcTcn8yjsm
Vu7sOJS3gS4J83cqqOnU5NZzsVbhuTSGqDNfapBsasEguCP+eBgwYH9msCo4vQ5iiGnziRnkRJ25
ZpBgWBadnYm1Ce/G1Wu+QlDWeggKTeol/eIneeGoO3OGRBKIzwhpyRKhgrQenLL9NEbIDsmUrw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x232D4702CD3F280"
last-modified: Thu, 12 Nov 2026 00:45:01 GMT
content-md5: bNyWuGBvwAduAgQK90MEnQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3ef98ba3-5678-4aa7-9568-2efb346d4701
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-589952c8-4206-137a-3e69-f46f7bf3dcaf/baz/foo/bar

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
YDaEn9KAIncFkYH/3r5olgTWBVPrCkE/XnJnW3ImrEPCGs1lgnLKRzAiU3TBejSAAF5qpO6Jw1b1
REBgGccF3+U+PMTwAxOSDL0jybfMfuM951oTuwdUOVZ3bz4yai5oHXOPgz5wj/1L2JgwZfqeKcVc
IjFs8SPd6QNueZPUYKKOuqtDPfulzFddyONuJNRb2EZ51Uf8/CxPsZk7AhVqdnj2oqpPW+zKtlXa
DihAb8UuEqFMW4pakb5+84thaspB81Jrd4IqC31arx7xIu0ED0LUDO90HRvtnBDr0WdgaEyLmBvW
1fdDBAck8qtraG/QeuRJjF7azdY3fdtxPjoV+kbSZonSLTpKkQfoTypvgjOhG1eDFtvusctFn1gb
0cbNDvhlmQHl/Uyp//tW8n2rx/uo0CLjkuNr47W+jY7iL79AGkEyCugxux4K2Rfgl75NmdddcwGk
6nsU+rVMJnC9x887Fdc8eb0SdhQE2LnMi0z2cfS3hbu+nDDFHRAy5ZWuTRFHpIHmEB8ZSv3snxLC
SG5pVbR7BUIUfXmnd1yt35F+VounhObKD2HUnTq+0fwdA9ShyY/hMkfPMycIP5jDa2tsbUmHGsSI
nkZSp2gIVat8iXSHDBYBnSRD2FG/wtDIEDHPUmOzlukQGSpJjorfx918jLUkPF9UatAlQ0FyyNx1
ipY2OANHyfKKdvPruA+ZZBFzQzUapNTSeueTjVOnnVBN0wT0qI7aNcPCmcVrabLBjN4v/4WmWuXC
Y74bszuf49ijneQKpLuDmQ5yWAoOZhE10gF1d57Kp3keMkXQvoGHI7bsyMvNtucirGZ3MwLbs/ys
5uE6Kms62PZr7HJ2stqM6zRTIp5FZxwZUss4U3N2Qn9II9igTfhLsu/VYsl0rPmL6kjNiJBeZ37E
INigAoWD9KnzLo8C7J08CHCucAVSpaXRrGgqqbru6bxa2y0gqq9qUm4fgX5qif6qkX8gsPd5cnsy
zlUcWEvvBUTTqBFwG13AQx2XMiMnZyNqfxc6zTjE4Giy7txZTfkiMHs5luHtOnYiYG3Z4kBXCmcy
stkztDcMDseoviyBZvUkdAKn7dBBfUWhGG3K6/4oWuR0J5sg7ntELYcaRHtJofl3tG09rxyW8TST
kpzKQSPJf2NIDD9ZBIWGY8BIJzjJV3ZzUjaQ6qvH3jVmjFveeuxkUcUYAZS6HrDnt0tcTcn8yjsm
Vu7sOJS3gS4J83cqqOnU5NZzsVbhuTSGqDNfapBsasEguCP+eBgwYH9msCo4vQ5iiGnziRnkRJ25
ZpBgWBadnYm1Ce/G1Wu+QlDWeggKTeol/eIneeGoO3OGRBKIzwhpyRKhgrQenLL9NEbIDsmUrw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2265746CC8BE0A0"
last-modified: Thu, 12 Nov 2026 00:45:01 GMT
content-md5: bNyWuGBvwAduAgQK90MEnQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b2396709-5059-48b1-87fe-c08096c67313
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-589952c8-4206-137a-3e69-f46f7bf3dcaf/baz/bar/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
YDaEn9KAIncFkYH/3r5olgTWBVPrCkE/XnJnW3ImrEPCGs1lgnLKRzAiU3TBejSAAF5qpO6Jw1b1
REBgGccF3+U+PMTwAxOSDL0jybfMfuM951oTuwdUOVZ3bz4yai5oHXOPgz5wj/1L2JgwZfqeKcVc
IjFs8SPd6QNueZPUYKKOuqtDPfulzFddyONuJNRb2EZ51Uf8/CxPsZk7AhVqdnj2oqpPW+zKtlXa
DihAb8UuEqFMW4pakb5+84thaspB81Jrd4IqC31arx7xIu0ED0LUDO90HRvtnBDr0WdgaEyLmBvW
1fdDBAck8qtraG/QeuRJjF7azdY3fdtxPjoV+kbSZonSLTpKkQfoTypvgjOhG1eDFtvusctFn1gb
0cbNDvhlmQHl/Uyp//tW8n2rx/uo0CLjkuNr47W+jY7iL79AGkEyCugxux4K2Rfgl75NmdddcwGk
6nsU+rVMJnC9x887Fdc8eb0SdhQE2LnMi0z2cfS3hbu+nDDFHRAy5ZWuTRFHpIHmEB8ZSv3snxLC
SG5pVbR7BUIUfXmnd1yt35F+VounhObKD2HUnTq+0fwdA9ShyY/hMkfPMycIP5jDa2tsbUmHGsSI
nkZSp2gIVat8iXSHDBYBnSRD2FG/wtDIEDHPUmOzlukQGSpJjorfx918jLUkPF9UatAlQ0FyyNx1
ipY2OANHyfKKdvPruA+ZZBFzQzUapNTSeueTjVOnnVBN0wT0qI7aNcPCmcVrabLBjN4v/4WmWuXC
Y74bszuf49ijneQKpLuDmQ5yWAoOZhE10gF1d57Kp3keMkXQvoGHI7bsyMvNtucirGZ3MwLbs/ys
5uE6Kms62PZr7HJ2stqM6zRTIp5FZxwZUss4U3N2Qn9II9igTfhLsu/VYsl0rPmL6kjNiJBeZ37E
INigAoWD9KnzLo8C7J08CHCucAVSpaXRrGgqqbru6bxa2y0gqq9qUm4fgX5qif6qkX8gsPd5cnsy
zlUcWEvvBUTTqBFwG13AQx2XMiMnZyNqfxc6zTjE4Giy7txZTfkiMHs5luHtOnYiYG3Z4kBXCmcy
stkztDcMDseoviyBZvUkdAKn7dBBfUWhGG3K6/4oWuR0J5sg7ntELYcaRHtJofl3tG09rxyW8TST
kpzKQSPJf2NIDD9ZBIWGY8BIJzjJV3ZzUjaQ6qvH3jVmjFveeuxkUcUYAZS6HrDnt0tcTcn8yjsm
Vu7sOJS3gS4J83cqqOnU5NZzsVbhuTSGqDNfapBsasEguCP+eBgwYH9msCo4vQ5iiGnziRnkRJ25
ZpBgWBadnYm1Ce/G1Wu+QlDWeggKTeol/eIneeGoO3OGRBKIzwhpyRKhgrQenLL9NEbIDsmUrw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24D5B58B9A15800"
last-modified: Thu, 12 Nov 2026 00:45:01 GMT
content-md5: bNyWuGBvwAduAgQK90MEnQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 985aeda5-2dc0-48c2-a6a2-46fa06d17d94
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-589952c8-4206-137a-3e69-f46f7bf3dcaf/foo/foo?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D1421A5B537390"
last-modified: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8f6227c5-8d1a-4aee-8626-4c68b801a331
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-589952c8-4206-137a-3e69-f46f7bf3dcaf?restype=container&comp=list&delimiter=%2F&startFrom=foo

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_11
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
x-ms-request-id: f2a54901-2cea-49ed-8392-d3c24b92ce60
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-589952c8-4206-137a-3e69-f46f7bf3dcaf"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>foo/</Name></BlobPrefix><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:01 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:01 GMT</Last-Modified><Etag>0x2157F6EE8BA2A80</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>bNyWuGBvwAduAgQK90MEnQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:45:01 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-589952c8-4206-137a-3e69-f46f7bf3dcaf?restype=container

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
x-ms-request-id: 9081cbdf-05af-45c5-ae41-e4473d17cb0c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

