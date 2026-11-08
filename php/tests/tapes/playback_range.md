## Interaction 0: GET /login

### Request headers recorded for playback:

```
```

### Request body recorded for playback ():

```
```

### Response headers recorded for playback:

```
Content-Type: text/html
```

### Response body recorded for playback (200: text/html):

```
login-form
```

## Interaction 1: POST /login

## [Note] Log in:

Mary signs in; the service sets the session cookie.

### Request headers recorded for playback:

```
Content-Type: application/x-www-form-urlencoded
```

### Request body recorded for playback (application/x-www-form-urlencoded):

```
user=mary&pass=PASSWORD_1
```

### Response headers recorded for playback:

```
Content-Type: text/plain
Set-Cookie: sid=COOKIE_1; Path=/; HttpOnly
```

### Response body recorded for playback (200: text/plain):

```
welcome
```

## Interaction 2: POST /cart

### Request headers recorded for playback:

```
Cookie: sid=COOKIE_1
```

### Request body recorded for playback ():

```
```

### Response headers recorded for playback:

```
Content-Type: application/json
```

### Response body recorded for playback (201: application/json):

```
{"cart":"{{uuid-1}}"}
```

## Interaction 3: PUT /cart/{{uuid-1}}/items

### Request headers recorded for playback:

```
Cookie: sid=COOKIE_1
```

### Request body recorded for playback ():

```
```

### Response headers recorded for playback:

```
Content-Type: application/json
```

### Response body recorded for playback (200: application/json):

```
{"items":1}
```

## Interaction 4: GET /checkout/{{uuid-1}}/card

## [Note] Purchase rejected, wrong CVC:

### Request headers recorded for playback:

```
Cookie: sid=COOKIE_1
```

### Request body recorded for playback ():

```
```

### Response headers recorded for playback:

```
Content-Type: text/html
```

### Response body recorded for playback (200: text/html):

```
card-form
```

## Interaction 5: POST /checkout/{{uuid-1}}/pay

### Request headers recorded for playback:

```
Content-Type: application/x-www-form-urlencoded
Cookie: sid=COOKIE_1
```

### Request body recorded for playback (application/x-www-form-urlencoded):

```
card=4111111111111111&cvc=999
```

### Response headers recorded for playback:

```
Content-Type: text/plain
```

### Response body recorded for playback (402: text/plain):

```
rejected: wrong CVC
```

## Interaction 6: GET /checkout/{{uuid-1}}/card

### Request headers recorded for playback:

```
Cookie: sid=COOKIE_1
```

### Request body recorded for playback ():

```
```

### Response headers recorded for playback:

```
Content-Type: text/html
```

### Response body recorded for playback (200: text/html):

```
card-form-again
```

## Interaction 7: GET /logout

### Request headers recorded for playback:

```
Cookie: sid=COOKIE_1
```

### Request body recorded for playback ():

```
```

### Response headers recorded for playback:

```
Content-Type: text/plain
```

### Response body recorded for playback (200: text/plain):

```
bye
```

