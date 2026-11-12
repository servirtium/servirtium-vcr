## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ef1d4f00-e6f9-ad07-bc41-77b536fad144?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_StartFrom
now: 2026-11-12T00:43:53.2297416+00:00

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
etag: "0x1F8E479C6D0A2C0"
last-modified: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4356d262-0cf1-43e2-8b57-dacc859381fc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ef1d4f00-e6f9-ad07-bc41-77b536fad144/foo

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
sY0aQjECGW3L6TmWAjfCy/V3oo5zbpAv0Wa7eImf4jleZSIwePYd/jawJA+scKuFfqvAv1dC0UL9
6nHKRqDjLAf/N50VklL+WaNXwkqAgmC7Nvnd3iLiG5TfM42FUriVzPcHrTgOcOxYwWa06w74fGgQ
Dg+nBk3lHRwINV7FeAbrwfVSeNUnrcYMhBy7LjCG57cldESo7sapIpAcBTqNk0hgyCoYpQOT6GFJ
moEwKe/rgU6noAPCQtMvqFZEC6iLf/HTW2UFbkGzkoziX1NEePihMIPr5fNFnYZX6PytTt25vRuQ
Xc2K5RMN9A533+N/6zBdo9okn5n+jr7eroVEBkOuKaE4tBsqFkpw3vDkzb6j1/3MT6oDlB2Bkc4P
qzaNyO7KybVBRzYUM4yPs8GoGcEAO9eIeLaZq5SEtiJNGmsT4xYCGgQIYY/Gtxwdc+Fc2HgMD29f
BU83MR0gvZEUxxgge9Cqpv+999lHwcCaezezJ92pQAv8tN7Gyunm56T+sfAE/PgRsTJ5TxeVF0OO
nbXmbZWzaoYMJMfy49sV1hA0SBDPln4+onarMPDzZpyaNy0zAHoPS0dq99gxHs1WY3kHYM4zvgc3
p8oeBzqVGb4qV6uu4taVJf3IZZ6mDYOoVM136wXNZ3gl+1iv8UMM1N0ZB8ciqICicjvRallokJpH
drNtHS24XO8yiOd95TO5u5DBjAa8hqxM1HnJ/P0fvWq+aHuQn7awYarX7x+ZJYwIGK7IpwSUiu8G
IEm072DxE8p8v324KBzZECtb5JeMsq/sweNPVxZmKt2LiX9t/HJK5dxUHWUPT++R7pbYOKZYem2Z
xy18oru0FZWfLZ6dbBS5EP66N5VJ3XL0vWh/jvE3Mg8R1DREzUMgoAjQcCFQ9IKBHiennUPYT+q7
iORTNIekaPqPi5jfdUO6mpaNeW1Qo8jm/m/Jj5TMOIRKiUVfzGuAKwgnwWnqoank7AKsS9V8auQb
bDYX2thlw1MTlev9W80rDE5kKeJf/FzF5KKSIOyuzR5hQ2A1aVAvwf0V1gy+55E0gD+HF0ECvHDa
UfY206NmZMfNnBht9qL9NWfkSiZPB/wRXZ+tJrXcXobwWhda+O1arnFF8Et4x4qciuLZHXJKi0n5
JXYDuT4R8D2SfZuLojx6iZu0CRaxmZUUEJzTA0AUpc/NYdN2VvUzNAAO5UnvEeelX5TXlYEzR4vg
76ihPe38fdfMvUFpAzKlgdUWo7NLJf+0LqSsPRBNmhlHlmdNkfYTEWdyI1OmPFthMRSsHKTYlMqo
7A9JT0DHfiInIW3LWO/eApFL2QGrDvFISwv7oX51bwGdpKXmysEmq6QwfhvultklzRkSjLvI/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F9F0213D779420"
last-modified: Thu, 12 Nov 2026 00:43:53 GMT
content-md5: WWla7RwnFfzva9c3izGPQQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f84af86f-f443-4d98-8764-b1ceff849afc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ef1d4f00-e6f9-ad07-bc41-77b536fad144/bar

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
sY0aQjECGW3L6TmWAjfCy/V3oo5zbpAv0Wa7eImf4jleZSIwePYd/jawJA+scKuFfqvAv1dC0UL9
6nHKRqDjLAf/N50VklL+WaNXwkqAgmC7Nvnd3iLiG5TfM42FUriVzPcHrTgOcOxYwWa06w74fGgQ
Dg+nBk3lHRwINV7FeAbrwfVSeNUnrcYMhBy7LjCG57cldESo7sapIpAcBTqNk0hgyCoYpQOT6GFJ
moEwKe/rgU6noAPCQtMvqFZEC6iLf/HTW2UFbkGzkoziX1NEePihMIPr5fNFnYZX6PytTt25vRuQ
Xc2K5RMN9A533+N/6zBdo9okn5n+jr7eroVEBkOuKaE4tBsqFkpw3vDkzb6j1/3MT6oDlB2Bkc4P
qzaNyO7KybVBRzYUM4yPs8GoGcEAO9eIeLaZq5SEtiJNGmsT4xYCGgQIYY/Gtxwdc+Fc2HgMD29f
BU83MR0gvZEUxxgge9Cqpv+999lHwcCaezezJ92pQAv8tN7Gyunm56T+sfAE/PgRsTJ5TxeVF0OO
nbXmbZWzaoYMJMfy49sV1hA0SBDPln4+onarMPDzZpyaNy0zAHoPS0dq99gxHs1WY3kHYM4zvgc3
p8oeBzqVGb4qV6uu4taVJf3IZZ6mDYOoVM136wXNZ3gl+1iv8UMM1N0ZB8ciqICicjvRallokJpH
drNtHS24XO8yiOd95TO5u5DBjAa8hqxM1HnJ/P0fvWq+aHuQn7awYarX7x+ZJYwIGK7IpwSUiu8G
IEm072DxE8p8v324KBzZECtb5JeMsq/sweNPVxZmKt2LiX9t/HJK5dxUHWUPT++R7pbYOKZYem2Z
xy18oru0FZWfLZ6dbBS5EP66N5VJ3XL0vWh/jvE3Mg8R1DREzUMgoAjQcCFQ9IKBHiennUPYT+q7
iORTNIekaPqPi5jfdUO6mpaNeW1Qo8jm/m/Jj5TMOIRKiUVfzGuAKwgnwWnqoank7AKsS9V8auQb
bDYX2thlw1MTlev9W80rDE5kKeJf/FzF5KKSIOyuzR5hQ2A1aVAvwf0V1gy+55E0gD+HF0ECvHDa
UfY206NmZMfNnBht9qL9NWfkSiZPB/wRXZ+tJrXcXobwWhda+O1arnFF8Et4x4qciuLZHXJKi0n5
JXYDuT4R8D2SfZuLojx6iZu0CRaxmZUUEJzTA0AUpc/NYdN2VvUzNAAO5UnvEeelX5TXlYEzR4vg
76ihPe38fdfMvUFpAzKlgdUWo7NLJf+0LqSsPRBNmhlHlmdNkfYTEWdyI1OmPFthMRSsHKTYlMqo
7A9JT0DHfiInIW3LWO/eApFL2QGrDvFISwv7oX51bwGdpKXmysEmq6QwfhvultklzRkSjLvI/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E4CAA9507BD0A0"
last-modified: Thu, 12 Nov 2026 00:43:53 GMT
content-md5: WWla7RwnFfzva9c3izGPQQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 47e81a00-ea22-4c6d-978f-7e3ea4273cb5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-ef1d4f00-e6f9-ad07-bc41-77b536fad144/baz

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
sY0aQjECGW3L6TmWAjfCy/V3oo5zbpAv0Wa7eImf4jleZSIwePYd/jawJA+scKuFfqvAv1dC0UL9
6nHKRqDjLAf/N50VklL+WaNXwkqAgmC7Nvnd3iLiG5TfM42FUriVzPcHrTgOcOxYwWa06w74fGgQ
Dg+nBk3lHRwINV7FeAbrwfVSeNUnrcYMhBy7LjCG57cldESo7sapIpAcBTqNk0hgyCoYpQOT6GFJ
moEwKe/rgU6noAPCQtMvqFZEC6iLf/HTW2UFbkGzkoziX1NEePihMIPr5fNFnYZX6PytTt25vRuQ
Xc2K5RMN9A533+N/6zBdo9okn5n+jr7eroVEBkOuKaE4tBsqFkpw3vDkzb6j1/3MT6oDlB2Bkc4P
qzaNyO7KybVBRzYUM4yPs8GoGcEAO9eIeLaZq5SEtiJNGmsT4xYCGgQIYY/Gtxwdc+Fc2HgMD29f
BU83MR0gvZEUxxgge9Cqpv+999lHwcCaezezJ92pQAv8tN7Gyunm56T+sfAE/PgRsTJ5TxeVF0OO
nbXmbZWzaoYMJMfy49sV1hA0SBDPln4+onarMPDzZpyaNy0zAHoPS0dq99gxHs1WY3kHYM4zvgc3
p8oeBzqVGb4qV6uu4taVJf3IZZ6mDYOoVM136wXNZ3gl+1iv8UMM1N0ZB8ciqICicjvRallokJpH
drNtHS24XO8yiOd95TO5u5DBjAa8hqxM1HnJ/P0fvWq+aHuQn7awYarX7x+ZJYwIGK7IpwSUiu8G
IEm072DxE8p8v324KBzZECtb5JeMsq/sweNPVxZmKt2LiX9t/HJK5dxUHWUPT++R7pbYOKZYem2Z
xy18oru0FZWfLZ6dbBS5EP66N5VJ3XL0vWh/jvE3Mg8R1DREzUMgoAjQcCFQ9IKBHiennUPYT+q7
iORTNIekaPqPi5jfdUO6mpaNeW1Qo8jm/m/Jj5TMOIRKiUVfzGuAKwgnwWnqoank7AKsS9V8auQb
bDYX2thlw1MTlev9W80rDE5kKeJf/FzF5KKSIOyuzR5hQ2A1aVAvwf0V1gy+55E0gD+HF0ECvHDa
UfY206NmZMfNnBht9qL9NWfkSiZPB/wRXZ+tJrXcXobwWhda+O1arnFF8Et4x4qciuLZHXJKi0n5
JXYDuT4R8D2SfZuLojx6iZu0CRaxmZUUEJzTA0AUpc/NYdN2VvUzNAAO5UnvEeelX5TXlYEzR4vg
76ihPe38fdfMvUFpAzKlgdUWo7NLJf+0LqSsPRBNmhlHlmdNkfYTEWdyI1OmPFthMRSsHKTYlMqo
7A9JT0DHfiInIW3LWO/eApFL2QGrDvFISwv7oX51bwGdpKXmysEmq6QwfhvultklzRkSjLvI/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21CB1FF98CE3000"
last-modified: Thu, 12 Nov 2026 00:43:53 GMT
content-md5: WWla7RwnFfzva9c3izGPQQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 12c7f0a4-85d3-44ab-9e91-33b7ef31f9c8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-ef1d4f00-e6f9-ad07-bc41-77b536fad144/foo/foo

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
sY0aQjECGW3L6TmWAjfCy/V3oo5zbpAv0Wa7eImf4jleZSIwePYd/jawJA+scKuFfqvAv1dC0UL9
6nHKRqDjLAf/N50VklL+WaNXwkqAgmC7Nvnd3iLiG5TfM42FUriVzPcHrTgOcOxYwWa06w74fGgQ
Dg+nBk3lHRwINV7FeAbrwfVSeNUnrcYMhBy7LjCG57cldESo7sapIpAcBTqNk0hgyCoYpQOT6GFJ
moEwKe/rgU6noAPCQtMvqFZEC6iLf/HTW2UFbkGzkoziX1NEePihMIPr5fNFnYZX6PytTt25vRuQ
Xc2K5RMN9A533+N/6zBdo9okn5n+jr7eroVEBkOuKaE4tBsqFkpw3vDkzb6j1/3MT6oDlB2Bkc4P
qzaNyO7KybVBRzYUM4yPs8GoGcEAO9eIeLaZq5SEtiJNGmsT4xYCGgQIYY/Gtxwdc+Fc2HgMD29f
BU83MR0gvZEUxxgge9Cqpv+999lHwcCaezezJ92pQAv8tN7Gyunm56T+sfAE/PgRsTJ5TxeVF0OO
nbXmbZWzaoYMJMfy49sV1hA0SBDPln4+onarMPDzZpyaNy0zAHoPS0dq99gxHs1WY3kHYM4zvgc3
p8oeBzqVGb4qV6uu4taVJf3IZZ6mDYOoVM136wXNZ3gl+1iv8UMM1N0ZB8ciqICicjvRallokJpH
drNtHS24XO8yiOd95TO5u5DBjAa8hqxM1HnJ/P0fvWq+aHuQn7awYarX7x+ZJYwIGK7IpwSUiu8G
IEm072DxE8p8v324KBzZECtb5JeMsq/sweNPVxZmKt2LiX9t/HJK5dxUHWUPT++R7pbYOKZYem2Z
xy18oru0FZWfLZ6dbBS5EP66N5VJ3XL0vWh/jvE3Mg8R1DREzUMgoAjQcCFQ9IKBHiennUPYT+q7
iORTNIekaPqPi5jfdUO6mpaNeW1Qo8jm/m/Jj5TMOIRKiUVfzGuAKwgnwWnqoank7AKsS9V8auQb
bDYX2thlw1MTlev9W80rDE5kKeJf/FzF5KKSIOyuzR5hQ2A1aVAvwf0V1gy+55E0gD+HF0ECvHDa
UfY206NmZMfNnBht9qL9NWfkSiZPB/wRXZ+tJrXcXobwWhda+O1arnFF8Et4x4qciuLZHXJKi0n5
JXYDuT4R8D2SfZuLojx6iZu0CRaxmZUUEJzTA0AUpc/NYdN2VvUzNAAO5UnvEeelX5TXlYEzR4vg
76ihPe38fdfMvUFpAzKlgdUWo7NLJf+0LqSsPRBNmhlHlmdNkfYTEWdyI1OmPFthMRSsHKTYlMqo
7A9JT0DHfiInIW3LWO/eApFL2QGrDvFISwv7oX51bwGdpKXmysEmq6QwfhvultklzRkSjLvI/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C9F226C0F64FA0"
last-modified: Thu, 12 Nov 2026 00:43:53 GMT
content-md5: WWla7RwnFfzva9c3izGPQQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aa80afa9-3ec8-49ae-ae61-9a6cb8ead900
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-ef1d4f00-e6f9-ad07-bc41-77b536fad144/foo/bar

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
sY0aQjECGW3L6TmWAjfCy/V3oo5zbpAv0Wa7eImf4jleZSIwePYd/jawJA+scKuFfqvAv1dC0UL9
6nHKRqDjLAf/N50VklL+WaNXwkqAgmC7Nvnd3iLiG5TfM42FUriVzPcHrTgOcOxYwWa06w74fGgQ
Dg+nBk3lHRwINV7FeAbrwfVSeNUnrcYMhBy7LjCG57cldESo7sapIpAcBTqNk0hgyCoYpQOT6GFJ
moEwKe/rgU6noAPCQtMvqFZEC6iLf/HTW2UFbkGzkoziX1NEePihMIPr5fNFnYZX6PytTt25vRuQ
Xc2K5RMN9A533+N/6zBdo9okn5n+jr7eroVEBkOuKaE4tBsqFkpw3vDkzb6j1/3MT6oDlB2Bkc4P
qzaNyO7KybVBRzYUM4yPs8GoGcEAO9eIeLaZq5SEtiJNGmsT4xYCGgQIYY/Gtxwdc+Fc2HgMD29f
BU83MR0gvZEUxxgge9Cqpv+999lHwcCaezezJ92pQAv8tN7Gyunm56T+sfAE/PgRsTJ5TxeVF0OO
nbXmbZWzaoYMJMfy49sV1hA0SBDPln4+onarMPDzZpyaNy0zAHoPS0dq99gxHs1WY3kHYM4zvgc3
p8oeBzqVGb4qV6uu4taVJf3IZZ6mDYOoVM136wXNZ3gl+1iv8UMM1N0ZB8ciqICicjvRallokJpH
drNtHS24XO8yiOd95TO5u5DBjAa8hqxM1HnJ/P0fvWq+aHuQn7awYarX7x+ZJYwIGK7IpwSUiu8G
IEm072DxE8p8v324KBzZECtb5JeMsq/sweNPVxZmKt2LiX9t/HJK5dxUHWUPT++R7pbYOKZYem2Z
xy18oru0FZWfLZ6dbBS5EP66N5VJ3XL0vWh/jvE3Mg8R1DREzUMgoAjQcCFQ9IKBHiennUPYT+q7
iORTNIekaPqPi5jfdUO6mpaNeW1Qo8jm/m/Jj5TMOIRKiUVfzGuAKwgnwWnqoank7AKsS9V8auQb
bDYX2thlw1MTlev9W80rDE5kKeJf/FzF5KKSIOyuzR5hQ2A1aVAvwf0V1gy+55E0gD+HF0ECvHDa
UfY206NmZMfNnBht9qL9NWfkSiZPB/wRXZ+tJrXcXobwWhda+O1arnFF8Et4x4qciuLZHXJKi0n5
JXYDuT4R8D2SfZuLojx6iZu0CRaxmZUUEJzTA0AUpc/NYdN2VvUzNAAO5UnvEeelX5TXlYEzR4vg
76ihPe38fdfMvUFpAzKlgdUWo7NLJf+0LqSsPRBNmhlHlmdNkfYTEWdyI1OmPFthMRSsHKTYlMqo
7A9JT0DHfiInIW3LWO/eApFL2QGrDvFISwv7oX51bwGdpKXmysEmq6QwfhvultklzRkSjLvI/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E961BA791B99A0"
last-modified: Thu, 12 Nov 2026 00:43:53 GMT
content-md5: WWla7RwnFfzva9c3izGPQQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a6aaa750-d9e0-4413-99d4-2a4dab3c50d3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-ef1d4f00-e6f9-ad07-bc41-77b536fad144/baz/foo

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
sY0aQjECGW3L6TmWAjfCy/V3oo5zbpAv0Wa7eImf4jleZSIwePYd/jawJA+scKuFfqvAv1dC0UL9
6nHKRqDjLAf/N50VklL+WaNXwkqAgmC7Nvnd3iLiG5TfM42FUriVzPcHrTgOcOxYwWa06w74fGgQ
Dg+nBk3lHRwINV7FeAbrwfVSeNUnrcYMhBy7LjCG57cldESo7sapIpAcBTqNk0hgyCoYpQOT6GFJ
moEwKe/rgU6noAPCQtMvqFZEC6iLf/HTW2UFbkGzkoziX1NEePihMIPr5fNFnYZX6PytTt25vRuQ
Xc2K5RMN9A533+N/6zBdo9okn5n+jr7eroVEBkOuKaE4tBsqFkpw3vDkzb6j1/3MT6oDlB2Bkc4P
qzaNyO7KybVBRzYUM4yPs8GoGcEAO9eIeLaZq5SEtiJNGmsT4xYCGgQIYY/Gtxwdc+Fc2HgMD29f
BU83MR0gvZEUxxgge9Cqpv+999lHwcCaezezJ92pQAv8tN7Gyunm56T+sfAE/PgRsTJ5TxeVF0OO
nbXmbZWzaoYMJMfy49sV1hA0SBDPln4+onarMPDzZpyaNy0zAHoPS0dq99gxHs1WY3kHYM4zvgc3
p8oeBzqVGb4qV6uu4taVJf3IZZ6mDYOoVM136wXNZ3gl+1iv8UMM1N0ZB8ciqICicjvRallokJpH
drNtHS24XO8yiOd95TO5u5DBjAa8hqxM1HnJ/P0fvWq+aHuQn7awYarX7x+ZJYwIGK7IpwSUiu8G
IEm072DxE8p8v324KBzZECtb5JeMsq/sweNPVxZmKt2LiX9t/HJK5dxUHWUPT++R7pbYOKZYem2Z
xy18oru0FZWfLZ6dbBS5EP66N5VJ3XL0vWh/jvE3Mg8R1DREzUMgoAjQcCFQ9IKBHiennUPYT+q7
iORTNIekaPqPi5jfdUO6mpaNeW1Qo8jm/m/Jj5TMOIRKiUVfzGuAKwgnwWnqoank7AKsS9V8auQb
bDYX2thlw1MTlev9W80rDE5kKeJf/FzF5KKSIOyuzR5hQ2A1aVAvwf0V1gy+55E0gD+HF0ECvHDa
UfY206NmZMfNnBht9qL9NWfkSiZPB/wRXZ+tJrXcXobwWhda+O1arnFF8Et4x4qciuLZHXJKi0n5
JXYDuT4R8D2SfZuLojx6iZu0CRaxmZUUEJzTA0AUpc/NYdN2VvUzNAAO5UnvEeelX5TXlYEzR4vg
76ihPe38fdfMvUFpAzKlgdUWo7NLJf+0LqSsPRBNmhlHlmdNkfYTEWdyI1OmPFthMRSsHKTYlMqo
7A9JT0DHfiInIW3LWO/eApFL2QGrDvFISwv7oX51bwGdpKXmysEmq6QwfhvultklzRkSjLvI/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24E122109859360"
last-modified: Thu, 12 Nov 2026 00:43:53 GMT
content-md5: WWla7RwnFfzva9c3izGPQQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9b62ee5c-882b-424c-9481-ed5b42e7c163
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-ef1d4f00-e6f9-ad07-bc41-77b536fad144/baz/foo/bar

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
sY0aQjECGW3L6TmWAjfCy/V3oo5zbpAv0Wa7eImf4jleZSIwePYd/jawJA+scKuFfqvAv1dC0UL9
6nHKRqDjLAf/N50VklL+WaNXwkqAgmC7Nvnd3iLiG5TfM42FUriVzPcHrTgOcOxYwWa06w74fGgQ
Dg+nBk3lHRwINV7FeAbrwfVSeNUnrcYMhBy7LjCG57cldESo7sapIpAcBTqNk0hgyCoYpQOT6GFJ
moEwKe/rgU6noAPCQtMvqFZEC6iLf/HTW2UFbkGzkoziX1NEePihMIPr5fNFnYZX6PytTt25vRuQ
Xc2K5RMN9A533+N/6zBdo9okn5n+jr7eroVEBkOuKaE4tBsqFkpw3vDkzb6j1/3MT6oDlB2Bkc4P
qzaNyO7KybVBRzYUM4yPs8GoGcEAO9eIeLaZq5SEtiJNGmsT4xYCGgQIYY/Gtxwdc+Fc2HgMD29f
BU83MR0gvZEUxxgge9Cqpv+999lHwcCaezezJ92pQAv8tN7Gyunm56T+sfAE/PgRsTJ5TxeVF0OO
nbXmbZWzaoYMJMfy49sV1hA0SBDPln4+onarMPDzZpyaNy0zAHoPS0dq99gxHs1WY3kHYM4zvgc3
p8oeBzqVGb4qV6uu4taVJf3IZZ6mDYOoVM136wXNZ3gl+1iv8UMM1N0ZB8ciqICicjvRallokJpH
drNtHS24XO8yiOd95TO5u5DBjAa8hqxM1HnJ/P0fvWq+aHuQn7awYarX7x+ZJYwIGK7IpwSUiu8G
IEm072DxE8p8v324KBzZECtb5JeMsq/sweNPVxZmKt2LiX9t/HJK5dxUHWUPT++R7pbYOKZYem2Z
xy18oru0FZWfLZ6dbBS5EP66N5VJ3XL0vWh/jvE3Mg8R1DREzUMgoAjQcCFQ9IKBHiennUPYT+q7
iORTNIekaPqPi5jfdUO6mpaNeW1Qo8jm/m/Jj5TMOIRKiUVfzGuAKwgnwWnqoank7AKsS9V8auQb
bDYX2thlw1MTlev9W80rDE5kKeJf/FzF5KKSIOyuzR5hQ2A1aVAvwf0V1gy+55E0gD+HF0ECvHDa
UfY206NmZMfNnBht9qL9NWfkSiZPB/wRXZ+tJrXcXobwWhda+O1arnFF8Et4x4qciuLZHXJKi0n5
JXYDuT4R8D2SfZuLojx6iZu0CRaxmZUUEJzTA0AUpc/NYdN2VvUzNAAO5UnvEeelX5TXlYEzR4vg
76ihPe38fdfMvUFpAzKlgdUWo7NLJf+0LqSsPRBNmhlHlmdNkfYTEWdyI1OmPFthMRSsHKTYlMqo
7A9JT0DHfiInIW3LWO/eApFL2QGrDvFISwv7oX51bwGdpKXmysEmq6QwfhvultklzRkSjLvI/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x257319322E099A0"
last-modified: Thu, 12 Nov 2026 00:43:53 GMT
content-md5: WWla7RwnFfzva9c3izGPQQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ac66f820-8e0b-4eaa-808a-620f42d451b9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-ef1d4f00-e6f9-ad07-bc41-77b536fad144/baz/bar/foo

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
sY0aQjECGW3L6TmWAjfCy/V3oo5zbpAv0Wa7eImf4jleZSIwePYd/jawJA+scKuFfqvAv1dC0UL9
6nHKRqDjLAf/N50VklL+WaNXwkqAgmC7Nvnd3iLiG5TfM42FUriVzPcHrTgOcOxYwWa06w74fGgQ
Dg+nBk3lHRwINV7FeAbrwfVSeNUnrcYMhBy7LjCG57cldESo7sapIpAcBTqNk0hgyCoYpQOT6GFJ
moEwKe/rgU6noAPCQtMvqFZEC6iLf/HTW2UFbkGzkoziX1NEePihMIPr5fNFnYZX6PytTt25vRuQ
Xc2K5RMN9A533+N/6zBdo9okn5n+jr7eroVEBkOuKaE4tBsqFkpw3vDkzb6j1/3MT6oDlB2Bkc4P
qzaNyO7KybVBRzYUM4yPs8GoGcEAO9eIeLaZq5SEtiJNGmsT4xYCGgQIYY/Gtxwdc+Fc2HgMD29f
BU83MR0gvZEUxxgge9Cqpv+999lHwcCaezezJ92pQAv8tN7Gyunm56T+sfAE/PgRsTJ5TxeVF0OO
nbXmbZWzaoYMJMfy49sV1hA0SBDPln4+onarMPDzZpyaNy0zAHoPS0dq99gxHs1WY3kHYM4zvgc3
p8oeBzqVGb4qV6uu4taVJf3IZZ6mDYOoVM136wXNZ3gl+1iv8UMM1N0ZB8ciqICicjvRallokJpH
drNtHS24XO8yiOd95TO5u5DBjAa8hqxM1HnJ/P0fvWq+aHuQn7awYarX7x+ZJYwIGK7IpwSUiu8G
IEm072DxE8p8v324KBzZECtb5JeMsq/sweNPVxZmKt2LiX9t/HJK5dxUHWUPT++R7pbYOKZYem2Z
xy18oru0FZWfLZ6dbBS5EP66N5VJ3XL0vWh/jvE3Mg8R1DREzUMgoAjQcCFQ9IKBHiennUPYT+q7
iORTNIekaPqPi5jfdUO6mpaNeW1Qo8jm/m/Jj5TMOIRKiUVfzGuAKwgnwWnqoank7AKsS9V8auQb
bDYX2thlw1MTlev9W80rDE5kKeJf/FzF5KKSIOyuzR5hQ2A1aVAvwf0V1gy+55E0gD+HF0ECvHDa
UfY206NmZMfNnBht9qL9NWfkSiZPB/wRXZ+tJrXcXobwWhda+O1arnFF8Et4x4qciuLZHXJKi0n5
JXYDuT4R8D2SfZuLojx6iZu0CRaxmZUUEJzTA0AUpc/NYdN2VvUzNAAO5UnvEeelX5TXlYEzR4vg
76ihPe38fdfMvUFpAzKlgdUWo7NLJf+0LqSsPRBNmhlHlmdNkfYTEWdyI1OmPFthMRSsHKTYlMqo
7A9JT0DHfiInIW3LWO/eApFL2QGrDvFISwv7oX51bwGdpKXmysEmq6QwfhvultklzRkSjLvI/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EF8A46D3AD61A0"
last-modified: Thu, 12 Nov 2026 00:43:53 GMT
content-md5: WWla7RwnFfzva9c3izGPQQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0868ddcb-74a7-4320-bccd-4a919accb1da
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-ef1d4f00-e6f9-ad07-bc41-77b536fad144/foo/foo?comp=metadata

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
etag: "0x232CDE7925AA5E0"
last-modified: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f0b6ae0-0143-4b42-a09e-0a36b4ed6961
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-ef1d4f00-e6f9-ad07-bc41-77b536fad144?restype=container&comp=list&startFrom=foo

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
x-ms-request-id: 483ee377-86a3-4559-97c9-b2f3d260ecaa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-ef1d4f00-e6f9-ad07-bc41-77b536fad144"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:53 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:53 GMT</Last-Modified><Etag>0x1F9F0213D779420</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>WWla7RwnFfzva9c3izGPQQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:53 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:53 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:53 GMT</Last-Modified><Etag>0x1E961BA791B99A0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>WWla7RwnFfzva9c3izGPQQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:53 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:53 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:53 GMT</Last-Modified><Etag>0x232CDE7925AA5E0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>WWla7RwnFfzva9c3izGPQQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:53 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-ef1d4f00-e6f9-ad07-bc41-77b536fad144?restype=container

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
x-ms-request-id: 451bf8eb-2539-4662-bf88-7c0bcdc627db
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

