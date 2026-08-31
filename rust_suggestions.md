# servirtium-vcr `rust/` — aeb idiomaticity review

From the aeb-maintaining sibling, after a read of the three rust aeb nodes
(`rust/.tests.ae`, `rust/.package.ae`, `rust/.example.ae`) and the rust SDK in
aeb. This is a **diagnosis + suggestions** note — I have NOT changed anything in
this repo. Nothing here is urgent; the nodes work today (that's your evidence —
I read the code statically, I didn't run the build, which needs `core/.build.ae`'s
`.so` and network for `ureq`/`thirtyfour`).

Bottom line: two of the three nodes are idiomatic. The third (`.example.ae`)
shells out to cargo four times — but **that's an aeb SDK gap, not sloppiness on
your side**: the builder it would need doesn't exist yet. Details + the exact
gap below.

---

## `rust/.tests.ae` — idiomatic ✅ (this is the model)

```
rust.cargo_test_existing(b) { env("SERVIRTIUM_VCR_LIB", lib) }
```

Goes fully through the SDK: cache key, env-export prefix, cargo-config handling,
test-result recording. Nothing to change. (Bonus: it now also gets the
`--target-dir=<target>/lib` build-artifact reuse that just landed in aeb —
`cargo_test_existing` shares the build node's compiled deps instead of
recompiling. Pull a recent aeb to get it; no `.tests.ae` change needed.)

## `rust/.package.ae` — fine ✅ (one defensible shell-out)

A single `os.system("mkdir -p … && cp …")` staging the engine `.so` into
`rust/native/`. That's **file staging**, not a cargo invocation — there's no SDK
verb it bypasses, so shelling out is the right call. Leave it.

## `rust/.example.ae` — the non-idiomatic node ❌ (but the fix is in aeb, not here)

Four raw `os.system` cargo calls:

```
os.system("… && cd \"${consumer}\" && cargo build --quiet")
os.system("cd \"${consumer}\" && env -u SERVIRTIUM_VCR_LIB cargo run --quiet -- explicit \"${so}\"")
os.system("cd \"${consumer}\" && env -u SERVIRTIUM_VCR_LIB cargo run --quiet -- discovery")
os.system("cd \"${consumer}\" && env -u SERVIRTIUM_VCR_LIB cargo run --quiet -- record")
```

Each `cargo build`/`cargo run` shell-out throws away exactly what the SDK gives
you for free — cache key, env-export prefix, cargo-config, target-dir reuse.
It's the anti-pattern the Selenium sibling named ("a node that `os.system`s
cargo directly throws away the SDK's cache key…").

**BUT it shells out because the SDK genuinely can't express `cargo run` yet.** I
checked the rust SDK: there is **no `cargo_run` builder** and **no `.native_lib()`
setter** (the comment in `.example.ae` references `.native_lib()` as if it
exists — it doesn't; that line is aspirational). So this isn't your fault; it's a
missing aeb feature.

### What you CAN make idiomatic today (no aeb change)

- The consumer-crate scaffolding (`rm -rf && mkdir && cp` a fresh crate outside
  the tree) is legitimately bespoke — **keep it as a shell-out**. Nothing in the
  SDK models "scaffold a throwaway consumer crate," and probably nothing should.
- The `cargo build --quiet` step **could** move to the existing
  `rust.cargo_build(b)` builder — that one exists. But note the wrinkle: your
  build runs *inside the scaffolded consumer dir* (`cd "${consumer}"`), not in a
  fixed source_dir, so you'd need `cargo_build` to accept that dir. Worth a look;
  may or may not be worth the churn for one of four calls.

### What needs aeb (the real fix, if you ever want it)

The three `cargo run -- MODE` calls want a `rust.cargo_run` builder — with
`env`/`extra`/target-dir isolation, matching `cargo_test_existing`'s shape — so
they go through the SDK like the tests do. That's a genuine aeb feature that
would serve **any** FFI/example-consumer crate, not just servirtium.

**Status:** I flagged this to Paul; he chose "diagnosis only" for now, so I have
NOT built `cargo_run`. If you decide you want the `.example.ae` runs idiomatic,
say so (to Paul, or file it in your aeb asks channel) and I'll build the builder
+ help migrate this node onto it. Until then, the four shell-outs are the
correct pragmatic choice — the SDK can't do better yet.

---

## Summary

| node | verdict | action |
|------|---------|--------|
| `.tests.ae` | idiomatic ✅ | none (gets free target-dir reuse on a recent aeb) |
| `.package.ae` | fine ✅ | none — file-staging shell-out is defensible |
| `.example.ae` | non-idiomatic ❌, **aeb gap** | optionally move `cargo build`→`rust.cargo_build`; the 3 `cargo run` calls need a `rust.cargo_run` builder that doesn't exist yet (ask if you want it) |

No changes made to this repo. Ping me (via Paul) if you want the `cargo_run`
builder built.
