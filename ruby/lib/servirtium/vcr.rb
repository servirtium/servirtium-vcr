# frozen_string_literal: true

require 'servirtium/native'
require 'servirtium/field'
require 'servirtium/server'

module Servirtium
  # Shared bind options + global-state reset for both builders.
  #
  # v1 contract (from the Aether side): ONE active VCR server per process.
  # The mutation/diagnostic state is process-global, so {#start} resets it to
  # a clean slate before applying this fixture's config — a redaction / note /
  # strict setting from a previous test never leaks forward. Run tests
  # serially (one server per process at a time).
  class BuilderBase
    def initialize(tape_path)
      @tape_path = tape_path
      @host = '127.0.0.1'
      @port = 0 # 0 => OS-assigned (dynamic)
      @label = ''
      @header_removals = []
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

    private

    # Wipe all process-global mutation/format/strict state so a previous
    # fixture's settings can't leak into this one (v1 one-server-per-process
    # has no per-handle state). Called first by {#start}.
    def reset_global_state
      Native.call(:clear_redactions)
      Native.call(:clear_unredactions)
      Native.call(:clear_header_removals)
      Native.call(:clear_static_content)
      Native.call(:clear_untaped)
      Native.call(:clear_format_options)
      Native.call(:set_strict_headers, 0)
      Native.call(:clear_last_error)
      # A staged-but-unconsumed note is reset core-side when start_*
      # (re)loads the tape, so there's nothing to clear here.
    end

    # Apply config common to both builders after the reset and before the
    # server starts. Subclasses extend this.
    def apply_config
      @header_removals.each do |field, name|
        check(Native.call(:remove_header, field, name), 'remove_header')
      end
    end

    # Raise if a mutation call returned a non-empty error string ("" = ok).
    def check(result_ptr, operation)
      err = Native.take_string(result_ptr)
      raise Servirtium::Error, "vcr #{operation} failed: #{err}" unless err.empty?
    end

    def drain_start_error
      err = Native.take_string(Native.call(:last_error))
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
      @static_content = []
      @untaped = []
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

    # Serve a path prefix from an on-disk directory instead of the tape
    # (Servirtium step 11).
    def static_content(mount_path, fs_dir)
      @static_content << [mount_path, fs_dir]
      self
    end

    # Mark an incidental path (e.g. /favicon.ico) the VCR answers 404 for
    # without consuming the tape cursor, so the next recorded interaction
    # still matches.
    def untaped(path)
      @untaped << path
      self
    end

    # Start the server. With a block, yields the {Server} and closes it after.
    def start(&)
      reset_global_state
      apply_config
      handle = Native.call(:start_playback, @label, @tape_path, @host, @port)
      if handle.null?
        raise Servirtium::Error,
              "vcr playback failed to start for tape '#{@tape_path}': #{drain_start_error}"
      end
      with_server(Server.new(handle, @host, @tape_path, record_mode: false), &)
    end

    private

    def apply_config
      super
      Native.call(:set_strict_headers, 1) if @strict_headers
      @unredactions.each do |field, pattern, replacement|
        check(Native.call(:unredact, field, pattern, replacement), 'unredact')
      end
      @static_content.each do |mount, dir|
        check(Native.call(:static_content, mount, dir), 'static_content')
      end
      @untaped.each do |path|
        check(Native.call(:untaped, path), 'untaped')
      end
    end
  end

  # Configures and starts a record VCR server.
  class RecordBuilder < BuilderBase
    def initialize(tape_path, upstream_base)
      super(tape_path)
      @upstream_base = upstream_base
      @redactions = []
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
      reset_global_state
      apply_config
      handle = start_handle
      # Stage the note now (after load_record cleared the tape) so it attaches
      # to the first interaction the SUT triggers.
      check(Native.call(:note, @note[0], @note[1]), 'note') if @note
      server = Server.new(handle, @host, @tape_path, record_mode: true,
                                                     fail_if_changed: @fail_if_changed)
      with_server(server, &)
    end

    private

    def start_handle
      handle = Native.call(:start_record, @label, @tape_path, @upstream_base, @host, @port)
      return handle unless handle.null?

      raise Servirtium::Error,
            "vcr record failed to start for tape '#{@tape_path}' " \
            "(upstream '#{@upstream_base}')"
    end

    def apply_config
      super
      Native.call(:indent_code_blocks) if @indent_code_blocks
      Native.call(:emphasize_http_verbs) if @emphasize_http_verbs
      @redactions.each do |field, pattern, replacement|
        check(Native.call(:redact, field, pattern, replacement), 'redact')
      end
      # NOTE: the staged note is applied *after* start_record — load_record
      # clears the tape (and the pending note) as it binds, so staging it
      # pre-start would be wiped. See #start.
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
