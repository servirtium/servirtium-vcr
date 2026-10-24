# frozen_string_literal: true
module Servirtium
  SecretRequest = Struct.new(:method, :path, :location, :format, :field_path, :interaction, keyword_init: true)
  module Secrets
    def self.stage(handle, callback, resolving:)
      check = ->(pointer) { error = Native.take_string(pointer); raise Servirtium::Error, error unless error.empty? }
      check.call(Native.call(:secret_begin, handle, resolving ? 1 : 0))
      loop do
        status = Native.call(:secret_next, handle)
        break if status.zero?
        raise Servirtium::Error, 'secret iteration failed' if status.negative?
        get = ->(part) { Native.take_string(Native.call(:secret_get, handle, part)) }
        if resolving
          replacement = callback.call(get.call(2))
        else
          request = SecretRequest.new(method: get.call(3), path: get.call(4), location: get.call(5), format: get.call(6),
                                      field_path: get.call(7), interaction: Native.call(:secret_interaction, handle)).freeze
          replacement = callback.call(get.call(1), request)
        end
        unless replacement.nil?
          raise TypeError, 'secret callbacks must return a String or nil' unless replacement.is_a?(String)
          check.call(Native.call(:secret_apply, handle, replacement))
        end
      end
      check.call(Native.call(:secret_finish, handle))
    rescue Exception
      Native.call(:secret_abort, handle)
      Native.call(:stop, handle)
      raise
    end
  end
end
