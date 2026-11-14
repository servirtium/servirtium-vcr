# jpm project for the Janet binding of servirtium-vcr.
#
#   jpm install            # from this directory, into the jpm tree / JANET_MODPATH
#   (import servirtium)
#
# The module is pure Janet (Janet's built-in FFI): no compiler needed. The native
# library libservirtium_vcr is NOT built here. It is found at runtime, in this
# order: servirtium/set-library!, SERVIRTIUM_VCR_LIB, the bundled
# servirtium/native/ directory (staged by `aeb janet/.package.ae`), the OS loader.
# See README.md ("Getting it").
(declare-project
  :name "servirtium"
  :description "Record/replay for HTTP service tests in the Servirtium markdown tape format"
  :url "https://github.com/servirtium/servirtium-vcr"
  :repo "git+https://github.com/servirtium/servirtium-vcr.git"
  :license "MIT"
  :version "2.0.0-alpha.18")

(declare-source :source ["servirtium"])
