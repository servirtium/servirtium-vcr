## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d86d55d5-fdc2-932a-ce1c-1fd80d1ec7fa?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_LastAccessed
now: 2026-11-12T00:43:50.5972253+00:00

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
etag: "0x2689909745EBBC0"
last-modified: Thu, 12 Nov 2026 00:43:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a2bb3023-9bb7-4576-8dd5-0cbc4837eecf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d86d55d5-fdc2-932a-ce1c-1fd80d1ec7fa/foo

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
K9wyA6NFnYtM6aaenB7QZxBxxg7ytArHJaA1jxPkGJvTK2bnn7vSkLjhi9lXjPevS7jHm1i5B3fR
a94DDw14aNELynC36cdUnzVWECgxcJiphUNaHH1CGiTvFjTdz4GqaSMHTMKH+GLwc/wiYvdOn/tF
WYnJHUxUyLBMyNKTd8+0rKYFKSPWIo3haqmAH7gtoHc4mHX34EzWs4MSOi+PXPssbrVQSHXXbjf7
6LKi06n3HydbWt5ZvMtaLnagxOdeUQ2tVLEC3FgBYSo9/PeZM+DZGhsHNAEd0rHp9Rn/NqlQnZek
9X/49ULPWfm0HMDUwfqVx6rMVhwMkIEAGOc+AiqA7V5g9D5h4STYN9sIaLbwFTQeaW//hEd6mGX9
+N1bkVbPNC5ic8y8NOWF8x5BAyfKDwKyH5m7gGkX5lzZY+hHfaaEOTSIjqJoYjSJepAoOJQ9M+ja
qHK9FLPESoxv49H9PXV4vcrzQoFfSr1kMQbY763Hmy8AbdUzxiSAw0QV+H5jjDwbr3vJSvFnel61
WeKs7FrfqEeh/NCgRPalcn49SlE+AaXKvT8x/VA+mPJ2fm1C09fpNlA2wY9semuFI9dyKjAMdlc9
4i8brar2Y2TdKcaIY56nVBMBB0AVXULUrNl5y27BaQcVBPGozYilQF0rjlGk/MA5y9YcC28XJ4Ts
RwHRfZj1HL++cl6t/4aLXMfi6s/xL7AZPwCYpV6Y/t1su4aH1MLFNXKR5olhi8tPka6oND21+xdQ
tz6XXXdhJnSBQUQAA4gFHbRdYEgnt7M1SROv78mftsBuNhyDLdj7L8AU4EqHT40moxeJWJvOKQCK
YhRjsTaq4YqEkc1rge/bYjCIEtdprfmGiEyyFl4loA0c+cvEl36Jav6/A73AuiEorfZqRhcoIbQa
3Sjp98ssXvG/T4gjFsqx/qfZqao8xc4rimhoulr289gXqrpVn3Iyk6TMAGuZBJcruEdvTncJ3hda
vm1jw6SXyVuwDGwPXF41phYGb8RikYXRPAEShqRgDcyi++EEz8//NTcP6PcrG1zoOqhgA25T9yzn
kYajhEK2T/+fbWB9MNdGBjmNU6mOpiCkKkz8/wldTwO0HT1IXLH0WJn4i678agnQGvw1xaSDWetl
/1n2ulD2QR5dyBOZ/qqImfoPlRpyqL9CK+UMKIleMcNR4lxX/Z5JAkmQnqL2NxxRrCypc8PR81aZ
s45q6RmV/pZPRxtNMJtcxpPQ4gkdTPTJu3tctL0AgO8GvUoP3hgw+58Lp+8AA3uRTa0vABFMfGaa
oC6dOErZT8crR3JQTOd6n+ZqEqUFyLcAymcQ0H/duUHjdT3qk8JVMlcn1LwIQADFtGEq4mnBlA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2509526CECBEB80"
last-modified: Thu, 12 Nov 2026 00:43:50 GMT
content-md5: aXwbrtjlR+G3seEsUjgn5A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b04e5587-b138-47a3-886a-02c889aa36fd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d86d55d5-fdc2-932a-ce1c-1fd80d1ec7fa/bar

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
K9wyA6NFnYtM6aaenB7QZxBxxg7ytArHJaA1jxPkGJvTK2bnn7vSkLjhi9lXjPevS7jHm1i5B3fR
a94DDw14aNELynC36cdUnzVWECgxcJiphUNaHH1CGiTvFjTdz4GqaSMHTMKH+GLwc/wiYvdOn/tF
WYnJHUxUyLBMyNKTd8+0rKYFKSPWIo3haqmAH7gtoHc4mHX34EzWs4MSOi+PXPssbrVQSHXXbjf7
6LKi06n3HydbWt5ZvMtaLnagxOdeUQ2tVLEC3FgBYSo9/PeZM+DZGhsHNAEd0rHp9Rn/NqlQnZek
9X/49ULPWfm0HMDUwfqVx6rMVhwMkIEAGOc+AiqA7V5g9D5h4STYN9sIaLbwFTQeaW//hEd6mGX9
+N1bkVbPNC5ic8y8NOWF8x5BAyfKDwKyH5m7gGkX5lzZY+hHfaaEOTSIjqJoYjSJepAoOJQ9M+ja
qHK9FLPESoxv49H9PXV4vcrzQoFfSr1kMQbY763Hmy8AbdUzxiSAw0QV+H5jjDwbr3vJSvFnel61
WeKs7FrfqEeh/NCgRPalcn49SlE+AaXKvT8x/VA+mPJ2fm1C09fpNlA2wY9semuFI9dyKjAMdlc9
4i8brar2Y2TdKcaIY56nVBMBB0AVXULUrNl5y27BaQcVBPGozYilQF0rjlGk/MA5y9YcC28XJ4Ts
RwHRfZj1HL++cl6t/4aLXMfi6s/xL7AZPwCYpV6Y/t1su4aH1MLFNXKR5olhi8tPka6oND21+xdQ
tz6XXXdhJnSBQUQAA4gFHbRdYEgnt7M1SROv78mftsBuNhyDLdj7L8AU4EqHT40moxeJWJvOKQCK
YhRjsTaq4YqEkc1rge/bYjCIEtdprfmGiEyyFl4loA0c+cvEl36Jav6/A73AuiEorfZqRhcoIbQa
3Sjp98ssXvG/T4gjFsqx/qfZqao8xc4rimhoulr289gXqrpVn3Iyk6TMAGuZBJcruEdvTncJ3hda
vm1jw6SXyVuwDGwPXF41phYGb8RikYXRPAEShqRgDcyi++EEz8//NTcP6PcrG1zoOqhgA25T9yzn
kYajhEK2T/+fbWB9MNdGBjmNU6mOpiCkKkz8/wldTwO0HT1IXLH0WJn4i678agnQGvw1xaSDWetl
/1n2ulD2QR5dyBOZ/qqImfoPlRpyqL9CK+UMKIleMcNR4lxX/Z5JAkmQnqL2NxxRrCypc8PR81aZ
s45q6RmV/pZPRxtNMJtcxpPQ4gkdTPTJu3tctL0AgO8GvUoP3hgw+58Lp+8AA3uRTa0vABFMfGaa
oC6dOErZT8crR3JQTOd6n+ZqEqUFyLcAymcQ0H/duUHjdT3qk8JVMlcn1LwIQADFtGEq4mnBlA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2495242C7CE0000"
last-modified: Thu, 12 Nov 2026 00:43:50 GMT
content-md5: aXwbrtjlR+G3seEsUjgn5A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 49b302cb-66f9-459d-a988-6f56b9351af2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-d86d55d5-fdc2-932a-ce1c-1fd80d1ec7fa/baz

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
K9wyA6NFnYtM6aaenB7QZxBxxg7ytArHJaA1jxPkGJvTK2bnn7vSkLjhi9lXjPevS7jHm1i5B3fR
a94DDw14aNELynC36cdUnzVWECgxcJiphUNaHH1CGiTvFjTdz4GqaSMHTMKH+GLwc/wiYvdOn/tF
WYnJHUxUyLBMyNKTd8+0rKYFKSPWIo3haqmAH7gtoHc4mHX34EzWs4MSOi+PXPssbrVQSHXXbjf7
6LKi06n3HydbWt5ZvMtaLnagxOdeUQ2tVLEC3FgBYSo9/PeZM+DZGhsHNAEd0rHp9Rn/NqlQnZek
9X/49ULPWfm0HMDUwfqVx6rMVhwMkIEAGOc+AiqA7V5g9D5h4STYN9sIaLbwFTQeaW//hEd6mGX9
+N1bkVbPNC5ic8y8NOWF8x5BAyfKDwKyH5m7gGkX5lzZY+hHfaaEOTSIjqJoYjSJepAoOJQ9M+ja
qHK9FLPESoxv49H9PXV4vcrzQoFfSr1kMQbY763Hmy8AbdUzxiSAw0QV+H5jjDwbr3vJSvFnel61
WeKs7FrfqEeh/NCgRPalcn49SlE+AaXKvT8x/VA+mPJ2fm1C09fpNlA2wY9semuFI9dyKjAMdlc9
4i8brar2Y2TdKcaIY56nVBMBB0AVXULUrNl5y27BaQcVBPGozYilQF0rjlGk/MA5y9YcC28XJ4Ts
RwHRfZj1HL++cl6t/4aLXMfi6s/xL7AZPwCYpV6Y/t1su4aH1MLFNXKR5olhi8tPka6oND21+xdQ
tz6XXXdhJnSBQUQAA4gFHbRdYEgnt7M1SROv78mftsBuNhyDLdj7L8AU4EqHT40moxeJWJvOKQCK
YhRjsTaq4YqEkc1rge/bYjCIEtdprfmGiEyyFl4loA0c+cvEl36Jav6/A73AuiEorfZqRhcoIbQa
3Sjp98ssXvG/T4gjFsqx/qfZqao8xc4rimhoulr289gXqrpVn3Iyk6TMAGuZBJcruEdvTncJ3hda
vm1jw6SXyVuwDGwPXF41phYGb8RikYXRPAEShqRgDcyi++EEz8//NTcP6PcrG1zoOqhgA25T9yzn
kYajhEK2T/+fbWB9MNdGBjmNU6mOpiCkKkz8/wldTwO0HT1IXLH0WJn4i678agnQGvw1xaSDWetl
/1n2ulD2QR5dyBOZ/qqImfoPlRpyqL9CK+UMKIleMcNR4lxX/Z5JAkmQnqL2NxxRrCypc8PR81aZ
s45q6RmV/pZPRxtNMJtcxpPQ4gkdTPTJu3tctL0AgO8GvUoP3hgw+58Lp+8AA3uRTa0vABFMfGaa
oC6dOErZT8crR3JQTOd6n+ZqEqUFyLcAymcQ0H/duUHjdT3qk8JVMlcn1LwIQADFtGEq4mnBlA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22DCB1F7338BF80"
last-modified: Thu, 12 Nov 2026 00:43:50 GMT
content-md5: aXwbrtjlR+G3seEsUjgn5A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7c396166-09af-4a2d-840b-ff9647652126
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-d86d55d5-fdc2-932a-ce1c-1fd80d1ec7fa/foo/foo

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
K9wyA6NFnYtM6aaenB7QZxBxxg7ytArHJaA1jxPkGJvTK2bnn7vSkLjhi9lXjPevS7jHm1i5B3fR
a94DDw14aNELynC36cdUnzVWECgxcJiphUNaHH1CGiTvFjTdz4GqaSMHTMKH+GLwc/wiYvdOn/tF
WYnJHUxUyLBMyNKTd8+0rKYFKSPWIo3haqmAH7gtoHc4mHX34EzWs4MSOi+PXPssbrVQSHXXbjf7
6LKi06n3HydbWt5ZvMtaLnagxOdeUQ2tVLEC3FgBYSo9/PeZM+DZGhsHNAEd0rHp9Rn/NqlQnZek
9X/49ULPWfm0HMDUwfqVx6rMVhwMkIEAGOc+AiqA7V5g9D5h4STYN9sIaLbwFTQeaW//hEd6mGX9
+N1bkVbPNC5ic8y8NOWF8x5BAyfKDwKyH5m7gGkX5lzZY+hHfaaEOTSIjqJoYjSJepAoOJQ9M+ja
qHK9FLPESoxv49H9PXV4vcrzQoFfSr1kMQbY763Hmy8AbdUzxiSAw0QV+H5jjDwbr3vJSvFnel61
WeKs7FrfqEeh/NCgRPalcn49SlE+AaXKvT8x/VA+mPJ2fm1C09fpNlA2wY9semuFI9dyKjAMdlc9
4i8brar2Y2TdKcaIY56nVBMBB0AVXULUrNl5y27BaQcVBPGozYilQF0rjlGk/MA5y9YcC28XJ4Ts
RwHRfZj1HL++cl6t/4aLXMfi6s/xL7AZPwCYpV6Y/t1su4aH1MLFNXKR5olhi8tPka6oND21+xdQ
tz6XXXdhJnSBQUQAA4gFHbRdYEgnt7M1SROv78mftsBuNhyDLdj7L8AU4EqHT40moxeJWJvOKQCK
YhRjsTaq4YqEkc1rge/bYjCIEtdprfmGiEyyFl4loA0c+cvEl36Jav6/A73AuiEorfZqRhcoIbQa
3Sjp98ssXvG/T4gjFsqx/qfZqao8xc4rimhoulr289gXqrpVn3Iyk6TMAGuZBJcruEdvTncJ3hda
vm1jw6SXyVuwDGwPXF41phYGb8RikYXRPAEShqRgDcyi++EEz8//NTcP6PcrG1zoOqhgA25T9yzn
kYajhEK2T/+fbWB9MNdGBjmNU6mOpiCkKkz8/wldTwO0HT1IXLH0WJn4i678agnQGvw1xaSDWetl
/1n2ulD2QR5dyBOZ/qqImfoPlRpyqL9CK+UMKIleMcNR4lxX/Z5JAkmQnqL2NxxRrCypc8PR81aZ
s45q6RmV/pZPRxtNMJtcxpPQ4gkdTPTJu3tctL0AgO8GvUoP3hgw+58Lp+8AA3uRTa0vABFMfGaa
oC6dOErZT8crR3JQTOd6n+ZqEqUFyLcAymcQ0H/duUHjdT3qk8JVMlcn1LwIQADFtGEq4mnBlA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20C6D09D962BBE0"
last-modified: Thu, 12 Nov 2026 00:43:50 GMT
content-md5: aXwbrtjlR+G3seEsUjgn5A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8285a790-3ba8-4772-bfe9-f9366282fbbc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-d86d55d5-fdc2-932a-ce1c-1fd80d1ec7fa/foo/bar

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
K9wyA6NFnYtM6aaenB7QZxBxxg7ytArHJaA1jxPkGJvTK2bnn7vSkLjhi9lXjPevS7jHm1i5B3fR
a94DDw14aNELynC36cdUnzVWECgxcJiphUNaHH1CGiTvFjTdz4GqaSMHTMKH+GLwc/wiYvdOn/tF
WYnJHUxUyLBMyNKTd8+0rKYFKSPWIo3haqmAH7gtoHc4mHX34EzWs4MSOi+PXPssbrVQSHXXbjf7
6LKi06n3HydbWt5ZvMtaLnagxOdeUQ2tVLEC3FgBYSo9/PeZM+DZGhsHNAEd0rHp9Rn/NqlQnZek
9X/49ULPWfm0HMDUwfqVx6rMVhwMkIEAGOc+AiqA7V5g9D5h4STYN9sIaLbwFTQeaW//hEd6mGX9
+N1bkVbPNC5ic8y8NOWF8x5BAyfKDwKyH5m7gGkX5lzZY+hHfaaEOTSIjqJoYjSJepAoOJQ9M+ja
qHK9FLPESoxv49H9PXV4vcrzQoFfSr1kMQbY763Hmy8AbdUzxiSAw0QV+H5jjDwbr3vJSvFnel61
WeKs7FrfqEeh/NCgRPalcn49SlE+AaXKvT8x/VA+mPJ2fm1C09fpNlA2wY9semuFI9dyKjAMdlc9
4i8brar2Y2TdKcaIY56nVBMBB0AVXULUrNl5y27BaQcVBPGozYilQF0rjlGk/MA5y9YcC28XJ4Ts
RwHRfZj1HL++cl6t/4aLXMfi6s/xL7AZPwCYpV6Y/t1su4aH1MLFNXKR5olhi8tPka6oND21+xdQ
tz6XXXdhJnSBQUQAA4gFHbRdYEgnt7M1SROv78mftsBuNhyDLdj7L8AU4EqHT40moxeJWJvOKQCK
YhRjsTaq4YqEkc1rge/bYjCIEtdprfmGiEyyFl4loA0c+cvEl36Jav6/A73AuiEorfZqRhcoIbQa
3Sjp98ssXvG/T4gjFsqx/qfZqao8xc4rimhoulr289gXqrpVn3Iyk6TMAGuZBJcruEdvTncJ3hda
vm1jw6SXyVuwDGwPXF41phYGb8RikYXRPAEShqRgDcyi++EEz8//NTcP6PcrG1zoOqhgA25T9yzn
kYajhEK2T/+fbWB9MNdGBjmNU6mOpiCkKkz8/wldTwO0HT1IXLH0WJn4i678agnQGvw1xaSDWetl
/1n2ulD2QR5dyBOZ/qqImfoPlRpyqL9CK+UMKIleMcNR4lxX/Z5JAkmQnqL2NxxRrCypc8PR81aZ
s45q6RmV/pZPRxtNMJtcxpPQ4gkdTPTJu3tctL0AgO8GvUoP3hgw+58Lp+8AA3uRTa0vABFMfGaa
oC6dOErZT8crR3JQTOd6n+ZqEqUFyLcAymcQ0H/duUHjdT3qk8JVMlcn1LwIQADFtGEq4mnBlA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2779E1E0A7422A0"
last-modified: Thu, 12 Nov 2026 00:43:50 GMT
content-md5: aXwbrtjlR+G3seEsUjgn5A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d2b2455f-943b-4ad4-84ad-0ea008cf7367
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-d86d55d5-fdc2-932a-ce1c-1fd80d1ec7fa/baz/foo

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
K9wyA6NFnYtM6aaenB7QZxBxxg7ytArHJaA1jxPkGJvTK2bnn7vSkLjhi9lXjPevS7jHm1i5B3fR
a94DDw14aNELynC36cdUnzVWECgxcJiphUNaHH1CGiTvFjTdz4GqaSMHTMKH+GLwc/wiYvdOn/tF
WYnJHUxUyLBMyNKTd8+0rKYFKSPWIo3haqmAH7gtoHc4mHX34EzWs4MSOi+PXPssbrVQSHXXbjf7
6LKi06n3HydbWt5ZvMtaLnagxOdeUQ2tVLEC3FgBYSo9/PeZM+DZGhsHNAEd0rHp9Rn/NqlQnZek
9X/49ULPWfm0HMDUwfqVx6rMVhwMkIEAGOc+AiqA7V5g9D5h4STYN9sIaLbwFTQeaW//hEd6mGX9
+N1bkVbPNC5ic8y8NOWF8x5BAyfKDwKyH5m7gGkX5lzZY+hHfaaEOTSIjqJoYjSJepAoOJQ9M+ja
qHK9FLPESoxv49H9PXV4vcrzQoFfSr1kMQbY763Hmy8AbdUzxiSAw0QV+H5jjDwbr3vJSvFnel61
WeKs7FrfqEeh/NCgRPalcn49SlE+AaXKvT8x/VA+mPJ2fm1C09fpNlA2wY9semuFI9dyKjAMdlc9
4i8brar2Y2TdKcaIY56nVBMBB0AVXULUrNl5y27BaQcVBPGozYilQF0rjlGk/MA5y9YcC28XJ4Ts
RwHRfZj1HL++cl6t/4aLXMfi6s/xL7AZPwCYpV6Y/t1su4aH1MLFNXKR5olhi8tPka6oND21+xdQ
tz6XXXdhJnSBQUQAA4gFHbRdYEgnt7M1SROv78mftsBuNhyDLdj7L8AU4EqHT40moxeJWJvOKQCK
YhRjsTaq4YqEkc1rge/bYjCIEtdprfmGiEyyFl4loA0c+cvEl36Jav6/A73AuiEorfZqRhcoIbQa
3Sjp98ssXvG/T4gjFsqx/qfZqao8xc4rimhoulr289gXqrpVn3Iyk6TMAGuZBJcruEdvTncJ3hda
vm1jw6SXyVuwDGwPXF41phYGb8RikYXRPAEShqRgDcyi++EEz8//NTcP6PcrG1zoOqhgA25T9yzn
kYajhEK2T/+fbWB9MNdGBjmNU6mOpiCkKkz8/wldTwO0HT1IXLH0WJn4i678agnQGvw1xaSDWetl
/1n2ulD2QR5dyBOZ/qqImfoPlRpyqL9CK+UMKIleMcNR4lxX/Z5JAkmQnqL2NxxRrCypc8PR81aZ
s45q6RmV/pZPRxtNMJtcxpPQ4gkdTPTJu3tctL0AgO8GvUoP3hgw+58Lp+8AA3uRTa0vABFMfGaa
oC6dOErZT8crR3JQTOd6n+ZqEqUFyLcAymcQ0H/duUHjdT3qk8JVMlcn1LwIQADFtGEq4mnBlA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x225E84ADDFF7EE0"
last-modified: Thu, 12 Nov 2026 00:43:50 GMT
content-md5: aXwbrtjlR+G3seEsUjgn5A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c0dbad6f-5c54-4e12-9c64-bf356b1a272e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-d86d55d5-fdc2-932a-ce1c-1fd80d1ec7fa/baz/foo/bar

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
K9wyA6NFnYtM6aaenB7QZxBxxg7ytArHJaA1jxPkGJvTK2bnn7vSkLjhi9lXjPevS7jHm1i5B3fR
a94DDw14aNELynC36cdUnzVWECgxcJiphUNaHH1CGiTvFjTdz4GqaSMHTMKH+GLwc/wiYvdOn/tF
WYnJHUxUyLBMyNKTd8+0rKYFKSPWIo3haqmAH7gtoHc4mHX34EzWs4MSOi+PXPssbrVQSHXXbjf7
6LKi06n3HydbWt5ZvMtaLnagxOdeUQ2tVLEC3FgBYSo9/PeZM+DZGhsHNAEd0rHp9Rn/NqlQnZek
9X/49ULPWfm0HMDUwfqVx6rMVhwMkIEAGOc+AiqA7V5g9D5h4STYN9sIaLbwFTQeaW//hEd6mGX9
+N1bkVbPNC5ic8y8NOWF8x5BAyfKDwKyH5m7gGkX5lzZY+hHfaaEOTSIjqJoYjSJepAoOJQ9M+ja
qHK9FLPESoxv49H9PXV4vcrzQoFfSr1kMQbY763Hmy8AbdUzxiSAw0QV+H5jjDwbr3vJSvFnel61
WeKs7FrfqEeh/NCgRPalcn49SlE+AaXKvT8x/VA+mPJ2fm1C09fpNlA2wY9semuFI9dyKjAMdlc9
4i8brar2Y2TdKcaIY56nVBMBB0AVXULUrNl5y27BaQcVBPGozYilQF0rjlGk/MA5y9YcC28XJ4Ts
RwHRfZj1HL++cl6t/4aLXMfi6s/xL7AZPwCYpV6Y/t1su4aH1MLFNXKR5olhi8tPka6oND21+xdQ
tz6XXXdhJnSBQUQAA4gFHbRdYEgnt7M1SROv78mftsBuNhyDLdj7L8AU4EqHT40moxeJWJvOKQCK
YhRjsTaq4YqEkc1rge/bYjCIEtdprfmGiEyyFl4loA0c+cvEl36Jav6/A73AuiEorfZqRhcoIbQa
3Sjp98ssXvG/T4gjFsqx/qfZqao8xc4rimhoulr289gXqrpVn3Iyk6TMAGuZBJcruEdvTncJ3hda
vm1jw6SXyVuwDGwPXF41phYGb8RikYXRPAEShqRgDcyi++EEz8//NTcP6PcrG1zoOqhgA25T9yzn
kYajhEK2T/+fbWB9MNdGBjmNU6mOpiCkKkz8/wldTwO0HT1IXLH0WJn4i678agnQGvw1xaSDWetl
/1n2ulD2QR5dyBOZ/qqImfoPlRpyqL9CK+UMKIleMcNR4lxX/Z5JAkmQnqL2NxxRrCypc8PR81aZ
s45q6RmV/pZPRxtNMJtcxpPQ4gkdTPTJu3tctL0AgO8GvUoP3hgw+58Lp+8AA3uRTa0vABFMfGaa
oC6dOErZT8crR3JQTOd6n+ZqEqUFyLcAymcQ0H/duUHjdT3qk8JVMlcn1LwIQADFtGEq4mnBlA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F29663F2232E00"
last-modified: Thu, 12 Nov 2026 00:43:50 GMT
content-md5: aXwbrtjlR+G3seEsUjgn5A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 059d088f-621d-494b-a1a7-2d80ce9360bd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-d86d55d5-fdc2-932a-ce1c-1fd80d1ec7fa/baz/bar/foo

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
K9wyA6NFnYtM6aaenB7QZxBxxg7ytArHJaA1jxPkGJvTK2bnn7vSkLjhi9lXjPevS7jHm1i5B3fR
a94DDw14aNELynC36cdUnzVWECgxcJiphUNaHH1CGiTvFjTdz4GqaSMHTMKH+GLwc/wiYvdOn/tF
WYnJHUxUyLBMyNKTd8+0rKYFKSPWIo3haqmAH7gtoHc4mHX34EzWs4MSOi+PXPssbrVQSHXXbjf7
6LKi06n3HydbWt5ZvMtaLnagxOdeUQ2tVLEC3FgBYSo9/PeZM+DZGhsHNAEd0rHp9Rn/NqlQnZek
9X/49ULPWfm0HMDUwfqVx6rMVhwMkIEAGOc+AiqA7V5g9D5h4STYN9sIaLbwFTQeaW//hEd6mGX9
+N1bkVbPNC5ic8y8NOWF8x5BAyfKDwKyH5m7gGkX5lzZY+hHfaaEOTSIjqJoYjSJepAoOJQ9M+ja
qHK9FLPESoxv49H9PXV4vcrzQoFfSr1kMQbY763Hmy8AbdUzxiSAw0QV+H5jjDwbr3vJSvFnel61
WeKs7FrfqEeh/NCgRPalcn49SlE+AaXKvT8x/VA+mPJ2fm1C09fpNlA2wY9semuFI9dyKjAMdlc9
4i8brar2Y2TdKcaIY56nVBMBB0AVXULUrNl5y27BaQcVBPGozYilQF0rjlGk/MA5y9YcC28XJ4Ts
RwHRfZj1HL++cl6t/4aLXMfi6s/xL7AZPwCYpV6Y/t1su4aH1MLFNXKR5olhi8tPka6oND21+xdQ
tz6XXXdhJnSBQUQAA4gFHbRdYEgnt7M1SROv78mftsBuNhyDLdj7L8AU4EqHT40moxeJWJvOKQCK
YhRjsTaq4YqEkc1rge/bYjCIEtdprfmGiEyyFl4loA0c+cvEl36Jav6/A73AuiEorfZqRhcoIbQa
3Sjp98ssXvG/T4gjFsqx/qfZqao8xc4rimhoulr289gXqrpVn3Iyk6TMAGuZBJcruEdvTncJ3hda
vm1jw6SXyVuwDGwPXF41phYGb8RikYXRPAEShqRgDcyi++EEz8//NTcP6PcrG1zoOqhgA25T9yzn
kYajhEK2T/+fbWB9MNdGBjmNU6mOpiCkKkz8/wldTwO0HT1IXLH0WJn4i678agnQGvw1xaSDWetl
/1n2ulD2QR5dyBOZ/qqImfoPlRpyqL9CK+UMKIleMcNR4lxX/Z5JAkmQnqL2NxxRrCypc8PR81aZ
s45q6RmV/pZPRxtNMJtcxpPQ4gkdTPTJu3tctL0AgO8GvUoP3hgw+58Lp+8AA3uRTa0vABFMfGaa
oC6dOErZT8crR3JQTOd6n+ZqEqUFyLcAymcQ0H/duUHjdT3qk8JVMlcn1LwIQADFtGEq4mnBlA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E5260E29A54340"
last-modified: Thu, 12 Nov 2026 00:43:50 GMT
content-md5: aXwbrtjlR+G3seEsUjgn5A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 69b67f79-ee31-4d45-8dcf-8b0e30b5d230
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-d86d55d5-fdc2-932a-ce1c-1fd80d1ec7fa/foo/foo?comp=metadata

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
etag: "0x255DAD8BE5FF040"
last-modified: Thu, 12 Nov 2026 00:43:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 16acf50d-f2b0-49fd-91fb-18d0fcbbbebb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-d86d55d5-fdc2-932a-ce1c-1fd80d1ec7fa?restype=container&comp=list

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
x-ms-request-id: cec3c8d0-3100-4537-852f-accc44bde5ab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:50 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-d86d55d5-fdc2-932a-ce1c-1fd80d1ec7fa"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:50 GMT</Last-Modified><Etag>0x2495242C7CE0000</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>aXwbrtjlR+G3seEsUjgn5A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:50 GMT</Last-Modified><Etag>0x22DCB1F7338BF80</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>aXwbrtjlR+G3seEsUjgn5A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/bar/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:50 GMT</Last-Modified><Etag>0x1E5260E29A54340</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>aXwbrtjlR+G3seEsUjgn5A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:50 GMT</Last-Modified><Etag>0x225E84ADDFF7EE0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>aXwbrtjlR+G3seEsUjgn5A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:50 GMT</Last-Modified><Etag>0x1F29663F2232E00</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>aXwbrtjlR+G3seEsUjgn5A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:50 GMT</Last-Modified><Etag>0x2509526CECBEB80</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>aXwbrtjlR+G3seEsUjgn5A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:50 GMT</Last-Modified><Etag>0x2779E1E0A7422A0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>aXwbrtjlR+G3seEsUjgn5A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:50 GMT</Last-Modified><Etag>0x255DAD8BE5FF040</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>aXwbrtjlR+G3seEsUjgn5A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:50 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-d86d55d5-fdc2-932a-ce1c-1fd80d1ec7fa?restype=container

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
x-ms-request-id: 1083f622-6338-4a90-a890-53eedef69186
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

