## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ef486e76-1a9a-3407-38ff-eb87a6fa9489?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync
now: 2026-11-12T00:44:49.8133658+00:00

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
etag: "0x249A721BABF4340"
last-modified: Thu, 12 Nov 2026 00:44:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 62fdd734-8e37-49d6-b3e3-4b14d48ce3c2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ef486e76-1a9a-3407-38ff-eb87a6fa9489/foo

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
7sJgFp5Uaf4saFqb/FZ+Sb4uq57zidzbTGjwiCvjdatc+ZJEpMzvIQVKwjHAazjhgKLJd072lmXl
hMo2Y+HTSfOvPwLEOaTyP4qZqMarG+EwDweIGv1cZmMtXx8Bub4kd3k9ESs1HUb91zjEXO2eOmno
BlTZSi72Utmfl9qF8IbMdTFNbQq1+vHBi0PFlwl2jiS1GLNpSi1KRr5SlYZrd+ay+Oe7UcxfMwti
GL7rMbrPKQi20NfTYioEAiZLYmVrVRRcEp8iujxXVuWnBjJuXhUDg2x9tacO35W8tk+mE9Cm98Oq
jx4brW/MXnnyK1v4lqMRR9/47Z9sTTMJZQPtsUIUAQ9vw8/36Nb9sVYtHLQ6xCCrlcvxrQkjPUHq
Ekdr3q023SlLidLTGV8I+zxIPzB/z6HiQRx2IlQGS4WODNWPkdOp9j+K7jtO13ts6bHN2/4Qa0Km
iJyRv7rVRD1MRQ2JeWppnkjx9OBmlGmhCjmiOW+HfaGT6Ag2GDaEtan9AZJt4m9GYzy2HnZiQPMz
8LSAMgvOxcds9pBhM4YRbD83aJPXMyjKW9Uz0V4qMKgUAyiBA4OeLzvKAeve5TC2pLE2KtdgW7yM
ttY1mvRoQcXnTTBdj2m8mDlXDTE963alfSyt9AbRtKdr9U2taJRHYcAl95cAWBRIepGdCE6LT8tf
kB3Hu02/FpmI8pobDzClEKtxF/TfpCQXZHl0M6tZ4KaCTdh2f6VzZuD+eGZ6LWth+PiiGjfWgOz5
r1fTS+LtLxHzmMFXLpAF/bET4Cy+nTYOEjuztsZuq83sfc9Onxr+EUlUhpSqCcpnnByGw5/AOhIg
xTmnOnhLhe30a7DAt12WFM/iahaiZAhwSxmp5+gtLEK9LdrhV9bQCAGntZ4ZpuW+767Q3dD8fmEw
Nu5eoZ0Exj9tA4qDtb34EmEU+q5qV6U06/g5XE5ywK94sCDocWZkou5eq6JbOjrw18pu6IOzxt9I
Kralymrw+0PaCgSdD6D6r1i/C6sC2bC9SISEBNcrxepAn0ewv9eEbrBfgDA1U8cpczgr87ozRlAF
54HlbPdrr0QaXG9ZSfCAOp37o1mAiPW8WpCfANEvDVn2qthVnwK589DrGvdY0CpIqrkdN6L3hV6M
KBFmzK5y604WY54XKpqaQrCIlG79ZIlmVlYYEdW3/iV5yXfwUicieC6oQW2LMIAegvXyb/HwjsOI
AHVYWtp5XmR5nmEiqvCIZRw/VSMc2yXV+o7gxI80iDq0aFGxyh5UL+MIEZEe+9gEaQnUsTmgayVP
gmBMmZnVRRYnbkKf15v96yY/E8mUt/6121uFX9YAFPwrYUe+B5ZJM8t7942VZZJu18YTYFdbuw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DA9C4D213CD0F0"
last-modified: Thu, 12 Nov 2026 00:44:49 GMT
content-md5: 2Lj48FgytBzg5ZVxE4TF0w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7f2c6a56-2a6a-42c8-bec5-73204b743e45
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ef486e76-1a9a-3407-38ff-eb87a6fa9489/bar

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
7sJgFp5Uaf4saFqb/FZ+Sb4uq57zidzbTGjwiCvjdatc+ZJEpMzvIQVKwjHAazjhgKLJd072lmXl
hMo2Y+HTSfOvPwLEOaTyP4qZqMarG+EwDweIGv1cZmMtXx8Bub4kd3k9ESs1HUb91zjEXO2eOmno
BlTZSi72Utmfl9qF8IbMdTFNbQq1+vHBi0PFlwl2jiS1GLNpSi1KRr5SlYZrd+ay+Oe7UcxfMwti
GL7rMbrPKQi20NfTYioEAiZLYmVrVRRcEp8iujxXVuWnBjJuXhUDg2x9tacO35W8tk+mE9Cm98Oq
jx4brW/MXnnyK1v4lqMRR9/47Z9sTTMJZQPtsUIUAQ9vw8/36Nb9sVYtHLQ6xCCrlcvxrQkjPUHq
Ekdr3q023SlLidLTGV8I+zxIPzB/z6HiQRx2IlQGS4WODNWPkdOp9j+K7jtO13ts6bHN2/4Qa0Km
iJyRv7rVRD1MRQ2JeWppnkjx9OBmlGmhCjmiOW+HfaGT6Ag2GDaEtan9AZJt4m9GYzy2HnZiQPMz
8LSAMgvOxcds9pBhM4YRbD83aJPXMyjKW9Uz0V4qMKgUAyiBA4OeLzvKAeve5TC2pLE2KtdgW7yM
ttY1mvRoQcXnTTBdj2m8mDlXDTE963alfSyt9AbRtKdr9U2taJRHYcAl95cAWBRIepGdCE6LT8tf
kB3Hu02/FpmI8pobDzClEKtxF/TfpCQXZHl0M6tZ4KaCTdh2f6VzZuD+eGZ6LWth+PiiGjfWgOz5
r1fTS+LtLxHzmMFXLpAF/bET4Cy+nTYOEjuztsZuq83sfc9Onxr+EUlUhpSqCcpnnByGw5/AOhIg
xTmnOnhLhe30a7DAt12WFM/iahaiZAhwSxmp5+gtLEK9LdrhV9bQCAGntZ4ZpuW+767Q3dD8fmEw
Nu5eoZ0Exj9tA4qDtb34EmEU+q5qV6U06/g5XE5ywK94sCDocWZkou5eq6JbOjrw18pu6IOzxt9I
Kralymrw+0PaCgSdD6D6r1i/C6sC2bC9SISEBNcrxepAn0ewv9eEbrBfgDA1U8cpczgr87ozRlAF
54HlbPdrr0QaXG9ZSfCAOp37o1mAiPW8WpCfANEvDVn2qthVnwK589DrGvdY0CpIqrkdN6L3hV6M
KBFmzK5y604WY54XKpqaQrCIlG79ZIlmVlYYEdW3/iV5yXfwUicieC6oQW2LMIAegvXyb/HwjsOI
AHVYWtp5XmR5nmEiqvCIZRw/VSMc2yXV+o7gxI80iDq0aFGxyh5UL+MIEZEe+9gEaQnUsTmgayVP
gmBMmZnVRRYnbkKf15v96yY/E8mUt/6121uFX9YAFPwrYUe+B5ZJM8t7942VZZJu18YTYFdbuw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F67B91CF1A0F60"
last-modified: Thu, 12 Nov 2026 00:44:49 GMT
content-md5: 2Lj48FgytBzg5ZVxE4TF0w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 458338f7-4df0-4ab4-ab61-681e5812b34c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-ef486e76-1a9a-3407-38ff-eb87a6fa9489/baz

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
7sJgFp5Uaf4saFqb/FZ+Sb4uq57zidzbTGjwiCvjdatc+ZJEpMzvIQVKwjHAazjhgKLJd072lmXl
hMo2Y+HTSfOvPwLEOaTyP4qZqMarG+EwDweIGv1cZmMtXx8Bub4kd3k9ESs1HUb91zjEXO2eOmno
BlTZSi72Utmfl9qF8IbMdTFNbQq1+vHBi0PFlwl2jiS1GLNpSi1KRr5SlYZrd+ay+Oe7UcxfMwti
GL7rMbrPKQi20NfTYioEAiZLYmVrVRRcEp8iujxXVuWnBjJuXhUDg2x9tacO35W8tk+mE9Cm98Oq
jx4brW/MXnnyK1v4lqMRR9/47Z9sTTMJZQPtsUIUAQ9vw8/36Nb9sVYtHLQ6xCCrlcvxrQkjPUHq
Ekdr3q023SlLidLTGV8I+zxIPzB/z6HiQRx2IlQGS4WODNWPkdOp9j+K7jtO13ts6bHN2/4Qa0Km
iJyRv7rVRD1MRQ2JeWppnkjx9OBmlGmhCjmiOW+HfaGT6Ag2GDaEtan9AZJt4m9GYzy2HnZiQPMz
8LSAMgvOxcds9pBhM4YRbD83aJPXMyjKW9Uz0V4qMKgUAyiBA4OeLzvKAeve5TC2pLE2KtdgW7yM
ttY1mvRoQcXnTTBdj2m8mDlXDTE963alfSyt9AbRtKdr9U2taJRHYcAl95cAWBRIepGdCE6LT8tf
kB3Hu02/FpmI8pobDzClEKtxF/TfpCQXZHl0M6tZ4KaCTdh2f6VzZuD+eGZ6LWth+PiiGjfWgOz5
r1fTS+LtLxHzmMFXLpAF/bET4Cy+nTYOEjuztsZuq83sfc9Onxr+EUlUhpSqCcpnnByGw5/AOhIg
xTmnOnhLhe30a7DAt12WFM/iahaiZAhwSxmp5+gtLEK9LdrhV9bQCAGntZ4ZpuW+767Q3dD8fmEw
Nu5eoZ0Exj9tA4qDtb34EmEU+q5qV6U06/g5XE5ywK94sCDocWZkou5eq6JbOjrw18pu6IOzxt9I
Kralymrw+0PaCgSdD6D6r1i/C6sC2bC9SISEBNcrxepAn0ewv9eEbrBfgDA1U8cpczgr87ozRlAF
54HlbPdrr0QaXG9ZSfCAOp37o1mAiPW8WpCfANEvDVn2qthVnwK589DrGvdY0CpIqrkdN6L3hV6M
KBFmzK5y604WY54XKpqaQrCIlG79ZIlmVlYYEdW3/iV5yXfwUicieC6oQW2LMIAegvXyb/HwjsOI
AHVYWtp5XmR5nmEiqvCIZRw/VSMc2yXV+o7gxI80iDq0aFGxyh5UL+MIEZEe+9gEaQnUsTmgayVP
gmBMmZnVRRYnbkKf15v96yY/E8mUt/6121uFX9YAFPwrYUe+B5ZJM8t7942VZZJu18YTYFdbuw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EDDB6C3823CED0"
last-modified: Thu, 12 Nov 2026 00:44:49 GMT
content-md5: 2Lj48FgytBzg5ZVxE4TF0w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e0231409-f77e-492d-a453-c57861428eaf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-ef486e76-1a9a-3407-38ff-eb87a6fa9489/foo/foo

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
7sJgFp5Uaf4saFqb/FZ+Sb4uq57zidzbTGjwiCvjdatc+ZJEpMzvIQVKwjHAazjhgKLJd072lmXl
hMo2Y+HTSfOvPwLEOaTyP4qZqMarG+EwDweIGv1cZmMtXx8Bub4kd3k9ESs1HUb91zjEXO2eOmno
BlTZSi72Utmfl9qF8IbMdTFNbQq1+vHBi0PFlwl2jiS1GLNpSi1KRr5SlYZrd+ay+Oe7UcxfMwti
GL7rMbrPKQi20NfTYioEAiZLYmVrVRRcEp8iujxXVuWnBjJuXhUDg2x9tacO35W8tk+mE9Cm98Oq
jx4brW/MXnnyK1v4lqMRR9/47Z9sTTMJZQPtsUIUAQ9vw8/36Nb9sVYtHLQ6xCCrlcvxrQkjPUHq
Ekdr3q023SlLidLTGV8I+zxIPzB/z6HiQRx2IlQGS4WODNWPkdOp9j+K7jtO13ts6bHN2/4Qa0Km
iJyRv7rVRD1MRQ2JeWppnkjx9OBmlGmhCjmiOW+HfaGT6Ag2GDaEtan9AZJt4m9GYzy2HnZiQPMz
8LSAMgvOxcds9pBhM4YRbD83aJPXMyjKW9Uz0V4qMKgUAyiBA4OeLzvKAeve5TC2pLE2KtdgW7yM
ttY1mvRoQcXnTTBdj2m8mDlXDTE963alfSyt9AbRtKdr9U2taJRHYcAl95cAWBRIepGdCE6LT8tf
kB3Hu02/FpmI8pobDzClEKtxF/TfpCQXZHl0M6tZ4KaCTdh2f6VzZuD+eGZ6LWth+PiiGjfWgOz5
r1fTS+LtLxHzmMFXLpAF/bET4Cy+nTYOEjuztsZuq83sfc9Onxr+EUlUhpSqCcpnnByGw5/AOhIg
xTmnOnhLhe30a7DAt12WFM/iahaiZAhwSxmp5+gtLEK9LdrhV9bQCAGntZ4ZpuW+767Q3dD8fmEw
Nu5eoZ0Exj9tA4qDtb34EmEU+q5qV6U06/g5XE5ywK94sCDocWZkou5eq6JbOjrw18pu6IOzxt9I
Kralymrw+0PaCgSdD6D6r1i/C6sC2bC9SISEBNcrxepAn0ewv9eEbrBfgDA1U8cpczgr87ozRlAF
54HlbPdrr0QaXG9ZSfCAOp37o1mAiPW8WpCfANEvDVn2qthVnwK589DrGvdY0CpIqrkdN6L3hV6M
KBFmzK5y604WY54XKpqaQrCIlG79ZIlmVlYYEdW3/iV5yXfwUicieC6oQW2LMIAegvXyb/HwjsOI
AHVYWtp5XmR5nmEiqvCIZRw/VSMc2yXV+o7gxI80iDq0aFGxyh5UL+MIEZEe+9gEaQnUsTmgayVP
gmBMmZnVRRYnbkKf15v96yY/E8mUt/6121uFX9YAFPwrYUe+B5ZJM8t7942VZZJu18YTYFdbuw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2585A9C441EF360"
last-modified: Thu, 12 Nov 2026 00:44:49 GMT
content-md5: 2Lj48FgytBzg5ZVxE4TF0w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ae3047fa-3091-46fe-94f6-ab8a73942316
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-ef486e76-1a9a-3407-38ff-eb87a6fa9489/foo/bar

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
7sJgFp5Uaf4saFqb/FZ+Sb4uq57zidzbTGjwiCvjdatc+ZJEpMzvIQVKwjHAazjhgKLJd072lmXl
hMo2Y+HTSfOvPwLEOaTyP4qZqMarG+EwDweIGv1cZmMtXx8Bub4kd3k9ESs1HUb91zjEXO2eOmno
BlTZSi72Utmfl9qF8IbMdTFNbQq1+vHBi0PFlwl2jiS1GLNpSi1KRr5SlYZrd+ay+Oe7UcxfMwti
GL7rMbrPKQi20NfTYioEAiZLYmVrVRRcEp8iujxXVuWnBjJuXhUDg2x9tacO35W8tk+mE9Cm98Oq
jx4brW/MXnnyK1v4lqMRR9/47Z9sTTMJZQPtsUIUAQ9vw8/36Nb9sVYtHLQ6xCCrlcvxrQkjPUHq
Ekdr3q023SlLidLTGV8I+zxIPzB/z6HiQRx2IlQGS4WODNWPkdOp9j+K7jtO13ts6bHN2/4Qa0Km
iJyRv7rVRD1MRQ2JeWppnkjx9OBmlGmhCjmiOW+HfaGT6Ag2GDaEtan9AZJt4m9GYzy2HnZiQPMz
8LSAMgvOxcds9pBhM4YRbD83aJPXMyjKW9Uz0V4qMKgUAyiBA4OeLzvKAeve5TC2pLE2KtdgW7yM
ttY1mvRoQcXnTTBdj2m8mDlXDTE963alfSyt9AbRtKdr9U2taJRHYcAl95cAWBRIepGdCE6LT8tf
kB3Hu02/FpmI8pobDzClEKtxF/TfpCQXZHl0M6tZ4KaCTdh2f6VzZuD+eGZ6LWth+PiiGjfWgOz5
r1fTS+LtLxHzmMFXLpAF/bET4Cy+nTYOEjuztsZuq83sfc9Onxr+EUlUhpSqCcpnnByGw5/AOhIg
xTmnOnhLhe30a7DAt12WFM/iahaiZAhwSxmp5+gtLEK9LdrhV9bQCAGntZ4ZpuW+767Q3dD8fmEw
Nu5eoZ0Exj9tA4qDtb34EmEU+q5qV6U06/g5XE5ywK94sCDocWZkou5eq6JbOjrw18pu6IOzxt9I
Kralymrw+0PaCgSdD6D6r1i/C6sC2bC9SISEBNcrxepAn0ewv9eEbrBfgDA1U8cpczgr87ozRlAF
54HlbPdrr0QaXG9ZSfCAOp37o1mAiPW8WpCfANEvDVn2qthVnwK589DrGvdY0CpIqrkdN6L3hV6M
KBFmzK5y604WY54XKpqaQrCIlG79ZIlmVlYYEdW3/iV5yXfwUicieC6oQW2LMIAegvXyb/HwjsOI
AHVYWtp5XmR5nmEiqvCIZRw/VSMc2yXV+o7gxI80iDq0aFGxyh5UL+MIEZEe+9gEaQnUsTmgayVP
gmBMmZnVRRYnbkKf15v96yY/E8mUt/6121uFX9YAFPwrYUe+B5ZJM8t7942VZZJu18YTYFdbuw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C440BEDAE5A760"
last-modified: Thu, 12 Nov 2026 00:44:50 GMT
content-md5: 2Lj48FgytBzg5ZVxE4TF0w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e17cb5d9-a456-4e99-a031-ee3b113f6236
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-ef486e76-1a9a-3407-38ff-eb87a6fa9489/baz/foo

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
7sJgFp5Uaf4saFqb/FZ+Sb4uq57zidzbTGjwiCvjdatc+ZJEpMzvIQVKwjHAazjhgKLJd072lmXl
hMo2Y+HTSfOvPwLEOaTyP4qZqMarG+EwDweIGv1cZmMtXx8Bub4kd3k9ESs1HUb91zjEXO2eOmno
BlTZSi72Utmfl9qF8IbMdTFNbQq1+vHBi0PFlwl2jiS1GLNpSi1KRr5SlYZrd+ay+Oe7UcxfMwti
GL7rMbrPKQi20NfTYioEAiZLYmVrVRRcEp8iujxXVuWnBjJuXhUDg2x9tacO35W8tk+mE9Cm98Oq
jx4brW/MXnnyK1v4lqMRR9/47Z9sTTMJZQPtsUIUAQ9vw8/36Nb9sVYtHLQ6xCCrlcvxrQkjPUHq
Ekdr3q023SlLidLTGV8I+zxIPzB/z6HiQRx2IlQGS4WODNWPkdOp9j+K7jtO13ts6bHN2/4Qa0Km
iJyRv7rVRD1MRQ2JeWppnkjx9OBmlGmhCjmiOW+HfaGT6Ag2GDaEtan9AZJt4m9GYzy2HnZiQPMz
8LSAMgvOxcds9pBhM4YRbD83aJPXMyjKW9Uz0V4qMKgUAyiBA4OeLzvKAeve5TC2pLE2KtdgW7yM
ttY1mvRoQcXnTTBdj2m8mDlXDTE963alfSyt9AbRtKdr9U2taJRHYcAl95cAWBRIepGdCE6LT8tf
kB3Hu02/FpmI8pobDzClEKtxF/TfpCQXZHl0M6tZ4KaCTdh2f6VzZuD+eGZ6LWth+PiiGjfWgOz5
r1fTS+LtLxHzmMFXLpAF/bET4Cy+nTYOEjuztsZuq83sfc9Onxr+EUlUhpSqCcpnnByGw5/AOhIg
xTmnOnhLhe30a7DAt12WFM/iahaiZAhwSxmp5+gtLEK9LdrhV9bQCAGntZ4ZpuW+767Q3dD8fmEw
Nu5eoZ0Exj9tA4qDtb34EmEU+q5qV6U06/g5XE5ywK94sCDocWZkou5eq6JbOjrw18pu6IOzxt9I
Kralymrw+0PaCgSdD6D6r1i/C6sC2bC9SISEBNcrxepAn0ewv9eEbrBfgDA1U8cpczgr87ozRlAF
54HlbPdrr0QaXG9ZSfCAOp37o1mAiPW8WpCfANEvDVn2qthVnwK589DrGvdY0CpIqrkdN6L3hV6M
KBFmzK5y604WY54XKpqaQrCIlG79ZIlmVlYYEdW3/iV5yXfwUicieC6oQW2LMIAegvXyb/HwjsOI
AHVYWtp5XmR5nmEiqvCIZRw/VSMc2yXV+o7gxI80iDq0aFGxyh5UL+MIEZEe+9gEaQnUsTmgayVP
gmBMmZnVRRYnbkKf15v96yY/E8mUt/6121uFX9YAFPwrYUe+B5ZJM8t7942VZZJu18YTYFdbuw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21DD13DCD4C23E0"
last-modified: Thu, 12 Nov 2026 00:44:50 GMT
content-md5: 2Lj48FgytBzg5ZVxE4TF0w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ac990583-695a-41bd-aa15-f029994a3031
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-ef486e76-1a9a-3407-38ff-eb87a6fa9489/baz/foo/bar

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
7sJgFp5Uaf4saFqb/FZ+Sb4uq57zidzbTGjwiCvjdatc+ZJEpMzvIQVKwjHAazjhgKLJd072lmXl
hMo2Y+HTSfOvPwLEOaTyP4qZqMarG+EwDweIGv1cZmMtXx8Bub4kd3k9ESs1HUb91zjEXO2eOmno
BlTZSi72Utmfl9qF8IbMdTFNbQq1+vHBi0PFlwl2jiS1GLNpSi1KRr5SlYZrd+ay+Oe7UcxfMwti
GL7rMbrPKQi20NfTYioEAiZLYmVrVRRcEp8iujxXVuWnBjJuXhUDg2x9tacO35W8tk+mE9Cm98Oq
jx4brW/MXnnyK1v4lqMRR9/47Z9sTTMJZQPtsUIUAQ9vw8/36Nb9sVYtHLQ6xCCrlcvxrQkjPUHq
Ekdr3q023SlLidLTGV8I+zxIPzB/z6HiQRx2IlQGS4WODNWPkdOp9j+K7jtO13ts6bHN2/4Qa0Km
iJyRv7rVRD1MRQ2JeWppnkjx9OBmlGmhCjmiOW+HfaGT6Ag2GDaEtan9AZJt4m9GYzy2HnZiQPMz
8LSAMgvOxcds9pBhM4YRbD83aJPXMyjKW9Uz0V4qMKgUAyiBA4OeLzvKAeve5TC2pLE2KtdgW7yM
ttY1mvRoQcXnTTBdj2m8mDlXDTE963alfSyt9AbRtKdr9U2taJRHYcAl95cAWBRIepGdCE6LT8tf
kB3Hu02/FpmI8pobDzClEKtxF/TfpCQXZHl0M6tZ4KaCTdh2f6VzZuD+eGZ6LWth+PiiGjfWgOz5
r1fTS+LtLxHzmMFXLpAF/bET4Cy+nTYOEjuztsZuq83sfc9Onxr+EUlUhpSqCcpnnByGw5/AOhIg
xTmnOnhLhe30a7DAt12WFM/iahaiZAhwSxmp5+gtLEK9LdrhV9bQCAGntZ4ZpuW+767Q3dD8fmEw
Nu5eoZ0Exj9tA4qDtb34EmEU+q5qV6U06/g5XE5ywK94sCDocWZkou5eq6JbOjrw18pu6IOzxt9I
Kralymrw+0PaCgSdD6D6r1i/C6sC2bC9SISEBNcrxepAn0ewv9eEbrBfgDA1U8cpczgr87ozRlAF
54HlbPdrr0QaXG9ZSfCAOp37o1mAiPW8WpCfANEvDVn2qthVnwK589DrGvdY0CpIqrkdN6L3hV6M
KBFmzK5y604WY54XKpqaQrCIlG79ZIlmVlYYEdW3/iV5yXfwUicieC6oQW2LMIAegvXyb/HwjsOI
AHVYWtp5XmR5nmEiqvCIZRw/VSMc2yXV+o7gxI80iDq0aFGxyh5UL+MIEZEe+9gEaQnUsTmgayVP
gmBMmZnVRRYnbkKf15v96yY/E8mUt/6121uFX9YAFPwrYUe+B5ZJM8t7942VZZJu18YTYFdbuw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x201DB1FE6D10880"
last-modified: Thu, 12 Nov 2026 00:44:50 GMT
content-md5: 2Lj48FgytBzg5ZVxE4TF0w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b9f2d842-62c6-451b-a538-bce0fb704c44
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-ef486e76-1a9a-3407-38ff-eb87a6fa9489/baz/bar/foo

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
7sJgFp5Uaf4saFqb/FZ+Sb4uq57zidzbTGjwiCvjdatc+ZJEpMzvIQVKwjHAazjhgKLJd072lmXl
hMo2Y+HTSfOvPwLEOaTyP4qZqMarG+EwDweIGv1cZmMtXx8Bub4kd3k9ESs1HUb91zjEXO2eOmno
BlTZSi72Utmfl9qF8IbMdTFNbQq1+vHBi0PFlwl2jiS1GLNpSi1KRr5SlYZrd+ay+Oe7UcxfMwti
GL7rMbrPKQi20NfTYioEAiZLYmVrVRRcEp8iujxXVuWnBjJuXhUDg2x9tacO35W8tk+mE9Cm98Oq
jx4brW/MXnnyK1v4lqMRR9/47Z9sTTMJZQPtsUIUAQ9vw8/36Nb9sVYtHLQ6xCCrlcvxrQkjPUHq
Ekdr3q023SlLidLTGV8I+zxIPzB/z6HiQRx2IlQGS4WODNWPkdOp9j+K7jtO13ts6bHN2/4Qa0Km
iJyRv7rVRD1MRQ2JeWppnkjx9OBmlGmhCjmiOW+HfaGT6Ag2GDaEtan9AZJt4m9GYzy2HnZiQPMz
8LSAMgvOxcds9pBhM4YRbD83aJPXMyjKW9Uz0V4qMKgUAyiBA4OeLzvKAeve5TC2pLE2KtdgW7yM
ttY1mvRoQcXnTTBdj2m8mDlXDTE963alfSyt9AbRtKdr9U2taJRHYcAl95cAWBRIepGdCE6LT8tf
kB3Hu02/FpmI8pobDzClEKtxF/TfpCQXZHl0M6tZ4KaCTdh2f6VzZuD+eGZ6LWth+PiiGjfWgOz5
r1fTS+LtLxHzmMFXLpAF/bET4Cy+nTYOEjuztsZuq83sfc9Onxr+EUlUhpSqCcpnnByGw5/AOhIg
xTmnOnhLhe30a7DAt12WFM/iahaiZAhwSxmp5+gtLEK9LdrhV9bQCAGntZ4ZpuW+767Q3dD8fmEw
Nu5eoZ0Exj9tA4qDtb34EmEU+q5qV6U06/g5XE5ywK94sCDocWZkou5eq6JbOjrw18pu6IOzxt9I
Kralymrw+0PaCgSdD6D6r1i/C6sC2bC9SISEBNcrxepAn0ewv9eEbrBfgDA1U8cpczgr87ozRlAF
54HlbPdrr0QaXG9ZSfCAOp37o1mAiPW8WpCfANEvDVn2qthVnwK589DrGvdY0CpIqrkdN6L3hV6M
KBFmzK5y604WY54XKpqaQrCIlG79ZIlmVlYYEdW3/iV5yXfwUicieC6oQW2LMIAegvXyb/HwjsOI
AHVYWtp5XmR5nmEiqvCIZRw/VSMc2yXV+o7gxI80iDq0aFGxyh5UL+MIEZEe+9gEaQnUsTmgayVP
gmBMmZnVRRYnbkKf15v96yY/E8mUt/6121uFX9YAFPwrYUe+B5ZJM8t7942VZZJu18YTYFdbuw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x262E60025E8EF40"
last-modified: Thu, 12 Nov 2026 00:44:50 GMT
content-md5: 2Lj48FgytBzg5ZVxE4TF0w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9d03cf53-40ed-4195-8afa-fda5d8e1d7bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-ef486e76-1a9a-3407-38ff-eb87a6fa9489/foo/foo?comp=metadata

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
etag: "0x24DE46FD07D3740"
last-modified: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 58ecaa1d-6f38-4d23-8e7b-2ef211cdb0a6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-ef486e76-1a9a-3407-38ff-eb87a6fa9489?restype=container&comp=list

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
x-ms-request-id: 773c7ed8-14ec-47c7-bd55-7d5d02eab84b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-ef486e76-1a9a-3407-38ff-eb87a6fa9489"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:49 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:49 GMT</Last-Modified><Etag>0x1F67B91CF1A0F60</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>2Lj48FgytBzg5ZVxE4TF0w==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:49 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:49 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:49 GMT</Last-Modified><Etag>0x1EDDB6C3823CED0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>2Lj48FgytBzg5ZVxE4TF0w==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:49 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/bar/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:50 GMT</Last-Modified><Etag>0x262E60025E8EF40</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>2Lj48FgytBzg5ZVxE4TF0w==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:50 GMT</Last-Modified><Etag>0x21DD13DCD4C23E0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>2Lj48FgytBzg5ZVxE4TF0w==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:50 GMT</Last-Modified><Etag>0x201DB1FE6D10880</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>2Lj48FgytBzg5ZVxE4TF0w==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:49 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:49 GMT</Last-Modified><Etag>0x1DA9C4D213CD0F0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>2Lj48FgytBzg5ZVxE4TF0w==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:49 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:50 GMT</Last-Modified><Etag>0x1C440BEDAE5A760</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>2Lj48FgytBzg5ZVxE4TF0w==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:49 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:50 GMT</Last-Modified><Etag>0x24DE46FD07D3740</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>2Lj48FgytBzg5ZVxE4TF0w==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:49 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-ef486e76-1a9a-3407-38ff-eb87a6fa9489?restype=container

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
x-ms-request-id: 9ae94158-7eaf-4138-9802-a331f7224967
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

