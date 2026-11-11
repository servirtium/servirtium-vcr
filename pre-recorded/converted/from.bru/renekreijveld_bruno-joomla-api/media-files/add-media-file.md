## Interaction 0: POST /api/index.php/v1/media/files

## [Note] Converted from Bruno:

Source: Media Files/Add Media File.bru, example 1 of 3: "200 Response"
Description: Succesful media file upload.
Request headers the collection sends (not matched on playback):
    Accept: application/vnd.api+json
    Content-Type: application/vnd.api+json
    X-Joomla-Token: {{api_key}}

### Request headers recorded for playback:

```
```
### Request body recorded for playback ():

```
{
  "path": "",
  "content": ""
}
```
### Response headers recorded for playback:

```
Content-Type: application/json
```
### Response body recorded for playback (200: application/json):

```
{
  "links": {
    "self": ""
  },
  "data": {
    "type": "",
    "id": "",
    "attributes": {
      "type": "",
      "name": "",
      "path": "",
      "extension": "",
      "size": 0,
      "mime_type": "",
      "width": 0,
      "height": 0,
      "create_date": "",
      "create_date_formatted": "",
      "modified_date": "",
      "modified_date_formatted": "",
      "thumb_path": "",
      "content": "",
      "adapter": ""
    }
  }
}
```

## Interaction 1: POST /api/index.php/v1/media/files

## [Note] Converted from Bruno: response body not documented:

Source: Media Files/Add Media File.bru, example 2 of 3: "413 Response"
Description: Payload too large.
Response body: not documented. The example gives the status (413) and no body, so the
body below is empty because nothing was documented, not because the service sends nothing.
Request headers the collection sends (not matched on playback):
    Accept: application/vnd.api+json
    Content-Type: application/vnd.api+json
    X-Joomla-Token: {{api_key}}

### Request headers recorded for playback:

```
```
### Request body recorded for playback ():

```
{
  "path": "",
  "content": ""
}
```
### Response headers recorded for playback:

```
```
### Response body recorded for playback (413: text/plain):

```
```

## Interaction 2: POST /api/index.php/v1/media/files

## [Note] Converted from Bruno: response body not documented:

Source: Media Files/Add Media File.bru, example 3 of 3: "415 Response"
Description: Unsupported media type.
Response body: not documented. The example gives the status (415) and no body, so the
body below is empty because nothing was documented, not because the service sends nothing.
Request headers the collection sends (not matched on playback):
    Accept: application/vnd.api+json
    Content-Type: application/vnd.api+json
    X-Joomla-Token: {{api_key}}

### Request headers recorded for playback:

```
```
### Request body recorded for playback ():

```
{
  "path": "",
  "content": ""
}
```
### Response headers recorded for playback:

```
```
### Response body recorded for playback (415: text/plain):

```
```

