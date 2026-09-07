# http4k TodoBackend SUT (vendored)

An [http4k](http://http4k.org) (Kotlin) implementation of
[todobackend.com](http://www.todobackend.com) — the **system-under-test** the
Servirtium TodoBackend integration leaves record against (record mode forwards
CRUD traffic to this real backend, captures the conversation as a tape, and the
playback tests then replay the tape with no SUT).

## Vendored — not a live upstream

This is a **vendored copy**, committed into servirtium-vcr so the integration
tests have no external-repo dependency. It came from
`github.com/servirtium/todobackend-for-compatibility-kit` (archived upstream;
last upstream change 2022-09-25). Copied verbatim except for standalone-repo
cruft that has no meaning inside this monorepo (its own `.github/` CI workflows,
`.travis.yml`, and `.gitignore`).

Verified building + serving as-is (gradle 7.5 / JDK 11, both pinned inside the
multi-stage Dockerfile, so there is no host-toolchain bit-rot):
`GET /` returns `[]` on a fresh start. If it ever needs changes, that's a
deliberate fork of the fixture — note it here.

## How it's built + used

The image is built by the sibling `../Containerfile.sut` (fully-qualified image
names for podman), NOT this directory's own `Dockerfile` (kept for reference /
the original standalone `docker build`):

```
podman build -t todobackend-sut:latest \
  -f integration/todobackend/Containerfile.sut \
  integration/todobackend/sut
podman run -d -p 54321:8000 \
  --entrypoint /app/bin/http4k-todo-backend \
  todobackend-sut:latest 8000 http://127.0.0.1:51080
```

The `integration/todobackend/.<lang>_record.ae` leaves build this image on demand
(from `${root}/integration/todobackend/sut`) to (re)record their tapes.
