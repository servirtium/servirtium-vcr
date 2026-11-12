## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1b32d909-03f7-2bce-a833-d8a5e40f180f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_Prefix
now: 2026-11-12T00:45:00.7236700+00:00

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
etag: "0x1E7234181516F10"
last-modified: Thu, 12 Nov 2026 00:45:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: efb9f699-5217-4d31-9885-2f3e766a6155
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1b32d909-03f7-2bce-a833-d8a5e40f180f/foo

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
PrDKvL4tEOY+IG1/hJU54HcAbUX8o7HAPOGODsSPPwAGXBPt217H3MlL3daWT6cT+vcu5KHTEpr+
CYDcngEir+FseCeCSwUZOJF7scbbKuw6exTMYFteM0p479Hd6j3HKC31KdZ/kK/yFKsQV2DUI96T
oiPsVU6FDkXdCVs0O05UtIiY5QEWu+pl2kywTdzppMzySkcZ29PfbxqRoYdTvdlcvKPXOz3dfOc5
h3sC1cBp82SPQfAGOti1uXXnhRliEhxyU5E5EmiOFc1g31NY3JpZJ60ixHzoVoHKIYLH9vfN13Re
j4IvMOH7ACwjpluFXdzbjV1rP02givwQbvDmxh/Vkgff+UwYKvfMJ8RPxa8lRcSl7GiaYZgnvgWF
HsHxFTkNTRRTpWSPw2NlnxiJUMRN6ikrQNq2OzBvtzpGkgs22hGKQneb0Z9fFSkFNMJ/nW1BODSX
xdRfVhHj5O0pSTBXL8QG/g5NsRiKzCuwsQdu8BrNBVrXnhU9K+tluO2xNsz5rQX9eJ5e84YbDPmp
rqUKdfPTW0PVgJCvydIj5/kr2ZVetgMCcHd7bhLUvJIck31FW0P53dqJIy10Tq/MOwuN7zNjSveh
CAR8WOwxAcT+kzVV3Yy2Mfu61JLWjSLHrzMGR8xeuEmFo1M+fYXtWCJpdrt6dl1/1r43qXZky3rh
tKi5Krr3n9rs0Dk5d7R2zXxwbBdnTTjWh3ANJg/SINjYXcjcNC1ocdbgjaYjRV8Kwdz59F5ieWdw
4qNJ6XjLGa9hYBrsmZhOB/tBh7+Ss0ERA2Uz2Sx5duNgbFGKHoddFHT3weVFHSdDquxjIfKn3S9i
OOYTmD+D6Oo2iyxGxOlz43NLm/Fby+U97y8/FlTxuY4iJ+ahSns0c9n6DpL6/OUD7z1/W0I+BmwA
1akQQ9GVRNKeJJwC0pn3FycXYbxTQvJJPCYXcl1L4yF5oXTSIzAIZcrAXNhIAB2kh0QbJ6WvrJK2
xgerftJ0UkF7iTAkJPP2D/vykuYaATsJc+oYMLx8yfTiHFwpXOf3SwqWzXftf2NRJBepvRmsm8XL
oQrnXCKE/787QgiWzbIU+kfbgzTDHPOHxguk0gzaNYCXXbrcEO7oEs24sT1au1ZllcLS0RiRCIUX
YJUW4CyzYA2H/3D3N+pY83FmC2q2LAu1Pz1JCGRoBVU1xa9Z0TGhBVAv07zmbV3Xed2mK/wbYDSK
YaHvaVipH/kbwnI7/yE/xAYahllPztHfco6GwtlYGWR7z3CQsZz3hrPCy6vrnHq7Zmf2ANnaO5LQ
EPbJIl0gwqgNvzCxrxJpIgCljAMl89UTy1tyYRmLoJPdwKGlLWRWoggC3txKCrZUjN7ZNa6Pqg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2571919953213C0"
last-modified: Thu, 12 Nov 2026 00:45:00 GMT
content-md5: N2h6vC5QPZw/D9ASnr7ebQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8953d1c4-1a80-435f-8eed-4a24391d1355
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-1b32d909-03f7-2bce-a833-d8a5e40f180f/bar

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
PrDKvL4tEOY+IG1/hJU54HcAbUX8o7HAPOGODsSPPwAGXBPt217H3MlL3daWT6cT+vcu5KHTEpr+
CYDcngEir+FseCeCSwUZOJF7scbbKuw6exTMYFteM0p479Hd6j3HKC31KdZ/kK/yFKsQV2DUI96T
oiPsVU6FDkXdCVs0O05UtIiY5QEWu+pl2kywTdzppMzySkcZ29PfbxqRoYdTvdlcvKPXOz3dfOc5
h3sC1cBp82SPQfAGOti1uXXnhRliEhxyU5E5EmiOFc1g31NY3JpZJ60ixHzoVoHKIYLH9vfN13Re
j4IvMOH7ACwjpluFXdzbjV1rP02givwQbvDmxh/Vkgff+UwYKvfMJ8RPxa8lRcSl7GiaYZgnvgWF
HsHxFTkNTRRTpWSPw2NlnxiJUMRN6ikrQNq2OzBvtzpGkgs22hGKQneb0Z9fFSkFNMJ/nW1BODSX
xdRfVhHj5O0pSTBXL8QG/g5NsRiKzCuwsQdu8BrNBVrXnhU9K+tluO2xNsz5rQX9eJ5e84YbDPmp
rqUKdfPTW0PVgJCvydIj5/kr2ZVetgMCcHd7bhLUvJIck31FW0P53dqJIy10Tq/MOwuN7zNjSveh
CAR8WOwxAcT+kzVV3Yy2Mfu61JLWjSLHrzMGR8xeuEmFo1M+fYXtWCJpdrt6dl1/1r43qXZky3rh
tKi5Krr3n9rs0Dk5d7R2zXxwbBdnTTjWh3ANJg/SINjYXcjcNC1ocdbgjaYjRV8Kwdz59F5ieWdw
4qNJ6XjLGa9hYBrsmZhOB/tBh7+Ss0ERA2Uz2Sx5duNgbFGKHoddFHT3weVFHSdDquxjIfKn3S9i
OOYTmD+D6Oo2iyxGxOlz43NLm/Fby+U97y8/FlTxuY4iJ+ahSns0c9n6DpL6/OUD7z1/W0I+BmwA
1akQQ9GVRNKeJJwC0pn3FycXYbxTQvJJPCYXcl1L4yF5oXTSIzAIZcrAXNhIAB2kh0QbJ6WvrJK2
xgerftJ0UkF7iTAkJPP2D/vykuYaATsJc+oYMLx8yfTiHFwpXOf3SwqWzXftf2NRJBepvRmsm8XL
oQrnXCKE/787QgiWzbIU+kfbgzTDHPOHxguk0gzaNYCXXbrcEO7oEs24sT1au1ZllcLS0RiRCIUX
YJUW4CyzYA2H/3D3N+pY83FmC2q2LAu1Pz1JCGRoBVU1xa9Z0TGhBVAv07zmbV3Xed2mK/wbYDSK
YaHvaVipH/kbwnI7/yE/xAYahllPztHfco6GwtlYGWR7z3CQsZz3hrPCy6vrnHq7Zmf2ANnaO5LQ
EPbJIl0gwqgNvzCxrxJpIgCljAMl89UTy1tyYRmLoJPdwKGlLWRWoggC3txKCrZUjN7ZNa6Pqg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22BD13260053D80"
last-modified: Thu, 12 Nov 2026 00:45:00 GMT
content-md5: N2h6vC5QPZw/D9ASnr7ebQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c8b645c0-1b9c-468d-9b59-ecae784e4934
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-1b32d909-03f7-2bce-a833-d8a5e40f180f/baz

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
PrDKvL4tEOY+IG1/hJU54HcAbUX8o7HAPOGODsSPPwAGXBPt217H3MlL3daWT6cT+vcu5KHTEpr+
CYDcngEir+FseCeCSwUZOJF7scbbKuw6exTMYFteM0p479Hd6j3HKC31KdZ/kK/yFKsQV2DUI96T
oiPsVU6FDkXdCVs0O05UtIiY5QEWu+pl2kywTdzppMzySkcZ29PfbxqRoYdTvdlcvKPXOz3dfOc5
h3sC1cBp82SPQfAGOti1uXXnhRliEhxyU5E5EmiOFc1g31NY3JpZJ60ixHzoVoHKIYLH9vfN13Re
j4IvMOH7ACwjpluFXdzbjV1rP02givwQbvDmxh/Vkgff+UwYKvfMJ8RPxa8lRcSl7GiaYZgnvgWF
HsHxFTkNTRRTpWSPw2NlnxiJUMRN6ikrQNq2OzBvtzpGkgs22hGKQneb0Z9fFSkFNMJ/nW1BODSX
xdRfVhHj5O0pSTBXL8QG/g5NsRiKzCuwsQdu8BrNBVrXnhU9K+tluO2xNsz5rQX9eJ5e84YbDPmp
rqUKdfPTW0PVgJCvydIj5/kr2ZVetgMCcHd7bhLUvJIck31FW0P53dqJIy10Tq/MOwuN7zNjSveh
CAR8WOwxAcT+kzVV3Yy2Mfu61JLWjSLHrzMGR8xeuEmFo1M+fYXtWCJpdrt6dl1/1r43qXZky3rh
tKi5Krr3n9rs0Dk5d7R2zXxwbBdnTTjWh3ANJg/SINjYXcjcNC1ocdbgjaYjRV8Kwdz59F5ieWdw
4qNJ6XjLGa9hYBrsmZhOB/tBh7+Ss0ERA2Uz2Sx5duNgbFGKHoddFHT3weVFHSdDquxjIfKn3S9i
OOYTmD+D6Oo2iyxGxOlz43NLm/Fby+U97y8/FlTxuY4iJ+ahSns0c9n6DpL6/OUD7z1/W0I+BmwA
1akQQ9GVRNKeJJwC0pn3FycXYbxTQvJJPCYXcl1L4yF5oXTSIzAIZcrAXNhIAB2kh0QbJ6WvrJK2
xgerftJ0UkF7iTAkJPP2D/vykuYaATsJc+oYMLx8yfTiHFwpXOf3SwqWzXftf2NRJBepvRmsm8XL
oQrnXCKE/787QgiWzbIU+kfbgzTDHPOHxguk0gzaNYCXXbrcEO7oEs24sT1au1ZllcLS0RiRCIUX
YJUW4CyzYA2H/3D3N+pY83FmC2q2LAu1Pz1JCGRoBVU1xa9Z0TGhBVAv07zmbV3Xed2mK/wbYDSK
YaHvaVipH/kbwnI7/yE/xAYahllPztHfco6GwtlYGWR7z3CQsZz3hrPCy6vrnHq7Zmf2ANnaO5LQ
EPbJIl0gwqgNvzCxrxJpIgCljAMl89UTy1tyYRmLoJPdwKGlLWRWoggC3txKCrZUjN7ZNa6Pqg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DA6B57459AA570"
last-modified: Thu, 12 Nov 2026 00:45:00 GMT
content-md5: N2h6vC5QPZw/D9ASnr7ebQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 952c86ff-eda7-45ed-88a4-55090e3dddaa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-1b32d909-03f7-2bce-a833-d8a5e40f180f/foo/foo

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
PrDKvL4tEOY+IG1/hJU54HcAbUX8o7HAPOGODsSPPwAGXBPt217H3MlL3daWT6cT+vcu5KHTEpr+
CYDcngEir+FseCeCSwUZOJF7scbbKuw6exTMYFteM0p479Hd6j3HKC31KdZ/kK/yFKsQV2DUI96T
oiPsVU6FDkXdCVs0O05UtIiY5QEWu+pl2kywTdzppMzySkcZ29PfbxqRoYdTvdlcvKPXOz3dfOc5
h3sC1cBp82SPQfAGOti1uXXnhRliEhxyU5E5EmiOFc1g31NY3JpZJ60ixHzoVoHKIYLH9vfN13Re
j4IvMOH7ACwjpluFXdzbjV1rP02givwQbvDmxh/Vkgff+UwYKvfMJ8RPxa8lRcSl7GiaYZgnvgWF
HsHxFTkNTRRTpWSPw2NlnxiJUMRN6ikrQNq2OzBvtzpGkgs22hGKQneb0Z9fFSkFNMJ/nW1BODSX
xdRfVhHj5O0pSTBXL8QG/g5NsRiKzCuwsQdu8BrNBVrXnhU9K+tluO2xNsz5rQX9eJ5e84YbDPmp
rqUKdfPTW0PVgJCvydIj5/kr2ZVetgMCcHd7bhLUvJIck31FW0P53dqJIy10Tq/MOwuN7zNjSveh
CAR8WOwxAcT+kzVV3Yy2Mfu61JLWjSLHrzMGR8xeuEmFo1M+fYXtWCJpdrt6dl1/1r43qXZky3rh
tKi5Krr3n9rs0Dk5d7R2zXxwbBdnTTjWh3ANJg/SINjYXcjcNC1ocdbgjaYjRV8Kwdz59F5ieWdw
4qNJ6XjLGa9hYBrsmZhOB/tBh7+Ss0ERA2Uz2Sx5duNgbFGKHoddFHT3weVFHSdDquxjIfKn3S9i
OOYTmD+D6Oo2iyxGxOlz43NLm/Fby+U97y8/FlTxuY4iJ+ahSns0c9n6DpL6/OUD7z1/W0I+BmwA
1akQQ9GVRNKeJJwC0pn3FycXYbxTQvJJPCYXcl1L4yF5oXTSIzAIZcrAXNhIAB2kh0QbJ6WvrJK2
xgerftJ0UkF7iTAkJPP2D/vykuYaATsJc+oYMLx8yfTiHFwpXOf3SwqWzXftf2NRJBepvRmsm8XL
oQrnXCKE/787QgiWzbIU+kfbgzTDHPOHxguk0gzaNYCXXbrcEO7oEs24sT1au1ZllcLS0RiRCIUX
YJUW4CyzYA2H/3D3N+pY83FmC2q2LAu1Pz1JCGRoBVU1xa9Z0TGhBVAv07zmbV3Xed2mK/wbYDSK
YaHvaVipH/kbwnI7/yE/xAYahllPztHfco6GwtlYGWR7z3CQsZz3hrPCy6vrnHq7Zmf2ANnaO5LQ
EPbJIl0gwqgNvzCxrxJpIgCljAMl89UTy1tyYRmLoJPdwKGlLWRWoggC3txKCrZUjN7ZNa6Pqg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24C7398E0B69340"
last-modified: Thu, 12 Nov 2026 00:45:00 GMT
content-md5: N2h6vC5QPZw/D9ASnr7ebQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 65e01005-a349-47d2-a535-0b2243ca135b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-1b32d909-03f7-2bce-a833-d8a5e40f180f/foo/bar

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
PrDKvL4tEOY+IG1/hJU54HcAbUX8o7HAPOGODsSPPwAGXBPt217H3MlL3daWT6cT+vcu5KHTEpr+
CYDcngEir+FseCeCSwUZOJF7scbbKuw6exTMYFteM0p479Hd6j3HKC31KdZ/kK/yFKsQV2DUI96T
oiPsVU6FDkXdCVs0O05UtIiY5QEWu+pl2kywTdzppMzySkcZ29PfbxqRoYdTvdlcvKPXOz3dfOc5
h3sC1cBp82SPQfAGOti1uXXnhRliEhxyU5E5EmiOFc1g31NY3JpZJ60ixHzoVoHKIYLH9vfN13Re
j4IvMOH7ACwjpluFXdzbjV1rP02givwQbvDmxh/Vkgff+UwYKvfMJ8RPxa8lRcSl7GiaYZgnvgWF
HsHxFTkNTRRTpWSPw2NlnxiJUMRN6ikrQNq2OzBvtzpGkgs22hGKQneb0Z9fFSkFNMJ/nW1BODSX
xdRfVhHj5O0pSTBXL8QG/g5NsRiKzCuwsQdu8BrNBVrXnhU9K+tluO2xNsz5rQX9eJ5e84YbDPmp
rqUKdfPTW0PVgJCvydIj5/kr2ZVetgMCcHd7bhLUvJIck31FW0P53dqJIy10Tq/MOwuN7zNjSveh
CAR8WOwxAcT+kzVV3Yy2Mfu61JLWjSLHrzMGR8xeuEmFo1M+fYXtWCJpdrt6dl1/1r43qXZky3rh
tKi5Krr3n9rs0Dk5d7R2zXxwbBdnTTjWh3ANJg/SINjYXcjcNC1ocdbgjaYjRV8Kwdz59F5ieWdw
4qNJ6XjLGa9hYBrsmZhOB/tBh7+Ss0ERA2Uz2Sx5duNgbFGKHoddFHT3weVFHSdDquxjIfKn3S9i
OOYTmD+D6Oo2iyxGxOlz43NLm/Fby+U97y8/FlTxuY4iJ+ahSns0c9n6DpL6/OUD7z1/W0I+BmwA
1akQQ9GVRNKeJJwC0pn3FycXYbxTQvJJPCYXcl1L4yF5oXTSIzAIZcrAXNhIAB2kh0QbJ6WvrJK2
xgerftJ0UkF7iTAkJPP2D/vykuYaATsJc+oYMLx8yfTiHFwpXOf3SwqWzXftf2NRJBepvRmsm8XL
oQrnXCKE/787QgiWzbIU+kfbgzTDHPOHxguk0gzaNYCXXbrcEO7oEs24sT1au1ZllcLS0RiRCIUX
YJUW4CyzYA2H/3D3N+pY83FmC2q2LAu1Pz1JCGRoBVU1xa9Z0TGhBVAv07zmbV3Xed2mK/wbYDSK
YaHvaVipH/kbwnI7/yE/xAYahllPztHfco6GwtlYGWR7z3CQsZz3hrPCy6vrnHq7Zmf2ANnaO5LQ
EPbJIl0gwqgNvzCxrxJpIgCljAMl89UTy1tyYRmLoJPdwKGlLWRWoggC3txKCrZUjN7ZNa6Pqg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EAE486A9E5A690"
last-modified: Thu, 12 Nov 2026 00:45:00 GMT
content-md5: N2h6vC5QPZw/D9ASnr7ebQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e9799867-6868-42f1-bdfa-11daf8147b96
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-1b32d909-03f7-2bce-a833-d8a5e40f180f/baz/foo

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
PrDKvL4tEOY+IG1/hJU54HcAbUX8o7HAPOGODsSPPwAGXBPt217H3MlL3daWT6cT+vcu5KHTEpr+
CYDcngEir+FseCeCSwUZOJF7scbbKuw6exTMYFteM0p479Hd6j3HKC31KdZ/kK/yFKsQV2DUI96T
oiPsVU6FDkXdCVs0O05UtIiY5QEWu+pl2kywTdzppMzySkcZ29PfbxqRoYdTvdlcvKPXOz3dfOc5
h3sC1cBp82SPQfAGOti1uXXnhRliEhxyU5E5EmiOFc1g31NY3JpZJ60ixHzoVoHKIYLH9vfN13Re
j4IvMOH7ACwjpluFXdzbjV1rP02givwQbvDmxh/Vkgff+UwYKvfMJ8RPxa8lRcSl7GiaYZgnvgWF
HsHxFTkNTRRTpWSPw2NlnxiJUMRN6ikrQNq2OzBvtzpGkgs22hGKQneb0Z9fFSkFNMJ/nW1BODSX
xdRfVhHj5O0pSTBXL8QG/g5NsRiKzCuwsQdu8BrNBVrXnhU9K+tluO2xNsz5rQX9eJ5e84YbDPmp
rqUKdfPTW0PVgJCvydIj5/kr2ZVetgMCcHd7bhLUvJIck31FW0P53dqJIy10Tq/MOwuN7zNjSveh
CAR8WOwxAcT+kzVV3Yy2Mfu61JLWjSLHrzMGR8xeuEmFo1M+fYXtWCJpdrt6dl1/1r43qXZky3rh
tKi5Krr3n9rs0Dk5d7R2zXxwbBdnTTjWh3ANJg/SINjYXcjcNC1ocdbgjaYjRV8Kwdz59F5ieWdw
4qNJ6XjLGa9hYBrsmZhOB/tBh7+Ss0ERA2Uz2Sx5duNgbFGKHoddFHT3weVFHSdDquxjIfKn3S9i
OOYTmD+D6Oo2iyxGxOlz43NLm/Fby+U97y8/FlTxuY4iJ+ahSns0c9n6DpL6/OUD7z1/W0I+BmwA
1akQQ9GVRNKeJJwC0pn3FycXYbxTQvJJPCYXcl1L4yF5oXTSIzAIZcrAXNhIAB2kh0QbJ6WvrJK2
xgerftJ0UkF7iTAkJPP2D/vykuYaATsJc+oYMLx8yfTiHFwpXOf3SwqWzXftf2NRJBepvRmsm8XL
oQrnXCKE/787QgiWzbIU+kfbgzTDHPOHxguk0gzaNYCXXbrcEO7oEs24sT1au1ZllcLS0RiRCIUX
YJUW4CyzYA2H/3D3N+pY83FmC2q2LAu1Pz1JCGRoBVU1xa9Z0TGhBVAv07zmbV3Xed2mK/wbYDSK
YaHvaVipH/kbwnI7/yE/xAYahllPztHfco6GwtlYGWR7z3CQsZz3hrPCy6vrnHq7Zmf2ANnaO5LQ
EPbJIl0gwqgNvzCxrxJpIgCljAMl89UTy1tyYRmLoJPdwKGlLWRWoggC3txKCrZUjN7ZNa6Pqg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20D7F39DDD35A00"
last-modified: Thu, 12 Nov 2026 00:45:00 GMT
content-md5: N2h6vC5QPZw/D9ASnr7ebQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: da465cff-22b2-461d-8b13-7bd20989a780
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-1b32d909-03f7-2bce-a833-d8a5e40f180f/baz/foo/bar

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
PrDKvL4tEOY+IG1/hJU54HcAbUX8o7HAPOGODsSPPwAGXBPt217H3MlL3daWT6cT+vcu5KHTEpr+
CYDcngEir+FseCeCSwUZOJF7scbbKuw6exTMYFteM0p479Hd6j3HKC31KdZ/kK/yFKsQV2DUI96T
oiPsVU6FDkXdCVs0O05UtIiY5QEWu+pl2kywTdzppMzySkcZ29PfbxqRoYdTvdlcvKPXOz3dfOc5
h3sC1cBp82SPQfAGOti1uXXnhRliEhxyU5E5EmiOFc1g31NY3JpZJ60ixHzoVoHKIYLH9vfN13Re
j4IvMOH7ACwjpluFXdzbjV1rP02givwQbvDmxh/Vkgff+UwYKvfMJ8RPxa8lRcSl7GiaYZgnvgWF
HsHxFTkNTRRTpWSPw2NlnxiJUMRN6ikrQNq2OzBvtzpGkgs22hGKQneb0Z9fFSkFNMJ/nW1BODSX
xdRfVhHj5O0pSTBXL8QG/g5NsRiKzCuwsQdu8BrNBVrXnhU9K+tluO2xNsz5rQX9eJ5e84YbDPmp
rqUKdfPTW0PVgJCvydIj5/kr2ZVetgMCcHd7bhLUvJIck31FW0P53dqJIy10Tq/MOwuN7zNjSveh
CAR8WOwxAcT+kzVV3Yy2Mfu61JLWjSLHrzMGR8xeuEmFo1M+fYXtWCJpdrt6dl1/1r43qXZky3rh
tKi5Krr3n9rs0Dk5d7R2zXxwbBdnTTjWh3ANJg/SINjYXcjcNC1ocdbgjaYjRV8Kwdz59F5ieWdw
4qNJ6XjLGa9hYBrsmZhOB/tBh7+Ss0ERA2Uz2Sx5duNgbFGKHoddFHT3weVFHSdDquxjIfKn3S9i
OOYTmD+D6Oo2iyxGxOlz43NLm/Fby+U97y8/FlTxuY4iJ+ahSns0c9n6DpL6/OUD7z1/W0I+BmwA
1akQQ9GVRNKeJJwC0pn3FycXYbxTQvJJPCYXcl1L4yF5oXTSIzAIZcrAXNhIAB2kh0QbJ6WvrJK2
xgerftJ0UkF7iTAkJPP2D/vykuYaATsJc+oYMLx8yfTiHFwpXOf3SwqWzXftf2NRJBepvRmsm8XL
oQrnXCKE/787QgiWzbIU+kfbgzTDHPOHxguk0gzaNYCXXbrcEO7oEs24sT1au1ZllcLS0RiRCIUX
YJUW4CyzYA2H/3D3N+pY83FmC2q2LAu1Pz1JCGRoBVU1xa9Z0TGhBVAv07zmbV3Xed2mK/wbYDSK
YaHvaVipH/kbwnI7/yE/xAYahllPztHfco6GwtlYGWR7z3CQsZz3hrPCy6vrnHq7Zmf2ANnaO5LQ
EPbJIl0gwqgNvzCxrxJpIgCljAMl89UTy1tyYRmLoJPdwKGlLWRWoggC3txKCrZUjN7ZNa6Pqg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2303409E539D9A0"
last-modified: Thu, 12 Nov 2026 00:45:01 GMT
content-md5: N2h6vC5QPZw/D9ASnr7ebQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c4466764-a817-405c-b4bf-1a5412b0991f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-1b32d909-03f7-2bce-a833-d8a5e40f180f/baz/bar/foo

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
PrDKvL4tEOY+IG1/hJU54HcAbUX8o7HAPOGODsSPPwAGXBPt217H3MlL3daWT6cT+vcu5KHTEpr+
CYDcngEir+FseCeCSwUZOJF7scbbKuw6exTMYFteM0p479Hd6j3HKC31KdZ/kK/yFKsQV2DUI96T
oiPsVU6FDkXdCVs0O05UtIiY5QEWu+pl2kywTdzppMzySkcZ29PfbxqRoYdTvdlcvKPXOz3dfOc5
h3sC1cBp82SPQfAGOti1uXXnhRliEhxyU5E5EmiOFc1g31NY3JpZJ60ixHzoVoHKIYLH9vfN13Re
j4IvMOH7ACwjpluFXdzbjV1rP02givwQbvDmxh/Vkgff+UwYKvfMJ8RPxa8lRcSl7GiaYZgnvgWF
HsHxFTkNTRRTpWSPw2NlnxiJUMRN6ikrQNq2OzBvtzpGkgs22hGKQneb0Z9fFSkFNMJ/nW1BODSX
xdRfVhHj5O0pSTBXL8QG/g5NsRiKzCuwsQdu8BrNBVrXnhU9K+tluO2xNsz5rQX9eJ5e84YbDPmp
rqUKdfPTW0PVgJCvydIj5/kr2ZVetgMCcHd7bhLUvJIck31FW0P53dqJIy10Tq/MOwuN7zNjSveh
CAR8WOwxAcT+kzVV3Yy2Mfu61JLWjSLHrzMGR8xeuEmFo1M+fYXtWCJpdrt6dl1/1r43qXZky3rh
tKi5Krr3n9rs0Dk5d7R2zXxwbBdnTTjWh3ANJg/SINjYXcjcNC1ocdbgjaYjRV8Kwdz59F5ieWdw
4qNJ6XjLGa9hYBrsmZhOB/tBh7+Ss0ERA2Uz2Sx5duNgbFGKHoddFHT3weVFHSdDquxjIfKn3S9i
OOYTmD+D6Oo2iyxGxOlz43NLm/Fby+U97y8/FlTxuY4iJ+ahSns0c9n6DpL6/OUD7z1/W0I+BmwA
1akQQ9GVRNKeJJwC0pn3FycXYbxTQvJJPCYXcl1L4yF5oXTSIzAIZcrAXNhIAB2kh0QbJ6WvrJK2
xgerftJ0UkF7iTAkJPP2D/vykuYaATsJc+oYMLx8yfTiHFwpXOf3SwqWzXftf2NRJBepvRmsm8XL
oQrnXCKE/787QgiWzbIU+kfbgzTDHPOHxguk0gzaNYCXXbrcEO7oEs24sT1au1ZllcLS0RiRCIUX
YJUW4CyzYA2H/3D3N+pY83FmC2q2LAu1Pz1JCGRoBVU1xa9Z0TGhBVAv07zmbV3Xed2mK/wbYDSK
YaHvaVipH/kbwnI7/yE/xAYahllPztHfco6GwtlYGWR7z3CQsZz3hrPCy6vrnHq7Zmf2ANnaO5LQ
EPbJIl0gwqgNvzCxrxJpIgCljAMl89UTy1tyYRmLoJPdwKGlLWRWoggC3txKCrZUjN7ZNa6Pqg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CEECC6F3BCDC40"
last-modified: Thu, 12 Nov 2026 00:45:01 GMT
content-md5: N2h6vC5QPZw/D9ASnr7ebQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 174df693-c5c2-460e-a310-f49cd48481c3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-1b32d909-03f7-2bce-a833-d8a5e40f180f/foo/foo?comp=metadata

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
etag: "0x2109D4ADCB498E0"
last-modified: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c72b812c-d377-4cd9-893d-81753fee3957
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-1b32d909-03f7-2bce-a833-d8a5e40f180f?restype=container&comp=list&delimiter=%2F&prefix=foo

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
x-ms-request-id: 007379e3-1665-4879-875e-a9d35c017faf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-1b32d909-03f7-2bce-a833-d8a5e40f180f"><Prefix>foo</Prefix><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>foo/</Name></BlobPrefix><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:00 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:00 GMT</Last-Modified><Etag>0x2571919953213C0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>N2h6vC5QPZw/D9ASnr7ebQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:45:00 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-1b32d909-03f7-2bce-a833-d8a5e40f180f?restype=container

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
x-ms-request-id: ead6d55a-2e8f-4417-872f-ba349f20946f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

