## Interaction 0: POST /api/selection

### Request headers recorded for playback:

```
```
### Request body recorded for playback ():

```
{"item":"good","checked":true}
```
### Response headers recorded for playback:

```
Content-Type: application/json
Date: <DATE>
```
### Response body recorded for playback (200: application/json):

```
{"good":true,"cheap":false,"fast":false,"label":"Pick two"}
```

## Interaction 1: POST /api/selection

### Request headers recorded for playback:

```
```
### Request body recorded for playback ():

```
{"item":"fast","checked":true}
```
### Response headers recorded for playback:

```
Content-Type: application/json
Date: <DATE>
```
### Response body recorded for playback (200: application/json):

```
{"good":true,"cheap":false,"fast":true,"label":"Expensive"}
```

## Interaction 2: POST /api/selection

### Request headers recorded for playback:

```
```
### Request body recorded for playback ():

```
{"item":"cheap","checked":true}
```
### Response headers recorded for playback:

```
Content-Type: application/json
Date: <DATE>
```
### Response body recorded for playback (200: application/json):

```
{"good":false,"cheap":true,"fast":true,"label":"Low Quality"}
```

