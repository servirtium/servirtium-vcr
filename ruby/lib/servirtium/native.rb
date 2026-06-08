# frozen_string_literal: true

require 'fiddle'
require 'fiddle/import'
require 'rbconfig'

module Servirtium
  # Raw Fiddle binding over the native VCR library (the
  # +aether_vcr_embed_*+ C-ABI exported by +std/http/server/vcr/embed.ae+).
  # 1:1 with the C symbols; everything idiomatic lives a layer up in
  # {Servirtium::Vcr}/{Servirtium::Server}.
  #
  # Per-listener contract (matching the Aether side): N independent VCR
  # servers can run concurrently in one process, each keyed by its own
  # handle; every config / diagnostic / lifecycle call takes the handle.
  #
  # Returned +char*+ values are caller-owned and NUL-terminated; copy them
  # to a Ruby String and free them with +free_string+. {.take_string} does
  # exactly that and is the only safe way to read a returned string.
  module Native
    module_function

    # Resolve and +Fiddle.dlopen+ the native library, trying in order:
    #   1. +SERVIRTIUM_VCR_LIB+ (explicit path; point it at a fresh
    #      `ae build --emit=lib` artifact during development),
    #   2. the bundled +lib/servirtium/native/<file>+,
    #   3. the bare library name (OS loader: +LD_LIBRARY_PATH+, system paths).
    def open_library
      candidates = library_candidates
      last_error = nil
      candidates.each do |path|
        return Fiddle.dlopen(path)
      rescue Fiddle::DLError => e
        last_error = e
      end
      raise Servirtium::Error,
            "could not load native VCR library (tried: #{candidates.join(', ')}): #{last_error}"
    end

    def library_candidates
      candidates = []
      override = ENV.fetch('SERVIRTIUM_VCR_LIB', nil)
      candidates << override if override && !override.empty?
      candidates << File.join(__dir__, 'native', library_filename)
      candidates << library_filename
      candidates
    end

    def library_filename
      case RbConfig::CONFIG['host_os']
      when /mswin|mingw|cygwin/ then 'servirtium_vcr.dll'
      when /darwin/             then 'libservirtium_vcr.dylib'
      else                           'libservirtium_vcr.so'
      end
    end

    LIB = open_library

    # Fiddle type aliases for readability.
    VOIDP = Fiddle::TYPE_VOIDP
    INT   = Fiddle::TYPE_INT
    VOID  = Fiddle::TYPE_VOID

    # (ruby_name, c_symbol, return_type, [arg_types])
    BINDINGS = [
      # ---- lifecycle: open -> start ----
      [:open_playback, 'aether_vcr_embed_open_playback', VOIDP, [VOIDP, VOIDP, VOIDP, INT]],
      [:open_playback_url, 'aether_vcr_embed_open_playback_url', VOIDP, [VOIDP, VOIDP, VOIDP, INT]],
      [:open_record,   'aether_vcr_embed_open_record',   VOIDP,
       [VOIDP, VOIDP, VOIDP, VOIDP, INT]],
      [:start,          'aether_vcr_embed_start',          INT,   [VOIDP]],
      [:stop,           'aether_vcr_embed_stop',           VOID,  [VOIDP]],
      [:stop_and_flush, 'aether_vcr_embed_stop_and_flush', VOIDP, [VOIDP, VOIDP]],
      [:stop_and_flush_fail_if_changed,
       'aether_vcr_embed_stop_and_flush_fail_if_changed', VOIDP, [VOIDP, VOIDP]],
      [:stop_and_flush_or_check,
       'aether_vcr_embed_stop_and_flush_or_check', VOIDP, [VOIDP, VOIDP]],

      # ---- introspection (handle-based) ----
      [:port,         'aether_vcr_embed_port',         INT,   [VOIDP]],
      [:base_url,     'aether_vcr_embed_base_url',     VOIDP, [VOIDP, VOIDP]],
      [:tape_length,  'aether_vcr_embed_tape_length',  INT,   [VOIDP]],
      [:reset_cursor, 'aether_vcr_embed_reset_cursor', VOID,  [VOIDP]],

      # ---- diagnostics (handle-based) ----
      [:last_error,       'aether_vcr_embed_last_error',       VOIDP, [VOIDP]],
      [:last_kind,        'aether_vcr_embed_last_kind',        INT,   [VOIDP]],
      [:last_index,       'aether_vcr_embed_last_index',       INT,   [VOIDP]],
      [:clear_last_error, 'aether_vcr_embed_clear_last_error', VOID,  [VOIDP]],

      # ---- mutations / config (handle 1st arg; call BEFORE start) ----
      [:redact,         'aether_vcr_embed_redact',         VOIDP, [VOIDP, INT, VOIDP, VOIDP]],
      [:normalize_whole_tape, 'aether_vcr_embed_normalize_whole_tape', VOIDP, [VOIDP, VOIDP, VOIDP]],
      [:redact_whole_tape,    'aether_vcr_embed_redact_whole_tape',    VOIDP, [VOIDP, VOIDP, VOIDP]],
      [:unredact,       'aether_vcr_embed_unredact',       VOIDP, [VOIDP, INT, VOIDP, VOIDP]],
      [:remove_header,  'aether_vcr_embed_remove_header',  VOIDP, [VOIDP, INT, VOIDP]],
      [:strict_ignore_common_headers, 'aether_vcr_embed_strict_ignore_common_headers', VOIDP, [VOIDP]],
      [:note,           'aether_vcr_embed_note',           VOIDP, [VOIDP, VOIDP, VOIDP]],
      [:static_content, 'aether_vcr_embed_static_content', VOIDP, [VOIDP, VOIDP, VOIDP]],
      [:untaped,        'aether_vcr_embed_untaped',        VOIDP, [VOIDP, VOIDP]],

      [:set_strict_headers,  'aether_vcr_embed_set_strict_headers',  VOID, [VOIDP, INT]],
      [:indent_code_blocks,  'aether_vcr_embed_indent_code_blocks',  VOID, [VOIDP]],
      [:emphasize_http_verbs, 'aether_vcr_embed_emphasize_http_verbs', VOID, [VOIDP]],

      [:clear_redactions,      'aether_vcr_embed_clear_redactions',      VOID, [VOIDP]],
      [:clear_unredactions,    'aether_vcr_embed_clear_unredactions',    VOID, [VOIDP]],
      [:clear_header_removals, 'aether_vcr_embed_clear_header_removals', VOID, [VOIDP]],
      [:clear_static_content,  'aether_vcr_embed_clear_static_content',  VOID, [VOIDP]],
      [:clear_untaped,         'aether_vcr_embed_clear_untaped',         VOID, [VOIDP]],
      [:clear_format_options,  'aether_vcr_embed_clear_format_options',  VOID, [VOIDP]],

      # ---- string ownership ----
      [:free_string, 'aether_vcr_embed_free_string', VOID, [VOIDP]]
    ].freeze

    FUNCTIONS = BINDINGS.each_with_object({}) do |(name, sym, ret, args), acc|
      acc[name] = Fiddle::Function.new(LIB[sym], args, ret)
    end.freeze

    # Invoke a bound native function by its Ruby name.
    def call(name, *)
      FUNCTIONS.fetch(name).call(*)
    end

    # Copy a caller-owned native +char*+ into a Ruby String, then free the
    # original pointer per the ABI ownership rule. Returns "" for NULL.
    def take_string(ptr)
      return '' if ptr.nil? || ptr.null?

      str = ptr.to_s # copies the NUL-terminated bytes into a Ruby String
      call(:free_string, ptr)
      str
    end
  end
  private_constant :Native
end
