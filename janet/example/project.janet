# A consumer of the servirtium Janet binding. In a real project the dependency
# is the repository itself, pinned to a release tag:
#
#   (declare-project
#     :name "my-service-tests"
#     :dependencies [{:url "https://github.com/servirtium/servirtium-vcr.git"
#                     :tag "v2.0.0-alpha.13"}])
#
# (the native library still comes from SERVIRTIUM_VCR_LIB or a bundled native/
# directory; see ../README.md). This example is installed from a local copy of
# the package by `aeb janet/.example.ae`.
(declare-project
  :name "servirtium-consumer-example")
