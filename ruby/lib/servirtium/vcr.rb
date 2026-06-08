# frozen_string_literal: true

require 'servirtium/native'
require 'servirtium/field'
require 'servirtium/server'

module Servirtium
  # Shared bind options for both builders.
  #
  # Per-listener contract (from the Aether side): N independent VCR servers
  # can run concurrently in one process, each keyed by its own handle.
  # Lifecycle is open -> configure(handle) -> start.
  class BuilderBase
    def initialize(tape_path)
      @tape_path = tape_path
      @host = '127.0.0.1'
      @port = 0 # 0 => OS-assigned (dynamic)
      @label = ''
      @header_removals = []
      @static_content = []
      @untaped = []
    end

    # Bind host. Defaults to 127.0.0.1.
    def host(value)
      @host = value
      self
    end

    # Bind port. 0 (the default) asks the OS for a free port.
    def port(value)
      @port = value
      self
    end

    # Human-facing label for logs/diagnostics (not a state key).
    def label(value)
      @label = value
      self
    end

    # Remove a header by name from the given block (case-insensitive).
    def remove_header(field, name)
      @header_removals << [field, name]
      self
    end

    # Serve a path prefix from an on-disk directory instead of the tape
    # (Servirtium step 11). On the shared base so record mode can also serve
    # content same-origin (e.g. a browser test suite) while it records.
    def static_content(mount_path, fs_dir)
      @static_content << [mount_path, fs_dir]
      self
    end

    # Mark an incidental path (e.g. /favicon.ico) the VCR answers 404 for
    # without consuming the tape cursor, so the next recorded interaction
    # still matches. On the shared base for the same reason as
    # {#static_content}.
    def untaped(path)
      @untaped << path
      self
    end

    private

    # Apply config common to both builders to the opened handle, before
    # serving starts. Subclasses extend this.
    def apply_config(handle)
      @header_removals.each do |field, name|
        check(Native.call(:remove_header, handle, field, name), 'remove_header')
      end
      @static_content.each do |mount, dir|
        check(Native.call(:static_content, handle, mount, dir), 'static_content')
      end
      @untaped.each do |path|
        check(Native.call(:untaped, handle, path), 'untaped')
      end
    end

    # Raise if a mutation call returned a non-empty error string ("" = ok).
    def check(result_ptr, operation)
      err = Native.take_string(result_ptr)
      raise Servirtium::Error, "vcr #{operation} failed: #{err}" unless err.empty?
    end

    def drain_start_error(handle)
      err = Native.take_string(Native.call(:last_error, handle))
      err.empty? ? '(no detail; check tape path and port availability)' : err
    end

    # Hand a freshly built server to the block (auto-closing it) or return it.
    def with_server(server)
      return server unless block_given?

      begin
        yield server
      ensure
        server.close
      end
    end
  end

  # Configures and starts a playback VCR server.
  class PlaybackBuilder < BuilderBase
    def initialize(tape_path)
      super
      @unredactions = []
      @strict_headers = false
    end

    # Compare the SUT's request headers against the recorded block on every
    # interaction (Servirtium step 10), surfacing mismatches via
    # {Server#last_error}.
    def strict_headers(on: true)
      @strict_headers = on
      self
    end

    # Replace a redacted placeholder in the recorded expectation with the
    # real value the live SUT sends, so a committed (scrubbed) tape matches.
    def unredact(field, pattern, replacement)
      @unredactions << [field, pattern, replacement]
      self
    end

    # Start the server. With a block, yields the {Server} and closes it after.
    def start(&)
      handle = Native.call(:open_playback, @label, @tape_path, @host, @port)
      if handle.null?
        raise Servirtium::Error,
              "vcr playback failed to start for tape '#{@tape_path}'"
      end
      apply_config(handle)
      if Native.call(:start, handle).negative?
        raise Servirtium::Error,
              "vcr playback failed to begin serving for tape '#{@tape_path}': #{drain_start_error(handle)}"
      end
      with_server(Server.new(handle, @host, @tape_path, record_mode: false), &)
    end

    private

    def apply_config(handle)
      super
      Native.call(:set_strict_headers, handle, 1) if @strict_headers
      @unredactions.each do |field, pattern, replacement|
        check(Native.call(:unredact, handle, field, pattern, replacement), 'unredact')
      end
    end
  end

  # Configures and starts a record VCR server.
  class RecordBuilder < BuilderBase
    def initialize(tape_path, upstream_base)
      super(tape_path)
      @upstream_base = upstream_base
      @redactions = []
      @normalize_whole_tape = []
      @redact_whole_tape = []
      @note = nil
      @indent_code_blocks = false
      @emphasize_http_verbs = false
      @fail_if_changed = false
    end

    # Scrub a value out of the given field before it lands on the tape.
    def redact(field, pattern, replacement)
      @redactions << [field, pattern, replacement]
      self
    end

    # Replace every distinct regex match across the WHOLE tape (all fields and
    # interactions, in first-appearance order) with a stable +{{name-N}}+ token
    # — for correlated ids that recur in later request paths.
    def normalize_whole_tape(pattern, name)
      @normalize_whole_tape << [pattern, name]
      self
    end

    # Collapse every regex match across the WHOLE tape to a constant
    # +replacement+ — for uncorrelated volatiles like a Date header.
    def redact_whole_tape(pattern, replacement)
      @redact_whole_tape << [pattern, replacement]
      self
    end

    # Attach a note to the next recorded interaction (Servirtium step 9). For
    # notes on later interactions, call {Server#note} between requests.
    def note(title, body)
      @note = [title, body]
      self
    end

    # Emit code blocks as 4-space-indented text instead of fences.
    def indent_code_blocks(on: true)
      @indent_code_blocks = on
      self
    end

    # Emit the HTTP method emphasized (e.g. *GET*) in headings.
    def emphasize_http_verbs(on: true)
      @emphasize_http_verbs = on
      self
    end

    # On close, still write the freshly recorded tape but raise if it differs
    # from the on-disk one — the Servirtium step-4 drift contract, so a normal
    # +git diff+ shows the change and CI fails loudly.
    def fail_if_changed(on: true)
      @fail_if_changed = on
      self
    end

    # Start the server. With a block, yields the {Server} and closes it after
    # (which flushes the tape).
    def start(&)
      handle = open_handle
      apply_config(handle)
      # Stage the note now (open_record cleared the tape) so it attaches to
      # the first interaction the SUT triggers, before serving begins.
      check(Native.call(:note, handle, @note[0], @note[1]), 'note') if @note
      if Native.call(:start, handle).negative?
        raise Servirtium::Error,
              "vcr record failed to begin serving for tape '#{@tape_path}': #{drain_start_error(handle)}"
      end
      server = Server.new(handle, @host, @tape_path, record_mode: true,
                                                     fail_if_changed: @fail_if_changed)
      with_server(server, &)
    end

    private

    def open_handle
      handle = Native.call(:open_record, @label, @tape_path, @upstream_base, @host, @port)
      return handle unless handle.null?

      raise Servirtium::Error,
            "vcr record failed to start for tape '#{@tape_path}' " \
            "(upstream '#{@upstream_base}')"
    end

    def apply_config(handle)
      super
      Native.call(:indent_code_blocks, handle) if @indent_code_blocks
      Native.call(:emphasize_http_verbs, handle) if @emphasize_http_verbs
      @redactions.each do |field, pattern, replacement|
        check(Native.call(:redact, handle, field, pattern, replacement), 'redact')
      end
      @normalize_whole_tape.each do |pattern, name|
        check(Native.call(:normalize_whole_tape, handle, pattern, name), 'normalize_whole_tape')
      end
      @redact_whole_tape.each do |pattern, replacement|
        check(Native.call(:redact_whole_tape, handle, pattern, replacement), 'redact_whole_tape')
      end
    end
  end

  # Entry point for record/replay fixtures backed by the Aether VCR core (the
  # +aether_vcr_embed_*+ C-ABI from +std/http/server/vcr/embed.ae+). The
  # system-under-test talks plain HTTP to {Server#base_url}; tape paths, mode,
  # mutations, and diagnostics live in test setup/teardown.
  #
  #   server = Servirtium.playback('tapes/my_api.md').port(0).start
  #   # ... drive the SUT against server.base_url ...
  #   server.close
  #
  # Or with a block (auto-closes):
  #
  #   Servirtium.playback('tapes/my_api.md').start do |server|
  #     # ... drive the SUT ...
  #   end
  module_function

  # Replay a Servirtium markdown tape from disk.
  def playback(tape_path)
    PlaybackBuilder.new(tape_path)
  end

  # Record live interactions: forward to +upstream_base+, return the real
  # response to the SUT, and capture the exchange. The tape is written to
  # +tape_path+ when the server is closed.
  def record(tape_path, upstream_base)
    RecordBuilder.new(tape_path, upstream_base)
  end
end
