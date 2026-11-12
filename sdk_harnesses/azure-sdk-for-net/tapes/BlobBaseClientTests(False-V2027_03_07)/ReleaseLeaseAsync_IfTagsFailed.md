## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-70ace2ee-37c1-835c-ede8-e86072818478?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).ReleaseLeaseAsync_IfTagsFailed
now: 2026-11-12T00:47:03.5755581+00:00

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
etag: "0x274C49D2687D380"
last-modified: Thu, 12 Nov 2026 00:47:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 97141dd7-4bbd-4345-aca3-c3184dc9986f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-70ace2ee-37c1-835c-ede8-e86072818478/test-blob-5b567346-b58c-f372-249b-fdabc3516b50

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
yYu+hOWNizM/nzWDQi8HGowXdBSh/uA5cLhLJTmxv5x8mJbmwgCTuegiG+yA7rH0lOIeq9xXrsqr
hRQsQWX6jt+ZBqmYIViMhLsrfuPzuYEGVpFWkhS/JOrMOz3rZneCKIwN5ucIXHOKkiYgKy/mt8uS
JerTo/zL2eK/zOUboR1EqVZW5dKZ/voezADtnvm65YNxWECNr4SQQg0FSZCNbvAI3ILZkNL5+Sfw
tdb83TroBOZiqUjdtvrRxqPFlLRqkV0P5MJ24VWxeF8YnPmulGTSHESpKsWoKyWIB8kuNGRyhSN4
7Pl4ciORsTHpxBoAIzI+8ndwwGaYZ7ic7dqLgkT6pRfVNadqWqogF3mTv2cLiOOX70HsAsW94IVB
3IRJBS7t7h4DKu6K1JjNUKjtBadRkGX29JICDaNRGFQhKX4l1hFKpdBICF31DBupH7Icz9vd70se
UxGc6uB7sRGZaaoap3mXo1/XCIcHAOh2WO7xNUl5RDkyB4MArbvwzVdLXKJxj3c5hSt7BubDFlIo
JZHxiXvIHyVw56D1lvak5jswvKRFBcl2uLAe/T1Tb/Aw2Igp/kPcgzx9AKjXQ+411yCrk1qu4h/I
etHLqiHnHXivxL5te+f3VDhnxwUhn3TB6CYdp9uVgfVoYIRyENkbleMvJ34wx1w4tD4iRxoap9tc
CcH7ynacGUPIBBpjhENeSzIh8Xf2kCDJ5POcczraTrmoFgcYH8ttkw07Z8NC1S/7w/zo+LVjZXig
MuaD/6YJ7rZhum48RitmtF5quildhw7DobA98VYDRbCOeO3k6pNnMnkM4BvBv33QgkNX+atPQqvY
v131y/1gXnW9rc4+gsrKAoivUabzAeIzbW8Sq0sFPzVCDCo1cmd8rIKlAxGukf94jfYin/EE5L17
wl2NTbIpuG6Y/HWglJAhM6QkTf7QhNxvmR5V4p9EPShsuq8K7l/PfEujFpWJ2PhmAWtN35a/qj2A
HbOU1NXPU75NM9rgF0VEVdGyLW5H5cAl7uEz912RrA9yidCrOqh208LWPKUdhekmCIrEDXzPOTfy
buXzm1xgu4bKbo10mRopPFmrcKkbCGn3DO/TzJ+Tok+ZuMvCgjhmdYAeUxZcsm9wm9AiI8iO12Z8
+45tje/nN8s+2+BOZrohRfoo/bRSm1qAYzHPcH6GCuFlRoap+eiRNxtLHdeOITUWAd7OZdmxKV80
7Cq+F8dNt9D+6R8zd0wSl8WZB32C8UH8uW+guKQHsxwmdQy90x9U/WYHkDcV4omSu80TGCLisvvo
wl5Xrf4r9jUCDAI/VMSmRAkXe2AJ5tbmDfzX9Jr6RMIQ1RHB/FBn25kBEtWGUmcJbdMZyjaa3g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22897653BAA51E0"
last-modified: Thu, 12 Nov 2026 00:47:03 GMT
content-md5: kfHHjTzhdNenorPywJ9sXA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ba055d54-6858-45c0-8a51-bf75500048be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-70ace2ee-37c1-835c-ede8-e86072818478/test-blob-5b567346-b58c-f372-249b-fdabc3516b50?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 9f7187db-5402-9a02-08c8-402f7fb3e448
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22897653BAA51E0"
last-modified: Thu, 12 Nov 2026 00:47:03 GMT
x-ms-lease-id: 9f7187db-5402-9a02-08c8-402f7fb3e448
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ed8fefa8-a8b4-4b9b-b9ed-7254f99b8627
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-70ace2ee-37c1-835c-ede8-e86072818478/test-blob-5b567346-b58c-f372-249b-fdabc3516b50?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: release
x-ms-lease-id: 9f7187db-5402-9a02-08c8-402f7fb3e448
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 6db2f92e-539a-44ce-82dc-63d2da849de0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:03 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-70ace2ee-37c1-835c-ede8-e86072818478?restype=container

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
x-ms-request-id: 6edb06a1-c99f-40eb-9085-4d5de822d0dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

