# One VCR server per port (handle-based; each server owns its tape/cursor/state).
# This suite binds a fixed port, so run serially.
ExUnit.start(max_cases: 1)
