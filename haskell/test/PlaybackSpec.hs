-- | Playback round-trip: replay the bundled single-GET tape and assert the
-- body, the clean 'Ok' outcome, and the tape length.
module PlaybackSpec (spec) where

import Control.Exception (try)
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

  it "a playback range skips early interactions and serves a later one" $
    withPlayback (playbackOptions "test/tapes/range.md") { pbPlaybackRange = Just (1, -1) } $ \vcr -> do
      playbackRange vcr `shouldReturn` Just (1, 2)
      url <- baseUrl vcr
      body <- httpGet (url ++ "/step/second")
      body `shouldBe` "second-body"
      lastIndex vcr `shouldReturn` 1
      -- Interaction 0 is outside the range: never served.
      st <- httpGetStatus (url ++ "/step/first")
      st `shouldBe` 599
      setPlaybackRange vcr 9 (-1) `shouldThrow` anyException
      clearPlaybackRange vcr
      playbackRange vcr `shouldReturn` Nothing

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

  it "substitutes a placeholder and tracks assertAllConsumed" $
    withPlayback (playbackOptions "test/tapes/base_url.md")
      { pbSubstitutions = [(ResponseBody, "@@HOST@@", "http://sub.example")] } $ \vcr -> do
      before <- try (assertAllConsumed vcr) :: IO (Either VcrException ())
      before `shouldSatisfy` either (const True) (const False)
      url <- baseUrl vcr
      body <- httpGet (url ++ "/where")
      body `shouldBe` "at http://sub.example/x"
      assertAllConsumed vcr
      assertAllRedactionsUsed vcr
      proto <- lastTlsProtocol vcr
      proto `shouldBe` ""
