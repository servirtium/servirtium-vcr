## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9fc9c7da-e7af-8bce-5c13-ce2f93a2103d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_EncryptionScope
now: 2026-11-12T00:47:53.3002114+00:00

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
etag: "0x27C3D5DD6FD0DA0"
last-modified: Thu, 12 Nov 2026 00:47:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f2faf119-4cd4-45e7-91ae-089a7fb06024
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9fc9c7da-e7af-8bce-5c13-ce2f93a2103d/test-blob-823f7ea6-da3a-bf96-54de-6b0add629479

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
f+lwSujOAUD202GpKAhYNLRhMIsI/dTsP6iD93kQl7+920dSEIf3C8WIqduGJGJUupl7MXKENYEV
gws/SgnH5jyh603ABiMtaiTFf1T4ZRpFLzzflGVNOKbFPY17t8G8wcKf5TkVlLR2TsdNv7UtHB3x
+RrM6FHWVLOm+smWsbJiCb6RWIDgMJuIaUae/3nwmCBvir6n79hxyZGGbpnq35wU67X2nMOdEMl+
RH8KOFU5tmGpJyf0uxnlII/vWsEBnYmqiRPD+fxc0Xn0KKpZZpE8TLg4Qbh0Hy+cEXs0rrUHfab1
X65BdrxlTFatAJNvi7n+sw0IyVvRNWrkJ+iAKCLD7KsDZAbi+tb80vVhxh+cLIXCNfun/rNLJCpE
XU7U5SMz6hPnayeyG7g3DPdmb29KR/pivfMnG+33uD/cnp2HJ+3RLtwMtMFdEBlCcPK85LW6+RVU
cScwC84l8LLo1XwasOUKlECSPZI4BK3Z5Kv7O9OKIaSHMrbFoCMO58QPdTqcKMANsk90KLyDHGx6
ViYiKbXeXbPYkn0uRPMdhFbNKY9yPbzr7omEFvnoBBZJSkr8670PMRiGxJVC3m1bV6NmtfLdCBlp
NzorWke6745m5fqpIJmYvvh263gnqBAbKL5Vgk4ja0Iwk7OC49bQzNUH2/lysjcKzff6ZhygQo4q
DzGIZGw/Qnm3eY3lFdohph+jH8wXqXaHS7VXKAUlkFAlWNOkSGdoyJiAuzipJLcd2cD9/CPBEma7
ABm36Bpzkeg8wLwGfF23O1czl+093ib9OU9EKJMtY0Vs6UdOsN9+DClQbGT6F11iRsHLjXt5fiLy
uq7KL2lVD113mZMWaIp3tYvE7XHCAiLx4uHRYdXK82slW/Yws9y/+l0Hg33KTN02U9jwtJCxMLeM
2U2HhK2HrKUn8Q2URgGuBPMTu3+kJ5UEmw782T/acys/pNqPN3avf9bXolvQogzXQq+dnXU457G3
g+ifitNmTX3hVKImHs18ZDuozYU6M/gBJZePPNa2B70p2LOND/QDcVTe7k1qsCTiIDk5jxorfVDw
nmQ81hCnK03l/UYZ71VHpFswXESrlnVyrRycfHej/VpjnHCPx5pENsL/hbPeyTDk8uu++iELRQfv
ySn0Cq7WQv/rtVLkt93A7CWBqxHBlOPruIqL5AM5WFdon/5xTywTKEO08hPd/zoO/Q78iZn2LjRF
CFEkS137slz7exffT5z5boLODaLPDblQfeb1Pc69cnHJLEfa793luEC24oQjLq5xAhsXKCCSdfuY
1M12BnWNPQmlFSJVHn6k6FRhGSo0LU43gzqzpkpQN7ZLQRsQbrHLKKV6fRmMG+Sdcj/MMFzQYw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x270B1BF07D427A0"
last-modified: Thu, 12 Nov 2026 00:47:53 GMT
content-md5: Kt3oFZkpPE9rYEpzTx2Gdw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 299d2554-073e-4942-a9d9-02e1d04812ec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-9fc9c7da-e7af-8bce-5c13-ce2f93a2103d/test-blob-823f7ea6-da3a-bf96-54de-6b0add629479

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:53 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:53 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x270B1BF07D427A0"
content-md5: Kt3oFZkpPE9rYEpzTx2Gdw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8120aea8-7f93-470c-8e6e-2e831905848c
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:53 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: Kt3oFZkpPE9rYEpzTx2Gdw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
f+lwSujOAUD202GpKAhYNLRhMIsI/dTsP6iD93kQl7+920dSEIf3C8WIqduGJGJUupl7MXKENYEV
gws/SgnH5jyh603ABiMtaiTFf1T4ZRpFLzzflGVNOKbFPY17t8G8wcKf5TkVlLR2TsdNv7UtHB3x
+RrM6FHWVLOm+smWsbJiCb6RWIDgMJuIaUae/3nwmCBvir6n79hxyZGGbpnq35wU67X2nMOdEMl+
RH8KOFU5tmGpJyf0uxnlII/vWsEBnYmqiRPD+fxc0Xn0KKpZZpE8TLg4Qbh0Hy+cEXs0rrUHfab1
X65BdrxlTFatAJNvi7n+sw0IyVvRNWrkJ+iAKCLD7KsDZAbi+tb80vVhxh+cLIXCNfun/rNLJCpE
XU7U5SMz6hPnayeyG7g3DPdmb29KR/pivfMnG+33uD/cnp2HJ+3RLtwMtMFdEBlCcPK85LW6+RVU
cScwC84l8LLo1XwasOUKlECSPZI4BK3Z5Kv7O9OKIaSHMrbFoCMO58QPdTqcKMANsk90KLyDHGx6
ViYiKbXeXbPYkn0uRPMdhFbNKY9yPbzr7omEFvnoBBZJSkr8670PMRiGxJVC3m1bV6NmtfLdCBlp
NzorWke6745m5fqpIJmYvvh263gnqBAbKL5Vgk4ja0Iwk7OC49bQzNUH2/lysjcKzff6ZhygQo4q
DzGIZGw/Qnm3eY3lFdohph+jH8wXqXaHS7VXKAUlkFAlWNOkSGdoyJiAuzipJLcd2cD9/CPBEma7
ABm36Bpzkeg8wLwGfF23O1czl+093ib9OU9EKJMtY0Vs6UdOsN9+DClQbGT6F11iRsHLjXt5fiLy
uq7KL2lVD113mZMWaIp3tYvE7XHCAiLx4uHRYdXK82slW/Yws9y/+l0Hg33KTN02U9jwtJCxMLeM
2U2HhK2HrKUn8Q2URgGuBPMTu3+kJ5UEmw782T/acys/pNqPN3avf9bXolvQogzXQq+dnXU457G3
g+ifitNmTX3hVKImHs18ZDuozYU6M/gBJZePPNa2B70p2LOND/QDcVTe7k1qsCTiIDk5jxorfVDw
nmQ81hCnK03l/UYZ71VHpFswXESrlnVyrRycfHej/VpjnHCPx5pENsL/hbPeyTDk8uu++iELRQfv
ySn0Cq7WQv/rtVLkt93A7CWBqxHBlOPruIqL5AM5WFdon/5xTywTKEO08hPd/zoO/Q78iZn2LjRF
CFEkS137slz7exffT5z5boLODaLPDblQfeb1Pc69cnHJLEfa793luEC24oQjLq5xAhsXKCCSdfuY
1M12BnWNPQmlFSJVHn6k6FRhGSo0LU43gzqzpkpQN7ZLQRsQbrHLKKV6fRmMG+Sdcj/MMFzQYw==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-9fc9c7da-e7af-8bce-5c13-ce2f93a2103d?restype=container

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
x-ms-request-id: deddc9e0-cdd2-4326-b6c7-3feeaf0afa74
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

