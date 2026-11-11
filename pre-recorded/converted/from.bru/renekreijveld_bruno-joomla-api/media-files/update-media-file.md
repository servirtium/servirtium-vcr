## Interaction 0: PATCH /api/index.php/v1/media/files/{{file_path}}

## [Note] Converted from Bruno:

Source: Media Files/Update Media File.bru, example 1 of 2: "200 Response"
Description: Succesful media file update.
Request headers the collection sends (not matched on playback):
    Accept: application/vnd.api+json
    Content-Type: application/vnd.api+json
    X-Joomla-Token: {{api_key}}
Unresolved variables: {{file_path}}

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

## Interaction 1: PATCH /api/index.php/v1/media/files/{{file_path}}

## [Note] Converted from Bruno: response body not documented:

Source: Media Files/Update Media File.bru, example 2 of 2: "404 Response"
Description: Media file not found.
Response body: not documented. The example gives the status (404) and no body, so the
body below is empty because nothing was documented, not because the service sends nothing.
Request headers the collection sends (not matched on playback):
    Accept: application/vnd.api+json
    Content-Type: application/vnd.api+json
    X-Joomla-Token: {{api_key}}
Unresolved variables: {{file_path}}

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
### Response body recorded for playback (404: text/plain):

```
```

