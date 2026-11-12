## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1a66289c-006a-d2b1-22c0-e201bce6caea?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_Prefix
now: 2026-11-12T00:45:04.5851890+00:00

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
etag: "0x22195C6D92BCF80"
last-modified: Thu, 12 Nov 2026 00:45:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 424f1f54-3245-4593-86bd-98f939932ef4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1a66289c-006a-d2b1-22c0-e201bce6caea/foo

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
mCTDL88PuYudxn/3FWywHCdBDdH90RO+u5cw8+fQsjFToBLMJc31jG/bfKSBury1EMbae9j47MYR
BHM338WjzBNNo3RZ5PZZS4FiIlRuPQHae+Mg9jdYW7RLuyBavaypN7CQMxZHWyvPgC9Xlslyosdx
XGTig9Xb9UjADSnW/43UuOuj3Qnrkx+3UXUIAcXq2RhZ6GBIx7TatT7Nh00C+YChgt3ezsS9hslE
KzFf0/OC1TQQfRcsi/E2yCjLHQvStFj1Zn/nDApUm2GWBJuCe+JKS7IZ8ntpdPbspwab8mi+cnfZ
amx0m8gpu+K1lodVtE1GgNJZuMHcjPGI+2QEuKj42JIkqRB11q/p7zaZs95vlvO4VXKWZbm1/N56
659kJQM5vL30MQo80KoicMmKQtgTGGRxTGM2YnPYbqwy+uoPhckzX/YhemToe4TIdPTvKrkFZ9M7
8tmfA1pKHMJeCtW/EusAV+Pi8Z3/iNDebu5+6UPyLZMX1JLwk1yb116iinGvCGEJ79PWInU1O2kJ
wZVsyzJ+a91CqD5YD8OGRho/Xf5eLmWMdPlwGwod4Zko59HGLwssIx6UbF8jsd8QUNtb9t1qqpIv
31c4Dk/SJcakLyjxvxcPEjrgysIFacMaYMsuwuu7vT0/l0+08xTOwUeYfoG3HpDES+Ojit/QKXWT
Hq6EpGPb6XLrsijHWh8mEQh7betCYkE7anYHGDNdbm3aINRlSh3jvZUPzGxn/PDDfXjXVbyKUbxt
STnt1NE+jUO77TpKwMfrl69VMpXV026FQ5q6hRmwT88Y+AHk9ujD0D4orA62ebyx7L0MNB4mmHXL
Z5A2hAgqCp5qMsjGB6DHkWJWrCdfzsreCJlboxqw8WCLGY5YjUw2/qFwS0b06+QdRaK8z+tNa5nF
WHtuzmeDukBnOu0SbgQWIK6G74KD6R20Pl539CF0Pa31kjXQyC867ZEFjbD2C9eepa88x3sXQW9d
uZAIC8Uf8v1AHNvORVh/TALwflxtvTOG2U5yOHYx3VDGcg6eMeHM5pqytu77z19XvHt5JsMS8Ptd
gTJ2rLqHDj+KCNNJ4RogJJfCugdFiwnuG3v6uLeNs4ITQa+vVTnfK6ivcMeMDdtgWQErUDX0GPYo
iJE+jFWH/VRRNZ9rcc9e4o5elRpCYg2gml+1YWJMHym4hs2noZ9SJ3NyOtc79OcyzW6mloLc5iWE
nvH20pvyBRZ2suoCtkDvC26mzyc1ZKZ3g5TzpYim3J+nIwOuW1XYfzXBxUH8LxYtt4oTNRf9TjlL
f04H/l+Nz9ZLWpI9Qa8Zzk/ydJ5kelN9xe3+k6eIqtTJYtwG0IHVM/VrsdWD8Hba+mbHCtqa5g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EFC1C55E139DA0"
last-modified: Thu, 12 Nov 2026 00:45:04 GMT
content-md5: kPKLnOuHRgHkNxsw3vCk5w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 220e9f57-1e55-4198-b574-aa082ad17649
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-1a66289c-006a-d2b1-22c0-e201bce6caea/bar

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
mCTDL88PuYudxn/3FWywHCdBDdH90RO+u5cw8+fQsjFToBLMJc31jG/bfKSBury1EMbae9j47MYR
BHM338WjzBNNo3RZ5PZZS4FiIlRuPQHae+Mg9jdYW7RLuyBavaypN7CQMxZHWyvPgC9Xlslyosdx
XGTig9Xb9UjADSnW/43UuOuj3Qnrkx+3UXUIAcXq2RhZ6GBIx7TatT7Nh00C+YChgt3ezsS9hslE
KzFf0/OC1TQQfRcsi/E2yCjLHQvStFj1Zn/nDApUm2GWBJuCe+JKS7IZ8ntpdPbspwab8mi+cnfZ
amx0m8gpu+K1lodVtE1GgNJZuMHcjPGI+2QEuKj42JIkqRB11q/p7zaZs95vlvO4VXKWZbm1/N56
659kJQM5vL30MQo80KoicMmKQtgTGGRxTGM2YnPYbqwy+uoPhckzX/YhemToe4TIdPTvKrkFZ9M7
8tmfA1pKHMJeCtW/EusAV+Pi8Z3/iNDebu5+6UPyLZMX1JLwk1yb116iinGvCGEJ79PWInU1O2kJ
wZVsyzJ+a91CqD5YD8OGRho/Xf5eLmWMdPlwGwod4Zko59HGLwssIx6UbF8jsd8QUNtb9t1qqpIv
31c4Dk/SJcakLyjxvxcPEjrgysIFacMaYMsuwuu7vT0/l0+08xTOwUeYfoG3HpDES+Ojit/QKXWT
Hq6EpGPb6XLrsijHWh8mEQh7betCYkE7anYHGDNdbm3aINRlSh3jvZUPzGxn/PDDfXjXVbyKUbxt
STnt1NE+jUO77TpKwMfrl69VMpXV026FQ5q6hRmwT88Y+AHk9ujD0D4orA62ebyx7L0MNB4mmHXL
Z5A2hAgqCp5qMsjGB6DHkWJWrCdfzsreCJlboxqw8WCLGY5YjUw2/qFwS0b06+QdRaK8z+tNa5nF
WHtuzmeDukBnOu0SbgQWIK6G74KD6R20Pl539CF0Pa31kjXQyC867ZEFjbD2C9eepa88x3sXQW9d
uZAIC8Uf8v1AHNvORVh/TALwflxtvTOG2U5yOHYx3VDGcg6eMeHM5pqytu77z19XvHt5JsMS8Ptd
gTJ2rLqHDj+KCNNJ4RogJJfCugdFiwnuG3v6uLeNs4ITQa+vVTnfK6ivcMeMDdtgWQErUDX0GPYo
iJE+jFWH/VRRNZ9rcc9e4o5elRpCYg2gml+1YWJMHym4hs2noZ9SJ3NyOtc79OcyzW6mloLc5iWE
nvH20pvyBRZ2suoCtkDvC26mzyc1ZKZ3g5TzpYim3J+nIwOuW1XYfzXBxUH8LxYtt4oTNRf9TjlL
f04H/l+Nz9ZLWpI9Qa8Zzk/ydJ5kelN9xe3+k6eIqtTJYtwG0IHVM/VrsdWD8Hba+mbHCtqa5g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D92B76385036A0"
last-modified: Thu, 12 Nov 2026 00:45:04 GMT
content-md5: kPKLnOuHRgHkNxsw3vCk5w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fe901724-6a17-42f9-b80b-c47bd829d7be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-1a66289c-006a-d2b1-22c0-e201bce6caea/baz

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
mCTDL88PuYudxn/3FWywHCdBDdH90RO+u5cw8+fQsjFToBLMJc31jG/bfKSBury1EMbae9j47MYR
BHM338WjzBNNo3RZ5PZZS4FiIlRuPQHae+Mg9jdYW7RLuyBavaypN7CQMxZHWyvPgC9Xlslyosdx
XGTig9Xb9UjADSnW/43UuOuj3Qnrkx+3UXUIAcXq2RhZ6GBIx7TatT7Nh00C+YChgt3ezsS9hslE
KzFf0/OC1TQQfRcsi/E2yCjLHQvStFj1Zn/nDApUm2GWBJuCe+JKS7IZ8ntpdPbspwab8mi+cnfZ
amx0m8gpu+K1lodVtE1GgNJZuMHcjPGI+2QEuKj42JIkqRB11q/p7zaZs95vlvO4VXKWZbm1/N56
659kJQM5vL30MQo80KoicMmKQtgTGGRxTGM2YnPYbqwy+uoPhckzX/YhemToe4TIdPTvKrkFZ9M7
8tmfA1pKHMJeCtW/EusAV+Pi8Z3/iNDebu5+6UPyLZMX1JLwk1yb116iinGvCGEJ79PWInU1O2kJ
wZVsyzJ+a91CqD5YD8OGRho/Xf5eLmWMdPlwGwod4Zko59HGLwssIx6UbF8jsd8QUNtb9t1qqpIv
31c4Dk/SJcakLyjxvxcPEjrgysIFacMaYMsuwuu7vT0/l0+08xTOwUeYfoG3HpDES+Ojit/QKXWT
Hq6EpGPb6XLrsijHWh8mEQh7betCYkE7anYHGDNdbm3aINRlSh3jvZUPzGxn/PDDfXjXVbyKUbxt
STnt1NE+jUO77TpKwMfrl69VMpXV026FQ5q6hRmwT88Y+AHk9ujD0D4orA62ebyx7L0MNB4mmHXL
Z5A2hAgqCp5qMsjGB6DHkWJWrCdfzsreCJlboxqw8WCLGY5YjUw2/qFwS0b06+QdRaK8z+tNa5nF
WHtuzmeDukBnOu0SbgQWIK6G74KD6R20Pl539CF0Pa31kjXQyC867ZEFjbD2C9eepa88x3sXQW9d
uZAIC8Uf8v1AHNvORVh/TALwflxtvTOG2U5yOHYx3VDGcg6eMeHM5pqytu77z19XvHt5JsMS8Ptd
gTJ2rLqHDj+KCNNJ4RogJJfCugdFiwnuG3v6uLeNs4ITQa+vVTnfK6ivcMeMDdtgWQErUDX0GPYo
iJE+jFWH/VRRNZ9rcc9e4o5elRpCYg2gml+1YWJMHym4hs2noZ9SJ3NyOtc79OcyzW6mloLc5iWE
nvH20pvyBRZ2suoCtkDvC26mzyc1ZKZ3g5TzpYim3J+nIwOuW1XYfzXBxUH8LxYtt4oTNRf9TjlL
f04H/l+Nz9ZLWpI9Qa8Zzk/ydJ5kelN9xe3+k6eIqtTJYtwG0IHVM/VrsdWD8Hba+mbHCtqa5g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1ECC79C02EF3800"
last-modified: Thu, 12 Nov 2026 00:45:04 GMT
content-md5: kPKLnOuHRgHkNxsw3vCk5w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 85a1bc78-a2c6-4c1c-8668-ca58549a8e6e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-1a66289c-006a-d2b1-22c0-e201bce6caea/foo/foo

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
mCTDL88PuYudxn/3FWywHCdBDdH90RO+u5cw8+fQsjFToBLMJc31jG/bfKSBury1EMbae9j47MYR
BHM338WjzBNNo3RZ5PZZS4FiIlRuPQHae+Mg9jdYW7RLuyBavaypN7CQMxZHWyvPgC9Xlslyosdx
XGTig9Xb9UjADSnW/43UuOuj3Qnrkx+3UXUIAcXq2RhZ6GBIx7TatT7Nh00C+YChgt3ezsS9hslE
KzFf0/OC1TQQfRcsi/E2yCjLHQvStFj1Zn/nDApUm2GWBJuCe+JKS7IZ8ntpdPbspwab8mi+cnfZ
amx0m8gpu+K1lodVtE1GgNJZuMHcjPGI+2QEuKj42JIkqRB11q/p7zaZs95vlvO4VXKWZbm1/N56
659kJQM5vL30MQo80KoicMmKQtgTGGRxTGM2YnPYbqwy+uoPhckzX/YhemToe4TIdPTvKrkFZ9M7
8tmfA1pKHMJeCtW/EusAV+Pi8Z3/iNDebu5+6UPyLZMX1JLwk1yb116iinGvCGEJ79PWInU1O2kJ
wZVsyzJ+a91CqD5YD8OGRho/Xf5eLmWMdPlwGwod4Zko59HGLwssIx6UbF8jsd8QUNtb9t1qqpIv
31c4Dk/SJcakLyjxvxcPEjrgysIFacMaYMsuwuu7vT0/l0+08xTOwUeYfoG3HpDES+Ojit/QKXWT
Hq6EpGPb6XLrsijHWh8mEQh7betCYkE7anYHGDNdbm3aINRlSh3jvZUPzGxn/PDDfXjXVbyKUbxt
STnt1NE+jUO77TpKwMfrl69VMpXV026FQ5q6hRmwT88Y+AHk9ujD0D4orA62ebyx7L0MNB4mmHXL
Z5A2hAgqCp5qMsjGB6DHkWJWrCdfzsreCJlboxqw8WCLGY5YjUw2/qFwS0b06+QdRaK8z+tNa5nF
WHtuzmeDukBnOu0SbgQWIK6G74KD6R20Pl539CF0Pa31kjXQyC867ZEFjbD2C9eepa88x3sXQW9d
uZAIC8Uf8v1AHNvORVh/TALwflxtvTOG2U5yOHYx3VDGcg6eMeHM5pqytu77z19XvHt5JsMS8Ptd
gTJ2rLqHDj+KCNNJ4RogJJfCugdFiwnuG3v6uLeNs4ITQa+vVTnfK6ivcMeMDdtgWQErUDX0GPYo
iJE+jFWH/VRRNZ9rcc9e4o5elRpCYg2gml+1YWJMHym4hs2noZ9SJ3NyOtc79OcyzW6mloLc5iWE
nvH20pvyBRZ2suoCtkDvC26mzyc1ZKZ3g5TzpYim3J+nIwOuW1XYfzXBxUH8LxYtt4oTNRf9TjlL
f04H/l+Nz9ZLWpI9Qa8Zzk/ydJ5kelN9xe3+k6eIqtTJYtwG0IHVM/VrsdWD8Hba+mbHCtqa5g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D535F769FB5000"
last-modified: Thu, 12 Nov 2026 00:45:04 GMT
content-md5: kPKLnOuHRgHkNxsw3vCk5w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f19f519f-55c5-478c-ba61-1383a8268773
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-1a66289c-006a-d2b1-22c0-e201bce6caea/foo/bar

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
mCTDL88PuYudxn/3FWywHCdBDdH90RO+u5cw8+fQsjFToBLMJc31jG/bfKSBury1EMbae9j47MYR
BHM338WjzBNNo3RZ5PZZS4FiIlRuPQHae+Mg9jdYW7RLuyBavaypN7CQMxZHWyvPgC9Xlslyosdx
XGTig9Xb9UjADSnW/43UuOuj3Qnrkx+3UXUIAcXq2RhZ6GBIx7TatT7Nh00C+YChgt3ezsS9hslE
KzFf0/OC1TQQfRcsi/E2yCjLHQvStFj1Zn/nDApUm2GWBJuCe+JKS7IZ8ntpdPbspwab8mi+cnfZ
amx0m8gpu+K1lodVtE1GgNJZuMHcjPGI+2QEuKj42JIkqRB11q/p7zaZs95vlvO4VXKWZbm1/N56
659kJQM5vL30MQo80KoicMmKQtgTGGRxTGM2YnPYbqwy+uoPhckzX/YhemToe4TIdPTvKrkFZ9M7
8tmfA1pKHMJeCtW/EusAV+Pi8Z3/iNDebu5+6UPyLZMX1JLwk1yb116iinGvCGEJ79PWInU1O2kJ
wZVsyzJ+a91CqD5YD8OGRho/Xf5eLmWMdPlwGwod4Zko59HGLwssIx6UbF8jsd8QUNtb9t1qqpIv
31c4Dk/SJcakLyjxvxcPEjrgysIFacMaYMsuwuu7vT0/l0+08xTOwUeYfoG3HpDES+Ojit/QKXWT
Hq6EpGPb6XLrsijHWh8mEQh7betCYkE7anYHGDNdbm3aINRlSh3jvZUPzGxn/PDDfXjXVbyKUbxt
STnt1NE+jUO77TpKwMfrl69VMpXV026FQ5q6hRmwT88Y+AHk9ujD0D4orA62ebyx7L0MNB4mmHXL
Z5A2hAgqCp5qMsjGB6DHkWJWrCdfzsreCJlboxqw8WCLGY5YjUw2/qFwS0b06+QdRaK8z+tNa5nF
WHtuzmeDukBnOu0SbgQWIK6G74KD6R20Pl539CF0Pa31kjXQyC867ZEFjbD2C9eepa88x3sXQW9d
uZAIC8Uf8v1AHNvORVh/TALwflxtvTOG2U5yOHYx3VDGcg6eMeHM5pqytu77z19XvHt5JsMS8Ptd
gTJ2rLqHDj+KCNNJ4RogJJfCugdFiwnuG3v6uLeNs4ITQa+vVTnfK6ivcMeMDdtgWQErUDX0GPYo
iJE+jFWH/VRRNZ9rcc9e4o5elRpCYg2gml+1YWJMHym4hs2noZ9SJ3NyOtc79OcyzW6mloLc5iWE
nvH20pvyBRZ2suoCtkDvC26mzyc1ZKZ3g5TzpYim3J+nIwOuW1XYfzXBxUH8LxYtt4oTNRf9TjlL
f04H/l+Nz9ZLWpI9Qa8Zzk/ydJ5kelN9xe3+k6eIqtTJYtwG0IHVM/VrsdWD8Hba+mbHCtqa5g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DA7D4B2880A300"
last-modified: Thu, 12 Nov 2026 00:45:04 GMT
content-md5: kPKLnOuHRgHkNxsw3vCk5w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6de1a1f3-b222-4401-99ce-3c55ef46bd69
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-1a66289c-006a-d2b1-22c0-e201bce6caea/baz/foo

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
mCTDL88PuYudxn/3FWywHCdBDdH90RO+u5cw8+fQsjFToBLMJc31jG/bfKSBury1EMbae9j47MYR
BHM338WjzBNNo3RZ5PZZS4FiIlRuPQHae+Mg9jdYW7RLuyBavaypN7CQMxZHWyvPgC9Xlslyosdx
XGTig9Xb9UjADSnW/43UuOuj3Qnrkx+3UXUIAcXq2RhZ6GBIx7TatT7Nh00C+YChgt3ezsS9hslE
KzFf0/OC1TQQfRcsi/E2yCjLHQvStFj1Zn/nDApUm2GWBJuCe+JKS7IZ8ntpdPbspwab8mi+cnfZ
amx0m8gpu+K1lodVtE1GgNJZuMHcjPGI+2QEuKj42JIkqRB11q/p7zaZs95vlvO4VXKWZbm1/N56
659kJQM5vL30MQo80KoicMmKQtgTGGRxTGM2YnPYbqwy+uoPhckzX/YhemToe4TIdPTvKrkFZ9M7
8tmfA1pKHMJeCtW/EusAV+Pi8Z3/iNDebu5+6UPyLZMX1JLwk1yb116iinGvCGEJ79PWInU1O2kJ
wZVsyzJ+a91CqD5YD8OGRho/Xf5eLmWMdPlwGwod4Zko59HGLwssIx6UbF8jsd8QUNtb9t1qqpIv
31c4Dk/SJcakLyjxvxcPEjrgysIFacMaYMsuwuu7vT0/l0+08xTOwUeYfoG3HpDES+Ojit/QKXWT
Hq6EpGPb6XLrsijHWh8mEQh7betCYkE7anYHGDNdbm3aINRlSh3jvZUPzGxn/PDDfXjXVbyKUbxt
STnt1NE+jUO77TpKwMfrl69VMpXV026FQ5q6hRmwT88Y+AHk9ujD0D4orA62ebyx7L0MNB4mmHXL
Z5A2hAgqCp5qMsjGB6DHkWJWrCdfzsreCJlboxqw8WCLGY5YjUw2/qFwS0b06+QdRaK8z+tNa5nF
WHtuzmeDukBnOu0SbgQWIK6G74KD6R20Pl539CF0Pa31kjXQyC867ZEFjbD2C9eepa88x3sXQW9d
uZAIC8Uf8v1AHNvORVh/TALwflxtvTOG2U5yOHYx3VDGcg6eMeHM5pqytu77z19XvHt5JsMS8Ptd
gTJ2rLqHDj+KCNNJ4RogJJfCugdFiwnuG3v6uLeNs4ITQa+vVTnfK6ivcMeMDdtgWQErUDX0GPYo
iJE+jFWH/VRRNZ9rcc9e4o5elRpCYg2gml+1YWJMHym4hs2noZ9SJ3NyOtc79OcyzW6mloLc5iWE
nvH20pvyBRZ2suoCtkDvC26mzyc1ZKZ3g5TzpYim3J+nIwOuW1XYfzXBxUH8LxYtt4oTNRf9TjlL
f04H/l+Nz9ZLWpI9Qa8Zzk/ydJ5kelN9xe3+k6eIqtTJYtwG0IHVM/VrsdWD8Hba+mbHCtqa5g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x206081C3D9B0140"
last-modified: Thu, 12 Nov 2026 00:45:04 GMT
content-md5: kPKLnOuHRgHkNxsw3vCk5w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 068945ed-904e-4d96-8f78-e0dbb9e4f525
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-1a66289c-006a-d2b1-22c0-e201bce6caea/baz/foo/bar

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
mCTDL88PuYudxn/3FWywHCdBDdH90RO+u5cw8+fQsjFToBLMJc31jG/bfKSBury1EMbae9j47MYR
BHM338WjzBNNo3RZ5PZZS4FiIlRuPQHae+Mg9jdYW7RLuyBavaypN7CQMxZHWyvPgC9Xlslyosdx
XGTig9Xb9UjADSnW/43UuOuj3Qnrkx+3UXUIAcXq2RhZ6GBIx7TatT7Nh00C+YChgt3ezsS9hslE
KzFf0/OC1TQQfRcsi/E2yCjLHQvStFj1Zn/nDApUm2GWBJuCe+JKS7IZ8ntpdPbspwab8mi+cnfZ
amx0m8gpu+K1lodVtE1GgNJZuMHcjPGI+2QEuKj42JIkqRB11q/p7zaZs95vlvO4VXKWZbm1/N56
659kJQM5vL30MQo80KoicMmKQtgTGGRxTGM2YnPYbqwy+uoPhckzX/YhemToe4TIdPTvKrkFZ9M7
8tmfA1pKHMJeCtW/EusAV+Pi8Z3/iNDebu5+6UPyLZMX1JLwk1yb116iinGvCGEJ79PWInU1O2kJ
wZVsyzJ+a91CqD5YD8OGRho/Xf5eLmWMdPlwGwod4Zko59HGLwssIx6UbF8jsd8QUNtb9t1qqpIv
31c4Dk/SJcakLyjxvxcPEjrgysIFacMaYMsuwuu7vT0/l0+08xTOwUeYfoG3HpDES+Ojit/QKXWT
Hq6EpGPb6XLrsijHWh8mEQh7betCYkE7anYHGDNdbm3aINRlSh3jvZUPzGxn/PDDfXjXVbyKUbxt
STnt1NE+jUO77TpKwMfrl69VMpXV026FQ5q6hRmwT88Y+AHk9ujD0D4orA62ebyx7L0MNB4mmHXL
Z5A2hAgqCp5qMsjGB6DHkWJWrCdfzsreCJlboxqw8WCLGY5YjUw2/qFwS0b06+QdRaK8z+tNa5nF
WHtuzmeDukBnOu0SbgQWIK6G74KD6R20Pl539CF0Pa31kjXQyC867ZEFjbD2C9eepa88x3sXQW9d
uZAIC8Uf8v1AHNvORVh/TALwflxtvTOG2U5yOHYx3VDGcg6eMeHM5pqytu77z19XvHt5JsMS8Ptd
gTJ2rLqHDj+KCNNJ4RogJJfCugdFiwnuG3v6uLeNs4ITQa+vVTnfK6ivcMeMDdtgWQErUDX0GPYo
iJE+jFWH/VRRNZ9rcc9e4o5elRpCYg2gml+1YWJMHym4hs2noZ9SJ3NyOtc79OcyzW6mloLc5iWE
nvH20pvyBRZ2suoCtkDvC26mzyc1ZKZ3g5TzpYim3J+nIwOuW1XYfzXBxUH8LxYtt4oTNRf9TjlL
f04H/l+Nz9ZLWpI9Qa8Zzk/ydJ5kelN9xe3+k6eIqtTJYtwG0IHVM/VrsdWD8Hba+mbHCtqa5g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22F975D04C4C180"
last-modified: Thu, 12 Nov 2026 00:45:04 GMT
content-md5: kPKLnOuHRgHkNxsw3vCk5w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 20843433-8cf0-4f8b-a71f-ca7bcee19879
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-1a66289c-006a-d2b1-22c0-e201bce6caea/baz/bar/foo

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
mCTDL88PuYudxn/3FWywHCdBDdH90RO+u5cw8+fQsjFToBLMJc31jG/bfKSBury1EMbae9j47MYR
BHM338WjzBNNo3RZ5PZZS4FiIlRuPQHae+Mg9jdYW7RLuyBavaypN7CQMxZHWyvPgC9Xlslyosdx
XGTig9Xb9UjADSnW/43UuOuj3Qnrkx+3UXUIAcXq2RhZ6GBIx7TatT7Nh00C+YChgt3ezsS9hslE
KzFf0/OC1TQQfRcsi/E2yCjLHQvStFj1Zn/nDApUm2GWBJuCe+JKS7IZ8ntpdPbspwab8mi+cnfZ
amx0m8gpu+K1lodVtE1GgNJZuMHcjPGI+2QEuKj42JIkqRB11q/p7zaZs95vlvO4VXKWZbm1/N56
659kJQM5vL30MQo80KoicMmKQtgTGGRxTGM2YnPYbqwy+uoPhckzX/YhemToe4TIdPTvKrkFZ9M7
8tmfA1pKHMJeCtW/EusAV+Pi8Z3/iNDebu5+6UPyLZMX1JLwk1yb116iinGvCGEJ79PWInU1O2kJ
wZVsyzJ+a91CqD5YD8OGRho/Xf5eLmWMdPlwGwod4Zko59HGLwssIx6UbF8jsd8QUNtb9t1qqpIv
31c4Dk/SJcakLyjxvxcPEjrgysIFacMaYMsuwuu7vT0/l0+08xTOwUeYfoG3HpDES+Ojit/QKXWT
Hq6EpGPb6XLrsijHWh8mEQh7betCYkE7anYHGDNdbm3aINRlSh3jvZUPzGxn/PDDfXjXVbyKUbxt
STnt1NE+jUO77TpKwMfrl69VMpXV026FQ5q6hRmwT88Y+AHk9ujD0D4orA62ebyx7L0MNB4mmHXL
Z5A2hAgqCp5qMsjGB6DHkWJWrCdfzsreCJlboxqw8WCLGY5YjUw2/qFwS0b06+QdRaK8z+tNa5nF
WHtuzmeDukBnOu0SbgQWIK6G74KD6R20Pl539CF0Pa31kjXQyC867ZEFjbD2C9eepa88x3sXQW9d
uZAIC8Uf8v1AHNvORVh/TALwflxtvTOG2U5yOHYx3VDGcg6eMeHM5pqytu77z19XvHt5JsMS8Ptd
gTJ2rLqHDj+KCNNJ4RogJJfCugdFiwnuG3v6uLeNs4ITQa+vVTnfK6ivcMeMDdtgWQErUDX0GPYo
iJE+jFWH/VRRNZ9rcc9e4o5elRpCYg2gml+1YWJMHym4hs2noZ9SJ3NyOtc79OcyzW6mloLc5iWE
nvH20pvyBRZ2suoCtkDvC26mzyc1ZKZ3g5TzpYim3J+nIwOuW1XYfzXBxUH8LxYtt4oTNRf9TjlL
f04H/l+Nz9ZLWpI9Qa8Zzk/ydJ5kelN9xe3+k6eIqtTJYtwG0IHVM/VrsdWD8Hba+mbHCtqa5g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F101A67DC7CD40"
last-modified: Thu, 12 Nov 2026 00:45:04 GMT
content-md5: kPKLnOuHRgHkNxsw3vCk5w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2205f7d4-ae6e-4c0c-b245-abf6013ea409
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-1a66289c-006a-d2b1-22c0-e201bce6caea/foo/foo?comp=metadata

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
etag: "0x22A1A2DD2D1B1A0"
last-modified: Thu, 12 Nov 2026 00:45:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 93bd764e-b37f-4afd-9174-e4a5dcaf6b49
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-1a66289c-006a-d2b1-22c0-e201bce6caea?restype=container&comp=list&delimiter=%2F&prefix=foo

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
x-ms-request-id: 948973d6-37e4-4e83-be9a-d636d57d50ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:04 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-1a66289c-006a-d2b1-22c0-e201bce6caea"><Prefix>foo</Prefix><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>foo/</Name></BlobPrefix><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:04 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:04 GMT</Last-Modified><Etag>0x1EFC1C55E139DA0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>kPKLnOuHRgHkNxsw3vCk5w==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:45:04 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-1a66289c-006a-d2b1-22c0-e201bce6caea?restype=container

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
x-ms-request-id: 14f43d60-5472-4f77-98e9-4568a11929f6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

