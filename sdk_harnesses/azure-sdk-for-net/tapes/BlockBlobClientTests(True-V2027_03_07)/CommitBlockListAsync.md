## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-dc51e280-30c7-fe0c-b5fa-74181d3ef123?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).CommitBlockListAsync
now: 2026-11-12T00:49:56.2810971+00:00

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
etag: "0x2623907FFC9DD60"
last-modified: Thu, 12 Nov 2026 00:49:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7e473879-3018-4582-94fc-4f20e9f1d92f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-dc51e280-30c7-fe0c-b5fa-74181d3ef123/test-blob-3075f6f8-ddbd-56e0-9a95-bd7ca9350b37?comp=block&blockid=dGVzdC1ibG9jay00N2M0ZDQwYy04OTllLTRlZDEtMjg2Mi1mMDYyM2FmM2U1MzA%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 19fa0901-73e6-4bab-9e79-4e2be4702cfd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:56 GMT
x-ms-content-crc64: TVlEObnFOB8=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-dc51e280-30c7-fe0c-b5fa-74181d3ef123/test-blob-3075f6f8-ddbd-56e0-9a95-bd7ca9350b37?comp=block&blockid=dGVzdC1ibG9jay0zY2E4NDg4YS04ZjFmLWUwODktMzg4MS1jNTI0OTc0Yzg3Yjc%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
xSm3w/772E++uYGI5JrXwS78sW7WTiWiAftBMXOPVX/uPVL0hi0k/R0mcQNbV3EAvftOrIOdYXcE
FMEDuafcLmMBmadH4zoA2LRRr9whR6mJQXR3Qan8Udzb73JrIUN2SkKfWr7KuNrBTdTPTLKb4s0X
eXgyZO26BUjKbPPIlbZx2mSZgezrv4iatvPVLQQqPw2lU6fKQ+ZU5VV1/0vm+bcdXnFNAWDgLLrw
mK755NhDoCzmIkIPppd+RJyXdsA8s707uM+T3D6sxCft2qo3WwF8MV4f/9Z1Dbfaz7zESLX6s+Xx
vSwJsMPuOV0aIcvsRumbGkRhHbPmxqoXuA2C6Hxx8yfFRp3Uc4GbMMZ4Wuzr7YjSKS1xmJUxCveC
8fe2bFDhqS6kJwBMxqbDxuztbmu+K8uFr79OAFqRlDulUoKJ5cR1lrG9R8aHhmKHrdKoQ5yMxMYs
MLyRk6jUE5LEpnQkOeAod9e5AOQF/Slcx1KH6FCfGY68XbQH5AMJ6TQzwt/uYnPxgMvF0sPiJjKT
NMtVTCpCJY3laNwsIJPTsBaw0jpKbmTflWeE2kfK2jaBdK83s5wJ8JxSCPqXxWA38SGsMVT4ScVn
drfDvUtFG46lqqvknP16puGe92ZqR9AHTeglHajiiSvp0DzlRTNRDOxr8Rq1U1UkMopyWlFf/C7n
vHBiIP7lwiF/+svAlGGuTOt5/lW1UvmTAOodcC/aitMN/onC7uvuhS/4NVmJZJ4pxA1l5f3ZMWl2
zyATyFLypW/3spbX614Ai3gmvBygCptM86widKXWNMwgTB7K2r3cBpDpkbIHUtiuZVqFsnVN1sWE
x9WmzzDKIX3Kt58/NbC7SrWMt3jpRaDTcw9LUIJW03VZRRPnNjZfHm80PJs5bjCpyWi/wB9Mm4E0
0lwgf9D6c+Qp5u+c0xN+LZgItAgEmgXfoYcalxJWDKqSs2PaPp+eOsm3EIhBDfZUQJOGQ+d5MDhX
Qd1J4NzR0tlFCiCwo+74aXo/TIl8npSQxlZ/0MnCGYMqg/3BVVns5j2u/APWo5ykjdptOeOu2qNJ
uBqFUQEQgvGdhSDxNhQgUmZLzqGQuiK520LvVN+fe6lZeJw/Z5U8nnkSOB18s1fFTed8YgwBuf33
y3a/IS4R/Ql2l7534OvRDy8ofoIFPSfrKQf4IxidV76eSJsffH1LADsTBhyYTWz7q1Pc2Tp78o5P
1PcnGdnw2T//2ZhPspOy3X1G8TYKUtua/HfFwX6EIlYMz6iFJOdhIi3cmHTUrPm/Kfu8NQBXRIEb
jB1iKxjAe7ZBQ+LrLbmW5M4JLbpnxVB9BpeCx+1VtIsmaZfK//cVHB2+kmgX1PxCJlAyTRbHtMbM
5CWAPbPI7I5WxMMhzOXW9BGdqTPnZjGaQKGdI2d1X7XQ/RrSlN5p9abawRA4IFlqW1gEKQqT5X7z
5v0SK8kn4GQOUc/LA2AyM7SMDKQgYR9HMscOcDWqPBeb363hVsrds+CrKc+Knlj30vZWB9nZ0oXd
y/gBGHAuZBS3LySzUd3qrljEdDdPvZNvFp4/UzU+wgwoA4vR25pwfMW70m8zRIAYbFiAFV5Njg1k
kgLR7xDeeW0Yi01RGNO+U/dyk+okPNEdJufdvqyt2nV9bUmXno203VkCGrkyx1SFwcJm2/ojP1Yw
s8gpAbvAarDY06qJJrRqvbaRIiEY61+SV/zqR/97Wi3zZuvFi9udQa8IWvOp+5sN+x5DkR00GMho
lqm/1iKxXXl9lr/JpDLb8+BxD5Bs6Vth3UvhN8gPvk4iXPQx3muMV/x5LGXbRFbraJ49wwg3+61N
XvnXzyWxbdhwpkg9qRV05biU8732hZj09c8q0vtG62BH44BytYfWyL6Map0Orb6JyN5PowjvV9hg
4tpWh5rdKrvn9sWUAi8wvSr+ahr75kcQoQod9khYV4ynEtOtgEEkr0DiJ7f59MWuH+bd8ey9ZPyT
RuWQwDNzj5857fBbgzzp2rraGb+QF6xEbtdiemWf6a3XGjpblO8NbpcXwAfVUpyp9Bcy40s8Ai85
S1FcERU6mQNChGkCjkbLzKoneFelbxs6uYVObQZimhcLIkidsV2C3SYDks4zpmbRZhegFYrXk9s2
IViP7Cv94OpR92z9LRtMpZswodxNBxIffAbuwYSMM45sZ5AF8vH6BrLk4a761Dj7VHDvp/H/6BlF
cG8lDh5lxcTdkMaLRrKpNZsqaSZkJajN8m0UnYudbX52wIGC1fiTfhzpHUNycA29RXJW1H/z4EvH
VxuxUCc5PyNHFIYwJ2Cjl+oKegdkW4JfVlcZR5n/g982un7c4S30sN0gKlyHjB4Rsz2U6GVDYvuZ
UfrPH/iJR5Cm+mzhxrW8FcoqRDAm2Mk5B5Rca5p581iCQ5AzJJDkluPL4ZKxL+yH19ObGB3Kcnkw
lhhkLdz2LAcTX4IlifE6Ra5NW/Y3h9en1JPH3to7t9EWA453gGgG1LSLndBqYk3iYNNvfReC+Q5A
vFlILk0t2KixDoZiwsRFRoZCrOkHPXFG5X4HzDq5kwp/NsQPvqVnXsUouFPHf50OKjaQQEwkOX/n
AknPJgxu93t844wANYjg2k4k3oQdfmXg+KIDKFK9W/xEJ7xcmDe5usDYS5wRDfStsGb+AFr6yYPk
7i1qas4pv4iPuw7MhEIWaiTDRTPJz+utVXjsvlqiSl04eKkKT0/yrosUglHl4Ssj6JU1NoNQGh5B
vBRWPQAt7XGwlAyYCxvV0ZentU2ZyHRMyNbFbBPa6F2KyZM7nHGL5pXgNU0fitx5YGXsqGXRp/Sf
CXQpaIBe1quuDkKImjUlHM63uZInLD75Swut7T/4uCGem5P9YX4Ugl+hcXya8cYwx4yWGu1heNw1
MBx1sOlstVUg6f+iJ7pQozczhbvCXllFfSWzYp40PSK2xzFhn9F2NbsmegfHjqDRRXa1LvIgc9HC
MDLDuFO27Kzc61+J7wRlvVD/m+RSfe+F4R0nfg8vlVRfnm6fsnxob45b6qJASFZyT3CiIdjtcLJD
Ptc2j26drFULKlCVxgrUlitV9pNMRJjGtS6ejXR8cS28W3SkMuAgvj1NNR4F3YlmzYqsmHof9vk+
b9o//h/hjrki2GqVL2RKNThV/w96wNelOL/pz9mznGV7ZsMG4L8ea6Zl4wQe0J4mYWJByvfqxK4C
msZf977fbzwFGsmgRFV4NpNoFd3Thmchw253cdJukKEUBEX5vnTnhXTIGLXVhR0MyZNjgq7RLhNe
PjNQaP1pl4onjEAQf3cegJBpC26ySz1Qaqg+Cg7zQ9UxmoBBlhx3XoErrvnd/EocRAIeaCOlq/P1
AP5UKox7NElr3uT33el08azsh51Ec21eIsUM1NqxjO+NS5YdIjT0r3qwch5lJWYYqnZ3uCRVsYyQ
9gfGb19uuVL1aZJSVs93+NgjlAFP+P1f8ypkOtPKN5kJjSwsLT8bQrjMcLvUxlSm/79MMh2LQf0J
Z3w0CX9+KjL4SMmjSsuYCFJIg4dCiy3WvToTfgV8fksuIsXD5jg5TUaJ232KA7T0tCnLQ751x9xO
XUxEa6wse8p9dCcF1CEZDjVBua+wS7mGHsrbsTuNuVvodYnr9eKZXF+yDY+M7t8IsTSIMw4tnRGS
vUziUMmP77rMHV+YLhlTp1xP/j4p+TDq0wAGBYVNu9d3WTeVtwyVIh3VwNGAb4IaNIuy3Z/TaMQc
93zJiOo0f2GHIdThvvBQudsgVDleamR97NH6mt03pPBzecCPzJkzoEFw+E6uOXWbYSPEshSLvo0Y
S5wYOuSDUH3kbkUwwO1B7bT47nIWz7JbXjm6c/Hc6Lsyd4H9G2Vc7KfRycswa6E2gsVfk9AbAnvp
vNyryd2LCIWJ/UlsRNFOmwHKRAbnKvOXhPAsfFXrF3QFE16JsSPKRcFFpm1XyT7zEPfOUb11ApHp
E0XtX4swnubUZzBzxere//9FoYOFQLqxOGtdHMa3jxHMn53e3OY1FAiHg2IOf0sN8FG+MGANY9OK
PCYg04IgHdcfpyVM/yIYEI17/bxXo7ggTyt0+V+wvjvKU6DAFEGFZ2aL7tglwfAupSDTkmYWM5lt
AINWqyN3b+jpgayCWPtL9ZZWzLTg+o47RlM/3SzVtCAHUhS9L7tCE3/vOz9ErE0kh5zPv2bkjQX1
G2TQOJK8E82MegbmjsbbFLg08L5O9poGGlWPBvS5IsQPxxRWcdrtMyhxuDFHPfnW9Kqtr5xGpyTK
yh08LA3Z0ldB18axhKLeR72W3D5ovtxbuRJJC3MoyB/wjKe8sAYbmOXZBmYyJG8Iz2jfsMvlYQtB
4XP6j8bkGA+mwff6IZe3e0NZjrh2KJWiQTwKSRhUCiqce8+SIAke9e1XjGJ3Da7RJzSHjNJSyrje
V02K2c/2UbfNXqXHJFs5OpnLH5wyKjSNOSHkzX5YSrAWtMi7lBsdYDqrqq4ICQPZTVI5hqscqy0Z
/KCuEoQ4dBT0sW+SfqZ9rr5ihn+FhDAdCn8sH8MF+gmbopd7bk61cjaaFFiTRs+ru9jtuSStk3hw
kAcFDFVR77Zm9tsPAj9vrBRJ6nDXisOvgGPqF0Dk7g4eC91Gr2bgSSWhLVD0nLmYfQwQY6gHmAZE
VozxZtd2gQjM8PZhKf2uaaFLNlxzu+SqUZkz1ItlF3PXAlnZ7+JNK6xHJ6zCN1QPYvoHvGGp0Jqo
RhQ9Qqx9Z9mDiiaj1Hm+/QuwK5M46BpFJHKQXloRLTG+MajOD+j/ysDSPqwtbI2ASL5W+aUGcF35
+B467Ah+cV315KLR8O4isWDTZaluF7fkEBWcujSMuMFK1BfKxN63VMxPOIfrr1jQNEdEMwq0i+Bm
Vdvz4bcoaCzhhhvWWOyCHBDcH98w+WG9zIbsR4W2lkk3Y28CxHMVJs9bCSg8+dxawhb612wANVx6
NRQxPCCnKu/SnvR9f1edx/kP1e84gNKpkYVuvL/dNi0Th45e5Omvs985alrn3UO+XA9z8WBsQrRC
h6qbOG4w9WfGavfJP+IPYCEQ/xZ3wrRCr1+vakXNpkXZHF0/E3twCHTyIHNL9R0tY5A+W0OeysX1
WIkPgYsi+cOy7yOFz0ymoPahhKFB9rlCgga1jksBO1KYSbvxYYbp0CevmQb6p5RDmLtN/EUjtGHP
zf+FbWt4sLPR7YWRtD5vuLR6kV2ySNpxcfaPtD8MdJRZIpSHZGO8N+hTKLkOsuN83USQqSMEHIQk
E/t06PxzxHnwOJKq6FRQvll0Xx8hYr8TE9f7e8txVAUPY1BnR0/s32RAHXlQ0fXvQOvJkL1lArA8
YdQleEitf+ONm4QD6XYKiH+64EVFwkHhCzvfp8RIqWCfKuZ6x2Ybkp6VwzZw7FZ0vwc9qyJr956T
Q20MztcfRPEjZL6Qj8AZnk6mr/8KcR/ka+e8Cv4+MzNI5oT5D8TGdn5ETIeY5DBHJA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f63ecb14-ec27-4a25-a70a-8d70850ba989
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:56 GMT
x-ms-content-crc64: TVlEObnFOB8=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-dc51e280-30c7-fe0c-b5fa-74181d3ef123/test-blob-3075f6f8-ddbd-56e0-9a95-bd7ca9350b37?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay00N2M0ZDQwYy04OTllLTRlZDEtMjg2Mi1mMDYyM2FmM2U1MzA=</Latest><Latest>dGVzdC1ibG9jay0zY2E4NDg4YS04ZjFmLWUwODktMzg4MS1jNTI0OTc0Yzg3Yjc=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25EB90ADFE5FE00"
last-modified: Thu, 12 Nov 2026 00:49:56 GMT
content-md5: 5999a+hw8j0f5sXc16Tiyg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ccb987cb-9882-4605-a9a2-4d302adcb19b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-dc51e280-30c7-fe0c-b5fa-74181d3ef123/test-blob-3075f6f8-ddbd-56e0-9a95-bd7ca9350b37?comp=block&blockid=dGVzdC1ibG9jay02OWYxZTY3NS1lYjZlLTVkYTktYjJhYS1lNjYxZDUxMzQ0NTE%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
xSm3w/772E++uYGI5JrXwS78sW7WTiWiAftBMXOPVX/uPVL0hi0k/R0mcQNbV3EAvftOrIOdYXcE
FMEDuafcLmMBmadH4zoA2LRRr9whR6mJQXR3Qan8Udzb73JrIUN2SkKfWr7KuNrBTdTPTLKb4s0X
eXgyZO26BUjKbPPIlbZx2mSZgezrv4iatvPVLQQqPw2lU6fKQ+ZU5VV1/0vm+bcdXnFNAWDgLLrw
mK755NhDoCzmIkIPppd+RJyXdsA8s707uM+T3D6sxCft2qo3WwF8MV4f/9Z1Dbfaz7zESLX6s+Xx
vSwJsMPuOV0aIcvsRumbGkRhHbPmxqoXuA2C6Hxx8yfFRp3Uc4GbMMZ4Wuzr7YjSKS1xmJUxCveC
8fe2bFDhqS6kJwBMxqbDxuztbmu+K8uFr79OAFqRlDulUoKJ5cR1lrG9R8aHhmKHrdKoQ5yMxMYs
MLyRk6jUE5LEpnQkOeAod9e5AOQF/Slcx1KH6FCfGY68XbQH5AMJ6TQzwt/uYnPxgMvF0sPiJjKT
NMtVTCpCJY3laNwsIJPTsBaw0jpKbmTflWeE2kfK2jaBdK83s5wJ8JxSCPqXxWA38SGsMVT4ScVn
drfDvUtFG46lqqvknP16puGe92ZqR9AHTeglHajiiSvp0DzlRTNRDOxr8Rq1U1UkMopyWlFf/C7n
vHBiIP7lwiF/+svAlGGuTOt5/lW1UvmTAOodcC/aitMN/onC7uvuhS/4NVmJZJ4pxA1l5f3ZMWl2
zyATyFLypW/3spbX614Ai3gmvBygCptM86widKXWNMwgTB7K2r3cBpDpkbIHUtiuZVqFsnVN1sWE
x9WmzzDKIX3Kt58/NbC7SrWMt3jpRaDTcw9LUIJW03VZRRPnNjZfHm80PJs5bjCpyWi/wB9Mm4E0
0lwgf9D6c+Qp5u+c0xN+LZgItAgEmgXfoYcalxJWDKqSs2PaPp+eOsm3EIhBDfZUQJOGQ+d5MDhX
Qd1J4NzR0tlFCiCwo+74aXo/TIl8npSQxlZ/0MnCGYMqg/3BVVns5j2u/APWo5ykjdptOeOu2qNJ
uBqFUQEQgvGdhSDxNhQgUmZLzqGQuiK520LvVN+fe6lZeJw/Z5U8nnkSOB18s1fFTed8YgwBuf33
y3a/IS4R/Ql2l7534OvRDy8ofoIFPSfrKQf4IxidV76eSJsffH1LADsTBhyYTWz7q1Pc2Tp78o5P
1PcnGdnw2T//2ZhPspOy3X1G8TYKUtua/HfFwX6EIlYMz6iFJOdhIi3cmHTUrPm/Kfu8NQBXRIEb
jB1iKxjAe7ZBQ+LrLbmW5M4JLbpnxVB9BpeCx+1VtIsmaZfK//cVHB2+kmgX1PxCJlAyTRbHtMbM
5CWAPbPI7I5WxMMhzOXW9BGdqTPnZjGaQKGdI2d1X7XQ/RrSlN5p9abawRA4IFlqW1gEKQqT5X7z
5v0SK8kn4GQOUc/LA2AyM7SMDKQgYR9HMscOcDWqPBeb363hVsrds+CrKc+Knlj30vZWB9nZ0oXd
y/gBGHAuZBS3LySzUd3qrljEdDdPvZNvFp4/UzU+wgwoA4vR25pwfMW70m8zRIAYbFiAFV5Njg1k
kgLR7xDeeW0Yi01RGNO+U/dyk+okPNEdJufdvqyt2nV9bUmXno203VkCGrkyx1SFwcJm2/ojP1Yw
s8gpAbvAarDY06qJJrRqvbaRIiEY61+SV/zqR/97Wi3zZuvFi9udQa8IWvOp+5sN+x5DkR00GMho
lqm/1iKxXXl9lr/JpDLb8+BxD5Bs6Vth3UvhN8gPvk4iXPQx3muMV/x5LGXbRFbraJ49wwg3+61N
XvnXzyWxbdhwpkg9qRV05biU8732hZj09c8q0vtG62BH44BytYfWyL6Map0Orb6JyN5PowjvV9hg
4tpWh5rdKrvn9sWUAi8wvSr+ahr75kcQoQod9khYV4ynEtOtgEEkr0DiJ7f59MWuH+bd8ey9ZPyT
RuWQwDNzj5857fBbgzzp2rraGb+QF6xEbtdiemWf6a3XGjpblO8NbpcXwAfVUpyp9Bcy40s8Ai85
S1FcERU6mQNChGkCjkbLzKoneFelbxs6uYVObQZimhcLIkidsV2C3SYDks4zpmbRZhegFYrXk9s2
IViP7Cv94OpR92z9LRtMpZswodxNBxIffAbuwYSMM45sZ5AF8vH6BrLk4a761Dj7VHDvp/H/6BlF
cG8lDh5lxcTdkMaLRrKpNZsqaSZkJajN8m0UnYudbX52wIGC1fiTfhzpHUNycA29RXJW1H/z4EvH
VxuxUCc5PyNHFIYwJ2Cjl+oKegdkW4JfVlcZR5n/g982un7c4S30sN0gKlyHjB4Rsz2U6GVDYvuZ
UfrPH/iJR5Cm+mzhxrW8FcoqRDAm2Mk5B5Rca5p581iCQ5AzJJDkluPL4ZKxL+yH19ObGB3Kcnkw
lhhkLdz2LAcTX4IlifE6Ra5NW/Y3h9en1JPH3to7t9EWA453gGgG1LSLndBqYk3iYNNvfReC+Q5A
vFlILk0t2KixDoZiwsRFRoZCrOkHPXFG5X4HzDq5kwp/NsQPvqVnXsUouFPHf50OKjaQQEwkOX/n
AknPJgxu93t844wANYjg2k4k3oQdfmXg+KIDKFK9W/xEJ7xcmDe5usDYS5wRDfStsGb+AFr6yYPk
7i1qas4pv4iPuw7MhEIWaiTDRTPJz+utVXjsvlqiSl04eKkKT0/yrosUglHl4Ssj6JU1NoNQGh5B
vBRWPQAt7XGwlAyYCxvV0ZentU2ZyHRMyNbFbBPa6F2KyZM7nHGL5pXgNU0fitx5YGXsqGXRp/Sf
CXQpaIBe1quuDkKImjUlHM63uZInLD75Swut7T/4uCGem5P9YX4Ugl+hcXya8cYwx4yWGu1heNw1
MBx1sOlstVUg6f+iJ7pQozczhbvCXllFfSWzYp40PSK2xzFhn9F2NbsmegfHjqDRRXa1LvIgc9HC
MDLDuFO27Kzc61+J7wRlvVD/m+RSfe+F4R0nfg8vlVRfnm6fsnxob45b6qJASFZyT3CiIdjtcLJD
Ptc2j26drFULKlCVxgrUlitV9pNMRJjGtS6ejXR8cS28W3SkMuAgvj1NNR4F3YlmzYqsmHof9vk+
b9o//h/hjrki2GqVL2RKNThV/w96wNelOL/pz9mznGV7ZsMG4L8ea6Zl4wQe0J4mYWJByvfqxK4C
msZf977fbzwFGsmgRFV4NpNoFd3Thmchw253cdJukKEUBEX5vnTnhXTIGLXVhR0MyZNjgq7RLhNe
PjNQaP1pl4onjEAQf3cegJBpC26ySz1Qaqg+Cg7zQ9UxmoBBlhx3XoErrvnd/EocRAIeaCOlq/P1
AP5UKox7NElr3uT33el08azsh51Ec21eIsUM1NqxjO+NS5YdIjT0r3qwch5lJWYYqnZ3uCRVsYyQ
9gfGb19uuVL1aZJSVs93+NgjlAFP+P1f8ypkOtPKN5kJjSwsLT8bQrjMcLvUxlSm/79MMh2LQf0J
Z3w0CX9+KjL4SMmjSsuYCFJIg4dCiy3WvToTfgV8fksuIsXD5jg5TUaJ232KA7T0tCnLQ751x9xO
XUxEa6wse8p9dCcF1CEZDjVBua+wS7mGHsrbsTuNuVvodYnr9eKZXF+yDY+M7t8IsTSIMw4tnRGS
vUziUMmP77rMHV+YLhlTp1xP/j4p+TDq0wAGBYVNu9d3WTeVtwyVIh3VwNGAb4IaNIuy3Z/TaMQc
93zJiOo0f2GHIdThvvBQudsgVDleamR97NH6mt03pPBzecCPzJkzoEFw+E6uOXWbYSPEshSLvo0Y
S5wYOuSDUH3kbkUwwO1B7bT47nIWz7JbXjm6c/Hc6Lsyd4H9G2Vc7KfRycswa6E2gsVfk9AbAnvp
vNyryd2LCIWJ/UlsRNFOmwHKRAbnKvOXhPAsfFXrF3QFE16JsSPKRcFFpm1XyT7zEPfOUb11ApHp
E0XtX4swnubUZzBzxere//9FoYOFQLqxOGtdHMa3jxHMn53e3OY1FAiHg2IOf0sN8FG+MGANY9OK
PCYg04IgHdcfpyVM/yIYEI17/bxXo7ggTyt0+V+wvjvKU6DAFEGFZ2aL7tglwfAupSDTkmYWM5lt
AINWqyN3b+jpgayCWPtL9ZZWzLTg+o47RlM/3SzVtCAHUhS9L7tCE3/vOz9ErE0kh5zPv2bkjQX1
G2TQOJK8E82MegbmjsbbFLg08L5O9poGGlWPBvS5IsQPxxRWcdrtMyhxuDFHPfnW9Kqtr5xGpyTK
yh08LA3Z0ldB18axhKLeR72W3D5ovtxbuRJJC3MoyB/wjKe8sAYbmOXZBmYyJG8Iz2jfsMvlYQtB
4XP6j8bkGA+mwff6IZe3e0NZjrh2KJWiQTwKSRhUCiqce8+SIAke9e1XjGJ3Da7RJzSHjNJSyrje
V02K2c/2UbfNXqXHJFs5OpnLH5wyKjSNOSHkzX5YSrAWtMi7lBsdYDqrqq4ICQPZTVI5hqscqy0Z
/KCuEoQ4dBT0sW+SfqZ9rr5ihn+FhDAdCn8sH8MF+gmbopd7bk61cjaaFFiTRs+ru9jtuSStk3hw
kAcFDFVR77Zm9tsPAj9vrBRJ6nDXisOvgGPqF0Dk7g4eC91Gr2bgSSWhLVD0nLmYfQwQY6gHmAZE
VozxZtd2gQjM8PZhKf2uaaFLNlxzu+SqUZkz1ItlF3PXAlnZ7+JNK6xHJ6zCN1QPYvoHvGGp0Jqo
RhQ9Qqx9Z9mDiiaj1Hm+/QuwK5M46BpFJHKQXloRLTG+MajOD+j/ysDSPqwtbI2ASL5W+aUGcF35
+B467Ah+cV315KLR8O4isWDTZaluF7fkEBWcujSMuMFK1BfKxN63VMxPOIfrr1jQNEdEMwq0i+Bm
Vdvz4bcoaCzhhhvWWOyCHBDcH98w+WG9zIbsR4W2lkk3Y28CxHMVJs9bCSg8+dxawhb612wANVx6
NRQxPCCnKu/SnvR9f1edx/kP1e84gNKpkYVuvL/dNi0Th45e5Omvs985alrn3UO+XA9z8WBsQrRC
h6qbOG4w9WfGavfJP+IPYCEQ/xZ3wrRCr1+vakXNpkXZHF0/E3twCHTyIHNL9R0tY5A+W0OeysX1
WIkPgYsi+cOy7yOFz0ymoPahhKFB9rlCgga1jksBO1KYSbvxYYbp0CevmQb6p5RDmLtN/EUjtGHP
zf+FbWt4sLPR7YWRtD5vuLR6kV2ySNpxcfaPtD8MdJRZIpSHZGO8N+hTKLkOsuN83USQqSMEHIQk
E/t06PxzxHnwOJKq6FRQvll0Xx8hYr8TE9f7e8txVAUPY1BnR0/s32RAHXlQ0fXvQOvJkL1lArA8
YdQleEitf+ONm4QD6XYKiH+64EVFwkHhCzvfp8RIqWCfKuZ6x2Ybkp6VwzZw7FZ0vwc9qyJr956T
Q20MztcfRPEjZL6Qj8AZnk6mr/8KcR/ka+e8Cv4+MzNI5oT5D8TGdn5ETIeY5DBHJA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b9a99e88-89b8-4967-a35c-055360c6369e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:56 GMT
x-ms-content-crc64: TVlEObnFOB8=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-dc51e280-30c7-fe0c-b5fa-74181d3ef123/test-blob-3075f6f8-ddbd-56e0-9a95-bd7ca9350b37?comp=blocklist&blocklisttype=all

### Request headers recorded for playback:

```
Accept: application/xml
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
last-modified: Thu, 12 Nov 2026 00:49:56 GMT
etag: "0x25EB90ADFE5FE00"
content-type: application/xml
x-ms-blob-content-length: 8192
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cb39b41c-e97d-4355-bd6d-c9289fad258a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:56 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><BlockList><CommittedBlocks><Block><Name>dGVzdC1ibG9jay00N2M0ZDQwYy04OTllLTRlZDEtMjg2Mi1mMDYyM2FmM2U1MzA=</Name><Size>4096</Size></Block><Block><Name>dGVzdC1ibG9jay0zY2E4NDg4YS04ZjFmLWUwODktMzg4MS1jNTI0OTc0Yzg3Yjc=</Name><Size>4096</Size></Block></CommittedBlocks><UncommittedBlocks><Block><Name>dGVzdC1ibG9jay02OWYxZTY3NS1lYjZlLTVkYTktYjJhYS1lNjYxZDUxMzQ0NTE=</Name><Size>4096</Size></Block></UncommittedBlocks></BlockList>
```

## Interaction 6: DELETE /devstoreaccount1/test-container-dc51e280-30c7-fe0c-b5fa-74181d3ef123?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
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
x-ms-request-id: 32db053e-7cef-48d9-8767-147af89b06cd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

