{-# LANGUAGE OverloadedStrings #-}

-- | Record→replay: record a GET against a tiny local upstream, then replay
-- the freshly written tape and assert the same body comes back from disk.
module RecordSpec (spec) where

import Data.List (isInfixOf)
import Control.Exception (bracket_)
import System.Directory (doesFileExist, getTemporaryDirectory, removeFile, createDirectory, removeDirectoryRecursive)
import System.FilePath ((</>))
import System.Process (readProcess)
import Test.Hspec
import Servirtium.Vcr
import TestSupport (httpGet, withUpstream)

spec :: Spec
spec = describe "record then replay" $ do
  it "structured helpers forward credentials and scrub tape" $ do
    tmp <- getTemporaryDirectory
    let directory = tmp </> "vcr-helpers-haskell"
    createDirectory directory
    let run args = readProcess "python3" ("../core_tests/redaction_fixture.py" : args) ""
    bracket_ (pure ()) (removeDirectoryRecursive directory) $ do
      upstream <- run ["start", directory]
      withRecord (recordOptions (directory </> "tape.md") (takeWhile (/= '\n') upstream))
        { recRedactHeader = ["Authorization"], recRedactQueryParam = ["password"], recRedactJsonField = ["secretKey"] } $ \rec -> do
          url <- baseUrl rec
          _ <- run ["drive", directory, url]
          lastKind rec `shouldReturn` Ok
      _ <- run ["check", directory]
      pure ()
  it "retains replay diffs and supports explicit consumption" $
    withPlayback (playbackOptions "../core_tests/diagnostics/playback.md") $ \server -> do
      testContext "Haskell scenario" "scenario.test" 123 server
      url <- baseUrl server
      _ <- readProcess "python3" ["../core_tests/diagnostic_fixture.py", url] ""
      diagnostic <- lastErrorWith False server
      diagnostic `shouldSatisfy` isInfixOf "owner"
      diagnostic `shouldSatisfy` isInfixOf "scenario.test:123"
      observed <- diagnosticsJson False server
      observed `shouldSatisfy` (not . isInfixOf "\"retrieved\":1")
      _ <- lastError server
      events <- diagnosticsJson False server
      events `shouldSatisfy` isInfixOf "\"retrieved\":0"
      events `shouldSatisfy` isInfixOf "\"retrieved\":1"
      assertNoMismatches server `shouldThrow` anyException
      testContext "next test" "" 0 server
      assertNoMismatches server
      diagnosticsJson False server `shouldReturn` "[]"
  it "records a GET from a live upstream and replays it from the tape" $ do
    tmp <- getTemporaryDirectory
    let tape = tmp </> "servirtium-haskell-record.md"
    bracket_ (pure ()) (removeIfExists tape) $ do
      -- Record against the upstream. HTTP clients send default request
      -- headers (Host, Accept-Encoding, ...) — strip them so the recorded
      -- request block is stable and a later strict comparison would pass.
      withUpstream "recorded-body" $ \upstream ->
        withRecord (recordOptions tape upstream)
          { recRemoveHeaders =
              [ (RequestHeaders, "Host")
              , (RequestHeaders, "Accept-Encoding")
              ]
          } $ \vcr -> do
            url <- baseUrl vcr
            body <- httpGet (url ++ "/thing")
            body `shouldBe` "recorded-body"

      exists <- doesFileExist tape
      exists `shouldBe` True

      -- Replay the freshly written tape (no upstream this time).
      withPlayback (playbackOptions tape) $ \vcr -> do
        url <- baseUrl vcr
        body <- httpGet (url ++ "/thing")
        body `shouldBe` "recorded-body"
        k <- lastKind vcr
        k `shouldBe` Ok

removeIfExists :: FilePath -> IO ()
removeIfExists p = do
  e <- doesFileExist p
  if e then removeFile p else pure ()
