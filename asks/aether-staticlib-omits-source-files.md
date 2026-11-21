# `ae build --emit=staticlib` omits module `@source` C files

Status: open. First seen on Aether 0.912.0, re-checked on 0.931.0 (2026-11-20).

## Motivation

`release/swift-bundle.sh` builds `core/embed.ae` into a static archive per Swift
target. The archive must carry every symbol the library needs, because a Swift
consumer links it with no Aether toolchain. `core/bru.ae` imports
`contrib.quickjs`, whose `@source("aether_quickjs.c")` supplies the `qjs_*`
functions. The static archive contains the Aether runtime and the program but
NOT that C file, so the consumer fails to link with undefined `qjs_*` symbols.
`--emit=lib` (shared) does include it. `swift-bundle.sh` works around it by
compiling QuickJS itself with `zig cc` and adding the object with `zig ar`.

## Minimal repro

`embed.ae`:

```
import contrib.quickjs as qjs

export repro_now() -> long {
    return qjs.now_ns()
}
```

```
ae build embed.ae --emit=staticlib --with=extern --target x86_64-linux-musl -o libr.a
nm libr.a | grep qjs_       # U qjs_now_ns   (undefined; no T qjs_* anywhere)

ae build embed.ae --emit=lib --with=extern -o libr.so
nm -D libr.so | grep qjs_   # T qjs_now_ns  (the @source file is compiled in)
```

Observed on cachyos (x86_64 Linux), ae 0.931.0. The full servirtium-vcr
`core/embed.ae` leaves 15 undefined `qjs_*` symbols (counted earlier on 2026-11-20 with the same build).

## Wanted

The static archive should include the objects for every `@source` file of every
imported module, as the shared-library path does (and `--extra` C files too).
Then `release/swift-bundle.sh` can drop its hand-compiled QuickJS object.
