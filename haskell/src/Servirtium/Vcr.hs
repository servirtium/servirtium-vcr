-- | Record\/replay for HTTP service tests, in the
-- [Servirtium](https://servirtium.dev) markdown tape format — for Haskell.
--
-- You point your system-under-test at a local URL. In __playback__ it
-- replays a recorded markdown tape (no network); in __record__ it forwards to
-- the real service, returns the live response, and writes the tape. Same
-- tape, both directions.
--
-- > import Servirtium.Vcr
-- >
-- > withPlayback (playbackOptions "tapes/single_get.md") $ \vcr -> do
-- >   url <- baseUrl vcr
-- >   -- ... drive the SUT against `url` ...
-- >   k <- lastKind vcr
-- >   k `shouldBe` Ok
--
-- This is a __thin Haskell FFI layer over the VCR core__. All
-- record\/replay machinery — markdown parse\/emit, the HTTP server, request
-- matching, redactions, notes, drift detection, static bypass, gzip\/chunked
-- handling — lives in and is maintained as the in-repo @core\/vcr.ae@ libservirtium_vcr
-- (built on Aether stdlib primitives). This package links a precompiled
-- native build of that core (@libservirtium_vcr.so@); it does __not__
-- reimplement Servirtium in Haskell.
--
-- == One server per port
--
-- The VCR is __per-listener__: N independent servers can run
-- concurrently in one process, one server per port, each keyed by its own
-- handle. A fixture's config \/ diagnostics \/ tape are scoped to its handle.
-- Lifecycle is
-- open -> configure(handle) -> start. See @docs\/architecture.md@.
module Servirtium.Vcr
  ( -- * Building a fixture
    SecretRequest (..)
  , SecretRedactor
  , SecretResolver
  , PlaybackOptions (..)
  , RecordOptions (..)
  , playbackOptions
  , recordOptions
  , -- * Field / outcome selectors
    Field (..)
  , Outcome (..)
  , -- * Errors
    VcrException (..)
  , -- * Starting and stopping
    VcrServer
  , withPlayback
  , withRecord
  , startPlayback
  , startRecord
  , stop
  , -- * Accessors / diagnostics (in 'IO')
    baseUrl
  , port
  , tapeLength
  , lastError
  , lastErrorWith
  , diagnosticsJson
  , assertNoMismatches
  , assertAllConsumed
  , assertAllRedactionsUsed
  , lastTlsProtocol
  , clearSubstitutions
  , testContext
  , lastKind
  , lastIndex
  , note
  , resetCursor
  , clearLastError
  ) where

import Control.Exception (Exception, bracket, throwIO, onException)
import Control.Monad (unless, when)
import Foreign.C.Types (CInt (..))
import Foreign.C.String (CString, withCString)
import Foreign.Ptr (nullPtr)

import qualified Servirtium.Vcr.Native as N

-- | Field selector for redactions \/ unredactions \/ header removals. The
-- 'Enum' values mirror the @FIELD_*@ constants in @std\/http\/server\/vcr@.
data Field
  = Path           -- ^ The request line\/path.
  | ResponseBody   -- ^ The response body block.
  | RequestHeaders -- ^ The recorded request headers block.
  | RequestBody    -- ^ The request body block.
  | ResponseHeaders -- ^ The response headers block.
  deriving (Eq, Show)

-- | The integer the C-ABI expects for a 'Field'.
fieldCode :: Field -> CInt
fieldCode Path            = 1
fieldCode ResponseBody    = 2
fieldCode RequestHeaders  = 3
fieldCode RequestBody     = 4
fieldCode ResponseHeaders = 5

-- | Per-dispatch outcome. The 'Enum' values mirror the @KIND_*@ constants in
-- the core. Read after a request (via 'lastKind') to assert what the
-- dispatcher decided.
data Outcome
  = Ok               -- ^ Matched cleanly.
  | PathOrMethodDiff -- ^ No interaction matched the method+path.
  | HeaderMissing    -- ^ A required (strict) request header was absent.
  | HeaderValueDiff  -- ^ A strict request header had the wrong value.
  | HeaderUnexpected -- ^ An unexpected request header was present (strict).
  | TapeExhausted    -- ^ The tape ran out of interactions.
  | BodyDiff         -- ^ The request body did not match.
  | RecordError      -- ^ A record-mode error (also: any unknown non-zero kind).
  deriving (Eq, Show, Enum, Bounded)

-- | Decode a raw @last_kind@ integer. Forward-compatible: an unknown non-zero
-- kind is still treated as a non-'Ok' 'RecordError'.
outcomeFromRaw :: CInt -> Outcome
outcomeFromRaw 0 = Ok
outcomeFromRaw 1 = PathOrMethodDiff
outcomeFromRaw 2 = HeaderMissing
outcomeFromRaw 3 = HeaderValueDiff
outcomeFromRaw 4 = HeaderUnexpected
outcomeFromRaw 5 = TapeExhausted
outcomeFromRaw 6 = BodyDiff
outcomeFromRaw _ = RecordError

-- | Raised when the VCR fails to start, a mutation is rejected, or a
-- record-mode flush detects drift (with 'recFailIfChanged').
newtype VcrException = VcrException String
  deriving (Show)

instance Exception VcrException

-- | Options for a __playback__ fixture. Build with 'playbackOptions' and
-- override fields with record-update syntax. Defaults: host @127.0.0.1@,
-- port @0@ (OS-assigned), no mutations, non-strict.
data PlaybackOptions = PlaybackOptions
  { pbSecretResolver :: Maybe SecretResolver
  , pbTapePath       :: FilePath
    -- ^ The markdown tape to replay.
  , pbHost           :: String
    -- ^ Bind host (default @127.0.0.1@).
  , pbPort           :: Int
    -- ^ Bind port; @0@ asks the OS for a free port (default).
  , pbLabel          :: String
    -- ^ Human-facing label for logs\/diagnostics (not a state key).
  , pbStrictHeaders  :: Bool
    -- ^ Compare the SUT's request headers against the recorded block on
    -- every interaction (default 'False').
  , pbMatchJsonBody  :: Bool
    -- ^ Opt in to matching request bodies by semantic JSON equality (key order
    -- \/ whitespace ignored) instead of byte-for-byte. Non-JSON bodies fall
    -- back to byte-exact (default 'False').
  , pbMatchMultiple  :: Bool
    -- ^ Opt in to reusable, order-independent playback: matches any recorded
    -- interaction (not just the next in sequence) and doesn't consume it — for
    -- polling\/retries or non-deterministic request order (default 'False').
  , pbMatchHeaders   :: [String]
    -- ^ Match playback on this specific request header's value (ignoring the
    -- rest of the recorded header block); repeatable.
  , pbUnredactions   :: [(Field, String, String)]
    -- ^ @(field, pattern, replacement)@: rewrite a recorded placeholder to
    -- the real value the live SUT sends, so a scrubbed tape still matches.
  , pbSubstitutions  :: [(Field, String, String)]
    -- ^ @(field, pattern, replacement)@: rewrite the replayed response body
    -- or headers at playback time (e.g. fill a custom placeholder).
  , pbTls            :: Maybe (FilePath, FilePath)
    -- ^ @(certPath, keyPath)@: serve @https:\/\/@ (PEM, ECDSA P-256 key).
  , pbRemoveHeaders  :: [(Field, String)]
    -- ^ @(field, name)@: drop a header by name (case-insensitive).
  , pbStaticContent  :: [(String, String)]
    -- ^ @(mountPath, fsDir)@: serve a path prefix from disk instead of tape.
  , pbUntaped        :: [String]
    -- ^ Request paths (e.g. @\/favicon.ico@) the VCR answers 404 without
    -- consuming the tape cursor, and never puts on the tape.
  }

-- | Options for a __record__ fixture. Build with 'recordOptions' and override
-- fields with record-update syntax.
data RecordOptions = RecordOptions
  { recSecretRedactor :: Maybe SecretRedactor
  , recTapePath          :: FilePath
    -- ^ Where the captured markdown tape is written on stop.
  , recUpstreamBase      :: String
    -- ^ Upstream base URL each request is forwarded to.
  , recHost              :: String
    -- ^ Bind host (default @127.0.0.1@).
  , recPort              :: Int
    -- ^ Bind port; @0@ asks the OS for a free port (default).
  , recLabel             :: String
    -- ^ Human-facing label for logs\/diagnostics (not a state key).
  , recRedactHeader :: [String]
  , recRedactQueryParam :: [String]
  , recRedactJsonField :: [String]
  , recRedactHeaderWith :: [(Field, String, String)]
    -- ^ Explicit header scope, name and replacement.
  , recRedactQueryParamWith :: [(String, String)]
    -- ^ Query parameter name and replacement.
  , recRedactJsonFieldWith :: [(Field, String, String)]
    -- ^ Explicit body scope, JSON key and replacement.
  , recRedactions        :: [(Field, String, String)]
    -- ^ @(field, pattern, replacement)@: scrub a value before it lands on the
    -- tape (applied at flush time, so the live SUT still sees real bytes).
  , recNormalizeWholeTape :: [(String, String)]
    -- ^ @(pattern, name)@: every distinct regex match across the __whole__ tape
    -- (all fields\/interactions, in first-appearance order) becomes a stable
    -- @{{name-N}}@ token. Use for __correlated__ volatiles — e.g. a
    -- server-minted id that appears in a POST response and then recurs in
    -- later request paths — so the same token round-trips on playback.
  , recRedactWholeTape    :: [(String, String)]
    -- ^ @(pattern, replacement)@: every regex match across the __whole__ tape
    -- collapses to the constant @replacement@. Use for __uncorrelated__
    -- volatiles of variable cardinality — e.g. a @Date@ response header — that
    -- just need to be pinned to one value.
  , recRemoveHeaders     :: [(Field, String)]
    -- ^ @(field, name)@: drop a header by name (case-insensitive).
  , recNote              :: Maybe (String, String)
    -- ^ @(title, body)@ attached to the __first__ recorded interaction. For
    -- notes on later interactions, call 'note' on the running server.
  , recIndentCodeBlocks  :: Bool
    -- ^ Emit code blocks as 4-space-indented text instead of @```@ fences.
  , recEmphasizeHttpVerbs :: Bool
    -- ^ Emit the HTTP method emphasized (e.g. @*GET*@) in headings.
  , recFailIfChanged     :: Bool
    -- ^ On stop, write the freshly recorded tape but throw 'VcrException' if
    -- it differs from the on-disk one — the drift contract.
  , recStaticContent     :: [(String, String)]
    -- ^ @(mountPath, fsDir)@: serve a path prefix from disk instead of
    -- forwarding upstream. libservirtium_vcr honors static mounts in record mode too,
    -- so a browser suite can be recorded served same-origin from the VCR (no
    -- CORS\/preflight noise), matching how it's replayed.
  , recTls               :: Maybe (FilePath, FilePath)
    -- ^ @(certPath, keyPath)@: serve @https:\/\/@ (PEM, ECDSA P-256 key).
  , recUntaped           :: [String]
    -- ^ Request paths (e.g. @\/favicon.ico@) the record-mode VCR answers 404
    -- without forwarding upstream and never puts on the tape.
  }

-- | A playback options record with sensible defaults for the given tape path.
playbackOptions :: FilePath -> PlaybackOptions
playbackOptions tape = PlaybackOptions
  { pbSecretResolver = Nothing
  , pbTapePath      = tape
  , pbHost          = "127.0.0.1"
  , pbPort          = 0
  , pbLabel         = ""
  , pbStrictHeaders = False
  , pbMatchJsonBody = False
  , pbMatchMultiple = False
  , pbMatchHeaders  = []
  , pbUnredactions  = []
  , pbSubstitutions = []
  , pbTls           = Nothing
  , pbRemoveHeaders = []
  , pbStaticContent = []
  , pbUntaped       = []
  }

-- | A record options record with sensible defaults for the given tape path
-- and upstream base URL.
recordOptions :: FilePath -> String -> RecordOptions
recordOptions tape upstream = RecordOptions
  { recSecretRedactor = Nothing
  , recTapePath           = tape
  , recUpstreamBase       = upstream
  , recHost               = "127.0.0.1"
  , recPort               = 0
  , recLabel              = ""
  , recRedactHeader = []
  , recRedactQueryParam = []
  , recRedactJsonField = []
  , recRedactHeaderWith = []
  , recRedactQueryParamWith = []
  , recRedactJsonFieldWith = []
  , recRedactions         = []
  , recNormalizeWholeTape = []
  , recRedactWholeTape    = []
  , recRemoveHeaders      = []
  , recNote               = Nothing
  , recIndentCodeBlocks   = False
  , recEmphasizeHttpVerbs = False
  , recFailIfChanged      = False
  , recStaticContent      = []
  , recUntaped            = []
  , recTls                = Nothing
  }

-- | Mode a running server was started in; drives 'stop' behaviour.
data Mode = Playback | Record Bool  -- ^ @Record failIfChanged@

-- | A running VCR server. Use 'stop' (or, preferably, 'withPlayback' \/
-- 'withRecord') to stop it; in record mode 'stop' also flushes the tape.
data VcrServer = VcrServer
  { vcrHandle   :: N.Handle
  , vcrHost     :: String
  , vcrTapePath :: FilePath
  , vcrRedactor :: Maybe SecretRedactor
  , vcrMode     :: Mode
  }

-- Internal helpers ----------------------------------------------------------

-- | Run a @char*@-returning mutation and turn a non-empty result into a
-- 'VcrException'.
check :: String -> IO CString -> IO ()
check op act = do
  err <- N.takeString =<< act
  unless (null err) $ throwIO (VcrException ("vcr " ++ op ++ " failed: " ++ err))

applyRemoveHeaders :: N.Handle -> [(Field, String)] -> IO ()
applyRemoveHeaders h removals =
  mapM_ (\(f, name) ->
            check "remove_header" $
              withCString name $ \cName ->
                N.aether_vcr_embed_remove_header h (fieldCode f) cName)
        removals

-- | Register static-content mounts and untaped paths on the handle. The
-- libservirtium_vcr honors both in playback and record mode, so this is shared.
applyStaticAndUntaped :: N.Handle -> [(String, String)] -> [String] -> IO ()
applyStaticAndUntaped h statics untaped = do
  mapM_ (\(mount, dir) ->
            check "static_content" $
              withCString mount $ \cMount ->
                withCString dir $ \cDir ->
                  N.aether_vcr_embed_static_content h cMount cDir)
        statics
  mapM_ (\path ->
            check "untaped" $
              withCString path $ \cPath ->
                N.aether_vcr_embed_untaped h cPath)
        untaped

-- | Apply a TLS cert\/key pair (playback and record).
applyTls :: N.Handle -> Maybe (FilePath, FilePath) -> IO ()
applyTls h =
  maybe (pure ()) (\(cert, key) ->
    check "set_tls" $
      withCString cert $ \cCert ->
        withCString key $ \cKey ->
          N.aether_vcr_embed_set_tls h cCert cKey)

-- | Build a useful error string from a handle's last-error slot.
drainStartError :: N.Handle -> IO String
drainStartError h = do
  err <- N.takeString =<< N.aether_vcr_embed_last_error h
  pure $ if null err
           then "(no detail; check tape path and port availability)"
           else err

data SecretRequest = SecretRequest
  { secretMethod :: String, secretPath :: String, secretLocation :: String
  , secretFormat :: String, secretFieldPath :: String, secretInteraction :: Int
  } deriving (Eq, Show)
type SecretRedactor = String -> SecretRequest -> IO (Maybe String)
type SecretResolver = String -> IO (Maybe String)

secretStage :: N.Handle -> Maybe SecretRedactor -> Maybe SecretResolver -> IO ()
secretStage h redactor resolver = stage `onException` cleanup
  where
    cleanup = N.aether_vcr_embed_secret_abort h >> N.aether_vcr_embed_stop h
    get n = N.takeString =<< N.aether_vcr_embed_secret_get h n
    stage = do
      check "secret_begin" $ N.aether_vcr_embed_secret_begin h (maybe 0 (const 1) resolver)
      loop
      check "secret_finish" $ N.aether_vcr_embed_secret_finish h
    loop = do
      next <- N.aether_vcr_embed_secret_next h
      when (next < 0) $ throwIO (VcrException "Secret staging aborted")
      when (next > 0) $ do
        value <- case resolver of
          Just callback -> get 2 >>= callback
          Nothing -> case redactor of
            Nothing -> pure Nothing
            Just callback -> do
              key <- get 1
              request <- SecretRequest <$> get 3 <*> get 4 <*> get 5 <*> get 6 <*> get 7
                <*> (fromIntegral <$> N.aether_vcr_embed_secret_interaction h)
              callback key request
        case value of
          Nothing -> pure ()
          Just v -> check "secret_apply" $ withCString v $ N.aether_vcr_embed_secret_apply h
        loop

-- Starting ------------------------------------------------------------------

-- | Open the playback server, apply the options to its handle, then begin
-- serving. Throws 'VcrException' on failure. Prefer 'withPlayback', which
-- auto-stops.
startPlayback :: PlaybackOptions -> IO VcrServer
startPlayback opts = do
  handle <-
    withCString (pbLabel opts) $ \cLabel ->
      withCString (pbTapePath opts) $ \cTape ->
        withCString (pbHost opts) $ \cHost ->
          N.aether_vcr_embed_open_playback cLabel cTape cHost (fromIntegral (pbPort opts))
  if handle == nullPtr
    then throwIO $ VcrException
      ("vcr playback failed to start for tape '" ++ pbTapePath opts ++ "'")
    else do
      applyRemoveHeaders handle (pbRemoveHeaders opts)
      when (pbStrictHeaders opts) $ N.aether_vcr_embed_set_strict_headers handle 1
      when (pbMatchJsonBody opts) $ N.aether_vcr_embed_set_match_json_body handle 1
      when (pbMatchMultiple opts) $ N.aether_vcr_embed_set_match_multiple handle 1
      mapM_ (\name ->
                withCString name $ \cName ->
                  N.aether_vcr_embed_match_header handle cName)
            (pbMatchHeaders opts)
      mapM_ (\(f, pat, repl) ->
                check "unredact" $
                  withCString pat $ \cPat ->
                    withCString repl $ \cRepl ->
                      N.aether_vcr_embed_unredact handle (fieldCode f) cPat cRepl)
            (pbUnredactions opts)
      mapM_ (\(f, pat, repl) ->
                check "substitute" $
                  withCString pat $ \cPat ->
                    withCString repl $ \cRepl ->
                      N.aether_vcr_embed_substitute handle (fieldCode f) cPat cRepl)
            (pbSubstitutions opts)
      applyStaticAndUntaped handle (pbStaticContent opts) (pbUntaped opts)
      applyTls handle (pbTls opts)
      maybe (pure ()) (\callback -> secretStage handle Nothing (Just callback)) (pbSecretResolver opts)
      rc <- N.aether_vcr_embed_start handle
      if rc < 0
        then do
          detail <- drainStartError handle
          N.aether_vcr_embed_stop handle
          throwIO $ VcrException
            ("vcr playback failed to begin serving for tape '" ++ pbTapePath opts ++ "': " ++ detail)
        else pure VcrServer
          { vcrHandle   = handle
          , vcrHost     = pbHost opts
          , vcrTapePath = pbTapePath opts
          , vcrRedactor = Nothing
          , vcrMode     = Playback
          }

-- | Open the record server, apply the options to its handle, stage the note,
-- then begin serving. Throws 'VcrException' on failure. Prefer 'withRecord',
-- which auto-stops (and flushes the tape).
startRecord :: RecordOptions -> IO VcrServer
startRecord opts = do
  handle <-
    withCString (recLabel opts) $ \cLabel ->
      withCString (recTapePath opts) $ \cTape ->
        withCString (recUpstreamBase opts) $ \cUp ->
          withCString (recHost opts) $ \cHost ->
            N.aether_vcr_embed_open_record cLabel cTape cUp cHost (fromIntegral (recPort opts))
  if handle == nullPtr
    then throwIO $ VcrException
      ("vcr record failed to start for tape '" ++ recTapePath opts
        ++ "' (upstream '" ++ recUpstreamBase opts ++ "')")
    else do
      applyRemoveHeaders handle (recRemoveHeaders opts)
      mapM_ (\name -> check "redact_header" $
        withCString name $ \cName -> withCString "[REDACTED]" $ \cReplacement ->
          N.aether_vcr_embed_redact_header handle 3 cName cReplacement) (recRedactHeader opts)
      mapM_ (\name -> check "redact_query_param" $
        withCString name $ \cName -> withCString "[REDACTED]" $ \cReplacement ->
          N.aether_vcr_embed_redact_query_param handle 1 cName cReplacement) (recRedactQueryParam opts)
      mapM_ (\name -> check "redact_json_field" $
        withCString name $ \cName -> withCString "[REDACTED]" $ \cReplacement ->
          N.aether_vcr_embed_redact_json_field handle 4 cName cReplacement) (recRedactJsonField opts)
      mapM_ (\(f, name, replacement) -> check "redact_header" $
        withCString name $ \cName -> withCString replacement $ \cReplacement ->
          N.aether_vcr_embed_redact_header handle (fieldCode f) cName cReplacement) (recRedactHeaderWith opts)
      mapM_ (\(name, replacement) -> check "redact_query_param" $
        withCString name $ \cName -> withCString replacement $ \cReplacement ->
          N.aether_vcr_embed_redact_query_param handle 1 cName cReplacement) (recRedactQueryParamWith opts)
      mapM_ (\(f, name, replacement) -> check "redact_json_field" $
        withCString name $ \cName -> withCString replacement $ \cReplacement ->
          N.aether_vcr_embed_redact_json_field handle (fieldCode f) cName cReplacement) (recRedactJsonFieldWith opts)
      when (recIndentCodeBlocks opts) (N.aether_vcr_embed_indent_code_blocks handle)
      when (recEmphasizeHttpVerbs opts) (N.aether_vcr_embed_emphasize_http_verbs handle)
      mapM_ (\(f, pat, repl) ->
                check "redact" $
                  withCString pat $ \cPat ->
                    withCString repl $ \cRepl ->
                      N.aether_vcr_embed_redact handle (fieldCode f) cPat cRepl)
            (recRedactions opts)
      mapM_ (\(pat, name) ->
                check "normalize_whole_tape" $
                  withCString pat $ \cPat ->
                    withCString name $ \cName ->
                      N.aether_vcr_embed_normalize_whole_tape handle cPat cName)
            (recNormalizeWholeTape opts)
      mapM_ (\(pat, repl) ->
                check "redact_whole_tape" $
                  withCString pat $ \cPat ->
                    withCString repl $ \cRepl ->
                      N.aether_vcr_embed_redact_whole_tape handle cPat cRepl)
            (recRedactWholeTape opts)
      applyStaticAndUntaped handle (recStaticContent opts) (recUntaped opts)
      applyTls handle (recTls opts)
      let server = VcrServer
            { vcrHandle   = handle
            , vcrHost     = recHost opts
            , vcrTapePath = recTapePath opts
            , vcrRedactor = recSecretRedactor opts
            , vcrMode     = Record (recFailIfChanged opts)
            }
      -- Stage the note now (open_record cleared the tape) so it attaches to
      -- the first interaction the SUT triggers, before serving begins.
      case recNote opts of
        Nothing            -> pure ()
        Just (title, body) -> note server title body
      rc <- N.aether_vcr_embed_start handle
      if rc < 0
        then do
          detail <- drainStartError handle
          N.aether_vcr_embed_stop handle
          throwIO $ VcrException
            ("vcr record failed to begin serving for tape '" ++ recTapePath opts ++ "': " ++ detail)
        else pure server

-- | 'bracket' over 'startPlayback' / 'stop': start a playback server, run the
-- action, and always stop the server afterwards.
withPlayback :: PlaybackOptions -> (VcrServer -> IO a) -> IO a
withPlayback opts = bracket (startPlayback opts) stop

-- | 'bracket' over 'startRecord' / 'stop': start a record server, run the
-- action, and always stop the server afterwards (which flushes the tape, and
-- — with 'recFailIfChanged' — throws 'VcrException' on drift).
withRecord :: RecordOptions -> (VcrServer -> IO a) -> IO a
withRecord opts = bracket (startRecord opts) stop

-- | Stop the server. In record mode this also flushes the captured tape to
-- disk, and — when started with 'recFailIfChanged' — throws 'VcrException'
-- if the freshly recorded tape differs from the on-disk one.
stop :: VcrServer -> IO ()
stop server = case vcrMode server of
  Playback -> N.aether_vcr_embed_stop (vcrHandle server)
  Record failIfChanged -> do
    maybe (pure ()) (\callback -> secretStage (vcrHandle server) (Just callback) Nothing) (vcrRedactor server)
    err <-
      withCString (vcrTapePath server) $ \cTape ->
        N.takeString =<<
          (if failIfChanged
             then N.aether_vcr_embed_stop_and_flush_fail_if_changed (vcrHandle server) cTape
             else N.aether_vcr_embed_stop_and_flush (vcrHandle server) cTape)
    unless (null err) $ throwIO (VcrException err)

-- Accessors / diagnostics ---------------------------------------------------

-- | Base URL the SUT should target, e.g. @http:\/\/127.0.0.1:54213@.
baseUrl :: VcrServer -> IO String
baseUrl server =
  withCString (vcrHost server) $ \cHost ->
    N.takeString =<< N.aether_vcr_embed_base_url (vcrHandle server) cHost

-- | The OS-resolved port the server is listening on.
port :: VcrServer -> IO Int
port server = fromIntegral <$> N.aether_vcr_embed_port (vcrHandle server)

-- | Tape entry count (playback), or interactions captured so far (record).
tapeLength :: VcrServer -> IO Int
tapeLength server = fromIntegral <$> N.aether_vcr_embed_tape_length (vcrHandle server)

-- | Most-recent dispatch diagnostic; empty when none flagged.
lastError :: VcrServer -> IO String
lastError server = N.takeString =<< N.aether_vcr_embed_last_error (vcrHandle server)

-- | Outcome of the most-recent dispatch.
lastKind :: VcrServer -> IO Outcome
lastKind server = outcomeFromRaw <$> N.aether_vcr_embed_last_kind (vcrHandle server)

-- | Tape index of the most-recent matched interaction, or -1.
lastIndex :: VcrServer -> IO Int
lastIndex server = fromIntegral <$> N.aether_vcr_embed_last_index (vcrHandle server)

-- | Stage a note (record mode) for the __next__ interaction to be captured.
-- Call between requests to annotate specific interactions. Throws
-- 'VcrException' if the core rejects it.
note :: VcrServer -> String -> String -> IO ()
note server title body =
  check "note" $
    withCString title $ \cTitle ->
      withCString body $ \cBody ->
        N.aether_vcr_embed_note (vcrHandle server) cTitle cBody

-- | Rewind the replay cursor to interaction 0 and clear the last-* slots.
resetCursor :: VcrServer -> IO ()
resetCursor server = N.aether_vcr_embed_reset_cursor (vcrHandle server)

-- | Clear the last-error slot between sub-cases.
clearLastError :: VcrServer -> IO ()
clearLastError server = N.aether_vcr_embed_clear_last_error (vcrHandle server)

-- | Acknowledge without deleting; False is an observer read.
lastErrorWith :: Bool -> VcrServer -> IO String
lastErrorWith consume server = N.takeString =<< N.aether_vcr_embed_last_error_ex (vcrHandle server) (if consume then 1 else 0)
diagnosticsJson :: Bool -> VcrServer -> IO String
diagnosticsJson consume server = N.takeString =<< N.aether_vcr_embed_diagnostics_json (vcrHandle server) (if consume then 1 else 0)
-- | Throw 'VcrException' unless every recorded interaction was replayed.
assertAllConsumed :: VcrServer -> IO ()
assertAllConsumed server = check "assertAllConsumed" $ N.aether_vcr_embed_assert_all_consumed (vcrHandle server)

-- | Throw 'VcrException' unless every redaction\/unredaction\/substitution rule matched.
assertAllRedactionsUsed :: VcrServer -> IO ()
assertAllRedactionsUsed server = check "assertAllRedactionsUsed" $ N.aether_vcr_embed_assert_all_redactions_used (vcrHandle server)

-- | Negotiated TLS protocol (@\"TLSv1.3\"@), or @\"\"@ when TLS is off.
lastTlsProtocol :: VcrServer -> IO String
lastTlsProtocol server = N.takeString =<< N.aether_vcr_embed_last_tls_protocol (vcrHandle server)

-- | Drop all registered substitutions on the running server.
clearSubstitutions :: VcrServer -> IO ()
clearSubstitutions server = N.aether_vcr_embed_clear_substitutions (vcrHandle server)

assertNoMismatches :: VcrServer -> IO ()
assertNoMismatches server = check "assertNoMismatches" $ N.aether_vcr_embed_assert_no_mismatches (vcrHandle server)
testContext :: String -> String -> Int -> VcrServer -> IO ()
testContext name sourceFile sourceLine server =
  withCString name $ \n -> withCString sourceFile $ \f ->
    N.aether_vcr_embed_test_context (vcrHandle server) n f (fromIntegral sourceLine)
