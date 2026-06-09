{-# LANGUAGE ForeignFunctionInterface #-}

-- | Raw FFI surface over the native VCR library (@libservirtium_vcr.so@),
-- linked at build time via @foreign import ccall@. 1:1 with the
-- @aether_vcr_embed_*@ C-ABI exported by @core\/embed.ae@.
--
-- Per-listener contract (matching the engine side): N independent VCR
-- servers can run concurrently in one process, one server per port, each
-- keyed by its own handle;
-- every config / diagnostic / lifecycle call takes the handle. Returned
-- @char*@ values are caller-owned and NUL-terminated; copy them into a
-- Haskell 'String' via 'takeString', which frees them per the ABI.
--
-- This module is internal; the public, idiomatic API lives in
-- "Servirtium.Vcr".
module Servirtium.Vcr.Native
  ( Handle
  , takeString
  , -- * Lifecycle
    aether_vcr_embed_open_playback
  , aether_vcr_embed_open_playback_url
  , aether_vcr_embed_open_record
  , aether_vcr_embed_start
  , aether_vcr_embed_stop
  , aether_vcr_embed_stop_and_flush
  , aether_vcr_embed_stop_and_flush_fail_if_changed
  , aether_vcr_embed_stop_and_flush_or_check
  , -- * Accessors / diagnostics
    aether_vcr_embed_port
  , aether_vcr_embed_base_url
  , aether_vcr_embed_tape_length
  , aether_vcr_embed_reset_cursor
  , aether_vcr_embed_last_error
  , aether_vcr_embed_last_kind
  , aether_vcr_embed_last_index
  , aether_vcr_embed_clear_last_error
  , -- * Mutations (set before start; note staged after start_record)
    aether_vcr_embed_redact
  , aether_vcr_embed_normalize_whole_tape
  , aether_vcr_embed_redact_whole_tape
  , aether_vcr_embed_unredact
  , aether_vcr_embed_remove_header
  , aether_vcr_embed_strict_ignore_common_headers
  , aether_vcr_embed_note
  , aether_vcr_embed_static_content
  , aether_vcr_embed_untaped
  , aether_vcr_embed_set_strict_headers
  , aether_vcr_embed_indent_code_blocks
  , aether_vcr_embed_emphasize_http_verbs
  , aether_vcr_embed_clear_redactions
  , aether_vcr_embed_clear_unredactions
  , aether_vcr_embed_clear_header_removals
  , aether_vcr_embed_clear_static_content
  , aether_vcr_embed_clear_untaped
  , aether_vcr_embed_clear_format_options
  , aether_vcr_embed_free_string
  ) where

import Foreign.C.String (CString, peekCString)
import Foreign.C.Types (CInt (..))
import Foreign.Ptr (Ptr, nullPtr)

-- | Opaque server handle from the native side. A NULL pointer means failure.
type Handle = Ptr ()

-- Lifecycle -----------------------------------------------------------------

foreign import ccall unsafe "aether_vcr_embed_open_playback"
  aether_vcr_embed_open_playback
    :: CString -> CString -> CString -> CInt -> IO Handle

foreign import ccall unsafe "aether_vcr_embed_open_playback_url"
  aether_vcr_embed_open_playback_url
    :: CString -> CString -> CString -> CInt -> IO Handle

foreign import ccall unsafe "aether_vcr_embed_open_record"
  aether_vcr_embed_open_record
    :: CString -> CString -> CString -> CString -> CInt -> IO Handle

foreign import ccall unsafe "aether_vcr_embed_start"
  aether_vcr_embed_start :: Handle -> IO CInt

foreign import ccall unsafe "aether_vcr_embed_stop"
  aether_vcr_embed_stop :: Handle -> IO ()

foreign import ccall unsafe "aether_vcr_embed_stop_and_flush"
  aether_vcr_embed_stop_and_flush :: Handle -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_stop_and_flush_fail_if_changed"
  aether_vcr_embed_stop_and_flush_fail_if_changed :: Handle -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_stop_and_flush_or_check"
  aether_vcr_embed_stop_and_flush_or_check :: Handle -> CString -> IO CString

-- Accessors / diagnostics ---------------------------------------------------

foreign import ccall unsafe "aether_vcr_embed_port"
  aether_vcr_embed_port :: Handle -> IO CInt

foreign import ccall unsafe "aether_vcr_embed_base_url"
  aether_vcr_embed_base_url :: Handle -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_tape_length"
  aether_vcr_embed_tape_length :: Handle -> IO CInt

foreign import ccall unsafe "aether_vcr_embed_reset_cursor"
  aether_vcr_embed_reset_cursor :: Handle -> IO ()

foreign import ccall unsafe "aether_vcr_embed_last_error"
  aether_vcr_embed_last_error :: Handle -> IO CString

foreign import ccall unsafe "aether_vcr_embed_last_kind"
  aether_vcr_embed_last_kind :: Handle -> IO CInt

foreign import ccall unsafe "aether_vcr_embed_last_index"
  aether_vcr_embed_last_index :: Handle -> IO CInt

foreign import ccall unsafe "aether_vcr_embed_clear_last_error"
  aether_vcr_embed_clear_last_error :: Handle -> IO ()

-- Mutations -----------------------------------------------------------------

foreign import ccall unsafe "aether_vcr_embed_redact"
  aether_vcr_embed_redact :: Handle -> CInt -> CString -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_normalize_whole_tape"
  aether_vcr_embed_normalize_whole_tape :: Handle -> CString -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_redact_whole_tape"
  aether_vcr_embed_redact_whole_tape :: Handle -> CString -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_unredact"
  aether_vcr_embed_unredact :: Handle -> CInt -> CString -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_remove_header"
  aether_vcr_embed_remove_header :: Handle -> CInt -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_strict_ignore_common_headers"
  aether_vcr_embed_strict_ignore_common_headers :: Handle -> IO CString

foreign import ccall unsafe "aether_vcr_embed_note"
  aether_vcr_embed_note :: Handle -> CString -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_static_content"
  aether_vcr_embed_static_content :: Handle -> CString -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_untaped"
  aether_vcr_embed_untaped :: Handle -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_set_strict_headers"
  aether_vcr_embed_set_strict_headers :: Handle -> CInt -> IO ()

foreign import ccall unsafe "aether_vcr_embed_indent_code_blocks"
  aether_vcr_embed_indent_code_blocks :: Handle -> IO ()

foreign import ccall unsafe "aether_vcr_embed_emphasize_http_verbs"
  aether_vcr_embed_emphasize_http_verbs :: Handle -> IO ()

foreign import ccall unsafe "aether_vcr_embed_clear_redactions"
  aether_vcr_embed_clear_redactions :: Handle -> IO ()

foreign import ccall unsafe "aether_vcr_embed_clear_unredactions"
  aether_vcr_embed_clear_unredactions :: Handle -> IO ()

foreign import ccall unsafe "aether_vcr_embed_clear_header_removals"
  aether_vcr_embed_clear_header_removals :: Handle -> IO ()

foreign import ccall unsafe "aether_vcr_embed_clear_static_content"
  aether_vcr_embed_clear_static_content :: Handle -> IO ()

foreign import ccall unsafe "aether_vcr_embed_clear_untaped"
  aether_vcr_embed_clear_untaped :: Handle -> IO ()

foreign import ccall unsafe "aether_vcr_embed_clear_format_options"
  aether_vcr_embed_clear_format_options :: Handle -> IO ()

foreign import ccall unsafe "aether_vcr_embed_free_string"
  aether_vcr_embed_free_string :: CString -> IO ()

-- | Marshal a caller-owned native @char*@ into a Haskell 'String' and free it
-- via @aether_vcr_embed_free_string@, per the ABI's ownership rule. A NULL
-- pointer yields the empty string (and is not freed).
takeString :: CString -> IO String
takeString ptr
  | ptr == nullPtr = pure ""
  | otherwise = do
      s <- peekCString ptr
      aether_vcr_embed_free_string ptr
      pure s
