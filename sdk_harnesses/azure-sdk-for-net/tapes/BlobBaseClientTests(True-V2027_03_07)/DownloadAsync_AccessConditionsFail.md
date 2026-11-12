## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1266ab24-8548-dca8-a512-64259e4602de?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_AccessConditionsFail
now: 2026-11-12T00:47:51.0395684+00:00

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
etag: "0x24958CF203DB1A0"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e9075026-702b-472d-96b7-3f69aaedde9a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1266ab24-8548-dca8-a512-64259e4602de/test-blob-65e7de58-1112-fd9c-8ba8-cd699a3964ec

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
UqJl7oAi2PCtQSUz4U6GobK3zOkpblDhFPqnDLqVJ1++QlX5wL66AtN1ZQdgdPpWi8Nz53oYteRS
hNmFess1FxnGdZ75jOD0/MkWswlJgZ8AUID3IkDkpY1xpzzkNYgHQE3tmf9bXf/if+qwAgLaCQM5
hSlLPfTY4dARiOWkD8dBDnK7W+egpPOBFKNWNKKKlp44qq9evAJYFLcvStQaPm8jbvOPHq0bmeE2
yilRgq0thvFHa2QX41JvYkYvcFoeZtY0MsWv+3fwHRHOJ/HZB5EKAsPj0tIKDIqgH7tm6yiHGGNS
HVDofYt5V05TSLxgllu0JW6WO5QEKSY6Dtu7iTHoRw+Oh+lBIYQ3aXuDtsTOP4lgssa68NzPTfMq
rW+wvs0dagCs0g9xcwTpX9IYgHNia85SW9drLlYyvzn2F3MVh6qtZkvDIW157j/C0JEKts2Ax0Gg
XWL2sTypehLWe1uQ09cnahonnklg2GyYqV3FJwlrdU8xdClIt7QPGadao3PjMfy540uzWSn4P4X2
Xgjf5FIJagYLXl6t3rNlF4WiBjX5tHdgC0S9uBsmOTWkUVmrMDRVUDhs2NOeDASYTUGjVjlQ/KmR
ftgNTLHq5CQpCYxZuedQTLX8jNyjwv8/JGrag+P7VFWvGrFcRwSGgfOvdAN3P5RaUgmDU2/N7rzZ
zihHEGFALbQ3qZ819ASxdQvo9E77yOXWfzHadwDl4iv1gnnbP3GSbkZOP5X1JF0E0t5k5Plt3QVC
cZAwZra0UcdzP3KL1TWZVoYHrYhQ4FvT1aUhgf0yh6Rzmc7gYgeQme7NguTrefypyo1zZi998pA1
XJEQk9DJQLjNFzxmuPR+dxSagl526FuoeLZwvyF19qY+qwV2fwYdA0EsHWG/QhKZ9O4b428xvnM1
ZxoaWYGWWCGWKA3vCPcNfX4dSsr56Dak18oyWRI3DOyRQBjsAqq/lcVAKRoEqev3DWbwFHSpO37k
doK3Y/4OXhsgXcjfIXrUXrQFub8cny3eO0usRvh46ASZB4soBzLHMcr+40wjF+zrHLW/o4K/yNdV
2CeyYhgip3TDRhnurFaCPof0HbvguyRfwCpCuUSB2T+00y8KFM6y2zzXX9HS/G9fPWX6y6obdB0D
U6Lt4O4wQWzaOtkneCm4QUF/CVtSjMO643vehg2UmF4RBsAsxPtNpx5k98KWOMU8QoppnGvCscbe
M/xyUbpeRaF6FXFpi3xFMmE97ZQAI6q2okSDK/zzTlT5TpH+2lZjBbEhHCJT0rYNI2kJhcMx3Q9S
vK522xqkhscdcD3rRlcL2efi3weIY9COdQiS6smRx3CBrB6n7SqXfJVbNmJ4ItwS/avbT/0HyQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2588D381688ADC0"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
content-md5: e7xyxnO/k+IdJVZUh4rqAA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 31c53803-bf13-476a-9bb5-0fc5b2c83a8d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-1266ab24-8548-dca8-a512-64259e4602de/test-blob-65e7de58-1112-fd9c-8ba8-cd699a3964ec

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:47:51 GMT
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
x-ms-request-id: 0ccb7bbb-3c52-45db-a5ac-3344427a805d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:51 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-1266ab24-8548-dca8-a512-64259e4602de?restype=container

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
x-ms-request-id: 19bb87ea-2d73-42f3-8d31-3767f02fb5f8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-72634bbd-2d2d-166d-532c-80ec1db57872?restype=container

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
etag: "0x1F4692B9853C670"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e1601500-dd4a-4f12-8325-a81b90609ca0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-72634bbd-2d2d-166d-532c-80ec1db57872/test-blob-b15942a0-8600-76bb-a279-e2008b5e2eb7

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
eePFyAXEhWr4Xaq6q7hC2Jm/HgOalZwrcdER5ZGw4NYwWu+2dJvm+cX4ec+Ds2qb6ahSXpd01+NG
mVc0sp/ZR3zTiVDIi2P92CQ9oRzMqL1mdvzoXoI/u4ILb9pEskYmHzFSryka015EVIZyNjbHevGZ
zjyj8On6lM7NvBuIuCXeF4LqefiUS6Odown7zIRMRPXpq+MKgi5IWBtaTBZDu5xglB603QD4BYKZ
BUzg/8dKgHglnw1B1JVToiHdOf6MWuhtmzhlmGb18aZhcXziZ1lTEMueHRyOHsCJYDreGsuDDKtk
c2OP5OgRL65n4GMYcDrIiigy7j3M3nx42zcsF9ba3WTRffT1wyvjje1uJz1cce8AFY+iUB5umJTm
Fwiw5RjXjAL+R/NF08f9T2BPXbc+G2pHKwFHN41FYuVgDqwiM6fVlpo7Xin8ukLIpQG9Hjrcp/ue
aLkWj1R1uOQN5cQb2hu5esccA71ASnG/f5KLiESrg2awhMruvgdGxaVF79R9rMvlBKRzv6Q+XR1H
VhDC6jCgYmFealVRyru/1j4X+1ucQtLGpoOfN8PCcSetpmf2g9t0pY1zHkF2lDrps+llJmLCqxQ9
+0OsASqdm/kuoyNTyFNjolbOKSOQUBFJtoTaXUrE6vtTuYeXyKNj1YNIR/AWleqWAoML9ILwrasy
Ykqlwz6vabkoAA/Ly9qya1OgSAghMyGZRFrGufZ5YwzcZWVZvRFEmd437pTayzapWYkuT2SiEC8p
C3/k6LDCr5wD7mZ1Wa1BXK4q6kWMv3kjHWBtShOnOlQ1L7GSYLAtdT7419zPM//b7PK2dybqnUwF
wMtQVGSIXLMSPyn8r/z9/HQGlOecU+lgkl4h8MItS5FkjaDl3SHab3oovfPW3z32uHuy5AlkaWzh
8MEGZ2vx5PSXlyFbGB5TKyRsc5b1ibMgKjhHe2eIACM0A+1f1AcPN9j/Pkgbm59cXrjk+PXV7GYO
5T0yqWmND5f9JxQx9FcdXTu99ktrBY+Y6x2uowguXheHUO/J3I5vcS6xHXOLKmlgxpq5GPYao9+u
mb5M3myOz8n8qaNoVICtToQduucbDcCzTtxtdEYhbK0PGkLQIpLCIk2qjoDG93IaC8lx/ej3k4z9
mZCPIVuC2z31WTk93SvxWpiZcX4/7FZpU2h8sG/EF4e20okCMwDyJ7ND0J453C6df6NQXSENvaw6
Jc7yBSvNMEKxhwqi7yeXp0rL+xy3MHY63zDMdLlmqBXcxw0yACGHdp9ch1Uj+497uLbXQcGQgvRX
tyb6AbyIS971xScZZaYpRIV8W6ghF+SgULsCj2dTTEUZ2kj6jXTj0zx3LTVnYlMPrf08FCdMNg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21F1E30EC70A840"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
content-md5: acprzphbeXRealCxPctglg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a8876bb6-e804-4425-a8d1-1ceb162794c6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-72634bbd-2d2d-166d-532c-80ec1db57872/test-blob-b15942a0-8600-76bb-a279-e2008b5e2eb7

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:47:51 GMT
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
x-ms-request-id: 07497baf-8924-493b-a3bc-3a3b61f51411
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:51 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-72634bbd-2d2d-166d-532c-80ec1db57872?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: e403694c-0e88-4d11-8756-46b1727204b3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-6b879811-e9a9-38af-ed68-f2e16917381d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2186AEB60FCB080"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e89f1bd9-7fda-4adb-a7ed-8f3d9ba190b3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-6b879811-e9a9-38af-ed68-f2e16917381d/test-blob-3b220a44-4bb0-b7d2-8546-30b6c8599f3d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
zKOouDPC4k2AAIu8hWLHsX9GKnug4I22kyDDmJPaDIpBxTPntXaETrY566le87OLoEBiI+y8fewW
8SUS/0m5pvMAesAu3/wJwtzFZvXjV6BtOPhTeOmehEhH0cNQcU9sf0S1XnjzXMBEWGEQ9xb3MpmF
pMZRZi4KYfZ35w44uFCNWeawLvkoeds3Dh+Ijo0xT54qy8yIGhkWq/yBe3WyDKAQgp0vRwSgXCvr
GlgOgtNpRphvDuyDBT/NmYL9pv1mhQF+dwvvAgiaiW6hnP/ACCkoGDXcQv60jX1eYa2Bo7YthJVW
kArIeUSP1YR94Wg/DZFZ1I7IiUIDyumNkKBaGOa4cxhqangeYJ7xTW16N6sVH1QcKM4oZfpSU8Uh
OuijNbydxG5P1KMYOnPv1jzUiJM9eHFMPfAYkA4dGBay/Sa1TRix3XI9xUqxBO1bOI6+fcoy48F3
V/fLhTRfMryMZj1NOYkkI6sgALImmjkCvVd/X5pMfxlkPvYg5Vc93ZOOJZ2vDf4FmloeEuMPULy+
ycjd4NMhP+ck6PuSAz1T4yIel3WcUq9YecRALm02Ve05YhyPYP3AbeW2iyUDc5Ycyi/A8LlHInYY
hGYO4BB57ZMOWKEhxIIlXiqP5caJVQYuJGQ+dWQ08kCld9uWso3VPJ6R9Rr0+gasm5KPtzyvjy9g
37ysO3cv2WZhfE2mjqycuqko+GDsOSlekdrSpToE9eesNtLQKAAmYhu0k365BQzl8v2Sh5bPc6aS
TqmdXDQrXYZl+ljazJGoAZVFN6arpIzO7LM9cW5Q3MIsPtlWiQXmiTX3VAqzCyVr6YUBijz/5qkd
znCB7usXFB6Wro23UniQXq5xs1CBGuCN0YjoT1KGLFcwObqVZJpJ3z/sHV2YtJcNcSuNjjJYnLSP
9B1jL8TMD4E2hxi9+voTJ9QQlP2D9Rzw294m+J0k15wGBW995bB7IA3cYSx+UHYxeWdeSAi2DP8A
c1PmpRfjEbB8tvWKlkEjlXPvp5Pwcotn9X82xY+UT/hwfXJdlXv2+E97ApmApuMlO7KUx2VrDwHI
frCYrEwh6Gb9GRjPxQD4+a5DdG/x506bEYnc/4iSBG1xlRfLXksDWhozg4zKVnWym823KJuR1pZh
/JvCROjdahWqXTDoLZtiPxpVvmPB0boUKmO629zS376AaWGwQRUxVRl3H/hFyW4yVOiAOxcznyvg
rhqEIo45131yaMM5sv4EJGlKSrHCzmD1iIfzUaSmTck20JP7rTKKPkh702Gq+KHqfBeu6FV6Ht+6
j5oHRYXZyxv5A+JqCXc3vwxpR/v/So/lCdWN+GR0vLG0QB2XgvjCoQdFsPW/f3OgdilIEdfjug==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x232052ED9B92FA0"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
content-md5: pz5z53xnwIc/BM2dNZKdAg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 895a42bd-a43f-4ed6-9048-4ae31e354f4e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-6b879811-e9a9-38af-ed68-f2e16917381d/test-blob-3b220a44-4bb0-b7d2-8546-30b6c8599f3d

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
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
x-ms-request-id: 8294cd6b-9fc8-48ad-8785-ea754ea62645
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:51 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-6b879811-e9a9-38af-ed68-f2e16917381d?restype=container

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
x-ms-request-id: 1b6edede-6d00-4858-8ee7-9c4e8252d795
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-f4a5a613-9ab9-259a-8a61-ed813b2babda?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x269707CB160DFC0"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b0e7e9d-9e7c-42e4-b890-448d0549aa0e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-f4a5a613-9ab9-259a-8a61-ed813b2babda/test-blob-39de097a-b44f-1d86-e506-66af3d1087de

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
0YbZjGC9EVU1jiuujsmrRtfrNWox7gCpcPywTl5RfFmbVeRBfxLcVZVPvitv65fBtqaqT/ZAqOKF
MBtjDcL35BHREjjkacfED9/V4jDUOoVl75i4pi1iWqwCu0/2eEjSWNoZndhe3Ezf5UAWa8aysfWW
/h0qPz3kb7eM4q13zZaXAopVup2sBxJL2MHsTO/mTwpaYHoqqBmdNC4g0vqeaBipf2g8XfZY6fcL
3mZ8+CLIpZKjHW0cbFpxt4VvjDUXrXCpQ82GqvIUAXaDH8myITwLWCxn+0qqjRIOyqVw6V3B8zH1
07RVQvqfjxv2mU2QvpZJYzMIsLEl/rW7d99NoxgZwSuYvU6HthUxx2wvtPTEfQwOJ4UpuUN/0NT/
msobUusC3Nch9wFIwa0e1+hF9knA9vnTPnyT7wjoGex5iBxKFnWALNgcooULxWbYC+JbOdmLP6PQ
SBNvb+zPOd4UzziR08Byxclxo1Nzx3kWu+QmjN8T7Ul4es5iEb3rTWmn9vYtRjch6HQQGptQXICa
WLQIqaz/AeHvGFnyELMMhVbqzNCC6XSsBKNqAtOtJx1Nx7gJ46O8p/UUPS3eLtjBBJVFZpCvF28/
W6QJlf4OQvA7pUj6AqKyLSTbbatGztXLqf49Z8GNnrBJyYf+sxL2Bfo8oomPxgHykzhr1KnD+Y3O
PesA0NovrgaYsTkas3oS5GixCStMO+L8S9SIIskGhc/5L3Um9jUgDfOC9hXH19++We9BEvBiggEJ
A4UFpow9kitpIIME6+4ykPw3yUTMNHP1ysnaxHPfl61zHfKvGmZnRWTqXbZbum0BDoHzKrm9Pc4S
ENzDYs23ionWkM77g3aV0ITg4ta8mg9b2Lby623ztt8jnQqJo+KXMtMthCmfBYsKXlo13Fr4VXbM
aIoXxZ4c4tru2OVsCyyhSa8DjhXmvNIq540SvtmFK0eUvDtYf201EaFOsC2lnlItk5Or9Mdg5qu3
7N4RCSQAaaye2E7xSclCzXxzmAukhUg65StF2TaAM9aPoJKOJAh9TUeBB8YDO0rKaSdK7U2gEmeV
1iP5u491HaR4Yqg2s6h09UrDI32CNqnge3APNUWI7o4r+E7khJK3C+khi9mik7V+1vgD3O/pE596
GD8fZudf73MZC7paj3C3DBeUYKvPPei6kF9NhRKfQeWuamxSmKUBwptmiIf6I0eHS9DXVbL0qtpX
ZNaIEWpgesrVrCQEZXNykp4PabVgwGwYxTlBx+wyusCR+zTPebExBQ29JXcig+ZcZMIU5EEl96Rp
cEsxHrLeo/Jjcmk/oxns3mOnopv19UJS5WMpHdV+bAOQZQllAOZb34GFvxB8HcGoJwbefVUJdA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2661FD3D44A9840"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
content-md5: Dcl+SwVt48YPhiO0Ji7VCA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a2a93bcc-abd9-4db6-a8ef-7e9267b60577
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-f4a5a613-9ab9-259a-8a61-ed813b2babda/test-blob-39de097a-b44f-1d86-e506-66af3d1087de

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
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2661FD3D44A9840"
content-md5: Dcl+SwVt48YPhiO0Ji7VCA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fd02ffb3-87b8-40b4-8022-0d97358ee810
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:51 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-f4a5a613-9ab9-259a-8a61-ed813b2babda/test-blob-39de097a-b44f-1d86-e506-66af3d1087de

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x2661FD3D44A9840"
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
x-ms-request-id: 3de11874-22f2-4f58-a0af-3df962f2e900
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:51 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-f4a5a613-9ab9-259a-8a61-ed813b2babda?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
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
x-ms-request-id: f7908a5b-365d-4b46-a2ed-d506e87f88cb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-19c24c7c-3670-d531-c7a1-80f5cea0eeae?restype=container

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
etag: "0x27B89D79C633F60"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dd4978d2-78f0-4d08-ba46-5b80fd5b9a8a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-19c24c7c-3670-d531-c7a1-80f5cea0eeae/test-blob-f59951ce-91d8-1529-21dd-4f0c2e29a2d9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
h/GOXCGtCyv7Z9kKFm6DmKAoYTGT7wRE1wlyrjOQTkQXuCdLgiq8z0GXHghcJr9YHehUpT69Gpft
SYQYOl33ahmV8l5GOBV2a5Lv/NH76LBKGZBKPKkFWp2QXjmlpJTkn7PuxjNgEuXT3jmszR7G8WDT
zSDMrC5vkJjAttnc0Mb9C1wdDSF86Qeqd11vWIx+yWzY0dZzF/KEfzaboFsL9w5yrsLCqOQ/VuQZ
ITXRADcMQuxtA/7vivNqmI3r4Uirnn9P/KrJvCGHmXvyWvW8s37/j15vnvMQgyTOVw9WU3WcbYO1
ggOMQoXL5WqD/S/+reUO7FLqPACMPnmG+mQRMEUFVuxyBzF7ckzYo7iIjIX00KoqSGcisTGCKUOK
BkchurUlfadDi6azk3kFEZhHA7L0kSq65ujd4qS6793u8GsFt+kDYw/dsEUDd7TtHZ+ZOiWRlnQd
ZtPMR5oCiZvIxaINAFquRJ+iFuHktm808MUFILW4XVr351AWNhx02iepO7ER3x1E6/aF7n+TOK9j
mFfV/WjmEGhIFhgJmA2DLTu5O3u9IhCowDW+Mm7aY6+hsp7Fn92/witJycgEO1PoAcBE2v00pnVG
LD0yJ935bbNoaOVvvo1e+nhQdFlHo4Ti1jGtlomybAwpfnOgjZpOT1sVnNJteEMy5uCE5DEb/om4
T1GrS9cqtvvZRj8avm3dAiT+MgexdV3terCpLYjaDX/p5z1JogOE6uXXlDIDFyhyp+EMHMuBBtrz
vtEngYhy/ji/MNYvk18hekgh2uEr6mKHNoamzvC0aOFjVuMyXGhcZJX5Q+dRQxOB66KDXyv4yNRu
n0sCzDBHC8j1zD177h3fxXZLMaZ7NvJyJOJOMAi1ao4PxL0dWphlsTceXHfWBf2FpJq1rZYt8mhY
kKdO+dvAQGGuaylfwWve5n9uXdp7nB/kyIxt/7334tJUxMrxFrhcXRsVJ5nTJeIv18YXvpSO3POI
aTBPUkCkt4lXCvyh7c/HEv++ZnSFEaOpPSj24CM9xujWaK2HDQvacHAQfBrljur2T6yUz3Z/A1iN
pRQYrdZlGUQUyoQiPwX04/UEdJSJw68+AJB3qPZxV2VV+mf2wsOZqmPV0MNl1A+noOuAeo7DA+Fl
2q1G7nBNo3MezUWd/iEyaskxs/Lr2CyAzwgL8dzXkfaFkOgVU7vyhy1QRwfKCaHKTQ/EklDvegGA
xR9nQrGXRztPGG05HRcNPivFm5EltsVmQKTMEv6llhbmlI2ci0V8uQDLevE0kDD3tlQkKd9wWw9Z
AQENyjQ8qoFXUoiKcbPmSOGQWTzUMrBz1VuqgGw2dTl+Q4pDbu/Ljs9v3D2nbUWgPuH93wLShQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E82864CE570860"
last-modified: Thu, 12 Nov 2026 00:47:51 GMT
content-md5: mSUrkEwqicFlERGnY7Iqzw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 36e0afdc-4ada-4652-b674-23462ad27bc7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-19c24c7c-3670-d531-c7a1-80f5cea0eeae/test-blob-f59951ce-91d8-1529-21dd-4f0c2e29a2d9

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-id: 4dd7bd67-1f1e-c6bb-a6c0-20a79c26ac3b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: 36573442-fc91-4336-a3f0-2bc88cce567a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:51 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseNotPresentWithBlobOperation</Code>
  <Message>A lease ID was specified, but the lease for the blob has expired.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 20: DELETE /devstoreaccount1/test-container-19c24c7c-3670-d531-c7a1-80f5cea0eeae?restype=container

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
x-ms-request-id: 33702a6f-aad0-43bc-8349-eb142f67f2c6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

