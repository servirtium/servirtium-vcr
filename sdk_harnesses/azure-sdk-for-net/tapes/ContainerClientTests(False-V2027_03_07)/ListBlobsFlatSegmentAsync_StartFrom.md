## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-bbe7de0a-f552-a3fb-b0c6-e7231de43d29?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_StartFrom
now: 2026-11-12T00:43:48.3622887+00:00

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
etag: "0x20673D1B33840C0"
last-modified: Thu, 12 Nov 2026 00:43:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9388fdf1-6e08-44bc-9168-ef13fd3ffcce
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-bbe7de0a-f552-a3fb-b0c6-e7231de43d29/foo

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
AIcjzhWlq3VI2HfZ/X7TyQOKq0d+juh6OOUMuMggCw4cxkARZXXTZTJxc3p+IqUy8h0fkjj2qnKf
qZUvmfKtKM1pvTY9wWOOt0YUDBtt+xZA2cWqAXjVJRzOcrzgo8s/xEutFWVu9DG6kdvx4Z5WMa1/
778tAiZUk5cab0+mrRN61EfQwOaw0eSU8HCd40N9d0APYbQMEsIkWYHOU4XiE+PHdg1WhnHGzh7a
mBK2t69TnfgPl0xfbsGFrGdk4n1fstyM1W02J/DOSJKWMXqwbaHSeraN0nyWaAhM0doKYeuge+Y1
KuFCHXUHQE66yT1H1T7FkmfG0t9g9mxk6VYVw+en9bWTekO/kF1BhZIt3J/KBPubRc+D2qkH1TN1
3TMf8XxnE9OHs1r7BQIKhU1MMhrNmuVaen4YIxsMjKUPSrIqIZMVxsnLQ1GhoEDMeVRcuqIZp0JO
xXf+Tu+4eie167pP32S5N2tRAVeTudk9S6nGsNEC9qJv3FwbFnfZE8gp67SFfZrwooM2yKbrugud
wANG8clVsvUX3wMHniD0d+6Oas0luM0P1g5OzC78hCJQfVZzkyH+0zm+bZ6X6ARiQlC4XE8+eAg2
Nhu7BubHG1rgtyDKgOTMkJaUZkoueO0K7IneQyfSEQVNPVwGQ81T91JDtjDjmMJr68y5qhG9B74t
sRpc6NczDqUafEKIxk3JQG/468G8JlTHclhbGWf0jzad2JGy9w56EKiLyBt/4iV/8GmhxRv8cYrG
lHZ/2PU+JuwM6u67FklgfdsZMV04SI8z3Cj9UsoaoGcH7GKY+zezTKIucvg2w9kgQUhA4z8tjUzm
TPzMQNMi8kqHtCnnx4GjZuW6CtWX/BhP3RGB2b0n2V8Wsq875gvODICtrw+wOHnGnHxacoN2Tk/k
fWPCoRiMX9rK0BXSaH/Z7P1U6UwIn6SXuj1AzWfcn2NfV2moC2poIU815Whk9DT9gIaFImUD296+
K+bbS5Jz7TGycxEVMeCT68j907k8M8YIQ0zgV33+XHuL6eCEjdW9wvg3soEj50+l8jacBQgkgfgg
0ghFkpazsxaViUf/Dl7zPxHBBYBF5Vv9O2RHYVZzZmfoZLvMdy9hg/5qjV0HpePYqcX3Y3x32+ys
R1cxbFLAIiPfF6qjJsjhX4KC2lj99ZWBb7iQewLrcIjOIC/YLxerqmo6KI44NYL9FQT69ACUrlLC
sP2ZL6Yg86ch1AaYCDBq1jDtw80GSDo1k2b+8XuIOnHdFn8ZEXvDGjTmFmB8ZQzUjx3QpuuEu2fD
ZJxAIQIrmZqUuvKwUMS1KqmZIDHZuC1ZKmJet5OGWFsXVq3egvgxu33G56oaIz5YG3xC65o26Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C7EE6D5CEC77E0"
last-modified: Thu, 12 Nov 2026 00:43:48 GMT
content-md5: LLkEDqnsCEFOpdJHwBa/jA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5619a85c-9b0a-42b2-8c2b-4f0eb308a5b4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-bbe7de0a-f552-a3fb-b0c6-e7231de43d29/bar

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
AIcjzhWlq3VI2HfZ/X7TyQOKq0d+juh6OOUMuMggCw4cxkARZXXTZTJxc3p+IqUy8h0fkjj2qnKf
qZUvmfKtKM1pvTY9wWOOt0YUDBtt+xZA2cWqAXjVJRzOcrzgo8s/xEutFWVu9DG6kdvx4Z5WMa1/
778tAiZUk5cab0+mrRN61EfQwOaw0eSU8HCd40N9d0APYbQMEsIkWYHOU4XiE+PHdg1WhnHGzh7a
mBK2t69TnfgPl0xfbsGFrGdk4n1fstyM1W02J/DOSJKWMXqwbaHSeraN0nyWaAhM0doKYeuge+Y1
KuFCHXUHQE66yT1H1T7FkmfG0t9g9mxk6VYVw+en9bWTekO/kF1BhZIt3J/KBPubRc+D2qkH1TN1
3TMf8XxnE9OHs1r7BQIKhU1MMhrNmuVaen4YIxsMjKUPSrIqIZMVxsnLQ1GhoEDMeVRcuqIZp0JO
xXf+Tu+4eie167pP32S5N2tRAVeTudk9S6nGsNEC9qJv3FwbFnfZE8gp67SFfZrwooM2yKbrugud
wANG8clVsvUX3wMHniD0d+6Oas0luM0P1g5OzC78hCJQfVZzkyH+0zm+bZ6X6ARiQlC4XE8+eAg2
Nhu7BubHG1rgtyDKgOTMkJaUZkoueO0K7IneQyfSEQVNPVwGQ81T91JDtjDjmMJr68y5qhG9B74t
sRpc6NczDqUafEKIxk3JQG/468G8JlTHclhbGWf0jzad2JGy9w56EKiLyBt/4iV/8GmhxRv8cYrG
lHZ/2PU+JuwM6u67FklgfdsZMV04SI8z3Cj9UsoaoGcH7GKY+zezTKIucvg2w9kgQUhA4z8tjUzm
TPzMQNMi8kqHtCnnx4GjZuW6CtWX/BhP3RGB2b0n2V8Wsq875gvODICtrw+wOHnGnHxacoN2Tk/k
fWPCoRiMX9rK0BXSaH/Z7P1U6UwIn6SXuj1AzWfcn2NfV2moC2poIU815Whk9DT9gIaFImUD296+
K+bbS5Jz7TGycxEVMeCT68j907k8M8YIQ0zgV33+XHuL6eCEjdW9wvg3soEj50+l8jacBQgkgfgg
0ghFkpazsxaViUf/Dl7zPxHBBYBF5Vv9O2RHYVZzZmfoZLvMdy9hg/5qjV0HpePYqcX3Y3x32+ys
R1cxbFLAIiPfF6qjJsjhX4KC2lj99ZWBb7iQewLrcIjOIC/YLxerqmo6KI44NYL9FQT69ACUrlLC
sP2ZL6Yg86ch1AaYCDBq1jDtw80GSDo1k2b+8XuIOnHdFn8ZEXvDGjTmFmB8ZQzUjx3QpuuEu2fD
ZJxAIQIrmZqUuvKwUMS1KqmZIDHZuC1ZKmJet5OGWFsXVq3egvgxu33G56oaIz5YG3xC65o26Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x213372883833360"
last-modified: Thu, 12 Nov 2026 00:43:48 GMT
content-md5: LLkEDqnsCEFOpdJHwBa/jA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4598097d-ff12-4a7e-9c51-c1562487cf48
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-bbe7de0a-f552-a3fb-b0c6-e7231de43d29/baz

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
AIcjzhWlq3VI2HfZ/X7TyQOKq0d+juh6OOUMuMggCw4cxkARZXXTZTJxc3p+IqUy8h0fkjj2qnKf
qZUvmfKtKM1pvTY9wWOOt0YUDBtt+xZA2cWqAXjVJRzOcrzgo8s/xEutFWVu9DG6kdvx4Z5WMa1/
778tAiZUk5cab0+mrRN61EfQwOaw0eSU8HCd40N9d0APYbQMEsIkWYHOU4XiE+PHdg1WhnHGzh7a
mBK2t69TnfgPl0xfbsGFrGdk4n1fstyM1W02J/DOSJKWMXqwbaHSeraN0nyWaAhM0doKYeuge+Y1
KuFCHXUHQE66yT1H1T7FkmfG0t9g9mxk6VYVw+en9bWTekO/kF1BhZIt3J/KBPubRc+D2qkH1TN1
3TMf8XxnE9OHs1r7BQIKhU1MMhrNmuVaen4YIxsMjKUPSrIqIZMVxsnLQ1GhoEDMeVRcuqIZp0JO
xXf+Tu+4eie167pP32S5N2tRAVeTudk9S6nGsNEC9qJv3FwbFnfZE8gp67SFfZrwooM2yKbrugud
wANG8clVsvUX3wMHniD0d+6Oas0luM0P1g5OzC78hCJQfVZzkyH+0zm+bZ6X6ARiQlC4XE8+eAg2
Nhu7BubHG1rgtyDKgOTMkJaUZkoueO0K7IneQyfSEQVNPVwGQ81T91JDtjDjmMJr68y5qhG9B74t
sRpc6NczDqUafEKIxk3JQG/468G8JlTHclhbGWf0jzad2JGy9w56EKiLyBt/4iV/8GmhxRv8cYrG
lHZ/2PU+JuwM6u67FklgfdsZMV04SI8z3Cj9UsoaoGcH7GKY+zezTKIucvg2w9kgQUhA4z8tjUzm
TPzMQNMi8kqHtCnnx4GjZuW6CtWX/BhP3RGB2b0n2V8Wsq875gvODICtrw+wOHnGnHxacoN2Tk/k
fWPCoRiMX9rK0BXSaH/Z7P1U6UwIn6SXuj1AzWfcn2NfV2moC2poIU815Whk9DT9gIaFImUD296+
K+bbS5Jz7TGycxEVMeCT68j907k8M8YIQ0zgV33+XHuL6eCEjdW9wvg3soEj50+l8jacBQgkgfgg
0ghFkpazsxaViUf/Dl7zPxHBBYBF5Vv9O2RHYVZzZmfoZLvMdy9hg/5qjV0HpePYqcX3Y3x32+ys
R1cxbFLAIiPfF6qjJsjhX4KC2lj99ZWBb7iQewLrcIjOIC/YLxerqmo6KI44NYL9FQT69ACUrlLC
sP2ZL6Yg86ch1AaYCDBq1jDtw80GSDo1k2b+8XuIOnHdFn8ZEXvDGjTmFmB8ZQzUjx3QpuuEu2fD
ZJxAIQIrmZqUuvKwUMS1KqmZIDHZuC1ZKmJet5OGWFsXVq3egvgxu33G56oaIz5YG3xC65o26Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x212388F76DAE1C0"
last-modified: Thu, 12 Nov 2026 00:43:48 GMT
content-md5: LLkEDqnsCEFOpdJHwBa/jA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6a8d1d1d-ffef-4786-94c5-ab71ba462b31
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-bbe7de0a-f552-a3fb-b0c6-e7231de43d29/foo/foo

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
AIcjzhWlq3VI2HfZ/X7TyQOKq0d+juh6OOUMuMggCw4cxkARZXXTZTJxc3p+IqUy8h0fkjj2qnKf
qZUvmfKtKM1pvTY9wWOOt0YUDBtt+xZA2cWqAXjVJRzOcrzgo8s/xEutFWVu9DG6kdvx4Z5WMa1/
778tAiZUk5cab0+mrRN61EfQwOaw0eSU8HCd40N9d0APYbQMEsIkWYHOU4XiE+PHdg1WhnHGzh7a
mBK2t69TnfgPl0xfbsGFrGdk4n1fstyM1W02J/DOSJKWMXqwbaHSeraN0nyWaAhM0doKYeuge+Y1
KuFCHXUHQE66yT1H1T7FkmfG0t9g9mxk6VYVw+en9bWTekO/kF1BhZIt3J/KBPubRc+D2qkH1TN1
3TMf8XxnE9OHs1r7BQIKhU1MMhrNmuVaen4YIxsMjKUPSrIqIZMVxsnLQ1GhoEDMeVRcuqIZp0JO
xXf+Tu+4eie167pP32S5N2tRAVeTudk9S6nGsNEC9qJv3FwbFnfZE8gp67SFfZrwooM2yKbrugud
wANG8clVsvUX3wMHniD0d+6Oas0luM0P1g5OzC78hCJQfVZzkyH+0zm+bZ6X6ARiQlC4XE8+eAg2
Nhu7BubHG1rgtyDKgOTMkJaUZkoueO0K7IneQyfSEQVNPVwGQ81T91JDtjDjmMJr68y5qhG9B74t
sRpc6NczDqUafEKIxk3JQG/468G8JlTHclhbGWf0jzad2JGy9w56EKiLyBt/4iV/8GmhxRv8cYrG
lHZ/2PU+JuwM6u67FklgfdsZMV04SI8z3Cj9UsoaoGcH7GKY+zezTKIucvg2w9kgQUhA4z8tjUzm
TPzMQNMi8kqHtCnnx4GjZuW6CtWX/BhP3RGB2b0n2V8Wsq875gvODICtrw+wOHnGnHxacoN2Tk/k
fWPCoRiMX9rK0BXSaH/Z7P1U6UwIn6SXuj1AzWfcn2NfV2moC2poIU815Whk9DT9gIaFImUD296+
K+bbS5Jz7TGycxEVMeCT68j907k8M8YIQ0zgV33+XHuL6eCEjdW9wvg3soEj50+l8jacBQgkgfgg
0ghFkpazsxaViUf/Dl7zPxHBBYBF5Vv9O2RHYVZzZmfoZLvMdy9hg/5qjV0HpePYqcX3Y3x32+ys
R1cxbFLAIiPfF6qjJsjhX4KC2lj99ZWBb7iQewLrcIjOIC/YLxerqmo6KI44NYL9FQT69ACUrlLC
sP2ZL6Yg86ch1AaYCDBq1jDtw80GSDo1k2b+8XuIOnHdFn8ZEXvDGjTmFmB8ZQzUjx3QpuuEu2fD
ZJxAIQIrmZqUuvKwUMS1KqmZIDHZuC1ZKmJet5OGWFsXVq3egvgxu33G56oaIz5YG3xC65o26Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x233A211ACF070C0"
last-modified: Thu, 12 Nov 2026 00:43:48 GMT
content-md5: LLkEDqnsCEFOpdJHwBa/jA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72b9a174-08a9-4db2-afab-9d0b2a757edd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-bbe7de0a-f552-a3fb-b0c6-e7231de43d29/foo/bar

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
AIcjzhWlq3VI2HfZ/X7TyQOKq0d+juh6OOUMuMggCw4cxkARZXXTZTJxc3p+IqUy8h0fkjj2qnKf
qZUvmfKtKM1pvTY9wWOOt0YUDBtt+xZA2cWqAXjVJRzOcrzgo8s/xEutFWVu9DG6kdvx4Z5WMa1/
778tAiZUk5cab0+mrRN61EfQwOaw0eSU8HCd40N9d0APYbQMEsIkWYHOU4XiE+PHdg1WhnHGzh7a
mBK2t69TnfgPl0xfbsGFrGdk4n1fstyM1W02J/DOSJKWMXqwbaHSeraN0nyWaAhM0doKYeuge+Y1
KuFCHXUHQE66yT1H1T7FkmfG0t9g9mxk6VYVw+en9bWTekO/kF1BhZIt3J/KBPubRc+D2qkH1TN1
3TMf8XxnE9OHs1r7BQIKhU1MMhrNmuVaen4YIxsMjKUPSrIqIZMVxsnLQ1GhoEDMeVRcuqIZp0JO
xXf+Tu+4eie167pP32S5N2tRAVeTudk9S6nGsNEC9qJv3FwbFnfZE8gp67SFfZrwooM2yKbrugud
wANG8clVsvUX3wMHniD0d+6Oas0luM0P1g5OzC78hCJQfVZzkyH+0zm+bZ6X6ARiQlC4XE8+eAg2
Nhu7BubHG1rgtyDKgOTMkJaUZkoueO0K7IneQyfSEQVNPVwGQ81T91JDtjDjmMJr68y5qhG9B74t
sRpc6NczDqUafEKIxk3JQG/468G8JlTHclhbGWf0jzad2JGy9w56EKiLyBt/4iV/8GmhxRv8cYrG
lHZ/2PU+JuwM6u67FklgfdsZMV04SI8z3Cj9UsoaoGcH7GKY+zezTKIucvg2w9kgQUhA4z8tjUzm
TPzMQNMi8kqHtCnnx4GjZuW6CtWX/BhP3RGB2b0n2V8Wsq875gvODICtrw+wOHnGnHxacoN2Tk/k
fWPCoRiMX9rK0BXSaH/Z7P1U6UwIn6SXuj1AzWfcn2NfV2moC2poIU815Whk9DT9gIaFImUD296+
K+bbS5Jz7TGycxEVMeCT68j907k8M8YIQ0zgV33+XHuL6eCEjdW9wvg3soEj50+l8jacBQgkgfgg
0ghFkpazsxaViUf/Dl7zPxHBBYBF5Vv9O2RHYVZzZmfoZLvMdy9hg/5qjV0HpePYqcX3Y3x32+ys
R1cxbFLAIiPfF6qjJsjhX4KC2lj99ZWBb7iQewLrcIjOIC/YLxerqmo6KI44NYL9FQT69ACUrlLC
sP2ZL6Yg86ch1AaYCDBq1jDtw80GSDo1k2b+8XuIOnHdFn8ZEXvDGjTmFmB8ZQzUjx3QpuuEu2fD
ZJxAIQIrmZqUuvKwUMS1KqmZIDHZuC1ZKmJet5OGWFsXVq3egvgxu33G56oaIz5YG3xC65o26Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F2A6B5EB5D8F60"
last-modified: Thu, 12 Nov 2026 00:43:48 GMT
content-md5: LLkEDqnsCEFOpdJHwBa/jA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2caa81b4-86c3-4d60-9583-3353b8580b72
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-bbe7de0a-f552-a3fb-b0c6-e7231de43d29/baz/foo

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
AIcjzhWlq3VI2HfZ/X7TyQOKq0d+juh6OOUMuMggCw4cxkARZXXTZTJxc3p+IqUy8h0fkjj2qnKf
qZUvmfKtKM1pvTY9wWOOt0YUDBtt+xZA2cWqAXjVJRzOcrzgo8s/xEutFWVu9DG6kdvx4Z5WMa1/
778tAiZUk5cab0+mrRN61EfQwOaw0eSU8HCd40N9d0APYbQMEsIkWYHOU4XiE+PHdg1WhnHGzh7a
mBK2t69TnfgPl0xfbsGFrGdk4n1fstyM1W02J/DOSJKWMXqwbaHSeraN0nyWaAhM0doKYeuge+Y1
KuFCHXUHQE66yT1H1T7FkmfG0t9g9mxk6VYVw+en9bWTekO/kF1BhZIt3J/KBPubRc+D2qkH1TN1
3TMf8XxnE9OHs1r7BQIKhU1MMhrNmuVaen4YIxsMjKUPSrIqIZMVxsnLQ1GhoEDMeVRcuqIZp0JO
xXf+Tu+4eie167pP32S5N2tRAVeTudk9S6nGsNEC9qJv3FwbFnfZE8gp67SFfZrwooM2yKbrugud
wANG8clVsvUX3wMHniD0d+6Oas0luM0P1g5OzC78hCJQfVZzkyH+0zm+bZ6X6ARiQlC4XE8+eAg2
Nhu7BubHG1rgtyDKgOTMkJaUZkoueO0K7IneQyfSEQVNPVwGQ81T91JDtjDjmMJr68y5qhG9B74t
sRpc6NczDqUafEKIxk3JQG/468G8JlTHclhbGWf0jzad2JGy9w56EKiLyBt/4iV/8GmhxRv8cYrG
lHZ/2PU+JuwM6u67FklgfdsZMV04SI8z3Cj9UsoaoGcH7GKY+zezTKIucvg2w9kgQUhA4z8tjUzm
TPzMQNMi8kqHtCnnx4GjZuW6CtWX/BhP3RGB2b0n2V8Wsq875gvODICtrw+wOHnGnHxacoN2Tk/k
fWPCoRiMX9rK0BXSaH/Z7P1U6UwIn6SXuj1AzWfcn2NfV2moC2poIU815Whk9DT9gIaFImUD296+
K+bbS5Jz7TGycxEVMeCT68j907k8M8YIQ0zgV33+XHuL6eCEjdW9wvg3soEj50+l8jacBQgkgfgg
0ghFkpazsxaViUf/Dl7zPxHBBYBF5Vv9O2RHYVZzZmfoZLvMdy9hg/5qjV0HpePYqcX3Y3x32+ys
R1cxbFLAIiPfF6qjJsjhX4KC2lj99ZWBb7iQewLrcIjOIC/YLxerqmo6KI44NYL9FQT69ACUrlLC
sP2ZL6Yg86ch1AaYCDBq1jDtw80GSDo1k2b+8XuIOnHdFn8ZEXvDGjTmFmB8ZQzUjx3QpuuEu2fD
ZJxAIQIrmZqUuvKwUMS1KqmZIDHZuC1ZKmJet5OGWFsXVq3egvgxu33G56oaIz5YG3xC65o26Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EBBD94FB0E4540"
last-modified: Thu, 12 Nov 2026 00:43:48 GMT
content-md5: LLkEDqnsCEFOpdJHwBa/jA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 34847284-1bbe-45dd-8d58-6e337295e526
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-bbe7de0a-f552-a3fb-b0c6-e7231de43d29/baz/foo/bar

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
AIcjzhWlq3VI2HfZ/X7TyQOKq0d+juh6OOUMuMggCw4cxkARZXXTZTJxc3p+IqUy8h0fkjj2qnKf
qZUvmfKtKM1pvTY9wWOOt0YUDBtt+xZA2cWqAXjVJRzOcrzgo8s/xEutFWVu9DG6kdvx4Z5WMa1/
778tAiZUk5cab0+mrRN61EfQwOaw0eSU8HCd40N9d0APYbQMEsIkWYHOU4XiE+PHdg1WhnHGzh7a
mBK2t69TnfgPl0xfbsGFrGdk4n1fstyM1W02J/DOSJKWMXqwbaHSeraN0nyWaAhM0doKYeuge+Y1
KuFCHXUHQE66yT1H1T7FkmfG0t9g9mxk6VYVw+en9bWTekO/kF1BhZIt3J/KBPubRc+D2qkH1TN1
3TMf8XxnE9OHs1r7BQIKhU1MMhrNmuVaen4YIxsMjKUPSrIqIZMVxsnLQ1GhoEDMeVRcuqIZp0JO
xXf+Tu+4eie167pP32S5N2tRAVeTudk9S6nGsNEC9qJv3FwbFnfZE8gp67SFfZrwooM2yKbrugud
wANG8clVsvUX3wMHniD0d+6Oas0luM0P1g5OzC78hCJQfVZzkyH+0zm+bZ6X6ARiQlC4XE8+eAg2
Nhu7BubHG1rgtyDKgOTMkJaUZkoueO0K7IneQyfSEQVNPVwGQ81T91JDtjDjmMJr68y5qhG9B74t
sRpc6NczDqUafEKIxk3JQG/468G8JlTHclhbGWf0jzad2JGy9w56EKiLyBt/4iV/8GmhxRv8cYrG
lHZ/2PU+JuwM6u67FklgfdsZMV04SI8z3Cj9UsoaoGcH7GKY+zezTKIucvg2w9kgQUhA4z8tjUzm
TPzMQNMi8kqHtCnnx4GjZuW6CtWX/BhP3RGB2b0n2V8Wsq875gvODICtrw+wOHnGnHxacoN2Tk/k
fWPCoRiMX9rK0BXSaH/Z7P1U6UwIn6SXuj1AzWfcn2NfV2moC2poIU815Whk9DT9gIaFImUD296+
K+bbS5Jz7TGycxEVMeCT68j907k8M8YIQ0zgV33+XHuL6eCEjdW9wvg3soEj50+l8jacBQgkgfgg
0ghFkpazsxaViUf/Dl7zPxHBBYBF5Vv9O2RHYVZzZmfoZLvMdy9hg/5qjV0HpePYqcX3Y3x32+ys
R1cxbFLAIiPfF6qjJsjhX4KC2lj99ZWBb7iQewLrcIjOIC/YLxerqmo6KI44NYL9FQT69ACUrlLC
sP2ZL6Yg86ch1AaYCDBq1jDtw80GSDo1k2b+8XuIOnHdFn8ZEXvDGjTmFmB8ZQzUjx3QpuuEu2fD
ZJxAIQIrmZqUuvKwUMS1KqmZIDHZuC1ZKmJet5OGWFsXVq3egvgxu33G56oaIz5YG3xC65o26Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2592014EA7D5060"
last-modified: Thu, 12 Nov 2026 00:43:48 GMT
content-md5: LLkEDqnsCEFOpdJHwBa/jA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9d32f080-14e2-49ef-acf0-c8c21e55ed5f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-bbe7de0a-f552-a3fb-b0c6-e7231de43d29/baz/bar/foo

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
AIcjzhWlq3VI2HfZ/X7TyQOKq0d+juh6OOUMuMggCw4cxkARZXXTZTJxc3p+IqUy8h0fkjj2qnKf
qZUvmfKtKM1pvTY9wWOOt0YUDBtt+xZA2cWqAXjVJRzOcrzgo8s/xEutFWVu9DG6kdvx4Z5WMa1/
778tAiZUk5cab0+mrRN61EfQwOaw0eSU8HCd40N9d0APYbQMEsIkWYHOU4XiE+PHdg1WhnHGzh7a
mBK2t69TnfgPl0xfbsGFrGdk4n1fstyM1W02J/DOSJKWMXqwbaHSeraN0nyWaAhM0doKYeuge+Y1
KuFCHXUHQE66yT1H1T7FkmfG0t9g9mxk6VYVw+en9bWTekO/kF1BhZIt3J/KBPubRc+D2qkH1TN1
3TMf8XxnE9OHs1r7BQIKhU1MMhrNmuVaen4YIxsMjKUPSrIqIZMVxsnLQ1GhoEDMeVRcuqIZp0JO
xXf+Tu+4eie167pP32S5N2tRAVeTudk9S6nGsNEC9qJv3FwbFnfZE8gp67SFfZrwooM2yKbrugud
wANG8clVsvUX3wMHniD0d+6Oas0luM0P1g5OzC78hCJQfVZzkyH+0zm+bZ6X6ARiQlC4XE8+eAg2
Nhu7BubHG1rgtyDKgOTMkJaUZkoueO0K7IneQyfSEQVNPVwGQ81T91JDtjDjmMJr68y5qhG9B74t
sRpc6NczDqUafEKIxk3JQG/468G8JlTHclhbGWf0jzad2JGy9w56EKiLyBt/4iV/8GmhxRv8cYrG
lHZ/2PU+JuwM6u67FklgfdsZMV04SI8z3Cj9UsoaoGcH7GKY+zezTKIucvg2w9kgQUhA4z8tjUzm
TPzMQNMi8kqHtCnnx4GjZuW6CtWX/BhP3RGB2b0n2V8Wsq875gvODICtrw+wOHnGnHxacoN2Tk/k
fWPCoRiMX9rK0BXSaH/Z7P1U6UwIn6SXuj1AzWfcn2NfV2moC2poIU815Whk9DT9gIaFImUD296+
K+bbS5Jz7TGycxEVMeCT68j907k8M8YIQ0zgV33+XHuL6eCEjdW9wvg3soEj50+l8jacBQgkgfgg
0ghFkpazsxaViUf/Dl7zPxHBBYBF5Vv9O2RHYVZzZmfoZLvMdy9hg/5qjV0HpePYqcX3Y3x32+ys
R1cxbFLAIiPfF6qjJsjhX4KC2lj99ZWBb7iQewLrcIjOIC/YLxerqmo6KI44NYL9FQT69ACUrlLC
sP2ZL6Yg86ch1AaYCDBq1jDtw80GSDo1k2b+8XuIOnHdFn8ZEXvDGjTmFmB8ZQzUjx3QpuuEu2fD
ZJxAIQIrmZqUuvKwUMS1KqmZIDHZuC1ZKmJet5OGWFsXVq3egvgxu33G56oaIz5YG3xC65o26Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x230AE6F894DCC00"
last-modified: Thu, 12 Nov 2026 00:43:48 GMT
content-md5: LLkEDqnsCEFOpdJHwBa/jA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 074f9eb0-913b-46ff-a2d6-512ca47d50c3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-bbe7de0a-f552-a3fb-b0c6-e7231de43d29/foo/foo?comp=metadata

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
etag: "0x23E7BCC02FA9880"
last-modified: Thu, 12 Nov 2026 00:43:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b5565317-9e17-4e50-a5b8-8a4a6865ff28
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-bbe7de0a-f552-a3fb-b0c6-e7231de43d29?restype=container&comp=list&startFrom=foo

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
x-ms-request-id: cd3537be-468c-4631-a400-2520ce31bec0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:48 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-bbe7de0a-f552-a3fb-b0c6-e7231de43d29"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:48 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:48 GMT</Last-Modified><Etag>0x1C7EE6D5CEC77E0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>LLkEDqnsCEFOpdJHwBa/jA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:48 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:48 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:48 GMT</Last-Modified><Etag>0x1F2A6B5EB5D8F60</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>LLkEDqnsCEFOpdJHwBa/jA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:48 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:48 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:48 GMT</Last-Modified><Etag>0x23E7BCC02FA9880</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>LLkEDqnsCEFOpdJHwBa/jA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:48 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-bbe7de0a-f552-a3fb-b0c6-e7231de43d29?restype=container

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
x-ms-request-id: d68e0bae-cdca-4631-b57c-4199830435bb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

