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

- The composition **parses and validates** under `aeo dry-run` (exit 0).
- The full `aeo suite` **lifecycle runs end-to-end against a stand-in container**
  (a `python:3-alpine` http server, since the real http4k SUT image isn't built
  here): `[sut] up` → `suite — running spec` → `suite complete — tearing down`
  → `[sut] gone (verified …)`, and `podman ps -a` shows **no leaked container**.
- The **teardown-on-failure guarantee** was proven directly: an intentionally
  broken stand-in that never became ready produced `bring-up failed — tearing
  down partial tree` → `[sut] gone (verified …)` — the exact correctness gap the
  shell leaf has (its `rm -f` never runs on that path).

## Findings that gate a real conversion (why this stays a spike)

1. **aeo's linux container driver runs `IMAGE /bin/sh -c "<command>"` and does
   NOT emit podman `--entrypoint`.** The `entrypoint()` compose setter isn't
   wired to `--entrypoint` in this aeo version, so the real SUT's
   `--entrypoint /app/bin/http4k-todo-backend` can't be expressed directly — it
   would need folding into a `command("…")` that runs under `sh -c`, or an aeo
   driver fix. (Filed as a note for the aeo maintainer.)
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

The orchestration mechanic is a clear win — health-gated bring-up and
**guaranteed** verified teardown are strictly better than the leaf's poll loop +
best-effort `rm -f`. But converting the real todobackend needs (1) the
entrypoint gap closed in aeo (or a wrapper image), and the CI story needs an aeo
release. Recommendation: keep this spike as the reference, revisit the full
12-language conversion once aeo cuts a release and the `entrypoint()`/`publish`
gaps are addressed.
