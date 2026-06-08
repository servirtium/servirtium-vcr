{-# LANGUAGE OverloadedStrings #-}

-- | TodoBackend browser integration test — Haskell binding.
--
--   * @servirtium-todobackend playback@ — PLAYBACK phase (the CI artifact).
--     Replays the committed CRUD tape through a Servirtium VCR and runs the
--     real TodoBackend Mocha spec against it in headless Chrome. No SUT, no
--     network — the whole CRUD conversation comes off the tape. Wired into aeb
--     via integration/todobackend/.haskell_playback.ae.
--
--   * @servirtium-todobackend record@ — RECORD phase (manual, on-demand).
--     VCR in record mode, forwarding to the live Kotlin/http4k SUT
--     (@TODOBACKEND_UPSTREAM@). Every CRUD call is forwarded upstream and
--     recorded, then flushed to the tape on close. Driven by .haskell_record.ae
--     (which brings the SUT up in a container and tears it down).
module Main (main) where

import Control.Monad (forM_)
import System.Environment (getArgs, lookupEnv)
import System.Exit (ExitCode (..), exitSuccess, exitWith, exitFailure)
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

import Servirtium.Vcr
import Browser (runSuite, suiteDir, tapePath, vcrPort)

main :: IO ()
main = do
  args <- getArgs
  case args of
    ["playback"] -> playback
    ["record"]   -> record
    _            -> do
      putStrLn "usage: servirtium-todobackend (playback|record)"
      exitWith (ExitFailure 2)

-- | Offline: replay the committed tape, served same-origin, and assert 16/16.
playback :: IO ()
playback =
  withPlayback (playbackOptions tapePath)
    { pbPort          = vcrPort
    , pbStaticContent = [("/suite", suiteDir)]
    , pbUntaped       = ["/favicon.ico"]
    } $ \vcr -> do
    base <- baseUrl vcr
    (passes, failures, msgs) <- runSuite base
    putStrLn $ "mocha (playback): " ++ show passes ++ " passed, " ++ show failures ++ " failed"
    forM_ msgs $ \m -> TIO.putStrLn ("  FAIL: " <> m)
    if failures == 0 && passes > 0
      then putStrLn "TODOBACKEND_PLAYBACK_OK"  >> exitSuccess
      else putStrLn "TODOBACKEND_PLAYBACK_FAIL" >> exitFailure

-- | Record: forward to the live SUT at @TODOBACKEND_UPSTREAM@ and flush a tape.
record :: IO ()
record = do
  mUpstream <- lookupEnv "TODOBACKEND_UPSTREAM"
  case mUpstream of
    Nothing -> do
      putStrLn "record: set TODOBACKEND_UPSTREAM (e.g. http://127.0.0.1:54321)"
      exitWith (ExitFailure 2)
    Just upstream ->
      withRecord (recordOptions tapePath upstream)
        { recPort          = vcrPort
        , recStaticContent = [("/suite", suiteDir)]
        , recUntaped       = ["/favicon.ico"]
        -- Whole-tape normalization so a re-record is byte-identical (the tape
        -- stays git-clean; drift detection then fires only on real changes):
        --   * the server-minted todo UUID is CORRELATED (POST response
        --     body/url, then echoed in later GET/PATCH/DELETE request paths),
        --     so it gets a stable {{id-N}} token that round-trips on playback;
        --   * the Date response header is uncorrelated + variable-cardinality,
        --     so it's COLLAPSED to one constant.
        , recNormalizeWholeTape =
            [("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", "id")]
        , recRedactWholeTape    = [("Date: .+ GMT", "Date: <DATE>")]
        } $ \vcr -> do
        base <- baseUrl vcr
        (passes, failures, msgs) <- runSuite base
        putStrLn $ "mocha (record): " ++ show passes ++ " passed, " ++ show failures ++ " failed"
        forM_ msgs $ \m -> TIO.putStrLn ("  FAIL: " <> m)
        if failures /= 0 || passes == 0
          then do
            putStrLn "record: suite did not pass against the live SUT; tape NOT trustworthy"
            exitFailure
          else putStrLn ("record: wrote " ++ tapePath)
