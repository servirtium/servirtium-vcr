## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-15d94e4a-169e-6cb1-a162-3dd16613cec9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_Prefix
now: 2026-11-12T00:43:52.0420510+00:00

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
etag: "0x20FFBB72B84E2E0"
last-modified: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3068f875-9ea7-43d2-a0a8-5f7b3a79def5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-15d94e4a-169e-6cb1-a162-3dd16613cec9/foo

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
hdgljgyvg8hK/UtN+AOsaJN8AU2JsBDirKbuAiGMIcJCNhPahjD5mssRy6HLZHOdttQ96RGAQNXI
QuJlwYGnvtyICsLw0eJjg2eCd+VuF0cyUEtMTjewwfU9EkNNk9lKagzFQlmxreTy2mWq/sjwWSua
M3A1Wm+k2EnMsr+eFfCONw3YqdTugKNmWXTRBsItTbgXs19oFA+cIWoQ5folVMR1HMe7F7BWrLLN
zgH70tGHn2UGhmKQJSP9O4hq3puoQQWwXOr7cjUIwQetm0YNoU6YiEWVHs1i5fakvdwo7M0XJI38
S3bnjC0w/sVa44rc8Jo50VVVEyI3TXbzV7RZ39Q5lXa4EVbYsfwYZSAIBwJsx81B7xt4wRFqxP3/
9DR41h7xIU0TJN5DYCBYPK4BL0Z0ho/nF/C5wNRlTU1Y2b3HoI4BFuW1WaPu/o77IIRiaZW2i22l
kL8uN2B4rdaR6oZjkJwgABhhvizs+BlivqBPA+S3ok5PIg/O09+EPKzMXRMHl5DoQmh8VcxAuJim
y3nAKKnx2Ug4E22MUSw53IKAH5oFWiYQZ8B7O0yCDmp3KAdlxBQC24TKz4QiW/A8Q3lJwJj9oHFT
sMDpdZ77tgUDFSkk0xhufkQWO4ui7QzQP/jTOE7ReoeWEhNTGWXlzxl+HkbHF29g20JT5mXmsMK0
GTamKH23MZqhjsEEG2TfMGxyI87FCCeIclwMfZMir2FQngAvP6abx+2rJomtW8DddLX4dI3z7hAO
HbUgqrMHft5ftHxksPHF1lvhGuKe2hacLgneKjvUXK/vISLxehw5pKeqTadEecPEM50xEtMub0Ke
hHyqKFSji1fMdI/O01s/qHY69IxuWLVFGvadokrbwbHgU/agj3tTBsJQdwQ09V9C8mld9Hq1LyvH
ZA5dBekM8LPd7oBknhn65u3KHuCwESWWW7Dhfsw3KiPK2Cpt9QDZRIZRVwbf3VNPYg2M6hFLFlPp
x6o5KnHmpcNcmcXujfHs8dlZX7ketn5ckRy/qkASf8HXhC1WoBkUa7FDg0ONYdUbn/k38beZyhAr
3JhVJvuDSRoEFgnDllG/RPMH2zM7zjBHpAtG2o4JPrkdK8OAv0S2vzkpiUrMWAmnd6zDku/d7w5o
DoLwPG6L+thPpmqOP4WvUBv5EkTme0sBn2PiRqzJPzu0GLDBxoLKnY9xfLGeGTgmFEHT5N3JgZM2
7p0LqLMshWYv2SbV7YqZLnS0dP6ZYoUqvDFr9Vtd6pYci9jlv/XbRfZLb0ASUCa2OrVpFQ2UnIsX
4eyCwZAL0e6PuGKys29/2S8ITvNFGGsLtLql9NWJh+5Mzd0IWYRmQJ1RgpjEBIdG6TzdjE6Y0g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C097F3C6B666B0"
last-modified: Thu, 12 Nov 2026 00:43:52 GMT
content-md5: vFmdGgprqg7ErUkevJ3CVw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b4e61ff4-d741-4679-baf7-36ce29046b56
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-15d94e4a-169e-6cb1-a162-3dd16613cec9/bar

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
hdgljgyvg8hK/UtN+AOsaJN8AU2JsBDirKbuAiGMIcJCNhPahjD5mssRy6HLZHOdttQ96RGAQNXI
QuJlwYGnvtyICsLw0eJjg2eCd+VuF0cyUEtMTjewwfU9EkNNk9lKagzFQlmxreTy2mWq/sjwWSua
M3A1Wm+k2EnMsr+eFfCONw3YqdTugKNmWXTRBsItTbgXs19oFA+cIWoQ5folVMR1HMe7F7BWrLLN
zgH70tGHn2UGhmKQJSP9O4hq3puoQQWwXOr7cjUIwQetm0YNoU6YiEWVHs1i5fakvdwo7M0XJI38
S3bnjC0w/sVa44rc8Jo50VVVEyI3TXbzV7RZ39Q5lXa4EVbYsfwYZSAIBwJsx81B7xt4wRFqxP3/
9DR41h7xIU0TJN5DYCBYPK4BL0Z0ho/nF/C5wNRlTU1Y2b3HoI4BFuW1WaPu/o77IIRiaZW2i22l
kL8uN2B4rdaR6oZjkJwgABhhvizs+BlivqBPA+S3ok5PIg/O09+EPKzMXRMHl5DoQmh8VcxAuJim
y3nAKKnx2Ug4E22MUSw53IKAH5oFWiYQZ8B7O0yCDmp3KAdlxBQC24TKz4QiW/A8Q3lJwJj9oHFT
sMDpdZ77tgUDFSkk0xhufkQWO4ui7QzQP/jTOE7ReoeWEhNTGWXlzxl+HkbHF29g20JT5mXmsMK0
GTamKH23MZqhjsEEG2TfMGxyI87FCCeIclwMfZMir2FQngAvP6abx+2rJomtW8DddLX4dI3z7hAO
HbUgqrMHft5ftHxksPHF1lvhGuKe2hacLgneKjvUXK/vISLxehw5pKeqTadEecPEM50xEtMub0Ke
hHyqKFSji1fMdI/O01s/qHY69IxuWLVFGvadokrbwbHgU/agj3tTBsJQdwQ09V9C8mld9Hq1LyvH
ZA5dBekM8LPd7oBknhn65u3KHuCwESWWW7Dhfsw3KiPK2Cpt9QDZRIZRVwbf3VNPYg2M6hFLFlPp
x6o5KnHmpcNcmcXujfHs8dlZX7ketn5ckRy/qkASf8HXhC1WoBkUa7FDg0ONYdUbn/k38beZyhAr
3JhVJvuDSRoEFgnDllG/RPMH2zM7zjBHpAtG2o4JPrkdK8OAv0S2vzkpiUrMWAmnd6zDku/d7w5o
DoLwPG6L+thPpmqOP4WvUBv5EkTme0sBn2PiRqzJPzu0GLDBxoLKnY9xfLGeGTgmFEHT5N3JgZM2
7p0LqLMshWYv2SbV7YqZLnS0dP6ZYoUqvDFr9Vtd6pYci9jlv/XbRfZLb0ASUCa2OrVpFQ2UnIsX
4eyCwZAL0e6PuGKys29/2S8ITvNFGGsLtLql9NWJh+5Mzd0IWYRmQJ1RgpjEBIdG6TzdjE6Y0g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x208CAC6F5C16EE0"
last-modified: Thu, 12 Nov 2026 00:43:52 GMT
content-md5: vFmdGgprqg7ErUkevJ3CVw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9bbf0802-82d2-416b-b045-2686f8ecd591
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-15d94e4a-169e-6cb1-a162-3dd16613cec9/baz

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
hdgljgyvg8hK/UtN+AOsaJN8AU2JsBDirKbuAiGMIcJCNhPahjD5mssRy6HLZHOdttQ96RGAQNXI
QuJlwYGnvtyICsLw0eJjg2eCd+VuF0cyUEtMTjewwfU9EkNNk9lKagzFQlmxreTy2mWq/sjwWSua
M3A1Wm+k2EnMsr+eFfCONw3YqdTugKNmWXTRBsItTbgXs19oFA+cIWoQ5folVMR1HMe7F7BWrLLN
zgH70tGHn2UGhmKQJSP9O4hq3puoQQWwXOr7cjUIwQetm0YNoU6YiEWVHs1i5fakvdwo7M0XJI38
S3bnjC0w/sVa44rc8Jo50VVVEyI3TXbzV7RZ39Q5lXa4EVbYsfwYZSAIBwJsx81B7xt4wRFqxP3/
9DR41h7xIU0TJN5DYCBYPK4BL0Z0ho/nF/C5wNRlTU1Y2b3HoI4BFuW1WaPu/o77IIRiaZW2i22l
kL8uN2B4rdaR6oZjkJwgABhhvizs+BlivqBPA+S3ok5PIg/O09+EPKzMXRMHl5DoQmh8VcxAuJim
y3nAKKnx2Ug4E22MUSw53IKAH5oFWiYQZ8B7O0yCDmp3KAdlxBQC24TKz4QiW/A8Q3lJwJj9oHFT
sMDpdZ77tgUDFSkk0xhufkQWO4ui7QzQP/jTOE7ReoeWEhNTGWXlzxl+HkbHF29g20JT5mXmsMK0
GTamKH23MZqhjsEEG2TfMGxyI87FCCeIclwMfZMir2FQngAvP6abx+2rJomtW8DddLX4dI3z7hAO
HbUgqrMHft5ftHxksPHF1lvhGuKe2hacLgneKjvUXK/vISLxehw5pKeqTadEecPEM50xEtMub0Ke
hHyqKFSji1fMdI/O01s/qHY69IxuWLVFGvadokrbwbHgU/agj3tTBsJQdwQ09V9C8mld9Hq1LyvH
ZA5dBekM8LPd7oBknhn65u3KHuCwESWWW7Dhfsw3KiPK2Cpt9QDZRIZRVwbf3VNPYg2M6hFLFlPp
x6o5KnHmpcNcmcXujfHs8dlZX7ketn5ckRy/qkASf8HXhC1WoBkUa7FDg0ONYdUbn/k38beZyhAr
3JhVJvuDSRoEFgnDllG/RPMH2zM7zjBHpAtG2o4JPrkdK8OAv0S2vzkpiUrMWAmnd6zDku/d7w5o
DoLwPG6L+thPpmqOP4WvUBv5EkTme0sBn2PiRqzJPzu0GLDBxoLKnY9xfLGeGTgmFEHT5N3JgZM2
7p0LqLMshWYv2SbV7YqZLnS0dP6ZYoUqvDFr9Vtd6pYci9jlv/XbRfZLb0ASUCa2OrVpFQ2UnIsX
4eyCwZAL0e6PuGKys29/2S8ITvNFGGsLtLql9NWJh+5Mzd0IWYRmQJ1RgpjEBIdG6TzdjE6Y0g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24DEC97925A4F60"
last-modified: Thu, 12 Nov 2026 00:43:52 GMT
content-md5: vFmdGgprqg7ErUkevJ3CVw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0b0c8f62-c933-4bc9-a539-9e5b641f7568
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-15d94e4a-169e-6cb1-a162-3dd16613cec9/foo/foo

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
hdgljgyvg8hK/UtN+AOsaJN8AU2JsBDirKbuAiGMIcJCNhPahjD5mssRy6HLZHOdttQ96RGAQNXI
QuJlwYGnvtyICsLw0eJjg2eCd+VuF0cyUEtMTjewwfU9EkNNk9lKagzFQlmxreTy2mWq/sjwWSua
M3A1Wm+k2EnMsr+eFfCONw3YqdTugKNmWXTRBsItTbgXs19oFA+cIWoQ5folVMR1HMe7F7BWrLLN
zgH70tGHn2UGhmKQJSP9O4hq3puoQQWwXOr7cjUIwQetm0YNoU6YiEWVHs1i5fakvdwo7M0XJI38
S3bnjC0w/sVa44rc8Jo50VVVEyI3TXbzV7RZ39Q5lXa4EVbYsfwYZSAIBwJsx81B7xt4wRFqxP3/
9DR41h7xIU0TJN5DYCBYPK4BL0Z0ho/nF/C5wNRlTU1Y2b3HoI4BFuW1WaPu/o77IIRiaZW2i22l
kL8uN2B4rdaR6oZjkJwgABhhvizs+BlivqBPA+S3ok5PIg/O09+EPKzMXRMHl5DoQmh8VcxAuJim
y3nAKKnx2Ug4E22MUSw53IKAH5oFWiYQZ8B7O0yCDmp3KAdlxBQC24TKz4QiW/A8Q3lJwJj9oHFT
sMDpdZ77tgUDFSkk0xhufkQWO4ui7QzQP/jTOE7ReoeWEhNTGWXlzxl+HkbHF29g20JT5mXmsMK0
GTamKH23MZqhjsEEG2TfMGxyI87FCCeIclwMfZMir2FQngAvP6abx+2rJomtW8DddLX4dI3z7hAO
HbUgqrMHft5ftHxksPHF1lvhGuKe2hacLgneKjvUXK/vISLxehw5pKeqTadEecPEM50xEtMub0Ke
hHyqKFSji1fMdI/O01s/qHY69IxuWLVFGvadokrbwbHgU/agj3tTBsJQdwQ09V9C8mld9Hq1LyvH
ZA5dBekM8LPd7oBknhn65u3KHuCwESWWW7Dhfsw3KiPK2Cpt9QDZRIZRVwbf3VNPYg2M6hFLFlPp
x6o5KnHmpcNcmcXujfHs8dlZX7ketn5ckRy/qkASf8HXhC1WoBkUa7FDg0ONYdUbn/k38beZyhAr
3JhVJvuDSRoEFgnDllG/RPMH2zM7zjBHpAtG2o4JPrkdK8OAv0S2vzkpiUrMWAmnd6zDku/d7w5o
DoLwPG6L+thPpmqOP4WvUBv5EkTme0sBn2PiRqzJPzu0GLDBxoLKnY9xfLGeGTgmFEHT5N3JgZM2
7p0LqLMshWYv2SbV7YqZLnS0dP6ZYoUqvDFr9Vtd6pYci9jlv/XbRfZLb0ASUCa2OrVpFQ2UnIsX
4eyCwZAL0e6PuGKys29/2S8ITvNFGGsLtLql9NWJh+5Mzd0IWYRmQJ1RgpjEBIdG6TzdjE6Y0g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24D828277E3BB40"
last-modified: Thu, 12 Nov 2026 00:43:52 GMT
content-md5: vFmdGgprqg7ErUkevJ3CVw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a8e39f0e-0986-4870-bcbd-46fe95ed2e86
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-15d94e4a-169e-6cb1-a162-3dd16613cec9/foo/bar

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
hdgljgyvg8hK/UtN+AOsaJN8AU2JsBDirKbuAiGMIcJCNhPahjD5mssRy6HLZHOdttQ96RGAQNXI
QuJlwYGnvtyICsLw0eJjg2eCd+VuF0cyUEtMTjewwfU9EkNNk9lKagzFQlmxreTy2mWq/sjwWSua
M3A1Wm+k2EnMsr+eFfCONw3YqdTugKNmWXTRBsItTbgXs19oFA+cIWoQ5folVMR1HMe7F7BWrLLN
zgH70tGHn2UGhmKQJSP9O4hq3puoQQWwXOr7cjUIwQetm0YNoU6YiEWVHs1i5fakvdwo7M0XJI38
S3bnjC0w/sVa44rc8Jo50VVVEyI3TXbzV7RZ39Q5lXa4EVbYsfwYZSAIBwJsx81B7xt4wRFqxP3/
9DR41h7xIU0TJN5DYCBYPK4BL0Z0ho/nF/C5wNRlTU1Y2b3HoI4BFuW1WaPu/o77IIRiaZW2i22l
kL8uN2B4rdaR6oZjkJwgABhhvizs+BlivqBPA+S3ok5PIg/O09+EPKzMXRMHl5DoQmh8VcxAuJim
y3nAKKnx2Ug4E22MUSw53IKAH5oFWiYQZ8B7O0yCDmp3KAdlxBQC24TKz4QiW/A8Q3lJwJj9oHFT
sMDpdZ77tgUDFSkk0xhufkQWO4ui7QzQP/jTOE7ReoeWEhNTGWXlzxl+HkbHF29g20JT5mXmsMK0
GTamKH23MZqhjsEEG2TfMGxyI87FCCeIclwMfZMir2FQngAvP6abx+2rJomtW8DddLX4dI3z7hAO
HbUgqrMHft5ftHxksPHF1lvhGuKe2hacLgneKjvUXK/vISLxehw5pKeqTadEecPEM50xEtMub0Ke
hHyqKFSji1fMdI/O01s/qHY69IxuWLVFGvadokrbwbHgU/agj3tTBsJQdwQ09V9C8mld9Hq1LyvH
ZA5dBekM8LPd7oBknhn65u3KHuCwESWWW7Dhfsw3KiPK2Cpt9QDZRIZRVwbf3VNPYg2M6hFLFlPp
x6o5KnHmpcNcmcXujfHs8dlZX7ketn5ckRy/qkASf8HXhC1WoBkUa7FDg0ONYdUbn/k38beZyhAr
3JhVJvuDSRoEFgnDllG/RPMH2zM7zjBHpAtG2o4JPrkdK8OAv0S2vzkpiUrMWAmnd6zDku/d7w5o
DoLwPG6L+thPpmqOP4WvUBv5EkTme0sBn2PiRqzJPzu0GLDBxoLKnY9xfLGeGTgmFEHT5N3JgZM2
7p0LqLMshWYv2SbV7YqZLnS0dP6ZYoUqvDFr9Vtd6pYci9jlv/XbRfZLb0ASUCa2OrVpFQ2UnIsX
4eyCwZAL0e6PuGKys29/2S8ITvNFGGsLtLql9NWJh+5Mzd0IWYRmQJ1RgpjEBIdG6TzdjE6Y0g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FC956CE34D0C80"
last-modified: Thu, 12 Nov 2026 00:43:52 GMT
content-md5: vFmdGgprqg7ErUkevJ3CVw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6e453e5e-318d-4a9f-9cad-c1dd880e5d93
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-15d94e4a-169e-6cb1-a162-3dd16613cec9/baz/foo

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
hdgljgyvg8hK/UtN+AOsaJN8AU2JsBDirKbuAiGMIcJCNhPahjD5mssRy6HLZHOdttQ96RGAQNXI
QuJlwYGnvtyICsLw0eJjg2eCd+VuF0cyUEtMTjewwfU9EkNNk9lKagzFQlmxreTy2mWq/sjwWSua
M3A1Wm+k2EnMsr+eFfCONw3YqdTugKNmWXTRBsItTbgXs19oFA+cIWoQ5folVMR1HMe7F7BWrLLN
zgH70tGHn2UGhmKQJSP9O4hq3puoQQWwXOr7cjUIwQetm0YNoU6YiEWVHs1i5fakvdwo7M0XJI38
S3bnjC0w/sVa44rc8Jo50VVVEyI3TXbzV7RZ39Q5lXa4EVbYsfwYZSAIBwJsx81B7xt4wRFqxP3/
9DR41h7xIU0TJN5DYCBYPK4BL0Z0ho/nF/C5wNRlTU1Y2b3HoI4BFuW1WaPu/o77IIRiaZW2i22l
kL8uN2B4rdaR6oZjkJwgABhhvizs+BlivqBPA+S3ok5PIg/O09+EPKzMXRMHl5DoQmh8VcxAuJim
y3nAKKnx2Ug4E22MUSw53IKAH5oFWiYQZ8B7O0yCDmp3KAdlxBQC24TKz4QiW/A8Q3lJwJj9oHFT
sMDpdZ77tgUDFSkk0xhufkQWO4ui7QzQP/jTOE7ReoeWEhNTGWXlzxl+HkbHF29g20JT5mXmsMK0
GTamKH23MZqhjsEEG2TfMGxyI87FCCeIclwMfZMir2FQngAvP6abx+2rJomtW8DddLX4dI3z7hAO
HbUgqrMHft5ftHxksPHF1lvhGuKe2hacLgneKjvUXK/vISLxehw5pKeqTadEecPEM50xEtMub0Ke
hHyqKFSji1fMdI/O01s/qHY69IxuWLVFGvadokrbwbHgU/agj3tTBsJQdwQ09V9C8mld9Hq1LyvH
ZA5dBekM8LPd7oBknhn65u3KHuCwESWWW7Dhfsw3KiPK2Cpt9QDZRIZRVwbf3VNPYg2M6hFLFlPp
x6o5KnHmpcNcmcXujfHs8dlZX7ketn5ckRy/qkASf8HXhC1WoBkUa7FDg0ONYdUbn/k38beZyhAr
3JhVJvuDSRoEFgnDllG/RPMH2zM7zjBHpAtG2o4JPrkdK8OAv0S2vzkpiUrMWAmnd6zDku/d7w5o
DoLwPG6L+thPpmqOP4WvUBv5EkTme0sBn2PiRqzJPzu0GLDBxoLKnY9xfLGeGTgmFEHT5N3JgZM2
7p0LqLMshWYv2SbV7YqZLnS0dP6ZYoUqvDFr9Vtd6pYci9jlv/XbRfZLb0ASUCa2OrVpFQ2UnIsX
4eyCwZAL0e6PuGKys29/2S8ITvNFGGsLtLql9NWJh+5Mzd0IWYRmQJ1RgpjEBIdG6TzdjE6Y0g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FA00733D0CF230"
last-modified: Thu, 12 Nov 2026 00:43:52 GMT
content-md5: vFmdGgprqg7ErUkevJ3CVw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a555ccc2-488d-4947-9d19-917761e26036
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-15d94e4a-169e-6cb1-a162-3dd16613cec9/baz/foo/bar

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
hdgljgyvg8hK/UtN+AOsaJN8AU2JsBDirKbuAiGMIcJCNhPahjD5mssRy6HLZHOdttQ96RGAQNXI
QuJlwYGnvtyICsLw0eJjg2eCd+VuF0cyUEtMTjewwfU9EkNNk9lKagzFQlmxreTy2mWq/sjwWSua
M3A1Wm+k2EnMsr+eFfCONw3YqdTugKNmWXTRBsItTbgXs19oFA+cIWoQ5folVMR1HMe7F7BWrLLN
zgH70tGHn2UGhmKQJSP9O4hq3puoQQWwXOr7cjUIwQetm0YNoU6YiEWVHs1i5fakvdwo7M0XJI38
S3bnjC0w/sVa44rc8Jo50VVVEyI3TXbzV7RZ39Q5lXa4EVbYsfwYZSAIBwJsx81B7xt4wRFqxP3/
9DR41h7xIU0TJN5DYCBYPK4BL0Z0ho/nF/C5wNRlTU1Y2b3HoI4BFuW1WaPu/o77IIRiaZW2i22l
kL8uN2B4rdaR6oZjkJwgABhhvizs+BlivqBPA+S3ok5PIg/O09+EPKzMXRMHl5DoQmh8VcxAuJim
y3nAKKnx2Ug4E22MUSw53IKAH5oFWiYQZ8B7O0yCDmp3KAdlxBQC24TKz4QiW/A8Q3lJwJj9oHFT
sMDpdZ77tgUDFSkk0xhufkQWO4ui7QzQP/jTOE7ReoeWEhNTGWXlzxl+HkbHF29g20JT5mXmsMK0
GTamKH23MZqhjsEEG2TfMGxyI87FCCeIclwMfZMir2FQngAvP6abx+2rJomtW8DddLX4dI3z7hAO
HbUgqrMHft5ftHxksPHF1lvhGuKe2hacLgneKjvUXK/vISLxehw5pKeqTadEecPEM50xEtMub0Ke
hHyqKFSji1fMdI/O01s/qHY69IxuWLVFGvadokrbwbHgU/agj3tTBsJQdwQ09V9C8mld9Hq1LyvH
ZA5dBekM8LPd7oBknhn65u3KHuCwESWWW7Dhfsw3KiPK2Cpt9QDZRIZRVwbf3VNPYg2M6hFLFlPp
x6o5KnHmpcNcmcXujfHs8dlZX7ketn5ckRy/qkASf8HXhC1WoBkUa7FDg0ONYdUbn/k38beZyhAr
3JhVJvuDSRoEFgnDllG/RPMH2zM7zjBHpAtG2o4JPrkdK8OAv0S2vzkpiUrMWAmnd6zDku/d7w5o
DoLwPG6L+thPpmqOP4WvUBv5EkTme0sBn2PiRqzJPzu0GLDBxoLKnY9xfLGeGTgmFEHT5N3JgZM2
7p0LqLMshWYv2SbV7YqZLnS0dP6ZYoUqvDFr9Vtd6pYci9jlv/XbRfZLb0ASUCa2OrVpFQ2UnIsX
4eyCwZAL0e6PuGKys29/2S8ITvNFGGsLtLql9NWJh+5Mzd0IWYRmQJ1RgpjEBIdG6TzdjE6Y0g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FDE0BA9D943E30"
last-modified: Thu, 12 Nov 2026 00:43:52 GMT
content-md5: vFmdGgprqg7ErUkevJ3CVw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0913743a-4bc1-44a1-9f9a-63b7643e3929
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-15d94e4a-169e-6cb1-a162-3dd16613cec9/baz/bar/foo

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
hdgljgyvg8hK/UtN+AOsaJN8AU2JsBDirKbuAiGMIcJCNhPahjD5mssRy6HLZHOdttQ96RGAQNXI
QuJlwYGnvtyICsLw0eJjg2eCd+VuF0cyUEtMTjewwfU9EkNNk9lKagzFQlmxreTy2mWq/sjwWSua
M3A1Wm+k2EnMsr+eFfCONw3YqdTugKNmWXTRBsItTbgXs19oFA+cIWoQ5folVMR1HMe7F7BWrLLN
zgH70tGHn2UGhmKQJSP9O4hq3puoQQWwXOr7cjUIwQetm0YNoU6YiEWVHs1i5fakvdwo7M0XJI38
S3bnjC0w/sVa44rc8Jo50VVVEyI3TXbzV7RZ39Q5lXa4EVbYsfwYZSAIBwJsx81B7xt4wRFqxP3/
9DR41h7xIU0TJN5DYCBYPK4BL0Z0ho/nF/C5wNRlTU1Y2b3HoI4BFuW1WaPu/o77IIRiaZW2i22l
kL8uN2B4rdaR6oZjkJwgABhhvizs+BlivqBPA+S3ok5PIg/O09+EPKzMXRMHl5DoQmh8VcxAuJim
y3nAKKnx2Ug4E22MUSw53IKAH5oFWiYQZ8B7O0yCDmp3KAdlxBQC24TKz4QiW/A8Q3lJwJj9oHFT
sMDpdZ77tgUDFSkk0xhufkQWO4ui7QzQP/jTOE7ReoeWEhNTGWXlzxl+HkbHF29g20JT5mXmsMK0
GTamKH23MZqhjsEEG2TfMGxyI87FCCeIclwMfZMir2FQngAvP6abx+2rJomtW8DddLX4dI3z7hAO
HbUgqrMHft5ftHxksPHF1lvhGuKe2hacLgneKjvUXK/vISLxehw5pKeqTadEecPEM50xEtMub0Ke
hHyqKFSji1fMdI/O01s/qHY69IxuWLVFGvadokrbwbHgU/agj3tTBsJQdwQ09V9C8mld9Hq1LyvH
ZA5dBekM8LPd7oBknhn65u3KHuCwESWWW7Dhfsw3KiPK2Cpt9QDZRIZRVwbf3VNPYg2M6hFLFlPp
x6o5KnHmpcNcmcXujfHs8dlZX7ketn5ckRy/qkASf8HXhC1WoBkUa7FDg0ONYdUbn/k38beZyhAr
3JhVJvuDSRoEFgnDllG/RPMH2zM7zjBHpAtG2o4JPrkdK8OAv0S2vzkpiUrMWAmnd6zDku/d7w5o
DoLwPG6L+thPpmqOP4WvUBv5EkTme0sBn2PiRqzJPzu0GLDBxoLKnY9xfLGeGTgmFEHT5N3JgZM2
7p0LqLMshWYv2SbV7YqZLnS0dP6ZYoUqvDFr9Vtd6pYci9jlv/XbRfZLb0ASUCa2OrVpFQ2UnIsX
4eyCwZAL0e6PuGKys29/2S8ITvNFGGsLtLql9NWJh+5Mzd0IWYRmQJ1RgpjEBIdG6TzdjE6Y0g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EAB38F62FBFC40"
last-modified: Thu, 12 Nov 2026 00:43:52 GMT
content-md5: vFmdGgprqg7ErUkevJ3CVw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8c9de398-12f5-4e8f-881e-336f97f69c7c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-15d94e4a-169e-6cb1-a162-3dd16613cec9/foo/foo?comp=metadata

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
etag: "0x1D8A5A13D88E020"
last-modified: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e1ba851d-d35d-4109-9eae-7a00dc1ea8d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-15d94e4a-169e-6cb1-a162-3dd16613cec9?restype=container&comp=list&prefix=foo

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
x-ms-request-id: 7c7bcab7-3c02-47a0-b2c4-57b1a8e47120
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-15d94e4a-169e-6cb1-a162-3dd16613cec9"><Prefix>foo</Prefix><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:52 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:52 GMT</Last-Modified><Etag>0x1C097F3C6B666B0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>vFmdGgprqg7ErUkevJ3CVw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:52 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:52 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:52 GMT</Last-Modified><Etag>0x1FC956CE34D0C80</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>vFmdGgprqg7ErUkevJ3CVw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:52 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:52 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:52 GMT</Last-Modified><Etag>0x1D8A5A13D88E020</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>vFmdGgprqg7ErUkevJ3CVw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:52 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-15d94e4a-169e-6cb1-a162-3dd16613cec9?restype=container

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
x-ms-request-id: 2f5fe2f9-512f-478f-a922-4642a32a5271
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

