-- | Redaction: the live SUT sees the real response body, but the value is
-- scrubbed out of the tape written to disk at flush time.
module RedactionSpec (spec) where

import Control.Exception (bracket_)
import Data.List (isInfixOf)
import System.Directory (doesFileExist, getTemporaryDirectory, removeFile)
import System.FilePath ((</>))
import Test.Hspec
import Servirtium.Vcr
import TestSupport (httpGet, withUpstream)

spec :: Spec
spec = describe "redaction" $
  it "scrubs a value from the tape while the live SUT sees the real bytes" $ do
    tmp <- getTemporaryDirectory
    let tape = tmp </> "servirtium-haskell-redaction.md"
    bracket_ (pure ()) (removeIfExists tape) $ do
      withUpstream "secret-token-12345" $ \upstream ->
        withRecord (recordOptions tape upstream)
          { recRemoveHeaders = [(RequestHeaders, "Host"), (RequestHeaders, "Accept-Encoding")]
          , recRedactions    = [(ResponseBody, "secret-token-12345", "REDACTED")]
          } $ \vcr -> do
            url <- baseUrl vcr
            body <- httpGet (url ++ "/secret")
            -- The live SUT still sees the real upstream bytes.
            body `shouldBe` "secret-token-12345"

      -- The committed tape is scrubbed.
      contents <- readFile tape
      ("secret-token-12345" `isInfixOf` contents) `shouldBe` False
      ("REDACTED" `isInfixOf` contents) `shouldBe` True

removeIfExists :: FilePath -> IO ()
removeIfExists p = do
  e <- doesFileExist p
  if e then removeFile p else pure ()
