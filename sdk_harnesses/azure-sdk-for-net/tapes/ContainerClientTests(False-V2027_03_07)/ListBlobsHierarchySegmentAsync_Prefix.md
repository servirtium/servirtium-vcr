## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-bfe90ac7-e1da-7c0d-a880-e2d96a20f0d9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_Prefix
now: 2026-11-12T00:43:56.2785685+00:00

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
etag: "0x1F2932070D86880"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 81663024-aec8-42bd-b8fb-c50da0b43fbb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-bfe90ac7-e1da-7c0d-a880-e2d96a20f0d9/foo

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
dTKMzP8ZRfHGA2jxA69rpN7FTMKI7wa0ExAgPEwmKLiEWjsQnfsyrsX3+dd5HHj5FD36pdQuUIUr
2Lju+Ailn9qvbalzWgfjk539kfYvO/eYJigOK4PkVgm15MRCRLW8UVn9ya7Phbk2FhE2ML+P/J3B
VtLglnRWyxegvXVCoU7nQD+cMXJIyaFu2BVxrSVJJugngO3j3Lvlpv2XLsdD83TDTu9/8soqeI0w
cb1e5R3xVpeNGyBgBGSEt4t0sZrZKuWgrl81yjMd/Adgsmr+hsHgptgvttdUYkqL+zs/tsfyV0fX
vja+u4xkcB4YAFH5hjDJkwrCqXQOTEwUqs743UZAbVsjJsiKIupLy0W5O2H5kXUKdSK9MK3SyXHq
qRG+a5LY2JL11l9oP3Efdt0uVBHqGxhY7mgjgj2tUFxWn3jZjV+z4WLPA7sVoTaxnbrPpHVgAI74
ZX0qtFZVSIUCEp/4Ruh+enOvGhdcQkwycuWC3azn9Z/q4CjhiSwMers2Eo+WuFbRUSkBseV2nCIx
90Jw0mrZGxwADWXAnPFHo6BcJi+9m7mOsYyD5kS5dEQFsJHpm6hRXfdylqrxEbU3ug5FGnXyc1yI
4SDeVjXYRpkhuutfXQf4Csk4SwUOnZ/WSys1dFnOEj01YLqHcwfCmU8Rz1fJ2F0GTQ+suihWekOB
BwoJotI/UqeuKvxNcJfCdbG2/c1IDXLOLyZKIlgU3+Z2BWv8ufZ80XyvG65gudx36UV2n3x1OPqY
O3Or9TBPmUoV1mssxry7OStRmPLEbXVK0jgSnj9pAMxxZH2D0NxMYIFjS+JxSyOIu2ZRJKAH083+
YSP4PPoLq9aeumI+N2hPBDhwYSKS2YYUiuPZGNssaZCwhW+5VCSGWJ8M05HBSoP9ASBol3Kra4ec
47IXMZL6cVDRjrL5lrAU6QiChgb1U0Bg3Be7xNIeBBnnHHBxbyYMEWFA77vQBGtvVK1pKOWBp49x
tlV7P6x+s4mZEXk/onridnSktGSEkNerS3AktNw0ZXThALnQkNG0wTwyNvLyL7Izh7Jw3fMr7SZ9
0PM8Wv6tZKsEXqHBEeWj8PInUVnluRy+8S0pxIiBtRKSUsDdeGc9hdJH7dAQcXXNze0AA5vMmBfX
fmjQg6AigqmPLr8lxXeL6syHnstLrn+4XPabgbF3xrmoBfn+bAExJGongEO2pwd1dBnORfpLjM/p
GCephgH3GGcFfL9+jH3LVXlhIy08ArTvJg2YqIG/XXkqFVPZh51pMGjbsCtI9+ebA++B6mmirBZz
umD0Xm/mRh5GU3cp8s7b9/PFYFGIpy8l/KWRPXMQh2k9Zc09ddH49GoMAaNwcRAhpfJ13UvE6w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x263CC1CF916CB00"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
content-md5: IHO1WKjMHWkTAApmdzRyGg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 145edf83-8170-4599-9a6e-d549ceb28391
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-bfe90ac7-e1da-7c0d-a880-e2d96a20f0d9/bar

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
dTKMzP8ZRfHGA2jxA69rpN7FTMKI7wa0ExAgPEwmKLiEWjsQnfsyrsX3+dd5HHj5FD36pdQuUIUr
2Lju+Ailn9qvbalzWgfjk539kfYvO/eYJigOK4PkVgm15MRCRLW8UVn9ya7Phbk2FhE2ML+P/J3B
VtLglnRWyxegvXVCoU7nQD+cMXJIyaFu2BVxrSVJJugngO3j3Lvlpv2XLsdD83TDTu9/8soqeI0w
cb1e5R3xVpeNGyBgBGSEt4t0sZrZKuWgrl81yjMd/Adgsmr+hsHgptgvttdUYkqL+zs/tsfyV0fX
vja+u4xkcB4YAFH5hjDJkwrCqXQOTEwUqs743UZAbVsjJsiKIupLy0W5O2H5kXUKdSK9MK3SyXHq
qRG+a5LY2JL11l9oP3Efdt0uVBHqGxhY7mgjgj2tUFxWn3jZjV+z4WLPA7sVoTaxnbrPpHVgAI74
ZX0qtFZVSIUCEp/4Ruh+enOvGhdcQkwycuWC3azn9Z/q4CjhiSwMers2Eo+WuFbRUSkBseV2nCIx
90Jw0mrZGxwADWXAnPFHo6BcJi+9m7mOsYyD5kS5dEQFsJHpm6hRXfdylqrxEbU3ug5FGnXyc1yI
4SDeVjXYRpkhuutfXQf4Csk4SwUOnZ/WSys1dFnOEj01YLqHcwfCmU8Rz1fJ2F0GTQ+suihWekOB
BwoJotI/UqeuKvxNcJfCdbG2/c1IDXLOLyZKIlgU3+Z2BWv8ufZ80XyvG65gudx36UV2n3x1OPqY
O3Or9TBPmUoV1mssxry7OStRmPLEbXVK0jgSnj9pAMxxZH2D0NxMYIFjS+JxSyOIu2ZRJKAH083+
YSP4PPoLq9aeumI+N2hPBDhwYSKS2YYUiuPZGNssaZCwhW+5VCSGWJ8M05HBSoP9ASBol3Kra4ec
47IXMZL6cVDRjrL5lrAU6QiChgb1U0Bg3Be7xNIeBBnnHHBxbyYMEWFA77vQBGtvVK1pKOWBp49x
tlV7P6x+s4mZEXk/onridnSktGSEkNerS3AktNw0ZXThALnQkNG0wTwyNvLyL7Izh7Jw3fMr7SZ9
0PM8Wv6tZKsEXqHBEeWj8PInUVnluRy+8S0pxIiBtRKSUsDdeGc9hdJH7dAQcXXNze0AA5vMmBfX
fmjQg6AigqmPLr8lxXeL6syHnstLrn+4XPabgbF3xrmoBfn+bAExJGongEO2pwd1dBnORfpLjM/p
GCephgH3GGcFfL9+jH3LVXlhIy08ArTvJg2YqIG/XXkqFVPZh51pMGjbsCtI9+ebA++B6mmirBZz
umD0Xm/mRh5GU3cp8s7b9/PFYFGIpy8l/KWRPXMQh2k9Zc09ddH49GoMAaNwcRAhpfJ13UvE6w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25BDF7D93BC4EA0"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
content-md5: IHO1WKjMHWkTAApmdzRyGg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1caf29ba-b5b1-423e-8ed0-a3577c5c0ff6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-bfe90ac7-e1da-7c0d-a880-e2d96a20f0d9/baz

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
dTKMzP8ZRfHGA2jxA69rpN7FTMKI7wa0ExAgPEwmKLiEWjsQnfsyrsX3+dd5HHj5FD36pdQuUIUr
2Lju+Ailn9qvbalzWgfjk539kfYvO/eYJigOK4PkVgm15MRCRLW8UVn9ya7Phbk2FhE2ML+P/J3B
VtLglnRWyxegvXVCoU7nQD+cMXJIyaFu2BVxrSVJJugngO3j3Lvlpv2XLsdD83TDTu9/8soqeI0w
cb1e5R3xVpeNGyBgBGSEt4t0sZrZKuWgrl81yjMd/Adgsmr+hsHgptgvttdUYkqL+zs/tsfyV0fX
vja+u4xkcB4YAFH5hjDJkwrCqXQOTEwUqs743UZAbVsjJsiKIupLy0W5O2H5kXUKdSK9MK3SyXHq
qRG+a5LY2JL11l9oP3Efdt0uVBHqGxhY7mgjgj2tUFxWn3jZjV+z4WLPA7sVoTaxnbrPpHVgAI74
ZX0qtFZVSIUCEp/4Ruh+enOvGhdcQkwycuWC3azn9Z/q4CjhiSwMers2Eo+WuFbRUSkBseV2nCIx
90Jw0mrZGxwADWXAnPFHo6BcJi+9m7mOsYyD5kS5dEQFsJHpm6hRXfdylqrxEbU3ug5FGnXyc1yI
4SDeVjXYRpkhuutfXQf4Csk4SwUOnZ/WSys1dFnOEj01YLqHcwfCmU8Rz1fJ2F0GTQ+suihWekOB
BwoJotI/UqeuKvxNcJfCdbG2/c1IDXLOLyZKIlgU3+Z2BWv8ufZ80XyvG65gudx36UV2n3x1OPqY
O3Or9TBPmUoV1mssxry7OStRmPLEbXVK0jgSnj9pAMxxZH2D0NxMYIFjS+JxSyOIu2ZRJKAH083+
YSP4PPoLq9aeumI+N2hPBDhwYSKS2YYUiuPZGNssaZCwhW+5VCSGWJ8M05HBSoP9ASBol3Kra4ec
47IXMZL6cVDRjrL5lrAU6QiChgb1U0Bg3Be7xNIeBBnnHHBxbyYMEWFA77vQBGtvVK1pKOWBp49x
tlV7P6x+s4mZEXk/onridnSktGSEkNerS3AktNw0ZXThALnQkNG0wTwyNvLyL7Izh7Jw3fMr7SZ9
0PM8Wv6tZKsEXqHBEeWj8PInUVnluRy+8S0pxIiBtRKSUsDdeGc9hdJH7dAQcXXNze0AA5vMmBfX
fmjQg6AigqmPLr8lxXeL6syHnstLrn+4XPabgbF3xrmoBfn+bAExJGongEO2pwd1dBnORfpLjM/p
GCephgH3GGcFfL9+jH3LVXlhIy08ArTvJg2YqIG/XXkqFVPZh51pMGjbsCtI9+ebA++B6mmirBZz
umD0Xm/mRh5GU3cp8s7b9/PFYFGIpy8l/KWRPXMQh2k9Zc09ddH49GoMAaNwcRAhpfJ13UvE6w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25B46143A229280"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
content-md5: IHO1WKjMHWkTAApmdzRyGg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a59ff56b-1a3f-4bf9-9f25-ec48cd62f751
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-bfe90ac7-e1da-7c0d-a880-e2d96a20f0d9/foo/foo

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
dTKMzP8ZRfHGA2jxA69rpN7FTMKI7wa0ExAgPEwmKLiEWjsQnfsyrsX3+dd5HHj5FD36pdQuUIUr
2Lju+Ailn9qvbalzWgfjk539kfYvO/eYJigOK4PkVgm15MRCRLW8UVn9ya7Phbk2FhE2ML+P/J3B
VtLglnRWyxegvXVCoU7nQD+cMXJIyaFu2BVxrSVJJugngO3j3Lvlpv2XLsdD83TDTu9/8soqeI0w
cb1e5R3xVpeNGyBgBGSEt4t0sZrZKuWgrl81yjMd/Adgsmr+hsHgptgvttdUYkqL+zs/tsfyV0fX
vja+u4xkcB4YAFH5hjDJkwrCqXQOTEwUqs743UZAbVsjJsiKIupLy0W5O2H5kXUKdSK9MK3SyXHq
qRG+a5LY2JL11l9oP3Efdt0uVBHqGxhY7mgjgj2tUFxWn3jZjV+z4WLPA7sVoTaxnbrPpHVgAI74
ZX0qtFZVSIUCEp/4Ruh+enOvGhdcQkwycuWC3azn9Z/q4CjhiSwMers2Eo+WuFbRUSkBseV2nCIx
90Jw0mrZGxwADWXAnPFHo6BcJi+9m7mOsYyD5kS5dEQFsJHpm6hRXfdylqrxEbU3ug5FGnXyc1yI
4SDeVjXYRpkhuutfXQf4Csk4SwUOnZ/WSys1dFnOEj01YLqHcwfCmU8Rz1fJ2F0GTQ+suihWekOB
BwoJotI/UqeuKvxNcJfCdbG2/c1IDXLOLyZKIlgU3+Z2BWv8ufZ80XyvG65gudx36UV2n3x1OPqY
O3Or9TBPmUoV1mssxry7OStRmPLEbXVK0jgSnj9pAMxxZH2D0NxMYIFjS+JxSyOIu2ZRJKAH083+
YSP4PPoLq9aeumI+N2hPBDhwYSKS2YYUiuPZGNssaZCwhW+5VCSGWJ8M05HBSoP9ASBol3Kra4ec
47IXMZL6cVDRjrL5lrAU6QiChgb1U0Bg3Be7xNIeBBnnHHBxbyYMEWFA77vQBGtvVK1pKOWBp49x
tlV7P6x+s4mZEXk/onridnSktGSEkNerS3AktNw0ZXThALnQkNG0wTwyNvLyL7Izh7Jw3fMr7SZ9
0PM8Wv6tZKsEXqHBEeWj8PInUVnluRy+8S0pxIiBtRKSUsDdeGc9hdJH7dAQcXXNze0AA5vMmBfX
fmjQg6AigqmPLr8lxXeL6syHnstLrn+4XPabgbF3xrmoBfn+bAExJGongEO2pwd1dBnORfpLjM/p
GCephgH3GGcFfL9+jH3LVXlhIy08ArTvJg2YqIG/XXkqFVPZh51pMGjbsCtI9+ebA++B6mmirBZz
umD0Xm/mRh5GU3cp8s7b9/PFYFGIpy8l/KWRPXMQh2k9Zc09ddH49GoMAaNwcRAhpfJ13UvE6w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D525A43A3C1550"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
content-md5: IHO1WKjMHWkTAApmdzRyGg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af767e8e-4725-44c8-8892-087d3ff0e5f9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-bfe90ac7-e1da-7c0d-a880-e2d96a20f0d9/foo/bar

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
dTKMzP8ZRfHGA2jxA69rpN7FTMKI7wa0ExAgPEwmKLiEWjsQnfsyrsX3+dd5HHj5FD36pdQuUIUr
2Lju+Ailn9qvbalzWgfjk539kfYvO/eYJigOK4PkVgm15MRCRLW8UVn9ya7Phbk2FhE2ML+P/J3B
VtLglnRWyxegvXVCoU7nQD+cMXJIyaFu2BVxrSVJJugngO3j3Lvlpv2XLsdD83TDTu9/8soqeI0w
cb1e5R3xVpeNGyBgBGSEt4t0sZrZKuWgrl81yjMd/Adgsmr+hsHgptgvttdUYkqL+zs/tsfyV0fX
vja+u4xkcB4YAFH5hjDJkwrCqXQOTEwUqs743UZAbVsjJsiKIupLy0W5O2H5kXUKdSK9MK3SyXHq
qRG+a5LY2JL11l9oP3Efdt0uVBHqGxhY7mgjgj2tUFxWn3jZjV+z4WLPA7sVoTaxnbrPpHVgAI74
ZX0qtFZVSIUCEp/4Ruh+enOvGhdcQkwycuWC3azn9Z/q4CjhiSwMers2Eo+WuFbRUSkBseV2nCIx
90Jw0mrZGxwADWXAnPFHo6BcJi+9m7mOsYyD5kS5dEQFsJHpm6hRXfdylqrxEbU3ug5FGnXyc1yI
4SDeVjXYRpkhuutfXQf4Csk4SwUOnZ/WSys1dFnOEj01YLqHcwfCmU8Rz1fJ2F0GTQ+suihWekOB
BwoJotI/UqeuKvxNcJfCdbG2/c1IDXLOLyZKIlgU3+Z2BWv8ufZ80XyvG65gudx36UV2n3x1OPqY
O3Or9TBPmUoV1mssxry7OStRmPLEbXVK0jgSnj9pAMxxZH2D0NxMYIFjS+JxSyOIu2ZRJKAH083+
YSP4PPoLq9aeumI+N2hPBDhwYSKS2YYUiuPZGNssaZCwhW+5VCSGWJ8M05HBSoP9ASBol3Kra4ec
47IXMZL6cVDRjrL5lrAU6QiChgb1U0Bg3Be7xNIeBBnnHHBxbyYMEWFA77vQBGtvVK1pKOWBp49x
tlV7P6x+s4mZEXk/onridnSktGSEkNerS3AktNw0ZXThALnQkNG0wTwyNvLyL7Izh7Jw3fMr7SZ9
0PM8Wv6tZKsEXqHBEeWj8PInUVnluRy+8S0pxIiBtRKSUsDdeGc9hdJH7dAQcXXNze0AA5vMmBfX
fmjQg6AigqmPLr8lxXeL6syHnstLrn+4XPabgbF3xrmoBfn+bAExJGongEO2pwd1dBnORfpLjM/p
GCephgH3GGcFfL9+jH3LVXlhIy08ArTvJg2YqIG/XXkqFVPZh51pMGjbsCtI9+ebA++B6mmirBZz
umD0Xm/mRh5GU3cp8s7b9/PFYFGIpy8l/KWRPXMQh2k9Zc09ddH49GoMAaNwcRAhpfJ13UvE6w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26351B5DB4B9040"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
content-md5: IHO1WKjMHWkTAApmdzRyGg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 299c8fb0-7835-4c87-b016-621eabf41d41
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-bfe90ac7-e1da-7c0d-a880-e2d96a20f0d9/baz/foo

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
dTKMzP8ZRfHGA2jxA69rpN7FTMKI7wa0ExAgPEwmKLiEWjsQnfsyrsX3+dd5HHj5FD36pdQuUIUr
2Lju+Ailn9qvbalzWgfjk539kfYvO/eYJigOK4PkVgm15MRCRLW8UVn9ya7Phbk2FhE2ML+P/J3B
VtLglnRWyxegvXVCoU7nQD+cMXJIyaFu2BVxrSVJJugngO3j3Lvlpv2XLsdD83TDTu9/8soqeI0w
cb1e5R3xVpeNGyBgBGSEt4t0sZrZKuWgrl81yjMd/Adgsmr+hsHgptgvttdUYkqL+zs/tsfyV0fX
vja+u4xkcB4YAFH5hjDJkwrCqXQOTEwUqs743UZAbVsjJsiKIupLy0W5O2H5kXUKdSK9MK3SyXHq
qRG+a5LY2JL11l9oP3Efdt0uVBHqGxhY7mgjgj2tUFxWn3jZjV+z4WLPA7sVoTaxnbrPpHVgAI74
ZX0qtFZVSIUCEp/4Ruh+enOvGhdcQkwycuWC3azn9Z/q4CjhiSwMers2Eo+WuFbRUSkBseV2nCIx
90Jw0mrZGxwADWXAnPFHo6BcJi+9m7mOsYyD5kS5dEQFsJHpm6hRXfdylqrxEbU3ug5FGnXyc1yI
4SDeVjXYRpkhuutfXQf4Csk4SwUOnZ/WSys1dFnOEj01YLqHcwfCmU8Rz1fJ2F0GTQ+suihWekOB
BwoJotI/UqeuKvxNcJfCdbG2/c1IDXLOLyZKIlgU3+Z2BWv8ufZ80XyvG65gudx36UV2n3x1OPqY
O3Or9TBPmUoV1mssxry7OStRmPLEbXVK0jgSnj9pAMxxZH2D0NxMYIFjS+JxSyOIu2ZRJKAH083+
YSP4PPoLq9aeumI+N2hPBDhwYSKS2YYUiuPZGNssaZCwhW+5VCSGWJ8M05HBSoP9ASBol3Kra4ec
47IXMZL6cVDRjrL5lrAU6QiChgb1U0Bg3Be7xNIeBBnnHHBxbyYMEWFA77vQBGtvVK1pKOWBp49x
tlV7P6x+s4mZEXk/onridnSktGSEkNerS3AktNw0ZXThALnQkNG0wTwyNvLyL7Izh7Jw3fMr7SZ9
0PM8Wv6tZKsEXqHBEeWj8PInUVnluRy+8S0pxIiBtRKSUsDdeGc9hdJH7dAQcXXNze0AA5vMmBfX
fmjQg6AigqmPLr8lxXeL6syHnstLrn+4XPabgbF3xrmoBfn+bAExJGongEO2pwd1dBnORfpLjM/p
GCephgH3GGcFfL9+jH3LVXlhIy08ArTvJg2YqIG/XXkqFVPZh51pMGjbsCtI9+ebA++B6mmirBZz
umD0Xm/mRh5GU3cp8s7b9/PFYFGIpy8l/KWRPXMQh2k9Zc09ddH49GoMAaNwcRAhpfJ13UvE6w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26D4A379202F4C0"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
content-md5: IHO1WKjMHWkTAApmdzRyGg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b41cde60-e5c2-4669-bc08-9b9b0aedaf5f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-bfe90ac7-e1da-7c0d-a880-e2d96a20f0d9/baz/foo/bar

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
dTKMzP8ZRfHGA2jxA69rpN7FTMKI7wa0ExAgPEwmKLiEWjsQnfsyrsX3+dd5HHj5FD36pdQuUIUr
2Lju+Ailn9qvbalzWgfjk539kfYvO/eYJigOK4PkVgm15MRCRLW8UVn9ya7Phbk2FhE2ML+P/J3B
VtLglnRWyxegvXVCoU7nQD+cMXJIyaFu2BVxrSVJJugngO3j3Lvlpv2XLsdD83TDTu9/8soqeI0w
cb1e5R3xVpeNGyBgBGSEt4t0sZrZKuWgrl81yjMd/Adgsmr+hsHgptgvttdUYkqL+zs/tsfyV0fX
vja+u4xkcB4YAFH5hjDJkwrCqXQOTEwUqs743UZAbVsjJsiKIupLy0W5O2H5kXUKdSK9MK3SyXHq
qRG+a5LY2JL11l9oP3Efdt0uVBHqGxhY7mgjgj2tUFxWn3jZjV+z4WLPA7sVoTaxnbrPpHVgAI74
ZX0qtFZVSIUCEp/4Ruh+enOvGhdcQkwycuWC3azn9Z/q4CjhiSwMers2Eo+WuFbRUSkBseV2nCIx
90Jw0mrZGxwADWXAnPFHo6BcJi+9m7mOsYyD5kS5dEQFsJHpm6hRXfdylqrxEbU3ug5FGnXyc1yI
4SDeVjXYRpkhuutfXQf4Csk4SwUOnZ/WSys1dFnOEj01YLqHcwfCmU8Rz1fJ2F0GTQ+suihWekOB
BwoJotI/UqeuKvxNcJfCdbG2/c1IDXLOLyZKIlgU3+Z2BWv8ufZ80XyvG65gudx36UV2n3x1OPqY
O3Or9TBPmUoV1mssxry7OStRmPLEbXVK0jgSnj9pAMxxZH2D0NxMYIFjS+JxSyOIu2ZRJKAH083+
YSP4PPoLq9aeumI+N2hPBDhwYSKS2YYUiuPZGNssaZCwhW+5VCSGWJ8M05HBSoP9ASBol3Kra4ec
47IXMZL6cVDRjrL5lrAU6QiChgb1U0Bg3Be7xNIeBBnnHHBxbyYMEWFA77vQBGtvVK1pKOWBp49x
tlV7P6x+s4mZEXk/onridnSktGSEkNerS3AktNw0ZXThALnQkNG0wTwyNvLyL7Izh7Jw3fMr7SZ9
0PM8Wv6tZKsEXqHBEeWj8PInUVnluRy+8S0pxIiBtRKSUsDdeGc9hdJH7dAQcXXNze0AA5vMmBfX
fmjQg6AigqmPLr8lxXeL6syHnstLrn+4XPabgbF3xrmoBfn+bAExJGongEO2pwd1dBnORfpLjM/p
GCephgH3GGcFfL9+jH3LVXlhIy08ArTvJg2YqIG/XXkqFVPZh51pMGjbsCtI9+ebA++B6mmirBZz
umD0Xm/mRh5GU3cp8s7b9/PFYFGIpy8l/KWRPXMQh2k9Zc09ddH49GoMAaNwcRAhpfJ13UvE6w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C2C61BFFE6E1B0"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
content-md5: IHO1WKjMHWkTAApmdzRyGg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ae29ed45-7135-420d-a63e-3e8b99e8279d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-bfe90ac7-e1da-7c0d-a880-e2d96a20f0d9/baz/bar/foo

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
dTKMzP8ZRfHGA2jxA69rpN7FTMKI7wa0ExAgPEwmKLiEWjsQnfsyrsX3+dd5HHj5FD36pdQuUIUr
2Lju+Ailn9qvbalzWgfjk539kfYvO/eYJigOK4PkVgm15MRCRLW8UVn9ya7Phbk2FhE2ML+P/J3B
VtLglnRWyxegvXVCoU7nQD+cMXJIyaFu2BVxrSVJJugngO3j3Lvlpv2XLsdD83TDTu9/8soqeI0w
cb1e5R3xVpeNGyBgBGSEt4t0sZrZKuWgrl81yjMd/Adgsmr+hsHgptgvttdUYkqL+zs/tsfyV0fX
vja+u4xkcB4YAFH5hjDJkwrCqXQOTEwUqs743UZAbVsjJsiKIupLy0W5O2H5kXUKdSK9MK3SyXHq
qRG+a5LY2JL11l9oP3Efdt0uVBHqGxhY7mgjgj2tUFxWn3jZjV+z4WLPA7sVoTaxnbrPpHVgAI74
ZX0qtFZVSIUCEp/4Ruh+enOvGhdcQkwycuWC3azn9Z/q4CjhiSwMers2Eo+WuFbRUSkBseV2nCIx
90Jw0mrZGxwADWXAnPFHo6BcJi+9m7mOsYyD5kS5dEQFsJHpm6hRXfdylqrxEbU3ug5FGnXyc1yI
4SDeVjXYRpkhuutfXQf4Csk4SwUOnZ/WSys1dFnOEj01YLqHcwfCmU8Rz1fJ2F0GTQ+suihWekOB
BwoJotI/UqeuKvxNcJfCdbG2/c1IDXLOLyZKIlgU3+Z2BWv8ufZ80XyvG65gudx36UV2n3x1OPqY
O3Or9TBPmUoV1mssxry7OStRmPLEbXVK0jgSnj9pAMxxZH2D0NxMYIFjS+JxSyOIu2ZRJKAH083+
YSP4PPoLq9aeumI+N2hPBDhwYSKS2YYUiuPZGNssaZCwhW+5VCSGWJ8M05HBSoP9ASBol3Kra4ec
47IXMZL6cVDRjrL5lrAU6QiChgb1U0Bg3Be7xNIeBBnnHHBxbyYMEWFA77vQBGtvVK1pKOWBp49x
tlV7P6x+s4mZEXk/onridnSktGSEkNerS3AktNw0ZXThALnQkNG0wTwyNvLyL7Izh7Jw3fMr7SZ9
0PM8Wv6tZKsEXqHBEeWj8PInUVnluRy+8S0pxIiBtRKSUsDdeGc9hdJH7dAQcXXNze0AA5vMmBfX
fmjQg6AigqmPLr8lxXeL6syHnstLrn+4XPabgbF3xrmoBfn+bAExJGongEO2pwd1dBnORfpLjM/p
GCephgH3GGcFfL9+jH3LVXlhIy08ArTvJg2YqIG/XXkqFVPZh51pMGjbsCtI9+ebA++B6mmirBZz
umD0Xm/mRh5GU3cp8s7b9/PFYFGIpy8l/KWRPXMQh2k9Zc09ddH49GoMAaNwcRAhpfJ13UvE6w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21A45D30D171D60"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
content-md5: IHO1WKjMHWkTAApmdzRyGg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 03a81441-1fe5-4abe-a507-7f2eae59a458
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-bfe90ac7-e1da-7c0d-a880-e2d96a20f0d9/foo/foo?comp=metadata

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
etag: "0x25D672DF83DEB20"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf8bfab8-5452-43ac-8723-d14643812197
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-bfe90ac7-e1da-7c0d-a880-e2d96a20f0d9?restype=container&comp=list&delimiter=%2F&prefix=foo

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
x-ms-request-id: 896f39f7-1b25-4a8e-9e58-a02244ee1302
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-bfe90ac7-e1da-7c0d-a880-e2d96a20f0d9"><Prefix>foo</Prefix><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>foo/</Name></BlobPrefix><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:56 GMT</Last-Modified><Etag>0x263CC1CF916CB00</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>IHO1WKjMHWkTAApmdzRyGg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:56 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-bfe90ac7-e1da-7c0d-a880-e2d96a20f0d9?restype=container

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
x-ms-request-id: b0ffa51b-7444-4a49-ac34-09f8720a6dbe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

