{-# LANGUAGE OverloadedStrings #-}

-- | Record→replay: record a GET against a tiny local upstream, then replay
-- the freshly written tape and assert the same body comes back from disk.
module RecordSpec (spec) where

import Control.Exception (bracket_)
import System.Directory (doesFileExist, getTemporaryDirectory, removeFile)
import System.FilePath ((</>))
import Test.Hspec
import Servirtium.Vcr
import TestSupport (httpGet, withUpstream)

spec :: Spec
spec = describe "record then replay" $
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
