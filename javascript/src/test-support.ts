// Test-only helpers: throwaway local HTTP upstreams for record-mode tests.

import * as http from 'http'
import { AddressInfo } from 'net'

export interface FakeUpstream {
  baseUrl: string
  lastMethod: string | undefined
  lastBody: string | undefined
  close: () => Promise<void>
}

/**
 * A throwaway HTTP upstream that returns `body` with an explicit
 * Content-Length (no chunking) and captures the last request it saw. Mirrors
 * the .NET reference's FakeUpstream.
 */
export async function startFakeUpstream(
  body = 'upstream-body',
  contentType = 'text/plain',
): Promise<FakeUpstream> {
  const state: { lastMethod?: string; lastBody?: string } = {}
  const server = http.createServer((req, res) => {
    const chunks: Buffer[] = []
    req.on('data', (c) => chunks.push(c as Buffer))
    req.on('end', () => {
      state.lastMethod = req.method
      state.lastBody = Buffer.concat(chunks).toString('utf8')
      const payload = Buffer.from(body, 'utf8')
      res.setHeader('Content-Type', contentType)
      res.setHeader('Content-Length', payload.length) // explicit => no chunking
      res.statusCode = 200
      res.end(payload)
    })
  })

  await new Promise<void>((resolve) => server.listen(0, '127.0.0.1', resolve))
  const { port } = server.address() as AddressInfo

  return {
    baseUrl: `http://127.0.0.1:${port}`,
    get lastMethod() {
      return state.lastMethod
    },
    get lastBody() {
      return state.lastBody
    },
    close: () =>
      new Promise<void>((resolve, reject) =>
        server.close((err) => (err ? reject(err) : resolve())),
      ),
  }
}

/**
 * A throwaway HTTP upstream that replies *chunked* (Transfer-Encoding: chunked,
 * no Content-Length). Exercises the Aether client de-chunking path on record
 * (the recorder must store the decoded payload, not the chunk framing).
 */
export async function startChunkedUpstream(body = 'hello-from-upstream'): Promise<FakeUpstream> {
  const state: { lastMethod?: string; lastBody?: string } = {}
  const server = http.createServer((req, res) => {
    const chunks: Buffer[] = []
    req.on('data', (c) => chunks.push(c as Buffer))
    req.on('end', () => {
      state.lastMethod = req.method
      state.lastBody = Buffer.concat(chunks).toString('utf8')
      res.setHeader('Content-Type', 'text/plain')
      // Deliberately NO Content-Length => Node sends Transfer-Encoding: chunked.
      res.statusCode = 200
      res.write(body)
      res.end()
    })
  })

  await new Promise<void>((resolve) => server.listen(0, '127.0.0.1', resolve))
  const { port } = server.address() as AddressInfo

  return {
    baseUrl: `http://127.0.0.1:${port}`,
    get lastMethod() {
      return state.lastMethod
    },
    get lastBody() {
      return state.lastBody
    },
    close: () =>
      new Promise<void>((resolve, reject) =>
        server.close((err) => (err ? reject(err) : resolve())),
      ),
  }
}
