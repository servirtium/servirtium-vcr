# Servirtium 2.0.0-alpha.17

- Fix the Swift static bundle: include the QuickJS implementation required by
  Bruno conversion in all four variants. Alpha.16's Swift package could fail
  to link with unresolved `qjs_*` symbols.
- Link-check every static variant before publication, and exercise tape
  loading and Bruno conversion on the build host. The existing post-publication
  SwiftPM consumer check remains in place.
