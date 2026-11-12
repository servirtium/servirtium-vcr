## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: GET /devstoreaccount1?restype=service&comp=properties

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ServiceClientTests(False,V2027_03_07).SetPropertiesAsync
now: 2026-11-12T00:45:39.5780325+00:00

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a2dc5245-cd34-4a52-a01c-871040d4ac6a
x-ms-version: 2026-06-06
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:39 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><StorageServiceProperties><Logging><Version>1.0</Version><Delete>true</Delete><Read>true</Read><Write>true</Write><RetentionPolicy><Enabled>false</Enabled></RetentionPolicy></Logging><HourMetrics><Version>1.0</Version><Enabled>false</Enabled><RetentionPolicy><Enabled>false</Enabled></RetentionPolicy></HourMetrics><MinuteMetrics><Version>1.0</Version><Enabled>false</Enabled><RetentionPolicy><Enabled>false</Enabled></RetentionPolicy></MinuteMetrics><Cors/><DefaultServiceVersion>2026-06-06</DefaultServiceVersion><StaticWebsite><Enabled>false</Enabled></StaticWebsite></StorageServiceProperties>
```

## Interaction 1: PUT /devstoreaccount1?restype=service&comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<StorageServiceProperties><Logging><Version>1.0</Version><Delete>true</Delete><Read>true</Read><Write>true</Write><RetentionPolicy><Enabled>false</Enabled></RetentionPolicy></Logging><HourMetrics><Version>1.0</Version><Enabled>false</Enabled><RetentionPolicy><Enabled>false</Enabled></RetentionPolicy></HourMetrics><MinuteMetrics><Version>1.0</Version><Enabled>false</Enabled><RetentionPolicy><Enabled>false</Enabled></RetentionPolicy></MinuteMetrics><DefaultServiceVersion>2026-06-06</DefaultServiceVersion><StaticWebsite><Enabled>false</Enabled></StaticWebsite><Cors><CorsRule><AllowedOrigins>*</AllowedOrigins><AllowedMethods>PUT,GET</AllowedMethods><AllowedHeaders>x-ms-meta-data*,x-ms-meta-target*,x-ms-meta-abc</AllowedHeaders><ExposedHeaders>x-ms-meta-*</ExposedHeaders><MaxAgeInSeconds>1000</MaxAgeInSeconds></CorsRule></Cors></StorageServiceProperties>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e2692428-4792-4160-ae92-074e9ebe4d04
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:39 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1?restype=service&comp=properties

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: dc085673-bf83-475a-afeb-ff38b7bc2d05
x-ms-version: 2026-06-06
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:39 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><StorageServiceProperties><Logging><Version>1.0</Version><Delete>true</Delete><Read>true</Read><Write>true</Write><RetentionPolicy><Enabled>false</Enabled></RetentionPolicy></Logging><HourMetrics><Version>1.0</Version><Enabled>false</Enabled><RetentionPolicy><Enabled>false</Enabled></RetentionPolicy></HourMetrics><MinuteMetrics><Version>1.0</Version><Enabled>false</Enabled><RetentionPolicy><Enabled>false</Enabled></RetentionPolicy></MinuteMetrics><Cors><CorsRule><AllowedOrigins>*</AllowedOrigins><AllowedMethods>PUT,GET</AllowedMethods><AllowedHeaders>x-ms-meta-data*,x-ms-meta-target*,x-ms-meta-abc</AllowedHeaders><ExposedHeaders>x-ms-meta-*</ExposedHeaders><MaxAgeInSeconds>1000</MaxAgeInSeconds></CorsRule></Cors><DefaultServiceVersion>2026-06-06</DefaultServiceVersion><StaticWebsite><Enabled>false</Enabled></StaticWebsite></StorageServiceProperties>
```

## Interaction 3: PUT /devstoreaccount1?restype=service&comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<StorageServiceProperties><Logging><Version>1.0</Version><Delete>true</Delete><Read>true</Read><Write>true</Write><RetentionPolicy><Enabled>false</Enabled></RetentionPolicy></Logging><HourMetrics><Version>1.0</Version><Enabled>false</Enabled><RetentionPolicy><Enabled>false</Enabled></RetentionPolicy></HourMetrics><MinuteMetrics><Version>1.0</Version><Enabled>false</Enabled><RetentionPolicy><Enabled>false</Enabled></RetentionPolicy></MinuteMetrics><DefaultServiceVersion>2026-06-06</DefaultServiceVersion><StaticWebsite><Enabled>false</Enabled></StaticWebsite><Cors /></StorageServiceProperties>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a60f5ec1-2d66-43af-b51f-f10988d61b5e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:39 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1?restype=service&comp=properties

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 544d26f7-cb76-4081-92a1-042748c0249e
x-ms-version: 2026-06-06
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:39 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><StorageServiceProperties><Logging><Version>1.0</Version><Delete>true</Delete><Read>true</Read><Write>true</Write><RetentionPolicy><Enabled>false</Enabled></RetentionPolicy></Logging><HourMetrics><Version>1.0</Version><Enabled>false</Enabled><RetentionPolicy><Enabled>false</Enabled></RetentionPolicy></HourMetrics><MinuteMetrics><Version>1.0</Version><Enabled>false</Enabled><RetentionPolicy><Enabled>false</Enabled></RetentionPolicy></MinuteMetrics><Cors/><DefaultServiceVersion>2026-06-06</DefaultServiceVersion><StaticWebsite><Enabled>false</Enabled></StaticWebsite></StorageServiceProperties>
```

