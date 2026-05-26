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
  # v1 contract (matching the Aether side): ONE active VCR server per
  # process — the tape/cursor/mutation state is process-global, so the
  # diagnostics, tape-length, and mutation calls take no handle.
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
      # ---- lifecycle ----
      [:start_playback, 'aether_vcr_embed_start_playback', VOIDP, [VOIDP, VOIDP, VOIDP, INT]],
      [:start_record,   'aether_vcr_embed_start_record',   VOIDP,
       [VOIDP, VOIDP, VOIDP, VOIDP, INT]],
      [:stop,           'aether_vcr_embed_stop',           VOID,  [VOIDP]],
      [:stop_and_flush, 'aether_vcr_embed_stop_and_flush', VOIDP, [VOIDP, VOIDP]],
      [:stop_and_flush_fail_if_changed,
       'aether_vcr_embed_stop_and_flush_fail_if_changed', VOIDP, [VOIDP, VOIDP]],

      # ---- introspection ----
      [:port,         'aether_vcr_embed_port',         INT,   [VOIDP]],
      [:base_url,     'aether_vcr_embed_base_url',     VOIDP, [VOIDP, VOIDP]],
      [:tape_length,  'aether_vcr_embed_tape_length',  INT,   []],
      [:reset_cursor, 'aether_vcr_embed_reset_cursor', VOID,  []],

      # ---- diagnostics (process-global, no handle) ----
      [:last_error,       'aether_vcr_embed_last_error',       VOIDP, []],
      [:last_kind,        'aether_vcr_embed_last_kind',        INT,   []],
      [:last_index,       'aether_vcr_embed_last_index',       INT,   []],
      [:clear_last_error, 'aether_vcr_embed_clear_last_error', VOID,  []],

      # ---- mutations / config (call BEFORE start; return "" or an error) ----
      [:redact,         'aether_vcr_embed_redact',         VOIDP, [INT, VOIDP, VOIDP]],
      [:unredact,       'aether_vcr_embed_unredact',       VOIDP, [INT, VOIDP, VOIDP]],
      [:remove_header,  'aether_vcr_embed_remove_header',  VOIDP, [INT, VOIDP]],
      [:note,           'aether_vcr_embed_note',           VOIDP, [VOIDP, VOIDP]],
      [:static_content, 'aether_vcr_embed_static_content', VOIDP, [VOIDP, VOIDP]],
      [:untaped,        'aether_vcr_embed_untaped',        VOIDP, [VOIDP]],

      [:set_strict_headers,  'aether_vcr_embed_set_strict_headers',  VOID, [INT]],
      [:indent_code_blocks,  'aether_vcr_embed_indent_code_blocks',  VOID, []],
      [:emphasize_http_verbs, 'aether_vcr_embed_emphasize_http_verbs', VOID, []],

      [:clear_redactions,      'aether_vcr_embed_clear_redactions',      VOID, []],
      [:clear_unredactions,    'aether_vcr_embed_clear_unredactions',    VOID, []],
      [:clear_header_removals, 'aether_vcr_embed_clear_header_removals', VOID, []],
      [:clear_static_content,  'aether_vcr_embed_clear_static_content',  VOID, []],
      [:clear_untaped,         'aether_vcr_embed_clear_untaped',         VOID, []],
      [:clear_format_options,  'aether_vcr_embed_clear_format_options',  VOID, []],

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
