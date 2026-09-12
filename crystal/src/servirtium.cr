# servirtium.cr — the Crystal binding over the shared Aether VCR engine.
#
# Servirtium records an HTTP conversation to a human-readable markdown tape
# once, then replays it forever — offline, deterministic, git-diffable. Point
# your system-under-test at `#base_url` and drive it with plain HTTP.
#
#   vcr = Servirtium.playback("tapes/single_get.md")
#   body = HTTP::Client.get("#{vcr.base_url}/ok").body
#   vcr.last_kind.should eq(Servirtium::Outcome::Ok)
#   vcr.close
#
# Crystal binds the engine's flat C ABI (aether_vcr_embed_*) DIRECTLY via a
# `lib` block — no glue, no second copy of the marshalling rules to drift from
# core/embed.ae. This file is the idiomatic Crystal surface: a `Vcr` object with
# a block form that always closes, typed enums, caller-owned-string handling,
# and a typed error.
#
# It carries NO record/replay logic: markdown parse/emit, the HTTP server,
# request matching, redactions and drift detection all live in the in-repo
# pure-Aether core/vcr.ae engine.

# -L/-rpath are made self-locating from this source file's dir (../native holds
# the staged libservirtium_vcr.so) so the link works regardless of the linker's
# cwd; interpolation expands __DIR__ at compile time.
@[Link(ldflags: "-L#{__DIR__}/../native -Wl,-rpath,#{__DIR__}/../native -lservirtium_vcr")]
lib LibVcr
  # Lifecycle. The opaque handle is a pointer; NULL from an open means failure.
  fun open_playback = aether_vcr_embed_open_playback(label : LibC::Char*, tape : LibC::Char*, host : LibC::Char*, port : LibC::Int) : Void*
  fun open_playback_url = aether_vcr_embed_open_playback_url(label : LibC::Char*, url : LibC::Char*, host : LibC::Char*, port : LibC::Int) : Void*
  fun open_record = aether_vcr_embed_open_record(label : LibC::Char*, tape : LibC::Char*, upstream : LibC::Char*, host : LibC::Char*, port : LibC::Int) : Void*
  fun start = aether_vcr_embed_start(h : Void*) : LibC::Int
  fun stop = aether_vcr_embed_stop(h : Void*) : Void
  fun stop_and_flush = aether_vcr_embed_stop_and_flush(h : Void*, tape : LibC::Char*) : LibC::Char*
  fun stop_and_flush_fail_if_changed = aether_vcr_embed_stop_and_flush_fail_if_changed(h : Void*, tape : LibC::Char*) : LibC::Char*
  fun stop_and_flush_or_check = aether_vcr_embed_stop_and_flush_or_check(h : Void*, tape : LibC::Char*) : LibC::Char*

  # Introspection.
  fun port = aether_vcr_embed_port(h : Void*) : LibC::Int
  fun base_url = aether_vcr_embed_base_url(h : Void*, host : LibC::Char*) : LibC::Char*
  fun tape_length = aether_vcr_embed_tape_length(h : Void*) : LibC::Int
  fun reset_cursor = aether_vcr_embed_reset_cursor(h : Void*) : Void

  # Diagnostics.
  fun last_error = aether_vcr_embed_last_error(h : Void*) : LibC::Char*
  fun last_kind = aether_vcr_embed_last_kind(h : Void*) : LibC::Int
  fun last_index = aether_vcr_embed_last_index(h : Void*) : LibC::Int
  fun clear_last_error = aether_vcr_embed_clear_last_error(h : Void*) : Void

  # Config. The char*-returning ones yield an error message ("" = OK).
  fun redact = aether_vcr_embed_redact(h : Void*, field : LibC::Int, pat : LibC::Char*, repl : LibC::Char*) : LibC::Char*
  fun unredact = aether_vcr_embed_unredact(h : Void*, field : LibC::Int, pat : LibC::Char*, repl : LibC::Char*) : LibC::Char*
  fun normalize_whole_tape = aether_vcr_embed_normalize_whole_tape(h : Void*, pat : LibC::Char*, name : LibC::Char*) : LibC::Char*
  fun redact_whole_tape = aether_vcr_embed_redact_whole_tape(h : Void*, pat : LibC::Char*, repl : LibC::Char*) : LibC::Char*
  fun remove_header = aether_vcr_embed_remove_header(h : Void*, field : LibC::Int, name : LibC::Char*) : LibC::Char*
  fun match_header = aether_vcr_embed_match_header(h : Void*, name : LibC::Char*) : LibC::Char*
  fun note = aether_vcr_embed_note(h : Void*, k : LibC::Char*, v : LibC::Char*) : LibC::Char*
  fun static_content = aether_vcr_embed_static_content(h : Void*, mount : LibC::Char*, dir : LibC::Char*) : LibC::Char*
  fun untaped = aether_vcr_embed_untaped(h : Void*, path : LibC::Char*) : LibC::Char*
  fun strict_ignore_common_headers = aether_vcr_embed_strict_ignore_common_headers(h : Void*) : Void
  fun set_strict_headers = aether_vcr_embed_set_strict_headers(h : Void*, on : LibC::Int) : Void
  fun set_match_json_body = aether_vcr_embed_set_match_json_body(h : Void*, on : LibC::Int) : Void
  fun set_match_multiple = aether_vcr_embed_set_match_multiple(h : Void*, on : LibC::Int) : Void
  fun indent_code_blocks = aether_vcr_embed_indent_code_blocks(h : Void*) : Void
  fun emphasize_http_verbs = aether_vcr_embed_emphasize_http_verbs(h : Void*) : Void
  fun clear_redactions = aether_vcr_embed_clear_redactions(h : Void*) : Void
  fun clear_unredactions = aether_vcr_embed_clear_unredactions(h : Void*) : Void
  fun clear_normalizations = aether_vcr_embed_clear_normalizations(h : Void*) : Void
  fun clear_header_removals = aether_vcr_embed_clear_header_removals(h : Void*) : Void
  fun clear_match_headers = aether_vcr_embed_clear_match_headers(h : Void*) : Void
  fun clear_static_content = aether_vcr_embed_clear_static_content(h : Void*) : Void
  fun clear_untaped = aether_vcr_embed_clear_untaped(h : Void*) : Void
  fun clear_format_options = aether_vcr_embed_clear_format_options(h : Void*) : Void

  # Converters (no handle).
  fun har_import = aether_vcr_embed_har_import(har : LibC::Char*, tape : LibC::Char*) : LibC::Char*
  fun har_export = aether_vcr_embed_har_export(tape : LibC::Char*, har : LibC::Char*) : LibC::Char*

  # Every char* the ABI returns is caller-owned; release it with this.
  fun free_string = aether_vcr_embed_free_string(s : LibC::Char*) : Void
end

module Servirtium
  VERSION = "2.0.0"

  # Field selector for redactions / unredactions / header removals. Values
  # mirror the FIELD_* constants in core/vcr.ae.
  enum Field
    Path            = 1
    ResponseBody    = 2
    RequestHeaders  = 3
    RequestBody     = 4
    ResponseHeaders = 5
  end

  # Per-dispatch outcome. Anything but `Ok` is a mismatch.
  enum Outcome
    Ok                = 0
    PathOrMethodDiff  = 1
    HeaderMissing     = 2
    HeaderValueDiff   = 3
    HeaderUnexpected  = 4
    TapeExhausted     = 5
    BodyDiff          = 6
    RecordError       = 7
  end

  # Raised when a server can't be opened/started, or a config call or record
  # flush reports an error.
  class Error < Exception
  end

  # Adopt an owned char* from the ABI as a Crystal String and release it — the
  # caller-owned-string discipline, discharged in exactly one place.
  # :nodoc: (public only so the nested Vcr can reach it by receiver)
  def self.take(ptr : LibC::Char*) : String
    return "" if ptr.null?
    s = String.new(ptr)
    LibVcr.free_string(ptr)
    s
  end

  # Replay a markdown tape from disk. With a block, the server is closed when
  # the block ends (on every path, including an exception) and the block's
  # value is returned; without one, the caller owns it and must `#close`.
  def self.playback(tape_path : String, host : String = "127.0.0.1", port : Int32 = 0) : Vcr
    handle = LibVcr.open_playback("", tape_path, host, port)
    Vcr.new(started(handle, "playback open failed: #{tape_path}"), host, tape_path)
  end

  def self.playback(tape_path : String, host : String = "127.0.0.1", port : Int32 = 0, &)
    vcr = playback(tape_path, host, port)
    begin
      yield vcr
    ensure
      vcr.close
    end
  end

  # Replay a tape fetched from a URL rather than the filesystem.
  def self.playback_url(tape_url : String, host : String = "127.0.0.1", port : Int32 = 0) : Vcr
    handle = LibVcr.open_playback_url("", tape_url, host, port)
    Vcr.new(started(handle, "playback-url open failed: #{tape_url}"), host, nil)
  end

  # Record: forward each request to `upstream_base`, return the live response to
  # the SUT, and capture the exchange. The tape is written by `#flush` (or by
  # the block form's implicit flush) — a plain `#close` discards it.
  def self.record(tape_path : String, upstream_base : String,
                  host : String = "127.0.0.1", port : Int32 = 0) : Vcr
    handle = LibVcr.open_record("", tape_path, upstream_base, host, port)
    Vcr.new(started(handle, "record open failed: #{tape_path}"), host, tape_path)
  end

  # Block form of `.record`: flushes the captured tape when the block ends
  # normally, and discards it if the block raised (a failed test shouldn't
  # overwrite a good tape).
  def self.record(tape_path : String, upstream_base : String,
                  host : String = "127.0.0.1", port : Int32 = 0, &)
    vcr = record(tape_path, upstream_base, host, port)
    begin
      result = yield vcr
      vcr.flush
      result
    rescue ex
      vcr.close
      raise ex
    end
  end

  # HAR 1.2 capture -> Servirtium markdown tape. Raises Error on failure.
  def self.har_import(har_path : String, tape_path : String) : Nil
    err = take(LibVcr.har_import(har_path, tape_path))
    raise Error.new("har_import: #{err}") unless err.empty?
  end

  # Servirtium markdown tape -> HAR 1.2 JSON. Raises Error on failure.
  def self.har_export(tape_path : String, har_path : String) : Nil
    err = take(LibVcr.har_export(tape_path, har_path))
    raise Error.new("har_export: #{err}") unless err.empty?
  end

  # Start an opened handle, raising (and cleaning up) rather than handing back
  # a dead server. Shared by every open above.
  # :nodoc:
  def self.started(handle : Void*, failure : String) : Void*
    raise Error.new(failure) if handle.null?
    if LibVcr.start(handle) < 0
      detail = take(LibVcr.last_error(handle))
      LibVcr.stop(handle)
      raise Error.new(detail.empty? ? failure : "#{failure}: #{detail}")
    end
    handle
  end

  # A running VCR server. One handle per instance, so N servers can run
  # concurrently in one process — one per port.
  class Vcr
    @handle : Void*
    @closed = false

    # :nodoc: constructed by the Servirtium module's factories.
    def initialize(@handle : Void*, @host : String, @tape : String?)
    end

    # Base URL the SUT should target, e.g. "http://127.0.0.1:54213".
    def base_url : String
      Servirtium.take(LibVcr.base_url(@handle, @host))
    end

    # The OS-resolved port the server is listening on.
    def port : Int32
      LibVcr.port(@handle)
    end

    # Tape entry count (playback), or interactions captured so far (record).
    def tape_length : Int32
      LibVcr.tape_length(@handle)
    end

    # Rewind the playback cursor to the top of the tape.
    def reset_cursor : Nil
      LibVcr.reset_cursor(@handle)
    end

    # Outcome of the most-recent dispatch. `Outcome::Ok` means a clean match.
    def last_kind : Outcome
      Outcome.from_value?(LibVcr.last_kind(@handle)) || Outcome::Ok
    end

    # True when the most-recent dispatch matched cleanly.
    def matched_cleanly? : Bool
      last_kind == Outcome::Ok
    end

    # Most-recent dispatch diagnostic; "" when none flagged.
    def last_error : String
      Servirtium.take(LibVcr.last_error(@handle))
    end

    # Tape index of the most-recent matched interaction, or -1.
    def last_index : Int32
      LibVcr.last_index(@handle)
    end

    def clear_last_error : Nil
      LibVcr.clear_last_error(@handle)
    end

    # ---- config (each raises Error if the engine rejects it) ----

    def redact(field : Field, pattern : String, replacement : String) : Nil
      check LibVcr.redact(@handle, field.value, pattern, replacement), "redact"
    end

    def unredact(field : Field, pattern : String, replacement : String) : Nil
      check LibVcr.unredact(@handle, field.value, pattern, replacement), "unredact"
    end

    # Correlate every match into {{name-N}} tokens (things that recur and must
    # stay consistent across the whole tape — UUIDs, CSRF tokens).
    def normalize_whole_tape(pattern : String, name : String) : Nil
      check LibVcr.normalize_whole_tape(@handle, pattern, name), "normalize_whole_tape"
    end

    # Collapse every match to one constant (variable-cardinality noise — dates).
    def redact_whole_tape(pattern : String, replacement : String) : Nil
      check LibVcr.redact_whole_tape(@handle, pattern, replacement), "redact_whole_tape"
    end

    def remove_header(field : Field, name : String) : Nil
      check LibVcr.remove_header(@handle, field.value, name), "remove_header"
    end

    # Require this request header's live value to equal the recorded one. Also
    # suppresses the automatic full-block header match unless strict headers are
    # explicitly on — surgical, not all-or-nothing.
    def match_header(name : String) : Nil
      check LibVcr.match_header(@handle, name), "match_header"
    end

    def note(title : String, body : String) : Nil
      check LibVcr.note(@handle, title, body), "note"
    end

    def static_content(mount_path : String, fs_dir : String) : Nil
      check LibVcr.static_content(@handle, mount_path, fs_dir), "static_content"
    end

    def untaped(path : String) : Nil
      check LibVcr.untaped(@handle, path), "untaped"
    end

    def strict_ignore_common_headers : Nil
      LibVcr.strict_ignore_common_headers(@handle)
    end

    def strict_headers=(on : Bool)
      LibVcr.set_strict_headers(@handle, on ? 1 : 0)
    end

    # Opt-in: a request body that differs byte-for-byte gets a second chance at
    # semantic JSON equality (key order + whitespace ignored, array order
    # significant). A non-JSON body always falls back to the byte-exact verdict.
    def match_json_body=(on : Bool)
      LibVcr.set_match_json_body(@handle, on ? 1 : 0)
    end

    # Opt-in: search ALL interactions for one that fits and replay it WITHOUT
    # consuming it, so repeated and out-of-order requests both match.
    def match_multiple=(on : Bool)
      LibVcr.set_match_multiple(@handle, on ? 1 : 0)
    end

    def indent_code_blocks : Nil
      LibVcr.indent_code_blocks(@handle)
    end

    def emphasize_http_verbs : Nil
      LibVcr.emphasize_http_verbs(@handle)
    end

    def clear_redactions : Nil
      LibVcr.clear_redactions(@handle)
    end

    def clear_unredactions : Nil
      LibVcr.clear_unredactions(@handle)
    end

    def clear_normalizations : Nil
      LibVcr.clear_normalizations(@handle)
    end

    def clear_header_removals : Nil
      LibVcr.clear_header_removals(@handle)
    end

    def clear_match_headers : Nil
      LibVcr.clear_match_headers(@handle)
    end

    def clear_static_content : Nil
      LibVcr.clear_static_content(@handle)
    end

    def clear_untaped : Nil
      LibVcr.clear_untaped(@handle)
    end

    def clear_format_options : Nil
      LibVcr.clear_format_options(@handle)
    end

    # ---- shutdown ----

    # Stop the server, discarding any recording. Idempotent.
    def close : Nil
      return if @closed
      @closed = true
      LibVcr.stop(@handle)
    end

    # Stop and write the captured tape. `tape_path` defaults to the one the
    # recorder was opened with. Raises Error if the flush fails. Idempotent.
    def flush(tape_path : String? = nil) : Nil
      flush_via(tape_path) { |h, t| LibVcr.stop_and_flush(h, t) }
    end

    # As `#flush`, but fails if the fresh recording differs from what is already
    # on disk (drift detection for a checked-in tape).
    def flush_fail_if_changed(tape_path : String? = nil) : Nil
      flush_via(tape_path) { |h, t| LibVcr.stop_and_flush_fail_if_changed(h, t) }
    end

    # As `#flush`, but only CHECKS against an existing tape instead of
    # overwriting it when one is already present.
    def flush_or_check(tape_path : String? = nil) : Nil
      flush_via(tape_path) { |h, t| LibVcr.stop_and_flush_or_check(h, t) }
    end

    # The three flush variants differ only in the ABI call, so they share this.
    private def flush_via(tape_path : String?, &block : Void*, String -> LibC::Char*)
      return if @closed
      @closed = true
      path = tape_path || @tape || ""
      check block.call(@handle, path), "flush"
    end

    private def check(ptr : LibC::Char*, what : String) : Nil
      err = Servirtium.take(ptr)
      raise Error.new("#{what}: #{err}") unless err.empty?
    end
  end
end
