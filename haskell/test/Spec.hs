-- | Test entry point. hspec runs specs sequentially by default. The VCR
-- core allows one server per port (N independent handle-keyed servers can
-- run concurrently); these fixtures use OS-assigned ports, so running them
-- in sequence keeps the suite simple and deterministic.
module Main (main) where

import Test.Hspec (hspec)
import qualified MismatchSpec
import qualified PlaybackSpec
import qualified RecordSpec
import qualified SecretSpec
import qualified RedactionSpec

main :: IO ()
main = hspec $ do
  SecretSpec.spec
  PlaybackSpec.spec
  MismatchSpec.spec
  RecordSpec.spec
  RedactionSpec.spec
