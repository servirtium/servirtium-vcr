module github.com/servirtium/servirtium-go/integration/todobackend

go 1.21

require (
	github.com/servirtium/servirtium-go v0.0.0
	github.com/tebeka/selenium v0.9.9
)

require github.com/blang/semver v3.5.1+incompatible // indirect

// The servirtium-go binding lives in this repo at go/; use it directly rather
// than a published version. cgo links the shared engine via that package's
// own #cgo LDFLAGS rpath (relative to go/), so the .so is found from here too.
replace github.com/servirtium/servirtium-go => ../../../go
