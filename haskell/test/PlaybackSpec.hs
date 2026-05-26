-- | Playback round-trip: replay the bundled single-GET tape and assert the
-- body, the clean 'Ok' outcome, and the tape length.
module PlaybackSpec (spec) where

import Test.Hspec
import Servirtium.Vcr
import TestSupport (httpGet, httpGetStatus)

spec :: Spec
spec = describe "playback" $ do
  it "replays a single GET from a tape file" $
    withPlayback (playbackOptions "test/tapes/single_get.md") $ \vcr -> do
      url <- baseUrl vcr
      body <- httpGet (url ++ "/ok")
      body `shouldBe` "ok-body"
      k <- lastKind vcr
      k `shouldBe` Ok
      n <- tapeLength vcr
      n `shouldBe` 1

  it "answers an untaped path 404 without consuming the cursor" $
    withPlayback (playbackOptions "test/tapes/single_get.md")
      { pbUntaped = ["/favicon.ico"] } $ \vcr -> do
      url <- baseUrl vcr
      -- Incidental path -> 404, and does not advance the tape cursor:
      st <- httpGetStatus (url ++ "/favicon.ico")
      st `shouldBe` 404
      -- The recorded interaction still replays afterwards:
      body <- httpGet (url ++ "/ok")
      body `shouldBe` "ok-body"
      k <- lastKind vcr
      k `shouldBe` Ok
