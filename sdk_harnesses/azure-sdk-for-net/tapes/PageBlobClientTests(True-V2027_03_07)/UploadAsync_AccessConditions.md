## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-14f21aea-e127-fde4-722c-7f1f08c3002b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).UploadAsync_AccessConditions
now: 2026-11-12T00:52:00.9921923+00:00

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
etag: "0x2689DF9E72CDD20"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f490c4e2-1152-446d-a593-489873ba9466
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-14f21aea-e127-fde4-722c-7f1f08c3002b/test-blob-d2bc1ecc-3026-bbd4-c7da-e7f0b8b98365

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21244059D28C060"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1ad8648d-2fd1-44d3-94ef-b50efb0db06c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-14f21aea-e127-fde4-722c-7f1f08c3002b/test-blob-d2bc1ecc-3026-bbd4-c7da-e7f0b8b98365?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
szfe52LaR/Spl17GS/nu/U0WjFNoTRK6RjZMTfn0RLmpGWvQ5BnJ8tfIKY7SDXDN7OqjoSww/GYl
JKAsjfr6tFOkHTKOHRg0TZp7oCSD6DjGf2APUaKMeRwEq8B4nWTdznQ7LfA+P87RblSStFxCoTtn
ZQ6Z6mOwGKQViXFYu7A2ntGvR7tIhz+RPeJN+sS/wgmEEDdVROMRihRLKLVdebKkWxaLk1mAH93P
B62AYh7fVcdn06p44Vnunr2m/F+JNMQwqZ6uNC6wBPFZhTw2kSf2bNLu9aUHLHq8nfWc2SJ+RdPp
ULl/MSGYt8+4H1sdtwyVsJCMmz8eKH0k8Zc5EyvP2kBpTUBudzqxVT3WTg0enuXoBymR8qmTyic8
Wj+KXqSj6UQatGrMJzhW20UBR9lwBVOyUQsBPuiX1YIYMRz6J/eYMmXIA+p6HODwOxZjkYJOzFXs
1w2Zoatbg97os/UcW7NOaBRzpwFoNzUqEQLRM0P/ymXHDk/p/5G6bYALkmjr1OBjFClt2iRThKDX
bpCoiVCb6OiPVExkZWmDuTmBXKXMPz0ibh4ake9AdIqvEpEAEeQwcKmAW3+T/q+/6iDr0Sf6Ci5T
hhoxgFf4T+DCtVLYg6hVUez8TOS9j3BvWqfPVaJjtAdirYvJ/+9Rhwue0Elc52Z4lYA7/r5Jlfep
wSavKfk+XwBLddUci1L8qsTZH74nEnJAVr8iJ7ZIGRiUHz3JoV0RYHFIEXKRWwouPlP5cHY4gq6z
b9M6GzdKAly9iGsUMghmx75M3wEAr/q19OhjTqihW52OFjKK10Q6/Q4W09OeGQxKkqm37KOtsr/Y
hCdO57SzGy3OhhvV3O96EuHz6dwnF9rcGLv/6m754WNzsVIc6xZZY7elz5PwdLa5PNrBucjjsW1N
cs/4szG+1KS3YiqcXSbKmYYlgUdH7KMERa2UNyebkADlz3lHYa+G5/vuOBKMHN+z9iBCvi8mBoUr
826DKpx9HNIpt42tgzfXnppMWLOReCnO4UAGWdLQv8nzG25BAr1ecRs/YmRRBXPoah+V2q3SmnpE
tUhbdsMAWfjEumfJlpzd7eeXURXEfNvNHu6zO+QcIYHz/E10AvpYPwlsjUsLHtSCuOzGOkllgDht
jljVTR0Tp5jl1plPaertPxELV++Qwf8aMIL4VeY4jXwVB3ShgvLrWOWyJUg6M08B2fo3WihI3cxZ
uhybG1KxrUgdOWF2S7weH/8K3Zu23/wz9nzsADNTzCqnSMfWUD2TAXgAHfnti409GTopPv8xotsf
ZyTVxawUyW03zgP0SM7BdtwjtsIDRmvvruf5Ko4qdqXstukYvjvL61OMtbyKSNBrZ8cjDuwYHA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x277A30EC1462A80"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-content-crc64: WXvtT+skADo=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d8da57af-722f-4745-98fa-e74ffbc8de6e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-14f21aea-e127-fde4-722c-7f1f08c3002b?restype=container

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
x-ms-request-id: ded14bab-fd6b-482c-a3a2-840bc772ac1e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-16e6b921-1bc5-de9f-0d58-5d0891e5a9b8?restype=container

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
etag: "0x20328178A3FAFA0"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5dcec4b-2665-4d2c-8d3b-b562f8676e8f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-16e6b921-1bc5-de9f-0d58-5d0891e5a9b8/test-blob-6fca57a0-9076-64af-6616-8dc3c60668b9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D7761A8E2B3230"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7337f67b-7bcb-4b52-9406-40920a00417c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-16e6b921-1bc5-de9f-0d58-5d0891e5a9b8/test-blob-6fca57a0-9076-64af-6616-8dc3c60668b9?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
If-Modified-Since: Wed, 11 Nov 2026 00:52:00 GMT
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
05rIX9clBs+0radkLUA/hr4Pg7YhqaaQCoGwro7bGAfvozT3HUrge1D6usjpSzcl1wYEtoKxlyn0
OFRWdFhB2JWgdIkLR2l0LghmJu7dpr9JitaH1mGFPQwKA+T1igb3ueIzSdauGZCckIh6S3E6FpGV
DOmCuQEzGzZ9AESEf6QBbm0Mql3om3BG60bZCvKb0OxTX30ddf/hAC6gMRlLGBHkeNwDLmwzrXF4
PM67WRBD4jBXMB8m5PltK6ovR2lX+tI09ZIVl6GAILELpDgxJaYdXE/o9OfxvZTjlgLBA2UHIEH7
h2R+LkqO1hBuGj/APAUDEesabgbrQjf9MgGevhxLBIT3NZ5Cny4EWR3Wg6JVIln9vvJ67bE7EEQs
gPtJ7xf0Iha7yQZmwXG8FhToFb6Vpw+noQAq0RfSuyVZFR8yu2oF4mCLmllTlv2AvdacUvqGl9jr
oU4XyVH/6A7gDatSilqq4zJdCQ22VAsDqhNANWgq035GRhkb7hgPjLFLcolRLTN88W/IKI7LNU1D
FB89v7OltTktDENBj/UZTX1ca+GBsXzgxEP5YqvvexHM2Nn50sz9pb1PJCDvOmJ6rtoQbslswWKi
XPtwrFKNPZExdbcbIHuwXsUjMo1c8InhfrTQ3wxHXxZ3V3XQjflqweaPvcWrX41eYA8ESI/VRmxy
jy2evV6F6hWgo8kF39HMuXCmzDLDNR8mcn/8QxaHohEJXv7MzASICdOwCrvEWIA+OI8fLnk5rlkO
d0rfiKf/GQG4/IHS/+1rHsNfEytjYhn+vQqGaHOXz7ClvlS5qIEssPG6DFz+bDiisxC22pstqhQx
4MuceLGNICzQLUGYsXVCM2I5qVa8/1HS5LRj4fUVdxM/h8i1jzhALesvLj72CQKadKc48wG+deB5
ypP8KT43u7UtWSmsjKMp+XtqjdES29qxyG1O3IMSgRLnO8WlQwOt+HKJyLDY7ucDDvqFVOcOZu64
SmDQ6N8xG9gWxFDehLZ4vZVfiRIq2dqFSs2JjSwr2dTW7Pii3A+TV63YwSmXJYpDDJZSr93bjnGG
Sp4Rp46r6+t7B5i91eCGzDFlURex7iVDRoCW2Sr3+l2GHJFxgbAfLdY9Gx3xhTe1zOKsdj1a1Fx4
zWENFBLBhAw7NrlPFUqBRiNAc9IIUsBJ4A1HS4QgLEc1+LNPERjEfJcRtk59ZraXKjAZGWGJb3ug
xDQFejiIGgpyGhyXMTQKfPc695txy3pWryBTBhPlq4g3rkzkvwFfiJtEC0yaAPn7DpxqTnjgL/m6
rsoYNBT2jG6TX4PoJr31224ALcAtu64nV/h3e1wQV39TKhA2RlOHTn/dB6F1E+jedHMK3wI5jA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F918BC6D873BF0"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-content-crc64: 4P0QALn4wJ4=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: edab5b7b-6822-42b2-89b5-0133902f1b59
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-16e6b921-1bc5-de9f-0d58-5d0891e5a9b8?restype=container

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
x-ms-request-id: 96322354-e8b6-468b-92c6-fc9e0e4cf6a0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-ddf11cf3-7f1c-1110-8307-0495fbadbe94?restype=container

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
etag: "0x265C2D2BC53DE80"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c1ced935-ef72-4c66-99f4-13a37bf34f31
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-ddf11cf3-7f1c-1110-8307-0495fbadbe94/test-blob-40de781a-b450-b10d-440f-9807e905787d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26D48A0C3C3F9C0"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 47dac217-e3d7-4afe-b018-214806238e55
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-ddf11cf3-7f1c-1110-8307-0495fbadbe94/test-blob-40de781a-b450-b10d-440f-9807e905787d?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
Content-Type: application/octet-stream
If-Unmodified-Since: Fri, 13 Nov 2026 00:52:00 GMT
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Gp4cGlV2a89vzISZcX7sMbbe8Gcj+Ds/Dj+YDOYJKH2Ph3pdkKM/ow0P0YQwdEDFI2dRChUQWSFi
3QwW3l/oZqMGCekDj6ASn0xZEya3Dpr+0+h/tx1ofi1Y+rOXKMWuJmvgKWpWwpTHPmvIt0X7qs5y
GAp2aa6Gnou8qpTseneGq+y71+UwpxFUuHmyn8fnXU/kJRC6N729WYvemhf/2sP0QQtZQNPpQXD5
IbE11P/D1U1EB1VmzHMv/X1aUQ35Vd21vl27jh18++OgwBYMiIWLGsTJu9JujXWYKUJVj/Bj/8zT
fxaiCEcvyAxxxgtdI3X4zjZIMJkLRjDnI2TaJ2zyPcFJOQhv6RJ9mvLF/MdqOgbNXMG6Gs8yxznl
uuXiVKCff4lKE+lsieQjypWnRUppfeheDcqrOCLxFnHPiS8tm0VSJX0+HyYcYNPcllA5i4HvfD38
g0fW9EdmWP14nQC19i5QVR/MK13BQqz2zqHSt4vv3wzxMBf9ezE218cpo8PTJ6Ah6DZiIlHgO0Ga
3yWllKBxiL3zw8UXUtnullOWl57pI6cAsc5Ujb26EfXWY5sLkEImtxsF32PbCpZdc4v9SqOjsbx+
pePSHfoAOLHPQO894gYRb9+C40NDJac49xoxvcdSMrHfjetfVJogBKexC8mmH5CF7NrDIM14On87
mSXgz3vqfQ49XlUbsRtFYt+ckRrekdiJq9DtjhHkZ1JrI7p0PzUrx426acE7aju+fr7u26llXQdN
VyOr/e79WfYDr41h0CKqcMqMIygXTkGULxBT9oupBsazJ+gRgMqevQ/KN7quXa2bRGrf2DneNgji
Fs7eqWNqWqnGrqk6mPD/7WYZTBaH5tFit7Ihyi2M1PDfLmr8wBOsX90Q568EYKt63+rTxenxWy/8
e/GwSZB8Otm4W2qFAy1SbOw5dv8iXVcGpupCuA4G7dM6AEQh+xVNk6zVSwVB9Nu9gFn8uOQw2R2a
qqOlOYHKsW2WSgPoMXDW7OJSTRFRxbEPhDe1CTXvCiYmhlFyp1oqCpqXqqrX1U/oJcwB3owMSeTx
lbRKFKc4p0DdwaoeZESIJ0J3uRsHN6/nzONp7iuZGj1tgRGl4PXyXwNp+hOlysGHeLdKlI/I6l4F
YkfDz7kUQ6dssOIy40ZMhVoYnTycQQIi4XV0T4aupZazoH6tLpBJVbdsORneVJRw/g81sEwhaCBF
oe1DoPMhvQtMf0PInlbJzkiFMAjpQ43gA1F3efRKkTddaIyiBrXDS3sNktRRqGC4a+EEnDgYXF5g
YpyiqUQWAu4MazXJJ8iTweWN27C4j1vxvg0TRfT+RQwuQqMYIKE29pDmRT0q7kMZcdtTioCtpw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F400BCDAF0A160"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-content-crc64: UUlhYdasLmY=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 56468767-b272-4c65-a94b-a81f7a97b7c3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-ddf11cf3-7f1c-1110-8307-0495fbadbe94?restype=container

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
x-ms-request-id: 605c676f-b40c-4ae4-89bc-551598b45e78
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-eab140d3-0337-fabc-0d25-289be5247aa0?restype=container

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
etag: "0x23FB6D21355FA20"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 52f9630c-743b-4f10-b1d9-c2d7cef464f6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-eab140d3-0337-fabc-0d25-289be5247aa0/test-blob-20e45644-49d2-c61e-d0c9-f9d319abba8b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25A943A857B90A0"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f7b968e-42ac-414a-ae93-f0d7fc7f2058
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-eab140d3-0337-fabc-0d25-289be5247aa0/test-blob-20e45644-49d2-c61e-d0c9-f9d319abba8b

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
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x25A943A857B90A0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bad37681-ea81-4a87-9c41-61b6cd737754
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-eab140d3-0337-fabc-0d25-289be5247aa0/test-blob-20e45644-49d2-c61e-d0c9-f9d319abba8b?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
Content-Type: application/octet-stream
If-Match: "0x25A943A857B90A0"
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
gZrP2G+2//PU6zgXAVNe9fc6DjScjdSJIeoabQro4GFqnRlKVKExjlfxTOYRB8V9awTc3pyG7/TF
RbaEm5Ho6wvWrGQ5FKBWCIDcq0HteBolnQIGDAHE5K0lhA7qrPLFCGDbO1pgQ1ZjhtUcqUSy182c
Xv6O4t4JEce2FI+Ra1yOFqLgEjzAxFmrooYrqDtpcqxBTk3zNyaC0imSqi/H0hp5jZKi0sWR25qk
4z9Y3WmMTaHiUBwOmt97XUATLRoq49BrsRqox5/nr3KzT1PnKvS/BlyN5YL+a/OyJnSFfa5/ev9v
7CtO44YB+6CqWkuMlDNLUye+nf5NbUYn9qArYjLENNVUdz3JcSLWi+riVBGnJpFAOSqGwdwAIX/l
Ju3l1phu5SZ1Nx32guIE6BEUaxk0gM8P6igHPXL4U1W940o18LRRc27rMe90SrZIgdnL7LZmsKYd
1uxwZqezfePHOZ6Xz/dcw/eqSU7gmqBxv7uZLGefVzKjFxnI4Q3GOLQLrBAXsLLhbim+u2dYPDxM
/qbrGVB8KOFs87felOHq4xGa1e6PWQ4Jt74+4JvLS9vdfOJm2h5jj4Quq737A9pH1NdWvmdNvKSY
4mGSPUhGoKfcARj+gwjyNkZpYK1RDbTk9gvDdY1zj78+zvi80VE76AsVHwLBSFHPY4ch41z2RtSt
rkY8gisaaHFYwLUQNmX1LneiPO6yIq669BEGUqtjR4gjDyMK/2Xf+7aQaIebviwiLLXkUwnm+ouY
gY4ZFBbG9Xkt7CdC6i4Sw0E4IbknHjXk4yX1f/N+PRSXcn3XxeafynMObtEF4EGH0ZDHrtjScWNY
NDDw0HaGrq8TqnixO/1amFdGGbBk3wPkbq1ito87xQAafpC2r/r8h8Ah8jXI1paSbRWBi1iy9FUs
DGLJI/cg1+R3lr1tpOhdSZHvQu3NG5gW0El5ujmoZ4k7iaOXM2TIARpQUT/ZJcksI0LGw7JnX/DK
slOupxyrzi4zMhpFxRUsJ0DSfMpYPaqATJb24aTW0yqyzYERGlr9pYIQpfOu514tmpxylOImcXWo
LVqGtOyKXV7vk/eUGwzm1ddHR5e30WU4yUcIZD5Ii1sLaez/d/GVhkeUv1NmmH+Pi78L3yrd8Fz1
TuqlgvkfpwebiLEg5l3lscBPIxIR0THIeNh/PKwxLXmQCikG8ANOdRdMyw/NbqVhJS1pjcxJ43y5
3AkhoGtbalo4kNw038G8Aa76xQYh+woyHRZ/x6CsRiasTRT6LdSs8WC0lN7JLUZrrYweTx12l+H/
7oJU26O6jEq1iJGtwtPZTtSlbGYrafDQExoTjfcJNbUy+j9SWBW9+QiUFKW0vuq4RQBJ0Cp60w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2555D38B74C2C60"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-content-crc64: X2Fc5ayE6Fw=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8ab4312e-34e2-4882-9c1d-998b4adae317
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-eab140d3-0337-fabc-0d25-289be5247aa0?restype=container

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
x-ms-request-id: 9d0da1b7-a1cf-4835-b1b7-7c176c13a9b6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-c7839284-a688-53fe-ac52-db7ac79487f6?restype=container

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
etag: "0x2165886B82B1A00"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3c0501ea-3f62-494a-b568-57933b2e2c3d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-c7839284-a688-53fe-ac52-db7ac79487f6/test-blob-5d73e8bf-5597-1b4b-552f-5b47f6c0648a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DD3CBAEAAAC1C0"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c2458b76-3b5f-4439-b3cf-afb32da8f579
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-c7839284-a688-53fe-ac52-db7ac79487f6/test-blob-5d73e8bf-5597-1b4b-552f-5b47f6c0648a?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
Content-Type: application/octet-stream
If-None-Match: "garbage"
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
tye6v9RONFIJQWhS2EMjI74Kiui3HTwvR2hxWUu3XOvtUcKg2schcLMgU1bt+EIRDDeI7DV80prq
i3ds3NsHUuR8ZIeBgkj26Rk0l8nlQU8lYEwTLnC1cX4otU9QtJTYGABycZO6kInukgIcRzvQBEko
R3uO8yRzxvMJWc35pjSEXH/Jc9C7atDDJJxtmSlDV7AFKG0ZSSTc/qugsTe79evNmOq8B5F5bNyr
y8+IBizJxgEd9H7HaxNa7HUkG7mYBy+wnwA+hlAfjLuQbX1VU/d+1uo1ngFtBi3WYRobVFEiEsSf
2GYsiz+x/WfCNv2WBJh9pkXOY2guQpnSZyU1BDdpblq4tnuRUUuqg6GZq88wQF2Cna4MU69ccZbN
WiMafPkwWcii3U4d7FT6I9/HlZfJoifIs2aJXRqrXETlxPcnkAenaVEHjWIOZLBZEi/Pldz+A7f7
UsmSpvuu94EJNyhd0pPYHytFwhXEuU62MErq3Mdo5sBALD49FcJWWJXhBCyI/ECc93awuUGiN5h7
3HawxBu6oVFnHKZUmgpp7ml/47UhLTQKTeRRuCx/nvWmwjhMpZR6JmPbId+aR1xrR8rYIlPiWq9B
pnY2aekk536xrtfRHEnUBbxSRQtVcAWI5XFhpnuhw2iJCv4dRL16tjlg6ZmEmiqBAx2WkBSj7DZx
roN3wkEDD+pvRxFKtsH+2I/S9YdsA0pG4KJeCjNU5h7IrJU6AvP4XNmuFVIYNk1cmLiE0PevBKo5
MOKepQS3G2HzggorxNac2pitve74LqpVAnJ6zxUmGafrANERWrfV9vrwJLRCMNPi6PZfAka8QQI3
SKKSPUtMzGhiP8MEioDg18f0Bwn2EtGfmOYfxxdgL7/O2REUQ7mupFhL4PEP3V12fip/xzn4QTXR
86RkLQRRARAENbFuy5QNRWKxqjLgj7uIqEnt4WeF1pjcQ1AVSndT+t/gC6esCLKVcoLXR5YC8WPo
24S7YyCofl8YkYhE+PvqXbBT/4MU3KCWWG/lro8B2VHsLG7zmJa/N4xHlHYqUHmG7Onmr/Hf1P/j
JQuww9DQFrg2WMuN98UZk8f3zEcqawf1XsGlGylgDFhuD3KLDnS8dn2+9Piu+fQjzRwq6Ae3ubkE
u2UOKvuO1ktyHudSjYVTO1bKa3cPRmTMgk0NNSRRtla5h1IOrUuBMB6sO9oM0D+W1q2x7U1C9HUA
QaiugKAnIWeRmQYyRY0KSTtYYguJwLINdl92n8kIdpLdDWuj0699hRlzezY5Y5EfpqQS6ZJpdoH2
oApBsYGeiSJ0VTciZnaM2t3xFkR71BPNVvkl9o3/c5fprDKlPNOX1fIUxA5a/T8thQ61eGA9ew==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27753167A17FC80"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-content-crc64: axHPEDsfBqw=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dfef29f1-8fbe-4049-8cf1-9805ff5919bb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-c7839284-a688-53fe-ac52-db7ac79487f6?restype=container

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
x-ms-request-id: 9e3ac5c5-1409-4cf3-b351-cdd71149da30
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-5a73f6cb-7888-9592-74e1-9f38ba43e79e?restype=container

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
etag: "0x2431B1097D460C0"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c3cb9d30-11ed-4ec3-b1d0-7d6f411d07ec
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-5a73f6cb-7888-9592-74e1-9f38ba43e79e/test-blob-52415909-0f66-7304-58b9-f7707e4afa36

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2266AE4DB09B0C0"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 264db4bc-c694-49be-9aff-9ffe6225b85d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-5a73f6cb-7888-9592-74e1-9f38ba43e79e/test-blob-52415909-0f66-7304-58b9-f7707e4afa36?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: ae6631ac-79c9-5c0f-5f7f-502cbac585ea
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2266AE4DB09B0C0"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-lease-id: ae6631ac-79c9-5c0f-5f7f-502cbac585ea
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f74657bd-e11e-4edf-9e2a-10948c315826
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-5a73f6cb-7888-9592-74e1-9f38ba43e79e/test-blob-52415909-0f66-7304-58b9-f7707e4afa36?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
Content-Type: application/octet-stream
x-ms-lease-id: ae6631ac-79c9-5c0f-5f7f-502cbac585ea
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
nnCrHx7qFLvyAALPgSEWKudpi4jcOdWQSuXz57/YuJIzDdINntsYwhyqvMh3P9s9aCZFUTr9DWWb
G9U59i38GUdvnHNPCYsLUMlrMnwMGQoKtX6ZkmdYNQBtcoMG3svvrqKBCKJn7l+bOQBxktvojwLK
L0CuY4bfFmdz4ZcHBXL9fIPaihBooscf/lln56MlheKBO6+LQEsbovE79A3IkzSOcxVXDQTxYox5
j2UteC7DTly0hcnCcjs4v+geLK26V2ok2XONzXfdkNkiEbHm7SrDd6awFA1rywHaHk0c0jXevzf6
CZ66NYDk1vXvoGCKUtK9W7QHCUNcuQ1xs64pwb2kQ1J56+OLCEIlyz0YeyuhUMx7XnaA17X0nlCR
SYLRuxU3S1wOEGbuMlNy4T0FRD3h0GPirWJHI2ychE2T+r+/VBAo4DDPkj9ljSwjDvV47loSr3ge
7w2y8CfvcosZWjiTso0s3WMMEj4jfCA2IxV3JJXygEpGoGQDde8J3yCzTDLzj1tnSxH2Bpw6+3Pt
fM0SeE71JtntTBIpKWdzAzMdby/tQpO6D9iE/HquDKXxFvgi92bSviVZBUJJPiKpggJpHItD/zo5
WGh1cSpfP0BsNxJvUQzMS7EKlDxRcNG22nl3RO8arRa+6Z7+XUz7+cYC3AYPOjH2nNHZOWv95+eW
vpex5/pQUon8sWdtzu5lD5p2TpPLp6BHgaceQHSqwAG3Z561SRLLsop8EonJiM7jdCnRh5lTyhf2
aWZTMhEVUfBmtWZPr8WHq5wIT5QWfvjYOsxL2ThoY5yHvuCseH95Z8GYY9JolMRkStz8S3uC3+pt
evdEyXi4/VLJyPHk2zMdj+jTfhslcKYI5o9cbBghBd71P/2HNZ1J4GWAnsvTf2+o37ySr2HPRwlR
POPoW5E5qMIS7pw1lVlLiZ62pNHaNGYgs41cjlZ9Jvf0Nvi5YITTR/YJwJHTc0liRyXCGaM3dgd8
yKcE3BlslcikQF5gkSkZ413b0XTVTUBD+kYwug1TvL/xPJfdzmrcnCvILjLrAbb8qDZFXKWTp3tn
weLSPNq7UISfb1SRPBTz/jVIDR4NWPiQNBHWDl8ZXpUcdg2ICWBRDN2uS5JhamwhUl5wSppcWmnp
QgfI5EIkhRC+dcYHavTU9wBBXgxmLsmltbsBqRP7vxyjnsdYiCiaisaBovWmGudpm1OaG/tdghM+
Iy+GItv9w7WpY8wsfG/Yp9RF5YzT/prUmA3AYaQgRhu0GmX4E2fqg99A/LYbPB7kwnQmF52HaiSU
sorNPWIRiB2weGIK35NtWmGskwHkuFvu258w+i59La9AY2HcHUZ9LnOZasS82uLgubw82tcjsA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24CD72FD1EBBAA0"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-content-crc64: SQ4WBl9X6nY=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ef2c9898-b24f-4e4c-8fc9-68eeea39cfba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-5a73f6cb-7888-9592-74e1-9f38ba43e79e?restype=container

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
x-ms-request-id: 72291d2a-f859-432e-8496-fabd9100727f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-61de2ff9-e0c3-ee8e-334a-b3c97b32903d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_27
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x271CC1C635D2CC0"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5d440a8d-7dcc-4a4f-b2cf-be7bc12d84fc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-61de2ff9-e0c3-ee8e-334a-b3c97b32903d/test-blob-8d642f1a-4e4b-3296-01bc-4f41714152d8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x245030B4F12E100"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ae92984e-ca6a-444c-a25f-0928d628c51d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-61de2ff9-e0c3-ee8e-334a-b3c97b32903d/test-blob-8d642f1a-4e4b-3296-01bc-4f41714152d8?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
Content-Type: application/octet-stream
x-ms-if-sequence-number-lt: 5
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
HbNnrD7kuk3lqjd5CRBnrih/IatylWSrmaxfBpFNfPL42qzHyuP/NXQWqKEXHCnxVaAY8h+nZYhP
uxORhbO8ly1FgS5jn+REgOw2XOzDlHyDbrHwNIrSUHUkeA7PbbDBWRBz0pr6jrW81HIzcAmbiyeX
DhcCy2KjcjC4PibVdBI7dQLbUMHhiN/7NGAYn+BsiezmOF6Zvo6u0F9pQk+O519f9/sGvztltYY3
BpcCi9JQTLU67juzorZzLYBid0aQbE0BuKfkZcmxgILYYrf3rEWMGfaaVPgjq1VFkpK7Az5ApppJ
ANIrbObsiG252z/+fIE71V5Q9hdU3Q1Sn9I29n1El7sdratyYawPrcyKas8VRhURgC7f8LCC9SPF
2MwTtZHwdEOE4M/WyHOxQEhLynM9PFm8JXZOZKcLm7iHrYjg/Pg6mfWMkWVGO7e7Lq9nNiqwiJxz
VpAbohCbeUUXThvq0URQEDB9sKrzduq+kzb4o2SN1yTsbKVoH/fl8BgfLuyc0F1rFyX6M9fyf9+m
XA7ao9Xhinf2/mSf6PE4mMCS00j9IcLZjYw+kqRN+uzFwcLoC0xDPqN1ptL4yy80wZoWX6yXqDpM
ABZIovfTqAN32SYvT4xzT5Wkh3vw4MFdCtEJNppALhiHnAo2+pysov3OgPIIBHEOoxAW8iG/XCBV
65cmynJpNqoNp7OCPVT4+OV9IV/OVAVf+5OJKTz3yEDp4A8EhdiLZUpH+12+i2W8Hfk7QTrBhpaS
x87f3wxuFd9ymFxF9HIN8rwVhliooG8tzQtCu4cGKFl4cr4JrIU92eZ9TPIIdymHLk5+qwA96SZf
sRIBK1lYbHADzIKzA0Y32KxyKlN8JVbiu404h3xZOoiXqftyPK6MJd+CBaqm0yoIRtNTy77S4oy8
Hm/MIOTzqZL6HFpLxJz95QRz+R+rO+hiL0CpBW/JxcZutR0/wAX7j1sYrLfQvYI3VeW5XulsEOKG
afCjSqQjMFaT3A5+viX/eGrEk48xknG+ca+JD2bdAqU7uFYUV0W39XtgPeFzuZe/uuZ+qHxSVNZ/
5dj0mSHwtdlpQwXO6iElDJ4T0VWPS7gYyVSAXloo6GR/lXFsw1tab4cICXaR8dDEWZveP4OB75og
28/McFZ+QFqhTlSvuElCuWLNh0FChtiEuwW/Sqng/qbXTOeMjv4xicgb8KJ7FaFRm4UhtGdY3VX2
R7VRv/axwFCu12tititjnP54J5Y2CKZjba4jv0k/f26RlUZJ38nSai9RzT017+RavRho4La/vz4P
7VJHjQAGb1j90CDkGrw1pr1m5DtoLn3JyAIx1p+40tYHOfJ3itwuS17lOB/EdaJcMzn5WdsDpw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E93A97F4489140"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-content-crc64: faAd2dqLF2E=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 35db8bd7-d5cb-4359-bd00-5d017c4d3335
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: DELETE /devstoreaccount1/test-container-61de2ff9-e0c3-ee8e-334a-b3c97b32903d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
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
x-ms-request-id: 1541019d-51b7-4f62-a6d4-c745598029db
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-c57ed4bf-d4fe-b998-44fe-4adde1c9bd1c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x210A23861F9AFA0"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fd61b1e1-3f40-4ba2-9060-4731ccfb2d02
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-c57ed4bf-d4fe-b998-44fe-4adde1c9bd1c/test-blob-dd9937e0-f583-055e-535f-d5a265be79fa

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2152DDD02446AA0"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2c1f520e-c313-498f-81d5-1365a59a940e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-c57ed4bf-d4fe-b998-44fe-4adde1c9bd1c/test-blob-dd9937e0-f583-055e-535f-d5a265be79fa?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
Content-Type: application/octet-stream
x-ms-if-sequence-number-le: 3
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
BJIyogwXMHbFLPMhepjBknUdGCFCJSPJdnhynv/2U4aET9lOlxsQyQcjF1cCPYu7nkMsSKVXuN5u
aCyTpJF2z9hsnCq+c/paDU4ZHw7MxzjttwC8yQvgLJf73y7ufCR2rEh+laBh/CtI0jtXPZnQoaDz
pu2QugbNjG+TwpPMbJApo3LFTjKYjLrVc/fQie/9Kz6N+tY35fFCsQgxzTmXfGarLZomClNuWxkz
ukYP/AKAlZdVPnG58r2Bg5wpZ76APfeQJVxU1iHqH5+9AyqrM7QGsDiiQj718TrcpYe3RPRbsnxP
ftemK792ah7R/O+T1lDnI7aG3vu5mzMieDCaM9urYVGtW7XdX4V4K9cfI/VLSc82zyA91dOBleKk
hLOO3DdDJZqe5XqbCsQxDbMkmXg91i9gY2O6bYx9LMbSONvR6U+f3P1arWNVm8RcDMcgXftqZq2D
LXnUibcOILmzyNHoXyNkhL164inLC8eeXWHEXM7KaNItTbvVy1JGTIyqodPzc6yjvNk+74ODuCKy
NStWScPq6V//uxFnjrhqNJadIGnzq+m0IKD1jHhOqZWZI5Yn7wLIwLhz87ibPC4g07vt5pi4volC
oSkj9F3nsBF8zmoiQ0ST1V+xgLcxGeRy1bi9YcP94GUM5U7ZpMxajEOmH23D/pB3WRE4Bj3REIhE
sR+kKk5Nfu0EFV71uTCTV/R0ivl3rtYoRgiyxdknO9TGlfOttWH0WKCAvukygZ/gpK9JXYaOzQJI
fORGm7kT3dmJLyQ85qGSfzFZ9+/t9sRo0SAq3t5OOMjxZDl9rr3mbOEPqFF6pL4Ot91UNNYTW4Uf
3cmZ6f/7O/dcS4FnFNF0cooN3U5y7S1iGycA+QPx3gmzXtDzTYLiE2xaHlg8p6IL4MJLBX03rPCc
Ns7X+kLzam14s7UBgCQHK8nhGM/UJXSE9RhBptmLfLLfVha0ChkqZ7PrxPTsCWCdQ9mzVpQhyBFa
UwUpssSU7TcDIioNUyCwtrEb6WGAl+y4o2L/1yUdvo4FWrcTAbTvV9a86Oc2j/C5AqDjBt+v2rsY
cA5hlRUR5WObCPhpnLT8K5GKw68EghRyRtSFOrivVYD7+pCmjsHBqwKDmob3T2Xr5tpNJRcMFO76
7k5AjKqr7LN4baIkVpzQyBesgeiNevZumVTdYS9p7+aiq59zgR9Y2K3Tf+LDx48+fVz/YJIGbHNY
0fJWzYqDD367gqr8XEf3VKk6ufsUq9LEn+TTaY5Tmz4sGq8tAQoiUHBjCEXlQSAUBwzpzLN4RCYg
ki6mr6XvZ+Zs0EKYylKeF2mLsKKN313EvmGCas+Ls9aIDW/bfKDKdKFeeXDefD25SrRK7JOEkw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FD940F0B49E640"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-content-crc64: ykz5qD9ykm8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d4cdfc55-690b-4ecc-ae89-f21afeed0f6a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 33: DELETE /devstoreaccount1/test-container-c57ed4bf-d4fe-b998-44fe-4adde1c9bd1c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_34
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
x-ms-request-id: bb21d57a-2bce-4855-b666-93ece8a153c3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 34: PUT /devstoreaccount1/test-container-f1e2d0b2-6d43-17fd-e01c-6b0fbde3c29a?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_35
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C7DFC55BF17F60"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a20f0dd5-6fca-4861-b9c5-c98a28f5beae
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 35: PUT /devstoreaccount1/test-container-f1e2d0b2-6d43-17fd-e01c-6b0fbde3c29a/test-blob-013cc0c8-662e-e6ed-4224-c81f1a41c642

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_36
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2341C82F407A140"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 756d70d2-8864-4628-9139-56fbce10a2de
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 36: PUT /devstoreaccount1/test-container-f1e2d0b2-6d43-17fd-e01c-6b0fbde3c29a/test-blob-013cc0c8-662e-e6ed-4224-c81f1a41c642?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_37
Content-Type: application/octet-stream
x-ms-if-sequence-number-eq: 0
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
BHq8C5qvhgejR5hTcmyA1ogZgSxXgmRM4/yuH6Td/J9WKQtDJrcAGTo1XebNmXPWpPGXAL+a64EV
cCieAGdixkv5/UlhPLDQGWjyIiV9fkqI2HuyRvvfuz2JLbaPYhjS0peb1JsqdWdBxudXqMhcl/Hd
FSjrsH9PGUIL1w/6QbZPH0+O4qqvXWMUcIAUhxJ0LZbEsU3w5yIYTLpYH51XR4QwCIl4zbVGLrfE
1z/+O5Evlqp5NZBpXjctdpXwVj7GvCn843+J/F/gfoKVKxDiGREoKYjy3hLzxqlRS1cfVth5/hoW
AlcSpZpLmLcN1DInSlyExyy1090XCBzVN7AHwSeqGyz1zBe6FYPup0Za5vJ2KgD7mo6rwys8/vk6
PG3pQ9aPY7gGMX1EyrGpxyuXvCIqXw2wDCaZ/lgBuc4df9kVBGNvy4I5cPiCttDcAvv/pULXD91f
OTew9WRgBHivJkrYk8PIJ/Cf8e4VLVVWvPtcAROLRnD7tcosv9Ud2WyA04+FBG44N35ROB7uSgzh
WjlpAwJlI+Da3N34m2cbgReClVrG0LiNJMqUOg5RDGu+SmWctNVpG6+vqieRQJsWNrcGbLWyG4mB
3N840OnSiM9yOVECfsxCGXqqFyaQ/OMufgNWS6C1DC/cGtj2MErG3CJYHgZKFLfqxFM7BwNi8eD7
ClHlez0vvS0hJmTzS+gv5DoEON3d42lMbIZNegQseSn4+ib54GHkKWDYKe5T93hqCyLIXrkCHibo
mQ+24UIp9aw6+lHCNgTZHw58BLp7+HUO4m/hYxpw9tv/EEdSLkcerzRBGfwmqNUe7j+qhRlsbKCZ
qP/TR5GSyQN1wyW8h/DHXlWGOt945zqZwnTaxnHCk6SmuIZHS2eirk/4seSwYmdO4ibE5THBIMDF
OYQdtwOSszCAFs9qgBPt5IuQgDZV6WANjONK/a1y5ZfFghHjhPdLZf20L0uY5GIT1gGmMKCKb1Ak
ECsfR7WDDTE3pP0CCl+URBo4oLoUdaeBNyarzLT3OxLAv3TLLB5HMSEaYD9kEcyiEuyFUs+VD5uD
nQ+O10F9QGnrQUrqyBj88G6Y+hRoHSZZCLrHcehDK7DZR44OuFnfnB/VeM+BuEnTiWFg/BSGG4Dp
NM+Htc6AqBaaEICK7TcVuV31k6RW11Bw9OiH4i6bUywNJIOKWOdQVNC556fISZsqS0O2kIfck11/
FsHm+cXo/7xUfMizi2B2pD7TnPCoqKtMXZfq5MOkMZEmCkImaloL0efqdMzSdr/iQOtJCPZs1m0W
mZwt/Rr5r0s2jIAeUDrkyMsIvTTeeubXB6PXWyibujPUD9C+3dPN8cWAm+o/w/CxZUArYxk5Nw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C6BA010CF00880"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-content-crc64: xcVrJ3Px4So=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8c119a71-9788-4c14-85e6-0d6262197eb7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 37: DELETE /devstoreaccount1/test-container-f1e2d0b2-6d43-17fd-e01c-6b0fbde3c29a?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_38
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
x-ms-request-id: f29ef794-e889-4b0d-b844-158c1c20e8b0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

