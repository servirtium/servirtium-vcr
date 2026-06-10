## A throwaway HTTP upstream for record-mode tests, built on the stdlib
## `std/asynchttpserver`. The Aether VCR record path forwards each SUT request
## here, returns this server's real response to the SUT, and captures the
## exchange onto the tape.
##
## Two Nim gotchas drove the shape of this helper:
##
## 1. The async dispatcher's epoll set is per-thread, so a socket must be bound
##    and served on the *same* thread. We therefore bind + serve on one worker
##    thread and hand the OS-assigned port back over a channel.
## 2. Spawning extra threads per test (then leaving their accept loops running)
##    races with the main thread's blocking I/O. So there is exactly **one**
##    long-lived upstream thread for the whole module; tests reconfigure it
##    between requests over channels rather than starting a new server.
##
## Per request the worker: sends an Observation (method + body), then blocks for
## a Reply (status/body/headers) the test supplies. A test therefore programs
## each response just-in-time, and reads back what the upstream saw.

import std/[asynchttpserver, asyncdispatch]

type
  Observation* = object
    ## What the upstream saw for one request.
    httpMethod*: string
    body*: string

  Reply* = object
    ## The response the test wants the upstream to send for one request.
    body*: string
    contentType*: string
    extraHeaders*: seq[(string, string)]

var portChan: Channel[uint16]
var obsChan: Channel[Observation]
var replyChan: Channel[Reply]
var started = false
var workerThread: Thread[void]
var upstreamPort: uint16

proc upstreamLoop() {.thread.} =
  var server = newAsyncHttpServer()
  server.listen(Port(0), "127.0.0.1")
  portChan.send(server.getPort().uint16)

  proc cb(req: Request) {.async.} =
    obsChan.send(Observation(httpMethod: $req.reqMethod, body: req.body))
    let reply = replyChan.recv()
    var headers = newHttpHeaders()
    headers["Content-Type"] = reply.contentType
    for (k, v) in reply.extraHeaders:
      headers[k] = v
    # Setting Content-Length keeps the response unchunked.
    headers["Content-Length"] = $reply.body.len
    await req.respond(Http200, reply.body, headers)

  while true:
    waitFor server.acceptRequest(cb)

proc ensureUpstream*() =
  ## Start the single shared upstream thread once, lazily, and return its port.
  if started:
    return
  portChan.open()
  obsChan.open()
  replyChan.open()
  createThread(workerThread, upstreamLoop)
  upstreamPort = portChan.recv()
  started = true

proc upstreamBaseUrl*(): string =
  ensureUpstream()
  "http://127.0.0.1:" & $upstreamPort

proc programReply*(body: string; contentType = "text/plain";
                   extraHeaders: seq[(string, string)] = @[]) =
  ## Queue the response the upstream will send for the next request it serves.
  ## Queue one per request you expect to forward.
  ensureUpstream()
  replyChan.send(Reply(body: body, contentType: contentType,
                       extraHeaders: extraHeaders))

proc nextObservation*(): Observation =
  ## Block until the upstream serves the next request, returning what it saw.
  obsChan.recv()
