## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-14d7855f-a581-e22b-7885-913511b73626?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow
now: 2026-11-12T00:43:49.3761629+00:00

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
etag: "0x206AB4EF94B6400"
last-modified: Thu, 12 Nov 2026 00:43:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 87338efa-c38c-4e24-9d1f-38189c4afa3d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-14d7855f-a581-e22b-7885-913511b73626/foo

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
vYvZd3C46M7TNs7Pgh2rrDR5eYMyg7lXyfBq3+oI9Y/jkTdEP3A6pp0JQUvWW19b2uUAlz6z8zrR
ga6ATQnjykA/6/DmZmzEP9LmKUJugG2QDgQECF5RL579c73BuliTJXYKl29udXN4PFdrzcr3YgBB
7z8E3sLi7rxS6POvAoV5UgPMZOn9IpmRjMsG5WLUBRC9gMoZj0azJ6izHIx/yTrS8nvGK/4WQ82m
c1L23AlZfuPj8oG6YMK8GDxBSQYMEcORM/PmDdoRpj39cxz0vEufWZ2pnNe4F5G4CRLC1fnHmWGP
ZagVc3EJ0UtEveymyFvwoe9oY3Tr2BthLgPHT9BDNtm6ZFejieYsoMuLdFqlEUG20TQKXjbto4yM
tERtQYJ7AYYT7GMETRcIPMOpYGTAvBzCEX6bOdejzcHLFtWivl5JEHLUkSXdsoMdASJzQ0Mny/go
qzAD38iucB6iOTZBZn1kYFDx7Cr25F77fje1L4l9o0vceRIuRTCqJSEHO3lM25qkDuPzNd/OMcbR
CGCQ+UCVJJXrZOxqNhofRsYI76nlrqOdECGmim5rDkdLXD3PGizhchfkYHatOdjI0+4YxUId61m9
8+ge7pkngFalHtndUCyZJn2SAU4s79dI3rd/U0kFLnDjESZEwoN9vOAgCBr/6oPCfp7Fi+oLkAQR
1hDipywMn/Bo+j4FVWT5FERtDOa8SfM0vdSqQKKG14EiM+xzmxWzE2gqlu9EvCk6y3alnYQdVYwc
rupYYl9N4SK94yJ3hnkvuvl9krID7wGrb3Qs4Dr9Bd5gVuwqW7AJ3LXNh9gHw0T8duOKn8PZGL7p
rfLqIQHowN5EFi+MBF5IdLX9Nmgoo6wwL2pWcmUbhj4uQK2+Hrq05Mf6wqwUb3GEQisN3OJWwQlG
uvGWkk55KZDxXsSxilX6SVGgLeH/G7/40S85Dapb13+kd2PJHVJ5gZkcIhGt07jWEpKQtZMoR58y
ncAePxvllYdEDRLxMSv/J6xH4/iuS/52Y/oXyyHsezDEln+RWkF+No2JaMal5OFmkI7m4GSng1LC
p9wgzsplWJHiLZqsbc1ryaxrJOI30H4ZsDqTBZrMHRMtzrJkXWjCIxA0w7dGuiLAexe3O15vitdd
Bh2P0lL2Fg+Hf58aBmxEqAHRAw3H0/YY0oqDFOG0vUTbBlZKM1G9PaynvjqDpXSrcpNdnYfJljMn
dwDIcwEu0sJbPwAV+XSwFMVhIBS7lCwV2KJOVh+8EXAjI7xQ9cqqeOt4KGZ0lXgerYnCaHUea+LT
sptf33yini2P8tW4Xx76tqcoQmvGoUIpMKmV+qn6BLjZfUIvSphv1Yk45KOiZU5rx7HN9Sh2DA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26C4EE1F61AD460"
last-modified: Thu, 12 Nov 2026 00:43:49 GMT
content-md5: qijI7+TCaCbZTbuvstgkVw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 972bd778-0956-4fe1-abc1-662ae98c0b9e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-14d7855f-a581-e22b-7885-913511b73626/bar

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
vYvZd3C46M7TNs7Pgh2rrDR5eYMyg7lXyfBq3+oI9Y/jkTdEP3A6pp0JQUvWW19b2uUAlz6z8zrR
ga6ATQnjykA/6/DmZmzEP9LmKUJugG2QDgQECF5RL579c73BuliTJXYKl29udXN4PFdrzcr3YgBB
7z8E3sLi7rxS6POvAoV5UgPMZOn9IpmRjMsG5WLUBRC9gMoZj0azJ6izHIx/yTrS8nvGK/4WQ82m
c1L23AlZfuPj8oG6YMK8GDxBSQYMEcORM/PmDdoRpj39cxz0vEufWZ2pnNe4F5G4CRLC1fnHmWGP
ZagVc3EJ0UtEveymyFvwoe9oY3Tr2BthLgPHT9BDNtm6ZFejieYsoMuLdFqlEUG20TQKXjbto4yM
tERtQYJ7AYYT7GMETRcIPMOpYGTAvBzCEX6bOdejzcHLFtWivl5JEHLUkSXdsoMdASJzQ0Mny/go
qzAD38iucB6iOTZBZn1kYFDx7Cr25F77fje1L4l9o0vceRIuRTCqJSEHO3lM25qkDuPzNd/OMcbR
CGCQ+UCVJJXrZOxqNhofRsYI76nlrqOdECGmim5rDkdLXD3PGizhchfkYHatOdjI0+4YxUId61m9
8+ge7pkngFalHtndUCyZJn2SAU4s79dI3rd/U0kFLnDjESZEwoN9vOAgCBr/6oPCfp7Fi+oLkAQR
1hDipywMn/Bo+j4FVWT5FERtDOa8SfM0vdSqQKKG14EiM+xzmxWzE2gqlu9EvCk6y3alnYQdVYwc
rupYYl9N4SK94yJ3hnkvuvl9krID7wGrb3Qs4Dr9Bd5gVuwqW7AJ3LXNh9gHw0T8duOKn8PZGL7p
rfLqIQHowN5EFi+MBF5IdLX9Nmgoo6wwL2pWcmUbhj4uQK2+Hrq05Mf6wqwUb3GEQisN3OJWwQlG
uvGWkk55KZDxXsSxilX6SVGgLeH/G7/40S85Dapb13+kd2PJHVJ5gZkcIhGt07jWEpKQtZMoR58y
ncAePxvllYdEDRLxMSv/J6xH4/iuS/52Y/oXyyHsezDEln+RWkF+No2JaMal5OFmkI7m4GSng1LC
p9wgzsplWJHiLZqsbc1ryaxrJOI30H4ZsDqTBZrMHRMtzrJkXWjCIxA0w7dGuiLAexe3O15vitdd
Bh2P0lL2Fg+Hf58aBmxEqAHRAw3H0/YY0oqDFOG0vUTbBlZKM1G9PaynvjqDpXSrcpNdnYfJljMn
dwDIcwEu0sJbPwAV+XSwFMVhIBS7lCwV2KJOVh+8EXAjI7xQ9cqqeOt4KGZ0lXgerYnCaHUea+LT
sptf33yini2P8tW4Xx76tqcoQmvGoUIpMKmV+qn6BLjZfUIvSphv1Yk45KOiZU5rx7HN9Sh2DA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D0D6623901FDB0"
last-modified: Thu, 12 Nov 2026 00:43:49 GMT
content-md5: qijI7+TCaCbZTbuvstgkVw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a8a122ed-86bc-4b0c-b3af-1cfb42dcbccb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-14d7855f-a581-e22b-7885-913511b73626/baz

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
vYvZd3C46M7TNs7Pgh2rrDR5eYMyg7lXyfBq3+oI9Y/jkTdEP3A6pp0JQUvWW19b2uUAlz6z8zrR
ga6ATQnjykA/6/DmZmzEP9LmKUJugG2QDgQECF5RL579c73BuliTJXYKl29udXN4PFdrzcr3YgBB
7z8E3sLi7rxS6POvAoV5UgPMZOn9IpmRjMsG5WLUBRC9gMoZj0azJ6izHIx/yTrS8nvGK/4WQ82m
c1L23AlZfuPj8oG6YMK8GDxBSQYMEcORM/PmDdoRpj39cxz0vEufWZ2pnNe4F5G4CRLC1fnHmWGP
ZagVc3EJ0UtEveymyFvwoe9oY3Tr2BthLgPHT9BDNtm6ZFejieYsoMuLdFqlEUG20TQKXjbto4yM
tERtQYJ7AYYT7GMETRcIPMOpYGTAvBzCEX6bOdejzcHLFtWivl5JEHLUkSXdsoMdASJzQ0Mny/go
qzAD38iucB6iOTZBZn1kYFDx7Cr25F77fje1L4l9o0vceRIuRTCqJSEHO3lM25qkDuPzNd/OMcbR
CGCQ+UCVJJXrZOxqNhofRsYI76nlrqOdECGmim5rDkdLXD3PGizhchfkYHatOdjI0+4YxUId61m9
8+ge7pkngFalHtndUCyZJn2SAU4s79dI3rd/U0kFLnDjESZEwoN9vOAgCBr/6oPCfp7Fi+oLkAQR
1hDipywMn/Bo+j4FVWT5FERtDOa8SfM0vdSqQKKG14EiM+xzmxWzE2gqlu9EvCk6y3alnYQdVYwc
rupYYl9N4SK94yJ3hnkvuvl9krID7wGrb3Qs4Dr9Bd5gVuwqW7AJ3LXNh9gHw0T8duOKn8PZGL7p
rfLqIQHowN5EFi+MBF5IdLX9Nmgoo6wwL2pWcmUbhj4uQK2+Hrq05Mf6wqwUb3GEQisN3OJWwQlG
uvGWkk55KZDxXsSxilX6SVGgLeH/G7/40S85Dapb13+kd2PJHVJ5gZkcIhGt07jWEpKQtZMoR58y
ncAePxvllYdEDRLxMSv/J6xH4/iuS/52Y/oXyyHsezDEln+RWkF+No2JaMal5OFmkI7m4GSng1LC
p9wgzsplWJHiLZqsbc1ryaxrJOI30H4ZsDqTBZrMHRMtzrJkXWjCIxA0w7dGuiLAexe3O15vitdd
Bh2P0lL2Fg+Hf58aBmxEqAHRAw3H0/YY0oqDFOG0vUTbBlZKM1G9PaynvjqDpXSrcpNdnYfJljMn
dwDIcwEu0sJbPwAV+XSwFMVhIBS7lCwV2KJOVh+8EXAjI7xQ9cqqeOt4KGZ0lXgerYnCaHUea+LT
sptf33yini2P8tW4Xx76tqcoQmvGoUIpMKmV+qn6BLjZfUIvSphv1Yk45KOiZU5rx7HN9Sh2DA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2634B2E7E78AFE0"
last-modified: Thu, 12 Nov 2026 00:43:49 GMT
content-md5: qijI7+TCaCbZTbuvstgkVw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7f640aeb-23bc-4a27-a5cf-0d4c7bba3803
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-14d7855f-a581-e22b-7885-913511b73626/foo/foo

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
vYvZd3C46M7TNs7Pgh2rrDR5eYMyg7lXyfBq3+oI9Y/jkTdEP3A6pp0JQUvWW19b2uUAlz6z8zrR
ga6ATQnjykA/6/DmZmzEP9LmKUJugG2QDgQECF5RL579c73BuliTJXYKl29udXN4PFdrzcr3YgBB
7z8E3sLi7rxS6POvAoV5UgPMZOn9IpmRjMsG5WLUBRC9gMoZj0azJ6izHIx/yTrS8nvGK/4WQ82m
c1L23AlZfuPj8oG6YMK8GDxBSQYMEcORM/PmDdoRpj39cxz0vEufWZ2pnNe4F5G4CRLC1fnHmWGP
ZagVc3EJ0UtEveymyFvwoe9oY3Tr2BthLgPHT9BDNtm6ZFejieYsoMuLdFqlEUG20TQKXjbto4yM
tERtQYJ7AYYT7GMETRcIPMOpYGTAvBzCEX6bOdejzcHLFtWivl5JEHLUkSXdsoMdASJzQ0Mny/go
qzAD38iucB6iOTZBZn1kYFDx7Cr25F77fje1L4l9o0vceRIuRTCqJSEHO3lM25qkDuPzNd/OMcbR
CGCQ+UCVJJXrZOxqNhofRsYI76nlrqOdECGmim5rDkdLXD3PGizhchfkYHatOdjI0+4YxUId61m9
8+ge7pkngFalHtndUCyZJn2SAU4s79dI3rd/U0kFLnDjESZEwoN9vOAgCBr/6oPCfp7Fi+oLkAQR
1hDipywMn/Bo+j4FVWT5FERtDOa8SfM0vdSqQKKG14EiM+xzmxWzE2gqlu9EvCk6y3alnYQdVYwc
rupYYl9N4SK94yJ3hnkvuvl9krID7wGrb3Qs4Dr9Bd5gVuwqW7AJ3LXNh9gHw0T8duOKn8PZGL7p
rfLqIQHowN5EFi+MBF5IdLX9Nmgoo6wwL2pWcmUbhj4uQK2+Hrq05Mf6wqwUb3GEQisN3OJWwQlG
uvGWkk55KZDxXsSxilX6SVGgLeH/G7/40S85Dapb13+kd2PJHVJ5gZkcIhGt07jWEpKQtZMoR58y
ncAePxvllYdEDRLxMSv/J6xH4/iuS/52Y/oXyyHsezDEln+RWkF+No2JaMal5OFmkI7m4GSng1LC
p9wgzsplWJHiLZqsbc1ryaxrJOI30H4ZsDqTBZrMHRMtzrJkXWjCIxA0w7dGuiLAexe3O15vitdd
Bh2P0lL2Fg+Hf58aBmxEqAHRAw3H0/YY0oqDFOG0vUTbBlZKM1G9PaynvjqDpXSrcpNdnYfJljMn
dwDIcwEu0sJbPwAV+XSwFMVhIBS7lCwV2KJOVh+8EXAjI7xQ9cqqeOt4KGZ0lXgerYnCaHUea+LT
sptf33yini2P8tW4Xx76tqcoQmvGoUIpMKmV+qn6BLjZfUIvSphv1Yk45KOiZU5rx7HN9Sh2DA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CBC82D8D310FC0"
last-modified: Thu, 12 Nov 2026 00:43:49 GMT
content-md5: qijI7+TCaCbZTbuvstgkVw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9b146fbe-5ef7-4475-a675-4dd53d0ca409
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-14d7855f-a581-e22b-7885-913511b73626/foo/bar

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
vYvZd3C46M7TNs7Pgh2rrDR5eYMyg7lXyfBq3+oI9Y/jkTdEP3A6pp0JQUvWW19b2uUAlz6z8zrR
ga6ATQnjykA/6/DmZmzEP9LmKUJugG2QDgQECF5RL579c73BuliTJXYKl29udXN4PFdrzcr3YgBB
7z8E3sLi7rxS6POvAoV5UgPMZOn9IpmRjMsG5WLUBRC9gMoZj0azJ6izHIx/yTrS8nvGK/4WQ82m
c1L23AlZfuPj8oG6YMK8GDxBSQYMEcORM/PmDdoRpj39cxz0vEufWZ2pnNe4F5G4CRLC1fnHmWGP
ZagVc3EJ0UtEveymyFvwoe9oY3Tr2BthLgPHT9BDNtm6ZFejieYsoMuLdFqlEUG20TQKXjbto4yM
tERtQYJ7AYYT7GMETRcIPMOpYGTAvBzCEX6bOdejzcHLFtWivl5JEHLUkSXdsoMdASJzQ0Mny/go
qzAD38iucB6iOTZBZn1kYFDx7Cr25F77fje1L4l9o0vceRIuRTCqJSEHO3lM25qkDuPzNd/OMcbR
CGCQ+UCVJJXrZOxqNhofRsYI76nlrqOdECGmim5rDkdLXD3PGizhchfkYHatOdjI0+4YxUId61m9
8+ge7pkngFalHtndUCyZJn2SAU4s79dI3rd/U0kFLnDjESZEwoN9vOAgCBr/6oPCfp7Fi+oLkAQR
1hDipywMn/Bo+j4FVWT5FERtDOa8SfM0vdSqQKKG14EiM+xzmxWzE2gqlu9EvCk6y3alnYQdVYwc
rupYYl9N4SK94yJ3hnkvuvl9krID7wGrb3Qs4Dr9Bd5gVuwqW7AJ3LXNh9gHw0T8duOKn8PZGL7p
rfLqIQHowN5EFi+MBF5IdLX9Nmgoo6wwL2pWcmUbhj4uQK2+Hrq05Mf6wqwUb3GEQisN3OJWwQlG
uvGWkk55KZDxXsSxilX6SVGgLeH/G7/40S85Dapb13+kd2PJHVJ5gZkcIhGt07jWEpKQtZMoR58y
ncAePxvllYdEDRLxMSv/J6xH4/iuS/52Y/oXyyHsezDEln+RWkF+No2JaMal5OFmkI7m4GSng1LC
p9wgzsplWJHiLZqsbc1ryaxrJOI30H4ZsDqTBZrMHRMtzrJkXWjCIxA0w7dGuiLAexe3O15vitdd
Bh2P0lL2Fg+Hf58aBmxEqAHRAw3H0/YY0oqDFOG0vUTbBlZKM1G9PaynvjqDpXSrcpNdnYfJljMn
dwDIcwEu0sJbPwAV+XSwFMVhIBS7lCwV2KJOVh+8EXAjI7xQ9cqqeOt4KGZ0lXgerYnCaHUea+LT
sptf33yini2P8tW4Xx76tqcoQmvGoUIpMKmV+qn6BLjZfUIvSphv1Yk45KOiZU5rx7HN9Sh2DA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CCEAAE3CEDDBE0"
last-modified: Thu, 12 Nov 2026 00:43:49 GMT
content-md5: qijI7+TCaCbZTbuvstgkVw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5c33bfcc-710e-4e6a-ba8a-e9aa53df1f2c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-14d7855f-a581-e22b-7885-913511b73626/baz/foo

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
vYvZd3C46M7TNs7Pgh2rrDR5eYMyg7lXyfBq3+oI9Y/jkTdEP3A6pp0JQUvWW19b2uUAlz6z8zrR
ga6ATQnjykA/6/DmZmzEP9LmKUJugG2QDgQECF5RL579c73BuliTJXYKl29udXN4PFdrzcr3YgBB
7z8E3sLi7rxS6POvAoV5UgPMZOn9IpmRjMsG5WLUBRC9gMoZj0azJ6izHIx/yTrS8nvGK/4WQ82m
c1L23AlZfuPj8oG6YMK8GDxBSQYMEcORM/PmDdoRpj39cxz0vEufWZ2pnNe4F5G4CRLC1fnHmWGP
ZagVc3EJ0UtEveymyFvwoe9oY3Tr2BthLgPHT9BDNtm6ZFejieYsoMuLdFqlEUG20TQKXjbto4yM
tERtQYJ7AYYT7GMETRcIPMOpYGTAvBzCEX6bOdejzcHLFtWivl5JEHLUkSXdsoMdASJzQ0Mny/go
qzAD38iucB6iOTZBZn1kYFDx7Cr25F77fje1L4l9o0vceRIuRTCqJSEHO3lM25qkDuPzNd/OMcbR
CGCQ+UCVJJXrZOxqNhofRsYI76nlrqOdECGmim5rDkdLXD3PGizhchfkYHatOdjI0+4YxUId61m9
8+ge7pkngFalHtndUCyZJn2SAU4s79dI3rd/U0kFLnDjESZEwoN9vOAgCBr/6oPCfp7Fi+oLkAQR
1hDipywMn/Bo+j4FVWT5FERtDOa8SfM0vdSqQKKG14EiM+xzmxWzE2gqlu9EvCk6y3alnYQdVYwc
rupYYl9N4SK94yJ3hnkvuvl9krID7wGrb3Qs4Dr9Bd5gVuwqW7AJ3LXNh9gHw0T8duOKn8PZGL7p
rfLqIQHowN5EFi+MBF5IdLX9Nmgoo6wwL2pWcmUbhj4uQK2+Hrq05Mf6wqwUb3GEQisN3OJWwQlG
uvGWkk55KZDxXsSxilX6SVGgLeH/G7/40S85Dapb13+kd2PJHVJ5gZkcIhGt07jWEpKQtZMoR58y
ncAePxvllYdEDRLxMSv/J6xH4/iuS/52Y/oXyyHsezDEln+RWkF+No2JaMal5OFmkI7m4GSng1LC
p9wgzsplWJHiLZqsbc1ryaxrJOI30H4ZsDqTBZrMHRMtzrJkXWjCIxA0w7dGuiLAexe3O15vitdd
Bh2P0lL2Fg+Hf58aBmxEqAHRAw3H0/YY0oqDFOG0vUTbBlZKM1G9PaynvjqDpXSrcpNdnYfJljMn
dwDIcwEu0sJbPwAV+XSwFMVhIBS7lCwV2KJOVh+8EXAjI7xQ9cqqeOt4KGZ0lXgerYnCaHUea+LT
sptf33yini2P8tW4Xx76tqcoQmvGoUIpMKmV+qn6BLjZfUIvSphv1Yk45KOiZU5rx7HN9Sh2DA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C1B3ED372BD1E0"
last-modified: Thu, 12 Nov 2026 00:43:49 GMT
content-md5: qijI7+TCaCbZTbuvstgkVw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce3f331f-d295-4b31-b573-472b6170de9c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-14d7855f-a581-e22b-7885-913511b73626/baz/foo/bar

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
vYvZd3C46M7TNs7Pgh2rrDR5eYMyg7lXyfBq3+oI9Y/jkTdEP3A6pp0JQUvWW19b2uUAlz6z8zrR
ga6ATQnjykA/6/DmZmzEP9LmKUJugG2QDgQECF5RL579c73BuliTJXYKl29udXN4PFdrzcr3YgBB
7z8E3sLi7rxS6POvAoV5UgPMZOn9IpmRjMsG5WLUBRC9gMoZj0azJ6izHIx/yTrS8nvGK/4WQ82m
c1L23AlZfuPj8oG6YMK8GDxBSQYMEcORM/PmDdoRpj39cxz0vEufWZ2pnNe4F5G4CRLC1fnHmWGP
ZagVc3EJ0UtEveymyFvwoe9oY3Tr2BthLgPHT9BDNtm6ZFejieYsoMuLdFqlEUG20TQKXjbto4yM
tERtQYJ7AYYT7GMETRcIPMOpYGTAvBzCEX6bOdejzcHLFtWivl5JEHLUkSXdsoMdASJzQ0Mny/go
qzAD38iucB6iOTZBZn1kYFDx7Cr25F77fje1L4l9o0vceRIuRTCqJSEHO3lM25qkDuPzNd/OMcbR
CGCQ+UCVJJXrZOxqNhofRsYI76nlrqOdECGmim5rDkdLXD3PGizhchfkYHatOdjI0+4YxUId61m9
8+ge7pkngFalHtndUCyZJn2SAU4s79dI3rd/U0kFLnDjESZEwoN9vOAgCBr/6oPCfp7Fi+oLkAQR
1hDipywMn/Bo+j4FVWT5FERtDOa8SfM0vdSqQKKG14EiM+xzmxWzE2gqlu9EvCk6y3alnYQdVYwc
rupYYl9N4SK94yJ3hnkvuvl9krID7wGrb3Qs4Dr9Bd5gVuwqW7AJ3LXNh9gHw0T8duOKn8PZGL7p
rfLqIQHowN5EFi+MBF5IdLX9Nmgoo6wwL2pWcmUbhj4uQK2+Hrq05Mf6wqwUb3GEQisN3OJWwQlG
uvGWkk55KZDxXsSxilX6SVGgLeH/G7/40S85Dapb13+kd2PJHVJ5gZkcIhGt07jWEpKQtZMoR58y
ncAePxvllYdEDRLxMSv/J6xH4/iuS/52Y/oXyyHsezDEln+RWkF+No2JaMal5OFmkI7m4GSng1LC
p9wgzsplWJHiLZqsbc1ryaxrJOI30H4ZsDqTBZrMHRMtzrJkXWjCIxA0w7dGuiLAexe3O15vitdd
Bh2P0lL2Fg+Hf58aBmxEqAHRAw3H0/YY0oqDFOG0vUTbBlZKM1G9PaynvjqDpXSrcpNdnYfJljMn
dwDIcwEu0sJbPwAV+XSwFMVhIBS7lCwV2KJOVh+8EXAjI7xQ9cqqeOt4KGZ0lXgerYnCaHUea+LT
sptf33yini2P8tW4Xx76tqcoQmvGoUIpMKmV+qn6BLjZfUIvSphv1Yk45KOiZU5rx7HN9Sh2DA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F6CB88FB909AA0"
last-modified: Thu, 12 Nov 2026 00:43:49 GMT
content-md5: qijI7+TCaCbZTbuvstgkVw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 676822f4-7c2c-4d41-8047-41a88f9ac94d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-14d7855f-a581-e22b-7885-913511b73626/baz/bar/foo

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
vYvZd3C46M7TNs7Pgh2rrDR5eYMyg7lXyfBq3+oI9Y/jkTdEP3A6pp0JQUvWW19b2uUAlz6z8zrR
ga6ATQnjykA/6/DmZmzEP9LmKUJugG2QDgQECF5RL579c73BuliTJXYKl29udXN4PFdrzcr3YgBB
7z8E3sLi7rxS6POvAoV5UgPMZOn9IpmRjMsG5WLUBRC9gMoZj0azJ6izHIx/yTrS8nvGK/4WQ82m
c1L23AlZfuPj8oG6YMK8GDxBSQYMEcORM/PmDdoRpj39cxz0vEufWZ2pnNe4F5G4CRLC1fnHmWGP
ZagVc3EJ0UtEveymyFvwoe9oY3Tr2BthLgPHT9BDNtm6ZFejieYsoMuLdFqlEUG20TQKXjbto4yM
tERtQYJ7AYYT7GMETRcIPMOpYGTAvBzCEX6bOdejzcHLFtWivl5JEHLUkSXdsoMdASJzQ0Mny/go
qzAD38iucB6iOTZBZn1kYFDx7Cr25F77fje1L4l9o0vceRIuRTCqJSEHO3lM25qkDuPzNd/OMcbR
CGCQ+UCVJJXrZOxqNhofRsYI76nlrqOdECGmim5rDkdLXD3PGizhchfkYHatOdjI0+4YxUId61m9
8+ge7pkngFalHtndUCyZJn2SAU4s79dI3rd/U0kFLnDjESZEwoN9vOAgCBr/6oPCfp7Fi+oLkAQR
1hDipywMn/Bo+j4FVWT5FERtDOa8SfM0vdSqQKKG14EiM+xzmxWzE2gqlu9EvCk6y3alnYQdVYwc
rupYYl9N4SK94yJ3hnkvuvl9krID7wGrb3Qs4Dr9Bd5gVuwqW7AJ3LXNh9gHw0T8duOKn8PZGL7p
rfLqIQHowN5EFi+MBF5IdLX9Nmgoo6wwL2pWcmUbhj4uQK2+Hrq05Mf6wqwUb3GEQisN3OJWwQlG
uvGWkk55KZDxXsSxilX6SVGgLeH/G7/40S85Dapb13+kd2PJHVJ5gZkcIhGt07jWEpKQtZMoR58y
ncAePxvllYdEDRLxMSv/J6xH4/iuS/52Y/oXyyHsezDEln+RWkF+No2JaMal5OFmkI7m4GSng1LC
p9wgzsplWJHiLZqsbc1ryaxrJOI30H4ZsDqTBZrMHRMtzrJkXWjCIxA0w7dGuiLAexe3O15vitdd
Bh2P0lL2Fg+Hf58aBmxEqAHRAw3H0/YY0oqDFOG0vUTbBlZKM1G9PaynvjqDpXSrcpNdnYfJljMn
dwDIcwEu0sJbPwAV+XSwFMVhIBS7lCwV2KJOVh+8EXAjI7xQ9cqqeOt4KGZ0lXgerYnCaHUea+LT
sptf33yini2P8tW4Xx76tqcoQmvGoUIpMKmV+qn6BLjZfUIvSphv1Yk45KOiZU5rx7HN9Sh2DA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C7A83FEA878ED0"
last-modified: Thu, 12 Nov 2026 00:43:49 GMT
content-md5: qijI7+TCaCbZTbuvstgkVw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a409e848-90ae-4beb-94f8-2241ec29f0cf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-14d7855f-a581-e22b-7885-913511b73626/foo/foo?comp=metadata

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
etag: "0x21CA1AD829A9580"
last-modified: Thu, 12 Nov 2026 00:43:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 386b6d45-1281-4b90-befc-ac213177f301
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-14d7855f-a581-e22b-7885-913511b73626?restype=container&comp=list

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
x-ms-request-id: 4fdb6b0f-2d67-4393-a899-f14f37d4985d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:49 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-14d7855f-a581-e22b-7885-913511b73626"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:49 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:49 GMT</Last-Modified><Etag>0x1D0D6623901FDB0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>qijI7+TCaCbZTbuvstgkVw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:49 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:49 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:49 GMT</Last-Modified><Etag>0x2634B2E7E78AFE0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>qijI7+TCaCbZTbuvstgkVw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:49 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/bar/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:49 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:49 GMT</Last-Modified><Etag>0x1C7A83FEA878ED0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>qijI7+TCaCbZTbuvstgkVw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:49 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:49 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:49 GMT</Last-Modified><Etag>0x1C1B3ED372BD1E0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>qijI7+TCaCbZTbuvstgkVw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:49 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:49 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:49 GMT</Last-Modified><Etag>0x1F6CB88FB909AA0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>qijI7+TCaCbZTbuvstgkVw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:49 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:49 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:49 GMT</Last-Modified><Etag>0x26C4EE1F61AD460</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>qijI7+TCaCbZTbuvstgkVw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:49 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:49 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:49 GMT</Last-Modified><Etag>0x1CCEAAE3CEDDBE0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>qijI7+TCaCbZTbuvstgkVw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:49 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:49 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:49 GMT</Last-Modified><Etag>0x21CA1AD829A9580</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>qijI7+TCaCbZTbuvstgkVw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:49 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-14d7855f-a581-e22b-7885-913511b73626?restype=container

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
x-ms-request-id: d4ee2f59-8281-4cb7-9032-8129106c94f5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

