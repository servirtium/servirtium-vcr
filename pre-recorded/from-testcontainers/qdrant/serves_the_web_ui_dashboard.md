## Interaction 0: GET /dashboard

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
accept-ranges: bytes
content-disposition: inline; filename="index.html"
content-length: 1781
content-type: text/html; charset=utf-8
etag: "2d7fa35:6f5:65b7de98:0"
last-modified: Mon, 29 Jan 2024 17:21:28 GMT
vary: Origin, Access-Control-Request-Method, Access-Control-Request-Headers
```
### Response body recorded for playback (200: text/html; charset=utf-8):

```
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="icon" href="/dashboard/favicon.ico" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="theme-color" content="#000000" />
  <meta name="description" content="Qdrant Web UI" />
  <link rel="apple-touch-icon" href="/dashboard/logo192.png" />
  <!--
      manifest.json provides metadata used when your web app is installed on a
      user's mobile device or desktop. See https://developers.google.com/web/fundamentals/web-app-manifest/
    -->
  <link rel="manifest" href="/dashboard/manifest.json" />
  <!--
      Notice the use of  in the tags above.
      It will be replaced with the URL of the `public` folder during the build.
      Only files inside the `public` folder can be referenced from the HTML.

      Unlike "/favicon.ico" or "favicon.ico", "/favicon.ico" will
      work correctly both with client-side routing and a non-root public URL.
      Learn how to configure a non-root public URL by running `npm run build`.
    -->
  <title>UI | Qdrant</title>
  <script type="module" crossorigin src="/dashboard/assets/index-8b2182de.js"></script>
  <link rel="stylesheet" href="/dashboard/assets/index-58efb4cc.css">
</head>

<body>
  <noscript>You need to enable JavaScript to run this app.</noscript>
  <div id="root"></div>
  <!--
      This HTML file is a template.
      If you open it directly in the browser, you will see an empty page.

      You can add webfonts, meta tags, or analytics to this file.
      The build step will place the bundled scripts into the <body> tag.

      To begin the development, run `npm start` or `yarn start`.
      To create a production bundle, use `npm run build` or `yarn build`.

    -->
  
</body>

</html>
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0 |
| collapsed | whole recording | `"time":[0-9.e-]+` | `"time":0.0` | none |
| ordered | response headers | every header | sorted by name; a repeated header's lines keep their order | 0 |
