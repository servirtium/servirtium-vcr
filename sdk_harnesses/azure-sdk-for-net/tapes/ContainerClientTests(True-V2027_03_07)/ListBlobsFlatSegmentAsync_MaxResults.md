## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-16d10ab4-9fe9-9db5-299b-d97a4e6a86d0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_MaxResults
now: 2026-11-12T00:44:52.0835702+00:00

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
etag: "0x2704FCECC867000"
last-modified: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 867040c3-9d07-439b-bbb4-62533f8cbd74
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-16d10ab4-9fe9-9db5-299b-d97a4e6a86d0/foo

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
jwIA6Qgx+f5h1bMytbpTKC30xPk+T2b8whX1N//JcGihnixRwuyCgxDTtRPrguhuSLFNWaaMkT+b
BCbzPML/l2VKkBaOAWZAcUHoa5pSED8thu9NfBbCFQzstr7Gj0dO1B2uofLR4EZLDOhkpCalSPPm
xbXSsRtOh3sJoUqneuH6mZd9pG9NW6aoAm8tXnHmR27K38qRfCICYBl2xz77o5IHaQqPKKSEmWkO
Kq+rICkKI1rc3ZsXaR10e0RW15NorF7dJvRnVh/KRUZgglJzVj/vbKTkH8X37wDsG61gLsLVpn1Q
zfo1o806EpdVt+bLACQEZmrvg42Z5TfzejtyaReDitvUI4hFusjWqQwuojgaIBqIW8dX5iLwt+jC
QSiSyKh/0S0K992bv6yhGNqAakP/2Vog6Q5QLKS55GyggnigROBjrtEKDyk87Zwatc1Ib0ykw2jO
cd+aL6SJURJx+j00AdT5Hbxy9Mkx5PxyNXfWcXQf+74P0tMByX8sgb4WyvJe5rP4TlKPMs+fnI3i
KPktsuCdUv5+JC8B91M9RXIKGhkKE07D3SIikMnvcDVFH6GF/8/eeHjz4MKE91b+Uu1clIJz2BSq
adS9e8E1j7T6u9iyt0WjLKKgFjOMP+bLJD3bktuz0UaM25X6IP22vVANijx+S5qouGjf08LhHSru
8VaEWfzYR+mSJdyvqQul6VjifrSqTdiiM9py0/6Eq71rDC6mMmNUNUJS6ya++A9cOulp/591Q6R9
4SUiZXPrDnofRJzc/rf0jUlyWGKy5DvKFpkVGqwe9ciKKFE+Ms/PZ92rn7NzgDsydHFVA+tCy/zq
V0/a1fPOAE/TUdVltlt6ovCEB0WHV5Vd46Y6yPHcSF1VU9p/9JHq3Z5kny5lzL0V2mH6vcS3YwC6
fPJMkzhd9gl4EGOB+65fmimmIrhn9xbpJe2Q4ouZnfDaxHeenUpmBqgl7btalN+ymiKaEEBHUoTb
Y25KzRR93nJypjY2wf3eQBwPQgpbj5AO3Udo/o2wknHywjncGzmTpw5I5+2ofNklu88kNxB6gNTd
O/DNFeDlwhTFQ/7DAiTifJr7EqeiZmBtQ0K9jFpgeEFl/uBJxZEuYyTZ4znaYbmqQbt2fm4sO9SP
YNKdJza5ZMq9XgREmbYIza+CyIMmkuGJEkuf6vnTOMMMuWW/kTvuIH9uHQO1ZqcFbbG/qXJQaM3w
ExXrGXnQ6SVAN+BQSTtzlKcEt3Xe1Kujmn1IFI5Qu1CYz34mAwYFnjPddC7HtCN1SxXKTLBXEj5p
R3/7iNWW8HyPt3q9TZCh/hlBAGB82+VZ08h5hW+fQLw/vbuHChVdRoSyOPypt/6EKU2XFRLe7A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23170A73A30E820"
last-modified: Thu, 12 Nov 2026 00:44:52 GMT
content-md5: 5WDpajowq9SIWL03rH5dyw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1b698e73-3680-45a1-812a-819ef1143330
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-16d10ab4-9fe9-9db5-299b-d97a4e6a86d0/bar

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
jwIA6Qgx+f5h1bMytbpTKC30xPk+T2b8whX1N//JcGihnixRwuyCgxDTtRPrguhuSLFNWaaMkT+b
BCbzPML/l2VKkBaOAWZAcUHoa5pSED8thu9NfBbCFQzstr7Gj0dO1B2uofLR4EZLDOhkpCalSPPm
xbXSsRtOh3sJoUqneuH6mZd9pG9NW6aoAm8tXnHmR27K38qRfCICYBl2xz77o5IHaQqPKKSEmWkO
Kq+rICkKI1rc3ZsXaR10e0RW15NorF7dJvRnVh/KRUZgglJzVj/vbKTkH8X37wDsG61gLsLVpn1Q
zfo1o806EpdVt+bLACQEZmrvg42Z5TfzejtyaReDitvUI4hFusjWqQwuojgaIBqIW8dX5iLwt+jC
QSiSyKh/0S0K992bv6yhGNqAakP/2Vog6Q5QLKS55GyggnigROBjrtEKDyk87Zwatc1Ib0ykw2jO
cd+aL6SJURJx+j00AdT5Hbxy9Mkx5PxyNXfWcXQf+74P0tMByX8sgb4WyvJe5rP4TlKPMs+fnI3i
KPktsuCdUv5+JC8B91M9RXIKGhkKE07D3SIikMnvcDVFH6GF/8/eeHjz4MKE91b+Uu1clIJz2BSq
adS9e8E1j7T6u9iyt0WjLKKgFjOMP+bLJD3bktuz0UaM25X6IP22vVANijx+S5qouGjf08LhHSru
8VaEWfzYR+mSJdyvqQul6VjifrSqTdiiM9py0/6Eq71rDC6mMmNUNUJS6ya++A9cOulp/591Q6R9
4SUiZXPrDnofRJzc/rf0jUlyWGKy5DvKFpkVGqwe9ciKKFE+Ms/PZ92rn7NzgDsydHFVA+tCy/zq
V0/a1fPOAE/TUdVltlt6ovCEB0WHV5Vd46Y6yPHcSF1VU9p/9JHq3Z5kny5lzL0V2mH6vcS3YwC6
fPJMkzhd9gl4EGOB+65fmimmIrhn9xbpJe2Q4ouZnfDaxHeenUpmBqgl7btalN+ymiKaEEBHUoTb
Y25KzRR93nJypjY2wf3eQBwPQgpbj5AO3Udo/o2wknHywjncGzmTpw5I5+2ofNklu88kNxB6gNTd
O/DNFeDlwhTFQ/7DAiTifJr7EqeiZmBtQ0K9jFpgeEFl/uBJxZEuYyTZ4znaYbmqQbt2fm4sO9SP
YNKdJza5ZMq9XgREmbYIza+CyIMmkuGJEkuf6vnTOMMMuWW/kTvuIH9uHQO1ZqcFbbG/qXJQaM3w
ExXrGXnQ6SVAN+BQSTtzlKcEt3Xe1Kujmn1IFI5Qu1CYz34mAwYFnjPddC7HtCN1SxXKTLBXEj5p
R3/7iNWW8HyPt3q9TZCh/hlBAGB82+VZ08h5hW+fQLw/vbuHChVdRoSyOPypt/6EKU2XFRLe7A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E11CFAD26D5800"
last-modified: Thu, 12 Nov 2026 00:44:52 GMT
content-md5: 5WDpajowq9SIWL03rH5dyw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 99b36337-9e2a-4063-9158-122603be3975
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-16d10ab4-9fe9-9db5-299b-d97a4e6a86d0/baz

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
jwIA6Qgx+f5h1bMytbpTKC30xPk+T2b8whX1N//JcGihnixRwuyCgxDTtRPrguhuSLFNWaaMkT+b
BCbzPML/l2VKkBaOAWZAcUHoa5pSED8thu9NfBbCFQzstr7Gj0dO1B2uofLR4EZLDOhkpCalSPPm
xbXSsRtOh3sJoUqneuH6mZd9pG9NW6aoAm8tXnHmR27K38qRfCICYBl2xz77o5IHaQqPKKSEmWkO
Kq+rICkKI1rc3ZsXaR10e0RW15NorF7dJvRnVh/KRUZgglJzVj/vbKTkH8X37wDsG61gLsLVpn1Q
zfo1o806EpdVt+bLACQEZmrvg42Z5TfzejtyaReDitvUI4hFusjWqQwuojgaIBqIW8dX5iLwt+jC
QSiSyKh/0S0K992bv6yhGNqAakP/2Vog6Q5QLKS55GyggnigROBjrtEKDyk87Zwatc1Ib0ykw2jO
cd+aL6SJURJx+j00AdT5Hbxy9Mkx5PxyNXfWcXQf+74P0tMByX8sgb4WyvJe5rP4TlKPMs+fnI3i
KPktsuCdUv5+JC8B91M9RXIKGhkKE07D3SIikMnvcDVFH6GF/8/eeHjz4MKE91b+Uu1clIJz2BSq
adS9e8E1j7T6u9iyt0WjLKKgFjOMP+bLJD3bktuz0UaM25X6IP22vVANijx+S5qouGjf08LhHSru
8VaEWfzYR+mSJdyvqQul6VjifrSqTdiiM9py0/6Eq71rDC6mMmNUNUJS6ya++A9cOulp/591Q6R9
4SUiZXPrDnofRJzc/rf0jUlyWGKy5DvKFpkVGqwe9ciKKFE+Ms/PZ92rn7NzgDsydHFVA+tCy/zq
V0/a1fPOAE/TUdVltlt6ovCEB0WHV5Vd46Y6yPHcSF1VU9p/9JHq3Z5kny5lzL0V2mH6vcS3YwC6
fPJMkzhd9gl4EGOB+65fmimmIrhn9xbpJe2Q4ouZnfDaxHeenUpmBqgl7btalN+ymiKaEEBHUoTb
Y25KzRR93nJypjY2wf3eQBwPQgpbj5AO3Udo/o2wknHywjncGzmTpw5I5+2ofNklu88kNxB6gNTd
O/DNFeDlwhTFQ/7DAiTifJr7EqeiZmBtQ0K9jFpgeEFl/uBJxZEuYyTZ4znaYbmqQbt2fm4sO9SP
YNKdJza5ZMq9XgREmbYIza+CyIMmkuGJEkuf6vnTOMMMuWW/kTvuIH9uHQO1ZqcFbbG/qXJQaM3w
ExXrGXnQ6SVAN+BQSTtzlKcEt3Xe1Kujmn1IFI5Qu1CYz34mAwYFnjPddC7HtCN1SxXKTLBXEj5p
R3/7iNWW8HyPt3q9TZCh/hlBAGB82+VZ08h5hW+fQLw/vbuHChVdRoSyOPypt/6EKU2XFRLe7A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24BA453E2B296A0"
last-modified: Thu, 12 Nov 2026 00:44:52 GMT
content-md5: 5WDpajowq9SIWL03rH5dyw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8724745a-e511-4c5c-b292-d12300c7be5c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-16d10ab4-9fe9-9db5-299b-d97a4e6a86d0/foo/foo

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
jwIA6Qgx+f5h1bMytbpTKC30xPk+T2b8whX1N//JcGihnixRwuyCgxDTtRPrguhuSLFNWaaMkT+b
BCbzPML/l2VKkBaOAWZAcUHoa5pSED8thu9NfBbCFQzstr7Gj0dO1B2uofLR4EZLDOhkpCalSPPm
xbXSsRtOh3sJoUqneuH6mZd9pG9NW6aoAm8tXnHmR27K38qRfCICYBl2xz77o5IHaQqPKKSEmWkO
Kq+rICkKI1rc3ZsXaR10e0RW15NorF7dJvRnVh/KRUZgglJzVj/vbKTkH8X37wDsG61gLsLVpn1Q
zfo1o806EpdVt+bLACQEZmrvg42Z5TfzejtyaReDitvUI4hFusjWqQwuojgaIBqIW8dX5iLwt+jC
QSiSyKh/0S0K992bv6yhGNqAakP/2Vog6Q5QLKS55GyggnigROBjrtEKDyk87Zwatc1Ib0ykw2jO
cd+aL6SJURJx+j00AdT5Hbxy9Mkx5PxyNXfWcXQf+74P0tMByX8sgb4WyvJe5rP4TlKPMs+fnI3i
KPktsuCdUv5+JC8B91M9RXIKGhkKE07D3SIikMnvcDVFH6GF/8/eeHjz4MKE91b+Uu1clIJz2BSq
adS9e8E1j7T6u9iyt0WjLKKgFjOMP+bLJD3bktuz0UaM25X6IP22vVANijx+S5qouGjf08LhHSru
8VaEWfzYR+mSJdyvqQul6VjifrSqTdiiM9py0/6Eq71rDC6mMmNUNUJS6ya++A9cOulp/591Q6R9
4SUiZXPrDnofRJzc/rf0jUlyWGKy5DvKFpkVGqwe9ciKKFE+Ms/PZ92rn7NzgDsydHFVA+tCy/zq
V0/a1fPOAE/TUdVltlt6ovCEB0WHV5Vd46Y6yPHcSF1VU9p/9JHq3Z5kny5lzL0V2mH6vcS3YwC6
fPJMkzhd9gl4EGOB+65fmimmIrhn9xbpJe2Q4ouZnfDaxHeenUpmBqgl7btalN+ymiKaEEBHUoTb
Y25KzRR93nJypjY2wf3eQBwPQgpbj5AO3Udo/o2wknHywjncGzmTpw5I5+2ofNklu88kNxB6gNTd
O/DNFeDlwhTFQ/7DAiTifJr7EqeiZmBtQ0K9jFpgeEFl/uBJxZEuYyTZ4znaYbmqQbt2fm4sO9SP
YNKdJza5ZMq9XgREmbYIza+CyIMmkuGJEkuf6vnTOMMMuWW/kTvuIH9uHQO1ZqcFbbG/qXJQaM3w
ExXrGXnQ6SVAN+BQSTtzlKcEt3Xe1Kujmn1IFI5Qu1CYz34mAwYFnjPddC7HtCN1SxXKTLBXEj5p
R3/7iNWW8HyPt3q9TZCh/hlBAGB82+VZ08h5hW+fQLw/vbuHChVdRoSyOPypt/6EKU2XFRLe7A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2644EAE5A451840"
last-modified: Thu, 12 Nov 2026 00:44:52 GMT
content-md5: 5WDpajowq9SIWL03rH5dyw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ad6b3e05-790b-4fc0-9552-4683ddecd8a6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-16d10ab4-9fe9-9db5-299b-d97a4e6a86d0/foo/bar

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
jwIA6Qgx+f5h1bMytbpTKC30xPk+T2b8whX1N//JcGihnixRwuyCgxDTtRPrguhuSLFNWaaMkT+b
BCbzPML/l2VKkBaOAWZAcUHoa5pSED8thu9NfBbCFQzstr7Gj0dO1B2uofLR4EZLDOhkpCalSPPm
xbXSsRtOh3sJoUqneuH6mZd9pG9NW6aoAm8tXnHmR27K38qRfCICYBl2xz77o5IHaQqPKKSEmWkO
Kq+rICkKI1rc3ZsXaR10e0RW15NorF7dJvRnVh/KRUZgglJzVj/vbKTkH8X37wDsG61gLsLVpn1Q
zfo1o806EpdVt+bLACQEZmrvg42Z5TfzejtyaReDitvUI4hFusjWqQwuojgaIBqIW8dX5iLwt+jC
QSiSyKh/0S0K992bv6yhGNqAakP/2Vog6Q5QLKS55GyggnigROBjrtEKDyk87Zwatc1Ib0ykw2jO
cd+aL6SJURJx+j00AdT5Hbxy9Mkx5PxyNXfWcXQf+74P0tMByX8sgb4WyvJe5rP4TlKPMs+fnI3i
KPktsuCdUv5+JC8B91M9RXIKGhkKE07D3SIikMnvcDVFH6GF/8/eeHjz4MKE91b+Uu1clIJz2BSq
adS9e8E1j7T6u9iyt0WjLKKgFjOMP+bLJD3bktuz0UaM25X6IP22vVANijx+S5qouGjf08LhHSru
8VaEWfzYR+mSJdyvqQul6VjifrSqTdiiM9py0/6Eq71rDC6mMmNUNUJS6ya++A9cOulp/591Q6R9
4SUiZXPrDnofRJzc/rf0jUlyWGKy5DvKFpkVGqwe9ciKKFE+Ms/PZ92rn7NzgDsydHFVA+tCy/zq
V0/a1fPOAE/TUdVltlt6ovCEB0WHV5Vd46Y6yPHcSF1VU9p/9JHq3Z5kny5lzL0V2mH6vcS3YwC6
fPJMkzhd9gl4EGOB+65fmimmIrhn9xbpJe2Q4ouZnfDaxHeenUpmBqgl7btalN+ymiKaEEBHUoTb
Y25KzRR93nJypjY2wf3eQBwPQgpbj5AO3Udo/o2wknHywjncGzmTpw5I5+2ofNklu88kNxB6gNTd
O/DNFeDlwhTFQ/7DAiTifJr7EqeiZmBtQ0K9jFpgeEFl/uBJxZEuYyTZ4znaYbmqQbt2fm4sO9SP
YNKdJza5ZMq9XgREmbYIza+CyIMmkuGJEkuf6vnTOMMMuWW/kTvuIH9uHQO1ZqcFbbG/qXJQaM3w
ExXrGXnQ6SVAN+BQSTtzlKcEt3Xe1Kujmn1IFI5Qu1CYz34mAwYFnjPddC7HtCN1SxXKTLBXEj5p
R3/7iNWW8HyPt3q9TZCh/hlBAGB82+VZ08h5hW+fQLw/vbuHChVdRoSyOPypt/6EKU2XFRLe7A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F5C9AD7A093880"
last-modified: Thu, 12 Nov 2026 00:44:52 GMT
content-md5: 5WDpajowq9SIWL03rH5dyw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: adc6ff29-034b-4d87-9100-158dba0a7a54
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-16d10ab4-9fe9-9db5-299b-d97a4e6a86d0/baz/foo

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
jwIA6Qgx+f5h1bMytbpTKC30xPk+T2b8whX1N//JcGihnixRwuyCgxDTtRPrguhuSLFNWaaMkT+b
BCbzPML/l2VKkBaOAWZAcUHoa5pSED8thu9NfBbCFQzstr7Gj0dO1B2uofLR4EZLDOhkpCalSPPm
xbXSsRtOh3sJoUqneuH6mZd9pG9NW6aoAm8tXnHmR27K38qRfCICYBl2xz77o5IHaQqPKKSEmWkO
Kq+rICkKI1rc3ZsXaR10e0RW15NorF7dJvRnVh/KRUZgglJzVj/vbKTkH8X37wDsG61gLsLVpn1Q
zfo1o806EpdVt+bLACQEZmrvg42Z5TfzejtyaReDitvUI4hFusjWqQwuojgaIBqIW8dX5iLwt+jC
QSiSyKh/0S0K992bv6yhGNqAakP/2Vog6Q5QLKS55GyggnigROBjrtEKDyk87Zwatc1Ib0ykw2jO
cd+aL6SJURJx+j00AdT5Hbxy9Mkx5PxyNXfWcXQf+74P0tMByX8sgb4WyvJe5rP4TlKPMs+fnI3i
KPktsuCdUv5+JC8B91M9RXIKGhkKE07D3SIikMnvcDVFH6GF/8/eeHjz4MKE91b+Uu1clIJz2BSq
adS9e8E1j7T6u9iyt0WjLKKgFjOMP+bLJD3bktuz0UaM25X6IP22vVANijx+S5qouGjf08LhHSru
8VaEWfzYR+mSJdyvqQul6VjifrSqTdiiM9py0/6Eq71rDC6mMmNUNUJS6ya++A9cOulp/591Q6R9
4SUiZXPrDnofRJzc/rf0jUlyWGKy5DvKFpkVGqwe9ciKKFE+Ms/PZ92rn7NzgDsydHFVA+tCy/zq
V0/a1fPOAE/TUdVltlt6ovCEB0WHV5Vd46Y6yPHcSF1VU9p/9JHq3Z5kny5lzL0V2mH6vcS3YwC6
fPJMkzhd9gl4EGOB+65fmimmIrhn9xbpJe2Q4ouZnfDaxHeenUpmBqgl7btalN+ymiKaEEBHUoTb
Y25KzRR93nJypjY2wf3eQBwPQgpbj5AO3Udo/o2wknHywjncGzmTpw5I5+2ofNklu88kNxB6gNTd
O/DNFeDlwhTFQ/7DAiTifJr7EqeiZmBtQ0K9jFpgeEFl/uBJxZEuYyTZ4znaYbmqQbt2fm4sO9SP
YNKdJza5ZMq9XgREmbYIza+CyIMmkuGJEkuf6vnTOMMMuWW/kTvuIH9uHQO1ZqcFbbG/qXJQaM3w
ExXrGXnQ6SVAN+BQSTtzlKcEt3Xe1Kujmn1IFI5Qu1CYz34mAwYFnjPddC7HtCN1SxXKTLBXEj5p
R3/7iNWW8HyPt3q9TZCh/hlBAGB82+VZ08h5hW+fQLw/vbuHChVdRoSyOPypt/6EKU2XFRLe7A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21C0B88FF2CA940"
last-modified: Thu, 12 Nov 2026 00:44:52 GMT
content-md5: 5WDpajowq9SIWL03rH5dyw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: db186abc-92a1-4e41-a938-d8b66cb44f26
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-16d10ab4-9fe9-9db5-299b-d97a4e6a86d0/baz/foo/bar

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
jwIA6Qgx+f5h1bMytbpTKC30xPk+T2b8whX1N//JcGihnixRwuyCgxDTtRPrguhuSLFNWaaMkT+b
BCbzPML/l2VKkBaOAWZAcUHoa5pSED8thu9NfBbCFQzstr7Gj0dO1B2uofLR4EZLDOhkpCalSPPm
xbXSsRtOh3sJoUqneuH6mZd9pG9NW6aoAm8tXnHmR27K38qRfCICYBl2xz77o5IHaQqPKKSEmWkO
Kq+rICkKI1rc3ZsXaR10e0RW15NorF7dJvRnVh/KRUZgglJzVj/vbKTkH8X37wDsG61gLsLVpn1Q
zfo1o806EpdVt+bLACQEZmrvg42Z5TfzejtyaReDitvUI4hFusjWqQwuojgaIBqIW8dX5iLwt+jC
QSiSyKh/0S0K992bv6yhGNqAakP/2Vog6Q5QLKS55GyggnigROBjrtEKDyk87Zwatc1Ib0ykw2jO
cd+aL6SJURJx+j00AdT5Hbxy9Mkx5PxyNXfWcXQf+74P0tMByX8sgb4WyvJe5rP4TlKPMs+fnI3i
KPktsuCdUv5+JC8B91M9RXIKGhkKE07D3SIikMnvcDVFH6GF/8/eeHjz4MKE91b+Uu1clIJz2BSq
adS9e8E1j7T6u9iyt0WjLKKgFjOMP+bLJD3bktuz0UaM25X6IP22vVANijx+S5qouGjf08LhHSru
8VaEWfzYR+mSJdyvqQul6VjifrSqTdiiM9py0/6Eq71rDC6mMmNUNUJS6ya++A9cOulp/591Q6R9
4SUiZXPrDnofRJzc/rf0jUlyWGKy5DvKFpkVGqwe9ciKKFE+Ms/PZ92rn7NzgDsydHFVA+tCy/zq
V0/a1fPOAE/TUdVltlt6ovCEB0WHV5Vd46Y6yPHcSF1VU9p/9JHq3Z5kny5lzL0V2mH6vcS3YwC6
fPJMkzhd9gl4EGOB+65fmimmIrhn9xbpJe2Q4ouZnfDaxHeenUpmBqgl7btalN+ymiKaEEBHUoTb
Y25KzRR93nJypjY2wf3eQBwPQgpbj5AO3Udo/o2wknHywjncGzmTpw5I5+2ofNklu88kNxB6gNTd
O/DNFeDlwhTFQ/7DAiTifJr7EqeiZmBtQ0K9jFpgeEFl/uBJxZEuYyTZ4znaYbmqQbt2fm4sO9SP
YNKdJza5ZMq9XgREmbYIza+CyIMmkuGJEkuf6vnTOMMMuWW/kTvuIH9uHQO1ZqcFbbG/qXJQaM3w
ExXrGXnQ6SVAN+BQSTtzlKcEt3Xe1Kujmn1IFI5Qu1CYz34mAwYFnjPddC7HtCN1SxXKTLBXEj5p
R3/7iNWW8HyPt3q9TZCh/hlBAGB82+VZ08h5hW+fQLw/vbuHChVdRoSyOPypt/6EKU2XFRLe7A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CFEB5FDBA771C0"
last-modified: Thu, 12 Nov 2026 00:44:52 GMT
content-md5: 5WDpajowq9SIWL03rH5dyw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b9e4c58e-008f-4a4d-9a3b-d1eeaf4ce5c8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-16d10ab4-9fe9-9db5-299b-d97a4e6a86d0/baz/bar/foo

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
jwIA6Qgx+f5h1bMytbpTKC30xPk+T2b8whX1N//JcGihnixRwuyCgxDTtRPrguhuSLFNWaaMkT+b
BCbzPML/l2VKkBaOAWZAcUHoa5pSED8thu9NfBbCFQzstr7Gj0dO1B2uofLR4EZLDOhkpCalSPPm
xbXSsRtOh3sJoUqneuH6mZd9pG9NW6aoAm8tXnHmR27K38qRfCICYBl2xz77o5IHaQqPKKSEmWkO
Kq+rICkKI1rc3ZsXaR10e0RW15NorF7dJvRnVh/KRUZgglJzVj/vbKTkH8X37wDsG61gLsLVpn1Q
zfo1o806EpdVt+bLACQEZmrvg42Z5TfzejtyaReDitvUI4hFusjWqQwuojgaIBqIW8dX5iLwt+jC
QSiSyKh/0S0K992bv6yhGNqAakP/2Vog6Q5QLKS55GyggnigROBjrtEKDyk87Zwatc1Ib0ykw2jO
cd+aL6SJURJx+j00AdT5Hbxy9Mkx5PxyNXfWcXQf+74P0tMByX8sgb4WyvJe5rP4TlKPMs+fnI3i
KPktsuCdUv5+JC8B91M9RXIKGhkKE07D3SIikMnvcDVFH6GF/8/eeHjz4MKE91b+Uu1clIJz2BSq
adS9e8E1j7T6u9iyt0WjLKKgFjOMP+bLJD3bktuz0UaM25X6IP22vVANijx+S5qouGjf08LhHSru
8VaEWfzYR+mSJdyvqQul6VjifrSqTdiiM9py0/6Eq71rDC6mMmNUNUJS6ya++A9cOulp/591Q6R9
4SUiZXPrDnofRJzc/rf0jUlyWGKy5DvKFpkVGqwe9ciKKFE+Ms/PZ92rn7NzgDsydHFVA+tCy/zq
V0/a1fPOAE/TUdVltlt6ovCEB0WHV5Vd46Y6yPHcSF1VU9p/9JHq3Z5kny5lzL0V2mH6vcS3YwC6
fPJMkzhd9gl4EGOB+65fmimmIrhn9xbpJe2Q4ouZnfDaxHeenUpmBqgl7btalN+ymiKaEEBHUoTb
Y25KzRR93nJypjY2wf3eQBwPQgpbj5AO3Udo/o2wknHywjncGzmTpw5I5+2ofNklu88kNxB6gNTd
O/DNFeDlwhTFQ/7DAiTifJr7EqeiZmBtQ0K9jFpgeEFl/uBJxZEuYyTZ4znaYbmqQbt2fm4sO9SP
YNKdJza5ZMq9XgREmbYIza+CyIMmkuGJEkuf6vnTOMMMuWW/kTvuIH9uHQO1ZqcFbbG/qXJQaM3w
ExXrGXnQ6SVAN+BQSTtzlKcEt3Xe1Kujmn1IFI5Qu1CYz34mAwYFnjPddC7HtCN1SxXKTLBXEj5p
R3/7iNWW8HyPt3q9TZCh/hlBAGB82+VZ08h5hW+fQLw/vbuHChVdRoSyOPypt/6EKU2XFRLe7A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22211CF87706D20"
last-modified: Thu, 12 Nov 2026 00:44:52 GMT
content-md5: 5WDpajowq9SIWL03rH5dyw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a22fadb7-fe88-4590-8655-f22f09b3f6c2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-16d10ab4-9fe9-9db5-299b-d97a4e6a86d0/foo/foo?comp=metadata

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
etag: "0x1D6848889310200"
last-modified: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5b0326b2-6b1a-466e-8e33-f6db5a6c7b8d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-16d10ab4-9fe9-9db5-299b-d97a4e6a86d0?restype=container&comp=list&maxresults=2

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
x-ms-request-id: d0342b5c-35b2-40ee-afa1-afae60cf0e2a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-16d10ab4-9fe9-9db5-299b-d97a4e6a86d0"><Prefix/><Marker/><MaxResults>2</MaxResults><Blobs><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:52 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:52 GMT</Last-Modified><Etag>0x1E11CFAD26D5800</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>5WDpajowq9SIWL03rH5dyw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:52 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:52 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:52 GMT</Last-Modified><Etag>0x24BA453E2B296A0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>5WDpajowq9SIWL03rH5dyw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:52 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker>baz</NextMarker></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-16d10ab4-9fe9-9db5-299b-d97a4e6a86d0?restype=container

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
x-ms-request-id: 11f4cc6e-3d27-487b-9e45-285a9d0be916
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

