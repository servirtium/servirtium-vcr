# Servirtium 2.0.0-alpha.21

Fixes for defects in the alpha.20 release assets, found while writing the
website, and a documentation sweep.

## Fixed in the release libraries

- **macOS: link-time bindings could not load the library.** Every alpha.20
  `.dylib` (arm64 and x86_64, and the copies inside the jar, nupkg, npm
  tarball) gave the build machine's path as its install name
  (`/home/runner/work/.../libservirtium_vcr.so`), so a program linked
  against it (Go's cgo, C, C++, Zig, Nim, Crystal, D, Haskell, Lua, the BEAM
  NIF) failed at start with "Library not loaded". Each dylib's install name
  is now `@rpath/libservirtium_vcr.dylib`, the name the bindings stage it
  under, and its deployment target is macOS 13.0 (alpha.20's was 15.0).
  Bindings that `dlopen` by path (Python, Ruby, JavaScript, Java, .NET, ...)
  were not affected.
- **Record mode answered a gzip upstream with 500.** No alpha.20 library
  had zlib compiled in, so recording a service that gzips its responses
  answered "gzip response but zlib unavailable". Every library now carries
  zlib 1.3.1.
- **Linux and FreeBSD libraries have a SONAME**, `libservirtium_vcr.so`.

`release/.artifacts.ae` now checks each library's install name or SONAME
and that it carries zlib, so a release with either defect fails before it
is published.

## Release assets

- **One set of libraries.** alpha.20 published every library twice, as
  `libservirtium_vcr-<tag>-<platform>` and as a byte-identical
  `servirtium_vcr-<tag>-<platform>` (the `ae add` binary package). The
  `ae add` package now uses the first set: its `aether.toml` names
  `libservirtium_vcr` as the binary, `ae add` installs
  `libservirtium_vcr<ext>`, and Aether code still says
  `import servirtium_vcr`. The `servirtium_vcr-*` assets are gone. This
  also makes `ae add` work on macOS, where the installed name now matches
  the library's install name.

## Bindings

- **Zig**: the consumer example called the removed `Server.stop()`; it
  closes the playback server now.
- **Haskell**: the package's `LICENSE` file was missing, so the README's
  `source-repository-package` route failed.

## Documentation

- Record examples and API docs in every binding now say the tape is written
  by `commit()` (alpha.20's change), not on close; the `sort_json_keys needs
  pretty_json` error comes from `commit()`.
- The Kotlin, Scala, Clojure and Groovy READMEs have a record example.
- The root README lists the ABI calls only some bindings wrap
  (`forward_host` is .NET-only, for example).
- Corrected: minimum versions (Aether 0.941.0, PHP 8.2, Dart 3.8, Go 1.21,
  Rust edition 2021), the BEAM install line, the .NET package's platforms in
  the Azure SDK harness README, Python's feature table, test counts, and
  references to scripts that no longer exist.
- `pre-recorded/joomla-api`: how to replay a tape from `curl` (its tapes
  keep the request headers the JSON:API client sends).
