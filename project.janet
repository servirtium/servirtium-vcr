# jpm manifest at the repository root, so `jpm install <git url>` (or a
# `:dependencies` entry naming the repo) finds the Janet binding, which lives in
# janet/. Same idea as the root Package.swift, shard.yml and dub.sdl. The real
# manifest is janet/project.janet; keep the two in step (release/.version.ae pins
# both versions). The native library is not in git: see janet/README.md.
(declare-project
  :name "servirtium"
  :description "Record/replay for HTTP service tests in the Servirtium markdown tape format"
  :url "https://github.com/servirtium/servirtium-vcr"
  :repo "git+https://github.com/servirtium/servirtium-vcr.git"
  :license "MIT"
  :version "2.0.0-alpha.18")

(declare-source :source ["janet/servirtium"])
