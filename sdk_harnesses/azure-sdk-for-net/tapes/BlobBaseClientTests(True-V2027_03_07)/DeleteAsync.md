## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ff0fa707-f935-b290-1ee4-b90dfe106a67?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DeleteAsync
now: 2026-11-12T00:47:45.4407886+00:00

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
etag: "0x2039BF2A6135B00"
last-modified: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 23a47f93-6ff3-4395-b086-67be422999d8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ff0fa707-f935-b290-1ee4-b90dfe106a67/test-blob-d9ef42ed-1f42-438a-9789-4d87f3b34946

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
mqcl1Mz3TwmxDwrXhov4Ko6tSwNUMS7oHMtnrKsJvmuac3NW65ab9fPlJzIUsr0LkCP5RWhG8Wl4
PLcAj6JeqFCfPRMYoT74EVUPbgn802oOXBuHEHkDVIEJ3q7em2VQh3/hdXWq8+7lADMSNoJgfGlN
8jOH1pjXnOmRDsOQGXbvv+eJGl71Y2gsog9F8B3+qWJFkagyyLDnCtmMGOQrVOe8I3eb1mIKWI7K
WzOIkqvLk2RgSofOvfY2og+FaEuDAE0oiM2lY9MAOjkZZ218XnctwISAyglf7mWBZDNShe9CR1vm
YAneJjCRYBBOtFaJuUOYV6jGAzVDyJpnJP6grrRK1h8Slv5tTppU72r5ETkO96rvuS1Ge0Mlophv
dgEy8LJbA902dyNFKgkOchTLSrZgWCxTsPSHA1rc7PRm/teYIv63ng1b2ICHqo8kNwkvWVfhDh3U
3kC+1P+DWoou3ywxdVAVFKypBYCsywZkYsxRrJOche+5xEO9+ckN2H32Wcti8sK5GUWrOAmdKBI6
WXEzMa73kVo9d7EMWBrimywCtXI7Am8JmJJN8UzlHJwwg6BX2qbP/8dxJXsRrMEqyJ3cmnKg/lYB
KZkbqZ8NWFsU29R6isCGMraqytz0+OvRIimvCIEqkIRJVrANtFUnY80f/NHtsD3cVme79TR6DTCu
SoZ2XU/Z6ktPMDQQeX5hgmYP1Pwa43Hs07EabppQz0l/XmrOsQZ9RhGFnX8IzN3pWnLOajg0k2YU
ioqevnuw/2HrkBoUktFgko7qlEXy4wfTMRQogWQQS8sDuSd83oeV1Z4eHDvD1MehbtiqSf4gIqaD
yo1niH3820VOENiq47MGVL+n08fLD1xMhhOMZgHM45eA+BT6Lk0gIUH2dcTv94oko/Q/eU7ft7sx
GwFqcHRDgixBKeqfCyZyhrKF1JqXXI+JZ8INjGpIoUFYyBNLtrDMs/KXrs2fhZjNzfKcWeMgmb5y
4QixNfXC+IipRkITJs8BuSCn/67B6eIqP793q0ddOC9U2dWoGn391bVF9T5VuqYimqDCeJkPsPcm
h/Y2SkxBTA4Tvk36WZ6jqir5fPOj1YUYVRGmm7+VRCjegZOHx4poA6kwQftYKEACH85vFjMDg7Jx
HfU7mrFOfXkkG9gKG+OfkHhKcpOJvyzQpHvxJi712v7hFqmVLGn44sSBNAxo9wTrz4W6uRAe513I
avU1XVZLL0HaKQQ5CWQPUZDPB4sfaKx3BleoOiHtwy5LzMFzw4RtNgTLjs7/scUhq2eAT+DSqQJJ
vVf/o/Qg7GbW7Tyim44LYdCGU9ndd1SRho+5bHNNeSO+KgUtbZMQq6FoKcOIfxDZde0PS1Upaw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x221C37C800A89E0"
last-modified: Thu, 12 Nov 2026 00:47:45 GMT
content-md5: 8uLQF8ZHUFQgG+bflKW2OA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8c7b1fb3-240c-42c0-a890-f651b1a03b66
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-ff0fa707-f935-b290-1ee4-b90dfe106a67/test-blob-d9ef42ed-1f42-438a-9789-4d87f3b34946

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-request-id: 3150b798-177c-4549-825b-9ea5123c4993
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-ff0fa707-f935-b290-1ee4-b90dfe106a67?restype=container

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
x-ms-request-id: 2fbd2257-ac8e-490f-9f5c-387420120c17
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

