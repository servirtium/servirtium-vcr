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

## What was verified on this box (podman 4.3.1, aeo 0.2.0 from a clone)

Against the **real vendored http4k SUT** (`integration/todobackend/sut/`, built to
`todobackend-sut:latest` via `Containerfile.sut`):

- The composition **parses and validates** under `aeo dry-run` (exit 0).
- `aeo up … --no-supervisor` stands the **real SUT** up, health-gated, and it
  serves: **`GET / → HTTP 200`** on the mapped host port. `aeo down … ` tears it
  down: `[sut] gone (verified …)`, `podman ps -a` shows **no leaked container**.
  Reproduced cleanly across repeated runs (up_exit=0 each time).
- The **teardown-on-failure guarantee** was proven directly (earlier, with a
  deliberately never-ready node): `bring-up failed — tearing down partial tree`
  → `[sut] gone (verified …)` — the exact correctness gap the shell leaf has (its
  best-effort `rm -f` never runs on that path).

Three real gotchas the spike surfaced (all now handled in the composition):

- **The SUT defaults to `:54321`** when given no port arg — so the composition
  runs it on 54321 (both sides) and health-probes 54321, sidestepping aeo's
  symmetric-`expose` limit rather than fighting it.
- **aeo runs `health()` INSIDE the container** (`<engine> exec sut /bin/sh -c
  "…"`), so the probe must use a tool the image ships. The JRE-alpine image has
  busybox `wget` but no `curl` — hence `wget -qO- …`, not `curl`.
- **`--no-supervisor` is arg #3** — it goes *after* the compose file
  (`aeo up <file> --no-supervisor`), else aeo reads it as the filename.

## Findings that gate a real conversion (why this stays a spike)

1. **aeo's linux container driver runs `IMAGE /bin/sh -c "<command>"` and does
   NOT emit podman `--entrypoint`.** The `entrypoint()` compose setter isn't
   wired to `--entrypoint` in this aeo version. Here it's a non-issue because the
   image bakes `ENTRYPOINT /app/bin/http4k-todo-backend` (Containerfile.sut), so
   `command("/app/bin/http4k-todo-backend 54321 …")` under `sh -c` just runs the
   binary. But a SUT image *without* a baked entrypoint would need the aeo fix.
   (Filed as a note for the aeo maintainer.)
2. **`expose(N)` publishes `N:N` (symmetric).** The leaf's asymmetric
   `54321:8000` isn't expressible; here the SUT runs on `8000` both sides and the
   spec targets `:8000`. A `publish(ext, inn)` form on `container` would close
   this.
3. **The record "test" is a `go test`, not an HTTP assertion**, so the suite
   spec shells `go test` via `os.system` rather than using the `httptest`
   matchers. That works, but means the spec is a thin wrapper, not idiomatic
   std.spec.
4. **CI cost**: adopting aeo adds a second orchestration dependency (aeo built +
   on PATH atop ae/aeb/toolchains), and there is **no `aeo` CLI release yet** —
   so CI can only get aeo from a clone until the first `v*` release ships.

## Verdict

The orchestration mechanic is a clear win, now proven **against the real SUT**:
health-gated bring-up (no poll loop) and **guaranteed** verified teardown are
strictly better than the leaf's poll loop + best-effort `rm -f`. The container
standup half of `.go_record.ae` maps onto aeo cleanly.

What still stands between this spike and converting all 24 leaves:
- the record step itself is a `go test` the suite spec shells out to (works, but
  the spec is a thin wrapper, not idiomatic std.spec / `httptest`);
- the aeo `entrypoint()` / asymmetric-`publish` gaps matter for SUT images
  without a baked entrypoint (not this one) and for exact port parity;
- **no aeo CLI release yet**, so CI can only get aeo from a clone.

Recommendation: keep this spike as the reference and template; do the full
12-language fan-out once aeo cuts a `v*` release, so CI can install it the same
binary-first way it installs aeb.
