# Pre-recorded

Servirtium recordings of real services' HTTP APIs, to reuse in any
language's tests: point a Servirtium playback server (any implementation,
or `servirtium serve <tape.md>` from this repository's CLI) at a tape and
test against it, with no container and no service.

| Directory | What made the recordings |
|---|---|
| [`from-testcontainers/`](from-testcontainers/README.md) | Aether tests that start each service with [testcontainers-ae](https://github.com/servirtium/testcontainers-ae) and put Servirtium in the middle |

The recorded services' licences and terms bind anyone using their tapes: see
[`from-testcontainers/UPSTREAM-TERMS.md`](from-testcontainers/UPSTREAM-TERMS.md).

Only services with an HTTP API can be here: Servirtium records HTTP
messages, so a binary protocol (Mongo, Postgres, Redis, Kafka) cannot be
recorded this way.
