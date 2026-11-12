## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-fceafae5-b59e-6c4b-529b-e7d63050041c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetSetTags_AccessConditions
now: 2026-11-12T00:46:57.3842441+00:00

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
etag: "0x25ECC9C86E672C0"
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b6d24791-8e0f-451d-b074-1a128fa04571
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-fceafae5-b59e-6c4b-529b-e7d63050041c/test-blob-07040884-38fa-b8e9-f6f0-0376c80e9726

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
58sEfNV+DV7WIH+lijvzdb+S53m6DhisEDIFrbLUo0QEwO5lTIdGBvqmMNm5Qy26/Y23NiYebNmz
WGyjeF+rAXw6ocpMjik3S+F+FN0/8swFS7AkHW0e5lQVsfQbo42b+i9cfqJjbW9kf+pEn1j7dGWf
ni2uh+MOHLt1N9w1HKhU4xmu4nMqod1Bv56D2Ub8Gj2OewRg7HJLTWLn7TaSL2NB8Ls+TJHxdfxQ
bcdFi0J0eRyepqCj8/amY5QRQrSmr5A7QemKvc2rnQYIEH+qBsIfcnMZ84nCnfzEl+n94DJHqb43
CUlZ6btP8gmam+N3+1zR8dBBjLsGeKPsxibjrrzTwWbBc/x4xom4ygCAKAIZTZyNK+5iBh0CMJCl
bCOVa0RMxtp8tohgWStHiMK6hlCh03iJVoLNcbpJvkJr0lplIl68M2IonJYTLdLDG31aSKpABJiq
CxXCflUfM/hG9IbQ4WZj/lPteDbhdimwClY87nWYK87BuhZJ+bUNCWmezTlL8jkX90pXUoxiyJXs
EnT+4kSCrci4DyZPGgSd4G/NQ6jwZBccJfcqQdhBXvGBXOdADiYlGx9wk+MSx9xGuXEclYXs+61c
4bxMV2zwdrA1zr0cXdJIpyeIf9A0Cl4a5IdmJclslGA54yxp2MOygBwy3fkfKluf0+1dY3zdKNde
MnPkiVHmyDlc4nml389k1f+zAS1k+7osx1HcDjDkXLpVC6VQzvfLSxTAwkfi+fQe+Y58KSeq+Te4
uML/CrkIeIW+UNMpFAcI6LUYpDhySc1cvRWiaDOTqxJulxU0y0Bat0rBI6kh9OWGdEBxkVT+RW71
o02kZRBSK6XBunzy0xx0vuzusSYjO8kwHPPyIRm9cFGmPyjztlI6b/gEXzlolKAk/dNnEJRI0WeE
c0gcXwqLBEoqS5PzgQiatEEuH9uPyIhTzSRGVWC9Xm7Bb0IJHhDteVvvPkkMMXzLzVtTGrKM9KvA
yZHmRK7qbe0lMhHFkJUwQKWAn4o/Rpyoe4cEaUO8NXqXSVV+BzWsBNBb5/9qBT3FItkMDFUhgYL1
Psgn5gOpaf2WLUdAsjhw05u5416dPXZKPkdqrygldsfSiclshR3Nsn4B1Nf2hXChnDi5Z54kVwBS
3Ki8PrnUcbd/bihuA0197DDgm2meU7nWyBLwbA4prjHJGqh1EXPELWIgdhZHMpjrO3tuQ7yXtInu
5Xam5ASpVsD2peikB9u8G20Gfd2ij5Z5BDCSump1MWYfhyv9HUledyBWUYywRzSgsSdOkDasS1bf
Ld/UFptVgHSChICvvv4kqAa8TD4Kyb388ghCJ6AwczvVHvBpiWCEANAXLcKz8fMpKegv7/8Y1A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F93475740B4EC0"
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
content-md5: MKSSAwq0AkA+dIjZ1HtwqQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b9ed78d2-b422-4198-9ece-0ce392094896
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-fceafae5-b59e-6c4b-529b-e7d63050041c/test-blob-07040884-38fa-b8e9-f6f0-0376c80e9726?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a9d86d3d-aeb7-4340-bbd4-a29b8b8b7c0c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-fceafae5-b59e-6c4b-529b-e7d63050041c/test-blob-07040884-38fa-b8e9-f6f0-0376c80e9726?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 5a6aea90-727a-4d8c-a8b4-e5f35e2cf201
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-fceafae5-b59e-6c4b-529b-e7d63050041c?restype=container

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
x-ms-request-id: 21798f74-7c9e-419c-ac49-75c27f42cabc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-24d82263-1392-d359-5211-45d99f0dba1e?restype=container

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
etag: "0x2546BA7720519A0"
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ac0b7ba1-06e0-4b48-ba5c-9057bb4cd395
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-24d82263-1392-d359-5211-45d99f0dba1e/test-blob-6e4b38a6-9cf2-48fb-0015-18fdb700843b

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
vUmNR7E78e12RNqxbhdTG2/KiLazquHGJ5AjffpbG1GNCRxVgHNtakZe967BStrpwf2O7XfNhxNn
xiAgGHPzGyiII2T6/Zv8XB5vVbIzBN22Orz9zS3av4EJ7bpTTFLTa9yGOCZ17sNikpFZXTJgNMFC
at239U36rmTi8Q/gqA/MnOnWrcy3QEv4mzqcgGJPqLn4EOJ0G3WOi4nCkvyzgemCjcBIiof1iyqS
vloSXi4Bk0lW6JgtV4F0SCFC9K1ORBpRGvOiBh4yA4S44lwaey1bwP+zXZhQVDU/1EFlspZ8Q3pA
wUQ7X40rJOUUdXUkWsz05jSum+eBAMW9YjLczVDtO5/i2brpIGFxiDmzO9/AGnp0cMxizaeSv8B+
ffxbTlaUJznVQYASC8bSPBOuzcXl/Ee3aFyEim33UBr5aqNkFjniHhSm6tj5YWQGj5GU4/L7mIC0
o+b6EJ3L3vFmGaEjbibZzK6wPxFvvgb4ffrcY2wn/tEir3JT6A532gznk0jD4iFquxdDSlhuReXg
AZKi7nuFPhvPAL60heSgOWUFhyu9NZvYcqdU5LN5s2qNc+Z71OuRYVQt8+FjtjUzohHzab26Isz3
yXzTMFlnVk1UJhH9JWR5dCbWkEG5dbxxIUGihUqs01EZgwtuvTD6xZ2UD48jNX2tefWX45GKPlTA
YQ8YxdADp1PA5KFYCrb128qkJGYsTuvE9AtUFO+/j0W3rlsh4gDMkWc8Y1HcVG4+ogjH5hntlBMk
U9DErpJjAVVcoVxa1PjJ15P+7+qZ6KCdFnLn+KgryRpI/I4vB+LU2WL8f7IS5M4P/Q6F7qQoimsw
J5ggewisMNhCEtdpmtCwKhaInWjtijKj2Pqapdp1H3Ii/+BKs11ZUE/a0NL3pWM+1MSNoOwDQpxl
fKINEYr9zPJkRpvvZna4L00YErpgrDOXXNEW6H+FH7xD5Da6Sz7F3QPfkl7ITm5N1HGf6y/iBc9v
drW55uRy3yferIE//uMOUzW2gBrUzw1iyRMO5TOMYN9nS9WJC/YfbLI26aLtDdaNkZj6K4S1m6an
Vh3RZPn0Ukui2LMOhEc+lxNnneZrdbs8gVSbkTVasa8u4bTZTgi4QpZWSjQjfwxQu5RxTf3APOFh
lOOlWMAWRyYD36OSZUkLrltPFCqHGQFHStag6WSybqXTeLklE+rWQAMNIJ9pvlVLZZ6icSe32nvh
Xg3pdV7CUXH9v+2P5ZtweNMnefli3YyAVYPFD/1+HJ0+RLTc7MukS84ubP5ovIACMfhUj2CCf4CA
aSDb/EFzf6JPUKHnlIwIgi4qM3GNGJgDwt0EKow9vMU0W4OqyE6Muu1cGWveG5xsSwwyV0sO8g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2552C3C0A44FB40"
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
content-md5: 8KZnPc86VFKt8o4Jee93KQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c67d4684-f509-4610-8dce-c440321e36cc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-24d82263-1392-d359-5211-45d99f0dba1e/test-blob-6e4b38a6-9cf2-48fb-0015-18fdb700843b?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/xml
x-ms-blob-if-modified-since: Wed, 11 Nov 2026 00:46:57 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: daedd166-893d-48fc-9bbf-699244e6f154
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 8: GET /devstoreaccount1/test-container-24d82263-1392-d359-5211-45d99f0dba1e/test-blob-6e4b38a6-9cf2-48fb-0015-18fdb700843b?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_9
x-ms-blob-if-modified-since: Wed, 11 Nov 2026 00:46:57 GMT
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
x-ms-request-id: e2de07a1-006d-4500-8bcd-ae04f2e19a4d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 9: DELETE /devstoreaccount1/test-container-24d82263-1392-d359-5211-45d99f0dba1e?restype=container

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
x-ms-request-id: 7cb9599e-0161-453e-8cc7-b4a2e1666114
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-39d88751-6f63-1655-1294-dcb339085dba?restype=container

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
etag: "0x27016B29A824240"
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d3722e92-0897-4594-9e2b-34ebbfa31ec8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-39d88751-6f63-1655-1294-dcb339085dba/test-blob-84799ddf-fe31-242d-a740-98de7f0a6479

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
JWgyI/AUKUuXRgfWAWhjY+5SUrrSisFSWbOSItZ2lgcwYo7Q1jrKy3Qt7Ov3VyM/3TTwLbepp5un
4Mk8ggZ0Ia//pp7ak42ziIdGpJ3VWgKQU0WihmlQhrvyKPZwjUhuucs8+LGEZEmnPKQvYwP90YXG
qy7A0ZtGrx/j52qXQ/o+2OrRmWFRDO78+0nEICK49VZwqeEarecw9UmRoX3eD/mp8IsYKzgkdZ9A
xNZRgY79K/ITJpkZJCoDoaMYwGpxHetQGy+Wn8keTDRB2ukQ3nS6k3aLyuhgkMxhFYmUC7U1zqbr
AWVfZoso9dpl10pB8sIuXiz05lIC74tjNYk/iUB/DAtCJd0OWy3qYtUO+7iBICPHZa2IQOhT6BHa
+zEC6GuZ5co//szlIAL/CoN89PTS4hVmeCOT9swi7j3LM1/76HpqdBXtQiFW4UWqiTVl1vQcCBkc
m3BHBu/+HA+PGeyiAyIJEn/f5J/zD5fe6GyWvRhIritG30wKI24l7yYSx8dZB4YTXMR0PSN5KYvZ
aR2DaF73RmvAWyTV/u8RufV54UjPhODmg2FT1HEHzbbBMLlQoobHGoBcmKthPV3UYoMt/0dCCeQ8
nOT8o3H6uI5uFM41wRduscbIcus0hEUEfnLt2s1ufifVFAWiynYOYuAd8yiPn6Frv06Aepf5Bxie
+CX/DN7AAJWmYKwSzOZQuRALF5Eddd/RgRp/7QSQ2wztA9JRD1UBXPKT6D70WfJnMMCG7fCGgYNF
LYrDQBKRFoSgJcgU/qm6CrqeiYyg3SgoGL1ECe4cZoJOC+LLPRzgAdG5UzQqUjEWzOM15/f3pFBi
myhUTA2Wg75GxvPH78yevoe75on0/sWMLTwK5n+KV2aSaKHzi7XEI89144w+Tt0WlylvPL7GbZ1j
yB7Qi50/vG6MNYYqqjLS9sO5fho4Td9f809VGhuozPoEkMOW85gyNiceshlX7Oz3nEX6DO+CKno/
cZdN6aFT42mLJhpvPAMrh0jzGpvFCAdiXn3Wrb8LgWVIVoEA5EyFy86wy8bRh2BBz4SmjxDeeWmQ
64ojfDWpf6S1JuWBKqL8bk/NFTxBkdYdlN46ZfJUadwYcPnBYU6YBkwhG2F7v6TiqiDBEWQsT1mz
BuhXbhqxYb0IabqpOgwANA/wH3V1otQ6WLvRkld46yCfDltlQZcxcLqkclbpOHAUwNxUPDDkPmQT
HBVf385lj32ZCSuwm/J3vq660S99UCBLvdJ6JK7wu8/2UiSB0pDsP+LZTy9EYyXq3X6BKmw0lcz1
EyL76mvOqU5cuUjO9esezZJNpADwBlmskEYwb5FiwrxYjL5t8VV2C6bg6KncHOeSY1za5vHLBA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26CF21A640EA240"
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
content-md5: lAo5muuKmDHIWITfiBWSJQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: adbbb553-c6fe-4883-8ca2-53b461ba8e49
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-39d88751-6f63-1655-1294-dcb339085dba/test-blob-84799ddf-fe31-242d-a740-98de7f0a6479?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
Content-Type: application/xml
x-ms-blob-if-unmodified-since: Fri, 13 Nov 2026 00:46:57 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c1d96a53-0a8f-48ae-9c94-f2c96372ec99
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 13: GET /devstoreaccount1/test-container-39d88751-6f63-1655-1294-dcb339085dba/test-blob-84799ddf-fe31-242d-a740-98de7f0a6479?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_14
x-ms-blob-if-unmodified-since: Fri, 13 Nov 2026 00:46:57 GMT
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
x-ms-request-id: e6325ec5-92dc-41d2-a40f-875b229b5000
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 14: DELETE /devstoreaccount1/test-container-39d88751-6f63-1655-1294-dcb339085dba?restype=container

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
x-ms-request-id: ed204997-a33e-4f4e-a720-d45de8b33bec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-594fc90c-9d24-bd39-f9f7-8b75692cb0dc?restype=container

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
etag: "0x20B9A85049A7520"
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 19119d14-3b42-4f7c-bdf3-07d4f4348ae6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-594fc90c-9d24-bd39-f9f7-8b75692cb0dc/test-blob-5a99d73d-1e10-cfaf-745f-9d0c3488dbcb

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
jIexpKH7UW1sI++yUaZ+ZrKAnQ9XcfTuGn/kxf8tiHAbwOjhegw6QYUs7ewv/H7O4TdZtOrMdBuT
w4kiF4ttP5p+l5C9nOumRVyJK4MHvh0BFuTH09SGT0zNTreCGCn6vq1SsWXtEERMs26NQkiXiwVs
IQGnpWvG90dE8E40Iy0yj2zWtQy4EwWfex9l+QwDNcOxFvcoUhlBi7odqSD2GJBBWrPcwdX5tA38
BypLYP47QbqKggw2CjxTlClSmmnkqWOPJJ5ZJnTuuGLpLEvv9Su84mdma5WDC1B2iS2rphmjF13H
vDtg4RpGnMqqTN3xY57+lrcBfj3NDBlN451HQhFIRRTtKDnwWwBNIM7L2b5zhCWOrRBioZkf+a8h
Ev59/lm4YQfJBDtkDTq2tF5vAjNb2l53uJUA5qN7zS6JzkkC0CF1Ene2qoDqKp/Wq+07sPd8xjig
BUbEt3pjTTYM2j/xtOQ8+u+7pDDdjY32Kjq2Pxw3DQgQYsrasFr9U1xJ3U9g5fcJ/rYHwSIIwni4
zY0/rQ0a1c034FIZYkmVvVHTlK8+lkRDrEFlL0vlCJ9SIePMvaVOLwiCKQSl75xtcgPRNC7IejdI
/AHMtKaBUdiyx0BlyACrhWSnu2xAnr2k97xIFNNxiaerhMGkgXphAdcs8ihcB6oDJa/JIb7KCF5D
KLzpODwEQT6ZukQ/BwPqRbqVE6uUSPARRe8kqGfo4HtiYFm9d8ibJ7Hqw01mxB2r3tsENfSyr9/M
1/NM4JnWsNnI3KepLM7y+ev5qoWiq4HSeMmM46qGr7F68Z/UTkcYFBJzned1AbINEjwIuQRaKSxy
emfPSc0uQSz2LzsuHauk4ZZzLw2ZXHcWf9FuffasH8dzYtTgSMpERFy7f9J33vWRZNhu5/oe2R3w
ucr8wMQ1Sg9zu7vWw5jLLuux3dykn6Dc3RgePTjNVIi28I//SISXhjXCAyM5uqFAorgObPxBSxkq
H+KrFwzXpWYyINMIzOVmGVen4Zt8oiN33pp/vueMdaV21Smi7G4o6129BpnNN9bTqFOkmWl9rX2+
MzlyV+d+pqsukve8xCzof/Y+v5uJqabDrBaU59s7+Cer47k1tZR2PmDun6TfF+MmvBpzP+7hNImS
r6vQ6r7Q8prPEOFzsslix4E7mwkC45QzbivAx7g5yq4wowbopVOiHq0KDwYBsglREXhsppl/kMsW
nXyTDyrhlkUyQw/CeSEtmXxc+NSOMbshb7ZAzCQUsBM70gjXDg+CKHnAz2/6jphWPw0dIpj3iGzA
cp90oMohHZL8h6YZVYpt2s9azWFLJ+Ee6o0X9456REmbF5xvDYevn7Hd/QfxPOmCsEfInLsKdA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C54924D4FD0E90"
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
content-md5: UhoQlJ6mZdTglHWgJbwENQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c5c31438-6098-4c57-aec6-0d80471d0507
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-594fc90c-9d24-bd39-f9f7-8b75692cb0dc/test-blob-5a99d73d-1e10-cfaf-745f-9d0c3488dbcb

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
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C54924D4FD0E90"
content-md5: UhoQlJ6mZdTglHWgJbwENQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a3fcf59c-52d4-4d4e-83ca-1c9abb4ebfa0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:57 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-594fc90c-9d24-bd39-f9f7-8b75692cb0dc/test-blob-5a99d73d-1e10-cfaf-745f-9d0c3488dbcb?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
Content-Type: application/xml
x-ms-blob-if-match: 0x1C54924D4FD0E90
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e949dd98-d47a-4917-9439-4347dfd07b15
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-594fc90c-9d24-bd39-f9f7-8b75692cb0dc/test-blob-5a99d73d-1e10-cfaf-745f-9d0c3488dbcb?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_20
x-ms-blob-if-match: 0x1C54924D4FD0E90
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
x-ms-request-id: d7a941b0-a490-4881-a394-16e91d2eac81
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 20: DELETE /devstoreaccount1/test-container-594fc90c-9d24-bd39-f9f7-8b75692cb0dc?restype=container

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
x-ms-request-id: d160d2cd-9de6-4e8f-890e-e9730fecb0aa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-b656be4b-0a3c-0426-8142-5d7d3eedfdcc?restype=container

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
etag: "0x2450304DE2E8B40"
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3671daff-73b9-4cd1-8758-9cac31616049
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-b656be4b-0a3c-0426-8142-5d7d3eedfdcc/test-blob-b02dab47-296e-2dd9-ada3-944746b2a88e

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
kaJRsLfRcpWL2HzElL6rlbJ7gfCNWgUh5CkImXXevs+azuybm00VdjmYJZatFZjv+P6VyzG3ATec
L8uOyNgfrBqsKsXRD/lkZQq39TRvdM+QGaF3SfKe48y1/2uBhq1geHh7AOrTHegEMGUm/wwCLLv7
/q43qGMnDkf4HBCN4t9dV3y89HPkvPy4chiNeOPAstKwhYj/KdAVU/Kj2gDYdk2GyaiPRjhHFkGy
fjZKmZZjOGk93VxWXi6rpqCBQeL74PvKB687MGyaaG9HTKqay7lcP6KWm5nwL2p545+XxtVetp46
f5LnKAf9onXtDxGEEdvmJAFAZURi2dhEwU3MA6GZ6JYLX0sndReamfkjAx9Z9dLEsKHUHVFZ2KW5
oma6MJ/TVCd7eLKPvq/qpctLPta46sx6CFIAxcpFsoalbtKx4GhaUK743n0fNPHx6XiFDprOAbiZ
PyhM045cNsYr6lDdOMRj8e0owAxOW9NgDttSv6Pr12waF6E/DX0fm6i380qhFLGzIRyspkCsS+RV
68WzCnYiPxPjwyEjI+NwCCRjl2eJv/kqn52GPzAsbcy96iK3bJEylLQ3vVGPj/05PJ4cSLN9yyvL
iWvYmwDit1VVZTnBuJySMQKzUQKnmg+fTQKSDyUYQB727OMmWfmzVAX8OirEd4MCiRexynkpI+5b
OE79UKgwPCUay8y4bNcJ//39q2Dk29V/kIUNZ3alzMj0yiGqtQRdy/0Eqqy3SR0/p8p8LHeNdl14
fr8iItSudf4Dw6G2Xkr4oN9i4DEpyEdozr+sKKBQZ1PEMjZFOqkoVjSts4V7iUl/hIuYK5YsTrZ4
ulMVAk1eslxN8iwTs2U2OYr8fBXB7EV2LKMUuDu8mOOAzIBWE1PnTwAoLZYca9EmYvEML9Kht80O
ntWpSfogkVpJk+bk3yY2FCwUmL6uWcHS7lZKr2gQ3xWyR3V9PgYGB5w809jqQYLK1huljB4OX0QU
1luj1uHxOLPRMZixudYmDpAhcYXo6KzUf9lNalP2o+gwaGeqYjG7SpskGA/pGRxEf32N7e2/LO2u
z1YHpM1g242vgVBue6xfZifqxNCc6ma9COvVabb6cDx5/JLbtKbNwz2BOpjL1QPRLobG1WcdEuXw
Spzii3HWtRAU9H8Zg7KBHACTGrDN8TLoAzswM5vUXOqt62kJ6zjLqoSHt+CDt6rURbhnivc0Illp
+og2poF0QJiVbJhIdzHHx28rRTlRZEuRXO7jbNHyeMkQoPCwlQQDE3dI7ksRi86Gn8OHCdwfF5U8
pEqSkdPHovPPONZAFzJrKDLCCXb/f9EgXMwOam/t8Ihac/C6cIGjgEtXQlP3RYeRHOCpXA0fPA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F90864D145B550"
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
content-md5: GI3ynDBdG+SvxaP4OPo7iw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5c22f36f-b1d0-4e4e-a4ab-f329948b2f3c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-b656be4b-0a3c-0426-8142-5d7d3eedfdcc/test-blob-b02dab47-296e-2dd9-ada3-944746b2a88e?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
Content-Type: application/xml
x-ms-blob-if-none-match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f785f1ef-6c5a-4a4f-b972-d0f8da742810
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 24: GET /devstoreaccount1/test-container-b656be4b-0a3c-0426-8142-5d7d3eedfdcc/test-blob-b02dab47-296e-2dd9-ada3-944746b2a88e?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_25
x-ms-blob-if-none-match: "garbage"
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
x-ms-request-id: cfa69ca7-ea07-43a0-bd1d-f9506f82d502
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 25: DELETE /devstoreaccount1/test-container-b656be4b-0a3c-0426-8142-5d7d3eedfdcc?restype=container

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
x-ms-request-id: 3411de6d-68b6-4704-aaae-bc591a70c902
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-35727925-b906-8438-e247-4de6a441b0b8?restype=container

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
etag: "0x249EBB023D09E40"
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 34f9bf22-9bf8-47d1-9aad-293328e77317
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-35727925-b906-8438-e247-4de6a441b0b8/test-blob-2b891fb1-3da8-287d-1644-7d4e8e43937a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
OzbLQf1MnMcS018LqV/jT2so9z2E9JTn+0oewTvp9Z6z0qptdm+7ZILBGNTdcn62YS3iZktW9kai
40WzLdqLKd3BWNa0dtj7bJK6w9vACYjLaGANB45SXdxky5IpBzeoNe/2HBmnAepV5vm4mzJq4dq8
6MV5fiJObvr6UKtG0WVbEo3sye1vI2Z2uCCUmcKp+em4bB9yLrfNp60frbE/DhSUXYilfhjsTcRf
A8UBudU4UFfBjWVF6ePVHyE/T3W1N6kLADw5BHvQyx5aEivyy+7Y5lxZfYGvT3Okz173rf5Oqswb
9rmY/0zc8cJG6ta441QzZ2kZW7koW7HIlDQc2R4gC2hf1tQ0P+cQfIu+aWSd7OsJxEaUNU4S8psI
0GoXvxikJd5uWAyA/ieCCN4tavFMK6dIEhXXjNYZTeM5LG58+L1zGkSFLpTficUeEi1w5Iipu6XC
z60DzJkIVAsoRtK4BhAhuk+tx/wTaYhPuXqoqWlbj3DJuSkPcE6rfNqItkLyZQscTio5/POprmUk
sxMeX6qizbdi70zmEUkBAkohi7NFXVNujFo/IpN8HwrE6706jBwv5uiLkHa/Nj3gN/mohyOx3la/
sNNQY6sk5c9BIiaLxnYu8qTLuszdrlUdXuqZ05jnEg1ne9tI34M9ZqumfRMXVHGDepV/5iOJ4gJ9
MgTAixE3WhAZJEub5RIgjVMhNjBCBgl5FlkCZyvp3ZjZyq1/fNuZbyMC/jAl6JWCX1jQZ6zROyv7
R3S4NPLlL0azwRploRF4iMYNPwjYUy3DfwjSGXXrCI+BgzRm4TswHc7pciZ6Hb1HWN/mw/sjIvNH
9LTqExbQx7mK5B3dEaeK3SI67+AHSWJKi8GWBUSUXmBAH+yGRQm3Gats7zifaUY4W+bY6DMTP6tR
n4hVOsJ19oa8nPG6BJcZgtU1mlkpqiF6Xaldu3UtLeBBNKaBYd7o9/my481VfldPv2Vd3aRSKPRn
290YFzsQj24Rec/wlyH3TKNfdsdTJN9SDvsPz1A77wyxGYYB0OC+olNeRASIXidEZpAB8rEsE7b9
xgg/AMAe1YrCP32a9XzDodR09eDayrDTy2i/OvxahAbPAwrXfqGTQG56xR+qqXEUPlDduB7WI/tY
azVXXpuNZ7p3y/Fx6yMy4bRyYASQKSH3q/ysfczn+eAOfxNsO+HT7F1kMt5/olItq9dpZMP3x0ET
X7Oe4eruj9ERY2wPxaXTnnOmLPdDeAipftL0fpUcFrfRWNwtNQtzdaMMbT7mHeUxlsVPUJpK0Oer
9GIY+hE89Ey0PmzJpWlnM7dUNgrJw2HswujPzMUchoj0gkCpWnuR0HjyMd94aPBc6B3j9pnc4Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25BA31EEC113440"
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
content-md5: uY5DpI244CBKwd86Zje7mw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1d9a99cd-34f4-4ebe-ac68-3c37f3e27571
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-35727925-b906-8438-e247-4de6a441b0b8/test-blob-2b891fb1-3da8-287d-1644-7d4e8e43937a?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 372c0031-6c29-8627-97b7-e4d42328bed8
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25BA31EEC113440"
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-lease-id: 372c0031-6c29-8627-97b7-e4d42328bed8
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1208ef88-012f-4792-b595-27a34df23d4a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: PUT /devstoreaccount1/test-container-35727925-b906-8438-e247-4de6a441b0b8/test-blob-2b891fb1-3da8-287d-1644-7d4e8e43937a?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
Content-Type: application/xml
x-ms-lease-id: 372c0031-6c29-8627-97b7-e4d42328bed8
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 94169153-2a4d-47e6-9b7f-51472413b4d5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:58 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 30: GET /devstoreaccount1/test-container-35727925-b906-8438-e247-4de6a441b0b8/test-blob-2b891fb1-3da8-287d-1644-7d4e8e43937a?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_31
x-ms-lease-id: 372c0031-6c29-8627-97b7-e4d42328bed8
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
x-ms-request-id: cf3f74ba-7530-4133-b3c7-cd227e71eca5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:58 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 31: DELETE /devstoreaccount1/test-container-35727925-b906-8438-e247-4de6a441b0b8?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
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
x-ms-request-id: 57330c4f-5bd7-4aaa-9068-01250084bb31
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

