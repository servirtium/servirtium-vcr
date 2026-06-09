// Throwaway stub backend, used only in RECORD mode: the VCR forwards the form's
// POST here, captures the response, and writes it to the tape. Playback never
// touches it — the whole exchange comes off the committed markdown tape.
const http = require('http')

function start(port = 0) {
  const server = http.createServer((req, res) => {
    if (req.method === 'POST' && req.url === '/api/messages') {
      let body = ''
      req.on('data', (c) => (body += c))
      req.on('end', () => {
        let message = ''
        try { message = JSON.parse(body || '{}').message } catch { /* ignore */ }
        const payload = JSON.stringify({ id: 1, message, status: 'created' })
        res.writeHead(200, { 'Content-Type': 'application/json' })
        res.end(payload)
      })
    } else {
      res.writeHead(404)
      res.end()
    }
  })
  return new Promise((resolve) =>
    server.listen(port, '127.0.0.1', () => resolve(server)))
}

// Stateful "pick two of three" backend for the Good/Cheap/Fast control, used
// only in RECORD mode (a fresh instance per scenario, so state resets). POST
// /api/selection {item, checked} applies the toggle and returns the new state +
// the pair label — or refuses the third with 409 "Impossible".
function startSelection(port = 0) {
  const state = { good: false, cheap: false, fast: false }
  const labelFor = (s) => {
    const n = ['good', 'cheap', 'fast'].filter((k) => s[k]).length
    if (n < 2) return 'Pick two'
    if (s.good && s.cheap) return 'Slow'
    if (s.good && s.fast) return 'Expensive'
    return 'Low Quality'
  }
  const server = http.createServer((req, res) => {
    if (req.method === 'POST' && req.url === '/api/selection') {
      let body = ''
      req.on('data', (c) => (body += c))
      req.on('end', () => {
        const { item, checked } = JSON.parse(body || '{}')
        const next = { ...state, [item]: checked }
        const json = (code, obj) => {
          res.writeHead(code, { 'Content-Type': 'application/json' })
          res.end(JSON.stringify(obj))
        }
        if (['good', 'cheap', 'fast'].filter((k) => next[k]).length > 2) {
          return json(409, { error: 'pick two of three', label: 'Impossible' })
        }
        Object.assign(state, next)
        json(200, { ...state, label: labelFor(state) })
      })
    } else {
      res.writeHead(404)
      res.end()
    }
  })
  return new Promise((resolve) =>
    server.listen(port, '127.0.0.1', () => resolve(server)))
}

module.exports = { start, startSelection }
