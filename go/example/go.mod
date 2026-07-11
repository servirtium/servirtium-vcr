// Third-party consumer example for the Go binding. Depends on the servirtium-go
// module and points it (via replace) at the packaged copy under target/go-pkg
// (which carries the bundled native/ .so). The engine .so self-locates via the
// module's cgo rpath (${SRCDIR}/native) — no SERVIRTIUM_VCR_LIB.
module servirtium.example/consumer

go 1.21

require github.com/servirtium/servirtium-go v0.0.0

// The "published" module copy staged by go/.example.ae (a sibling of this
// consumer under target/, deliberately WITHOUT the repo's core/ next to it, so
// only the module's own bundled native/ .so can satisfy the link).
replace github.com/servirtium/servirtium-go => ../go-pkg
