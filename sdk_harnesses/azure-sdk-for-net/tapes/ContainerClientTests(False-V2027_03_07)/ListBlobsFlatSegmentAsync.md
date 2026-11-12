## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-435a1244-e0f5-c91d-3860-8b4b237111ce?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync
now: 2026-11-12T00:43:44.5531811+00:00

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
etag: "0x24F934A060E7040"
last-modified: Thu, 12 Nov 2026 00:43:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d2362828-2a16-4055-80d2-2b9af7d51ff7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-435a1244-e0f5-c91d-3860-8b4b237111ce/foo

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
xl/cGWNwwp5pPXXpTzk429drNTBV1+DhJ5lINGCc/k8i5lwLghO21FC72bdqNHn+KK90uDzgee5+
+vHKJ409zT8mxmndLFnEtWDfmf4pdvMgSguwKEYTQWxtjIch663CfQx3RG0PIPtWrwLbAd/wVYT+
qtyCjKX5EoX8cKDRosmzHRzxsTKGECkPWnhDOECNfDYDI0HQP/BmfjHnE7BbhQ04J+PD/qRReJqz
cjIsttlFb/Npzn6I490rijIAnvx4s9RqChFcyn6SsaunHc2+OshXoaS98rePsEQGmHNyUdmdOr5d
wqvI6aR11xzT4MUQbFBqqP1YusEd21nMVjIKIGDSCuIOYHccj7j/SBqau9B+9SsjB6jbRH/9QOZS
+5Jya7e7ANbiAgzZThlFWXKmgx+JTmAG5xi49sVjECCQypMljN1j3rv5m/MeSbmOluoNVrzHya0y
a4OeAwoQf/HsSIOGH82VQ6Rkj7Jt6J1eKl/bVbpjyQDl8yBZxNuw6BsCMgE1B3cdeBIYYzn7xIPm
QNiqNSk2iX6DoSysO3/Is6aWa7abKSLovd2oSmbH6i6ccoQCBbPyy6iCsmZKcDyTT6+SZFnNSxa2
wndMjj4Yu7b9EMj6xq3zpJ8NGHa8nUygFPu2NIbUzidtTEM7pT1pavevTWBzmIgBn7+6wDKg+iUq
q3lDYYYwKEGhjXpqt/5io65/DFDsLXtytJXGGg70zVEeEPrDJghwfyQf0QsOl+jBVx2EIO7UPn39
0Kzxag0yrMAoS6YEn3ylD4wszFtwYx2sBMPxcKxjSdJ8xVVbfhQW7CVK5ktBvLig3hFhqHIijGyP
RGVKQTwTxALUh9kmSZB3FeA2Jn3RakgKUZKbAqFgWTjozDqvy6roNyFJbTTeeZSA6ZKR7Gbvvdkd
P/Cqd8Jgcy6hPX1WyEo1Te5ch/0TLNf9GxgOzm3R+Q5gkYu6Pr9e6foGPTsXKiBIXJ54kjbcChMZ
rFyqUaXA0ERu9ja+ew4u/p4DDO6b5vD3xnHOWWfYg4d4oZJitJdURm33qDTqiuGQSZSX2f0kfcVr
sosz8nbclnKvRtl8y0kHrsaBpD68DTyQPg/TQaqJUyPM9wEMIFP2GhLBOkMHFH1KkCo3otiHr6RO
o7RmCVTIJfK2r9RH+41yi4ks+tL4iCmSiLF/UrBLRUddvXyfjxC9+RVQUWSoApSdxBdOWrTSVhuK
1ICjSdNCamqN6j0Q0/x4bwC9pzbF6oYc4o2Z/OqSi2ZhFbqQGbBBDub6GxdXjPEa1eu0FK7kxOn6
h2ZGqW5/+l/Xr75B6FVPfJlPys9vxVWbfib+3na4fVDRlpFJ+2R4eiC3gNwz2e2VZJgVlPoaig==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x208744754EE2980"
last-modified: Thu, 12 Nov 2026 00:43:44 GMT
content-md5: VfJ6KPVVNA4NOL2TQFlL4Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3f7a9d91-943c-475e-9a36-fb2210d9a644
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-435a1244-e0f5-c91d-3860-8b4b237111ce/bar

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
xl/cGWNwwp5pPXXpTzk429drNTBV1+DhJ5lINGCc/k8i5lwLghO21FC72bdqNHn+KK90uDzgee5+
+vHKJ409zT8mxmndLFnEtWDfmf4pdvMgSguwKEYTQWxtjIch663CfQx3RG0PIPtWrwLbAd/wVYT+
qtyCjKX5EoX8cKDRosmzHRzxsTKGECkPWnhDOECNfDYDI0HQP/BmfjHnE7BbhQ04J+PD/qRReJqz
cjIsttlFb/Npzn6I490rijIAnvx4s9RqChFcyn6SsaunHc2+OshXoaS98rePsEQGmHNyUdmdOr5d
wqvI6aR11xzT4MUQbFBqqP1YusEd21nMVjIKIGDSCuIOYHccj7j/SBqau9B+9SsjB6jbRH/9QOZS
+5Jya7e7ANbiAgzZThlFWXKmgx+JTmAG5xi49sVjECCQypMljN1j3rv5m/MeSbmOluoNVrzHya0y
a4OeAwoQf/HsSIOGH82VQ6Rkj7Jt6J1eKl/bVbpjyQDl8yBZxNuw6BsCMgE1B3cdeBIYYzn7xIPm
QNiqNSk2iX6DoSysO3/Is6aWa7abKSLovd2oSmbH6i6ccoQCBbPyy6iCsmZKcDyTT6+SZFnNSxa2
wndMjj4Yu7b9EMj6xq3zpJ8NGHa8nUygFPu2NIbUzidtTEM7pT1pavevTWBzmIgBn7+6wDKg+iUq
q3lDYYYwKEGhjXpqt/5io65/DFDsLXtytJXGGg70zVEeEPrDJghwfyQf0QsOl+jBVx2EIO7UPn39
0Kzxag0yrMAoS6YEn3ylD4wszFtwYx2sBMPxcKxjSdJ8xVVbfhQW7CVK5ktBvLig3hFhqHIijGyP
RGVKQTwTxALUh9kmSZB3FeA2Jn3RakgKUZKbAqFgWTjozDqvy6roNyFJbTTeeZSA6ZKR7Gbvvdkd
P/Cqd8Jgcy6hPX1WyEo1Te5ch/0TLNf9GxgOzm3R+Q5gkYu6Pr9e6foGPTsXKiBIXJ54kjbcChMZ
rFyqUaXA0ERu9ja+ew4u/p4DDO6b5vD3xnHOWWfYg4d4oZJitJdURm33qDTqiuGQSZSX2f0kfcVr
sosz8nbclnKvRtl8y0kHrsaBpD68DTyQPg/TQaqJUyPM9wEMIFP2GhLBOkMHFH1KkCo3otiHr6RO
o7RmCVTIJfK2r9RH+41yi4ks+tL4iCmSiLF/UrBLRUddvXyfjxC9+RVQUWSoApSdxBdOWrTSVhuK
1ICjSdNCamqN6j0Q0/x4bwC9pzbF6oYc4o2Z/OqSi2ZhFbqQGbBBDub6GxdXjPEa1eu0FK7kxOn6
h2ZGqW5/+l/Xr75B6FVPfJlPys9vxVWbfib+3na4fVDRlpFJ+2R4eiC3gNwz2e2VZJgVlPoaig==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C653274BD7C8D0"
last-modified: Thu, 12 Nov 2026 00:43:44 GMT
content-md5: VfJ6KPVVNA4NOL2TQFlL4Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8c42003c-e77b-4ae7-b31f-442851ab2758
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-435a1244-e0f5-c91d-3860-8b4b237111ce/baz

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
xl/cGWNwwp5pPXXpTzk429drNTBV1+DhJ5lINGCc/k8i5lwLghO21FC72bdqNHn+KK90uDzgee5+
+vHKJ409zT8mxmndLFnEtWDfmf4pdvMgSguwKEYTQWxtjIch663CfQx3RG0PIPtWrwLbAd/wVYT+
qtyCjKX5EoX8cKDRosmzHRzxsTKGECkPWnhDOECNfDYDI0HQP/BmfjHnE7BbhQ04J+PD/qRReJqz
cjIsttlFb/Npzn6I490rijIAnvx4s9RqChFcyn6SsaunHc2+OshXoaS98rePsEQGmHNyUdmdOr5d
wqvI6aR11xzT4MUQbFBqqP1YusEd21nMVjIKIGDSCuIOYHccj7j/SBqau9B+9SsjB6jbRH/9QOZS
+5Jya7e7ANbiAgzZThlFWXKmgx+JTmAG5xi49sVjECCQypMljN1j3rv5m/MeSbmOluoNVrzHya0y
a4OeAwoQf/HsSIOGH82VQ6Rkj7Jt6J1eKl/bVbpjyQDl8yBZxNuw6BsCMgE1B3cdeBIYYzn7xIPm
QNiqNSk2iX6DoSysO3/Is6aWa7abKSLovd2oSmbH6i6ccoQCBbPyy6iCsmZKcDyTT6+SZFnNSxa2
wndMjj4Yu7b9EMj6xq3zpJ8NGHa8nUygFPu2NIbUzidtTEM7pT1pavevTWBzmIgBn7+6wDKg+iUq
q3lDYYYwKEGhjXpqt/5io65/DFDsLXtytJXGGg70zVEeEPrDJghwfyQf0QsOl+jBVx2EIO7UPn39
0Kzxag0yrMAoS6YEn3ylD4wszFtwYx2sBMPxcKxjSdJ8xVVbfhQW7CVK5ktBvLig3hFhqHIijGyP
RGVKQTwTxALUh9kmSZB3FeA2Jn3RakgKUZKbAqFgWTjozDqvy6roNyFJbTTeeZSA6ZKR7Gbvvdkd
P/Cqd8Jgcy6hPX1WyEo1Te5ch/0TLNf9GxgOzm3R+Q5gkYu6Pr9e6foGPTsXKiBIXJ54kjbcChMZ
rFyqUaXA0ERu9ja+ew4u/p4DDO6b5vD3xnHOWWfYg4d4oZJitJdURm33qDTqiuGQSZSX2f0kfcVr
sosz8nbclnKvRtl8y0kHrsaBpD68DTyQPg/TQaqJUyPM9wEMIFP2GhLBOkMHFH1KkCo3otiHr6RO
o7RmCVTIJfK2r9RH+41yi4ks+tL4iCmSiLF/UrBLRUddvXyfjxC9+RVQUWSoApSdxBdOWrTSVhuK
1ICjSdNCamqN6j0Q0/x4bwC9pzbF6oYc4o2Z/OqSi2ZhFbqQGbBBDub6GxdXjPEa1eu0FK7kxOn6
h2ZGqW5/+l/Xr75B6FVPfJlPys9vxVWbfib+3na4fVDRlpFJ+2R4eiC3gNwz2e2VZJgVlPoaig==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22C1AA1E6F726C0"
last-modified: Thu, 12 Nov 2026 00:43:44 GMT
content-md5: VfJ6KPVVNA4NOL2TQFlL4Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2f29eb22-26a4-4017-8506-9bb5c6a48f2c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-435a1244-e0f5-c91d-3860-8b4b237111ce/foo/foo

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
xl/cGWNwwp5pPXXpTzk429drNTBV1+DhJ5lINGCc/k8i5lwLghO21FC72bdqNHn+KK90uDzgee5+
+vHKJ409zT8mxmndLFnEtWDfmf4pdvMgSguwKEYTQWxtjIch663CfQx3RG0PIPtWrwLbAd/wVYT+
qtyCjKX5EoX8cKDRosmzHRzxsTKGECkPWnhDOECNfDYDI0HQP/BmfjHnE7BbhQ04J+PD/qRReJqz
cjIsttlFb/Npzn6I490rijIAnvx4s9RqChFcyn6SsaunHc2+OshXoaS98rePsEQGmHNyUdmdOr5d
wqvI6aR11xzT4MUQbFBqqP1YusEd21nMVjIKIGDSCuIOYHccj7j/SBqau9B+9SsjB6jbRH/9QOZS
+5Jya7e7ANbiAgzZThlFWXKmgx+JTmAG5xi49sVjECCQypMljN1j3rv5m/MeSbmOluoNVrzHya0y
a4OeAwoQf/HsSIOGH82VQ6Rkj7Jt6J1eKl/bVbpjyQDl8yBZxNuw6BsCMgE1B3cdeBIYYzn7xIPm
QNiqNSk2iX6DoSysO3/Is6aWa7abKSLovd2oSmbH6i6ccoQCBbPyy6iCsmZKcDyTT6+SZFnNSxa2
wndMjj4Yu7b9EMj6xq3zpJ8NGHa8nUygFPu2NIbUzidtTEM7pT1pavevTWBzmIgBn7+6wDKg+iUq
q3lDYYYwKEGhjXpqt/5io65/DFDsLXtytJXGGg70zVEeEPrDJghwfyQf0QsOl+jBVx2EIO7UPn39
0Kzxag0yrMAoS6YEn3ylD4wszFtwYx2sBMPxcKxjSdJ8xVVbfhQW7CVK5ktBvLig3hFhqHIijGyP
RGVKQTwTxALUh9kmSZB3FeA2Jn3RakgKUZKbAqFgWTjozDqvy6roNyFJbTTeeZSA6ZKR7Gbvvdkd
P/Cqd8Jgcy6hPX1WyEo1Te5ch/0TLNf9GxgOzm3R+Q5gkYu6Pr9e6foGPTsXKiBIXJ54kjbcChMZ
rFyqUaXA0ERu9ja+ew4u/p4DDO6b5vD3xnHOWWfYg4d4oZJitJdURm33qDTqiuGQSZSX2f0kfcVr
sosz8nbclnKvRtl8y0kHrsaBpD68DTyQPg/TQaqJUyPM9wEMIFP2GhLBOkMHFH1KkCo3otiHr6RO
o7RmCVTIJfK2r9RH+41yi4ks+tL4iCmSiLF/UrBLRUddvXyfjxC9+RVQUWSoApSdxBdOWrTSVhuK
1ICjSdNCamqN6j0Q0/x4bwC9pzbF6oYc4o2Z/OqSi2ZhFbqQGbBBDub6GxdXjPEa1eu0FK7kxOn6
h2ZGqW5/+l/Xr75B6FVPfJlPys9vxVWbfib+3na4fVDRlpFJ+2R4eiC3gNwz2e2VZJgVlPoaig==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x258799D10DF3180"
last-modified: Thu, 12 Nov 2026 00:43:44 GMT
content-md5: VfJ6KPVVNA4NOL2TQFlL4Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8916cdb4-f01c-4c72-8923-ea03bcccd88e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-435a1244-e0f5-c91d-3860-8b4b237111ce/foo/bar

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
xl/cGWNwwp5pPXXpTzk429drNTBV1+DhJ5lINGCc/k8i5lwLghO21FC72bdqNHn+KK90uDzgee5+
+vHKJ409zT8mxmndLFnEtWDfmf4pdvMgSguwKEYTQWxtjIch663CfQx3RG0PIPtWrwLbAd/wVYT+
qtyCjKX5EoX8cKDRosmzHRzxsTKGECkPWnhDOECNfDYDI0HQP/BmfjHnE7BbhQ04J+PD/qRReJqz
cjIsttlFb/Npzn6I490rijIAnvx4s9RqChFcyn6SsaunHc2+OshXoaS98rePsEQGmHNyUdmdOr5d
wqvI6aR11xzT4MUQbFBqqP1YusEd21nMVjIKIGDSCuIOYHccj7j/SBqau9B+9SsjB6jbRH/9QOZS
+5Jya7e7ANbiAgzZThlFWXKmgx+JTmAG5xi49sVjECCQypMljN1j3rv5m/MeSbmOluoNVrzHya0y
a4OeAwoQf/HsSIOGH82VQ6Rkj7Jt6J1eKl/bVbpjyQDl8yBZxNuw6BsCMgE1B3cdeBIYYzn7xIPm
QNiqNSk2iX6DoSysO3/Is6aWa7abKSLovd2oSmbH6i6ccoQCBbPyy6iCsmZKcDyTT6+SZFnNSxa2
wndMjj4Yu7b9EMj6xq3zpJ8NGHa8nUygFPu2NIbUzidtTEM7pT1pavevTWBzmIgBn7+6wDKg+iUq
q3lDYYYwKEGhjXpqt/5io65/DFDsLXtytJXGGg70zVEeEPrDJghwfyQf0QsOl+jBVx2EIO7UPn39
0Kzxag0yrMAoS6YEn3ylD4wszFtwYx2sBMPxcKxjSdJ8xVVbfhQW7CVK5ktBvLig3hFhqHIijGyP
RGVKQTwTxALUh9kmSZB3FeA2Jn3RakgKUZKbAqFgWTjozDqvy6roNyFJbTTeeZSA6ZKR7Gbvvdkd
P/Cqd8Jgcy6hPX1WyEo1Te5ch/0TLNf9GxgOzm3R+Q5gkYu6Pr9e6foGPTsXKiBIXJ54kjbcChMZ
rFyqUaXA0ERu9ja+ew4u/p4DDO6b5vD3xnHOWWfYg4d4oZJitJdURm33qDTqiuGQSZSX2f0kfcVr
sosz8nbclnKvRtl8y0kHrsaBpD68DTyQPg/TQaqJUyPM9wEMIFP2GhLBOkMHFH1KkCo3otiHr6RO
o7RmCVTIJfK2r9RH+41yi4ks+tL4iCmSiLF/UrBLRUddvXyfjxC9+RVQUWSoApSdxBdOWrTSVhuK
1ICjSdNCamqN6j0Q0/x4bwC9pzbF6oYc4o2Z/OqSi2ZhFbqQGbBBDub6GxdXjPEa1eu0FK7kxOn6
h2ZGqW5/+l/Xr75B6FVPfJlPys9vxVWbfib+3na4fVDRlpFJ+2R4eiC3gNwz2e2VZJgVlPoaig==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x216658B71699180"
last-modified: Thu, 12 Nov 2026 00:43:44 GMT
content-md5: VfJ6KPVVNA4NOL2TQFlL4Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 786c677a-1941-4404-8095-5b042fd0958c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-435a1244-e0f5-c91d-3860-8b4b237111ce/baz/foo

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
xl/cGWNwwp5pPXXpTzk429drNTBV1+DhJ5lINGCc/k8i5lwLghO21FC72bdqNHn+KK90uDzgee5+
+vHKJ409zT8mxmndLFnEtWDfmf4pdvMgSguwKEYTQWxtjIch663CfQx3RG0PIPtWrwLbAd/wVYT+
qtyCjKX5EoX8cKDRosmzHRzxsTKGECkPWnhDOECNfDYDI0HQP/BmfjHnE7BbhQ04J+PD/qRReJqz
cjIsttlFb/Npzn6I490rijIAnvx4s9RqChFcyn6SsaunHc2+OshXoaS98rePsEQGmHNyUdmdOr5d
wqvI6aR11xzT4MUQbFBqqP1YusEd21nMVjIKIGDSCuIOYHccj7j/SBqau9B+9SsjB6jbRH/9QOZS
+5Jya7e7ANbiAgzZThlFWXKmgx+JTmAG5xi49sVjECCQypMljN1j3rv5m/MeSbmOluoNVrzHya0y
a4OeAwoQf/HsSIOGH82VQ6Rkj7Jt6J1eKl/bVbpjyQDl8yBZxNuw6BsCMgE1B3cdeBIYYzn7xIPm
QNiqNSk2iX6DoSysO3/Is6aWa7abKSLovd2oSmbH6i6ccoQCBbPyy6iCsmZKcDyTT6+SZFnNSxa2
wndMjj4Yu7b9EMj6xq3zpJ8NGHa8nUygFPu2NIbUzidtTEM7pT1pavevTWBzmIgBn7+6wDKg+iUq
q3lDYYYwKEGhjXpqt/5io65/DFDsLXtytJXGGg70zVEeEPrDJghwfyQf0QsOl+jBVx2EIO7UPn39
0Kzxag0yrMAoS6YEn3ylD4wszFtwYx2sBMPxcKxjSdJ8xVVbfhQW7CVK5ktBvLig3hFhqHIijGyP
RGVKQTwTxALUh9kmSZB3FeA2Jn3RakgKUZKbAqFgWTjozDqvy6roNyFJbTTeeZSA6ZKR7Gbvvdkd
P/Cqd8Jgcy6hPX1WyEo1Te5ch/0TLNf9GxgOzm3R+Q5gkYu6Pr9e6foGPTsXKiBIXJ54kjbcChMZ
rFyqUaXA0ERu9ja+ew4u/p4DDO6b5vD3xnHOWWfYg4d4oZJitJdURm33qDTqiuGQSZSX2f0kfcVr
sosz8nbclnKvRtl8y0kHrsaBpD68DTyQPg/TQaqJUyPM9wEMIFP2GhLBOkMHFH1KkCo3otiHr6RO
o7RmCVTIJfK2r9RH+41yi4ks+tL4iCmSiLF/UrBLRUddvXyfjxC9+RVQUWSoApSdxBdOWrTSVhuK
1ICjSdNCamqN6j0Q0/x4bwC9pzbF6oYc4o2Z/OqSi2ZhFbqQGbBBDub6GxdXjPEa1eu0FK7kxOn6
h2ZGqW5/+l/Xr75B6FVPfJlPys9vxVWbfib+3na4fVDRlpFJ+2R4eiC3gNwz2e2VZJgVlPoaig==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20BA9318B03CCC0"
last-modified: Thu, 12 Nov 2026 00:43:44 GMT
content-md5: VfJ6KPVVNA4NOL2TQFlL4Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 67e92111-0f4f-4158-9134-4bfaf464a94c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-435a1244-e0f5-c91d-3860-8b4b237111ce/baz/foo/bar

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
xl/cGWNwwp5pPXXpTzk429drNTBV1+DhJ5lINGCc/k8i5lwLghO21FC72bdqNHn+KK90uDzgee5+
+vHKJ409zT8mxmndLFnEtWDfmf4pdvMgSguwKEYTQWxtjIch663CfQx3RG0PIPtWrwLbAd/wVYT+
qtyCjKX5EoX8cKDRosmzHRzxsTKGECkPWnhDOECNfDYDI0HQP/BmfjHnE7BbhQ04J+PD/qRReJqz
cjIsttlFb/Npzn6I490rijIAnvx4s9RqChFcyn6SsaunHc2+OshXoaS98rePsEQGmHNyUdmdOr5d
wqvI6aR11xzT4MUQbFBqqP1YusEd21nMVjIKIGDSCuIOYHccj7j/SBqau9B+9SsjB6jbRH/9QOZS
+5Jya7e7ANbiAgzZThlFWXKmgx+JTmAG5xi49sVjECCQypMljN1j3rv5m/MeSbmOluoNVrzHya0y
a4OeAwoQf/HsSIOGH82VQ6Rkj7Jt6J1eKl/bVbpjyQDl8yBZxNuw6BsCMgE1B3cdeBIYYzn7xIPm
QNiqNSk2iX6DoSysO3/Is6aWa7abKSLovd2oSmbH6i6ccoQCBbPyy6iCsmZKcDyTT6+SZFnNSxa2
wndMjj4Yu7b9EMj6xq3zpJ8NGHa8nUygFPu2NIbUzidtTEM7pT1pavevTWBzmIgBn7+6wDKg+iUq
q3lDYYYwKEGhjXpqt/5io65/DFDsLXtytJXGGg70zVEeEPrDJghwfyQf0QsOl+jBVx2EIO7UPn39
0Kzxag0yrMAoS6YEn3ylD4wszFtwYx2sBMPxcKxjSdJ8xVVbfhQW7CVK5ktBvLig3hFhqHIijGyP
RGVKQTwTxALUh9kmSZB3FeA2Jn3RakgKUZKbAqFgWTjozDqvy6roNyFJbTTeeZSA6ZKR7Gbvvdkd
P/Cqd8Jgcy6hPX1WyEo1Te5ch/0TLNf9GxgOzm3R+Q5gkYu6Pr9e6foGPTsXKiBIXJ54kjbcChMZ
rFyqUaXA0ERu9ja+ew4u/p4DDO6b5vD3xnHOWWfYg4d4oZJitJdURm33qDTqiuGQSZSX2f0kfcVr
sosz8nbclnKvRtl8y0kHrsaBpD68DTyQPg/TQaqJUyPM9wEMIFP2GhLBOkMHFH1KkCo3otiHr6RO
o7RmCVTIJfK2r9RH+41yi4ks+tL4iCmSiLF/UrBLRUddvXyfjxC9+RVQUWSoApSdxBdOWrTSVhuK
1ICjSdNCamqN6j0Q0/x4bwC9pzbF6oYc4o2Z/OqSi2ZhFbqQGbBBDub6GxdXjPEa1eu0FK7kxOn6
h2ZGqW5/+l/Xr75B6FVPfJlPys9vxVWbfib+3na4fVDRlpFJ+2R4eiC3gNwz2e2VZJgVlPoaig==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2720EFAE7C7EDE0"
last-modified: Thu, 12 Nov 2026 00:43:44 GMT
content-md5: VfJ6KPVVNA4NOL2TQFlL4Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b7f26237-f61f-488f-80b0-ee0647b06e87
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-435a1244-e0f5-c91d-3860-8b4b237111ce/baz/bar/foo

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
xl/cGWNwwp5pPXXpTzk429drNTBV1+DhJ5lINGCc/k8i5lwLghO21FC72bdqNHn+KK90uDzgee5+
+vHKJ409zT8mxmndLFnEtWDfmf4pdvMgSguwKEYTQWxtjIch663CfQx3RG0PIPtWrwLbAd/wVYT+
qtyCjKX5EoX8cKDRosmzHRzxsTKGECkPWnhDOECNfDYDI0HQP/BmfjHnE7BbhQ04J+PD/qRReJqz
cjIsttlFb/Npzn6I490rijIAnvx4s9RqChFcyn6SsaunHc2+OshXoaS98rePsEQGmHNyUdmdOr5d
wqvI6aR11xzT4MUQbFBqqP1YusEd21nMVjIKIGDSCuIOYHccj7j/SBqau9B+9SsjB6jbRH/9QOZS
+5Jya7e7ANbiAgzZThlFWXKmgx+JTmAG5xi49sVjECCQypMljN1j3rv5m/MeSbmOluoNVrzHya0y
a4OeAwoQf/HsSIOGH82VQ6Rkj7Jt6J1eKl/bVbpjyQDl8yBZxNuw6BsCMgE1B3cdeBIYYzn7xIPm
QNiqNSk2iX6DoSysO3/Is6aWa7abKSLovd2oSmbH6i6ccoQCBbPyy6iCsmZKcDyTT6+SZFnNSxa2
wndMjj4Yu7b9EMj6xq3zpJ8NGHa8nUygFPu2NIbUzidtTEM7pT1pavevTWBzmIgBn7+6wDKg+iUq
q3lDYYYwKEGhjXpqt/5io65/DFDsLXtytJXGGg70zVEeEPrDJghwfyQf0QsOl+jBVx2EIO7UPn39
0Kzxag0yrMAoS6YEn3ylD4wszFtwYx2sBMPxcKxjSdJ8xVVbfhQW7CVK5ktBvLig3hFhqHIijGyP
RGVKQTwTxALUh9kmSZB3FeA2Jn3RakgKUZKbAqFgWTjozDqvy6roNyFJbTTeeZSA6ZKR7Gbvvdkd
P/Cqd8Jgcy6hPX1WyEo1Te5ch/0TLNf9GxgOzm3R+Q5gkYu6Pr9e6foGPTsXKiBIXJ54kjbcChMZ
rFyqUaXA0ERu9ja+ew4u/p4DDO6b5vD3xnHOWWfYg4d4oZJitJdURm33qDTqiuGQSZSX2f0kfcVr
sosz8nbclnKvRtl8y0kHrsaBpD68DTyQPg/TQaqJUyPM9wEMIFP2GhLBOkMHFH1KkCo3otiHr6RO
o7RmCVTIJfK2r9RH+41yi4ks+tL4iCmSiLF/UrBLRUddvXyfjxC9+RVQUWSoApSdxBdOWrTSVhuK
1ICjSdNCamqN6j0Q0/x4bwC9pzbF6oYc4o2Z/OqSi2ZhFbqQGbBBDub6GxdXjPEa1eu0FK7kxOn6
h2ZGqW5/+l/Xr75B6FVPfJlPys9vxVWbfib+3na4fVDRlpFJ+2R4eiC3gNwz2e2VZJgVlPoaig==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23B987BCDEEC6A0"
last-modified: Thu, 12 Nov 2026 00:43:44 GMT
content-md5: VfJ6KPVVNA4NOL2TQFlL4Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cc88e3eb-66cf-4000-a9cf-f01f5bf774df
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-435a1244-e0f5-c91d-3860-8b4b237111ce/foo/foo?comp=metadata

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
etag: "0x2166C12A7343E60"
last-modified: Thu, 12 Nov 2026 00:43:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2c270ae8-bee2-4d23-a709-db12f7ccda56
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-435a1244-e0f5-c91d-3860-8b4b237111ce?restype=container&comp=list

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
x-ms-request-id: 4133df74-58b9-417f-b682-003ef10ce202
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:44 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-435a1244-e0f5-c91d-3860-8b4b237111ce"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:44 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:44 GMT</Last-Modified><Etag>0x1C653274BD7C8D0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>VfJ6KPVVNA4NOL2TQFlL4Q==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:44 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:44 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:44 GMT</Last-Modified><Etag>0x22C1AA1E6F726C0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>VfJ6KPVVNA4NOL2TQFlL4Q==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:44 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/bar/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:44 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:44 GMT</Last-Modified><Etag>0x23B987BCDEEC6A0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>VfJ6KPVVNA4NOL2TQFlL4Q==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:44 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:44 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:44 GMT</Last-Modified><Etag>0x20BA9318B03CCC0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>VfJ6KPVVNA4NOL2TQFlL4Q==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:44 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:44 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:44 GMT</Last-Modified><Etag>0x2720EFAE7C7EDE0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>VfJ6KPVVNA4NOL2TQFlL4Q==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:44 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:44 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:44 GMT</Last-Modified><Etag>0x208744754EE2980</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>VfJ6KPVVNA4NOL2TQFlL4Q==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:44 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:44 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:44 GMT</Last-Modified><Etag>0x216658B71699180</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>VfJ6KPVVNA4NOL2TQFlL4Q==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:44 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:44 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:44 GMT</Last-Modified><Etag>0x2166C12A7343E60</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>VfJ6KPVVNA4NOL2TQFlL4Q==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:44 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-435a1244-e0f5-c91d-3860-8b4b237111ce?restype=container

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
x-ms-request-id: aa6087bb-7b61-49d1-86ec-fdfb82c171b9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

