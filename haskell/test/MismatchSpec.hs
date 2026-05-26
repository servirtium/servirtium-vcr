-- | Mismatch diagnostics: a request for an unrecorded path must surface a
-- non-'Ok' outcome and a non-empty 'lastError'.
module MismatchSpec (spec) where

import Control.Exception (SomeException, try)
import Test.Hspec
import Servirtium.Vcr
import TestSupport (httpGet)

spec :: Spec
spec = describe "mismatch diagnostics" $
  it "flags an unrecorded path with a non-Ok kind and an error message" $
    withPlayback (playbackOptions "test/tapes/single_get.md") $ \vcr -> do
      url <- baseUrl vcr
      -- The VCR answers a 599 for an unmatched request; the client may see a
      -- non-2xx (and http-client throws on that). Either way the diagnostics
      -- on the VCR side are what we assert.
      _ <- (try (httpGet (url ++ "/does-not-exist")) :: IO (Either SomeException String))
      k <- lastKind vcr
      k `shouldNotBe` Ok
      err <- lastError vcr
      err `shouldNotBe` ""
