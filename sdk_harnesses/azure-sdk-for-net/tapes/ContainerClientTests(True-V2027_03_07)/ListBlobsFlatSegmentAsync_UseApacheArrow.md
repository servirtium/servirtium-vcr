## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-280823ba-172e-3fdf-05fe-18522c4fb589?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow
now: 2026-11-12T00:44:54.8264834+00:00

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
etag: "0x271E14A0F5CAA40"
last-modified: Thu, 12 Nov 2026 00:44:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 547079a3-196a-4ea3-9869-0e90d0566d29
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-280823ba-172e-3fdf-05fe-18522c4fb589/foo

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
LrwmTRURyasRie+fpDfyxnzHnrjCWagoOHhDOSWc9Qneewh6wLf4qFldFqQnP5rOC1HWZbD9xtUU
/RWdzpCFdJTmwCkudwbFz/ZeZUIDAPjddC3Uxo9Z4bQzZsKhWtrJ16IQQX5xoJRLEJa6n2GSEP0c
v1ljsa4EjN90+hBDI3QblY2g8755bNSZibb5n0FToFbFhZuAZibzC7Wf/aWDB+whngnT8hw+olOF
ySf3Cu2eIVq6fp7Ymy9nrOcJ2m4vFoLJ1wA3f645h+JI+5z++wDHAdtLyIhOSAPabEY1NMjkVbOl
LjLtZqGrgPe7kJ+SabDnQdmS5E35e479XRNnBFIaY6XoWM3N2po6n0eRkrhjSAKVTfLuUXFmrLKk
7wiORHyloS36qRDjGWc+WEUFaOnWmRQQ0rZfKxIzgqwaKeqRrFrL6/CLaZ7ysjSLsPksYUPJzVb0
fXHFRXUaxidkyO98rKzqOXz4SzB2HiCC03sZByFoUVyUnS7pBqZ6cKJ3jepEDwNMQSfH0IImfl5R
Q3H6Ab4G+3aT6A59ATPWfduN/5E1PcR3zMX5oYDabR/Pl8I0gG7kcJFzsSb0zkD08FOnmX/NGwWt
gjX4DFr2uXrvrmlwof1sqI7/woydg/2EBbAtM9SgAXy9hv0462M3ffesBSDXg05WOvDwzlh5D/84
dAepyYalTqztsxr/M70qyEWU8X3crYFh1vjkrzMjQ3f+AHdcjbRxBrZ06tA0VwYyxgYT5B6BW8aG
R/KNwZ95ym+jATJGzjqRIurHZ8OwLX/xsegsD19YfKWw1UXB40UW+yBhkFbT7PjLgcE0uvMD1hpy
mw+2TLoQSoSNlfj0zz+ksGyjTp0pHsXwYI2dJMKxrf4rT0g2YK9lUUXRRlb/17KCkAmHYId8SH1K
xusscibC2+j5yID2blC8Pf1XWNdu8InbGpS4Kkx2rwbK65rEON4fD2puBQ4xjCG5yiOKJfCl29Vh
UViSCrCbghl6K4K1+AQeOEhtAOt6qY5y/mAp7IoVJRDEYueGjQW50oL1t2CfA9EebOyoONvq56fK
HwtQcpaPZAZy8ZUdmKtDsy5ohPIt0/qOC3+dbe002ns/u235aV/sZlJaLBI8ANNBZISsgWK1nEwR
wmYW8fcZPRYa3dw9SkrOfB6f06bnUgqsXAhoiFgYih8h56b41XRaQe/8ISP3Axo63gVEFcmlKm9c
apXvsLW+AVO9HGKj1aepRZK36zDntVjtLqpS1HVVe703nGrfa5A5PiDPOee4lghems837j4+dbU8
AYILayzeZ6CkbDk9ydoBfawQF3txNZih9DqlHo1++Ce0o2kOLtLz8dFGFCrOIdD1NXCRLl46yg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2037B4B67594FC0"
last-modified: Thu, 12 Nov 2026 00:44:54 GMT
content-md5: 1AZsIBQqv2iDfsxYJGZeIA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f94b35e0-4f69-4294-b1ff-21633f603053
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-280823ba-172e-3fdf-05fe-18522c4fb589/bar

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
LrwmTRURyasRie+fpDfyxnzHnrjCWagoOHhDOSWc9Qneewh6wLf4qFldFqQnP5rOC1HWZbD9xtUU
/RWdzpCFdJTmwCkudwbFz/ZeZUIDAPjddC3Uxo9Z4bQzZsKhWtrJ16IQQX5xoJRLEJa6n2GSEP0c
v1ljsa4EjN90+hBDI3QblY2g8755bNSZibb5n0FToFbFhZuAZibzC7Wf/aWDB+whngnT8hw+olOF
ySf3Cu2eIVq6fp7Ymy9nrOcJ2m4vFoLJ1wA3f645h+JI+5z++wDHAdtLyIhOSAPabEY1NMjkVbOl
LjLtZqGrgPe7kJ+SabDnQdmS5E35e479XRNnBFIaY6XoWM3N2po6n0eRkrhjSAKVTfLuUXFmrLKk
7wiORHyloS36qRDjGWc+WEUFaOnWmRQQ0rZfKxIzgqwaKeqRrFrL6/CLaZ7ysjSLsPksYUPJzVb0
fXHFRXUaxidkyO98rKzqOXz4SzB2HiCC03sZByFoUVyUnS7pBqZ6cKJ3jepEDwNMQSfH0IImfl5R
Q3H6Ab4G+3aT6A59ATPWfduN/5E1PcR3zMX5oYDabR/Pl8I0gG7kcJFzsSb0zkD08FOnmX/NGwWt
gjX4DFr2uXrvrmlwof1sqI7/woydg/2EBbAtM9SgAXy9hv0462M3ffesBSDXg05WOvDwzlh5D/84
dAepyYalTqztsxr/M70qyEWU8X3crYFh1vjkrzMjQ3f+AHdcjbRxBrZ06tA0VwYyxgYT5B6BW8aG
R/KNwZ95ym+jATJGzjqRIurHZ8OwLX/xsegsD19YfKWw1UXB40UW+yBhkFbT7PjLgcE0uvMD1hpy
mw+2TLoQSoSNlfj0zz+ksGyjTp0pHsXwYI2dJMKxrf4rT0g2YK9lUUXRRlb/17KCkAmHYId8SH1K
xusscibC2+j5yID2blC8Pf1XWNdu8InbGpS4Kkx2rwbK65rEON4fD2puBQ4xjCG5yiOKJfCl29Vh
UViSCrCbghl6K4K1+AQeOEhtAOt6qY5y/mAp7IoVJRDEYueGjQW50oL1t2CfA9EebOyoONvq56fK
HwtQcpaPZAZy8ZUdmKtDsy5ohPIt0/qOC3+dbe002ns/u235aV/sZlJaLBI8ANNBZISsgWK1nEwR
wmYW8fcZPRYa3dw9SkrOfB6f06bnUgqsXAhoiFgYih8h56b41XRaQe/8ISP3Axo63gVEFcmlKm9c
apXvsLW+AVO9HGKj1aepRZK36zDntVjtLqpS1HVVe703nGrfa5A5PiDPOee4lghems837j4+dbU8
AYILayzeZ6CkbDk9ydoBfawQF3txNZih9DqlHo1++Ce0o2kOLtLz8dFGFCrOIdD1NXCRLl46yg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21390ECE46BBF20"
last-modified: Thu, 12 Nov 2026 00:44:54 GMT
content-md5: 1AZsIBQqv2iDfsxYJGZeIA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce744571-3dc0-403e-b1ae-184a121a530f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-280823ba-172e-3fdf-05fe-18522c4fb589/baz

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
LrwmTRURyasRie+fpDfyxnzHnrjCWagoOHhDOSWc9Qneewh6wLf4qFldFqQnP5rOC1HWZbD9xtUU
/RWdzpCFdJTmwCkudwbFz/ZeZUIDAPjddC3Uxo9Z4bQzZsKhWtrJ16IQQX5xoJRLEJa6n2GSEP0c
v1ljsa4EjN90+hBDI3QblY2g8755bNSZibb5n0FToFbFhZuAZibzC7Wf/aWDB+whngnT8hw+olOF
ySf3Cu2eIVq6fp7Ymy9nrOcJ2m4vFoLJ1wA3f645h+JI+5z++wDHAdtLyIhOSAPabEY1NMjkVbOl
LjLtZqGrgPe7kJ+SabDnQdmS5E35e479XRNnBFIaY6XoWM3N2po6n0eRkrhjSAKVTfLuUXFmrLKk
7wiORHyloS36qRDjGWc+WEUFaOnWmRQQ0rZfKxIzgqwaKeqRrFrL6/CLaZ7ysjSLsPksYUPJzVb0
fXHFRXUaxidkyO98rKzqOXz4SzB2HiCC03sZByFoUVyUnS7pBqZ6cKJ3jepEDwNMQSfH0IImfl5R
Q3H6Ab4G+3aT6A59ATPWfduN/5E1PcR3zMX5oYDabR/Pl8I0gG7kcJFzsSb0zkD08FOnmX/NGwWt
gjX4DFr2uXrvrmlwof1sqI7/woydg/2EBbAtM9SgAXy9hv0462M3ffesBSDXg05WOvDwzlh5D/84
dAepyYalTqztsxr/M70qyEWU8X3crYFh1vjkrzMjQ3f+AHdcjbRxBrZ06tA0VwYyxgYT5B6BW8aG
R/KNwZ95ym+jATJGzjqRIurHZ8OwLX/xsegsD19YfKWw1UXB40UW+yBhkFbT7PjLgcE0uvMD1hpy
mw+2TLoQSoSNlfj0zz+ksGyjTp0pHsXwYI2dJMKxrf4rT0g2YK9lUUXRRlb/17KCkAmHYId8SH1K
xusscibC2+j5yID2blC8Pf1XWNdu8InbGpS4Kkx2rwbK65rEON4fD2puBQ4xjCG5yiOKJfCl29Vh
UViSCrCbghl6K4K1+AQeOEhtAOt6qY5y/mAp7IoVJRDEYueGjQW50oL1t2CfA9EebOyoONvq56fK
HwtQcpaPZAZy8ZUdmKtDsy5ohPIt0/qOC3+dbe002ns/u235aV/sZlJaLBI8ANNBZISsgWK1nEwR
wmYW8fcZPRYa3dw9SkrOfB6f06bnUgqsXAhoiFgYih8h56b41XRaQe/8ISP3Axo63gVEFcmlKm9c
apXvsLW+AVO9HGKj1aepRZK36zDntVjtLqpS1HVVe703nGrfa5A5PiDPOee4lghems837j4+dbU8
AYILayzeZ6CkbDk9ydoBfawQF3txNZih9DqlHo1++Ce0o2kOLtLz8dFGFCrOIdD1NXCRLl46yg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25FBAE0D97E7D60"
last-modified: Thu, 12 Nov 2026 00:44:54 GMT
content-md5: 1AZsIBQqv2iDfsxYJGZeIA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d53647fa-d91f-45f3-9dd1-1443dc2cb0cf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-280823ba-172e-3fdf-05fe-18522c4fb589/foo/foo

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
LrwmTRURyasRie+fpDfyxnzHnrjCWagoOHhDOSWc9Qneewh6wLf4qFldFqQnP5rOC1HWZbD9xtUU
/RWdzpCFdJTmwCkudwbFz/ZeZUIDAPjddC3Uxo9Z4bQzZsKhWtrJ16IQQX5xoJRLEJa6n2GSEP0c
v1ljsa4EjN90+hBDI3QblY2g8755bNSZibb5n0FToFbFhZuAZibzC7Wf/aWDB+whngnT8hw+olOF
ySf3Cu2eIVq6fp7Ymy9nrOcJ2m4vFoLJ1wA3f645h+JI+5z++wDHAdtLyIhOSAPabEY1NMjkVbOl
LjLtZqGrgPe7kJ+SabDnQdmS5E35e479XRNnBFIaY6XoWM3N2po6n0eRkrhjSAKVTfLuUXFmrLKk
7wiORHyloS36qRDjGWc+WEUFaOnWmRQQ0rZfKxIzgqwaKeqRrFrL6/CLaZ7ysjSLsPksYUPJzVb0
fXHFRXUaxidkyO98rKzqOXz4SzB2HiCC03sZByFoUVyUnS7pBqZ6cKJ3jepEDwNMQSfH0IImfl5R
Q3H6Ab4G+3aT6A59ATPWfduN/5E1PcR3zMX5oYDabR/Pl8I0gG7kcJFzsSb0zkD08FOnmX/NGwWt
gjX4DFr2uXrvrmlwof1sqI7/woydg/2EBbAtM9SgAXy9hv0462M3ffesBSDXg05WOvDwzlh5D/84
dAepyYalTqztsxr/M70qyEWU8X3crYFh1vjkrzMjQ3f+AHdcjbRxBrZ06tA0VwYyxgYT5B6BW8aG
R/KNwZ95ym+jATJGzjqRIurHZ8OwLX/xsegsD19YfKWw1UXB40UW+yBhkFbT7PjLgcE0uvMD1hpy
mw+2TLoQSoSNlfj0zz+ksGyjTp0pHsXwYI2dJMKxrf4rT0g2YK9lUUXRRlb/17KCkAmHYId8SH1K
xusscibC2+j5yID2blC8Pf1XWNdu8InbGpS4Kkx2rwbK65rEON4fD2puBQ4xjCG5yiOKJfCl29Vh
UViSCrCbghl6K4K1+AQeOEhtAOt6qY5y/mAp7IoVJRDEYueGjQW50oL1t2CfA9EebOyoONvq56fK
HwtQcpaPZAZy8ZUdmKtDsy5ohPIt0/qOC3+dbe002ns/u235aV/sZlJaLBI8ANNBZISsgWK1nEwR
wmYW8fcZPRYa3dw9SkrOfB6f06bnUgqsXAhoiFgYih8h56b41XRaQe/8ISP3Axo63gVEFcmlKm9c
apXvsLW+AVO9HGKj1aepRZK36zDntVjtLqpS1HVVe703nGrfa5A5PiDPOee4lghems837j4+dbU8
AYILayzeZ6CkbDk9ydoBfawQF3txNZih9DqlHo1++Ce0o2kOLtLz8dFGFCrOIdD1NXCRLl46yg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E9D257E28D9820"
last-modified: Thu, 12 Nov 2026 00:44:54 GMT
content-md5: 1AZsIBQqv2iDfsxYJGZeIA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 867dd4d6-7dd8-4c12-beae-70824c9cae8b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-280823ba-172e-3fdf-05fe-18522c4fb589/foo/bar

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
LrwmTRURyasRie+fpDfyxnzHnrjCWagoOHhDOSWc9Qneewh6wLf4qFldFqQnP5rOC1HWZbD9xtUU
/RWdzpCFdJTmwCkudwbFz/ZeZUIDAPjddC3Uxo9Z4bQzZsKhWtrJ16IQQX5xoJRLEJa6n2GSEP0c
v1ljsa4EjN90+hBDI3QblY2g8755bNSZibb5n0FToFbFhZuAZibzC7Wf/aWDB+whngnT8hw+olOF
ySf3Cu2eIVq6fp7Ymy9nrOcJ2m4vFoLJ1wA3f645h+JI+5z++wDHAdtLyIhOSAPabEY1NMjkVbOl
LjLtZqGrgPe7kJ+SabDnQdmS5E35e479XRNnBFIaY6XoWM3N2po6n0eRkrhjSAKVTfLuUXFmrLKk
7wiORHyloS36qRDjGWc+WEUFaOnWmRQQ0rZfKxIzgqwaKeqRrFrL6/CLaZ7ysjSLsPksYUPJzVb0
fXHFRXUaxidkyO98rKzqOXz4SzB2HiCC03sZByFoUVyUnS7pBqZ6cKJ3jepEDwNMQSfH0IImfl5R
Q3H6Ab4G+3aT6A59ATPWfduN/5E1PcR3zMX5oYDabR/Pl8I0gG7kcJFzsSb0zkD08FOnmX/NGwWt
gjX4DFr2uXrvrmlwof1sqI7/woydg/2EBbAtM9SgAXy9hv0462M3ffesBSDXg05WOvDwzlh5D/84
dAepyYalTqztsxr/M70qyEWU8X3crYFh1vjkrzMjQ3f+AHdcjbRxBrZ06tA0VwYyxgYT5B6BW8aG
R/KNwZ95ym+jATJGzjqRIurHZ8OwLX/xsegsD19YfKWw1UXB40UW+yBhkFbT7PjLgcE0uvMD1hpy
mw+2TLoQSoSNlfj0zz+ksGyjTp0pHsXwYI2dJMKxrf4rT0g2YK9lUUXRRlb/17KCkAmHYId8SH1K
xusscibC2+j5yID2blC8Pf1XWNdu8InbGpS4Kkx2rwbK65rEON4fD2puBQ4xjCG5yiOKJfCl29Vh
UViSCrCbghl6K4K1+AQeOEhtAOt6qY5y/mAp7IoVJRDEYueGjQW50oL1t2CfA9EebOyoONvq56fK
HwtQcpaPZAZy8ZUdmKtDsy5ohPIt0/qOC3+dbe002ns/u235aV/sZlJaLBI8ANNBZISsgWK1nEwR
wmYW8fcZPRYa3dw9SkrOfB6f06bnUgqsXAhoiFgYih8h56b41XRaQe/8ISP3Axo63gVEFcmlKm9c
apXvsLW+AVO9HGKj1aepRZK36zDntVjtLqpS1HVVe703nGrfa5A5PiDPOee4lghems837j4+dbU8
AYILayzeZ6CkbDk9ydoBfawQF3txNZih9DqlHo1++Ce0o2kOLtLz8dFGFCrOIdD1NXCRLl46yg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22A7C19B83886C0"
last-modified: Thu, 12 Nov 2026 00:44:55 GMT
content-md5: 1AZsIBQqv2iDfsxYJGZeIA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7d082858-4784-4691-948e-65821d7967dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-280823ba-172e-3fdf-05fe-18522c4fb589/baz/foo

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
LrwmTRURyasRie+fpDfyxnzHnrjCWagoOHhDOSWc9Qneewh6wLf4qFldFqQnP5rOC1HWZbD9xtUU
/RWdzpCFdJTmwCkudwbFz/ZeZUIDAPjddC3Uxo9Z4bQzZsKhWtrJ16IQQX5xoJRLEJa6n2GSEP0c
v1ljsa4EjN90+hBDI3QblY2g8755bNSZibb5n0FToFbFhZuAZibzC7Wf/aWDB+whngnT8hw+olOF
ySf3Cu2eIVq6fp7Ymy9nrOcJ2m4vFoLJ1wA3f645h+JI+5z++wDHAdtLyIhOSAPabEY1NMjkVbOl
LjLtZqGrgPe7kJ+SabDnQdmS5E35e479XRNnBFIaY6XoWM3N2po6n0eRkrhjSAKVTfLuUXFmrLKk
7wiORHyloS36qRDjGWc+WEUFaOnWmRQQ0rZfKxIzgqwaKeqRrFrL6/CLaZ7ysjSLsPksYUPJzVb0
fXHFRXUaxidkyO98rKzqOXz4SzB2HiCC03sZByFoUVyUnS7pBqZ6cKJ3jepEDwNMQSfH0IImfl5R
Q3H6Ab4G+3aT6A59ATPWfduN/5E1PcR3zMX5oYDabR/Pl8I0gG7kcJFzsSb0zkD08FOnmX/NGwWt
gjX4DFr2uXrvrmlwof1sqI7/woydg/2EBbAtM9SgAXy9hv0462M3ffesBSDXg05WOvDwzlh5D/84
dAepyYalTqztsxr/M70qyEWU8X3crYFh1vjkrzMjQ3f+AHdcjbRxBrZ06tA0VwYyxgYT5B6BW8aG
R/KNwZ95ym+jATJGzjqRIurHZ8OwLX/xsegsD19YfKWw1UXB40UW+yBhkFbT7PjLgcE0uvMD1hpy
mw+2TLoQSoSNlfj0zz+ksGyjTp0pHsXwYI2dJMKxrf4rT0g2YK9lUUXRRlb/17KCkAmHYId8SH1K
xusscibC2+j5yID2blC8Pf1XWNdu8InbGpS4Kkx2rwbK65rEON4fD2puBQ4xjCG5yiOKJfCl29Vh
UViSCrCbghl6K4K1+AQeOEhtAOt6qY5y/mAp7IoVJRDEYueGjQW50oL1t2CfA9EebOyoONvq56fK
HwtQcpaPZAZy8ZUdmKtDsy5ohPIt0/qOC3+dbe002ns/u235aV/sZlJaLBI8ANNBZISsgWK1nEwR
wmYW8fcZPRYa3dw9SkrOfB6f06bnUgqsXAhoiFgYih8h56b41XRaQe/8ISP3Axo63gVEFcmlKm9c
apXvsLW+AVO9HGKj1aepRZK36zDntVjtLqpS1HVVe703nGrfa5A5PiDPOee4lghems837j4+dbU8
AYILayzeZ6CkbDk9ydoBfawQF3txNZih9DqlHo1++Ce0o2kOLtLz8dFGFCrOIdD1NXCRLl46yg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C45C7D90F08580"
last-modified: Thu, 12 Nov 2026 00:44:55 GMT
content-md5: 1AZsIBQqv2iDfsxYJGZeIA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a456ade9-2136-4109-a930-5bb39ff09da7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-280823ba-172e-3fdf-05fe-18522c4fb589/baz/foo/bar

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
LrwmTRURyasRie+fpDfyxnzHnrjCWagoOHhDOSWc9Qneewh6wLf4qFldFqQnP5rOC1HWZbD9xtUU
/RWdzpCFdJTmwCkudwbFz/ZeZUIDAPjddC3Uxo9Z4bQzZsKhWtrJ16IQQX5xoJRLEJa6n2GSEP0c
v1ljsa4EjN90+hBDI3QblY2g8755bNSZibb5n0FToFbFhZuAZibzC7Wf/aWDB+whngnT8hw+olOF
ySf3Cu2eIVq6fp7Ymy9nrOcJ2m4vFoLJ1wA3f645h+JI+5z++wDHAdtLyIhOSAPabEY1NMjkVbOl
LjLtZqGrgPe7kJ+SabDnQdmS5E35e479XRNnBFIaY6XoWM3N2po6n0eRkrhjSAKVTfLuUXFmrLKk
7wiORHyloS36qRDjGWc+WEUFaOnWmRQQ0rZfKxIzgqwaKeqRrFrL6/CLaZ7ysjSLsPksYUPJzVb0
fXHFRXUaxidkyO98rKzqOXz4SzB2HiCC03sZByFoUVyUnS7pBqZ6cKJ3jepEDwNMQSfH0IImfl5R
Q3H6Ab4G+3aT6A59ATPWfduN/5E1PcR3zMX5oYDabR/Pl8I0gG7kcJFzsSb0zkD08FOnmX/NGwWt
gjX4DFr2uXrvrmlwof1sqI7/woydg/2EBbAtM9SgAXy9hv0462M3ffesBSDXg05WOvDwzlh5D/84
dAepyYalTqztsxr/M70qyEWU8X3crYFh1vjkrzMjQ3f+AHdcjbRxBrZ06tA0VwYyxgYT5B6BW8aG
R/KNwZ95ym+jATJGzjqRIurHZ8OwLX/xsegsD19YfKWw1UXB40UW+yBhkFbT7PjLgcE0uvMD1hpy
mw+2TLoQSoSNlfj0zz+ksGyjTp0pHsXwYI2dJMKxrf4rT0g2YK9lUUXRRlb/17KCkAmHYId8SH1K
xusscibC2+j5yID2blC8Pf1XWNdu8InbGpS4Kkx2rwbK65rEON4fD2puBQ4xjCG5yiOKJfCl29Vh
UViSCrCbghl6K4K1+AQeOEhtAOt6qY5y/mAp7IoVJRDEYueGjQW50oL1t2CfA9EebOyoONvq56fK
HwtQcpaPZAZy8ZUdmKtDsy5ohPIt0/qOC3+dbe002ns/u235aV/sZlJaLBI8ANNBZISsgWK1nEwR
wmYW8fcZPRYa3dw9SkrOfB6f06bnUgqsXAhoiFgYih8h56b41XRaQe/8ISP3Axo63gVEFcmlKm9c
apXvsLW+AVO9HGKj1aepRZK36zDntVjtLqpS1HVVe703nGrfa5A5PiDPOee4lghems837j4+dbU8
AYILayzeZ6CkbDk9ydoBfawQF3txNZih9DqlHo1++Ce0o2kOLtLz8dFGFCrOIdD1NXCRLl46yg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CD85BA7EC92280"
last-modified: Thu, 12 Nov 2026 00:44:55 GMT
content-md5: 1AZsIBQqv2iDfsxYJGZeIA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a3bfe4b6-3659-4e4b-85ff-58187ec418da
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-280823ba-172e-3fdf-05fe-18522c4fb589/baz/bar/foo

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
LrwmTRURyasRie+fpDfyxnzHnrjCWagoOHhDOSWc9Qneewh6wLf4qFldFqQnP5rOC1HWZbD9xtUU
/RWdzpCFdJTmwCkudwbFz/ZeZUIDAPjddC3Uxo9Z4bQzZsKhWtrJ16IQQX5xoJRLEJa6n2GSEP0c
v1ljsa4EjN90+hBDI3QblY2g8755bNSZibb5n0FToFbFhZuAZibzC7Wf/aWDB+whngnT8hw+olOF
ySf3Cu2eIVq6fp7Ymy9nrOcJ2m4vFoLJ1wA3f645h+JI+5z++wDHAdtLyIhOSAPabEY1NMjkVbOl
LjLtZqGrgPe7kJ+SabDnQdmS5E35e479XRNnBFIaY6XoWM3N2po6n0eRkrhjSAKVTfLuUXFmrLKk
7wiORHyloS36qRDjGWc+WEUFaOnWmRQQ0rZfKxIzgqwaKeqRrFrL6/CLaZ7ysjSLsPksYUPJzVb0
fXHFRXUaxidkyO98rKzqOXz4SzB2HiCC03sZByFoUVyUnS7pBqZ6cKJ3jepEDwNMQSfH0IImfl5R
Q3H6Ab4G+3aT6A59ATPWfduN/5E1PcR3zMX5oYDabR/Pl8I0gG7kcJFzsSb0zkD08FOnmX/NGwWt
gjX4DFr2uXrvrmlwof1sqI7/woydg/2EBbAtM9SgAXy9hv0462M3ffesBSDXg05WOvDwzlh5D/84
dAepyYalTqztsxr/M70qyEWU8X3crYFh1vjkrzMjQ3f+AHdcjbRxBrZ06tA0VwYyxgYT5B6BW8aG
R/KNwZ95ym+jATJGzjqRIurHZ8OwLX/xsegsD19YfKWw1UXB40UW+yBhkFbT7PjLgcE0uvMD1hpy
mw+2TLoQSoSNlfj0zz+ksGyjTp0pHsXwYI2dJMKxrf4rT0g2YK9lUUXRRlb/17KCkAmHYId8SH1K
xusscibC2+j5yID2blC8Pf1XWNdu8InbGpS4Kkx2rwbK65rEON4fD2puBQ4xjCG5yiOKJfCl29Vh
UViSCrCbghl6K4K1+AQeOEhtAOt6qY5y/mAp7IoVJRDEYueGjQW50oL1t2CfA9EebOyoONvq56fK
HwtQcpaPZAZy8ZUdmKtDsy5ohPIt0/qOC3+dbe002ns/u235aV/sZlJaLBI8ANNBZISsgWK1nEwR
wmYW8fcZPRYa3dw9SkrOfB6f06bnUgqsXAhoiFgYih8h56b41XRaQe/8ISP3Axo63gVEFcmlKm9c
apXvsLW+AVO9HGKj1aepRZK36zDntVjtLqpS1HVVe703nGrfa5A5PiDPOee4lghems837j4+dbU8
AYILayzeZ6CkbDk9ydoBfawQF3txNZih9DqlHo1++Ce0o2kOLtLz8dFGFCrOIdD1NXCRLl46yg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E8FFCF7AB2ABA0"
last-modified: Thu, 12 Nov 2026 00:44:55 GMT
content-md5: 1AZsIBQqv2iDfsxYJGZeIA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8e4dc981-8276-4ce2-bb4e-a75a2374fa29
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-280823ba-172e-3fdf-05fe-18522c4fb589/foo/foo?comp=metadata

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
etag: "0x2284F935EF175A0"
last-modified: Thu, 12 Nov 2026 00:44:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 45874025-f076-403c-959f-f9d1806896a3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-280823ba-172e-3fdf-05fe-18522c4fb589?restype=container&comp=list

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
x-ms-request-id: f622f2d1-5f3b-4969-a33e-89ab7241ea19
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:55 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-280823ba-172e-3fdf-05fe-18522c4fb589"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:54 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:54 GMT</Last-Modified><Etag>0x21390ECE46BBF20</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>1AZsIBQqv2iDfsxYJGZeIA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:54 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:54 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:54 GMT</Last-Modified><Etag>0x25FBAE0D97E7D60</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>1AZsIBQqv2iDfsxYJGZeIA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:54 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/bar/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:55 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:55 GMT</Last-Modified><Etag>0x1E8FFCF7AB2ABA0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>1AZsIBQqv2iDfsxYJGZeIA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:55 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:55 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:55 GMT</Last-Modified><Etag>0x1C45C7D90F08580</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>1AZsIBQqv2iDfsxYJGZeIA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:55 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:55 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:55 GMT</Last-Modified><Etag>0x1CD85BA7EC92280</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>1AZsIBQqv2iDfsxYJGZeIA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:55 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:54 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:54 GMT</Last-Modified><Etag>0x2037B4B67594FC0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>1AZsIBQqv2iDfsxYJGZeIA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:54 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:55 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:55 GMT</Last-Modified><Etag>0x22A7C19B83886C0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>1AZsIBQqv2iDfsxYJGZeIA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:55 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:54 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:55 GMT</Last-Modified><Etag>0x2284F935EF175A0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>1AZsIBQqv2iDfsxYJGZeIA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:54 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-280823ba-172e-3fdf-05fe-18522c4fb589?restype=container

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
x-ms-request-id: ebe5d8ea-8eb2-4133-8643-d66fa0257c99
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

