{-# LANGUAGE ForeignFunctionInterface #-}

-- | Raw FFI surface over the native VCR library (@libservirtium_vcr.so@),
-- linked at build time via @foreign import ccall@. 1:1 with the
-- @aether_vcr_embed_*@ C-ABI exported by @std\/http\/server\/vcr\/embed.ae@.
--
-- v1 contract (matching the Aether side): ONE active VCR server per
-- process — the tape\/cursor\/mutation state is process-global, so the
-- diagnostics, tape-length, and mutation calls take no handle. Returned
-- @char*@ values are caller-owned and NUL-terminated; copy them into a
-- Haskell 'String' via 'takeString', which frees them per the ABI.
--
-- This module is internal; the public, idiomatic API lives in
-- "Servirtium.Vcr".
module Servirtium.Vcr.Native
  ( Handle
  , takeString
  , -- * Lifecycle
    aether_vcr_embed_start_playback
  , aether_vcr_embed_start_record
  , aether_vcr_embed_stop
  , aether_vcr_embed_stop_and_flush
  , aether_vcr_embed_stop_and_flush_fail_if_changed
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
  , aether_vcr_embed_unredact
  , aether_vcr_embed_remove_header
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

foreign import ccall unsafe "aether_vcr_embed_start_playback"
  aether_vcr_embed_start_playback
    :: CString -> CString -> CString -> CInt -> IO Handle

foreign import ccall unsafe "aether_vcr_embed_start_record"
  aether_vcr_embed_start_record
    :: CString -> CString -> CString -> CString -> CInt -> IO Handle

foreign import ccall unsafe "aether_vcr_embed_stop"
  aether_vcr_embed_stop :: Handle -> IO ()

foreign import ccall unsafe "aether_vcr_embed_stop_and_flush"
  aether_vcr_embed_stop_and_flush :: Handle -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_stop_and_flush_fail_if_changed"
  aether_vcr_embed_stop_and_flush_fail_if_changed :: Handle -> CString -> IO CString

-- Accessors / diagnostics ---------------------------------------------------

foreign import ccall unsafe "aether_vcr_embed_port"
  aether_vcr_embed_port :: Handle -> IO CInt

foreign import ccall unsafe "aether_vcr_embed_base_url"
  aether_vcr_embed_base_url :: Handle -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_tape_length"
  aether_vcr_embed_tape_length :: IO CInt

foreign import ccall unsafe "aether_vcr_embed_reset_cursor"
  aether_vcr_embed_reset_cursor :: IO ()

foreign import ccall unsafe "aether_vcr_embed_last_error"
  aether_vcr_embed_last_error :: IO CString

foreign import ccall unsafe "aether_vcr_embed_last_kind"
  aether_vcr_embed_last_kind :: IO CInt

foreign import ccall unsafe "aether_vcr_embed_last_index"
  aether_vcr_embed_last_index :: IO CInt

foreign import ccall unsafe "aether_vcr_embed_clear_last_error"
  aether_vcr_embed_clear_last_error :: IO ()

-- Mutations -----------------------------------------------------------------

foreign import ccall unsafe "aether_vcr_embed_redact"
  aether_vcr_embed_redact :: CInt -> CString -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_unredact"
  aether_vcr_embed_unredact :: CInt -> CString -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_remove_header"
  aether_vcr_embed_remove_header :: CInt -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_note"
  aether_vcr_embed_note :: CString -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_static_content"
  aether_vcr_embed_static_content :: CString -> CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_untaped"
  aether_vcr_embed_untaped :: CString -> IO CString

foreign import ccall unsafe "aether_vcr_embed_set_strict_headers"
  aether_vcr_embed_set_strict_headers :: CInt -> IO ()

foreign import ccall unsafe "aether_vcr_embed_indent_code_blocks"
  aether_vcr_embed_indent_code_blocks :: IO ()

foreign import ccall unsafe "aether_vcr_embed_emphasize_http_verbs"
  aether_vcr_embed_emphasize_http_verbs :: IO ()

foreign import ccall unsafe "aether_vcr_embed_clear_redactions"
  aether_vcr_embed_clear_redactions :: IO ()

foreign import ccall unsafe "aether_vcr_embed_clear_unredactions"
  aether_vcr_embed_clear_unredactions :: IO ()

foreign import ccall unsafe "aether_vcr_embed_clear_header_removals"
  aether_vcr_embed_clear_header_removals :: IO ()

foreign import ccall unsafe "aether_vcr_embed_clear_static_content"
  aether_vcr_embed_clear_static_content :: IO ()

foreign import ccall unsafe "aether_vcr_embed_clear_untaped"
  aether_vcr_embed_clear_untaped :: IO ()

foreign import ccall unsafe "aether_vcr_embed_clear_format_options"
  aether_vcr_embed_clear_format_options :: IO ()

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
