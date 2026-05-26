# frozen_string_literal: true

# Make the gem and spec/support helpers requirable when run with a bare
# `rspec` (bundler/gem install already put lib/ on the path, but this keeps
# `rspec` working too): require 'servirtium', require 'support/fake_upstream'.
$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
$LOAD_PATH.unshift File.expand_path(__dir__)

require 'servirtium'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  # The Aether VCR is one active server per process (its tape / cursor /
  # mutation state is process-global). RSpec runs examples sequentially by
  # default; keep it that way so they never stomp each other's state. Do NOT
  # enable a parallel test runner against this suite.
end
