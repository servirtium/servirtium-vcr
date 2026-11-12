## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6a4336c4-7a6b-aa37-5706-3ade19825119?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).StartCopyFromUriAsync_Tags
now: 2026-11-12T00:47:18.0311675+00:00

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
etag: "0x1C7D797A1865400"
last-modified: Thu, 12 Nov 2026 00:47:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4b4f5fc8-f67b-4ed6-8787-dbe150bcd0f1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6a4336c4-7a6b-aa37-5706-3ade19825119/test-blob-6f758b12-48b7-52ab-e1f6-1de503e1a5a6

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
WVbt46c+WFKJPW3dEER1QWg8yL581Fh7ivCJdFxSpnZgk4XClW5x0zIi5XrbzUKcgdx8xhnnKoT+
cVm2tOT2Npb2fXy+sqv6y/SMWe7doLyu7fOA1d9deGkBxCMUux9OLK/j5FDG3c4xgvskW9CVIdGc
CMfwdWC3mQQTve6I5Q/VPSw/+rts6A8kT1PjOB2Ya6JSeLJXXbZOLEtMsh/gqJ3sTx2kVicVMB+4
zCYN1GDmelJLNW1dfd918M5wHzXvRKa19+j/9BV7PEeSn5GPQFfqZTjNlHIvjtI+LmVYpRDqyIeA
V9x454Y9z/klyt5O5rB2hrr9Ia8zhmgWwcWvIpc2qNYJDul7cX2xkMR5CsTz70i14h9W7abYTdF0
YiXAja1h7iIHRNfH+hQ8S5HquXukItF9+kB44LswMcEXBw9X8AMXFxui7Ktx7ucKGaEV7ZRV0D9U
Q5Js6Q5m1xIVr/ME5FuN0qFgATYlDAxYbcYZGkQtwTfQA61wqy4MOxSZWz70BjVGhxry9c4JLjaG
FHtITLzO6O28NOCuHSdzU8UhjLHNZGeQ05IpOstox9V26ZayxO5Xy3JQN9JUl2rzfqII56GFubAU
t3kqpa0hVGwLODORwY7XycE+fCyVPDwoNbwpYN8z8DDmnQ11LSXELuNlSF82Yr0TMR7gRjyDf3s9
Am/x+PSN2EcDqyOBYZubeU1JMPPc8dP+FS7BU6nzYh6SOCu20zbv13AYM7aaks+CRM3vOU+HYBCb
8uPFzIWdD0gE7ylw5aYXWliCw70cZIJePg7cBCnPCtcaGuBTKQvreiRulaOmEl8m2N/2BJxTfo5g
Zo12wQsfNORRVcrFwzBMl0mZrs/fuCyvtSxK2AY7x5tS8sN9dLkYT2C/Vb2UYRSuqmxTudC/gK5h
xwzf1VveFo0uc9FtziOQgF9uH2JuGlQYmy6Z5w3Lk3EUG62tOXkF4T8vZe1DQNtJwzlxUWFL8qy3
xzktRC6AY+BfWLJ240flaD4jP7Vm1VpSTyTUWkEQySkA9XJA15wQrgIM5Ogo0+Dxi+giKLP3UPLe
2vQKrAmeTo+Jde3VpZChEpGzWvByKXxE4s5Z7qB2CKSAYf2oBgL4bpVZn13yHOZXgBYhRPYBbLB3
xck7RF/uE2xJVEST+QuOuutbGYofUcXnAm6KVMStf/RMMEA4vSk2aovwqceiw4YKkooKplMmWHMD
U0LxY7+om9VPRsnKVv3CJK7+Lqj9RT7ngME6o9mhJtfNNGnmRAfMRw7yUn28PzyMSIGkJynLBg0D
CuP+bvf8rSDy/SGT2+CnMueaC/LBKkCErVpX/P6tAS5c4jojztkW9aVcykIa+Wyg/fVCMfoaQg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x239276E3878F660"
last-modified: Thu, 12 Nov 2026 00:47:18 GMT
content-md5: ok5wRhFXEfQMiHVMqTt7tg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 35805a93-f2b6-4e13-b0a9-71a0438b515e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:18 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-6a4336c4-7a6b-aa37-5706-3ade19825119/test-blob-c079a3df-a49d-21b0-44fb-f337f9a58464

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-6a4336c4-7a6b-aa37-5706-3ade19825119/test-blob-6f758b12-48b7-52ab-e1f6-1de503e1a5a6
x-ms-return-client-request-id: true
x-ms-tags: tagKey0=tagValue0&tagKey1=tagValue1
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26D1E2B7FD9B9A0"
last-modified: Thu, 12 Nov 2026 00:47:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0302c186-0bbf-45bd-adc2-975464c60036
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:18 GMT
x-ms-copy-id: 7530f7e3-b3e7-4447-a8d2-7ef3e760f28c
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-6a4336c4-7a6b-aa37-5706-3ade19825119/test-blob-c079a3df-a49d-21b0-44fb-f337f9a58464

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
last-modified: Thu, 12 Nov 2026 00:47:18 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:18 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:47:18 GMT
x-ms-copy-id: 7530f7e3-b3e7-4447-a8d2-7ef3e760f28c
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-6a4336c4-7a6b-aa37-5706-3ade19825119/test-blob-6f758b12-48b7-52ab-e1f6-1de503e1a5a6
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x26D1E2B7FD9B9A0"
content-md5: ok5wRhFXEfQMiHVMqTt7tg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 624d354d-a106-4249-aaf1-7d5bd1962d32
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:18 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-tag-count: 2
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-6a4336c4-7a6b-aa37-5706-3ade19825119/test-blob-c079a3df-a49d-21b0-44fb-f337f9a58464?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 3f74d932-5470-4c6c-ad55-c7b7c29b8466
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:18 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-6a4336c4-7a6b-aa37-5706-3ade19825119?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bba8dd64-f2df-40fe-bbc9-812a5434132b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

