## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3759ef5f-5865-7709-d582-27b92d3d3ee5?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_StartFromEndBefore
now: 2026-11-12T00:44:01.2876738+00:00

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
etag: "0x1FBE388AE4AA610"
last-modified: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0731a36-1401-44a7-9276-4176fd329db0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3759ef5f-5865-7709-d582-27b92d3d3ee5/foo

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
uaWZM9gmz31gKIEFxCndwiQNLPZJnPovZt6Ei0vbLguCOAG5b++GOSDb1j3XA7OspGWUIBFImxyr
acz5oUQyhPl1g4snI1I0hvLVbcW8V2Mr2OblRw76OZzkDgUjjZjbqFFDYn8nhIASYJkeci5X7hJo
zchdTT3re0nvQxVMEPhZ+cVzePXkBFRm0uZ028dujR/zu7/QflsUWOc1N0Bqxk+gxHho43Ycg8lz
93pWdp+CgLb2WVU5iXtpXyAOrswU+wyX0xZOBamp1jf2XIfgveJHs7eKc2z5Zzv9/oNWDtX8X/tu
v6KINHsMTYIdQy30iaI9xvsViYegnmzbUQYmU8hi+fyLcv0/v347fibq3CQNCHXhGEfZ59Z0ziA2
rOJ05fq5u0kwaRak/gd82QphtcJIzUiRRTqBiBImFqTdCBKcx5grMCDa3J9ePBk/XQ3LExhe7t+a
46C/NzI3ClJxx/X14BFyNYWhbfCoMgghQSsEWgOMfhozAeT3bPjuotJN7XQkSnz7Wd2SvYDu8bCY
nvYGM69O5Unawd4tesmMssoeW0WT/fevCAEl+cCZRRAzX80C528i/gcrSYmezt4UBQq1z5ZrBKH+
VyuuKeuIQXzO+Rv7istb/Fw9Z7NuEDkjEfS143V5yFosA49EdNUcoggMz9XDGXs/WtM5LZztkEbx
ixj2010GVDDAzoY7F4eHIcWrYUBkX/d5domiP5q9P3NIU+m9Jc+qBnukAkv0BEJLsgzXQS8GjCsg
fV3TZBSWA44T8sSeyfz1AFvFwF2shHFHVoyO5f5EQsa9nKdy16FmDf+84BF+rekQ4kDTQMvOdPjr
jA6HBx2Pz6/94SxUgym6XrNd76RgyKijfgO+cAL77yiuh0uT3gbiLBFhgMy8u14XGeEYcIRUi8Nl
5IkZ0V6tAfEDpfzeJ4Cse8KS/kfc58Klp1cg436kWvyHLfp8yFuys3/auBZiOfJha/XCwYx7iPzH
dCoHjR5zX0sAVvmFMLJn4ErIAi6rQm5kvniJ4phvC6T9tFQwqiZhZljKYuL53DpCWuBBs4bNHDG8
o86l6n2zkEpUh3xeNjYkZ5vV4OCLa+I9Roe3LVgeMJgidAZXu3zbF9GYpFS+4ySqHUvq9ztRMDfs
Z6P2+2LxNVfjPMEvzasf+skO88aNf2NiDBAMNDhd0EPOalPY5Rtupm/92qZjek+fy/1yQj1xXuhA
k+5S5AEfhmx9YGJYRxWtoExXkKS8/5LAbWk66o0GXQxrl1EtHMFt3VQ65RrtR4PnxaLwGc1DhJNc
kneY5JvedwNW7K/Df4OL6rNQgRp40yXlUiXqFUQ+JxK+0IpJ1fi4XG4Xl1rUJEUeZS8a8wN55A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E01637DEA88920"
last-modified: Thu, 12 Nov 2026 00:44:01 GMT
content-md5: 87zJB5g+gcmbKYs7kI7Wag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0af1b8b-2c99-42a9-8ddb-92c8053d2e68
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-3759ef5f-5865-7709-d582-27b92d3d3ee5/bar

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
uaWZM9gmz31gKIEFxCndwiQNLPZJnPovZt6Ei0vbLguCOAG5b++GOSDb1j3XA7OspGWUIBFImxyr
acz5oUQyhPl1g4snI1I0hvLVbcW8V2Mr2OblRw76OZzkDgUjjZjbqFFDYn8nhIASYJkeci5X7hJo
zchdTT3re0nvQxVMEPhZ+cVzePXkBFRm0uZ028dujR/zu7/QflsUWOc1N0Bqxk+gxHho43Ycg8lz
93pWdp+CgLb2WVU5iXtpXyAOrswU+wyX0xZOBamp1jf2XIfgveJHs7eKc2z5Zzv9/oNWDtX8X/tu
v6KINHsMTYIdQy30iaI9xvsViYegnmzbUQYmU8hi+fyLcv0/v347fibq3CQNCHXhGEfZ59Z0ziA2
rOJ05fq5u0kwaRak/gd82QphtcJIzUiRRTqBiBImFqTdCBKcx5grMCDa3J9ePBk/XQ3LExhe7t+a
46C/NzI3ClJxx/X14BFyNYWhbfCoMgghQSsEWgOMfhozAeT3bPjuotJN7XQkSnz7Wd2SvYDu8bCY
nvYGM69O5Unawd4tesmMssoeW0WT/fevCAEl+cCZRRAzX80C528i/gcrSYmezt4UBQq1z5ZrBKH+
VyuuKeuIQXzO+Rv7istb/Fw9Z7NuEDkjEfS143V5yFosA49EdNUcoggMz9XDGXs/WtM5LZztkEbx
ixj2010GVDDAzoY7F4eHIcWrYUBkX/d5domiP5q9P3NIU+m9Jc+qBnukAkv0BEJLsgzXQS8GjCsg
fV3TZBSWA44T8sSeyfz1AFvFwF2shHFHVoyO5f5EQsa9nKdy16FmDf+84BF+rekQ4kDTQMvOdPjr
jA6HBx2Pz6/94SxUgym6XrNd76RgyKijfgO+cAL77yiuh0uT3gbiLBFhgMy8u14XGeEYcIRUi8Nl
5IkZ0V6tAfEDpfzeJ4Cse8KS/kfc58Klp1cg436kWvyHLfp8yFuys3/auBZiOfJha/XCwYx7iPzH
dCoHjR5zX0sAVvmFMLJn4ErIAi6rQm5kvniJ4phvC6T9tFQwqiZhZljKYuL53DpCWuBBs4bNHDG8
o86l6n2zkEpUh3xeNjYkZ5vV4OCLa+I9Roe3LVgeMJgidAZXu3zbF9GYpFS+4ySqHUvq9ztRMDfs
Z6P2+2LxNVfjPMEvzasf+skO88aNf2NiDBAMNDhd0EPOalPY5Rtupm/92qZjek+fy/1yQj1xXuhA
k+5S5AEfhmx9YGJYRxWtoExXkKS8/5LAbWk66o0GXQxrl1EtHMFt3VQ65RrtR4PnxaLwGc1DhJNc
kneY5JvedwNW7K/Df4OL6rNQgRp40yXlUiXqFUQ+JxK+0IpJ1fi4XG4Xl1rUJEUeZS8a8wN55A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x273522000305460"
last-modified: Thu, 12 Nov 2026 00:44:01 GMT
content-md5: 87zJB5g+gcmbKYs7kI7Wag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b5f1c281-f3cb-4548-ab34-d618347bf855
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-3759ef5f-5865-7709-d582-27b92d3d3ee5/baz

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
uaWZM9gmz31gKIEFxCndwiQNLPZJnPovZt6Ei0vbLguCOAG5b++GOSDb1j3XA7OspGWUIBFImxyr
acz5oUQyhPl1g4snI1I0hvLVbcW8V2Mr2OblRw76OZzkDgUjjZjbqFFDYn8nhIASYJkeci5X7hJo
zchdTT3re0nvQxVMEPhZ+cVzePXkBFRm0uZ028dujR/zu7/QflsUWOc1N0Bqxk+gxHho43Ycg8lz
93pWdp+CgLb2WVU5iXtpXyAOrswU+wyX0xZOBamp1jf2XIfgveJHs7eKc2z5Zzv9/oNWDtX8X/tu
v6KINHsMTYIdQy30iaI9xvsViYegnmzbUQYmU8hi+fyLcv0/v347fibq3CQNCHXhGEfZ59Z0ziA2
rOJ05fq5u0kwaRak/gd82QphtcJIzUiRRTqBiBImFqTdCBKcx5grMCDa3J9ePBk/XQ3LExhe7t+a
46C/NzI3ClJxx/X14BFyNYWhbfCoMgghQSsEWgOMfhozAeT3bPjuotJN7XQkSnz7Wd2SvYDu8bCY
nvYGM69O5Unawd4tesmMssoeW0WT/fevCAEl+cCZRRAzX80C528i/gcrSYmezt4UBQq1z5ZrBKH+
VyuuKeuIQXzO+Rv7istb/Fw9Z7NuEDkjEfS143V5yFosA49EdNUcoggMz9XDGXs/WtM5LZztkEbx
ixj2010GVDDAzoY7F4eHIcWrYUBkX/d5domiP5q9P3NIU+m9Jc+qBnukAkv0BEJLsgzXQS8GjCsg
fV3TZBSWA44T8sSeyfz1AFvFwF2shHFHVoyO5f5EQsa9nKdy16FmDf+84BF+rekQ4kDTQMvOdPjr
jA6HBx2Pz6/94SxUgym6XrNd76RgyKijfgO+cAL77yiuh0uT3gbiLBFhgMy8u14XGeEYcIRUi8Nl
5IkZ0V6tAfEDpfzeJ4Cse8KS/kfc58Klp1cg436kWvyHLfp8yFuys3/auBZiOfJha/XCwYx7iPzH
dCoHjR5zX0sAVvmFMLJn4ErIAi6rQm5kvniJ4phvC6T9tFQwqiZhZljKYuL53DpCWuBBs4bNHDG8
o86l6n2zkEpUh3xeNjYkZ5vV4OCLa+I9Roe3LVgeMJgidAZXu3zbF9GYpFS+4ySqHUvq9ztRMDfs
Z6P2+2LxNVfjPMEvzasf+skO88aNf2NiDBAMNDhd0EPOalPY5Rtupm/92qZjek+fy/1yQj1xXuhA
k+5S5AEfhmx9YGJYRxWtoExXkKS8/5LAbWk66o0GXQxrl1EtHMFt3VQ65RrtR4PnxaLwGc1DhJNc
kneY5JvedwNW7K/Df4OL6rNQgRp40yXlUiXqFUQ+JxK+0IpJ1fi4XG4Xl1rUJEUeZS8a8wN55A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26ABA236F4077C0"
last-modified: Thu, 12 Nov 2026 00:44:01 GMT
content-md5: 87zJB5g+gcmbKYs7kI7Wag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e74cfb32-9a17-49f5-8816-58faaff5b252
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-3759ef5f-5865-7709-d582-27b92d3d3ee5/foo/foo

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
uaWZM9gmz31gKIEFxCndwiQNLPZJnPovZt6Ei0vbLguCOAG5b++GOSDb1j3XA7OspGWUIBFImxyr
acz5oUQyhPl1g4snI1I0hvLVbcW8V2Mr2OblRw76OZzkDgUjjZjbqFFDYn8nhIASYJkeci5X7hJo
zchdTT3re0nvQxVMEPhZ+cVzePXkBFRm0uZ028dujR/zu7/QflsUWOc1N0Bqxk+gxHho43Ycg8lz
93pWdp+CgLb2WVU5iXtpXyAOrswU+wyX0xZOBamp1jf2XIfgveJHs7eKc2z5Zzv9/oNWDtX8X/tu
v6KINHsMTYIdQy30iaI9xvsViYegnmzbUQYmU8hi+fyLcv0/v347fibq3CQNCHXhGEfZ59Z0ziA2
rOJ05fq5u0kwaRak/gd82QphtcJIzUiRRTqBiBImFqTdCBKcx5grMCDa3J9ePBk/XQ3LExhe7t+a
46C/NzI3ClJxx/X14BFyNYWhbfCoMgghQSsEWgOMfhozAeT3bPjuotJN7XQkSnz7Wd2SvYDu8bCY
nvYGM69O5Unawd4tesmMssoeW0WT/fevCAEl+cCZRRAzX80C528i/gcrSYmezt4UBQq1z5ZrBKH+
VyuuKeuIQXzO+Rv7istb/Fw9Z7NuEDkjEfS143V5yFosA49EdNUcoggMz9XDGXs/WtM5LZztkEbx
ixj2010GVDDAzoY7F4eHIcWrYUBkX/d5domiP5q9P3NIU+m9Jc+qBnukAkv0BEJLsgzXQS8GjCsg
fV3TZBSWA44T8sSeyfz1AFvFwF2shHFHVoyO5f5EQsa9nKdy16FmDf+84BF+rekQ4kDTQMvOdPjr
jA6HBx2Pz6/94SxUgym6XrNd76RgyKijfgO+cAL77yiuh0uT3gbiLBFhgMy8u14XGeEYcIRUi8Nl
5IkZ0V6tAfEDpfzeJ4Cse8KS/kfc58Klp1cg436kWvyHLfp8yFuys3/auBZiOfJha/XCwYx7iPzH
dCoHjR5zX0sAVvmFMLJn4ErIAi6rQm5kvniJ4phvC6T9tFQwqiZhZljKYuL53DpCWuBBs4bNHDG8
o86l6n2zkEpUh3xeNjYkZ5vV4OCLa+I9Roe3LVgeMJgidAZXu3zbF9GYpFS+4ySqHUvq9ztRMDfs
Z6P2+2LxNVfjPMEvzasf+skO88aNf2NiDBAMNDhd0EPOalPY5Rtupm/92qZjek+fy/1yQj1xXuhA
k+5S5AEfhmx9YGJYRxWtoExXkKS8/5LAbWk66o0GXQxrl1EtHMFt3VQ65RrtR4PnxaLwGc1DhJNc
kneY5JvedwNW7K/Df4OL6rNQgRp40yXlUiXqFUQ+JxK+0IpJ1fi4XG4Xl1rUJEUeZS8a8wN55A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x274D3492EA64CE0"
last-modified: Thu, 12 Nov 2026 00:44:01 GMT
content-md5: 87zJB5g+gcmbKYs7kI7Wag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: afca9b5c-045e-43f0-804a-ca6a7a03b944
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-3759ef5f-5865-7709-d582-27b92d3d3ee5/foo/bar

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
uaWZM9gmz31gKIEFxCndwiQNLPZJnPovZt6Ei0vbLguCOAG5b++GOSDb1j3XA7OspGWUIBFImxyr
acz5oUQyhPl1g4snI1I0hvLVbcW8V2Mr2OblRw76OZzkDgUjjZjbqFFDYn8nhIASYJkeci5X7hJo
zchdTT3re0nvQxVMEPhZ+cVzePXkBFRm0uZ028dujR/zu7/QflsUWOc1N0Bqxk+gxHho43Ycg8lz
93pWdp+CgLb2WVU5iXtpXyAOrswU+wyX0xZOBamp1jf2XIfgveJHs7eKc2z5Zzv9/oNWDtX8X/tu
v6KINHsMTYIdQy30iaI9xvsViYegnmzbUQYmU8hi+fyLcv0/v347fibq3CQNCHXhGEfZ59Z0ziA2
rOJ05fq5u0kwaRak/gd82QphtcJIzUiRRTqBiBImFqTdCBKcx5grMCDa3J9ePBk/XQ3LExhe7t+a
46C/NzI3ClJxx/X14BFyNYWhbfCoMgghQSsEWgOMfhozAeT3bPjuotJN7XQkSnz7Wd2SvYDu8bCY
nvYGM69O5Unawd4tesmMssoeW0WT/fevCAEl+cCZRRAzX80C528i/gcrSYmezt4UBQq1z5ZrBKH+
VyuuKeuIQXzO+Rv7istb/Fw9Z7NuEDkjEfS143V5yFosA49EdNUcoggMz9XDGXs/WtM5LZztkEbx
ixj2010GVDDAzoY7F4eHIcWrYUBkX/d5domiP5q9P3NIU+m9Jc+qBnukAkv0BEJLsgzXQS8GjCsg
fV3TZBSWA44T8sSeyfz1AFvFwF2shHFHVoyO5f5EQsa9nKdy16FmDf+84BF+rekQ4kDTQMvOdPjr
jA6HBx2Pz6/94SxUgym6XrNd76RgyKijfgO+cAL77yiuh0uT3gbiLBFhgMy8u14XGeEYcIRUi8Nl
5IkZ0V6tAfEDpfzeJ4Cse8KS/kfc58Klp1cg436kWvyHLfp8yFuys3/auBZiOfJha/XCwYx7iPzH
dCoHjR5zX0sAVvmFMLJn4ErIAi6rQm5kvniJ4phvC6T9tFQwqiZhZljKYuL53DpCWuBBs4bNHDG8
o86l6n2zkEpUh3xeNjYkZ5vV4OCLa+I9Roe3LVgeMJgidAZXu3zbF9GYpFS+4ySqHUvq9ztRMDfs
Z6P2+2LxNVfjPMEvzasf+skO88aNf2NiDBAMNDhd0EPOalPY5Rtupm/92qZjek+fy/1yQj1xXuhA
k+5S5AEfhmx9YGJYRxWtoExXkKS8/5LAbWk66o0GXQxrl1EtHMFt3VQ65RrtR4PnxaLwGc1DhJNc
kneY5JvedwNW7K/Df4OL6rNQgRp40yXlUiXqFUQ+JxK+0IpJ1fi4XG4Xl1rUJEUeZS8a8wN55A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x274383E07D4D740"
last-modified: Thu, 12 Nov 2026 00:44:01 GMT
content-md5: 87zJB5g+gcmbKYs7kI7Wag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 45627a05-3043-430d-a651-51baf6405b88
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-3759ef5f-5865-7709-d582-27b92d3d3ee5/baz/foo

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
uaWZM9gmz31gKIEFxCndwiQNLPZJnPovZt6Ei0vbLguCOAG5b++GOSDb1j3XA7OspGWUIBFImxyr
acz5oUQyhPl1g4snI1I0hvLVbcW8V2Mr2OblRw76OZzkDgUjjZjbqFFDYn8nhIASYJkeci5X7hJo
zchdTT3re0nvQxVMEPhZ+cVzePXkBFRm0uZ028dujR/zu7/QflsUWOc1N0Bqxk+gxHho43Ycg8lz
93pWdp+CgLb2WVU5iXtpXyAOrswU+wyX0xZOBamp1jf2XIfgveJHs7eKc2z5Zzv9/oNWDtX8X/tu
v6KINHsMTYIdQy30iaI9xvsViYegnmzbUQYmU8hi+fyLcv0/v347fibq3CQNCHXhGEfZ59Z0ziA2
rOJ05fq5u0kwaRak/gd82QphtcJIzUiRRTqBiBImFqTdCBKcx5grMCDa3J9ePBk/XQ3LExhe7t+a
46C/NzI3ClJxx/X14BFyNYWhbfCoMgghQSsEWgOMfhozAeT3bPjuotJN7XQkSnz7Wd2SvYDu8bCY
nvYGM69O5Unawd4tesmMssoeW0WT/fevCAEl+cCZRRAzX80C528i/gcrSYmezt4UBQq1z5ZrBKH+
VyuuKeuIQXzO+Rv7istb/Fw9Z7NuEDkjEfS143V5yFosA49EdNUcoggMz9XDGXs/WtM5LZztkEbx
ixj2010GVDDAzoY7F4eHIcWrYUBkX/d5domiP5q9P3NIU+m9Jc+qBnukAkv0BEJLsgzXQS8GjCsg
fV3TZBSWA44T8sSeyfz1AFvFwF2shHFHVoyO5f5EQsa9nKdy16FmDf+84BF+rekQ4kDTQMvOdPjr
jA6HBx2Pz6/94SxUgym6XrNd76RgyKijfgO+cAL77yiuh0uT3gbiLBFhgMy8u14XGeEYcIRUi8Nl
5IkZ0V6tAfEDpfzeJ4Cse8KS/kfc58Klp1cg436kWvyHLfp8yFuys3/auBZiOfJha/XCwYx7iPzH
dCoHjR5zX0sAVvmFMLJn4ErIAi6rQm5kvniJ4phvC6T9tFQwqiZhZljKYuL53DpCWuBBs4bNHDG8
o86l6n2zkEpUh3xeNjYkZ5vV4OCLa+I9Roe3LVgeMJgidAZXu3zbF9GYpFS+4ySqHUvq9ztRMDfs
Z6P2+2LxNVfjPMEvzasf+skO88aNf2NiDBAMNDhd0EPOalPY5Rtupm/92qZjek+fy/1yQj1xXuhA
k+5S5AEfhmx9YGJYRxWtoExXkKS8/5LAbWk66o0GXQxrl1EtHMFt3VQ65RrtR4PnxaLwGc1DhJNc
kneY5JvedwNW7K/Df4OL6rNQgRp40yXlUiXqFUQ+JxK+0IpJ1fi4XG4Xl1rUJEUeZS8a8wN55A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FBFA61E8611340"
last-modified: Thu, 12 Nov 2026 00:44:01 GMT
content-md5: 87zJB5g+gcmbKYs7kI7Wag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 23e807c3-43a2-411c-b0b4-553067b7c14a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-3759ef5f-5865-7709-d582-27b92d3d3ee5/baz/foo/bar

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
uaWZM9gmz31gKIEFxCndwiQNLPZJnPovZt6Ei0vbLguCOAG5b++GOSDb1j3XA7OspGWUIBFImxyr
acz5oUQyhPl1g4snI1I0hvLVbcW8V2Mr2OblRw76OZzkDgUjjZjbqFFDYn8nhIASYJkeci5X7hJo
zchdTT3re0nvQxVMEPhZ+cVzePXkBFRm0uZ028dujR/zu7/QflsUWOc1N0Bqxk+gxHho43Ycg8lz
93pWdp+CgLb2WVU5iXtpXyAOrswU+wyX0xZOBamp1jf2XIfgveJHs7eKc2z5Zzv9/oNWDtX8X/tu
v6KINHsMTYIdQy30iaI9xvsViYegnmzbUQYmU8hi+fyLcv0/v347fibq3CQNCHXhGEfZ59Z0ziA2
rOJ05fq5u0kwaRak/gd82QphtcJIzUiRRTqBiBImFqTdCBKcx5grMCDa3J9ePBk/XQ3LExhe7t+a
46C/NzI3ClJxx/X14BFyNYWhbfCoMgghQSsEWgOMfhozAeT3bPjuotJN7XQkSnz7Wd2SvYDu8bCY
nvYGM69O5Unawd4tesmMssoeW0WT/fevCAEl+cCZRRAzX80C528i/gcrSYmezt4UBQq1z5ZrBKH+
VyuuKeuIQXzO+Rv7istb/Fw9Z7NuEDkjEfS143V5yFosA49EdNUcoggMz9XDGXs/WtM5LZztkEbx
ixj2010GVDDAzoY7F4eHIcWrYUBkX/d5domiP5q9P3NIU+m9Jc+qBnukAkv0BEJLsgzXQS8GjCsg
fV3TZBSWA44T8sSeyfz1AFvFwF2shHFHVoyO5f5EQsa9nKdy16FmDf+84BF+rekQ4kDTQMvOdPjr
jA6HBx2Pz6/94SxUgym6XrNd76RgyKijfgO+cAL77yiuh0uT3gbiLBFhgMy8u14XGeEYcIRUi8Nl
5IkZ0V6tAfEDpfzeJ4Cse8KS/kfc58Klp1cg436kWvyHLfp8yFuys3/auBZiOfJha/XCwYx7iPzH
dCoHjR5zX0sAVvmFMLJn4ErIAi6rQm5kvniJ4phvC6T9tFQwqiZhZljKYuL53DpCWuBBs4bNHDG8
o86l6n2zkEpUh3xeNjYkZ5vV4OCLa+I9Roe3LVgeMJgidAZXu3zbF9GYpFS+4ySqHUvq9ztRMDfs
Z6P2+2LxNVfjPMEvzasf+skO88aNf2NiDBAMNDhd0EPOalPY5Rtupm/92qZjek+fy/1yQj1xXuhA
k+5S5AEfhmx9YGJYRxWtoExXkKS8/5LAbWk66o0GXQxrl1EtHMFt3VQ65RrtR4PnxaLwGc1DhJNc
kneY5JvedwNW7K/Df4OL6rNQgRp40yXlUiXqFUQ+JxK+0IpJ1fi4XG4Xl1rUJEUeZS8a8wN55A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x206581352A90620"
last-modified: Thu, 12 Nov 2026 00:44:01 GMT
content-md5: 87zJB5g+gcmbKYs7kI7Wag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f467d181-affd-40ca-b730-30028af056c2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-3759ef5f-5865-7709-d582-27b92d3d3ee5/baz/bar/foo

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
uaWZM9gmz31gKIEFxCndwiQNLPZJnPovZt6Ei0vbLguCOAG5b++GOSDb1j3XA7OspGWUIBFImxyr
acz5oUQyhPl1g4snI1I0hvLVbcW8V2Mr2OblRw76OZzkDgUjjZjbqFFDYn8nhIASYJkeci5X7hJo
zchdTT3re0nvQxVMEPhZ+cVzePXkBFRm0uZ028dujR/zu7/QflsUWOc1N0Bqxk+gxHho43Ycg8lz
93pWdp+CgLb2WVU5iXtpXyAOrswU+wyX0xZOBamp1jf2XIfgveJHs7eKc2z5Zzv9/oNWDtX8X/tu
v6KINHsMTYIdQy30iaI9xvsViYegnmzbUQYmU8hi+fyLcv0/v347fibq3CQNCHXhGEfZ59Z0ziA2
rOJ05fq5u0kwaRak/gd82QphtcJIzUiRRTqBiBImFqTdCBKcx5grMCDa3J9ePBk/XQ3LExhe7t+a
46C/NzI3ClJxx/X14BFyNYWhbfCoMgghQSsEWgOMfhozAeT3bPjuotJN7XQkSnz7Wd2SvYDu8bCY
nvYGM69O5Unawd4tesmMssoeW0WT/fevCAEl+cCZRRAzX80C528i/gcrSYmezt4UBQq1z5ZrBKH+
VyuuKeuIQXzO+Rv7istb/Fw9Z7NuEDkjEfS143V5yFosA49EdNUcoggMz9XDGXs/WtM5LZztkEbx
ixj2010GVDDAzoY7F4eHIcWrYUBkX/d5domiP5q9P3NIU+m9Jc+qBnukAkv0BEJLsgzXQS8GjCsg
fV3TZBSWA44T8sSeyfz1AFvFwF2shHFHVoyO5f5EQsa9nKdy16FmDf+84BF+rekQ4kDTQMvOdPjr
jA6HBx2Pz6/94SxUgym6XrNd76RgyKijfgO+cAL77yiuh0uT3gbiLBFhgMy8u14XGeEYcIRUi8Nl
5IkZ0V6tAfEDpfzeJ4Cse8KS/kfc58Klp1cg436kWvyHLfp8yFuys3/auBZiOfJha/XCwYx7iPzH
dCoHjR5zX0sAVvmFMLJn4ErIAi6rQm5kvniJ4phvC6T9tFQwqiZhZljKYuL53DpCWuBBs4bNHDG8
o86l6n2zkEpUh3xeNjYkZ5vV4OCLa+I9Roe3LVgeMJgidAZXu3zbF9GYpFS+4ySqHUvq9ztRMDfs
Z6P2+2LxNVfjPMEvzasf+skO88aNf2NiDBAMNDhd0EPOalPY5Rtupm/92qZjek+fy/1yQj1xXuhA
k+5S5AEfhmx9YGJYRxWtoExXkKS8/5LAbWk66o0GXQxrl1EtHMFt3VQ65RrtR4PnxaLwGc1DhJNc
kneY5JvedwNW7K/Df4OL6rNQgRp40yXlUiXqFUQ+JxK+0IpJ1fi4XG4Xl1rUJEUeZS8a8wN55A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CC596E1900F330"
last-modified: Thu, 12 Nov 2026 00:44:01 GMT
content-md5: 87zJB5g+gcmbKYs7kI7Wag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64052ac4-782f-44ff-b7e3-93047ba3a053
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-3759ef5f-5865-7709-d582-27b92d3d3ee5/foo/foo?comp=metadata

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
etag: "0x22A22558CF89F40"
last-modified: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9a73deac-8c1a-43d5-a482-a13b52c19711
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-3759ef5f-5865-7709-d582-27b92d3d3ee5?restype=container&comp=list&delimiter=%2F&startFrom=foo&endBefore=foo%2Ffoo

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
x-ms-request-id: e0b2ab2a-6fea-4348-8794-8a3f505633b1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-3759ef5f-5865-7709-d582-27b92d3d3ee5"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>foo/</Name></BlobPrefix><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:01 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:01 GMT</Last-Modified><Etag>0x1E01637DEA88920</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>87zJB5g+gcmbKYs7kI7Wag==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:01 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-3759ef5f-5865-7709-d582-27b92d3d3ee5?restype=container

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
x-ms-request-id: f61549cb-44ea-4011-9bdb-fee9b7ed29b7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

