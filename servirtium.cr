# WHY THIS FILE IS AT THE REPOSITORY ROOT
# `shards install` copies the whole repository into lib/servirtium/, and
# `require "servirtium"` resolves lib/servirtium/servirtium.cr (or
# lib/servirtium/src/servirtium.cr). This monorepo keeps its Crystal binding in
# the crystal/ subdirectory, so this one-line file is the entry point that
# forwards there. The real binding is crystal/src/servirtium.cr (see
# crystal/README.md). The matching root shard.yml carries the shard metadata.
#
# Native library: set SERVIRTIUM_VCR_LIB_DIR at compile time to the directory
# holding libservirtium_vcr.<ext> (see crystal/README.md, "Getting it").
require "./crystal/src/servirtium"
