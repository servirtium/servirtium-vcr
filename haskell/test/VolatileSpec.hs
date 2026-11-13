-- | Volatile values (docs/volatile-values.md): conformance against the shared
-- tapes in core_tests/volatile and the volatile_fixture driver.
module VolatileSpec (spec) where

import Control.Exception (try)
import Data.List (isInfixOf)
import System.Directory (makeAbsolute)
import System.Exit (ExitCode (..))
import System.Process (readProcessWithExitCode)
import Test.Hspec
import Servirtium.Vcr

vtape :: String -> IO FilePath
vtape name = makeAbsolute ("../core_tests/volatile/" ++ name)

driver :: String -> String -> IO ()
driver mode url = do
  (code, out, err) <- readProcessWithExitCode "../target/test-tools/volatile_fixture" [mode, url] ""
  (code, out ++ err) `shouldSatisfy` ((== ExitSuccess) . fst)

startError :: PlaybackOptions -> IO String
startError opts = do
  r <- try (withPlayback opts (\_ -> pure ()))
  case r of
    Left (VcrException m) -> pure m
    Right () -> expectationFailure "start should have failed" >> pure ""

spec :: Spec
spec = describe "volatile values" $ do
  it "tape-declared rules apply with none in code" $ do
    t <- vtape "wcf.md"
    withPlayback (playbackOptions t) { pbPrettyXml = 2 } $ \vcr -> do
      url <- baseUrl vcr
      driver "wcf" url
      report <- volatileReport vcr
      report `shouldSatisfy` isInfixOf "binding: {{messageId-1}} = "

  it "a profile file" $ do
    t <- vtape "wcf_plain.md"
    p <- vtape "profile.md"
    withPlayback (playbackOptions t) { pbPrettyXml = 2, pbVolatileProfiles = [p] } $ \vcr ->
      baseUrl vcr >>= driver "wcf"

  it "rules in code" $ do
    t <- vtape "wcf_plain.md"
    withPlayback (playbackOptions t)
      { pbPrettyXml = 2
      , pbVolatileRules =
          [ volatileRule "request body" "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>"
          , volatileRule "request body" "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/"
          , volatileRule "request body" "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;"
          , volatileRule "response body" "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>" ] } $ \vcr ->
      baseUrl vcr >>= driver "wcf"

  it "markers" $ do
    t <- vtape "wcf_dollar.md"
    withPlayback (playbackOptions t) { pbPrettyXml = 2, pbVolatileMarkers = Just DollarCurly } $ \vcr ->
      baseUrl vcr >>= driver "wcf"
    m <- startError (playbackOptions t) { pbPrettyXml = 2 }
    m `shouldSatisfy` isInfixOf "DollarCurly"

  it "correlates ids, and names the binding in a mismatch" $ do
    t <- vtape "cases.md"
    withPlayback (playbackOptions t) $ \vcr -> do
      url <- baseUrl vcr
      driver "cases" url
      resetCursor vcr
      driver "cases-mismatch" url
      diagnostic <- lastErrorWith False vcr
      diagnostic `shouldSatisfy` isInfixOf "{{caseId-1}} = 42"
      _ <- lastError vcr  -- consuming read: nothing left unretrieved at close
      pure ()

  it "bind" $ do
    t <- vtape "cases_recorded.md"
    m <- startError (playbackOptions t)
    m `shouldSatisfy` isInfixOf "caseId"
    withPlayback (playbackOptions t) { pbVolatileBinds = [("caseId", "42")] } $ \vcr ->
      baseUrl vcr >>= driver "cases"

  it "bad rules fail start with the core's message" $ do
    t <- vtape "cases.md"
    m1 <- startError (playbackOptions t) { pbVolatileRules = [volatileRule "request body" "no placeholder"] }
    m1 `shouldSatisfy` isInfixOf "needs at least one placeholder"
    m2 <- startError (playbackOptions t) { pbVolatileRules = [volatileRule "response body" "\"caseId\":\"{{id}}\""] }
    m2 `shouldSatisfy` isInfixOf "conflicts with"
    m2 `shouldSatisfy` isInfixOf "(tape)"
    m3 <- startError (playbackOptions t) { pbVolatileRules = [("x", "a {{b}}", "regex")] }
    m3 `shouldSatisfy` (not . null)
