-- | Test entry point. hspec runs specs sequentially by default, which is
-- required: the Aether VCR core is one-active-server-per-process in v1, so
-- the fixtures must not overlap.
module Main (main) where

import Test.Hspec (hspec)
import qualified MismatchSpec
import qualified PlaybackSpec
import qualified RecordSpec
import qualified RedactionSpec

main :: IO ()
main = hspec $ do
  PlaybackSpec.spec
  MismatchSpec.spec
  RecordSpec.spec
  RedactionSpec.spec
