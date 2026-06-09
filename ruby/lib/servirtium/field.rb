# frozen_string_literal: true

module Servirtium
  # Field selector for redactions / unredactions / header removals. Values
  # mirror the FIELD_* constants in +core/vcr.ae+.
  module Field
    PATH             = 1
    RESPONSE_BODY    = 2
    REQUEST_HEADERS  = 3
    REQUEST_BODY     = 4
    RESPONSE_HEADERS = 5
  end

  # Per-dispatch outcome. Values mirror the VCR_KIND_* constants in the
  # Aether core. Drain via {Server#last_kind} after a request to assert what
  # the dispatcher decided.
  module Outcome
    OK = 0
    PATH_OR_METHOD_DIFF = 1
    HEADER_MISSING     = 2
    HEADER_VALUE_DIFF  = 3
    HEADER_UNEXPECTED  = 4
    TAPE_EXHAUSTED     = 5
    BODY_DIFF          = 6
    RECORD_ERROR       = 7

    NAMES = {
      OK => :ok,
      PATH_OR_METHOD_DIFF => :path_or_method_diff,
      HEADER_MISSING => :header_missing,
      HEADER_VALUE_DIFF => :header_value_diff,
      HEADER_UNEXPECTED => :header_unexpected,
      TAPE_EXHAUSTED => :tape_exhausted,
      BODY_DIFF => :body_diff,
      RECORD_ERROR => :record_error
    }.freeze

    # Map a raw integer outcome to its symbol (e.g. 0 => :ok).
    def self.symbol(code)
      NAMES.fetch(code, :unknown)
    end
  end
end
