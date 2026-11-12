## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-63fdce90-15af-3478-8883-ad193118bc89?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ReleaseLeaseAsync_AccessConditions
now: 2026-11-12T00:48:16.5312640+00:00

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
etag: "0x25687DD84BA1640"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4cb18626-df45-4042-8e59-45e1ff5beb82
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-63fdce90-15af-3478-8883-ad193118bc89/test-blob-222fa1b1-98ed-61d9-7e51-2b6e2eddafd8

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
4VzJAmpYC9K4NvksEObsi85xyJwPWEv39ZzlXukJBqrT1DfUT7kfWJZdareerVCXZJ+gvBUSyIkR
0Q3Nc6zori9PWDuvGDwVUm8Gse2UWEdLTflJaEqVwAyuw32rUeXpdLuHT1UU6EtjimqmDBabfHjG
giaynkXluZcvAVW+agCKHD0yDQjyN2Wu5t7f77T1EkYE5M++NtV1oZa95Of2pCBqHO/ZaW9v00rA
BLhnBcrjOu4OuYUwy+ZnvGtyNVJ+t0G9ddLEG6jXlBGF/jEcDpzL2ar46OubOlAJcq0E/Z74Qk13
qY/3Hx9GNyR0q820Sq7Pp1unhs9WIjuCu6n705dyjLzkpWQM07qKsrDGJ46DVCf+NFZCULx+IYZU
dWN2SmSNAR4R0KVJwtOhHNMej/us/maB/J5BMDv/ZoTduF5WFGdMOSVwcoSCtXGCoDPoX5GKp3f9
9E7GS9DjEWogbAp1Sghs0lbWPIvh/0csvo8HFwbyUhDnWSAZhe5UjGEaYUhnDVUrfI07tGrrG/QG
mYxB3PljLRn5jfHnUkxoga8qx57+xbE525t4t52m+z4rEuxhE7BntjMvbX9kRClA0zO6wVNWCNTb
BwBe6nZ7U5Kyu0BgBm3/whBqz1gx1ZdxOORq6zrq1QoXhguwCcu9sxntsYjp38zFu/5D6zl8qTJp
7LKREWhXyOY1SIBhTrlErRs+RCMOiFgYpC87p+nRm9zZRhwZLKKxlemis5ZLZGxF/j4dPWQOWmRZ
eWw5GyD8ZK2jhwecK4F5ja46bNTBzEDC9qirs153y+y4v7I1eHrIpU/pqNxkqdO9pLC21O2QmKws
diV3ULBOK7wb5GvOQxU0ccaF1yNkXUzV7g+uwfb/KCcGCQFUUFWem3wfScVn7mGagmImCsCIyBnY
omKgoGrGHLxEyDkU3yBx5jynRBOHbf+uEz+U2B1nfUHnfK7y/foSWS0IIyYnhqJBtCSD4YMFUDRj
8o0qMUOe3Ur4LGJxf+hClOvmfkrYh4ycUiP545u94it6jwtt5yfqakbbL1o/0DU7QEyYH9HpimsA
jt8fpfmvOkk39u/d1a3D+xQE/FgyXILuvaJOJcJakQWfbVlIysRNLPQQCNlGXWuf1CO85Y0TzTFc
MehWYBSH3GXqPWdTezFQttBjIVOpp183rlGfnat3jJ8n65nc98vfiSxzWyADTFjybC69r6ves4mI
H7HD6D+6crDILI+XdL8EhJgnNks/M2L4rDB9udzzSTgPU9cZG6DsuelvOx/IWvhuuSsTtn09SOtP
yjsOPbjT1eJXiCDn6mj3Onxiz/hDL1E4DgCx35K70grsylFl3nwwm2U8cdLXhs7DG3sA2njzCw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x252C1B2EE824DC0"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
content-md5: yxkQ+AFl/rhTEz4jtvhDMg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5e7ee3b8-6b6d-44f3-8b5c-ee555e49134f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-63fdce90-15af-3478-8883-ad193118bc89/test-blob-222fa1b1-98ed-61d9-7e51-2b6e2eddafd8?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 2ed5ea9a-22b8-50f5-9bb5-15fb1f17925c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x252C1B2EE824DC0"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-lease-id: 2ed5ea9a-22b8-50f5-9bb5-15fb1f17925c
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bea47533-23aa-427e-8455-31184fd9c3a1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-63fdce90-15af-3478-8883-ad193118bc89/test-blob-222fa1b1-98ed-61d9-7e51-2b6e2eddafd8?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: release
x-ms-lease-id: 2ed5ea9a-22b8-50f5-9bb5-15fb1f17925c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x252C1B2EE824DC0"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 83344f8b-8df7-413d-ae6e-e0540b1e6939
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-63fdce90-15af-3478-8883-ad193118bc89?restype=container

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
x-ms-request-id: 5b4c963d-4733-415c-b85d-1b1e5a45e298
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-92343200-be06-607e-8731-eec417bbf791?restype=container

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
etag: "0x26325AB0509A080"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c1e4e2f-da2f-4692-baee-6c408875acaf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-92343200-be06-607e-8731-eec417bbf791/test-blob-7ab6bef8-4d08-7978-6fec-d61cc28bafac

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
iB7/qERgBdxrdaeGNDE4376DA2BgF1SzursiGedhnvyCQjv4vE5Nl7nZD5Ol8UU+s/ZePodOS3HK
TO6JPev1CdarA/H1QCNvNmunhwjBDch25GXxA190M/bKLXBgxFnN5Aa8+u1TSXPS7wgcp8RpCD4m
ElmGAwZ3N9D6KxKzDnER2aICBRLaIpvyHhNWV4wyYSQxOrEAR+D/RMMdWB5gHuCWCs0hZwMsS+++
k+XyId9DyMntgtTAEZLBAsBPvMp9kf8zv02+EPohBO7BQbP7DSPj2ZBUcpwL1vg7YGRC3I4lQQHl
vmGShbfPzH3l/tDexfSda+M5KB9jJ+lUgrCV3idgmwCyFk7BUVTZhKYeJtcoXZpwpXGr6xjigpZ4
PQIGOu5VhWLQK6+l2xmPYKN4RAERLCUVJTm2tLDnz5O4SRRR0kq4yKB0WDHqyslXHIt0aT2UZhDc
8RS0n9Cy6Fwb7ZIFPY5ZwHthnNT0KltvXpglcmZVI+MDdOA2AynQwm/Vztw3Ud78G6nCM8k76Ma5
RUA3jXX2xsquAsmtI71RkNplH1t+OA26KFe9k+8Zx4safL7pmDT53wgSiE8VTvjrcKLu1slqOwwz
fWQeODLalTo9kqb/aPima0BTa6+9pdle0SJMK/DCsECxthvP2qbWN/MU2LtR7AeqSGqJF9BcddeL
v2cPjmlJeuJmTbLc1pCZfDO8qM0dDeQboeKGOZlwVEBDRBs+xqmJy13Z659VznHZ75qcoMwKbbKD
9OyGw0FJ9fhxmJF1W7WJMt1vRCFFxdNxrEn+1LR0OddoutK9AgcckPam4zbfZJPkEm3vmiiQPi4Z
FRf3SiBE/V66DaDjzDDVU7QrnuKckUi2GsFGhJ6v13yjo+zwJEbVYeXXJVbyAEU9GUd0ZZ9MfIPP
QS9e/njACzYkQClD5S9uVTz8xWzxwxl8CWtXO3HcViZpIeMWdmNsFhogzsAc+TQYBQ9jULcX3X0W
4vQNaNDER+kC2sNLWN/Yj65S0fRYYA83PzVieQZvUkNl/5RvX65KXIfXGR9wzK0wisEIxAyJvYHl
1imaYc3jkoiA5VhKaS8ACHRtgUbvxnKHMe9EZ4033EISiYiEr/q584aX8OZV5SCRB7yXGzs79Q+2
EzDeniv6SAkVOOCnfFl6tI3AV9aLMUzPs1/RoMAG15N5zpvK2lVbnKfdP6w/6otiHWeuep04KuHj
DuvLKahID2FMLa69sNk4ZLourvKfj8jUboNZWFz1QKO65stpkHP/lTBL87zdpWyNdRbiCnzvRH8i
9rol7rcEVu0KA8kNz9RHLxjBU5wM9skWy+JGEjYmyqFMRpm52qZ5RpzP0qKjgKZBm9pkLfDiFg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E5627588328160"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
content-md5: Why+4eM6+1fNI9eOCmxiCw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d61104b4-8458-413d-8fac-08e82ef06921
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-92343200-be06-607e-8731-eec417bbf791/test-blob-7ab6bef8-4d08-7978-6fec-d61cc28bafac?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 230ff0ff-bed4-b744-e438-27c1883b8d55
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E5627588328160"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-lease-id: 230ff0ff-bed4-b744-e438-27c1883b8d55
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 584fa9ce-ecae-4f49-81b9-af4eb8c3249c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-92343200-be06-607e-8731-eec417bbf791/test-blob-7ab6bef8-4d08-7978-6fec-d61cc28bafac?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Modified-Since: Wed, 11 Nov 2026 00:48:16 GMT
x-ms-lease-action: release
x-ms-lease-id: 230ff0ff-bed4-b744-e438-27c1883b8d55
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E5627588328160"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bc9a85fd-34f8-4f75-a5d4-59c78ddb11c4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 9: DELETE /devstoreaccount1/test-container-92343200-be06-607e-8731-eec417bbf791?restype=container

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
x-ms-request-id: f00ba97e-2565-4354-9125-56b9a52e4693
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-000d4871-243d-7327-4b3b-04765bc29db1?restype=container

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
etag: "0x26840EE2820FD40"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6465fce5-40e9-4521-b07f-642a686bafbf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-000d4871-243d-7327-4b3b-04765bc29db1/test-blob-c8993069-83cb-87a4-5817-ee6a7bbf1e06

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
DoXy5ePi2dvJm9eZus1bIpp2V1ihxIrupIWoJTW9+Iwd/mjWz7fOhla9/y+rC82Ku8vPBGfFZEn7
BEFdOrOlC6NLe7xkhVLjp9AB48RaQpi3HWlp7vMkV5ke2st1cUyiF/OLYI8RJTZ5612WxIGEoMGo
pR1KPB2wJiQiRquHbTaEXszRz+IJpfcz8AKVjZMYmToJzcsuWNvW2zlr7t+L8X4mEmW0s9Hfnv8l
F0saGpiQCqxwfaBrVQbw+vSonrcXqP+Eb3stY+ZoKS7LCUGQu8Cg2uMzGnPdu71fxLjdNwBIDm5M
lqsdY6fGCFNxn0zEYD8zB8TT5I6LprS9zZ8ti/IugvrSRCQVg3Y8bRIfbBtwmmN5qS88dSngwO/3
X5UImHxhQx1R8RsaHoRNl3d8azqYTTI7tOHD8g3Q8oM1HiPgM9SVvij+H6lIXouq7t6yZFW1XhJj
zeObnVEPgP+Y5QBhbGOi5qwRmi2J81ZWGAMuHo0ugL8QfWbw+iDX7p6pr3iLSYF7EH2oo8Tk2dmN
RYVN4WJxaWVAUO/8seyLOquP4EPdys+Bsw0Qhtz7K6SNY7SbiQ08N0YTSviSfl+QHGgYVfmWr3q2
zC1UYeOIRCVKb0038LGeUqj9yn/W7zSuf2l049Wr9rM65b3f59ZiigbTRw8RWCy3egNQmeX639z5
puF5FGFPn3ia/Qr0vmvSmj95A6cknCY9vGnSWl3NQAXg5UD06XWlg6iXd1shw7uXff6mgdw11Am6
PFf3fUQazL0FE9kq3bHJ1H//jSXLHPmtOt1fJ74pqhE3OqwerQZjfKueHK/ibZ9N3K1cNkfk7yBe
SkJnu6T+3GjH86MEqyZ5nBF6LQBJy809EUsRzHTKUkuMv2PD+8EGn0BGGnr7STCG4po1asIgFH51
KalY7A/z/aBYd+zDtqBPc43AArBSQcgai+nalOiJbKrkTdEXrrMwUhzZo9FEwiz55vY0XxHNIujh
PWElGWm4zwtB32jON8Xaj7CUeZ731si84K3xVAyZFivpNnBRCjmyIdPFA+PEK64xWtBhOalJ6WeZ
aDi8xnv+p8k95QFViIR24ljKMdLk+LX/wPk7N9yBn00IuKIA9lpYxlsahkWt3NFL61dQf7iVtG+C
vAaBwm/su0WzTNDidev9cmp2ynJvUeMn8EyFMSCVcwMyfjlT1gPrLcoA+Y8BaXVrUwxNHun9Emsi
WtIjZ4olHtnNsPeyqpxnip2nb1hUJobXGd4USFQZNGvOMHswyMZA29q1M7h9uahv5ZNMVaMTzjNL
S02sENaFs3uM43kgNsLWZ5R9n/LNWWA1pGLBzN/Iu2JH5Hx4k8oEMIA98dUvTq/Rdu4OlS9BfQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26658F375542440"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
content-md5: wIuhMMG8kk/MOq2rw9eaQw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fa3ef5f4-2a89-4174-9cd4-48e3de070f4e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-000d4871-243d-7327-4b3b-04765bc29db1/test-blob-c8993069-83cb-87a4-5817-ee6a7bbf1e06?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 6c77edf2-c374-9ce6-c428-16d851455dd3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26658F375542440"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-lease-id: 6c77edf2-c374-9ce6-c428-16d851455dd3
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: be72c0b0-0e34-4df6-b048-19fe49996ae8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-000d4871-243d-7327-4b3b-04765bc29db1/test-blob-c8993069-83cb-87a4-5817-ee6a7bbf1e06?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Unmodified-Since: Fri, 13 Nov 2026 00:48:16 GMT
x-ms-lease-action: release
x-ms-lease-id: 6c77edf2-c374-9ce6-c428-16d851455dd3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26658F375542440"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: df471b07-b03a-4dac-80af-071cd2fa0d6d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 14: DELETE /devstoreaccount1/test-container-000d4871-243d-7327-4b3b-04765bc29db1?restype=container

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
x-ms-request-id: 761e4027-6d1c-4fdb-be95-6a5c7b172bdc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-726e79ca-6790-058a-55b2-ef56f0b92533?restype=container

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
etag: "0x2282BAFCCBE2580"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 25ff0a61-a209-42f6-b546-40cbb336abe0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-726e79ca-6790-058a-55b2-ef56f0b92533/test-blob-8b8a6606-5e1c-6c8f-99a1-2dac19765e8c

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
GBtDHMDO7YpjcRbB1JCrCgPj0uq60rZs6QLZ7znd7N9UYz7VdQhzOHn/KKpHzZgJ9SOpNqNz0UVk
1zO+9f5QhYU2bXBR1pT6b5lwu6oMJBtpz/oWNLU74JL4cJ7VtEJ7rqMkEWAntx6PrsYKAhabWLMX
VCUDOlDQ+ozdWWX1JbtX9QwH5xO7QRjbh4bvMd18XBjrvmAcd3RSVBbTSV64mYgLsg0JlHGfWxIN
KLLK4MivYfxNCmdaOn2XtJL86Pe6Iu795H/QcsenS2JND0/BiHRNJOhha44hsHePct/eo3IaUgXE
zPxJ3u40pb4EDSsu1Swer8QPWLdf3DQHQADoyKjvM7xJ/bt4A0X5LMXPHKNMYZyzwPOuC/pOZfDH
Qp7uTN0WFdlu5Nhxpqt/FSzxj8CRut9jNAi0QSfC+5fLsMGmC9/ouQfJ3nzDQhpIL/XNXNUwNoe/
ihfUYdOyq+hApfXp2ApMCda4yNxin/LubBEy9J/Cm3k554DHFFczFjKTg5wkXlbrgVL+d26rXOol
5fXBgLdJfQp7sPCKhPV/hbGqzhxWyg26R3NMxCQLjouVoi5icZZ7SgWRqK5mYPxdf/G9AY3Ozxvn
BjlD/LnmcCJl9OHGHBQaLoQXxCFfVOZ27kQyTYz9x9MTempdN01LqziMAWwal2Ldo9IJtgr5iLJS
zA10syKVZy0OsqKpvPc2yxnp01N5XFfiVaq69BDIGvK3CmtA1vcV9pk+DOTAM+fb0+vxD7Re2XC2
kl5423MdRZiv8rGL9vQh1Ny5Ok9yIiLD3iAl1go9WTH7iUSZnRsmIcZMEEE1T9320DvYpZ4gRHA8
tfxS926Ncph/kGywiDbAkxmJJRHgjY9DLwbOZbOT2kTUXOgf0ylXv56otb5wRkcEFxGElx9eWyds
D8hovwzl7LYo2ytOob/vMWZyONfQ0ui/yU2hDkMldQHAssRh7/+Rw8kISGobtXZSlWW46yNPnDzf
qPW/Q91zAmUqju77jUJm4XUNyIp+oxPWT3jdbIrdcRaHgUYK0oDslUUE8SeIVwcjUgquQdOyYQXh
6fNklZXbTB3Ycwz7XA71ITNEebLrTvhxuhp/Ly9C1SBBKOiMh/+wKaQKsOT7KPX7uSCgbedT9Zr7
89p6XB3tlZ3rujMmaJkzlE8O4Z4TdZIlg3YOomg47jJNkZQkNc2HHRpHD23B1VCHbdiXRBT8531I
Vdim3vM0s8sB2NYEDl+Ch8SDzGUkY60mhzSPoKkdUaoW3N/04D4nElyhwP15gl55Fb1QeRoYJPIq
gFa+pRIi44cs7TKAjaaFW7oIgqKwrAXWFovrzdeP/rfsyWDnaW1Kf9x2TJQs+YcXyh1fD6FQeg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x263655149BD6840"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
content-md5: 2k1DYx1xbHb9WClROvvZQQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1070044a-f12a-4a94-baf9-d7c09be4ba65
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-726e79ca-6790-058a-55b2-ef56f0b92533/test-blob-8b8a6606-5e1c-6c8f-99a1-2dac19765e8c

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
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x263655149BD6840"
content-md5: 2k1DYx1xbHb9WClROvvZQQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bec0b162-1ba9-49e4-a21f-c7372897957c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:16 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-726e79ca-6790-058a-55b2-ef56f0b92533/test-blob-8b8a6606-5e1c-6c8f-99a1-2dac19765e8c?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 8fe851d3-3786-af16-9def-7a93c3469ef2
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x263655149BD6840"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-lease-id: 8fe851d3-3786-af16-9def-7a93c3469ef2
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fb004dc7-09c3-4169-9854-bf9b74b204ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-726e79ca-6790-058a-55b2-ef56f0b92533/test-blob-8b8a6606-5e1c-6c8f-99a1-2dac19765e8c?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-Match: "0x263655149BD6840"
x-ms-lease-action: release
x-ms-lease-id: 8fe851d3-3786-af16-9def-7a93c3469ef2
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x263655149BD6840"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 73256884-4f6f-4523-8b3b-b47e1561059d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-726e79ca-6790-058a-55b2-ef56f0b92533?restype=container

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
x-ms-request-id: 7497be8a-5c30-4747-bfb4-fbddc5d81455
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-c503be4d-5f39-a971-1c04-d302b930ee16?restype=container

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
etag: "0x1E0BE55EC086120"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ad0776cd-20a1-4975-936b-a4decb8c8e45
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-c503be4d-5f39-a971-1c04-d302b930ee16/test-blob-968c4f9c-de81-47c3-c6c6-afa4b265c3d1

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
LCsSUZ6KQHTfPnKCYxT2bQBk93S5B3Fv+rv/cq/M9rZAAtWNHZ13EQ4YtkJrQeOx0EKkTm5PFyS6
o1fii83EE0i7QmA+aE9i7OVloVEuA7nYTaJtJ6hI8euw03pGlIZAVKL6sP+Dc2jzQWKI6XbTi5+e
Cj0rVuufclB1jpTUHFdfJUyuM1K5VNo6eeZGwAh03UfaqIpIFf23Wj2uDeTTHiQKKcQpJVhN5LVj
8dwFWbJIAbFN+nTNFw9P99kVC0f1ZlvBO5dESrfvjcTU5CQgsQCLZgwzhiSwPBG02i5+N9htboqB
Qx4bBLb5XWyw+TLrL0XYiqQ7weA3EP+Fj3CJcFXrZnWZnm3ib2JVOii3AEPfyKropa00Mq2pSTIe
lnRFb+0WxZK8UZDX9hpC5Ya4fxC7pcbFoMqntzTI8FQ6w9ntEMo7oDuwIncaEa+T8Uwm8ckiY/Ct
f84ibw5e9GE7nDJBVNW8fd/VCoNPq48bFMXnov6KGGDoQJD7GTEtUi4V3nR8Upx3anTqTFhtXtM/
BlpId1FisITSWBREwGOuqLhUOcwansIobzeKoMsHe+K8vBLW5Nrcsi7wqfmIMqkQPKSfGCQHJGeY
IAcZ2A+4yt0yhwNR18PdeIaeKvTIoDyNemQnaGK9tZiqPcTTwtoeN98cVaqmvmTgwaCdaflz0H/K
i12rkWJ6dNJrp5n/CrWsf/IVrEqS57v/RqbCIEyeN21ECDZ9cqZ8oeHYOhfL4bbr8ekHXSM1OKSh
rEq7uFSGzW8rugJ+Lg1LmApoua2kM2Xv1i9il9lJDs+S28VcwOmNUWynnya0bMLcu8QZzX72/Xnl
zOEkIzaW4awy7FNH79ch22dA/JM+O2pshtsUMEFQm95Md/QHaC42Eb56gYBvlczs+PEWtQDlppB3
t51agbFq4VB0+njiGXI5CuvVxLnp/fAPJzdQOubeZ9FkkLCQ248ND58w+ppTCd9+3asUD+HWjbqs
S1l5GqdqlpOnfojBqS5cyLQZuQJWux1Y0V06yVfvjQP245A1k/X4xmQGrItXvDN9uEcsvNO4VY87
IEhKL8w8t/GEy8WdJjS/IfOdTw+SARQpvREPwtAwPo0B+XKsrZaYyvWa0vFu35ESbZvgGgWAqR80
IXK6LPQgVI03nCzBEnNcBYUa+C8iut2A/VU1TySHgVBTeIwj3Z0AeX5kN0JlUFsnhBSAZbDwEWaU
Oi+f6wRorxvbbprmOCfoGX+wvoObG6z6DcsPBxugY2YmjqNuYI15+4cmieLAQEvsmEwxP1Li+R+C
pd44WacAOwo0wKmEebnxN8P8dJHKOcyAIm/PbiMTRJWE7LuvQKHfJk3XjIChaB6TQAiP5YWNtw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BEE5D8DEF51DC0"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
content-md5: ibdSFO7vU7AQUzr5hvn1BA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 59d00c09-4abb-4784-9a86-efddddfdd436
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-c503be4d-5f39-a971-1c04-d302b930ee16/test-blob-968c4f9c-de81-47c3-c6c6-afa4b265c3d1?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 36b8116b-3138-e6cc-207c-14008dfd41f6
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BEE5D8DEF51DC0"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-lease-id: 36b8116b-3138-e6cc-207c-14008dfd41f6
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 066d2983-ecb1-430c-a78c-a4e9bd9d406d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-c503be4d-5f39-a971-1c04-d302b930ee16/test-blob-968c4f9c-de81-47c3-c6c6-afa4b265c3d1?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
If-None-Match: "garbage"
x-ms-lease-action: release
x-ms-lease-id: 36b8116b-3138-e6cc-207c-14008dfd41f6
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BEE5D8DEF51DC0"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 49100969-b729-4331-a627-f3767ae519fe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-c503be4d-5f39-a971-1c04-d302b930ee16?restype=container

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
x-ms-request-id: 8e8e05c0-5790-4217-8b15-b47874f4123f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

