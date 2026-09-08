# SPIKE: the Go todobackend RECORD standup as an aeo composition

A side-by-side experiment (not a replacement) measuring whether
[aeo](https://github.com/aether-lang-dev/aeo) — the ecosystem's infrastructure
orchestrator — expresses the container **UP → record → verified-teardown**
lifecycle more cleanly than the hand-rolled shell in
[`../.go_record.ae`](../.go_record.ae).

## The before/after

The existing `.go_record.ae` does the lifecycle imperatively inside the leaf:

- `podman run -d --name … -p 54321:8000 --entrypoint … image …`
- a 50×/0.3s `curl` poll loop waiting for `:54321/`
- `go test -run TestRecord…` while up
- `podman rm -f …` teardown — **only if control reaches it** (a crash or a
  failed assertion leaks the container)

The aeo version splits that into a **declaration** ([`todobackend_go.ae`](todobackend_go.ae))
and a **verification** ([`checks/go_record_suite.spec.ae`](checks/go_record_suite.spec.ae)):

- the composition names the container (image / entrypoint / command / expose /
  `health(...)`) — aeo does the health-gated bring-up (no poll loop) and the
  reverse-order teardown;
- `aeo suite todobackend_go.ae` = deploy → run the suite spec (the record
  `go test`) → **tear down, guaranteed** — even when the spec fails.

`aeo dry-run todobackend_go.ae` validates and prints the plan without touching
anything:

```
aeo: dry-run — would bring up 1 resource(s) in this order:
  1. sut [container]  health='wget -qO- http://127.0.0.1:8000/ … || curl …'
aeo: teardown would be the reverse of the above
```

## What was verified on this box (podman 4.3.1, aeo 0.2.0)

Against the **real vendored http4k SUT** (`integration/todobackend/sut/`),
**workaround-free** as of aeo v0.2.0 — the composition now mirrors the shell
leaf's real invocation exactly, and aeo owns the whole flow including the build:

- `aeo dry-run` validates the composition (exit 0).
- `aeo up … --no-supervisor` (with **no pre-built image** — the tag deleted
  first) **builds the SUT itself** from `Containerfile.sut` + the `sut/` context,
  then stands it up health-gated. Verified from `podman inspect`:
  - `Entrypoint=/app/bin/http4k-todo-backend`  ← `exec_entrypoint()` → real `--entrypoint`
  - `Ports=0.0.0.0:54321->8000/tcp`            ← `publish_map(54321, 8000)` → asymmetric
  - `GET /:54321 → HTTP 200` body `[]`         ← the real SUT serving on the mapped port
- `aeo down …` tears down: `[sut] gone (verified …)`, `podman ps -a` shows **no
  leaked container**. `aeo up` exit 0.
- The **teardown-on-failure guarantee** was proven directly (a deliberately
  never-ready node): `bring-up failed — tearing down partial tree` → `[sut] gone
  (verified …)` — the exact correctness gap the shell leaf has (its best-effort
  `rm -f` never runs on that path).

Two gotchas still worth knowing:

- **aeo runs `health()` INSIDE the container** (`<engine> exec sut /bin/sh -c
  "…"`), so the probe must use a tool the image ships. The JRE-alpine image has
  busybox `wget` but no `curl` — hence `wget -qO- …`, not `curl`.
- **`containerfile()`/`build_context()` paths are relative to the composition
  file's dir** (so `../Containerfile.sut` from `go_aeo/` = `integration/todobackend/`),
  as documented. (During the spike an earlier aeo build anchored them at the
  invocation cwd instead — that was a stale-front-door install-hygiene issue,
  fixed in aeo v0.2.2's Makefile; run `rm -f bin/aeo && make build && make install`
  after pulling an aeo front-door change.)
- **`--no-supervisor` is arg #3** — after the compose file (`aeo up <file>
  --no-supervisor`), else aeo reads it as the filename.

## The three original aeo DSL gaps — all CLOSED in v0.2.0

The first pass of this spike hit three compose-DSL gaps and filed them
(`aeo/asks/container-entrypoint-and-asymmetric-publish.md`). The aeo maintainer
implemented all three in **v0.2.0**, and this composition now uses them directly
— proven live above:

1. `exec_entrypoint("/app/bin/http4k-todo-backend")` → podman `--entrypoint`,
   `command()` passed as real args (not `/bin/sh -c`). ✅
2. `publish_map(54321, 8000)` → `-p 54321:8000` (asymmetric). ✅
3. `containerfile()` + `build_context()` → aeo builds the real Containerfile
   against the source-tree context *before boot* — no manual `podman build`. ✅

## What still stands between this spike and converting all 24 leaves

1. **The record "test" is a `go test`**, so the suite spec shells it via
   `os.system` rather than using `httptest` matchers — a thin wrapper, not
   idiomatic std.spec. (Intrinsic: the record driver is Go, not HTTP assertions.)

That's it — the earlier CI-on-a-bare-box blocker is **RESOLVED**. It was: aeo's
`get.sh` pulls aeb, and the then-published aeb bundle `make install`ed (failing on
a box with no make). Fixed across the ecosystem: aeb **v0.298** made the bundle
installer copy-only, aeb **v0.299** + aeo **v0.2.2** ship it, and the get.sh
make-gate was dropped in both installers. Verified on a virginal `debian:13-slim`:
`ae` + `aeb v0.299` + `aeo v0.2.2` all install binary-first with no make. (Note:
building *this repo's engine* still needs the C `-dev` libs — that's the engine
link, not the toolchain install; see the top-level README.)

## Verdict

Proven end-to-end against the real SUT, **workaround-free**: one declarative
composition now owns **build → up (real entrypoint, asymmetric port,
health-gated) → verified teardown**, replacing ~45 lines of `podman build` /
`podman run` / curl-poll / best-effort `rm -f` per leaf. The mechanic is a clear
win and the DSL gaps are gone. (Re-verified on aeo **v0.2.2** / ae 0.650.0; the
aeo path-anchor wrinkle logged during the spike was an install-hygiene issue —
a stale front-door binary — fixed in aeo v0.2.2's Makefile, not a DSL problem.)

Recommendation: this composition is the workaround-free **template** for the
12-language fan-out. Do the fan-out now (each `.<lang>_record.ae` → an `aeo suite`
composition, differing only in the record test invoked); pin aeo in CI via
`get.sh` with `AEO_REF=v0.2.2` (alongside `AEB_REF=v0.299`).
