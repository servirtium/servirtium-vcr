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

  # The VCR is handle-based: N independent servers can run concurrently, one
  # per port, each keyed by its own handle. These specs bind dynamic ports
  # (port 0), so they don't contend; RSpec runs examples sequentially by
  # default and that's fine to leave as-is.
end
