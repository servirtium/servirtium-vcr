## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-86f4b384-8dcd-27e8-4495-db74e605df82?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).ChangeLeaseAsync_AccessConditions
now: 2026-11-12T00:46:22.7833126+00:00

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
etag: "0x26033A81EF17120"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 22fe35ea-f8a4-4069-b7e5-5d1e1600f0ce
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-86f4b384-8dcd-27e8-4495-db74e605df82/test-blob-eb7e296d-e89a-8dce-e05f-6c4827b3765b

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
o3y4b4VOWxSOzKKioMGl80Lg7I8/RWWc5WembSGf/5Eff9FqTHD9Hs5qXM1FK+weunkFR8bmG10X
HIoeqO3z780RgyHwO6bS483B1eiXVrl6h7OnmbjKOGNzUjDm3nbgdm0ANKjLLn7TM2P4JUZ1f8bQ
oyA6TFUVRkq9feh27ARX4V97lyERr1k11GZU0RMd/dNqFTpWpSkX6u1dDrCVXEZeoUTm+uekv/TG
BXjvwHQ2n38VDNfJADs1Y6w0s6Gon3cf9TDPNwPrxlZGj6CxJyp4J24xf1BvlKAIsJY7bwtTHmUA
z8pEZmh7KUaAg3GbhDuBu4wydx8nsGGPx4ZssFZK8nE6sVhgNMAGtVYJ7hEvbSxbubR+IKZF2B5p
tJ/hDnnwNZD/YNPjIYfMLMLJHcJPYFlaEfehy9LK9dg5938gJabdGbiALw1YeJctsvTke7pcGVRG
hv2BTmm+NWv7qSoHqwcb7AQKzzFMAZhfdBnd5nkd3d0r2p6oW8tOwvqiXc5sJgftyI+2UUoj+oRk
ItpQ4E7x3cxN29FocpE5vA02qaTK8k4R8B3pZouTCOAZRDjx/eGrsH8CH0o2hFb9fZU97FDgmi+L
PvAwB3dAudLwTy5YSL4ri/kkyNID22vH7On2VhyQOakIZb7weqgIwWZ4RTUnpTXWEWFXu9JdiGKF
aRuNSWO2YBaET+IAOhBQHAZsipY1n0azIES7OH3Xq9xbaxGNengCwuQfo1VS1tZRB5/M8P3MT8rU
2ike+ieYraMGpM/+wqGOaciyFvzxYUptajHdC7vejxtHuKBO48e9hvWxTDEHUkT+PYY1GjnN43jf
sZD1u6HoJxSztwoAP4YB9I8GQBQYZhft3800qXXiedUnbzI2x8tTyCQdU5o5/f4ANCWpx6Nkx0p5
CNvUtH6e0T012c9Tyi3Esnfw+hN8s+LOM3RQObIxw6jovb7vfxSmfoJdBCQurWn35BQrc8w3/FT4
BYAJTpeLAxUnawxu1TNiSnyQH6++oIYKWVSeBk/csMFq9nmUnDDq0QEOB0JdiA/hyClQptylOmX5
/vVD7f3FSrpLBN65zq1Lpk2tr5hErdBFvD0mjArkxLwUm547p+QESbyHEYMxJ/p8BACP94rMtFAk
/TC/n76wZ0AipTIPEP5oqWbcvZxNFJVCqYgJVcwxR+ZNF6m0RKn916pDDoLIbfMBJk4k8Pe01uma
ffU2phJz8F1MwflUtGW83uXxCQUTejyUCC5+DFfvmEDAGce0xzGY0B0ke6v5rHLpaBERw8zjhwK5
oZ7j9OQFXSm5lJqdCBe0WTnn7v6Qmlu8laRF3dVz3ZLE+iWTtNs5Hx6CQBjXS1/6XWqT+5kEKA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x255550852D9D440"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
content-md5: EmOZYMRWcA5+gNs/OcTlUw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 11a2ccf7-3bbb-49bf-ae89-59dd6abb6786
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-86f4b384-8dcd-27e8-4495-db74e605df82/test-blob-eb7e296d-e89a-8dce-e05f-6c4827b3765b?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 5e274207-c03f-547f-45b7-08d90df121a4
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x255550852D9D440"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-lease-id: 5e274207-c03f-547f-45b7-08d90df121a4
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bef38ca8-2977-4c3c-86ac-cbb00915c490
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-86f4b384-8dcd-27e8-4495-db74e605df82/test-blob-eb7e296d-e89a-8dce-e05f-6c4827b3765b?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: change
x-ms-lease-id: 5e274207-c03f-547f-45b7-08d90df121a4
x-ms-proposed-lease-id: dfcfae5d-590e-e443-4a44-4a7f6ae0e1f8
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x255550852D9D440"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2662cc2e-a60f-4532-b793-ef5caba4078f
x-ms-lease-id: dfcfae5d-590e-e443-4a44-4a7f6ae0e1f8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-86f4b384-8dcd-27e8-4495-db74e605df82?restype=container

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
x-ms-request-id: 83d25f65-50bb-45e8-a9be-ad112a7ad047
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-501ed1c0-7d8d-5ef9-9e2d-fb61cf715208?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20F1C2340BCBC20"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f300655-596a-4383-9e73-885d829df18b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-501ed1c0-7d8d-5ef9-9e2d-fb61cf715208/test-blob-4d35c53c-24c9-ad1a-fe43-14fb7500e964

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
1Q8ZPNPQF+C0cEHgXuEV2PJBQ6Srky6bt3BRSWj+6Z5Elou/WBY1a65UmFnjOU4dLjwJM7xEuUHg
fYRifs13toainMhWVX/cDNj2VvrVuH4iNBss9Lbh/9xJ3tqR0uzh3eLSQJyGxti8LSbkTmNHC8UG
QEmxS8HPwJ3rDHelSjnrFHkYAnfhm21DcMeQ/bB5AtIUi5KiL5EgAoD+mrpgF+Ls+TnqLghOJKTc
btr5P8PtcgmkkL+nSOXn9//34wCz41jlowN2j9PKxmbtxsC3J8K8ESiwu4cjRbBUAjcIV0GjKIuB
FJy/d+I12slYuYElMNA8OtLYAifRwV1TIoycwW8lSp01NRIm/JlFeuC9yosuLtJmzBxvyyZjsFI+
bFRWmRlaM2/j7/u9Fj04kodGFPfRJPO5NfVStn530YTA55BE7+HHY5ccSj7XqbXeNjmeHZtbbEdh
nGMkB3zwax52/S+t86Kmf7Fftdm04ow/dH9F2bPoZXpI41N9olsbLN4gYauFMUOW+J7q+7dtrLnX
5JP9qpJqjZi0ZBBPKNxVRIj6lIHgukI7ruEV/mnC2jaZpr3HHYJMttMT0M0zR8/ClLcvcxg49ipR
wfuxVI8v8onZtoEejiYGrt2tzel1CGcRU2mxk2cdYLCTdlyGm2FE5N5DWZFOowaRKMQ6iyhB27iU
nwElfV4hvFXQixjKfxN8aOgKMa/Wwq9jIGuj4tWHUZqj8vtgH2aAIp07fRjtx6ixviJANqkJvdxR
wl3zftl/STl9Jo0XHEmCig8RmkWXdVnC8SSzRxvwmjQeDlwJjaPDuzTfcKAbmaHYvqya9yOXuk0E
MYy1zAEejYxY+Q3tePxrTt4RtwS4p1eC2oluVqIRh1QOBVwWDu8yweMUwqCU60WwL6lEhgJIS4k1
MvJ4rzbpR3K53nOgVD/v3vYhpOS37u5Evib5zABSxrnS4dz8uhGsK3ot2gzRD9ppVagMJ6elfUQD
M/EQ73pxZxi6znJj8iPkdXhqiRPhcq5Mj3dYRZ4SLGSY+IYfnDv/vHP0F0BnBmKEKLIuO/MwIsFC
w18DGCF5qKEOy/mdxNg9as2g7Vtu5IgU1B3s4/FwZ9bF3djb/KNSem+eWTtp5mPZ8dAlkDRl1N/X
70QDjcSvnWMi1+cAYW4qTXLsz4pNqu26E/IhS9eiXwj5BA1eTu2q77zYRg982JBi+0LCeQVUiURX
SXnSjlKMgHjeB1xhy/+EQeDOdGTePTphvk+U3+YDpHvIBwR02GBpTMaWndE0ATBCPTgkhRTgeAw+
cNAC96CS2mLhmMP7EGl/ZCieR59pLbwfUqKt3h9m6I74NWeQZ1QlBMJuU2lsRyzPpSDsQTFs1A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E3E2EC2117F900"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
content-md5: RK50W5KqyC1EZLtfD8TsgQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3893bf9f-0e76-49b6-ab32-846f4050c165
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-501ed1c0-7d8d-5ef9-9e2d-fb61cf715208/test-blob-4d35c53c-24c9-ad1a-fe43-14fb7500e964?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: a5e31342-e4fe-43fc-7baf-3503db01effd
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E3E2EC2117F900"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-lease-id: a5e31342-e4fe-43fc-7baf-3503db01effd
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4096b61b-1079-4a3b-b984-372e346751fe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-501ed1c0-7d8d-5ef9-9e2d-fb61cf715208/test-blob-4d35c53c-24c9-ad1a-fe43-14fb7500e964?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Modified-Since: Wed, 11 Nov 2026 00:46:22 GMT
x-ms-lease-action: change
x-ms-lease-id: a5e31342-e4fe-43fc-7baf-3503db01effd
x-ms-proposed-lease-id: dd4278d3-dafb-b353-0a75-de39fe79a65d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E3E2EC2117F900"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3830cc02-c1d7-47ce-a0ef-8da280aab666
x-ms-lease-id: dd4278d3-dafb-b353-0a75-de39fe79a65d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 9: DELETE /devstoreaccount1/test-container-501ed1c0-7d8d-5ef9-9e2d-fb61cf715208?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
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
x-ms-request-id: 3be333e1-6abc-4d26-a276-4e97a54eb01b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-7d24608b-af83-2026-c62b-d8b9364350cd?restype=container

### Request headers recorded for playback:

```
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
etag: "0x277EAD639FD3000"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8e774ca9-fc40-42e7-b0d0-2dcdbfdf6468
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-7d24608b-af83-2026-c62b-d8b9364350cd/test-blob-c81822b5-8fee-68d9-bf30-9a8805c24401

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
CNd3e9xxeiNSIhbPApl8xiUQg9th3W78hry+UxWdGwTm1rFfzNXxRKj0dsx4CWYls9Nj9D5pnypo
e/QfsyYOtAYS6SvoHPpPHz8ybGeig3xWmJ9COibFfTeG9lDh0ZCB5sHFZiA6PJbYFNX/NjPDxvh3
yRqHy3rgTWz0YiapbU2usYal3BxcG1sIaSVRxUYDwzBYagh1+hpH5RmzRdpwL6eIUIWsHurbGq2/
fmJVj4cl8J72UQNEOLZrXfYDqNaAmDp+yHTBV6VFfU9btnu38laRjlU8et2jQxjOQMDz13HXPuYo
1sYSY5n5sNOz6YI6tGugchqARB1c2oVc8xbkUqXdg3iVjxuQfiq7QskK8FmVk4xUUmVXVvnIy/xA
tnCCFV0u1WUKpSRPEPPvxQJTUuorxl+KkAA/hS1+zMQfT8i6OS1s2xr0i+1oBEJxaJH3dXkRFe8Q
+IRd7k84jNlfMMArNYvV53bPNztyIYu9zR2chlZKDTrZqUGoDu3Ku/8TCNSCRjMFIo0DQt2zntb5
oCAynAWCFSKFUYtJLNiJBHs7Xhm2O4fqlmTJR8tcJQtrrm7MmB/6kfOy/PSnu/W0ej1heEC8QmSZ
SAWhuc1WKSyA3n5qvGxcQcwmBD+SQtpuFM2O+qzKrmwKM1AZWdclW9PIJ913Sr7QBTZzlj0lBgUr
MqUAxy5/tTARX4gcQuj1AKlsyhv998kPvvV1Vxcu5SxK7iYyJZOlSHGsZeo1tMJOfpWUuTzqLjrb
8Ak4CV4Z43pb0VTBwtsVx4KpUJLe2QkyJ9iBmSvwYMDsVzSJbD4Sk4Fw2uJujbu5f/G6QN2o/Bf/
BuKFl0pOa3GU1Wuni1pDl70Qbv8nxJodxxo5NR/jQ1ociWZbjfs3IW9w2bhQEvOXdqkfmI4X2EJI
aM8wFDVRsZEQigL05wnB2E2Qt+rizLUmor52w6vMBLEjEyQsBww5HigmQIfxoo+fXb9AhyBXZpwZ
CXJ32+3lRIZQ0NTlldBBVpnBu4wuNP8v12Xri32RzK2IEv6ZwkM6QfsAodK6usjv/zCHlasQ69Vy
RwOH+bgIvgQnXILSp5RWh3mQLZMtdB2d/IxMCjYBeCcpJ3o/skdD+OLNk11FHVebMA4xf71BRNPm
6v0rvLTOJeRaqH8aF9QxTTWwYOC/V941sNknz/hq5+OmWMhKFzst/2546nTXgRk5ADKHkOPyJpIf
9gzbplXr8MGcc74M5zX6g2FyR2xpXS6/7s/G4lb/tDE2KyEvUlkYjfqzOw1bLRj9jQ2CgN8ltZnd
G7iFJQ1qnb+N1rwUyzAHWbpytiIhZMC2yFVIfDRREHWIUjahk2fsSZ5OzVdc6cLdeiYlsv92vA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C756A8621DD000"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
content-md5: UUQBibIdVtyS0hEQqw1FZA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3406a84a-34d2-4eef-abdf-838688c4fb9d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-7d24608b-af83-2026-c62b-d8b9364350cd/test-blob-c81822b5-8fee-68d9-bf30-9a8805c24401?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 5ccef7b7-21b8-8b20-3bc5-468b78f966c6
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C756A8621DD000"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-lease-id: 5ccef7b7-21b8-8b20-3bc5-468b78f966c6
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b147d018-33bd-470f-9d2e-4a9813fb1a2c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-7d24608b-af83-2026-c62b-d8b9364350cd/test-blob-c81822b5-8fee-68d9-bf30-9a8805c24401?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Unmodified-Since: Fri, 13 Nov 2026 00:46:22 GMT
x-ms-lease-action: change
x-ms-lease-id: 5ccef7b7-21b8-8b20-3bc5-468b78f966c6
x-ms-proposed-lease-id: 846d8552-96d2-5969-df93-6b010d2b5d76
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C756A8621DD000"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96006a2d-3b5c-4020-9587-b0deeb8693b8
x-ms-lease-id: 846d8552-96d2-5969-df93-6b010d2b5d76
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 14: DELETE /devstoreaccount1/test-container-7d24608b-af83-2026-c62b-d8b9364350cd?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
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
x-ms-request-id: 52ed6049-3d63-43c4-bcac-7224ad6c8051
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-a97f9611-0ac4-2734-7dc3-9291165d49e3?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D12B428398A850"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 07623f59-5ea9-4cc7-a46a-8c50ae04758a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-a97f9611-0ac4-2734-7dc3-9291165d49e3/test-blob-2cd35f13-f292-21e9-8d75-7c25b51e7d0f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
aNB64nq9AkdRRQYOBNhDgkmI7q5YMOMerF4bT40OcV9GgilF4mZpVl2L20zs2h21MfrbLTDOtzfs
XDYbobO5QtOnyIGu/Z/jHpdRzFWWMdFBZh2TM0Mud8rxWIYvTbWp0Zh5RRGbBzNa+A+ZferhVipk
2juVJg+PeFG2vKQZs9Dip/q9Hey/pV/pODo0lfngDwJby3J5E6uI6czA5EqPQUQ+ttbvJDg9pDXc
rO3UW+JX1qyivedeaJNPNDQf/8AUWvf19t8i8OvJHiY9nWe+s43qaQ6d7INc4E5DoO8EHaV0x1H1
3mQDNOXB2J/BIMorkYGmNZWyd210mBaQ31D7xACBydYVyNQo5jQp2xPjm8CDFw9uXugPwVDjgUVO
clSUxROfQFb0FcisfU5hiZtakP1WDchBjWYXcQiFMkaO2nPflBUARFtpjgFGweCZrji0ifFI+GWM
Uzish85Ob+OCHqPbgfSFWUyh7H/H+syGfsPP0ahVReEOU0DdU7yNGx8dxKI9vixDLy+lpwvlxVhs
JgkKfp47LNjBzC60pwaPFNFgqTYpSb+XjKF4sJ7VKI3ncSyzgpyA4pfKe/L9j4coFZI6hRsiQt1J
c/L8wnw67KOhzDba25I138efX87NmvwaT5oLm6NyxS5PaQ6phB8akI5OXMNQTjoABKZUguMPfNn2
4XPiLlAALgYHi3KDjFqohM8/fz05yQFgC5b8HUJLP+00sqOsN2E9TS28SMLHfHhLrP4Uz/ybvBdx
giK6AxHDvEuETtm3+0xtATEQfIE+mI4esXFEN3DwmfWLOrU/g0kc+Yx3Qy6elLCxps7Li0CWMuqU
nFKff4Xbk7XjK8GXLn3n9IP0x1RgfxzBk5ChJQ219AfLquf3fHoHm694u2juGXhR45e8omuVMxw1
3uv0OW2oLja5zIOW8HgJ7Cul6MS00nkXUEJ2+FKcNnbKwZ2OEmFB0IwxNU31uvMfs7U/70tYgQtx
3ekrMjXkHJYMyy7aetrJYxg3gp0sIpVPV0WdXUYrckCSHTV4Fp1XTRi26e/ERDjbdYszIP5uRLtU
3NrwRr9P4VjtSF2kUU164DSEdTilihIMwue691JBI9h6JDnDZgZZZweX1vzaNiQ+uT/K6s+CrlHI
44TYleoFrCSFKiwTt3ktKw4xDbMVMovCfD0SdzgJ+HXo+oOCgNEdkirYVAz4KgLFnL/AUaCes7D4
FRms8jXrfDG2K7z2q6o9E3uIPd1/ylI6TNt5SKfVSUbSiWq4cZ/17NjaQf5Fz/AUgz0kFXbSeUvH
caZZcjOK4eJ2IyE/hKLck1EFpIlT9H3qZMVpsDTP/w8f8f/5m3mkUF8cz6vO1f6bSIIlzdXCcw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22C46B5C2D66820"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
content-md5: TcvRLn4mD0JQ/aP+Rvq0JA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 19ef4045-40f9-461e-a525-caffbd9500e3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-a97f9611-0ac4-2734-7dc3-9291165d49e3/test-blob-2cd35f13-f292-21e9-8d75-7c25b51e7d0f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x22C46B5C2D66820"
content-md5: TcvRLn4mD0JQ/aP+Rvq0JA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8bfa9ecb-05d3-4178-9fd8-d4feb15bb0c5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:22 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:22 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-a97f9611-0ac4-2734-7dc3-9291165d49e3/test-blob-2cd35f13-f292-21e9-8d75-7c25b51e7d0f?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 0d6f287c-216d-ad31-a624-122093a2e3f7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22C46B5C2D66820"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-lease-id: 0d6f287c-216d-ad31-a624-122093a2e3f7
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a07b0844-3c48-458f-a729-708bdfd5b440
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-a97f9611-0ac4-2734-7dc3-9291165d49e3/test-blob-2cd35f13-f292-21e9-8d75-7c25b51e7d0f?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-Match: "0x22C46B5C2D66820"
x-ms-lease-action: change
x-ms-lease-id: 0d6f287c-216d-ad31-a624-122093a2e3f7
x-ms-proposed-lease-id: 295461d7-2537-1bd2-8fc7-ce68b2aa323a
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22C46B5C2D66820"
last-modified: Thu, 12 Nov 2026 00:46:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cfba125d-5eda-46a0-b0e0-f0a38551300a
x-ms-lease-id: 295461d7-2537-1bd2-8fc7-ce68b2aa323a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-a97f9611-0ac4-2734-7dc3-9291165d49e3?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
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
x-ms-request-id: d3f72c78-c899-49ec-8c3f-671c845f30ea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-d0827e5d-6c2c-2e36-2e6e-2887bcb46af8?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D0A22B2D6D87E0"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b8a1d369-07e9-4cd6-a5fb-514103618d94
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-d0827e5d-6c2c-2e36-2e6e-2887bcb46af8/test-blob-6b4e8a64-9880-573b-5653-7da652c8fbfb

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
8dfDFSATy2oqJfrI/Etf21zVAydcxrnEQit52O+Q22VzLJXl8VXYUb/jQVudcloL9KJJfcXTnysd
/tL0mfJ7mUmVVc+1eukH/LJoeIReJs/QbuRNR16gn41px/KC47jNZ6gRCB2LVXq4QoESayamv9gD
JCoNLlLr9LZCS7L3hBj6mhHcTB2yRBhqlAXdjTNnwwgZf7+NvzlVJhRmSQnHwb1oGNAVyXK7UN8R
o5lMDWaC24iq3QVZbNvXhiUJS/sPotNIdHRjUfmVXi/fexyfCRit5G6BHeO4Dqv1PUJNsgTjAgDF
BJnxH4mOFX7VevG+N30MW2eNjYXwj2XJbRO3R6wq+3gc2QR/u8Tk8ghk4pS6NgbEQFadVnR61XUz
KLJ1183Sq354ol15jZ+iqJt9i63RDjYN8gdVjaQDoQSPTJMSbhs7kjcVQZSoS7O3+q3Z/UrHYRl7
aOXGfB3ZdAFZ6UAMkDmAQvl2u82iZKZTnpP3KqO5x+p5lwY1dBUZPMyTT2Fzqml0WbtRUaZM2AQ+
ct6K4kpdnyJWk/gzSs3jXX8ADxVE4PQpgtHoaHVDLL8B9wI3jlmCNa8/HBdxQA7ubfQnS8jv+ZLq
YV95dTasEmY5MVPKq84lftllBcPcuELC+fqBHOH2Ev1wTS35CMB4kgqwNw67I8EmAczvifTODagd
tns8K/WEQx9VWl6gLHUZ7HK4K4E0B9Y5WxsUBogJoUCF3FJFPGcVK/PuZshjhdVW1p2BFuEn6K+l
As/acDyWS7keG08j068Lo/+NRaAN1dZFvTDriIpeXfOioDmXO7u2VxoPRWmFMwLtdXLhmaMOly35
lLMMq8Muv71cgDN1c2hE1+2G/pBtwIou/RIYfcRPlAgMnqYIqqxW4IWrKbLOdwIKncK2iJmcjNQo
3q2xFkL5DOwradXBPCxBLx0LwZbXX4YPDeACmQtvcBLS38z+pcpDsR3Gow4tSGCVdFl7kco9UX4n
oQhi93Lhu/nC71xgQ4lTxxB5Ebx44sV/bCSy895HlI1N1gTB4bqq5ecUalkENDHPJ8m6xEDCr79D
44tNLsgae1rPEmyFkuZWzizUY3drejfy48sUjdBNiyZEff0vXbYf+u/+NSHFSZXiZPYT7UxH12hT
Wkv8Be6KgYdFQBToJ3F1tGmIbEUVLZk2MinaOZ7a/aWV2wJrI/QBdLOafwmA+jyEnjjjvmsiPS2x
xdPEsEjoa0NvU0tuCpF0h/iSe66QtTfsVZtl9j46c57UuV0gPMRrsRPGEafxFZOnbjdyj8F/IQ+b
2Fqsg3UENN+smlEzVEs0J8mayqOQ+j8IvogHx+PcVZdNhGNpvi6ewd3HRHtBcxrrPmj45FdsCg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22E782186E8B600"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
content-md5: Z//AwtmCbPUjVp6PZkB9og==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2964fc28-8da7-4856-947f-19c2840e28b1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-d0827e5d-6c2c-2e36-2e6e-2887bcb46af8/test-blob-6b4e8a64-9880-573b-5653-7da652c8fbfb?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: c4a41bde-fcec-fb6c-cf44-bae5cfe8ca68
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22E782186E8B600"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-lease-id: c4a41bde-fcec-fb6c-cf44-bae5cfe8ca68
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ffc2575e-b984-42a7-bdcd-0e16f730a6d7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-d0827e5d-6c2c-2e36-2e6e-2887bcb46af8/test-blob-6b4e8a64-9880-573b-5653-7da652c8fbfb?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
If-None-Match: "garbage"
x-ms-lease-action: change
x-ms-lease-id: c4a41bde-fcec-fb6c-cf44-bae5cfe8ca68
x-ms-proposed-lease-id: c608fc9b-b5c9-c6c3-4b6e-1c897ae47140
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22E782186E8B600"
last-modified: Thu, 12 Nov 2026 00:46:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d841a37e-111a-4faa-a1c4-07856bffb335
x-ms-lease-id: c608fc9b-b5c9-c6c3-4b6e-1c897ae47140
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-d0827e5d-6c2c-2e36-2e6e-2887bcb46af8?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
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
x-ms-request-id: 870a983a-972e-4c02-92fc-708ecb6a8153
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

