{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NumericUnderscores #-}

-- | Run the vendored TodoBackend Mocha spec in real headless Chrome against a
-- Servirtium VCR, and report the result. Mirrors the Python @browser.py@, but
-- drives Chrome with Haskell's own @webdriver@ package
-- (<https://hackage.haskell.org/package/webdriver>), launching the cached
-- @chromedriver@ directly (no Selenium server needed — chromedriver speaks
-- W3C, and the package's @DriverConfigChromedriver@ starts it on an ephemeral
-- port and connects straight to it).
--
-- Shared by both phases:
--
--   * @Main record@   — VCR in record mode, forwarding to the live Kotlin SUT
--   * @Main playback@ — VCR replaying the committed tape, no SUT
--
-- The suite is served /same-origin/ from the VCR's own static-content mount
-- (@\/suite@), so the browser's API calls to the VCR root are same-origin — no
-- CORS, no preflight @OPTIONS@ cluttering the tape. @\/favicon.ico@ is untaped.
--
-- Fixed port: the recorded responses embed absolute todo URLs
-- (@http:\/\/127.0.0.1:\<PORT\>\/\<uuid\>@) that the spec follows, and the VCR
-- replays response bodies verbatim — so playback MUST bind the same port the
-- tape was recorded against. Hence a fixed 'vcrPort' for both phases.
module Browser
  ( suiteDir
  , tapePath
  , vcrPort
  , runSuite
  ) where

import Control.Monad (unless)
import Control.Monad.IO.Class (liftIO)
import Control.Monad.Logger (runStdoutLoggingT, filterLogger, LogLevel (..))
import Data.Maybe (fromMaybe)
import qualified Data.Text as T
import System.Directory (findExecutable)
import Test.WebDriver
import Test.WebDriver.Capabilities
import Test.WebDriver.WD
import UnliftIO.Concurrent (threadDelay)
import UnliftIO.Exception (bracket)

-- | The shared suite directory (one level up from this binding's dir).
suiteDir :: FilePath
suiteDir = "../integration/todobackend/suite"

-- | The shared committed CRUD tape.
tapePath :: FilePath
tapePath = "../integration/todobackend/tapes/todobackend_crud.md"

-- | Both phases bind here (see the module header on why it can't be dynamic).
vcrPort :: Int
vcrPort = 51080

-- | Drive @runner.html?\<apiRoot\>@ in headless Chrome until Mocha finishes.
-- Returns @(passes, failures, failMessages)@; @apiRoot@ defaults to the VCR
-- base URL (same origin as the served suite).
runSuite :: String -> IO (Int, Int, [T.Text])
runSuite vcrBaseUrl = do
  chromedriverBin <- maybe (error "chromedriver not on PATH/cached") id
                       <$> findExecutable "chromedriver"
  chromeBin <- fromMaybe "/usr/bin/google-chrome"
                 <$> findExecutable "google-chrome"
  let url  = vcrBaseUrl ++ "/suite/runner.html?" ++ vcrBaseUrl
      caps = defaultCaps
        { _capabilitiesGoogChromeOptions = Just defaultChromeOptions
            { _chromeOptionsBinary = Just chromeBin
            , _chromeOptionsArgs   = Just
                [ "--headless=new", "--no-sandbox"
                , "--disable-dev-shm-usage", "--disable-gpu" ]
            }
        }
      driverConfig = DriverConfigChromedriver
        { driverConfigChromedriver      = chromedriverBin
        , driverConfigChromedriverFlags = []
        , driverConfigChrome            = chromeBin
        , driverConfigLogDir            = Nothing
        }
  -- Quiet the driver's debug chatter; only warnings/errors reach stdout.
  runStdoutLoggingT $ filterLogger (\_ lvl -> lvl >= LevelWarn) $
    bracket mkEmptyWebDriverContext teardownWebDriverContext $ \wdc -> do
      sess <- startSession wdc driverConfig caps "todobackend"
      runWD sess $ do
        openPage url
        waitForMocha 600  -- up to ~120s at 200ms/poll
        passes   <- executeJS [] "return window.__mochaPasses"   :: WD Int
        failures <- executeJS [] "return window.__mochaFailures" :: WD Int
        msgs     <- executeJS [] "return window.__mochaFailMsgs || []" :: WD [T.Text]
        pure (passes, failures, msgs)

-- | Poll @window.__mochaDone === true@, sleeping 200ms between polls, for up to
-- @n@ attempts. Errors out if Mocha never signals completion.
waitForMocha :: Int -> WD ()
waitForMocha 0 = liftIO $ error "mocha did not finish in time"
waitForMocha n = do
  done <- executeJS [] "return window.__mochaDone === true" :: WD Bool
  unless done $ do
    threadDelay 200_000
    waitForMocha (n - 1)
