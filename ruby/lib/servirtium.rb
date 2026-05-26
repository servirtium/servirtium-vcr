# frozen_string_literal: true

require 'servirtium/version'

module Servirtium
  # Raised when the VCR fails to start, a mutation is rejected, or a
  # record-mode flush detects drift.
  class Error < StandardError; end
end

require 'servirtium/field'
require 'servirtium/server'
require 'servirtium/vcr'
