module SecretSpec (spec) where
import Test.Hspec
import Servirtium.Vcr
import Control.Exception (finally)
import Data.Char (toLower, toUpper)
import Data.IORef
import System.Directory
import System.FilePath ((</>))
import System.Process (readProcess)
import Data.List (dropWhileEnd)
spec :: Spec
spec = describe "named secrets" $ it "redacts at flush and resolves four services" $ do
  tmp <- getTemporaryDirectory
  let dir = tmp </> "vcr-secrets-haskell"
  createDirectory dir
  let run action arg = dropWhileEnd (`elem` "\r\n ") <$> readProcess "python3" ["../core_tests/secret_fixture.py", action, arg] ""
      tape = dir </> "tape.md"
  flip finally (removePathForcibly dir) $ do
    upstream <- run "start" dir
    count <- newIORef (0 :: Int)
    let redact key request = if key /= "password" then pure Nothing else do
          modifyIORef' count (+1)
          let service = takeWhile (/= '/') (drop 1 (secretPath request))
          pure (Just (map toUpper service ++ "_PASSWORD"))
    withRecord ((recordOptions tape upstream) {recSecretRedactor = Just redact}) $ \rec -> do
      url <- baseUrl rec; _ <- run "drive" url
      readIORef count `shouldReturn` 0
    readIORef count `shouldReturn` 20
    _ <- run "check" tape
    let resolve token = pure (Just ("pw-" ++ map toLower (take (length token - 9) token) ++ "&secret"))
    withPlayback ((playbackOptions tape) {pbSecretResolver = Just resolve}) $ \replay -> do
      url <- baseUrl replay; _ <- run "drive" url
      assertNoMismatches replay
    _ <- run "check" tape
    pure ()
