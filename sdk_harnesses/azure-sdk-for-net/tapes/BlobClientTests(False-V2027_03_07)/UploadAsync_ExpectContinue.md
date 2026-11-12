## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-052be219-e414-a913-358c-eac921bd5aec?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_ExpectContinue
now: 2026-11-12T00:48:58.5891039+00:00

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
etag: "0x23E07F297EB35E0"
last-modified: Thu, 12 Nov 2026 00:48:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3646f2a9-d25b-40d4-b9b6-6a505c9c228b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-052be219-e414-a913-358c-eac921bd5aec/test-blob-65435e97-d39e-96e8-d4a5-6d46fba6d74c

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
VVj2J5DCS/JRNNI/Fm3TqJOEklrbMO1F+ZUxbnbMrY+0nXPJxjJc1BNQFGkAqH9m0sSzdxN9cSRq
sS37kNx8hIdDinj5CeJgJ71GihyDRFEVypuxGTV7NyxOXxUFYUQ21I/ivR4HbcjiUk9WNucI5mzc
5cZAy2pRx1JLqqrNW8Z5D7aMoYYzDV3SzsflJQFFRnioKHt99QglkPXLu8IeFfaJ3CYxfETmqddp
bvyja6JRBmQyJTJK+xqtZhCRZ1KatLnQXEjbFMozwn+jFIcLgiVTerVe6/DDPuEMgxU0VEGFz7lD
0g9ZdvKa/mKzp+eSoeTrPe2dO8jIDB1nzpC0/20+HUXOx68V+gTCxO2NEJf6eeEwSBdT6JPwe8Xx
8qdh5f71dYmhw9o11UPp2nfbO/yGbVSvhLdV6jSy3kzpJAdcYd/ul5oNWLYH+3LUaQ4bFT/JaoRS
smBHn4pU7+WNS7E7jHmY7KNheBWep4lFgYAmlsgMILmDCq5+p/cPuWjQeq/AmNyVgymcZ/FvswrX
Ah4KLlkcgCr3uILKGUSrUr+tzS3ZhOmjkRKfcLnHE1ekp6XZBYsOtPmEyeBaymrk8BUywuXc/X41
ZpxHfBBxL6QrJnGf0Uw0nhk0VLoIScaou3+klVFxx6onpJ/uxzfpE5k7L6T4RR/J/SPMqKjDLB3V
n8GQzZpTuV/Hdy2sRtfhSkEhzBkir3Vg2pgtpB4BZHeCGCd2WEX+6HZFMM3yHLdM6l5moWADs+9L
MPIBJRRAxRO1Ki2va/H7IuOj3X6obr7h4bq/msIXfmU4KyhT/cNhBGu6PfKJnH5sa358YNZxo8Iz
IERagStQnavId0DJqCUgQdgT7THMWEQ7Uy9Emx2OxodmH9x+B4NAaZ9GwCU+o8JYWx79XrWRZ8gA
Hi37DAGOObC4Y4lJojpV04ORhpce/a9t60D+kWjS1LcTfuhVRF2euIZ0hUA5D7njp4oxAOEw4SB+
jSHBj6hH5o7RNSRSAI4m884QqXhvM9uGGurdoNTW4pzI1rY83CjeLZ6xaNmUkaf8Cw0THzioD1pF
OnS9aka6+lKIiSnX6halMnzZvcsB8ohC4ZTHw8JkIMdc9qK0IMNX922GDAh+JSH2be27zlGOQ0jr
e4iy8jeQI2lhevNz8RG5gcVeeuWAxLtz0FXVqFF1zrNayKU6pQU29uieHKotg3zbAUyML8hiarbM
PiLhunsX66tAGShsf9vAKIT84qcRRU3Z+aYF6Z7q917vbWfiVDtthjD/7WlTb4JwzAdEZYgOu/nV
B8HUEgIMViLKfRJ03dNIj1t3EljjhYkklB2XpZHV4LFtDU16mXQu8pZHifJw/O4z/NYtl6mg8Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D4960ADFD918E0"
last-modified: Thu, 12 Nov 2026 00:48:59 GMT
content-md5: R+JcABkm+EuA5Xxgl770cA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f88fda0b-4401-4f79-af12-802c4f5a9fc7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-052be219-e414-a913-358c-eac921bd5aec?restype=container

### Request headers recorded for playback:

```
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f24f781e-e3e5-4b7b-9853-492343618bd8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

