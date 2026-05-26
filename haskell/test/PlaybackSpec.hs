-- | Playback round-trip: replay the bundled single-GET tape and assert the
-- body, the clean 'Ok' outcome, and the tape length.
module PlaybackSpec (spec) where

import Test.Hspec
import Servirtium.Vcr
import TestSupport (httpGet)

spec :: Spec
spec = describe "playback" $
  it "replays a single GET from a tape file" $
    withPlayback (playbackOptions "test/tapes/single_get.md") $ \vcr -> do
      url <- baseUrl vcr
      body <- httpGet (url ++ "/ok")
      body `shouldBe` "ok-body"
      k <- lastKind vcr
      k `shouldBe` Ok
      n <- tapeLength vcr
      n `shouldBe` 1
