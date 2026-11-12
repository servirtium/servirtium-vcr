## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-18fa97e0-a200-8305-c8f6-06252b899a4d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_OverwritesDeliberately_BinaryData
now: 2026-11-12T00:49:01.1721932+00:00

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
etag: "0x2178B55EB9C5800"
last-modified: Thu, 12 Nov 2026 00:49:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 46f1962e-fbb5-475a-863a-9d5f5ce80d6d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-18fa97e0-a200-8305-c8f6-06252b899a4d/test-blob-e316e4db-5435-b13a-eba0-1f6d560c1e13

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
wmi7SH9bNywQ/NxaiFv5zW0k0uHtN4mMXEgtX4OXLbvX82PCzlLNf63q0zh34CiPplEAMjo9Jovf
L+w2LteoeM8hgpX4Nv8bVlIzAmNQFXsgnrgyl/qBmczY455ll1HWQlpoVl2SlnBR5NznCiMnjhpx
FpAeduHVn+jJIFNhtb8BXMAI6L4djQdI4LIemo+osFSE9IDBuMt5k7Z1yXYc8C8d5a1jHqZbU4iI
1ZUutgVZIG/+3ME+QKT0j1QIqMSRLPCDAbThRZKuKKD4OOI2StyxG6gHHRNt3qUJbo9RU6vD96mk
q7VQd9vcULQgRQjCvkR4VowbiQ7dFSIP2NYDXdX1NEE4kZ4nYKPNKs1fTZidRrBK2fwep22ax5aS
QZ8E2fPeKhHHiSymUPboTl9BfsiJcZEmuIPZ14zTnsoIlR4EyFDagCKH1r2DpIgGNVkNWEjOCM8N
3iBvBFOE8+thnbvX5IUPZ/2lApvUohT706IzxUWBOYxP9uovanvPAuLSIQbNLlHT/vFLKAYzOTsM
dDGxUS2l4GMvh+2a3/yB1v+5AYANLaRQX8dUNhGFG7yvI/ZJHrG0LEGinqdjOB70yVIHeji6/kaN
YPFmUalSqWww67wGN7hNBNQ/a4/97SaoX22+faCE9CSvvL2/TtuYT/Q6Mkxh7ZGZuXZje5O3kHLL
vfE8kyvLq/eYVnv6jrX5phubwrvaRnHcJMMqIXiQ+CxL9JHpXLvIb4ZUyZcWnyvBadV4G8238XaA
X25noYp/B11Or5kjEEpf0lM0hX3axoWYabeiGNxekwMbafxMYM781MI5x/CRnVmKGUl6g2v5pZnp
zzfS3O+B8BuWCKZOEnKFOLC7oP+VBsxeGP6T5BCXIcNiY5CWKvjSuNbU+5SyOwbW9Uu7PgWaVMlr
c8Tw7QsL/+fj7K7h7g646OgowAo4q9z3vO/F2+O+xw/GK7Yz4crKyfyszk9Y9QY9A1UccpO+M8fn
+DAcRiMDJSSfGsNXhAYdXfcOi92Mn8foh9iOoVV7B/juTOiarYPYqakruNpD5X9O/hScsKfqWllp
NL5LdIPPIxLLaTcdg690NuE0YebspaJZQKNA31dQA/GPMXnEjTQlXJXHd3tHMHtkJ3rGtvlyfI8b
8TTgjkO7e2ZGjlI2r6isDgVRJC0mEQ8n27fdiU34HbTpqZv/RM1RDPwVAaIoLnjRGaf0IVdh9OAl
uLKL3fEYTXGdTAUMrMo3/xgxERBt/q0/C3ClBPtciLS72osbxi4K/LMwi+FyxWzdvCE/MOPPt7oF
TNKBc0l1QMRRUdI+HDnqJhRcPHPLzEYDyEfZHVfQ6yLRFXlciYlqu0odIXOanqDoVArPc3tGOQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FFE13617ED2410"
last-modified: Thu, 12 Nov 2026 00:49:01 GMT
content-md5: HwqxPAzVCgr2rwF3RoOk8Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 61816a6b-4030-41d7-b10f-67b20b93834e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-18fa97e0-a200-8305-c8f6-06252b899a4d/test-blob-e316e4db-5435-b13a-eba0-1f6d560c1e13

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
f4t9qwGbIm2AZa9tBr+NnYrygCmuq9JpKafxyEwBeKeL3PnQC91pHyevoA3qMZoox21EgPocitS5
FIJZqlogf+0I4inFvZKtiGEC/wvEf/cNyAHfvPesblElFvZbD3XNjyAg4U9wYwnbl/iZGovI9JWK
TOJYQMP1W3PXn6abUXnrNXDrpJ2onWX4BCX/E1PGXSJh0cKTdU5dK4bbmMNiP0Z+reUb3VD44a98
Xzye9UgfEUKEOn+2WL8hjXgXzAWhlsXegWVuq3/Sae8TFhUSvzU9u4aA3QXGyFUl+U/X4BWq2sh2
v3TisWXDsdCQo0GqD85C2RB+Ibi/GLgPSLEv+ojaaTtNm//BWwohvSs0NiUUe+qAlQcELLkPt6e7
0mizk7dItTkGXHPPgX0GXGSMiuGT+83Hr2WA1T2CPeRYBYihbSp07IDrDR52sROJ/s9UgyzFJ9ab
7ORRyOD8hB+Pdnv1ZO86GJ5hqO6uUP1R9tZuLbq3k92xBoBFIiOg7on/5zuYlJnfGmuNZH/o7Jzm
ANEJjlZl1+OdQ15v9PV7wLlkr2nBuWE9jhJPKi5eyBnkXyJSl2AymQ9Y+lE7byZ1EqPFhD0yJEdw
zP9EFq20P3pFipXSKSlZMRVZab4QAR7s2RiLmUTbsTrb4cpg7oNipLrW9uWQoul6a1Mo2buIX8rh
VzyUKKY2adla90de+UKR9sUEOgs5WzYvEC3xs9h/U4IAf5dHzXsUn40LNquiG3IQluL2gyW/p/sG
ZRd5RbUA26TEXnqrSilJ75p+LSWLjPW74B32ic9cQNebQGdjm1rXClsG3bz3ZEu4rJSLQXnWe9gi
vWSYClLVZx6iEAnB5lRApiPKhK84w3zRPd070f9exMWOQN31P/8IMXWeVVNC98U/SppWDPYp6fno
xs10mpUeQ0xEMqV2SmcjwVI6mW4oj0UX+4ZkCLjOZVfjDXkxk5ffgBEH/cQgyAAzM0uk71CLvzaI
XZ4OuTuTdc1Okzzu8S27WhldIZGB9jOGMdVtKnYGWE5CqTb40MbVc4j30jXDRUEd6ZQ3Lp6lBmZr
iIhmJktWRzrurEf3wolSh60JiiT9wuyTT0DhzymvnKPPjUg+bk09oIr61Zn6JicL5KbwnHxCbsab
09cKdHgRPg+kJzVBFBlgzOmaA+1TmCgZ1uuDvgAmjR+Copt1MisS6ZaJVv/xydCNkM+Tp2rYSDqu
8J6Mjn8OfZoWv3F+6pm9hxpWyUIpJwwb9S4wk+W0qVlgx0GNhVoWethk2wpeD6U11SBQgX/4hciR
cZhR3eq1YhUXHSNYMAK/QE5pxEwCvOWI+r3FYyfaZ0J4/BPCxZ3ur3n1RvGC3aUdkUEwj8B8jw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x222C075453CCB80"
last-modified: Thu, 12 Nov 2026 00:49:01 GMT
content-md5: CS1aYNmxhTPGkIxjJEpXlQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4cf37d50-99e5-4f84-b29c-39ad47f9bdb8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-18fa97e0-a200-8305-c8f6-06252b899a4d?restype=container

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
x-ms-request-id: 21eb24a5-d54b-4c49-851b-e5ffc7b95a1c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

