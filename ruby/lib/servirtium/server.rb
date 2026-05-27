# frozen_string_literal: true

require 'servirtium/native'
require 'servirtium/field'

module Servirtium
  # A running VCR server. Call {#close} to stop it; in record mode {#close}
  # also flushes the captured tape to disk.
  class Server
    def initialize(handle, host, tape_path, record_mode:, fail_if_changed: false)
      @handle = handle
      @host = host
      @tape_path = tape_path
      @record_mode = record_mode
      @fail_if_changed = fail_if_changed
      @base_url = nil
    end

    # The OS-resolved port the server is listening on.
    def port
      Native.call(:port, handle)
    end

    # Base URL the SUT should target, e.g. "http://127.0.0.1:54213".
    def base_url
      @base_url ||= Native.take_string(Native.call(:base_url, handle, @host))
    end

    # Tape entry count (playback) / interactions captured so far (record).
    def tape_length
      Native.call(:tape_length, handle)
    end

    # Most-recent dispatch diagnostic; empty when none flagged.
    def last_error
      Native.take_string(Native.call(:last_error, handle))
    end

    # Outcome of the most-recent dispatch, as a symbol (e.g. +:ok+). See
    # {Outcome}.
    def last_kind
      Outcome.symbol(Native.call(:last_kind, handle))
    end

    # Raw integer outcome of the most-recent dispatch (see {Outcome}).
    def last_kind_code
      Native.call(:last_kind, handle)
    end

    # Tape index of the most-recent matched interaction, or -1.
    def last_index
      Native.call(:last_index, handle)
    end

    # Stage a note (record mode) for the *next* interaction to be captured.
    # Call between requests to annotate specific interactions.
    def note(title, body)
      err = Native.take_string(Native.call(:note, handle, title, body))
      raise Servirtium::Error, err unless err.empty?
    end

    # Rewind the replay cursor to interaction 0 and clear last-* slots.
    def reset_cursor
      Native.call(:reset_cursor, handle)
    end

    # Clear the last-error slot between sub-cases.
    def clear_last_error
      Native.call(:clear_last_error, handle)
    end

    # Stop the server. In record mode also flushes the tape (raising on drift
    # if +fail_if_changed+ was set). Idempotent.
    def close
      return if @handle.nil?

      handle = @handle
      @handle = nil
      return Native.call(:stop, handle) unless @record_mode

      flush(handle)
    end

    private

    def flush(handle)
      result_ptr = if @fail_if_changed
                     Native.call(:stop_and_flush_fail_if_changed, handle, @tape_path)
                   else
                     Native.call(:stop_and_flush, handle, @tape_path)
                   end
      err = Native.take_string(result_ptr)
      raise Servirtium::Error, err unless err.empty?
    end

    def handle
      raise Servirtium::Error, 'VCR server is closed' if @handle.nil?

      @handle
    end
  end
end
